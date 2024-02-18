<?php
session_start();
require "../database.php";
$pagesize = 10;
$recordstart = (isset($_GET['recordstart'])) ? $_GET['recordstart'] : 0;
// Create the query
if(isset($_GET['searchdata'])){
	$sd = $_GET['searchdata'];
// $selectQuery = "SELECT products.*,product_images.image as image FROM products,product_images where products.id=product_images.pid and products.uid='".$_SESSION['userId']."' and products.sku like '%".$sd."%' or products.name like '%".$sd."%' group by products.id   ORDER by products.id desc limit $recordstart,$pagesize";
$selectQuery = "SELECT products.*, product_images.image as image
FROM products LEFT JOIN product_images ON products.id = product_images.pid
where  products.sku like '%".$sd."%' or products.name like '%".$sd."%' group by products.id ORDER by products.id desc limit $recordstart,$pagesize";
// echo $selectQuery;
// exit;
	}
else {
$selectQuery = "SELECT products.*, product_images.image as image
FROM products LEFT JOIN product_images ON products.id = product_images.pid
group by products.id ORDER by products.id desc limit $recordstart,$pagesize";
}
// echo $selectQuery;
// exit;
//total record start
if(isset($_GET['searchdata'])){
	$sd = $_GET['searchdata'];
// $totalrecord = "select count(*) from products where uid='".$_SESSION['userId']."' and  sku like '%".$sd."%' or name like '%".$sd."%'";}
$totalrecord = "select count(*) from products where sku like '%".$sd."%' or name like '%".$sd."%'";}
else {
	$totalrecord = "select count(*) from products";
	}
$totalrecordQuery = $conn->query($totalrecord);
$totalrecordQueryRow = $totalrecordQuery->fetch_row(); 
$totalrecord = $totalrecordQueryRow[0];
//total record end
$numberofpages = ceil($totalrecord/$pagesize);
// echo $numberofpages;
// exit;
// Send the query to MySQL
$selectQueryResult = $conn->query($selectQuery);
$totalRows = $selectQueryResult->num_rows;
$table = "<table class='table table-hover'> <caption></caption> <tr><th>Sl</th><th>Name</th><th>Image</th><th>SKU</th><th>Price</th><th>Action</th></tr>";
$sl =($recordstart+1) ;
while($row = $selectQueryResult->fetch_array()){
	// var_dump($row);
	//echo $row['price']."<br>";
	$table .= "<tr><td>".$sl++."</td><td class='clspn'>".$row['name']."</td><td><img src='assets/products/".$row['image']."' width='120px'/></td><td class='clssku'>".$row['sku']."</td><td class='clsprice'>".$row['price']."</td><td><a href='#productform' class='editbtn' data-editid='".$row['id']."'><img src='assets/images/edit.png' width='32px'/></a><a class='delbtn' data-pid='".$row['id']."'><img src='assets/images/delete.png' width='32px'/></a></td></tr>";
	}
$table .= "</table>";
if($totalRows > 0 ){
$table .= "<h4>Total ".$totalRows." records</h4>";}
else {
$table .= "<h4 class='text-danger'>No Records found</h4>";	
	}

// echo $table;	
?>
<?php
$pagination = '<ul class="pagination">';
for($i = 0; $i <$numberofpages;$i++){
	$pagestartvalue = $i*$pagesize;
	$pageendvalue = $pagestartvalue + $pagesize;
	//if($pagestartvalue == $recordstart){
	if(	$recordstart >=$pagestartvalue && $recordstart <$pageendvalue){
		$pagination.="<li class='active page-item'><a class='pageanchor page-link' data-recid='".$pagestartvalue."'>".($i+1)."</a></li>";
	}
	else {
		$pagination.="<li class='page-item'><a class='pageanchor page-link' data-recid='".$pagestartvalue."'>".($i+1)."</a></li>";
		}
	} 
$selectQueryResult->free();
$conn->close();
$pagination.= "</ul>";
echo $pagination.$table.$pagination;
?>
