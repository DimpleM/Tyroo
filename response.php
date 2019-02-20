
<?php
include_once("connection.php");
session_start();
$db = new dbObj();
$connString =  $db->getConnstring();

$params = $_REQUEST;

$action = isset($params['action']) != '' ? $params['action'] : '';
$empCls = new Rules($connString);

switch($action) {
	case 'add':
	$empCls->insertRule($params);
	break;
	case 'edit':
	$empCls->updateRule($params);
	break;
	case 'delete':
	$empCls->deleteRule($params);
	break;
	default:
	$empCls->getData($params);
	return;
}

class Rules {
	protected $conn;
	protected $data = array();
	function __construct($connString) {
		$this->conn = $connString;
	}
	
	public function getData($params) {
		
		$this->data = $this->getRules($params);
		
		echo json_encode($this->data);
	}
	function insertRule($params) {
		if(in_array('',$params['conditions'])){
			die(json_encode("condition_error"));
		}
		
		if(empty($params['rule_name'])){
			die(json_encode("rule_error"));
		}
		if(isset($params["campaigns"]) && !empty($params["campaigns"])){
			$campaigns = implode(',',$params["campaigns"]);
		}
		if(isset($params["conditions"]) && !empty($params["conditions"])){
			$conditions = implode(' ',$params["conditions"]);
		}

		$data = array();;
		$sql = "INSERT INTO `rules` (rule_name, campaigns, schedule, conditions, actions, status,user_id) VALUES('" . $params["rule_name"] . "', '" . $campaigns . "','" . $params["schedule"] . "','" . $conditions . "', '" . $params["actions"] . "','" . $params["status"] . "','" . $_SESSION["user_id"] . "');  ";
		
		echo $result = mysqli_query($this->conn, $sql) or die("error to insert employee data");
		

	}
	
	
	function getRules($params) {
		
		$rp = isset($params['rowCount']) ? $params['rowCount'] : 10;
		
		if (isset($params['current'])) { $page  = $params['current']; } else { $page=1; };  
		$start_from = ($page-1) * $rp;
		
		$sql = $sqlRec = $sqlTot = $where = '';
		
		if( !empty($params['searchPhrase']) ) {  
			
			$where .=" WHERE ";
			$where .=" ( rule_name LIKE '".$params['searchPhrase']."%') ";    
			
		}
		if( !empty($params['sort']) ) {  
			$where .=" ORDER By ".key($params['sort']) .' '.current($params['sort'])." ";
		}
	  
		$sql = "SELECT * FROM `rules` ";
		$sqlTot .= $sql;
		$sqlRec .= $sql;
		
		if(isset($where) && $where != '') {

			$sqlTot .= $where;
			$sqlRec .= $where;
		}
		if ($rp!=-1)
			$sqlRec .= " LIMIT ". $start_from .",".$rp;
		
		$qtot = mysqli_query($this->conn, $sqlTot) or die("error to fetch tot employees data");
		$queryRecords = mysqli_query($this->conn, $sqlRec) or die("error to fetch employees data");
		
		while( $row = mysqli_fetch_assoc($queryRecords) ) { 
			
			if($row['status'] == 0){
				$row['status'] = 'Deactivate';
			}else{
				$row['status'] = 'Activate';
			}
			$data[] = $row;

		}
		if (isset($params['current'])) { $$params['current']  = $params['current']; } else { $params['current']=1; }; 
		
		$json_data = array(
			"current"            => intval($params['current']), 
			"rowCount"            => 10, 			
			"total"    => intval($qtot->num_rows),
			"rows"            => $data   // total data array
		);
		
		return $json_data;
	}
	function updateRule($params) {
		$data = array();
		if(isset($params["edit_campaigns"]) && !empty($params["edit_campaigns"])){
			$campaigns = implode(',',$params["edit_campaigns"]);
		}
		if(isset($params["conditions"]) && !empty($params["conditions"])){
			$conditions = implode(' ',$params["conditions"]);
		}
		$sql = "Update `rules` set rule_name = '" . $params["edit_rule_name"] . "', campaigns='" . $campaigns."', schedule='" . $params["edit_schedule"] . "' , conditions='" . $conditions . "', actions='" . $params["edit_actions"] . "', status='" . $params["edit_status"] . "' WHERE id='".$_POST["edit_id"]."'";
		echo $result = mysqli_query($this->conn, $sql) or die("error to update employee data");
	}
	
	function deleteRule($params) {
		$data = array();
		//print_R($_POST);die;
		$sql = "delete from `rules` WHERE id='".$params["id"]."'";
		
		echo $result = mysqli_query($this->conn, $sql) or die("error to delete employee data");
	}
}
?>
