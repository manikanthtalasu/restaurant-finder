<?php
require_once 'model/session.php';
require_once 'model/order.php';
$session = new Session();
$order = new Order();
$user_id = $session->get_session_data('id');
$result = $order->execSQL("SELECT *,`order`.`id` as `orderId`,`order`.`status` as `orderStatus` FROM `order` INNER JOIN `users` ON `users`.`id` = `order`.`user_id` INNER JOIN `restaurant` ON `restaurant`.`id` = `order`.`restaurant_id` INNER JOIN `credit_cards` ON `credit_cards`.`id` = `order`.`card_id` INNER JOIN `delivery_address` ON `delivery_address`.`id` = `order`.`address_id` WHERE `order`.`user_id` = '$user_id'");
$data = [];
while($row = mysqli_fetch_object($result))
{
array_push($data,(array) $row);
}

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
			<? if($session->get_session_data('user_type') == 'user'): ?>

			<table class="table table-striped table-hover"> 
				<thead> 
					<tr> 
						<th>Order ID</th> 
						<th>Detail</th> 
						<th>Total</th> 
						<th>status</th> 
					</tr> 
				</thead> 
				<tbody> 
					<?php
					foreach ($data as $value) {
						echo '<tr> 
						<th>'.$value['orderId'].'</th> 
						<td>';
						echo $value['name'].'</td> 
						<td>$'.$value['total'].'</td> 
						<td>';
						switch (intval($value['orderStatus'])) {
							case 1: echo '<span class="label label-default">Payment Pending</span>';
								break;
							case 2: echo '<span class="label label-info">Payment Confirmed</span>';
								break;
							case 3: echo '<span class="label label-success">Order Confirmed</span>';
								break;
							case 4: echo '<span class="label label-primary">Order Prepared</span>'; 
								break;
							case 5: echo '<span class="label label-warning">Out for delivery</span>';
								break;
							case 6: echo '<span class="label label-danger">Delivered</span>';
								break;
						}
						echo '</td> 
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