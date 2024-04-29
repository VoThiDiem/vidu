<?php
  include_once("../giaodien_quantri/header.php");
  $mamon = "";
  if(isset($_GET["ma"]))
  {
    $mamon = $_GET["ma"];
  }
  $sql = "SELECT * FROM mon_an WHERE id ='$mamon'";
  $result = $conn->query($sql);
  $mamon_val = $tenmon_val = $gia_val = $mota_val = $danhmuc_val="";
  if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
      $mamon_val = $row["id"];
      $tenmon_val = $row["ten_mon_an"];
      $gia_val =$row["gia_ban"];
      $mota_val = $row["mo_ta"];
      $danhmuc_val = $row["danh_muc_id"];
    }
  }
?>
<?php
  if(isset($_POST["sbCapNhat"]))
  {
  //Lấy biến từ form
    $mamon = $tenmon = $gia = $mota = $danhmuc ="";
    if(isset($_POST["tenmon"])&&isset($_POST["gia"])&&isset($_POST["mota"])&&isset($_POST["danhmuc"]))
    {
      $mamon = $_POST["id"];
      $tenmon = $_POST["tenmon"];
      $gia = $_POST["gia"];   
      $mota = $_POST["mota"];
      $danhmuc= $_POST["danhmuc"];
    }
    //Viết câu truy vấn cập nhật
    $sql = "UPDATE mon_an SET ten_mon_an ='$tenmon', gia_ban = '$gia', mo_ta = '$mota', danh_muc_id ='$danhmuc' WHERE id='$mamon'";    
    if ($conn->query($sql) === TRUE) {
      header("Location:monan.php");
    } else {
      echo "Error updating record: " . $conn->error;
    }
  }
?>
<div class="container">
  <h2 class="w3-center w3-padding-16">Cập nhật món ăn</h2>
  <form action="./sua_monan.php" method = "post">
    <div class="mb-3 mt-3">
      <label for="id">Mã món ăn:</label>
      <input value = "<?php echo $mamon_val;?>" readonly type="text" class="form-control" id="id" placeholder="" name="id">
    </div>  
    <div class="mb-3 mt-3">
      <label for="tenmon">Tên món ăn:</label>
      <input  value = "<?php echo $tenmon_val;?>" type="text" class="form-control" id="tenmon" placeholder="Nhập tên món ăn" name="tenmon">
    </div>
    <div class="mb-3 mt-3">
      <label for="gia">Giá:</label>
      <input  value = "<?php echo $gia_val;?>" type="text" class="form-control" id="gia" placeholder="Nhập giá bán" name="gia">
    </div>
    <div class="mb-3 mt-3">
      <label for="mota">Mô tả:</label>
      <textarea type="text" class="form-control" id="mota" name="mota"><?php echo $mota_val;?>" </textarea>
    </div>
    <div class="mb-3 mt-3">
      <label for="danhmuc">Danh mục món ăn:</label>
      <select type="text" class="form-control" id="danhmuc"  name="danhmuc">
        <?php
          $sql = "SELECT * FROM danh_muc_mon_an";
          $result = $conn->query($sql);
          if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
              if($danhmuc_val==$row["id"])
              {
                echo "<option selected value='" . $row["id"]. "'>" . $row["ten_danh_muc"]. " </option>";
              }
              else
              {
                echo "<option value='" . $row["id"]. "'>" . $row["ten_danh_muc"]. " </option>";
              }          
            }
          } else {
            echo "0 results";
          }        
        ?>
      </select>
    </div>
    <button name = "sbCapNhat" type="submit" class="btn btn-primary">Cập nhật</button>
  </form>
  <script>CKEDITOR.replace("mota");</script>
</div>