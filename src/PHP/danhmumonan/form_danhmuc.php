<?php
    include_once("../giaodien_quantri/header.php");
?>
<div class="container">
  <h2 class="w3-center w3-padding-16">Thêm danh mục món ăn</h2>
  <form action="them_danhmuc.php" method = "post">
    <div class="mb-3 mt-3">
      <label for="ten">Tên danh mục:</label>
      <input type="text" class="form-control" id="ten" placeholder="Nhập tên danh mục món ăn" name="ten" required>
    </div>
    <button type="submit" class="btn btn-primary">Thêm mới</button>
  </form>
</div>
