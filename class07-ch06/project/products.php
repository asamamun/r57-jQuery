<?php
session_start();
if(isset($_SESSION['loggedIn']) && $_SESSION['loggedIn'] == true){
    
}
else{
    header("Location: index.php");
}

?>
<?php
  require "inc/header.php";
  ?>
<div class="container">
  <h1> <marquee behavior="" direction="">Products Page</marquee> </h1>
  <!-- products start -->
  <div class="container container-fluid">
		<marquee behavior="" direction="">TESTING AJAX</marquee>
		<div class="row">
			<div class="col-12">
				<div id="productform">
					<button class="btn btn-success" id="btnAdd">Add Product(Esc)</button>
					<div id="productinsertform">
						<form id="form_product" enctype="multipart/form-data">
						<input type="hidden" id="productid" name="productid" value="" />
						<label>Product Name</label>:
						<input type="text" class="form-control" name="pname" id="pname" required placeholder="name of product" /><br>
						<label>Product SKU</label>:
						<input type="text" class="form-control" name="psku" id="psku" required placeholder="SKU of product" /><br>
            <label>Product Details</label>:
						<textarea name="pdesc" id="pdesc" class="form-control" placeholder="description of the product"></textarea>
            <br>
            <label>Quantity</label>:
						<input type="text" class="form-control" name="pqty" id="pqty" required placeholder="qty of product" /><br>
            <label>Unit</label>:
						<select name="punit" id="punit" class="form-control">
              <option value="-1">Select</option>
              <option value="piece">Piece</option>
              <option value="kg">KG</option>
              <option value="lb">Pound</option>
              <option value="gm">Gram</option>
            </select>
            <br>
						<label>Product Price</label>:
						<input type="text" class="form-control" name="pprice" id="pprice" required placeholder="price of product" /><br>
            <label>VAT</label>:
						<input type="text" class="form-control" name="pvat" id="pvat" required placeholder="VAT of product" /><br>
						<label>Image</label>:
						<input type="file" multiple accept=".jpg, .jpeg, .png" capture name="image[]" class="form-control" id="image[]"/><hr>
						<input type="reset" id="clrform" class="btn btn-sm btn-danger" value="Clear">
						<input type="button" class="btn btn-sm btn-success" value="Add(Shift+S)" id="addproductbtn">
						<input type="button" class="btn btn-sm btn-info" value="Update" id="updateproductbtn">
						<input type="button" id="closeformbtn" class="btn btn-sm btn-info" value="Close(Shift+C)">
					</form>
					</div>
				</div>
			</div>			
		</div>
		<div class='row'>
			<div class='col-md-7'>
				<h1 style='padding:0;margin:0'>Product Information</h1>
			</div>
			<div class='col-md-5'>
				<div class="form-inline pull-right">
					<div class="form-group has-success has-feedback">
						<label class="control-label" for="inputSuccess4"></label>
						<input type="search" placeholder="name or sku" class="form-control" id="inputSuccess4">
						<span class="glyphicon glyphicon-search form-control-feedback"></span>
					</div>
				</div>
			</div>
		</div>
		<div id="producttable" class="table-responsive">

		</div>		
	</div>
  <!-- products end -->
</div>

  <?php
  require "inc/footer.php";
  ?>