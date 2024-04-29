<?php
  include_once("../connect.php");
  //Lây giá trị từ form
  $tendn = $mk = $email = $diachi = "";
  if(isset($_POST["tendn"])&&isset($_POST["mk"])&&isset($_POST["email"])&&isset($_POST["diachi"]))
  {
    $tendn = $_POST["tendn"];
    $mk = md5($_POST["mk"]);
    $email = $_POST["email"];
    $diachi = $_POST["diachi"];
  }
  //Viết câu truy vấn
  $sql = "INSERT INTO nguoi_dung (ten_dang_nhap, mat_khau, email, dia_chi)
  VALUES ('$tendn', '$mk', '$email', '$diachi')";
  //Thực thi câu truy vấn - Kiểm tra và hiển thị kết quả
  if ($conn->query($sql) === TRUE) {
    header("Location:nguoidung.php");
  } else {
    echo "Error: " . $sql . "<br>" . $conn->error;
  }
  $conn->close();
?>