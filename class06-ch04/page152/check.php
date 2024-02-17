<?php 
$mysqli = new mysqli('localhost', 'root', '', 'jquery'); 
$selectQuery = 'SELECT username as user FROM users WHERE username="'.$_POST['username'].'"'; 
$result = $mysqli->query($selectQuery); 
if ($result->num_rows > 0) 
{ 
echo false; 
} 
else 
{ 
echo true; 
} 
?>