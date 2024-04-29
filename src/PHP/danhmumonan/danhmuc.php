<?php
    include_once("../giaodien_quantri/header.php");
?>
<div class="w3-container">
  <h2  class="w3-center w3-padding-16">Quản lý danh mục món ăn</h2>
  <a href = "form_danhmuc.php" class="btn btn-primary">Thêm mới</a><br>
  <?php
    include_once("../connect.php");
    $sql = "SELECT * FROM danh_muc_mon_an";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
      echo "<br><table class = 'table table-hover'>";
      echo "<tr class ='table-primary'>
              <th>Tên danh mục</th>
              <th>Sửa</th>
              <th>Xóa</th>
            </tr>";
      while($row = $result->fetch_assoc()) {
        echo "<tr>
                <td>". $row["ten_danh_muc"]."</td>";       
        echo"<td>";
        ?>
          <a class = "btn btn-primary" href = "sua_danhmuc.php?&ma=<?php echo $row["id"];?>">Sửa</a>
        <?php
          echo"</td>";
          echo"<td>";
        ?>
          <a onclick = "return confirm('Bạn có thật sự muốn xóa không?')" class = "btn btn-danger" href = "xoa_danhmuc.php?&ma=<?php echo $row["id"];?>">Xóa</a>
        <?php
          echo"</td>";
          echo "</tr>";
      }
      echo "</table>";
    } else {
      echo "0 results";
    }
    ?> 
</div>
