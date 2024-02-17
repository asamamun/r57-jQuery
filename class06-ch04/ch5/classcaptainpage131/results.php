<html>
<head>
<title>Vote Results</title>
<style type="text/css">
body{font-family:"Trebuchet MS",verdana;width:350px;}
ul{list-style:none;}
li{height:25px;}
span{background-color:red;color:#fff;float:left;}
</style>
</head>
<body>
<fieldset>
<legend>Poll Results</legend>
<?php
$dom = new DOMDocument();
$dom->load('browser.xml');
$xpath = new DomXPath($dom);
$browsers = $xpath->query('//browser');
echo '<ul >';
foreach ($browsers as $browser)
{
$name = $browser->getAttribute('name');
$votes = $browser->getAttribute('votes');
echo '<li>'.$name.' - '.$votes. ' votes</li>';
echo '<li><span style="width:'.$votes.'px;">&nbsp;</span></li>';
}
echo '</ul>';
?>
</fieldset>
</body>
</html>