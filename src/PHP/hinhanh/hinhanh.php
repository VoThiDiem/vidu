<?php
    include_once("../giaodien_quantri/header.php");
?>
<div class="container">
  <h2 class="w3-center w3-padding-16">Quản lý hình ảnh món ăn</h2>
  <a href = "form_hinhanh.php" class="btn btn-primary">Thêm mới</a><br>
  <?php
    include_once("../connect.php");
    $sql = "SELECT ha.id, ten_mon_an, hinh_anh FROM mon_an mn, hinh_anh ha WHERE mn.id = ha.mon_an_id";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
      // output data of each row
      echo "<br><table class = 'table table-hover'>";
      echo "<tr class ='table-primary'>
              <th>Hình ảnh</th>
              <th>Tên món ăn</th>
              <th>Sửa</th>
              <th>Xóa</th>
            </tr>";
      while($row = $result->fetch_assoc()) {
        echo "<tr>
                <td width='600px'><img width ='20%' height = '20%' src = '../../images/". $row["hinh_anh"]."'></td>
                <td>".$row["ten_mon_an"]."</td>";      
        echo"<td>";
        ?>
          <a class = "btn btn-primary" href = "sua_hinhanh.php?&ma=<?php echo $row["id"];?>">Sửa</a>
        <?php
          echo"</td>";
          echo"<td>";
        ?>
          <a onclick = "return confirm('Bạn có thật sự muốn xóa không?')" class = "btn btn-danger" href = "xoa_hinhanh.php?&ma=<?php echo $row["id"];?>">Xóa</a>       
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