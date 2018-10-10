<?php 
require "config.php";
require "db.php";
$name = $_POST['name'];
$key = $_POST['name'];
$type_ID = $_POST['type_id'];
$manu_ID = $_POST['manu_id'];
$img = $_FILES['fileUpload']['name'];
$description = $_POST['description'];
$price = $_POST['price'];
$db = new Db;
$db->checkImg();
if( isset($img))
{
	$addcart = $db->AddCart($name, $type_ID, $manu_ID, $img, $description, $price);
}
header("location:detail2.php");
 ?>
