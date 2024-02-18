<?php
require "connection.php";
$resultStr = '';
$query = 'SELECT fname, summary, example FROM functions where lid='.$_GET['id'];
if ($result = $conn->query($query))
{
if ($result->num_rows)
{
$resultStr.='<ul>';
while($row = $result->fetch_assoc())
{
$resultStr.= '<li><strong>'.$row['fname'].'</strong>
- '.$row['summary'];
$resultStr.= '<div><pre>'.$row['example'].'</pre></div>';
'</li>';
}
$resultStr.= '</ul>';
}
else
{
$resultStr = 'Nothing found';
}
}
echo $resultStr;
?>