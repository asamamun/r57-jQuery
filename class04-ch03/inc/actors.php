<?php
sleep(3);
$goodactors = ["John", "jayed khan", "sakib khan"];
$badactors = ["Hero Alam", "telesamad", "jambo"];
$type = $_POST['type']??"naire";
if($type == "good"){
    show($goodactors);
}
if($type == "bad"){
    show($badactors);
}

function show($arr){
    foreach ($arr as $value) {
       echo "<li>$value</li>";
    }
}