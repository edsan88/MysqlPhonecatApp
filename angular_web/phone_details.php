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
  $sql = "SELECT * FROM phone.phone WHERE phone.id = '".$_GET['id']."'";
  $data = mysqli_query($conn,$sql);
  if(mysqli_num_rows($data)>0){
    while($row = mysqli_fetch_array($data)){
      $id = $row['id'];
			$description = $row['description'];
			$name = $row['name'];
			$additionalFeatures = $row['additionalFeatures'];
			$battery = GetBattery($row['phone_id'],$conn);
      $android = GetAndroid($row['phone_id'],$conn);
      $availability = GetAvailability($row['phone_id'],$conn);
      $camera = GetCamera($row['phone_id'],$conn);
      $connectivity = GetConnectivity($row['phone_id'],$conn);
      $display = GetDisplay($row['phone_id'],$conn);
      $hardware = GetHardware($row['phone_id'],$conn);
      $images = GetImage($row['phone_id'],$conn);
      $sizeAndWeight = GetSizeWeight($row['phone_id'],$conn);
      $storage = GetStorage($row['phone_id'],$conn);
			//////////////////////
			// $android = array( "os"=>"Android 2.2",
			// 							"ui"=>"Dell Stage");
			//$availability =  array("T-Mobile","test");
			// $battery = array("standbyTime"=> "",
			// 							"talkTime"=> "",
			// 							"type"=> "Lithium Ion (Li-Ion) (2780 mAH)");
			 //$camera = array("features"=>array("Flash", "Video"),"primary"=> "5.0 megapixels");
			//  $connectivity = array( "bluetooth"=> "Bluetooth 2.1",
			//  																	"cell"=> "T-mobile HSPA+ @ 2100/1900/AWS/850 MHz",
			//  																	"gps"=> true,
			//  																	"infrared"=> false,
			//  																	"wifi"=> "802.11 b/g");
			// $description = "Introducing Dell\u2122 Streak 7. Share photos, videos and movies together. It\u2019s small enough to carry around, big enough to gather around. Android\u2122 2.2-based tablet with over-the-air upgrade capability for future OS releases.  A vibrant 7-inch, multitouch display with full Adobe\u00ae Flash 10.1 pre-installed.  Includes a 1.3 MP front-facing camera for face-to-face chats on popular services such as Qik or Skype.  16 GB of internal storage, plus Wi-Fi, Bluetooth and built-in GPS keeps you in touch with the world around you.  Connect on your terms. Save with 2-year contract or flexibility with prepaid pay-as-you-go plans";
			 //$display = array("screenResolution"=> "WVGA (800 x 480)", "screenSize"=> "7.0 inches", "touchScreen"=> true);
			//  $hardware = array("accelerometer"=> true,
			//  								"audioJack"=> "3.5mm",
			//  								"cpu"=> "nVidia Tegra T20",
			//  								"fmRadio"=> false,
			//  								"physicalKeyboard"=> false,
			//  								"usb"=> "USB 2.0");
			// $id="dell-streak-7";
			//  $images = array("img/phones/dell-streak-7.0.jpg",
			//  							"img/phones/dell-streak-7.1.jpg",
			// 							"img/phones/dell-streak-7.2.jpg",
			//  							"img/phones/dell-streak-7.3.jpg",
			//  							"img/phones/dell-streak-7.4.jpg");
			// $name = "Dell Streak 7";
			//  $sizeAndWeight = array("dimensions"=>array("199.9 mm (w)", "119.8 mm (h)", "12.4 mm (d)"),
			//  										"weight"=>"450.0 grams");
			//  $storage = array( "flash"=> "16000MB",
			//  							"ram"=> "512MB");
			// $additionalFeatures = "Front Facing 1.3MP Camera";
			$products = array( "additionalFeatures"=>$additionalFeatures,
										"android"=>$android,
										"availability"=>$availability,
										"battery"=>$battery,
										"camera"=>$camera,
										"connectivity"=>$connectivity,
										"description"=>$description,
										"display"=>$display,
										"hardware"=>$hardware,
										"id"=>$id,
										"images"=>$images,
										 "name"=>$name,
										 "sizeAndWeight"=>$sizeAndWeight,
										  "storage"=>$storage);
		}
		echo json_encode($products);
  }else{
    echo "test";
  }
}
mysqli_close($conn);

function GetBattery($id,$conn){
	$sql = "SELECT * FROM phone.battery WHERE battery.phone_id = '".$id."'";
  $data = mysqli_query($conn,$sql);
  if(mysqli_num_rows($data)>0){
    while($row = mysqli_fetch_array($data)){
			$temp = array("standbyTime"=> $row['standbyTime'],
										"talkTime"=> $row['talkTime'],
										"type"=> $row['type']);
    }
    return $temp;
  }else{

  }
}

function GetAndroid($id,$conn){
	$sql = "SELECT * FROM phone.android WHERE android.phone_id = '".$id."'";
  $data = mysqli_query($conn,$sql);
  if(mysqli_num_rows($data)>0){
    while($row = mysqli_fetch_array($data)){
			$temp = $row;
    }
    return $temp;
  }else{

  }
}

function GetAvailability($id,$conn){
	$sql = "SELECT * FROM phone.availability WHERE availability.phone_id = '".$id."'";
  $data = mysqli_query($conn,$sql);
  if(mysqli_num_rows($data)>0){
    while($row = mysqli_fetch_array($data)){
			$temp[] = $row['list'];
    }
    return $temp;
  }else{

  }
}

