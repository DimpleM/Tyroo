<?php
date_default_timezone_set('Asia/Kolkata');
$current= date("Y-m-d h:i:s");
session_start();
include_once("connection.php");
$db = new dbObj();
$conn =  $db->getConnstring();
$sql="SELECT * FROM `rules` WHERE `status`=1";
$result = mysqli_query($conn,$sql);

if (mysqli_num_rows($result) > 0) {
	$count=0;
	while($row = mysqli_fetch_assoc($result)) {
		$rows[$count] =$row;
		$count++;
	}
} else {
	die;
}

for($i=0;$i<$count;$i++){
	$campaigns = explode(',',$rows[$i]['campaigns']);

	foreach ($campaigns as $campaign) {
		if(isset($rows[$i]['last_update']) && $rows[$i]['last_update']!= "0000-00-00 00:00:00"){
			$date1=date("Y-m-d h:i:s");
			$date2=$rows[$i]['last_update'];
			
			$date1=strtotime($date1);
			$date2=strtotime($date2); 
			$diff = abs($date1 - $date2);
			$minutes   = round($diff / 60);
			if($rows[$i]['schedule']=="every_15_minutes" && $minutes<15){
				continue;
			}

			if($rows[$i]['schedule']=="every_hour" && $minutes<60){
				
				continue;
			}
			$time = date("H:i:sa");

			if($rows[$i]['schedule']=="every_day_at_12:00AM"   && $time!="00:00:00am"){
				continue;
			}

		}
		$date = date("Y-m-d h:i:s");

		
		$id =$rows[$i]['id'];
		$sql = "Update `rules` set last_update = '" . $date . "' WHERE id='".$id."'";
		$result = mysqli_query($conn, $sql);
		
		
		$spends  = mysqli_query($conn,"SELECT `metric_value` FROM `metric` WHERE `date_time` = (SELECT MAX(`date_time`) FROM `metric` WHERE `campaign` ='".$campaign."' AND `metric` ='Spend')  AND `campaign` ='".$campaign."' AND `metric` ='Spend'" );
		$spend = mysqli_fetch_assoc($spends);
		
		$clicks  = mysqli_query($conn,"SELECT `metric_value` FROM `metric` WHERE `date_time` = (SELECT MAX(`date_time`) FROM `metric` WHERE `campaign` ='".$campaign."' AND `metric` ='Click')  AND `campaign` ='".$campaign."' AND `metric` ='Click'" );
		$click = mysqli_fetch_assoc($clicks);
		
		$installs =  mysqli_query($conn,"SELECT `metric_value` FROM `metric` WHERE `date_time` = (SELECT MAX(`date_time`) FROM `metric` WHERE `campaign` ='".$campaign."' AND `metric` ='Install')  AND `campaign` ='".$campaign."' AND `metric` ='Install'" );
		$install = mysqli_fetch_assoc($installs);
		
		$impressions =  mysqli_query($conn,"SELECT `metric_value` FROM `metric` WHERE `date_time` = (SELECT MAX(`date_time`) FROM `metric` WHERE `campaign` ='".$campaign."' AND `metric` ='impression')  AND `campaign` ='".$campaign."' AND `metric` ='impression'" );
		
		$impression = mysqli_fetch_assoc($impressions);
		$click = !empty($click['metric_value']) ? $click['metric_value'] : 0;
		$spend = !empty($spend['metric_value']) ? $spend['metric_value'] : 0;
		$install = !empty($install['metric_value']) ? $install['metric_value'] : 0;
		$impression = !empty($impression['metric_value']) ? $impression['metric_value'] : 0;
	
		if($click !=0){
			$ecpc = $spend/$click;
		}else{
			$ecpc = 0;
		}
		if($install !=0){
			$ecpi =  $spend/$install;
		}else{
			$ecpi =0;
		}
		if($impression !=0){
			$ecpcm = ($spend* 100)/$impression;
		}else{
			$ecpcm = 0;
		}
		$conditions = $rows[$i]['conditions'];

		$vars = array(
			'Clicks' =>$click,
			'eCPC' => $ecpc,
			'eCPI' => $ecpi,
			'eCPM' =>$ecpcm,
			'Impressions' =>$impression,
			'is_less_than_or_equal_to ' => '<=',
			'Installs' => $install,
			'Spend' => $spend,
			'is_greater_than_or_equal_to' =>'>=',
			'equal_to' =>'==',
			'is_greater_than' => '>',
			'is_less_than' =>'<',
		);

		$conditions = strtr($conditions, $vars);
		$condition = explode('AND',$conditions);
		$result1 = eval('return '.$condition[0].';');
		$result2=eval('return '.$condition[1].';');
		if($result1 ==1 && $result2 ==1 ){
			$sql =mysqli_query($conn,"SELECT `username` FROM  `users`  WHERE `user_id` ='".$rows[$i]['user_id']."'");
			$username = mysqli_fetch_row($sql);	
			sendMail($username[0],$campaign,$rows[$i]['rule_name'],$rows[$i]['actions']);

		}

	}	

}

function sendMail($to,$campaign,$rule_name,$action){
	if($action == "notify_customer"){
		mail($to,"Notification",$rule_name." rule has been excuted on ".$campaign);
	}elseif($action=="start_campaign"){
		mail($to,"Start Campaign",$rule_name." rule has been started on ".$campaign);
	}else{
		mail($to,"Stop Campaign",$rule_name." rule has been stopped on ".$campaign);
	}
}
?>
