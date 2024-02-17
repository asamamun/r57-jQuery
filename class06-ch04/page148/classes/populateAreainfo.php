<?php
if(isset($_GET['areaid'])){
require "database.php";
$selectAreainfo = "select * from `areainfo` where `areaid`='".$_GET['areaid']."'";
//echo json_encode(["data"=>$selectArea]);
//exit;
$selectAreainfoResult = $conn->query($selectAreainfo);

if($selectAreainfoResult->num_rows > 0 ){
	$row = array();
	while($r = $selectAreainfoResult->fetch_array(MYSQLI_ASSOC)){
		$row[] = $r;
		}
		echo json_encode(["result"=>"1","records"=>$row]);
	}
else echo json_encode(["result"=>"0"]);

}