<?php
  include_once("../connect.php");
  $ma="";
  if(isset($_GET["ma"]))
  {
    $ma =$_GET["ma"] ;
  }
  $sql = "DELETE FROM hinh_anh WHERE id='$ma'";
  if ($conn->query($sql) === TRUE) {
    header("Location:hinhanh.php");
  } else {
    echo "Error deleting record: " . $conn->error;
  }
  $conn->close();
?>

