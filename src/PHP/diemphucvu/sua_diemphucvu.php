<?php
include_once("../giaodien_quantri/header.php");
$maquan = "";
if(isset($_GET["ma"]))
  {
    $maquan = $_GET["ma"];
  }
$sql = "SELECT * FROM diem_phuc_vu WHERE id ='$maquan'";
$result = $conn->query($sql);
$maquan_val = $tenquan_val = $tenmon_val= $gioithieu_val = $diachi_val = $giomo_val = $giodong_val = $tenhinhanh_val= $sdt = "";
if ($result->num_rows > 0) {
   while($row = $result->fetch_assoc()) {
    $maquan_val = $row["id"];
    $tenquan_val = $row["ten_quan"];
    $tenmon_val = $row["mon_an_id"];
    $gioithieu_val =$row["gioi_thieu_chung"];
    $diachi_val = $row["dia_chi_quan"];
    $giomo_val = $row["gio_mo_cua"];
    $giodong_val = $row["gio_dong_cua"];
    $tenhinhanh_val = $row["hinh_anh"];
    $sdt_val = $row["so_dien_thoai"];
   }
}
?>
<?php
 if(isset($_POST["sbCapNhat"]))
 {
 //Lấy biến từ form
    $maquan = $tenquan = $tenmon = $gioithieu = $diachi = $giomo = $giodong = $tenhinhanh= $sdt = "";
    if(isset($_FILES["fileToUpload"]["name"])&&isset($_POST["tenquan"])&&isset($_POST["monan"])&&isset($_POST["gioithieu"])&&isset($_POST["diachi"])&&isset($_POST["giomo"])&&isset($_POST["giodong"]))
    {
      $maquan = $_POST["id"];
      $tenquan = $_POST["tenquan"];
      $tenmon = $_POST["monan"];
      $gioithieu = $_POST["gioithieu"];   
      $diachi = $_POST["diachi"];
      $giomo = $_POST["giomo"];
      $giodong = $_POST["giodong"];
      $tenhinhanh = $_FILES["fileToUpload"]["name"];
      $sdt = $_POST["sdt"];
    }
    //Upload file
    $target_dir = "../../images/";
    $target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
    $uploadOk = 1;
    $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
    // Kiểm tra file ảnh là ảnh thật hay ảnh giả
    $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
    if($check !== false) {
      echo "File is an image - " . $check["mime"] . ".";
      $uploadOk = 1;
    } 
    else {
      echo "File is not an image.";
      $uploadOk = 0;
    }      
    echo $target_file."--".$_FILES["fileToUpload"]["tmp_name"];
    // Kiểm tra xem tập tin đã tồn tại chưa
    if (file_exists($target_file)) {
      echo "Sorry, file already exists.";
      $uploadOk = 0;
    }
    // Kiểm tra kích thước tập tin
    if ($_FILES["fileToUpload"]["size"] > 500000) {
      echo "Sorry, your file is too large.";
      $uploadOk = 0;  
    }
    // Cho phép một số định dạng tệp nhất định
    if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg" && $imageFileType != "gif" ) {
      echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
      $uploadOk = 0;
    }
    // Check if $upload Ok is set to 0 by an error
    if ($uploadOk == 0) {
      echo "Sorry, your file was not uploaded.";
    // if everything is ok, try to upload file
    } 
    else 
    {
      if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
        echo "The file ". htmlspecialchars( basename( $_FILES["fileToUpload"]["name"])). " has been uploaded.";
      } 
      else 
      {
        echo "Sorry, there was an error uploading your file.";
      }
    }
    //Viết câu truy vấn cập nhật
    if(isset($_FILES["fileToUpload"]["name"])&&!empty($_FILES["fileToUpload"]["name"]))
    {
      $sql = "UPDATE diem_phuc_vu SET ten_quan ='$tenquan', mon_an_id ='$tenmon', gioi_thieu_chung = '$gioithieu', dia_chi_quan = '$diachi', gio_mo_cua = '$giomo', gio_dong_cua = '$giodong', hinh_anh = '$tenhinhanh', so_dien_thoai = '$sdt'  WHERE id='$maquan'";
    }
    else{
      $sql = "UPDATE diem_phuc_vu SET ten_quan ='$tenquan', mon_an_id ='$tenmon', gioi_thieu_chung = '$gioithieu', dia_chi_quan = '$diachi', gio_mo_cua = '$giomo', gio_dong_cua = '$giodong', so_dien_thoai = '$sdt' WHERE id='$maquan'";
    }
    if ($conn->query($sql) === TRUE) {
      header("Location:diemphucvu.php");
    } else {
    echo "Error updating record: " . $conn->error;
    }
  } 
