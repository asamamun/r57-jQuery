<html>
<head>
<title>Add rows dynamically</title>
<style type="text/css">
fieldset{width:450px;}
ul{padding:2px;list-style:none;}
label{float:left;width:100px;}
</style>
<script src="../../assets/js/jquery-3.7.1.min.js"></script>
<script>

$(document).ready(function ()
{
$('#add').click(function()
{

var str = '<li><label>Name</label><input type="text" class="webnames" value=""/><input type="button" value="remove" class="remove"/></li>';
//str += '<label>Name</label><input type="text" value=""/> ';
//str+= '<input type="button" value="remove" class="remove"/>';
//str+= '</li>';
$('#sites').append(str);
});

$('#sites').on('click','.remove', function()
{
$(this).parent('li').remove();
});

$("#save").click(function(e) {
    var webnames = $(".webnames");
	var usersites = new Array();
	//alert(webnames);return;
	$.each(webnames,function(k,v){
		// console.log(k);
		// console.log(v);
		// console.log("________________________________");

		//alert($(this).val());
		usersites.push($(this).val())
		});
	//alert("Your fav websites: " + usersites)	;
	$.get("page107php.php",{us:usersites}, function(data){
		//alert(data);
		$("#res").html(data);
		});
});
});
</script>
</head>
<body>
<form action="process.php" method="post">
<fieldset>
<legend>Websites you visit daily</legend>
<ul id="sites">
<li>
<label>Name</label><input type="text" class="webnames" value=""/>
</li>

</ul>
<input type="button" id="add" value="Add More"/>
<input type="button" id="save" value="save"/>
</fieldset>
</form>
<hr>
<div id="res"></div>
</body>
</html>