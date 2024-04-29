<?php
include_once("../connect.php");
// Lấy biến từ liên kết
$madm = "";
if (isset($_GET["ma"])) {
  $madm = $_GET["ma"];
}
// Thực hiện xóa từ bảng hinhanh trước
$sqlMonAn = "DELETE FROM mon_an WHERE danh_muc_id='$madm'";
if ($conn->multi_query($sqlMonAn) === TRUE) {
    // Nếu xóa hình ảnh thành công, tiếp tục xóa từ bảng sanpham
    $sqlDanhMuc = "DELETE FROM danh_muc_mon_an WHERE id='$madm'";
    if ($conn->query($sqlDanhMuc) === TRUE) {
        header("Location:danhmuc.php");
    } else {
        echo "Error deleting record: " . $conn->error;
    }
} else {
    echo "Error deleting images: " . $conn->error;
}
$conn->close();
?>