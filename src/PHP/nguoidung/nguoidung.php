<?php
    include_once("../giaodien_quantri/header.php");
?>
<div class="container">
  <h2 class="w3-center w3-padding-16">Quản lý tài khoản người dùng</h2>
  <a href = "form_nguoidung.php" class="btn btn-primary">Thêm mới</a><br>
  <?php
    include_once("../connect.php");
    $sql = "SELECT * FROM nguoi_dung";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
      echo "<br><table class = 'table table-hover'>";
      echo "<tr class ='table-primary'>
              <th>Tên đăng nhập</th>
              <th>Mật khẩu</th>
              <th>Email</th>
              <th>Địa chỉ</th>
              <th>Sửa</th>
              <th>Xóa</th>
            </tr>";
      while($row = $result->fetch_assoc()) {
        echo "<tr>
                <td>". $row["ten_dang_nhap"]."</td>
                <td>********</td>
                <td>". $row["email"]."</td>
                <td>". $row["dia_chi"]."</td>";
        echo"<td>";
  ?>
      <a class = "btn btn-primary" href = "sua_nguoidung.php?&ma=<?php echo $row["id"];?>">Sửa</a>
      <?php
        echo"</td>";
        echo"<td>";
      ?>
      <a onclick = "return confirm('Bạn có thật sự muốn xóa không?')" class = "btn btn-danger" href = "xoa_nguoidung.php?&ma=<?php echo $row["id"];?>">Xóa</a>
      <?php
        echo"</td>";
        echo "</tr>";
        }
        echo "</table>";
    } 
    else {
      echo "0 results";
    }
    ?>
</div>