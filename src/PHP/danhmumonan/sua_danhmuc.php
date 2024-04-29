<?php
include_once("../giaodien_quantri/header.php");
$ma="";
if(isset( $_GET["ma"]))
  $ma = $_GET["ma"];
$sql = "SELECT * FROM danh_muc_mon_an WHERE id ='$ma'";
$result = $conn->query($sql);
$ma_val = $ten_val = $xx_val ="";
if ($result->num_rows > 0) {
  while($row = $result->fetch_assoc()) {
  $ma_val = $row["id"];
  $ten_val = $row["ten_danh_muc"];
  }
}
?>
<?php
 if(isset($_POST["sbCapNhat"]))
 {
 //Lấy biến từ form
  $ten = $ma= "";
  if(isset($_POST["ten"]))
  {
    $ten = $_POST["ten"];
    $ma = $_POST["id"];
  }
  //Viết câu truy vấn cập nhật
  $sql = "UPDATE danh_muc_mon_an SET ten_danh_muc='$ten' WHERE id='$ma'";
  if ($conn->query($sql) === TRUE) {
    header("Location:danhmuc.php");
  } else {
    echo "Error updating record: " . $conn->error;
  }
 }
?>
<div class="container">
  <h2 class="w3-center w3-padding-16">Cập nhật danh mục món ăn</h2>
  <form action="sua_danhmuc.php" method = "post">
  <div class="mb-3 mt-3">
      <label for="id">Mã danh mục:</label>
      <input value = "<?php echo $ma_val;?>" readonly type="text" class="form-control" id="id" placeholder="" name="id">
    </div>  
  <div class="mb-3 mt-3">
      <label for="ten">Tên danh mục:</label>
      <input  value = "<?php echo $ten_val;?>" type="text" class="form-control" id="ten" placeholder="Nhập tên danh mục" name="ten">
    </div>   
    <button name = "sbCapNhat" type="submit" class="btn btn-primary">Cập nhật</button>
  </form>
</div>