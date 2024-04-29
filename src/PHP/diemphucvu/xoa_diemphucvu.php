<?php
include_once("../connect.php");
//Lấy biến từ liên kết
$maquan="";
if(isset($_GET["ma"]))
{
  $maquan =$_GET["ma"] ;
}
// sql to delete a record
$sql = "DELETE FROM diem_phuc_vu WHERE id='$maquan'";

if ($conn->query($sql) === TRUE) {
  header("Location:diemphucvu.php");
} else {
  echo "Error deleting record: " . $conn->error;
}
$conn->close();
?>