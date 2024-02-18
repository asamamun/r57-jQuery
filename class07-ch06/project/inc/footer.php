</div>
<!-- footer start -->
<!-- Remove the container if you want to extend the Footer to full width. -->
<div class="container my-5">
  <!-- Footer -->
  <footer class="text-center text-lg-start text-white" style="background-color: #929fba">
    <!-- Grid container -->
    <div class="container p-4 pb-0">
      <!-- Section: Links -->
      <section class="">
        <!--Grid row-->
        <div class="row">
          <!-- Grid column -->
          <div class="col-md-3 col-lg-3 col-xl-3 mx-auto mt-3">
            <h6 class="text-uppercase mb-4 font-weight-bold">
              Company name
            </h6>
            <p>
              Here you can use rows and columns to organize your footer
              content. Lorem ipsum dolor sit amet, consectetur adipisicing
              elit.
            </p>
          </div>
          <!-- Grid column -->

          <hr class="w-100 clearfix d-md-none" />

          <!-- Grid column -->
          <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mt-3">
            <h6 class="text-uppercase mb-4 font-weight-bold">Products</h6>
            <p>
              <a class="text-white">MDBootstrap</a>
            </p>
            <p>
              <a class="text-white">MDWordPress</a>
            </p>
            <p>
              <a class="text-white">BrandFlow</a>
            </p>
            <p>
              <a class="text-white">Bootstrap Angular</a>
            </p>
          </div>
          <!-- Grid column -->

          <hr class="w-100 clearfix d-md-none" />

          <!-- Grid column -->
          <hr class="w-100 clearfix d-md-none" />

          <!-- Grid column -->
          <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mt-3">
            <h6 class="text-uppercase mb-4 font-weight-bold">Contact</h6>
            <p><i class="fas fa-home mr-3"></i> New York, NY 10012, US</p>
            <p><i class="fas fa-envelope mr-3"></i> info@gmail.com</p>
            <p><i class="fas fa-phone mr-3"></i> + 01 234 567 88</p>
            <p><i class="fas fa-print mr-3"></i> + 01 234 567 89</p>
          </div>
          <!-- Grid column -->

          <!-- Grid column -->
          <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mt-3">
            <h6 class="text-uppercase mb-4 font-weight-bold">Follow us</h6>

            <!-- Facebook -->
            <a class="btn btn-primary btn-floating m-1" style="background-color: #3b5998" href="#!" role="button"><i class="fab fa-facebook-f"></i></a>

            <!-- Twitter -->
            <a class="btn btn-primary btn-floating m-1" style="background-color: #55acee" href="#!" role="button"><i class="fab fa-twitter"></i></a>

            <!-- Google -->
            <a class="btn btn-primary btn-floating m-1" style="background-color: #dd4b39" href="#!" role="button"><i class="fab fa-google"></i></a>

            <!-- Instagram -->
            <a class="btn btn-primary btn-floating m-1" style="background-color: #ac2bac" href="#!" role="button"><i class="fab fa-instagram"></i></a>

            <!-- Linkedin -->
            <a class="btn btn-primary btn-floating m-1" style="background-color: #0082ca" href="#!" role="button"><i class="fab fa-linkedin-in"></i></a>
            <!-- Github -->
            <a class="btn btn-primary btn-floating m-1" style="background-color: #333333" href="#!" role="button"><i class="fab fa-github"></i></a>
          </div>
        </div>
        <!--Grid row-->
      </section>
      <!-- Section: Links -->
    </div>
    <!-- Grid container -->

    <!-- Copyright -->
    <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2)">
      © 2020 Copyright:
      <a class="text-white" href="https://mdbootstrap.com/">MDBootstrap.com</a>
    </div>
    <!-- Copyright -->
  </footer>
  <!-- Footer -->
