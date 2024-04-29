<?php
  include_once("../connect.php");
  $ten = $tenmonan = $xx = "";
  if(isset($_POST["ten"])&&isset($_POST["monan"]))
  {
    $ten = $_POST["ten"];
    $tenmonan = $_POST["monan"];
  }
  //Viết câu truy vấn
  $sql = "INSERT INTO nguyen_lieu (ten_nguyen_lieu, mon_an_id)
  VALUES ('$ten', '$tenmonan')";
  //Thực thi câu truy vấn - Kiểm tra và hiển thị kết quả
  if ($conn->query($sql) === TRUE) {
    header("Location:nguyenlieu.php");
  } else {
    echo "Error: " . $sql . "<br>" . $conn->error;
  }
  $conn->close();
?>