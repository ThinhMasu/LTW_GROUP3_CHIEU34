<?php 
$tagetDir = "C:\wamp64\www\mobile\public\images";
$tagetFile = $tagetDir.basename($_FILE["fileUpload"]["name"]);
$upLoadOk = 1;
$imgFileType = pathinfo($tagetFile, PATHINFO_EXTENSION);
if(isset($_POST["submit"]))
{
	$check = getimagesize(($_FILE["fileToUpload"]["tmp_name"]));
	if($check != false)
	{
		echo "File in an image - ".$check["mime"].".";
		$upLoadOk = 1;
	}
	else{
		echo "File in an image.";
		$upLoadOk = 0;
	}
}

 ?>}