?>
<div class="container">
  <h2 class="w3-center w3-padding-16">Cập nhật điểm phục vụ</h2>
  <form action="sua_diemphucvu.php" method = "post" enctype="multipart/form-data">
  <div class="mb-3 mt-3">
      <label for="id">Mã điểm phục vụ:</label>
      <input value = "<?php echo $maquan_val;?>" readonly type="text" class="form-control" id="id" placeholder="" name="id">
    </div>  
  <div class="mb-3 mt-3">
      <label for="tenquan">Tên điểm phục vụ:</label>
      <input  value = "<?php echo $tenquan_val;?>" type="text" class="form-control" id="tenquan" placeholder="Nhập tên điểm phục vụ" name="tenquan">
    </div>
    <div class="mb-3 mt-3">
      <label for="tenanh">Chọn ảnh:</label>
      <input type="file" value="Upload Image" name="fileToUpload">
    </div>
    <div class="mb-3 mt-3">
      <label for="monan">Chọn món ăn:</label>
      <select type="text" class="form-control" id="monan" placeholder="Nhập id món ăn" name="monan">
        <?php
        $sql = "SELECT * FROM mon_an";
        $result = $conn->query($sql);
        if ($result->num_rows > 0) {
          // output data of each row
          while($row = $result->fetch_assoc()) {
            if($tenmon_val==$row["id"])
            {
              echo "<option selected value='" . $row["id"]. "'>" . $row["ten_mon_an"]. " </option>";
            }
            else
            {
              echo "<option value='" . $row["id"]. "'>" . $row["ten_mon_an"]. " </option>";
            }          
          }
          echo "0 results";
        }       
        ?>
      </select>
    </div>
    <div class="mb-3 mt-3">
      <label for="gioithieu">Giới thiệu chung:</label>
      <textarea class="form-control" cols = "300" rows="4" id="gioithieu" name="gioithieu"> <?php echo $gioithieu_val;?></textarea>
    </div>
    <div class="mb-3 mt-3">
      <label for="diachi">Địa chỉ điểm phục vụ:</label>
      <input  value = "<?php echo $diachi_val;?>" type="text" class="form-control" id="diachi" placeholder="Nhập địa chỉ" name="diachi">
    </div>
    <div class="mb-3 mt-3">
      <label for="giomo">Giờ mở cửa:</label>
      <input  value = "<?php echo $giomo_val;?>" type="time" class="form-control" id="giomo" name="giomo">
    </div>
    <div class="mb-3 mt-3">
      <label for="giodong">Giờ đóng cửa:</label>
      <input  value = "<?php echo $giodong_val;?>" type="time" class="form-control" id="giodong" name="giodong">
    </div>  
    <div class="mb-3 mt-3">
      <label for="sdt">Số điện thoại:</label>
      <input value = "<?php echo $sdt_val;?>" type="text" class="form-control" id="sdt" placeholder="Nhập số điện thoại" name="sdt" pattern="[0-9]{10}" title="Vui lòng nhập đúng 10 chữ số">
    </div>
    <button name = "sbCapNhat" type="submit" class="btn btn-primary">Cập nhật</button>
  </form>
  <script>CKEDITOR.replace("gioithieu");</script>
</div>