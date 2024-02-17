<?php
// $params = array();
parse_str($_GET['data'], $params);
// var_dump($params);
echo "your Email is " . $params['email'] . "<br>";
echo "your full name is " . $params['fullName'] . "<br>";
echo "your sex is " . $params['sex'] . "<br>";
echo "your country is " . $params['country'] . "<br>";
echo "Newsletter Subs? :  " . ($params['letter'] ?? "Off") . "<br>";
// echo "your full name is " . $params['fullName'] . "<br>";
