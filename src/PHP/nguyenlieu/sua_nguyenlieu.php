<?php
  include_once("../giaodien_quantri/header.php");
  $ma = "";
  if(isset($_GET["ma"]))
    {
      $ma = $_GET["ma"];
    }
  $sql = "SELECT * FROM nguyen_lieu WHERE id ='$ma'";
  $result = $conn->query($sql);
  $ma_val = $ten_val = $tenmonan_val = "";
  if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
      $ma_val = $row["id"];
      $ten_val = $row["ten_nguyen_lieu"];
      $tenmonan_val = $row["mon_an_id"];
    }
  }
?>
<?php
  if(isset($_POST["sbCapNhat"]))
  {
    $ten = $ma= "";
    if(isset($_POST["ten"]))
    {
      $ten = $_POST["ten"];
      $tenmonan = $_POST["monan"];
      $ma = $_POST["id"];
    }
    //Viết câu truy vấn cập nhật
    $sql = "UPDATE nguyen_lieu SET ten_nguyen_lieu='$ten', mon_an_id='$tenmonan' WHERE id='$ma'";
    if ($conn->query($sql) === TRUE) {
      header("Location:nguyenlieu.php");;
    } else {
      echo "Error updating record: " . $conn->error;
    }
  }
?>
<div class="container">
  <h2 class="w3-center w3-padding-16">Cập nhật nguyên liệu món ăn</h2>
  <form action="./sua_nguyenlieu.php" method = "post">
    <div class="mb-3 mt-3">
      <label for="monan">Tên món ăn:</label>
      <select type="text" class="form-control" id="monan"  name="monan">
        <?php
          $sql = "SELECT * FROM mon_an";
          $result = $conn->query($sql);

          if ($result->num_rows > 0) {
            // output data of each row
            while($row = $result->fetch_assoc()) {
              if($tenmonan_val==$row["id"])
              {
                echo "<option selected value='" . $row["id"]. "'>" . $row["ten_mon_an"]. " </option>";
              }
              else
              {
                echo "<option value='" . $row["id"]. "'>" . $row["ten_mon_an"]. " </option>";
              }          
            }
          } else {
            echo "0 results";
          }        
        ?>
      </select>
    </div>
    <div class="mb-3 mt-3">
      <label for="id">Mã nguyên liệu:</label>
      <input value = "<?php echo $ma_val;?>" readonly type="text" class="form-control" id="id" placeholder="" name="id">
    </div>  
    <div class="mb-3 mt-3">
      <label for="ten">Tên nguyên liệu:</label>
      <input  value = "<?php echo $ten_val;?>"  type="text" class="form-control" id="ten" placeholder="Nhập tên nguyên liệu" name="ten">
    </div>
    <button name = "sbCapNhat" type="submit" class="btn btn-primary">Cập nhật</button>
  </form>
</div>