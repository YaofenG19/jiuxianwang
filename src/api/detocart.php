<?php  
    include 'conn.php';
    $uid = isset($_POST['uids']) ? $_POST['uids'] : 'admin';//user 用户
    $gid = isset($_POST['gids']) ? $_POST['gids'] : '300';  //gid  唯一ID
    $num = isset($_POST['nums']) ? $_POST['nums'] : '5'; //val 数量

    //先查询
    $sqlcha = "select * from car where gid = '$gid' and uid = '$uid'";

    $rescha = $conn->query($sqlcha);

    $unm = mysqli_num_rows($rescha);

    $xinzhi = '';

    if($unm > 0){
        $datacha = $rescha->fetch_all(MYSQLI_ASSOC);
        $zhi = $datacha[0]['num'];
        $xinzhi = $zhi + $num;
        $sql = "update car set num = '$xinzhi' where gid='$gid' and uid= '$uid'";
        
    }else if($unm <= 0){
        $sql = "insert into car(uid,gid,num) values('$uid','$gid','$num')";
    }

    $res = $conn->query($sql);
    // $data = $res->fetch_all(MYSQLI_ASSOC);

    $arr = array(
        'uid'=>$uid,
        'gid'=>$gid,
        'num'=>$num,
        'buer'=>true,
        'xinzhi'=>$xinzhi
        );
    // var_dump($data);
    echo json_encode($arr,JSON_UNESCAPED_UNICODE);
    
    // $res->close();
    // $conn->close();
?>