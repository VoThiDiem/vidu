<?php
    include_once("../giaodien_quantri/header.php");
?>
<div class="container">
  <h2 class="w3-center w3-padding-16">Thêm điểm phục vụ</h2>
  <form action="them_diemphucvu.php" method = "post" enctype="multipart/form-data">
    <div class="mb-3 mt-3">
      <label for="tenquan">Tên điểm phục vụ:</label>
      <input type="text" class="form-control" id="tenquan" placeholder="Nhập tên điểm phục vụ" name="tenquan" required>
    </div>
    <div class="mb-3 mt-3">
      <label for="tenanh">Chọn ảnh:</label>
      <input type="file" name="fileToUpload" id="fileToUpload">
    </div>
    <div class="mb-3 mt-3">
      <label for="monan">Chọn món ăn:</label>
      <select type="text" class="form-control" id="monan" placeholder="Nhập id món ăn" name="monan">
        <?php
        $sql = "SELECT * FROM mon_an";
        $result = $conn->query($sql);
        if ($result->num_rows > 0) {
          while($row = $result->fetch_assoc()) {
            echo "<option value='" . $row["id"]. "'>" . $row["ten_mon_an"]. " </option>";
          }
        } else {
          echo "0 results";
        }
        ?>
      </select>
    </div>
    <div class="mb-3 mt-3">
      <label for="gioithieu">Giới thiệu chung:</label>
      <textarea class="form-control" id="gioithieu" cols = "300" rows="4" name="gioithieu" required></textarea>
    </div>
    <div class="mb-3 mt-3">
      <label for="diachi">Địa chỉ quán:</label>
      <input type="text" class="form-control" id="diachi" placeholder="Nhập địa chỉ quán" name="diachi" required>
    </div>
    <div class="mb-3 mt-3">
      <label for="giomo">Giờ mở cửa:</label>
      <input type="time" class="form-control" id="giomo" name="giomo" required>
    </div>
    <div class="mb-3 mt-3">
      <label for="giodong">Giờ đóng cửa:</label>
      <input type="time" class="form-control" id="giodong" name="giodong" required>
    </div>
    <div class="mb-3 mt-3">
      <label for="sdt">Số điện thoại:</label>
      <input type="text" class="form-control" id="sdt" placeholder="Nhập số điện thoại" name="sdt" pattern="[0-9]{10}" title="Vui lòng nhập đúng 10 chữ số">
    </div>
    <button type="submit" class="btn btn-primary" name = "sbThem">Thêm mới</button>
  </form>
  <script>CKEDITOR.replace("gioithieu");</script>
</div>