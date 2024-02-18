<?php
session_start();
if(isset($_POST["pname"])){
	require "../database.php";
	require "imageResize.php";
//productid=&pname=A&psku=B&pdesc=CCC&pqty=12&punit=piece&pprice=123&pvat=5
	$pname = $_POST['pname'];
	$psku = $_POST['psku'];
	$pdesc = $_POST['pdesc'];
	$pqty = $_POST['pqty'];
	$punit = $_POST['punit'];
	$pprice = $_POST['pprice'];
	$pvat = $_POST['pvat'];
	if($pname == "" || $psku == "" || $pdesc == "" || $pqty == "" || $punit == "" || $pprice == "" || $pvat == ""){
		echo "Please fill all the fields";
		exit;
	}
	$insertQuery = "INSERT INTO `products`(`id`, `sku`, `name`, `description`, `quantity`, `unit`, `price`, `vat`, `uid`, `created`) VALUES (null,'$psku','$pname','$pdesc','$pqty','$punit','$pprice','$pvat','".$_SESSION['userId']."',CURRENT_TIMESTAMP)";
	$conn->query($insertQuery);
	if($conn->affected_rows == 1){
		$id = $conn->insert_id;
		if(isset($_FILES['image']))	{
		$allfiles = $_FILES['image'];

		$allfileNames = $allfiles['name'];
		$allfileTmpNames = $allfiles['tmp_name'];
		$allfileError = $allfiles['error'];
		$allfileSize = $allfiles['size'];
		$allfileType = $allfiles['type'];
		// var_dump($allfileTmpNames);
		// exit;

		// 
		// 
for($i=0;$i<count($allfileNames);$i++){
	$allfileExt = explode('.', $allfileNames[$i]);
	$allfileActualExt = strtolower(end($allfileExt));
	//$fileName = $allfileNames[$i];
	$fileTmpName = $allfileTmpNames[$i];
	$onlyimagename = $allfileExt[0]."_".time()."_".$_SESSION['userId']."_".$id.".".$allfileActualExt;
	$imageName = "../assets/products/".$onlyimagename;
	move_uploaded_file($allfileTmpNames[$i],$imageName);		
		//use image  to resize image
		$image = new ImageResize($imageName);
		$image->resizeToWidth(800);
		$image->save($imageName);
		$imagequery = "insert into product_images(pid,image) values('$id','$onlyimagename')";
		$conn->query($imagequery);
		}
		//
		$message = ["error"=>false,"message" => "Product Inserted"];
		}
	else $message = ["error"=>false,"message" => "Product Inserted without Image"];	
		
	}
else { 
	$message = ["error"=>true,"message" => "Product Not Inserted"];
}
$conn->close();
echo json_encode($message);
}