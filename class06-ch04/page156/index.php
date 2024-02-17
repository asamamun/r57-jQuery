<html> 
<head> 
<title>Top 100 movies</title>
<script src="../../js/jquery-1.11.2.min.js"></script>
<script type="text/javascript"> 
$(document).ready(function() 
{ 
//alert("loaded");
var totalMovies = $('#list>li').length; 
var moviesPerPage = 5; 
var totalPages = Math.ceil(totalMovies/moviesPerPage); 
createNavigation(); 
setDataAndEvents(); 
function createNavigation() 
{ 
var navHTML = '<strong id="prev">Previous</strong>'; 
navHTML+= '<div>'; 
navHTML+= '<select id="goTo">'; 
navHTML+= '<option value="">Go to page</option>'; 
for(var i = 0; i< totalPages; i++) 
{
	//alert(i + " " + totalPages);
navHTML+= '<option value="'+(i+1)+'">Page '+ (i+1) + '</option>'; 
} 
navHTML+= '</select>'; 
navHTML+= '</div>'; 
navHTML+= '<strong id="next">Next</strong>'; 
$('#navigation').html(navHTML); 
$('#prev').hide(); 
$('#goTo').val(1); 
} 
function setDataAndEvents() 
{ 
$('#list').data('currentPage', 1); 
$('#list>li:gt(' + (moviesPerPage-1) + ')').hide(); 
$('#prev').click(function() 
{ 
var current = $('#list').data('currentPage'); 
goToPage(--current); 
}); 
$('#next').click(function(){ 
var current = $('#list').data('currentPage'); 
goToPage(++current); 
}); 
$('#goTo').change(function() 
{ 
if($.trim($(this).val()) == '') return; 
goToPage($(this).val()); 
}); 
} 
function goToPage(pageNumber) 
{ 
if(pageNumber == 1) $('#prev').hide(); 
else $('#prev').show(); 
if(pageNumber == totalPages) $('#next').hide(); else $('#next').show(); 
$('#list').data('currentPage', pageNumber); 
$('#goTo').val(pageNumber); 
var from = (pageNumber - 1) * moviesPerPage; 
var to = from + (moviesPerPage - 1); 
$('#list>li').show(); 
$('#list>li:lt(' + (from) + ')').hide(); 
$('#list>li:gt(' + (to) + ')').hide(); 
}

}); 
</script>
<style type="text/css"> 
body{ font-family: "Trebuchet MS", Verdana, 
Arial;width:400px;} 
h3{ margin:0;padding:0;} 
ul{ list-style:none;margin:10px 0;padding:0; 
border:1px solid #000;} 
li{ padding:5px;} 
#prev{ float:left;width:100px;} 
#next{ float:right;width:100px;text-align:right;} 
#navigation {float: left; border: 1px solid; padding: 5px; 
width: 97%;} 
#navigation>div { float: left; text-align: center; 
margin-left:40px; 200px;} 
select { width:100px; } 
strong { cursor:pointer; text-decoration:underline;} 
</style> 
</head> 
<body> 
<h3>Top 100 movies voted by people</h3> 
<a href="http://www.thebest100lists.com/best100movies/"> 
http://www.thebest100lists.com/best100movies/</a> 
<ul id="list"> 
<?php 
$mysqli = new mysqli('localhost', 'root', '', 'r30_jquery'); 
if ($mysqli->connect_errno) 
{ 
die('Connect Error: ' . $mysqli->connect_errno); 
} 
$query = 'SELECT movieName FROM movies'; 
if ($mysqli->query($query)) 
{ 
$result = $mysqli->query($query); 
if($result->num_rows > 0) 
{ 
	//echo "<ul>";
while($row = $result->fetch_array())
	{
		echo '<li>'.$row[0].'</li>';
	}
	//echo "</ul>";
	}
	
	else
	{
		echo 'No records';
	}
	}
	else
	{
		echo 'Query Unsuccessful';
	}
	?>
	</ul> 
	<div id="navigation"></div> 
	<p>&nbsp;</p> 
	</body> 
	</html> 