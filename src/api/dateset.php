<?php  
    include 'conn.php';
    
    $uid = isset($_GET['uid']) ? $_GET['uid'] : '';
   
    $sql = "select * from car inner join list on car.gid = list.id where car.uid = '$uid'";
    $res = $conn->query($sql);
    $data = $res->fetch_all(MYSQLI_ASSOC);
    $arr = array(
        'data'=>$data,
        'uid'=>$uid
        );
   echo json_encode($arr,JSON_UNESCAPED_UNICODE);
    //    var_dump($data);
   $res->close();
   $conn->close();





?>