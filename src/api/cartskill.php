<?php
    include 'conn.php';
    $key = isset($_GET['key']) ? $_GET['key'] : '';  //键 + - 
    $num = isset($_GET['dataid']) ? $_GET['dataid'] : ''; //id值
    // $username = isset($_GET['username']) ? $_GET['username'] : ''; //用户名
//    $key = 'jia';
//    $num = 'flyxie68';

    $sqlcha = "select * from car where zid = '$num'";
   
    $rescha = $conn->query($sqlcha);
    $chares = $rescha->fetch_all(MYSQLI_ASSOC);
    $zhi = $chares[0]['num'];
    var_dump($zhi);
    if($zhi == 1){
        $sql = "delete from car where zid = '$num'"; 
        // $zhi == 1;

    }else if($key == 'jian'){
        --$zhi; 
        $sql = "update car set num = '$zhi' where zid = '$num'"; 
        if($zhi == 0){
            
            $sqlremove = "delete from car where zid = '1'"; 
            $ress = $conn->query($sqlremove);
        }
    
    }else if($key == 'jia'){
        ++$zhi;
        $sql = "update car set num = '$zhi' where zid = '$num'"; 
       
    }else if($key == 'del'){
        $sql = "delete from car where zid = '$num'"; 
    }

    $res = $conn->query($sql);

    //多表查询
    $sqlduo = "select * from car inner join list on car.zid = list.id where car.zid = '$num'";
    $resduo = $conn->query($sqlduo);
    $dataduo = $resduo->fetch_all(MYSQLI_ASSOC);


    $arr = array(
        'data'=>$zhi,
        'num'=>$num,
        'key'=>$key,
        'cha'=>$chares,
        'quan'=>$dataduo,
        );
    echo json_encode($arr,JSON_UNESCAPED_UNICODE);
   

//    $res->close();
   $conn->close();

?>