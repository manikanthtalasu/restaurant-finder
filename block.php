<?php
require_once 'model/session.php';
require_once 'model/order.php';
require_once 'model/restaurant.php';

$session = new Session();
$order = new Order();
$restaurant = new Restaurant();

if($session->get_session_data('user_type') == 'admin')
{
	$restaurant->update('id',$_GET['id'],['status'=>2]);
	header('Location: admin-dashboard.php');
}
else
{
	print_r("Something went wrong");
}

?>