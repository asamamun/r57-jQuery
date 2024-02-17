<?php
require "database.php";

$selectDivision = "select * from division where 1";
$selectDivisionResult = $conn->query($selectDivision);

if($selectDivisionResult->num_rows > 0 ){
	$row = array();
	while($r = $selectDivisionResult->fetch_array(MYSQLI_ASSOC)){
		$row[] = $r;
		}
		echo json_encode($row);
	}
else json_encode(["result"=>"no data found"]);	