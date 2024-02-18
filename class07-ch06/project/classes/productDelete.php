<?php
if(isset($_GET["recid"])){
	require "database.php";
$deleteQuery = "delete from products where id='".$_GET["recid"]."' limit 1";
$connection->query($deleteQuery);
if($connection->affected_rows == 1){
	echo "Record deleted";
	}
else {
	echo "Problem deleting record";
	}	
}