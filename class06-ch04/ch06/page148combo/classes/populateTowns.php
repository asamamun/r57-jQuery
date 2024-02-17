<?php
if(isset($_GET['stateid'])){
require "database.php";
$stateid = $conn->escape_string($_GET['stateid']);
$selectedTowns = "select * from `towns` where `stateid`='".$stateid."'";
//echo json_encode(["data"=>$selectArea]);
//exit;
$selectedTownsResult = $conn->query($selectedTowns);

if($selectedTownsResult->num_rows > 0 ){
	$row = array();
	while($r = $selectedTownsResult->fetch_array(MYSQLI_ASSOC)){
		$row[] = $r;
		}
		echo json_encode(["result"=>"1","records"=>$row]);
	}
else echo json_encode(["result"=>"0"]);

}