function GetCamera($id,$conn){
	$sql = "SELECT * FROM phone.camera WHERE camera.phone_id = '".$id."'";
  $data = mysqli_query($conn,$sql);
  if(mysqli_num_rows($data)>0){
    while($row = mysqli_fetch_array($data)){
      $feature[] = explode(",",$row['features']);
			$temp = array("features"=>$feature,"primary"=>$row['primary']);
    }
    return $temp;
  }else{

  }
}

function GetConnectivity($id,$conn){
	$sql = "SELECT * FROM phone.connectivity WHERE connectivity.phone_id = '".$id."'";
  $data = mysqli_query($conn,$sql);
  if(mysqli_num_rows($data)>0){
    while($row = mysqli_fetch_array($data)){
			$temp = $row;
    }
    return $temp;
  }else{

  }
}
function GetDisplay($id,$conn){
	$sql = "SELECT * FROM phone.display WHERE display.phone_id = '".$id."'";
  $data = mysqli_query($conn,$sql);
  if(mysqli_num_rows($data)>0){
    while($row = mysqli_fetch_array($data)){
			$temp = $row;
    }
    return $temp;
  }else{

  }
}
function GetHardware($id,$conn){
	$sql = "SELECT * FROM phone.hardware WHERE hardware.phone_id = '".$id."'";
  $data = mysqli_query($conn,$sql);
  if(mysqli_num_rows($data)>0){
    while($row = mysqli_fetch_array($data)){
			$temp = $row;
    }
    return $temp;
  }else{

  }
}

function GetImage($id,$conn){
	$sql = "SELECT * FROM phone.images WHERE images.phone_id = '".$id."'";
  $data = mysqli_query($conn,$sql);
  if(mysqli_num_rows($data)>0){
    while($row = mysqli_fetch_array($data)){
      $list = explode(',',$row['list']);
      $temp = $list;
    }
    return $temp;
  }else{

  }
}

function GetSizeWeight($id,$conn){
	$sql = "SELECT * FROM phone.size_weight WHERE size_weight.phone_id = '".$id."'";
  $data = mysqli_query($conn,$sql);
  if(mysqli_num_rows($data)>0){
    while($row = mysqli_fetch_array($data)){
      $list = explode(',',$row['dimensions']);
      $temp = array("dimensions"=>$list,
                    "weight"=>$row['weight']);
    }
    return $temp;
  }else{

  }
}

function GetStorage($id,$conn){
	$sql = "SELECT * FROM phone.storage WHERE storage.phone_id = '".$id."'";
  $data = mysqli_query($conn,$sql);
  if(mysqli_num_rows($data)>0){
    while($row = mysqli_fetch_array($data)){
			$temp = $row;
    }
    return $temp;
  }else{

  }
}
// $android = array( "os"=>"Android 2.2",
// 							"ui"=>"Dell Stage");
// $availability =  array("T-Mobile","test");
// $battery = array("standbyTime"=> "",
// 							"talkTime"=> "",
// 							"type"=> "Lithium Ion (Li-Ion) (2780 mAH)");
// $camera = array("features"=>array("Flash", "Video"),"primary"=> "5.0 megapixels");
// $connectivity = array( "bluetooth"=> "Bluetooth 2.1",
// 																	"cell"=> "T-mobile HSPA+ @ 2100/1900/AWS/850 MHz",
// 																	"gps"=> true,
// 																	"infrared"=> false,
// 																	"wifi"=> "802.11 b/g");
// $description = "Introducing Dell\u2122 Streak 7. Share photos, videos and movies together. It\u2019s small enough to carry around, big enough to gather around. Android\u2122 2.2-based tablet with over-the-air upgrade capability for future OS releases.  A vibrant 7-inch, multitouch display with full Adobe\u00ae Flash 10.1 pre-installed.  Includes a 1.3 MP front-facing camera for face-to-face chats on popular services such as Qik or Skype.  16 GB of internal storage, plus Wi-Fi, Bluetooth and built-in GPS keeps you in touch with the world around you.  Connect on your terms. Save with 2-year contract or flexibility with prepaid pay-as-you-go plans";
// $display = array("screenResolution"=> "WVGA (800 x 480)", "screenSize"=> "7.0 inches", "touchScreen"=> true);
// $hardware = array("accelerometer"=> true,
// 								"audioJack"=> "3.5mm",
// 								"cpu"=> "nVidia Tegra T20",
// 								"fmRadio"=> false,
// 								"physicalKeyboard"=> false,
// 								"usb"=> "USB 2.0");
// $id="dell-streak-7";
// $images = array("img/phones/dell-streak-7.0.jpg",
// 							"img/phones/dell-streak-7.1.jpg",
// 							"img/phones/dell-streak-7.2.jpg",
// 							"img/phones/dell-streak-7.3.jpg",
// 							"img/phones/dell-streak-7.4.jpg");
// $name = "Dell Streak 7";
// $sizeAndWeight = array("dimensions"=>array("199.9 mm (w)", "119.8 mm (h)", "12.4 mm (d)"),
// 										"weight"=>"450.0 grams");
// $storage = array( "flash"=> "16000MB",
// 							"ram"=> "512MB");
// $additionalFeatures = "Front Facing 1.3MP Camera";
// $products = array( "additionalFeatures"=>$additionalFeatures,
// 							"android"=>$android,
// 							"availability"=>$availability,
// 							"battery"=>$battery,
// 							"camera"=>$camera,
// 							"connectivity"=>$connectivity,
// 							"description"=>$description,
// 							"display"=>$display,
// 							"hardware"=>$hardware,
// 							"id"=>$id,
// 							"images"=>$images,
// 							 "name"=>$name,
// 							 "sizeAndWeight"=>$sizeAndWeight,
// 							  "storage"=>$storage);

?>
