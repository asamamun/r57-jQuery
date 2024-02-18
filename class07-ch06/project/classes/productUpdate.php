<?php
if(isset($_POST["action"])){
	require "database.php";
	$pid = $_POST['pid'];
	$pname = $_POST['pn'];
	$psku = $_POST['ps'];
	$pprice = $_POST['pp'];
	$updateQuery = "update products set sku='$psku', name = '$pname', price = '$pprice' where id='$pid' limit 1";
	$connection->query($updateQuery);
	if($connection->affected_rows == 1){
		$message = "Product: ".$pname." Updated";		
		}
	else {$message = "Product Update Failed";}
		echo $message;	
	}	