<?php
require_once 'model/session.php';
require_once 'model/restaurant.php';
require_once 'model/order.php';
$session = new Session();
$restaurant = new Restaurant();
$user_id = $session->get_session_data('id');
$restaurants = $restaurant->selectAll();
$size = sizeof($restaurants);
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<?php include("./include/header.php"); ?>
	<title>Restaurant Finder</title>
</head>
<body>
	<?php include("./include/navbar.php"); ?>
	<div class="container" style="margin-top:100px;margin-bottom:50px;min-height:500px">
		<? if($session->session_exist('user_type')): ?>
			<? if($session->get_session_data('user_type') == 'admin'): ?>

			<table class="table table-striped table-hover"> 
				<thead> 
					<tr> 
						<th>ID</th> 
						<th>Restaurant Name</th> 
						<th>Status</th> 
						<th>Change status</th> 
					</tr> 
				</thead> 
				<tbody> 
					<?php
					foreach ($restaurants as $value) {
						echo '<tr>
						<th>'.$value['id'].'</th>
						<th>'.$value['name'].'</th>
						<th>';

						switch (intval($value['status'])) {
						
							case 1: echo ' <span class="label label-success"><i class="fa fa-stop"></i> Approved</span>';
							break;
							case 2: echo ' <span class="label label-danger"><i class="fa fa-stop"></i> Blocked</span> ';
							break;
							case 3:echo ' <span class="label label-primary"><i class="fa fa-stop"></i> Pending Approval</span> ';
							break;

						}

						echo '</th><th>';

						switch (intval($value['status'])) {
						
							case 1: echo ' <a href="/block.php?id='.$value['id'].'" class="label label-danger"><i class="fa fa-stop"></i> Block</a>';
							break;
							case 2: echo ' <a href="/approve.php?id='.$value['id'].'" class="label label-success"><i class="fa fa-stop"></i> Approve</a> ';
							break;
							case 3:echo ' <a href="/approve.php?id='.$value['id'].'" class="label label-success"><i class="fa fa-stop"></i> Approve</a> <a href="/block.php?id='.$value['id'].'" class="label label-danger"><i class="fa fa-stop"></i> Block</a>';
							break;

						}

						echo '</th>
						</tr> ';
					}

					?>
				</tbody> 
			</table>


			<? else: ?>
				<h1>Not-Authorized</h1>
			<? endif; ?>
		<? else: ?>
			<h1>Non-Authenticated</h1>
		<? endif; ?>
</div>





<div class="modal registration-form fade" role="dialog" aria-labelledby="register">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title" id="register">User Registeration Form</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="register_form">
					<div class="form-group">
						<label for="inputEmail3" class="col-sm-3 control-label">First Name</label>
						<div class="col-sm-9">
							<input type="text" name="first_name" class="form-control" placeholder="First Name" required>
						</div>
					</div>
					<div class="form-group">
						<label for="inputEmail3" class="col-sm-3 control-label">Last Name</label>
						<div class="col-sm-9">
							<input type="text" name="last_name" class="form-control" placeholder="Last Name" required>
						</div>
					</div>

					<div class="form-group">
						<label for="inputPassword3" class="col-sm-3 control-label">Phone#</label>
						<div class="col-sm-9">
							<input type="number" name="phone" class="form-control" placeholder="Phone Number" required>
						</div>
					</div>
					<div class="form-group">
						<label for="inputEmail3" class="col-sm-3 control-label">Email</label>
						<div class="col-sm-9">
							<input type="email" name="email" class="form-control" placeholder="Email" required>
						</div>
					</div>
					<div class="form-group">
						<label for="inputPassword3" class="col-sm-3 control-label">Password</label>
						<div class="col-sm-9">
							<input type="password" name="password" class="form-control" placeholder="Password" required>
							<input type="hidden" name="type" class="form-control" value="user">
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-3 col-sm-9">
							<div class="alert alert-danger" role="alert" id="register_error_block" style="margin-bottom:0px;display:none">
								<strong>Error!</strong> Username already exist.
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-3 col-sm-9">
							<button type="submit" class="btn btn-default"><i class="fa fa-spinner fa-spin" id="register_spinner" style="display:none"></i> Register</button>
						</div>
					</div>
				</form>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->




<?php include('./include/footer.php') ?>
</body>
</html>