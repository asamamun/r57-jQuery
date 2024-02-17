<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style type="text/css">
        body {
            font-family: "Trebuchet MS", verdana;
            width: 450px;
        }

        .error {
            color: red;
        }

        .info {
            color: #008000;
            font-weight: bold;
        }
    </style>
</head>

<body>
    <?php
    if (isset($_POST['save'])) {
        $name = trim($_POST['userName']);
        $address = trim($_POST['address']);
        $age = trim($_POST['age']);
        $email = trim($_POST['email']);
        $website = trim($_POST['website']);
        $errorArray = array();
        if (
            $name == '' || $address == '' || $age == '' || $email == ''
            || $website == ''
        ) {
            array_push($errorArray, 'Please fill all fields.');
        }
        if (filter_var($age, FILTER_VALIDATE_INT) == FALSE) {
            array_push($errorArray, 'Please enter a number for age.');
        }
        if (filter_var($email, FILTER_VALIDATE_EMAIL) == FALSE) {
            array_push($errorArray, 'Email address is incorrect.');
        }
        if (filter_var($website, FILTER_VALIDATE_URL) == FALSE) {
            array_push($errorArray, 'Website address is incorrect.');
        }
        if (count($errorArray) > 0) {
    ?>
            <p class="error">
                <?php
                foreach ($errorArray as $error) {
                    echo $error . '<br/>';
                }
                ?>
            </p>
    <?php
        } else {
            echo "OK!!!";
        }
    }
    ?>



    <form method="post">
        <fieldset>
            <legend><strong>Information form</strong>
                (All fields are mandatory)</legend>
            <table>
                <tbody>
                    <tr>
                        <td>Name: </td>
                        <td><input type="text" name="userName" value="<?php if (isset($_POST['userName'])) echo $_POST['userName']; ?>" /></td>
                    </tr>
                    <tr>
                        <td>Address: </td>
                        <td><input type="text" name="address" value="<?php if (isset($_POST['address'])) echo $_POST['address']; ?>" /></td>
                    </tr>
                    <tr>
                    <tr>
                        <td>Age: </td>
                        <td><input type="text" name="age" value="<?php if (isset($_POST['age'])) echo $_POST['age']; ?>" /></td>
                    </tr>
                    <tr>
                        <td>Mail: </td>
                        <td><input type="text" name="email" value="<?php if (isset($_POST['email'])) echo $_POST['email']; ?>" /></td>
                    </tr>
                    <tr>
                        <td>Website: </td>
                        <td><input type="text" name="website" value="<?php if (isset($_POST['website'])) echo $_POST['website']; ?>" /></td>
                    </tr>
                    </tr>
                </tbody>
            </table>
        </fieldset>
        <br />
        <input type="submit" name="save" value="Submit" />
    </form>
</body>

</html>