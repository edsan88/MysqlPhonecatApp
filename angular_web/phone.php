<?php
header('Access-Control-Allow-Origin:*');
$servername = "localhost";
$username = "root";
$password = "";

// Create connection
$conn = mysqli_connect($servername, $username, $password,'phone');

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}else{
  $sql = "SELECT * FROM phone.phone_list";
  $data = mysqli_query($conn,$sql);
  if(mysqli_num_rows($data)>0){
    while($row = mysqli_fetch_array($data)){
      $temp[] = array('age'=>$row['age'],
                      'id'=>$row['id'],
                      'imageUrl'=>$row['imageUrl'],
                      'name'=>$row['name'],
                      'snippet'=>$row['snippet']);
      //echo $row['imageUrl']."<hr>";
    }
    echo json_encode($temp);
  }else{
    echo 'test';
  }
}
mysqli_close($conn);
?>
