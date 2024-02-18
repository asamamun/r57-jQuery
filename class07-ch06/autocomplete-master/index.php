<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Demo</title>
  <link rel="stylesheet" href="../../assets/css/bootstrap.min.css">
  <link rel="stylesheet" href="../../assets/ui/jquery-ui.min.css" type="text/css" /> 
</head>
<body> 
<h3>https://api.jqueryui.com/1.12/autocomplete/</h3>
<p>
When a string is used, the Autocomplete plugin expects that string to point to a URL resource that will return JSON data. It can be on the same host or on a different one (must support CORS). The Autocomplete plugin does not filter the results, instead a query string is added with a term field, which the server-side script should use for filtering the results. For example, if the source option is set to "https://example.com" and the user types foo, a GET request would be made to https://example.com?term=foo. The data itself can be in the same format as the local data described above.
</p>
	<form action='' method='post'>
		<p>
		<label>Product:</label>
		<input type='text' id="productname" name='productname' value='' class='auto'>
	</p>
	</form>
	<table id="product_table" class="table table-responsive">
<tr>
	<th>ID</th>
	<th>Name</th>
	<th>Price</th>
	<th>SKU</th>
	<th>Quantity</th>
	<th>Item Total</th>
	<th>Action</th>
</tr>

	</table>

<script type="text/javascript" src="../../assets/js/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="../../assets/ui/jquery-ui.min.js"></script>	
<script type="text/javascript">
$(function() {
	
	//autocomplete
	$("#productname").autocomplete({
		source: "search.php",//?term=value
		minLength: 1,
		select: function(event, ui) {
			console.log(ui);
			var id = ui.item.id;
			addProduct(id);			
		}
	});
	function addProduct(id){
		$.ajax({
			url: 'add_product.php',
			type: 'post',
			data: {id:id},
			success: function(response){
				console.log(response);
				response = JSON.parse(response);
				console.log(response);
				// return;
				$html = '<tr>';
				$html += '<td>'+response.id+'</td>';
				$html += '<td>'+response.name+'</td>';
				$html += '<td class="pprice">'+response.price+'</td>';
				$html += '<td>'+response.sku+'</td>';
				$html += '<td><input class="qu" type="number" name="quantity" value="1"></td>';
				$html += '<td class="itemtotal">'+response.price+'</td>';
				$html += '<td><a href="#" class="deleteproduct" data-id="'+response.id+'">Delete</a></td>';
				$html += '</tr>';
				$('#product_table').append($html);
				$("#productname").val("").focus();
			}
		});
	}
	//delete product
	$(document).on('click', '.deleteproduct', function(e){
		e.preventDefault();
		$(this).closest('tr').remove();
	});
});
</script>
</body>
</html>