<?php
    header('content-type:text/html;charset=utf-8');
    include 'conn.php';
    $username = isset($_POST['username']) ? $_POST['username'] : '';
    $password = isset($_POST['password']) ? $_POST['password'] : '';

    $sql = "INSERT INTO reg(username,password) VALUES('$username','$password')";

    $res = $conn->query($sql);
    if($res){
        echo 'yes';
    }else{
        echo 'no';
    }
    
?>