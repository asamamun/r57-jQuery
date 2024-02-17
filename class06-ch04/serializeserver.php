<?php
if(isset($_SERVER['HTTP_X_REQUESTED_WITH']) && $_SERVER['HTTP_X_REQUESTED_WITH'] == 'XMLHttpRequest')
{
    sleep(4);
// $params = array();
//parse_str+in+php&oq=parse_str&aqs=chrome.1.69i57j0i512l8j0i10i512.2535j0j7&sourceid=chrome&ie=UTF-8
//email=admin%40idbbisew.com&fullName=admin&sex=M&country=UK&letter=on
parse_str($_POST['data'], $params);
//email=A&fullName=B&sex=M&country=UK&letter=on
// var_dump($params);
echo "your Email is " . $params['email'] . "<br>";
echo "your full name is " . $params['fullName'] . "<br>";
echo "your sex is " . $params['sex'] . "<br>";
echo "your country is " . $params['country'] . "<br>";
echo "Newsletter Subs? :  " . ($params['letter'] ?? "Off") . "<br>";
// echo "your full name is " . $params['fullName'] . "<br>";
}
else
{
echo 'This is not an AJAX request. This page cannot be accessed directly.';
}

