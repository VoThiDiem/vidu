<?php
  //Khai báo sử dụng session
  session_start();
  //Khai báo utf-8 để hiển thị được tiếng việt
  header('Content-Type: text/html; charset=UTF-8');
  //Xử lý đăng nhập
  if (isset($_POST['dangnhap']))
  {
  //Kết nối tới database
  include('./connect.php');
  //Lấy dữ liệu nhập vào
  $tendn = addslashes($_POST["tendn"]);
  $matkhau = addslashes($_POST["matkhau"]);
  // mã hóa pasword
  $matkhau = md5($matkhau);
  //Kiểm tra tên đăng nhập có tồn tại không
  $sql = "SELECT ten_dang_nhap, mat_khau FROM nguoi_dung WHERE ten_dang_nhap='$tendn'AND mat_khau='$matkhau'";
  echo $sql;
  $result = $conn->query($sql);
  if ($result->num_rows > 0) {
    $_SESSION['tendn'] = $tendn;
    header("Location:giaodien_quantri/quantri.php");
  } else {
    echo "0 results";
  }
  $conn->close();
  }
?>