<?php
if(isset($_POST['vote']))
{
if(isset($_COOKIE["voted"]))
{
$message = 'You have already voted. You cannot vote more than once per day.';
}
else
{
$message = 'Your vote has been saved';
$dom = new DOMDocument();
$dom->load('browser.xml');
$xpath = new DomXPath($dom);
$units = $xpath->query('//browser');
foreach ($units as $unit)
{
$value = $unit->getAttribute('value');
if($value == $_POST['browser'])
{
$votes = $unit->getAttribute('votes');
$unit->setAttribute('votes', ++$votes);
setcookie("voted", true, time()+ (24*60*60)); /* expire in 24 hours */
// setcookie("voted", true, time()+ (20)); /* expire in 24 hours */
break;
}
}
$dom->save('browser.xml');
}
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<style type="text/css">
body{font-family:"Trebuchet MS",verdana;width:350px;}
ul{list-style:none;}
</style>
</head>
<body>
<form method="post">
<fieldset>
<legend>Select Your Captain</legend>
<ul>
<?php
$dom = new DOMDocument();
$dom->load('browser.xml');
$xpath = new DomXPath($dom);
$browsers = $xpath->query('//browser');
foreach ($browsers as $browser)
{
    if (isset($_POST['browser'])) {
        $checked = ($_POST['browser'] == $browser->getAttribute('value'))? 'checked': '';
    }
    else{
        $checked = "";
    }
echo '<li><input type="radio" '.$checked.' name="browser" value="'.$browser->getAttribute('value').'">'.$browser->getAttribute('name').'</li>';
}
?>
<li style="color:red;"><?php echo $message??''; ?></li>
<li><input type="submit" name="vote" value="vote" /> OR <a href="results.php" id="results">View
Results</a></li>
</ul>
</fieldset>
</form>
</body>
</html>