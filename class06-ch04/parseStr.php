<?php
$str = "email=admin%40idbbisew.com&fullName=admin&sex=M&country=UK&letter=on";
parse_str($str,$output);
var_dump($output);
