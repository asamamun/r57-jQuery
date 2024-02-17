<!DOCTYPE html>
<html> 
<head> 
<title>Check Username</title> 
<style type="text/css"> 
body{ font-family: "Trebuchet MS", Verdana, Arial; 
width:555px; } 
input,textarea { vertical-align:top; } 
label{ float:left; width:150px;} 
#error {font-weight:bold; color:#ff0000;} 
</style>
<script src="../../assets/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript"> 
$(document).ready(function() 
{ 
var checked = false; 
$('#loginName').keyup(function() 
{ 
$('#error').empty(); 
var inputValue = $('#loginName').val();
//alert(inputValue);
if(jQuery.trim(inputValue) == ''){return false; } 
$.post( 
'check.php', 
{ username : inputValue }, 
function(data) 
{ 
if(data) 
{ 
checked = true; 
$('#status').html('Username is available'); 
} 
else 
{ 
checked = false; 
$('#status').html('Username not available'); 
return false; 
} 
} 
); 
}); 
$('#dosave').click(function() 
{ 
if(checked == false) 
{
	$('#error').html('Kindly check the username'); 
	return false; 
} 
	else 
	{ 
		//alert("inserting uname and pass");
		//insert username and password code here
		    $.post("insertformval.php",{
    	uname:$('#loginName').val(),	
    	upass:$('#loginPass').val()},function(result){
        		//alert(result);
    			$('#error').html(result); 
      });	
	} 
	}); 
	$('#loginName').focus(function() 
	{ 
	checked == false; 
	}); 
	}); 
</script>
</head> 
<body> 
<fieldset> 
<legend><strong>Register</strong></legend> 
<form action="" method="post" id="loginForm">
<p> 
<label>Username </label> 
<input type="text" name="loginName" id="loginName"/> 
<!--a href="#" id="check"><strong>Check</strong></a--> 
<span id="status" style="float:right;"></span> 
</p> 
<p> 
<label>Password</label> 
<input type="password" id="loginPass" name="password"/> 
</p> 
<p> 
<span id="error"></span> 
</p> 
<p> 
<input type="button" value="Save" name="dos" id="dosave"/> 
</p> 
</form> 
</fieldset> 
</body> 
</html> 