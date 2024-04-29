<?php
 include "../connect.php";
?>
<!DOCTYPE html>
<html>
<head>
  <title>Giới thiệu đặc sản Trà Vinh</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
  <link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-green.css">

<style>
  @import url('https://fonts.googleapis.com/css2?family=Merienda&display=swap');
  h1{
    font-family: 'Merienda', cursive;
  }
  .card_monan a{
    text-decoration: none;
  }
  #search {
  display: flex;
  justify-content: center;
  align-items: center;
  }
  .search {
    display: flex;
    align-items: center;
  }
</style>
</head>
<body>
<div class="w3-top">
  <div class="w3-bar w3-theme-d5 w3-padding">
    <a href="index.php" class="w3-bar-item w3-button w3-mobile w3-round-large">Trang chủ</a>
    <a href="gioithieu.php" class="w3-bar-item w3-button w3-mobile w3-round-large">Giới thiệu</a>
    <div class="w3-dropdown-hover w3-mobile">
      <button class="w3-button">Món ăn <i class="fa fa-caret-down"></i></button>
      <div class="w3-dropdown-content w3-bar-block w3-dark-grey">
        <?php
          $sql1 = "SELECT * FROM danh_muc_mon_an";
          $rs = $conn->query($sql1);
          if ($rs->num_rows > 0) {
            while ($r = $rs->fetch_assoc()) {
                echo ' <a href="monan.php?madm='.$r["id"].'" class="w3-bar-item w3-button w3-mobile">'.$r["ten_danh_muc"].'</a>';   
            }           
          } else {
              echo "0 results";
          }
        ?> 
      </div>
    </div>
    <a href="diadiemphucvu.php" class="w3-bar-item w3-button w3-mobile w3-round-large">Địa điểm phục vụ</a>
    <a href="../login.php" class="w3-bar-item w3-button w3-mobile w3-right w3-round-large">Đăng nhập</a>
  </div>
</div>
  <div class="w3-container w3-center" style="padding:80px 0px 20px 0px;">
    <h1>ĐẶC SẢN TRÀ VINH</h1>
  </div>
 <!-- SEARCH ---------------------------------------------------------------------------------------------------------------------- -->
  <div class="w3-container w3-row w3-margin-bottom">
    <div id="search">
      <form action="xuly_timkiem.php" method="post">
        <div class="w3-container w3-row search">
          <div class="w3-rest">
            <input class="w3-input w3-border w3-round-large w3-hover-border-green" name="timkiem" type="text" placeholder="Tìm kiếm" style="width: 500px"/>
          </div>
          <button type="submit" name="nuttimkiem" class="w3-button w3-round-xxlarge w3-hover-green">
            <i class="w3-xlarge fa fa-search"></i>
          </button>
        </div>
      </form>  
    </div>
  </div>

<div class="w3-row">
  <div class="w3-col l2 m3 s4"><p></p></div>
  <div class="w3-col l8 m6 s4" style="margin-top: 50px;">
    <?php
    $madiadiem = "";
    if(isset($_GET["iddiadiem"]))
    {
      $madiadiem = $_GET["iddiadiem"];
    }
    ?>    
    <div class="container">
      <div class="w3-row">
        <?php
          $sql = "SELECT *
          FROM diem_phuc_vu 
          WHERE id='".$madiadiem."'";
          $result = $conn->query($sql);
          if ($result->num_rows > 0) {  
            $row = $result->fetch_assoc();
        ?>
            <div class="w3-panel w3-leftbar w3-border-green  w3-xxlarge w3-serif">
              <h2 style = "text-transform:uppercase; font-weight:bolder;"><?php echo $row['ten_quan'];?></h2>
            </div>
            <div class="w3-col s3 w3-padding-16">
              <img src="../../images/<?php echo $row['hinh_anh'];?>" alt="<?php echo $row['ten_quan'];?>" style="width:100%">
            </div>

            <div class="w3-col s9 w3-panel ">
              <div class="w3-panel  ">
                <ul type = "square">
                  <li><p style="text-align:justify;"><b>Địa chỉ: </b><?php echo $row['dia_chi_quan'];?> </p></li>
                  <li><p style="text-align:justify;"><b>Giờ phục vụ: </b>Giờ mở cửa: <?php echo $row["gio_mo_cua"];?> - Giờ đóng cửa: <?php echo $row["gio_dong_cua"];?></p></li>
                  <li><p style="text-align:justify;"><b>Số điện thoại: </b><?php echo $row["so_dien_thoai"];?></p></li>
                </ul>
              </div>
            </div>
            <div class="w3-left">
              <h3><b>Giới thiệu chung:</b></h3>
              <div style="text-align:justify;"><?php echo $row['gioi_thieu_chung'] ;?></div> 
            </div>   
            <?php
          } else {
            echo "0 results";
          }
            ?>
      </div>
    </div>
  </div>
  <div class="w3-col l2 m3 s4"><p></p></div>
</div>
<?php
    include_once("./footer.php");
?>