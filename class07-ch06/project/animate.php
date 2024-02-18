<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <div id="d1" class="" style="width: 300px; height:300px; position:relative"></div>
        <div id="book">
            <img src="https://picsum.photos/200/300" alt="">
        </div>
        <hr>
        <button id="btn1" class="btn btn-primary">Animate</button>
        <button id="clickme" class="btn btn-primary">Click me to animate Image</button>
    </div>
<script src="../assets/js/jquery-3.6.0.min.js"></script>
<script src="../assets/js/jquery.color.js"></script>
<script src="../assets/js/bootstrap.min.js"></script>
<script>
    $(document).ready(function(){
        //btn1 click
        $("#btn1").click(function(){
            $("#d1").animate({
                // left: '+=100px',
                // height: 'toggle',
                backgroundColor : "red",
            }, 4000, function(){
                $("#d1").animate({
                    // left: '-=100px',
                    // height: 'toggle',
                    backgroundColor : "green",
                }, 5000,function(){
                   $("#d1").animate({backgroundColor : "blue"},5000) 
                });
            });
        });
        //btn1 click end
        //book click start
        $( "#clickme" ).click(function() {
  $( "#book" ).animate({
    width: "toggle",
    height: "toggle"
  }, {
    duration: 5000,
    specialEasing: {
      width: "linear",
      height: "easeOutBounce"
    },
    complete: function() {
      $( this ).after( "<div>Animation complete.</div>" );
    }
  });
});
        //book click end
        });

</script>
</body>
</html>