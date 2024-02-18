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
    <div style="height: 500px;" class="d-flex">
    <div id="div1" class="bg-primary w-50">DIV 1</div>
    <div id="div2" class="bg-info w-50">DIV 2</div>
    </div>
    <hr>
    <button id="btn1">HIDE div 1</button>
    <button id="btn2">HIDE div 2</button>
    <button id="btn3">TOGGLE div 1</button>
    <button id="btn4">TOGGLE div 2</button>
<script src="../assets/js/jquery-3.6.0.min.js"></script>
<script src="../assets/js/bootstrap.min.js"></script>
<script>
    $(document).ready(function(){
        $("#btn1").click(function(){
            $("#div1").hide(2000);
        });
        $("#btn2").click(function(){
            $("#div2").hide(5000);
        });
        $("#btn3").click(function(){
            $("#div1").toggle(300);
        });
        $("#btn4").click(function(){
            $("#div2").toggle(300);
        });
    });
</script>
</body>
</html>