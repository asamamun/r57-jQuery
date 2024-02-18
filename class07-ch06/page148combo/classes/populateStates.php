<?php
if(isset($_GET['country'])){
require "database.php";
$selectDistrict = "select * from states where countryId='".$_GET['country']."'";
$selectDistrictResult = $conn->query($selectDistrict);

if($selectDistrictResult->num_rows > 0 ){
	$row = array();
	while($r = $selectDistrictResult->fetch_array(MYSQLI_ASSOC)){
		$row[] = $r;
		}
		echo json_encode(["result"=>"1","records"=>$row]);
	}
else echo json_encode(["result"=>"0"]);

}