<?php
$usersites = $_GET['us'];
$res = "Your fav sites are: ";
foreach($usersites as $site){
	$res .= "<a href='".$site."' target='_blank'>".$site."</a><br>";
	}
echo $res;	

?>