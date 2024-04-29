<?php
    include_once("../giaodien_quantri/header.php");
?>
<div class="container">
  <h2 class="w3-center w3-padding-16">Quản lý nguyên liệu món ăn</h2>
  <a href = "form_nguyenlieu.php" class="btn btn-primary">Thêm mới</a><br>
  <?php
    include_once("../connect.php");
    $sql = "SELECT * FROM nguyen_lieu";
    $result = $conn->query($sql);
    $sql = "SELECT nl.id, ten_mon_an, ten_nguyen_lieu, gia_ban FROM mon_an mn, nguyen_lieu nl WHERE mn.id = nl.mon_an_id";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
      echo "<br><table class = 'table table-hover'>";
      echo "<tr class ='table-primary'>
              <th>Tên nguyên liệu</th>
              <th>Tên món ăn</th>
              <th>Sửa</th>
              <th>Xóa</th>
            </tr>";
      while($row = $result->fetch_assoc()) {
        echo "<tr>
                <td>". $row["ten_nguyen_lieu"]."</td>
                <td>". $row["ten_mon_an"]."</td>";     
        echo"<td>";
        ?>
          <a class = "btn btn-primary" href = "sua_nguyenlieu.php?&ma=<?php echo $row["id"];?>">Sửa</a>
        <?php
          echo"</td>";
          echo"<td>";
        ?>
          <a onclick = "return confirm('Bạn có thật sự muốn xóa không?')" class = "btn btn-danger" href = "xoa_nguyenlieu.php?&ma=<?php echo $row["id"];?>">Xóa</a>
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