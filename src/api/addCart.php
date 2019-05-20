<?php
    header('content-type:text/html;charset=utf-8');
    include 'conn.php';

    $uid = isset($_POST['uid']) ? $_POST['uid'] : '1';
    $gid = isset($_POST['gid']) ? $_POST['gid'] : '1';
    $Img = isset($_POST['Img']) ? $_POST['Img'] : '';
    $price = isset($_POST['price']) ? $_POST['price'] : '1';
    $num = isset($_POST['num']) ? $_POST['num'] : '8';
    $title = isset($_POST['title']) ? $_POST['title'] : '';
    //插入的数据最好用单引号包裹
    $sql = "INSERT INTO car (`uid`, `gid`,`Img`, `price`,`num`,`title`) VALUES ('$uid', '$gid','$Img','$price','$num','$title')";

    $sql_a = "SELECT * FROM car WHERE uid = $uid and gid = $gid";
    
    $res_a = $conn->query($sql_a);
    
    //判断购物车信息表，是否存在这个商品
    //如果存在数量加一。如果不存在，添加信息
    if($res_a->num_rows){
        $count_a = "UPDATE car SET `num`=`num`+1 WHERE `uid` = $uid and gid = $gid";
        $conn->query($count_a);
        echo 'success!';
    }else{
        $res = $conn->query($sql);
        if($res){
            echo 'yes';
        }else{
            echo 'no';
        }
    }
    
    
?>