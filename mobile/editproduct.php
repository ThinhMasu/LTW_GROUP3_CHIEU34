<?php
	require "config.php";
	require "db.php";
	$db = new Db();
	$id = $_GET['id'];
	echo"111";
	$name = $_POST['name'];
		$type_id = $_POST['type_ID'];
		$manu_ID = $_POST['manu_ID'];
		$description = $_POST['description'];
		$price = $_POST['price'];
		$edit = $db->editProduct($name, $manu_ID, $price, $image, $description, $id);
	if (isset($_POST['edit']))
	{
		if (isset($_FILES['fileUpload']))
		{
			$image = $_FILES['fileUpload']['name'];
			$file_tmp = $_FILES['fileUpload']['tmp_name'];
		}
		else
		{
			$image = "";
		}
		

		if (isset($edit))
		{
			move_uploaded_file($file_tmp,"public/images/".$image);
			header('location:index.php');
		}
	}
?>