<?php
$good = array('Sherlock Holmes', 'John Watson',
'Hercule Poirot', 'Jane Marple');
$bad = array('Professor Moriarty', 'Sebastian Moran',
'Charles Milverton', 'Von Bork', 'Count Sylvius');
// echo "you want to know " . $_GET['c'] . " guys";
function getHTML($names)
{
$strResult = '<ul>';
for($i=0; $i<count($names); $i++)
{
$strResult.= '<li>'.$names[$i].'</li>';
}
$strResult.= '</ul>';
return $strResult;
}

echo getHTML(${$_GET['c']});