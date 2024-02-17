<?php
if(isset($_GET['distid'])){
require "database.php";
$selectArea = "select * from `area` where `distid`='".$_GET['distid']."'";
//echo json_encode(["data"=>$selectArea]);
//exit;
$selectAreaResult = $conn->query($selectArea);

if($selectAreaResult->num_rows > 0 ){
	$row = array();
	while($r = $selectAreaResult->fetch_array(MYSQLI_ASSOC)){
		$row[] = $r;
		}
		echo json_encode(["result"=>"1","records"=>$row]);
	}
else echo json_encode(["result"=>"0"]);

}