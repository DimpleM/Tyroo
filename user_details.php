<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Managing campaigns using Rule Based Engine</title>
	<link rel="stylesheet" href="dist/bootstrap.min.css" type="text/css" media="all">
	<link href="dist/jquery.bootgrid.css" rel="stylesheet" />
	<script src="dist/jquery-1.11.1.min.js"></script>
	<script src="dist/bootstrap.min.js"></script>
	<script src="dist/jquery.bootgrid.min.js"></script>
</head>
<body>
	<?php
	session_start();
	if(!isset($_SESSION['auth']) || ($_SESSION['auth']!=1 )){
		header('Location: login.php');
	}
	?>
	<div class="container">
		<div class="">
			<h3>Managing campaigns using Rule Based Engine</h3>
			<div class="col-sm-16">
				<div class="well clearfix">
					<div class="pull-right"><button type="button" class="btn btn-xs btn-primary" id="command-add" data-row-id="0">
						<span class="glyphicon glyphicon-plus"></span> Record</button></div></div>
						<table id="rule_grid" class="table table-condensed table-hover table-striped" width="70%" cellspacing="0" data-toggle="bootgrid">
							<thead>
								<tr>
									<th data-column-id="id" data-type="numeric" data-identifier="true">Rule Id</th>
									<th data-column-id="rule_name">Rule Name</th>
									<th data-column-id="campaigns">Campaigns</th>
									<th data-column-id="schedule">Schedule</th>
									<th data-column-id="conditions">Conditions</th>
									<th data-column-id="actions">Actions</th>
									<th data-column-id="status">Status</th>
									<th data-column-id="commands" data-formatter="commands" data-sortable="false">Commands</th>
								</tr>
							</thead>
						</table>
					</div>
				</div>
			</div>

			<div id="add_model" class="modal fade">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
							<h4 class="modal-title">Add Rule</h4>
						</div>
						<div class="modal-body">
							<div class="error"></div>
							<form method="post" id="frm_add">
								<input type="hidden" value="add" name="action" id="action">
								<div class="form-group">
									<label for="rule_name" class="control-label">Rule Name:</label>
									<input type="text" value="" class="form-control" id="rule_name" name="rule_name" required/>
								</div>
								<div class="form-group">
									<label for="campaigns" class="control-label">Campaigns:</label>
									<select id="campaigns" class="form-control"  name="campaigns[]" class="form-control"  multiple size="5">
										<option value="Swiggy">Swiggy</option>
										<option value="Netflix" >Netflix</option>
										<option value="BigBasket">BigBasket</option>
										<option value="Zomato">Zomato</option>
										<option value="FoodPanda" selected>FoodPanda</option>
									</select>
								</div>
								<div class="form-group">
									<label for="schedule" class="control-label">Schedule:</label>
									<select id="schedule" name="schedule" class="form-control">
										<option value="every_15_minutes" selected>Every 15 minutes</option>
										<option value="every_hour" >Every hour</option>
										<option value="every_day_at_12:00AM">Every day at 12:00 AM</option>
									</select>
								</div>
								<div class="form-group">
									<label for="conditions" class="control-label">Conditions:</label>
									<br>
									<div class="panel panel-default">
										<div class="panel-body" >

											<select class="conditions" name="conditions[]" style="height:  26px;width: 115px;">
												<option value="Impressions">Impressions</option>
												<option value="Clicks" >Clicks</option>
												<option value="Installs" selected>Installs</option>
												<option value="Spend">Spend</option>
												<option value="eCPM" >eCPM</option>
												<option value="eCPC" selected>eCPC</option>
												<option value="eCPI" selected>eCPI</option>
											</select>
											<select  class="conditions" name="conditions[]" style="height:  26px;width: 75px;">
												<option value="is_greater_than_or_equal_to">>=</option>
												<option value="equal_to" >=</option>
												<option value="is_less_than_or_equal_to" selected><=</option>
												<option value="is_greater_than">></option>
												<option value="is_less_than" ><</option>
											</select>
											<input type="text"   class="conditions" name="conditions[]" placeholder="Value" style="width: 10%;" required/>
											<br><br>
											<input type="text" value="AND" name="conditions[]" style="width: 10%;" readonly="readonly">
											<select  class="conditions"  name="conditions[]" style="height:  26px;width:115px;">
												<option value="Impressions">Impressions</option>
												<option value="Clicks" >Clicks</option>
												<option value="Installs" selected>Installs</option>
												<option value="Spend">Spend</option>
												<option value="eCPM" >eCPM</option>
												<option value="eCPC" selected>eCPC</option>
												<option value="eCPI" selected>eCPI</option>
											</select>
											<select  class="conditions" name="conditions[]" style="height:  26px;width: 75px;">
												<option value="is_greater_than_or_equal_to">>=</option>
												<option value="equal_to" >=</option>
												<option value="is_less_than_or_equal_to" selected><=</option>
												<option value="is_greater_than">></option>
												<option value="is_less_than" ><</option>
											</select>
											<input type="text"   class="conditions" name="conditions[]" placeholder="Value" style="width: 10%;"required/>
										</div>
									</div>
								</div>

								<div class="form-group">
									<label for="actions" class="control-label">Actions:</label>
									<select id="actions" name="actions" class="form-control">
										<option value="notify_customer">Notify Customer</option>
										<option value="pause_campaign" >Pause campaign</option>
										<option value="start_campaign" selected>Start campaign</option>
									</select>
								</div>
								<div class="form-group">
									<label for="status" class="control-label">Status:</label>
									<select id="status" name="status" class="form-control">
										<option value="0">Deactivate</option>
										<option value="1" selected>Activate</option>
									</select>
								</div>

							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
								<button type="button" id="btn_add" class="btn btn-primary">Save</button>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div id="edit_model" class="modal fade">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
							<h4 class="modal-title">Edit Rule</h4>
						</div>
						<div class="modal-body">
							<form method="post" id="frm_edit">
								<input type="hidden" value="edit" name="action" id="action">
								<input type="hidden" value="0" name="edit_id" id="edit_id">
								<div class="form-group">
									<label for="rule_name" class="control-label">Rule Name:</label>
									<input type="text" class="form-control" id="edit_rule_name" name="edit_rule_name" required/>
								</div>
								<div class="form-group">
									<label for="campaigns" class="control-label">Campaigns:</label>
									<select id="edit_campaigns" name="edit_campaigns[]" class="form-control" multiple size="5">
										<option value="Swiggy">Swiggy</option>
										<option value="Netflix" >Netflix</option>
										<option value="BigBasket">BigBasket</option>
										<option value="Zomato">Zomato</option>
										<option value="FoodPanda" selected>FoodPanda</option>
									</select>
								</div>
								<div class="form-group">
									<label for="schedule" class="control-label">Schedule:</label>
									<select id="edit_schedule" name="edit_schedule" class="form-control">
										<option value="every_15_minutes">Every 15 minutes</option>
										<option value="every_hour" >Every hour</option>
										<option value="every_day_at_12:00AM">Every day at 12:00 AM</option>
									</select>
								</div>
								<div class="form-group">
									<label for="conditions" class="control-label">Conditions:</label>
									<br>
									<div class="panel panel-default">
										<div class="panel-body" >

											<select id="edit_conditions1" name="conditions[]" style="height:  26px;width: 115px;">
												<option value="Impressions">Impressions</option>
												<option value="Clicks" >Clicks</option>
												<option value="Installs" selected>Installs</option>
												<option value="Spend">Spend</option>
												<option value="eCPM" >eCPM</option>
												<option value="eCPC" selected>eCPC</option>
												<option value="eCPI" selected>eCPI</option>
											</select>
											<select  id="edit_conditions2" name="conditions[]" style="height:  26px;width: 75px;">
												<option value="is_greater_than_or_equal_to">>=</option>
												<option value="equal_to" >=</option>
												<option value="is_less_than_or_equal_to" selected><=</option>
												<option value="is_greater_than">></option>
												<option value="is_less_than" ><</option>
											</select>
											<input type="text"   id="edit_conditions3" name="conditions[]" placeholder="Value" style="width: 10%;" required/>
											<br><br>
											<input type="text" id="edit_conditions4" value="Else" name="conditions[]" style="width: 10%;" readonly="readonly">
											<select  id="edit_conditions5"  name="conditions[]" style="height:  26px;width:115px;">
												<option value="Impressions">Impressions</option>
												<option value="Clicks" >Clicks</option>
												<option value="Installs" selected>Installs</option>
												<option value="Spend">Spend</option>
												<option value="eCPM" >eCPM</option>
												<option value="eCPC" selected>eCPC</option>
												<option value="eCPI" selected>eCPI</option>
											</select>
											<select  id="edit_conditions6" name="conditions[]" style="height:  26px;width: 75px;">
												<option value="is_greater_than_or_equal_to">>=</option>
												<option value="equal_to" >=</option>
												<option value="is_less_than_or_equal_to" selected><=</option>
												<option value="is_greater_than">></option>
												<option value="is_less_than" ><</option>
											</select>
											<input type="text"   id="edit_conditions7" name="conditions[]" placeholder="Value" style="width: 10%;" required/>
										</div>
									</div>
								</div>

								<div class="form-group">
									<label for="rule_name" class="control-label">Actions:</label>
									<select id="edit_actions" name="edit_actions" class="form-control">
										<option value="notify_customer">Notify Customer</option>
										<option value="pause_campaign" >Pause campaign</option>
										<option value="start_campaign">Start campaign</option>
									</select>
								</div>
								<div class="form-group">
									<label for="status" class="control-label">Status:</label>
									<select id="edit_status" name="edit_status" class="form-control">
										<option value="0">Deactivate</option>
										<option value="1">Activate</option>
									</select>
								</div>


							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
								<button type="button" id="btn_edit" class="btn btn-primary">Save</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
