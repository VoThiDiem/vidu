<?php
    include_once("../giaodien_quantri/header.php");
?>
<div class="container">
  <h2 class="w3-center w3-padding-16">Thêm món ăn</h2>
  <form action="them_monan.php" method = "post">
    <div class="mb-3 mt-3">
      <label for="tenmon">Tên món ăn:</label>
      <input type="text" class="form-control" id="tenmon" placeholder="Nhập tên món ăn" name="tenmon" required>
    </div>
    <div class="mb-3 mt-3">
      <label for="gia">Giá bán:</label>
      <input type="text" class="form-control" id="gia" placeholder="Nhập giá bán" name="gia" required>
    </div>
    <div class="mb-3 mt-3">
      <label for="mota">Mô tả:</label>
      <textarea class="form-control" id="mota" cols = "300" rows = "5" name="mota" required></textarea>
    </div>
    <div class="mb-3 mt-3">
      <label for="danhmuc">Danh mục:</label>
      <select type="text" class="form-control" id="danhmuc" name="danhmuc">
        <?php
          include_once("../connect.php");
          $sql = "SELECT * FROM danh_muc_mon_an";
          $result = $conn->query($sql);
          if ($result->num_rows > 0) {
            // output data of each row
            while($row = $result->fetch_assoc()) {
              echo "<option value='" . $row["id"]. "'>" . $row["ten_danh_muc"]. " </option>";
            }
          } else {
            echo "0 results";
          }
        ?>
      </select>
    </div>
    <button type="submit" class="btn btn-primary">Thêm mới</button>
    <script>CKEDITOR.replace("mota");</script>
  </form>
</div>