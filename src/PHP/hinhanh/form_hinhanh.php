<?php
    include_once("../giaodien_quantri/header.php");
?>
<div class="container">
  <h2 class="w3-center w3-padding-16">Thêm hình ảnh của món ăn</h2>
  <form action="them_hinhanh.php" method = "post" enctype="multipart/form-data">
    <div class="mb-3 mt-3">
      <label for="monan">Chọn món ăn:</label>
      <select type="text" class="form-control" id="monan" placeholder="Nhập id món ăn" name="monan">
        <?php
          $sql = "SELECT * FROM mon_an";
          $result = $conn->query($sql);
          if ($result->num_rows > 0) {
            // output data of each row
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
      <label for="tenanh">Chọn ảnh:</label>
      <input type="file" value="Upload Image" name="fileToUpload" required>
    </div>
    <button type="submit" class="btn btn-primary" name = "sbThem">Thêm mới</button>
  </form>
</div>