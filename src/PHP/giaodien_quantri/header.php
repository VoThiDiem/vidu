<?php
    include_once("../connect.php");
?>
<!DOCTYPE html>
<html>
  <title>Quản trị</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
  <script src="../../ckeditor/ckeditor.js"></script>
  <link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-green.css">
<style>
  @import url('https://fonts.googleapis.com/css2?family=Denk+One&display=swap');
  body a{
    font-family: 'Denk One', sans-serif;
    font-size: 16px;
  }
</style>
<body>
  <div class="w3-sidebar w3-bar-block w3-collapse w3-card-4 w3-blue" style="width:200px;" id="mySidebar">
    <button class="w3-bar-item w3-button w3-large w3-hide-large" onclick="w3_close()">Close &times;</button>
      <div class="w3-bar-item w3-center">
        <a href="../giaodien_quantri/quantri.php" class="w3-text-white w3-hover-text-black w3-xxlarge">
          <i class="fa fa-home"></i>
        </a>
      </div>
      <a href="../danhmumonan/danhmuc.php" class="w3-bar-item w3-button">Danh mục món ăn</a>
      <a href="../monan/monan.php" class="w3-bar-item w3-button">Món ăn</a>
      <a href="../hinhanh/hinhanh.php" class="w3-bar-item w3-button">Hình ảnh</a>
      <a href="../diemphucvu/diemphucvu.php" class="w3-bar-item w3-button">Điểm phục vụ</a>
      <a href="../nguyenlieu/nguyenlieu.php" class="w3-bar-item w3-button">Nguyên liệu</a>
      <a href="../nguoidung/nguoidung.php" class="w3-bar-item w3-button">Người dùng</a><br>
      <a href="../logout.php" class="w3-bar-item w3-button w3-center w3-border w3-round-xxlarge w3-light-gray"><b>Đăng xuất</b></a>
  </div>
  <div class="w3-main" style="margin-left:200px">
  <div class="w3-blue">
    <button class="w3-button w3-blue w3-xlarge w3-hide-large" onclick="w3_open()">&#9776;</button>
  </div>
</body>
<script>
function w3_open() {
  document.getElementById("mySidebar").style.display = "block";
}
function w3_close() {
  document.getElementById("mySidebar").style.display = "none";
}
</script> 
</html>
