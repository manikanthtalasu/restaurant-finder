<?php
require_once 'model/session.php';
require_once 'model/order.php';
require_once 'model/restaurant.php';

$session = new Session();
$order = new Order();
$restaurant = new Restaurant();

if(isset($_GET['order-id']))
{
	$getOrder = $order->find('id',$_GET['order-id']);
	$getRestaurant = $restaurant->find('id',$getOrder['restaurant_id']);
	if($getRestaurant['owner_id'] == $session->get_session_data('id') && $session->get_session_data('user_type') == "restaurant_owner")
	{
		$status = intval($getOrder['status'])+1;
		$order->update('id',$_GET['order-id'],['status'=>$status]);
		header('Location: owner-track-order.php');

	}else{
		print_r("Something went wrong");

	}
}
else
{
	print_r("Something went wrong");
}




?>