<?php
require "connection.php";
if(isset($_POST['save'])){
$language       = $conn->escape_string($_POST['language']);
$functionName   = $conn->real_escape_string($_POST['functionName']);
$summary        = $conn->real_escape_string($_POST['summary']);
$example        = $conn->real_escape_string($_POST['example']);
$query = 'INSERT INTO functions (
    lid ,
    fname ,
    summary ,
    example
    )
    VALUES ('.$language.', "'.$functionName.'", "'.$summary.'","'.$example.'")';
    $conn->query($query);
    if($conn->affected_rows){
        header("location: insertFunction.php?message=Added");
    }
}
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
        <a href="index.php" class="btn btn-outline-info">Back</a>
        <?php if(isset($_GET['message'])){ ?>
            <div class="alert alert-warning alert-dismissible fade show" role="alert">
  <strong><?= $_GET['message'] ?></strong>
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
            <?php } ?>
        <fieldset>
            <legend><strong>Add a function</strong></legend>
            <form action="" method="post" id="frmMain">
                <p>
                    <label>Select a language</label>
                    <select name="language" class="required">
                        <option value="">select</option>
                        <?php
                        if($r->num_rows){
                        while ($row = $r->fetch_assoc()) {
                        ?>
                            <option value="<?php echo $row['id']; ?>">
                                <?php echo $row['name']; ?></option>
                        <?php
                        }
                        $r->free();
                    }
                        ?>
                    </select>
                </p>
                <p>
                    <label>Function name </label>
                    <input type="text" name="functionName" class="required" />
                </p>
                <p>
                    <label>Summary</label>
                    <input type="text" name="summary" class="required" />
                </p>
                <p>
                    <label>Example</label> <textarea rows="10" cols="30" name="example" class="required"></textarea>
                </p>
                <p>
                    <strong id="error"></strong>
                </p>
                <p>
                    <input type="submit" name="save" value="Save Information" />
                </p>
            </form>
        </fieldset>
    </div>
    <script src="../../assets/js/bootstrap.bundle.min.js"></script>
    <script src="../../assets/js/jquery-3.6.3.min.js"></script>
    <script>
        $(document).ready(function() {

        });
    </script>

</body>

</html>