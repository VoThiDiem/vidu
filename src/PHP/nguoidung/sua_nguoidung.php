<?php
  include_once("../giaodien_quantri/header.php");
  $mand="";
  if(isset( $_GET["ma"]))
  {
    $mand = $_GET["ma"];
  }
  $sql = "SELECT * FROM nguoi_dung WHERE id ='$mand'";
  $result = $conn->query($sql);
  $mand_val = $tendn_val = $mk_val = $email_val = $diachi_val = "";
  if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
      $mand_val = $row["id"];
      $tendn_val = $row["ten_dang_nhap"];
      $mk_val =$row["mat_khau"];
      $email_val = $row["email"];
      $diachi_val = $row["dia_chi"];
    }
  }
?>
<?php
  if(isset($_POST["sbCapNhat"]))
  {
  $mand=$tendn = $mk = $email = $diachi = "";
    if(isset($_POST["tendn"])&&isset($_POST["mk"])&&isset($_POST["email"])&&isset($_POST["diachi"]))
    {
      $mand =$_POST["id"];
      $tendn = $_POST["tendn"];
      $mk = $_POST["mk"];   
      $email = $_POST["email"];
      $diachi = $_POST["diachi"];
    }
    //Viết câu truy vấn cập nhật
    $sql = "UPDATE nguoi_dung SET ten_dang_nhap ='$tendn', mat_khau = '$mk', email = '$email', dia_chi = '$diachi' WHERE id='$mand'";
    if ($conn->query($sql) === TRUE) {
      header("Location:nguoidung.php");;
    } else {
      echo "Error updating record: " . $conn->error;
    }  
  }
?>
<div class="container">
  <h2 class="w3-center w3-padding-16">Cập nhật tài khoản người dùng</h2>
  <form action="sua_nguoidung.php" method = "post">
    <div class="mb-3 mt-3">
      <label for="id">Mã người dùng:</label>
      <input value = "<?php echo $mand_val;?>" readonly type="text" class="form-control" id="id" placeholder="" name="id">
    </div>  
    <div class="mb-3 mt-3">
      <label for="tendn">Tên đăng nhập:</label>
      <input  value = "<?php echo $tendn_val;?>" readonly type="text" class="form-control" id="tendn" placeholder="Nhập tên đăng nhập" name="tendn">
    </div>
    <div class="mb-3 mt-3">
      <label for="mk">Mật khẩu:</label>
      <input  value = "<?php echo $mk_val;?>" readonly type="password" class="form-control" id="mk" placeholder="Nhập mật khẩu" name="mk">
    </div>
    <div class="mb-3 mt-3">
      <label for="email">Email:</label>
      <input  value = "<?php echo $email_val;?>" type="text" class="form-control" id="email" placeholder="Nhập email" name="email">
    </div>
    <div class="mb-3 mt-3">
      <label for="diachi">Địa chỉ:</label>
      <input  value = "<?php echo $diachi_val;?>" type="text" class="form-control" id="diachi" placeholder="Nhập địa chỉ" name="diachi">
    </div>   
    <button name = "sbCapNhat" type="submit" class="btn btn-primary">Cập nhật</button>
  </form>
</div>