<?php
include_once("../connect.php");
//Lây giá trị từ form
$tenmon = $gia = $mota = $danhmuc ="";
if(isset($_POST["tenmon"])&&isset($_POST["gia"])&&isset($_POST["mota"])&&isset($_POST["danhmuc"]))
{
  $tenmon = $_POST["tenmon"];
  $gia = $_POST["gia"];
  $mota = $_POST["mota"];
  $danhmuc = $_POST["danhmuc"];
}
//Viết câu truy vấn
$sql = "INSERT INTO mon_an (ten_mon_an, gia_ban, mo_ta, danh_muc_id)
VALUES ('$tenmon', '$gia', '$mota', '$danhmuc')";
//Thực thi câu truy vấn - Kiểm tra và hiển thị kết quả
if ($conn->query($sql) === TRUE) {
  header("Location:monan.php");
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}
$conn->close();
?>