<?php
  include_once("../giaodien_quantri/header.php");
?>
 <div class="w3-container">
  <h2 class="w3-center w3-padding-16">Thêm mới người dùng</h2>
    <form action="them_nguoidung.php" method = "post">
      <div class="mb-3 mt-3">
        <label for="tendn">Tên đăng nhập:</label>
        <input type="text" class="form-control" id="tendn" placeholder="Nhập tên đăng nhập" name="tendn" required>
      </div>
      <div class="mb-3 mt-3">
        <label for="mk">Mật khẩu:</label>
        <input type="password" class="form-control" id="mk" placeholder="Nhập mật khẩu" name="mk" required>
      </div>
      <div class="mb-3 mt-3">
        <label for="email">Email:</label>
        <input type="text" class="form-control" id="email" placeholder="Nhập số điện thoại" name="email" required>
      </div>
      <div class="mb-3 mt-3">
        <label for="diachi">Địa chỉ:</label>
        <input type="text" class="form-control" id="diachi" placeholder="Nhập địa chỉ" name="diachi" required>
      </div>   
      <button type="submit" class="btn btn-primary" name = "sbThem">Thêm mới</button>
    </form>
 </div>