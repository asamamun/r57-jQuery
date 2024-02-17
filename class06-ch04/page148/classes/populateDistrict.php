<?php
if(isset($_GET['division'])){
require "database.php";
$selectDistrict = "select * from district where divid='".$_GET['division']."'";
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