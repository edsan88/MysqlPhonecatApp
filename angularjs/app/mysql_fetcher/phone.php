<?php
header('Access-Control-Allow-Origin:*');
$host = "localhost";
$user = "root";
$pass = "";
mysql_connect($host,$user,$pass);

$sql = "SELECT * FROM phone.phone_list";
$data = mysql_query($sql);
if(mysql_num_rows($data)>0){
  while($row = mysql_num_rows($data)){
    $temp[] = array('age'=>$row['age'],
                    'id'=>$row['id'],
                    'imageUrl'=>$row['imageUrl'],
                    'name'=>$row['name'],
                    'snippet'=>$row['snippet']);
  }
  echo json_encode($temp);
}else{

}
 ?>
