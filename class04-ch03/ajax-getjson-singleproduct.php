<?php
$id = $_GET['id']??null;
if($id){
    $conn = new mysqli("localhost","root","","r57_php") or die("ERROR!!!");
    $q = "select * from superstore where rowid = '$id' limit 1";
    $r = $conn->query($q);
    $row = $r->fetch_assoc();
    echo json_encode($row);
}  