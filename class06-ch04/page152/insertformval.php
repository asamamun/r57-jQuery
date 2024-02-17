<?php
//echo "i am alive"; exit();
$mysqli = new mysqli('localhost', 'root', '', 'jquery');
$selectQuery = "insert into users values('','".$_POST['uname']."','".$_POST['upass']."')";
//echo $selectQuery;exit();
$result = $mysqli->query($selectQuery);
if($result){echo "registration successfull";}
else {echo "error! error!! error!!!";}
?>