<?php
    include_once("../giaodien_quantri/header.php");
?>
<div class="container">
  <h2 class="w3-center w3-padding-16">Quản lý điểm phục vụ</h2>
  <a href = "form_diemphucvu.php" class="btn btn-primary">Thêm mới</a><br>
  <?php
    include_once("../connect.php");   
    $sql = "SELECT dv.id, ten_mon_an, ten_quan, mon_an_id, dia_chi_quan, gio_mo_cua, gio_dong_cua, so_dien_thoai,dv.hinh_anh FROM mon_an mn, diem_phuc_vu dv WHERE dv.mon_an_id = mn.id ";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
      echo "<br><table class = 'table table-hover'>";
      echo "<tr class ='table-primary'>
              <th>Tên quán</th>
              <th>Hình ảnh</th>
              <th>Tên món ăn</th>
              <th>Địa chỉ quán</th>
              <th>Giờ mở cửa</th>
              <th>Giờ đóng cửa</th>
              <th>Số điện thoại</th>
              <th>Sửa</th>
              <th>Xóa</th>
            </tr>";
            while($row = $result->fetch_assoc()) {
              echo "<tr>
                      <td>". $row["ten_quan"]."</td>
                      <td width='300px'><img width ='30%' height = '20%' src = '../../images/". $row["hinh_anh"]."'></td>
                      <td>". $row["ten_mon_an"]."</td>
                      <td>". $row["dia_chi_quan"]."</td>
                      <td>". $row["gio_mo_cua"]."</td>
                      <td>". $row["gio_dong_cua"]."</td>
                      <td>". $row["so_dien_thoai"]."</td>";
              echo"<td>";
  ?>
                <a class = "btn btn-primary" href = "sua_diemphucvu.php?&ma=<?php echo $row["id"];?>">Sửa</a>
              <?php
                echo"</td>";
                echo"<td>";
              ?>
                <a onclick = "return confirm('Bạn có thật sự muốn xóa không?')" class = "btn btn-danger" href = "xoa_diemphucvu.php?&ma=<?php echo $row["id"];?>">Xóa</a>
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