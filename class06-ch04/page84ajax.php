<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="../../assets/css/bootstrap.min.css">
    <style type="text/css">
        ul{border:1px solid black; list-style:none;
        margin:0pt;padding:0pt;float:left;
        font-family:Verdana, Arial, Helvetica, sans-serif;
        font-size:12px;width:300px;}
        li{padding:10px 5px;border-bottom:1px solid black;}
        </style>
</head>
<body>
    <marquee behavior="" direction="">GOOD and BAD guys</marquee>
    <div class="container">
        <form>
            <p>
            Show list of:
            <select id="choice" class="form-control">
            <option value="">select</option>
            <option value="good">Good Guys</option>
            <option value="bad">Bad Guys</option>
            </select>
            </p>
            <p id="result"></p>
            </form>
    </div>
    <script src="../assets/js/jquery-3.7.1.min.js"></script>
    <script src="../assets/js/bootstrap.bundle.min.js"></script>
    <script>
    $(document).ready(function(){
$("#choice").change(function(){
// alert($(this).val());
let cc = $(this).val();
if(!cc) return;
// $.get("page84server.php",{c:$c,rand:Math.random()},function(d){
// // alert(d);
// $("#result").html(d);
// });
$.ajax({ 
    url: "page84server.php",
    type: "GET",
    data: {
        c:cc,
        rand:Math.random()},
    success: function(d){
        $("#result").html(d);
    },
    error: function(d){
        alert("error");
    }
});

});
    });
    </script>
</body>
</html>