<?php
    header('content-type:text/html;charset=utf-8');

    include 'conn.php';

    $username = isset($_POST['username']) ? $_POST['username'] : '';

    $sql = "SELECT * FROM reg WHERE username = '$username'";
    $res = $conn->query($sql);
    // var_dump($res);

    // $content = $res->fetch_all(MYSQLI_ASSOC);
    // var_dump($content);
    // echo json_encode($content,JSON_UNESCAPED_UNICODE);
    if($res->num_rows){
        echo 'no';
    }else{
        echo 'yes';
    }
?>