<script type="text/javascript">
	$( document ).ready(function() {
		var grid = $("#rule_grid").bootgrid({
			ajax: true,
			rowSelect: true,
			post: function ()
			{
				return {
					id: "b0df282a-0d67-40e5-8558-c9e93b7befed"
				};
			},
			url: "response.php",
			formatters: {
				"commands": function(column, row)
				{
					return "<button type=\"button\" class=\"btn btn-xs btn-default command-edit\" data-row-id=\"" + row.id + "\"><span class=\"glyphicon glyphicon-edit\"></span></button> " + 
					"<button type=\"button\" class=\"btn btn-xs btn-default command-delete\" data-row-id=\"" + row.id + "\"><span class=\"glyphicon glyphicon-trash\"></span></button>";
				}
			}
		}).on("loaded.rs.jquery.bootgrid", function()
		{
			grid.find(".command-edit").on("click", function(e)
			{

				var ele =$(this).parent();
				var g_id = $(this).parent().siblings(':first').html();
				var g_name = $(this).parent().siblings(':nth-of-type(2)').html();
				$('#edit_model').modal('show');
				if($(this).data("row-id") >0) {


					$('#edit_id').val(ele.siblings(':first').html());
					$('#edit_rule_name').val(ele.siblings(':nth-of-type(2)').html());
					$('#edit_schedule').val(ele.siblings(':nth-of-type(4)').html());
					$('#edit_actions').val(ele.siblings(':nth-of-type(6)').html());
					$('#edit_status').val(ele.siblings(':nth-of-type(7)').html());
					var edit_status = $(this).parent().siblings(':nth-of-type(7)').html();
					if(edit_status == 'Deactivate'){
						$('#edit_status').val(0);
					}else{
						$('#edit_status').val(1);
					}
					var value = ele.siblings(':nth-of-type(3)').html();
					var result =value.split(',');
					$('#edit_campaigns').val(result);
					var values = ele.siblings(':nth-of-type(5)').html();
					var results =values.split(' ');
					var i=1;
					$.each( results, function( key, value ) {
						$('#edit_conditions'+i).val(value);
						i++;
					});
				} else {
					alert('Now row selected! First select row, then click edit button');
				}
			}).end().find(".command-delete").on("click", function(e)
			{

				var conf = confirm('Delete ' + $(this).data("row-id") + ' items?');
				alert(conf);
				if(conf){
					$.post('response.php', { id: $(this).data("row-id"), action:'delete'}
						, function(){ 
                                        $("#rule_grid").bootgrid('reload');
                                    }); 
								//$(this).parent('tr').remove();
								//$("#rule_grid").bootgrid('remove', $(this).data("row-id"))
							}
						});
		});

		function ajaxAction(action) {
			data = $("#frm_"+action).serializeArray();
			$.ajax({
				type: "POST",  
				url: "response.php",  
				data: data,
				dataType: "json",       
				success: function(response)  
				{
					if(response=='rule_error'){
						$('.error').append('<div class="alert alert-danger">Rule name should not be empty!</div>');
					}
					if(response=='condition_error'){
						$('.error').append('<div class="alert alert-danger">Conditions should not be empty!</div>');
					}
					if(response=='1'){
						$('#'+action+'_model').modal('hide');
						$("#rule_grid").bootgrid('reload');
						location.reload();
					}
				} 

			});
		}

		$( "#command-add" ).click(function() {
			$('#add_model').modal('show');
		});
		$( "#btn_add" ).click(function() {
			ajaxAction('add');
		});
		$( "#btn_edit" ).click(function() {
			ajaxAction('edit');
		});
	});
</script>
