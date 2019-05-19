<?php
    $severname_yf = 'localhost';
    $username_yf = 'root';
    $password_yf = '';
    $dbname_yf = 'yf19';

    $conn = new mysqli($severname_yf,$username_yf,$password_yf,$dbname_yf);
    if($conn ->connect_error){
        die('连接失败：'.$conn ->connect_error);
    }
    // echo '连接成功';
?>