<?php
if(isset($_GET['townid'])){
require "database.php";
$townid = $conn->escape_string($_GET['townid']);
$selectTowninfo = "select * from `towninfo` where `townid`='".$townid."' limit 1";
//echo json_encode(["data"=>$selectArea]);
//exit;
$selectTowninfoResult = $conn->query($selectTowninfo);

if($selectTowninfoResult->num_rows > 0 ){
	
	$r = $selectTowninfoResult->fetch_array(MYSQLI_ASSOC);		
		echo json_encode(["result"=>"1","records"=>$r]);
	}
else echo json_encode(["result"=>"0"]);

}