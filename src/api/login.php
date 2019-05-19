<?php
    header('content-type:text/html;charset=utf-8');

    include 'conn.php';

    $username = isset($_POST['username']) ? $_POST['username'] : '';
    $password = isset($_POST['password']) ? $_POST['password'] : '';


    $sql = "SELECT * FROM reg WHERE username= '$username' AND password='$password'";

    $res = $conn->query($sql);

    if($res->num_rows){
        echo 'yes';
    }else{
        echo 'no';
    };
?>
