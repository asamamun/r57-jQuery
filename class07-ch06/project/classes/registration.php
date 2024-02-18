<?php
if(isset($_POST['submit'])){
    require "../database.php";
    $name = $_POST['name'];
    $email = $_POST['email'];
    $pass = $_POST['pass'];
    $pass2 = $_POST['pass2'];
    //check validation
    if(empty($name) || empty($email) || empty($pass) || empty($pass2)){
        echo json_encode(['error'=>true,'message'=>"All fields are required"]) ;
    }else{
        if($pass != $pass2){
            echo json_encode(['error'=>true,'message'=>"Passwords do not match"]) ;
        }else{
            //check if email is valid
            if(!filter_var($email, FILTER_VALIDATE_EMAIL)){
                echo json_encode(['error'=>true,'message'=>"Invalid Email"]) ;
            }else{
                //check if email already exists
                $sql = "SELECT * FROM users WHERE email = '$email'";
                $result = $conn->query($sql);                
                if($result->num_rows > 0){
                    echo json_encode(['error'=>true,'message'=>"Email already exists"]) ;
                    
                }else{
                    //hashing the password
                    $hashedPass = password_hash($pass, PASSWORD_DEFAULT);
                    //insert the user into the database
                    $sql = "INSERT INTO users (name, email, password) VALUES ('$name', '$email', '$hashedPass')";
                    $conn->query($sql);
                    if($conn->affected_rows > 0){
                        echo json_encode(['error'=>false,'message'=>"Registration successful"]) ;                        
                }
            }
        }
    }
}
}    
?>