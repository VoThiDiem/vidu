<?php
  include_once("../connect.php");
  //Lấy biến từ liên kết
  $mamon="";
  if(isset($_GET["ma"]))
  {
    $mamon =$_GET["ma"] ;
  }
  $sqlHinhAnh = "DELETE FROM hinh_anh WHERE mon_an_id='$mamon'";
  if ($conn->multi_query($sqlHinhAnh) === TRUE) {
    // Nếu xóa hình ảnh thành công, tiếp tục xóa từ bảng sanpham
    $sqlDiemPhucVu = "DELETE FROM diem_phuc_vu WHERE mon_an_id='$mamon'"; 
    if ($conn->multi_query($sqlDiemPhucVu) === TRUE){
      $sqlNguyenLieu = "DELETE FROM nguyen_lieu WHERE mon_an_id='$mamon'"; 
      if ($conn->multi_query($sqlNguyenLieu) === TRUE){
        $sqlMonAn = "DELETE FROM mon_an WHERE id='$mamon'";
        if ($conn->multi_query($sqlMonAn) === TRUE) {
          header("Location:monan.php");
        } 
        else {
          echo "Error deleting record: " . $conn->error;
        }
      }
      else {
        echo "Error deleting record: " . $conn->error;
      }
    }
    else {
      echo "Error deleting record: " . $conn->error;
    }
  } else {
    echo "Error deleting images: " . $conn->error;
  }
  $conn->close();
?>