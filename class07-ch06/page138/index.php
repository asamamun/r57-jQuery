<?php
require "connection.php";
$q = "select * from languages where 1";
$r = $conn->query($q);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../../assets/css/bootstrap.min.css">
</head>

<body>
    <div class="container">
        <a href="insertFunction.php" class="btn btn-outline-primary">Add New function</a>
        <form action="">
            <label for="">Select Language</label>
            <select name="" id="language" class="form-control">
                <option value="-1">Select</option>
                <?php
                if ($r->num_rows) {
                    while ($row = $r->fetch_assoc()) {
                        echo "<option value='" . $row['id'] . "'>" . $row['name'] . "</option>";
                    }
                }
                ?>
            </select>
            <hr>
            <div id="languageContainer">

            </div>
        </form>
    </div>
    <script src="../../assets/js/bootstrap.bundle.min.js"></script>
    <script src="../../assets/js/jquery-3.7.1.min.js"></script>
    <script>
        $(document).ready(function() {
            $("#language").change(function() {
                // alert(5)
                let t = $(this).val();
                if (t == "-1") return;
                $.get("result.php", {
                    id: t,
                }, function(d) {
                    $("#languageContainer").html(d);
                })
            })
        });
    </script>

</body>

</html>