</div>
<!-- End of .container -->
<!-- footer end -->
<script src="assets/js/jquery-3.6.0.min.js"></script>
<script src="assets/js/bootstrap.bundle.min.js"></script>
<script src="assets/js/jQueryForm.js"></script>
<script src="assets/js/jquery.toast.min.js"></script>
<script src="assets/js/showToast.js"></script>
<script>
//show-toast 


  //your script
  $(document).ready(function() {
    $("#logincontainer,#registrationcontainer").hide();
    $("#login").click(function() {
      //alert($("#logincontainer").css('display'));
      $("#logincontainer").toggle();
      if ($("#logincontainer").css('display') == 'block') {
        $("#registrationcontainer").hide();
        $("#title").text("Login");
      } else {
        $("#title").text("");
      }
    });
    $("#reg").click(function() {
      $("#registrationcontainer").toggle();
      if ($("#registrationcontainer").css('display') == 'block') {
        $("#logincontainer").hide();
        $("#title").text("Register");
      } else {
        $("#title").text("");
      }
    });
    //selector page
    $("#title2").click(function() {
      $(this)
        .html("i have <b>been</b> clicked")
        .css("color", "red")
        .css("font-size", "50px"); //chained functions
    });

    $("#copyBtn").click(function() {
      //alert($("#para1").text());
      //val() is used in form elements otherwise html or text()
      //$("#paracontainer").val("i can insert content here");
      //$("#para1").text("i can insert or replace content here too");
      $("#paracontainer").html($.trim($("#para1").text()));
      //$("#para1").text("");
      //$("#para1").html("");
      $("#para1").empty();
      //trim() is used to remove white spaces

    });
    //selector page end

    //ajax start
    $("#regBtn").click(function() {
      $name = $("#form3Example1cg").val();
      $email = $("#form3Example3cg").val();
      $pass = $("#form3Example4cg").val();
      $pass2 = $("#form3Example4cdg").val();
      if ($name == "" || $email == "" || $pass == "" || $pass2 == "") {
        alert("Please fill all the fields");
        return;
      }
      if ($pass != $pass2) {
        alert("password not matched");
        return;
      }
      // console.log($name + " : " + $email + " : " + $pass + " : " + $pass2);
      //$.get or $.post or $.ajax
      $.post("classes/registration.php", {
        name: $name,
        email: $email,
        pass: $pass,
        pass2: $pass2,
        submit: 'register'
      }, function(data) {
        data = JSON.parse(data);
        console.log(data);
        alert(data.message);
        if (!data.error) {
          $("#registrationcontainer").hide(500, function() {
            $("#logincontainer").show(500);
            $("#title").text("Login");
          });
        }

      });
    })
    //ajax end
    //login ajax start
    $("#loginBtn").click(function() {
      $email = $("#loginemail").val();
      $pass = $("#loginpass").val();
      console.log($email + " : " + $pass);
      if ($email == "" || $pass == "") {
        alert("Please fill all the fields");
        return;
      }
      //console.log($name + " : " + $email + " : " + $pass + " : " + $pass2);
      //$.get or $.post or $.ajax
      $.post("classes/login.php", {
        email: $email,
        pass: $pass,
        submit: 'login'
      }, function(data) {
        data = JSON.parse(data);
        console.log(data);
        //alert(data.message);
        //toast message start
        showToast('bottom-right',data.message, data.bg,data.icon, 4000);
        setTimeout(() => {
          window.location = "products.php";
        }, 4000);
        
        //toast message end
        if (!data.error) {
          // $("#logincontainer").hide(500,function(){
          //   $("#registrationcontainer").show(500);
          //   $("#title").text("Register");
          // });
          //window.location.href = "products.php";
        }
      });
    })
    //login ajax end

    //////////////////<<< products page start >>>>>//////////////////////////
    //clearform
    function clearform() {
				$("#productid").val("");
				$("#pname").val("");
				$("#psku").val("");
				$("#pprice").val("");
				$("#image").val("");
				
			}
    $("#productinsertform").hide();
    $("#btnAdd").click(function () {
				clearform();
				$("#productinsertform").show(200);
				$("#addproductbtn").show();
				$("#updateproductbtn").hide();
			});
      //close form
      $("#closeformbtn").click(function (e) {
				$("#productinsertform").hide(200);
				$("#addproductbtn").show();
				$("#updateproductbtn").hide();
				clearform();
			});
    function showProducts(s) {
      $.get("classes/productTable.php", {
          recordstart: s,
          rand: Math.random()
        },
        function(data) {
         console.log(data);
          $("#producttable").html(data);
        });
    }
    //call showProducts() function with 0 as argument
    showProducts(0);
    //search start
    $("#inputSuccess4").keyup(function(){
      searchtable( $(this).val(),0);
    });

    //search end
    //searchtable function
    function searchtable(d, ind) {
      // alert(d);
				if (d == "") {
					showProducts(ind);
				} else {
					$.get('classes/productTable.php', {
						searchdata: d,
						recordstart: ind,
						rand: Math.random()
					}, function (data) {
            console.log(data);
						$("#producttable").html(data);
					});
				}
			}
      //searchtable function end
    	//pagination start
			$("#producttable").on(
				"click",
				"ul.pagination a.pageanchor",
				function () {
					var startfrom = $(this).data('recid');
					// alert(startfrom);
					searchtable($("#inputSuccess4").val(), startfrom);
					//showProducts(startfrom);
				});

			//pagination end
      //add product from form start
      $("#addproductbtn").click(function (e) {
        let myForm = document.getElementById('form_product');
        let formData = new FormData(myForm);
        console.log(formData);

				var pname = $("#pname").val();
				var psku = $("#psku").val();
				var pprice = $("#pprice").val();
				if (pname == "" || psku == "" || pprice == "") {
					alert("Fill the form value first");
					return;
				}
        $.ajax({
          url: "classes/productAdd.php",
          type: "POST",
          data: formData,
          contentType: false,
          cache: false,
          processData: false,
          success: function (data) {
            data = JSON.parse(data);
            console.log(data);
            //return;
            //alert(data);
            if (!data.error) {
              alert(data.message);
              $("#productinsertform").hide(200);
              $("#addproductbtn").show();
              $("#updateproductbtn").hide();
              clearform();
              showProducts(0);
            }
            else{
              alert(data.message);
            }
          }
        });

		//end

			});
      //add product from form end

      			// The function to insert a fallback image
        var imgNotFound = function() {
            $(this).unbind("error").attr("src", "assets/products/not-found.png");
        };
        // Bind image error on document load
        $("img").on("error",imgNotFound);
        			//wait cursor
			$(document).ajaxStart(function () {
				$(document.body).css({
					'cursor': 'wait'
				})
			});
			$(document).ajaxComplete(function () {
				// Bind image error after ajax complete
				$("img").on("error",imgNotFound);
				$(document.body).css({
					'cursor': 'default'
				})
			});
    //products page end

    //keyup event start
    //open form with keyboard shortcut

    $(document).keydown(function(e) {
      if (e.keyCode == 27) {
        $("#productinsertform").toggle(200);        
        //clearform();
      }
    });    
    //keyup event end


    
  });

  $(document).bind('keypress', function(event) {
    if( event.which === 83 && event.shiftKey ) {
      console.log("shift+s clicked");
      $('#addproductbtn').trigger("click");
    }
    if( event.which === 85 && event.shiftKey ) {
      console.log("shift+u clicked");
      $('#updateproductbtn').trigger("click");
    }
    //closeformbtn
    if( event.which === 67 && event.shiftKey ) {
      console.log("shift+c clicked");
      $('#closeformbtn').trigger("click");
    }
});
//   document.addEventListener('keyup', f7Event, false);
// function f7Event(e) {
//     if (e.keyCode ==118) {
//        $('#addproductbtn').trigger("click");
//     }
// }

// document.addEventListener('keyup', f8Event, false);
// function f8Event(e) {
//     if (e.keyCode ==119) {
//        $('#refresh').trigger("click");
//     }
// }
</script>

</body>

</html>