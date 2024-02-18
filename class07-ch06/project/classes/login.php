<?php
session_start();
if(isset($_POST['submit'])){
    $email = $_POST['email'];
    $pass = $_POST['pass'];
    require "../database.php";
    $selectQuery = "select * from users where email = '$email' limit 1";
    // echo json_encode(['error'=>false,'message'=>$selectQuery]) ;
    // exit;
    $r = $conn->query($selectQuery);
    if($r->num_rows > 0 ){
        $user = $r->fetch_assoc();
        if(password_verify($pass, $user['password'])){            
            $_SESSION['loggedIn'] = true;
            $_SESSION['username'] = $user['name'];
            $_SESSION['userId'] = $user['id'];
            $_SESSION['email'] = $user['email'];
            $_SESSION['role'] = $user['role'];
            echo json_encode(['error'=>false,'message'=>"Login successful",'type'=>'Success','bg'=>'green','icon'=>'success']);
            
        }else{
            echo json_encode(['error'=>true,'message'=>"Invalid password",'type'=>'Warning','bg'=>'red','icon'=>'warning']);
        }
}
else{
    echo json_encode(['error'=>true,'message'=>"Invalid email",'type'=>'Warning','bg'=>'red','icon'=>'warning']);
}
}