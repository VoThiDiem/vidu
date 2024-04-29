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
      <button class="w3-button w3-round-large">Món ăn <i class="fa fa-caret-down"></i></button>
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
<div class="w3-col l8 m6 s4 w3-container" style="margin-top: 50px;">
<?php
$mamonan = "";
if(isset($_GET["idmonan"]))
{
  $mamonan = $_GET["idmonan"];
}
?>  
  <div class="container">
    <div class="card">
      <?php
        $sql = "SELECT ha.hinh_anh, mn.id, mn.mo_ta, mn.ten_mon_an, mn.gia_ban
        FROM hinh_anh ha, mon_an mn
        WHERE ha.mon_an_id = mn.id AND mn.id=$mamonan";
        $result = $conn->query($sql);
        
        if ($result->num_rows > 0) {          
          while ($row = $result->fetch_assoc()) {
      ?>
            <div class="w3-row">
              <div class="w3-panel w3-leftbar w3-border-green  w3-xxlarge w3-serif">
                <h2 class = "w3-left" style = "text-transform:uppercase; font-weight:bolder;"><?php echo $row['ten_mon_an'];?></h2>
              </div>
              <div class="w3-col s4 w3-padding-16">
                <img src="../../images/<?php echo $row['hinh_anh'];?>" alt="<?php echo $row['ten_mon_an'];?>" style="width:100%">
              </div>
              <div class="w3-col s8">
                <div class=" w3-left" style = "padding-left:30px;">
                  <p style="font-weight: bolder; line-height:1.5"><b>Nguyên liệu chính:</b></p>
                  <ul type = "square">    
                  <?php
                    $sqlNguyenLieu = "SELECT ten_nguyen_lieu FROM nguyen_lieu WHERE mon_an_id=$mamonan";
                    $resultNguyenLieu = $conn->query($sqlNguyenLieu);
                    while ($row1 = $resultNguyenLieu->fetch_assoc()) {                                        
                      echo '<li>'.$row1["ten_nguyen_lieu"].'</li>';                    
                    }
                  ?>               
                  </ul>
                  <p style="text-align:justify;"><b>Tầm giá tham khảo </b><?php echo $row["gia_ban"];?></p>
                </div>
              </div>
              <div class="w3-col ">
                <h3 style="font-weight:bolder;">Chi tiết món ăn: </h3>
                <div class="w3-panel w3-round-xlarge w3-pale-green w3-padding-16">
                  <p style = "text-align:justify; line-height:1.5"><?php echo $row["mo_ta"];?></p>
                </div>
              </div>
            </div>
      <?php
         }        
        } else {
          echo "0 results";
        }        
      $sql1 = "SELECT *
        FROM diem_phuc_vu
        WHERE mon_an_id = '".$mamonan."'";
        $result = $conn->query($sql1);
      ?>
        <div class="w3-panel w3-leftbar w3-border-green  w3-xxlarge w3-serif">
          <h2 class = "w3-left" style = "text-transform:uppercase; font-weight:bolder;">ĐỊA ĐIỂM PHỤC VỤ</h2>
        </div>
      <?php
        if ($result->num_rows > 0) {
          while ($row = $result->fetch_assoc()) {
            echo '<div class="w3-quarter" style="margin-bottom: 50px;">';
              echo '<a style="text-decoration:none" href="chitiet_diadiem.php?iddiadiem='.$row["id"].'">';
              echo '<div class="w3-container w3-row">';
                echo '<img style="width:100%" src="../../images/'.$row["hinh_anh"].'">';
                echo '<h6 class="card-title w3-center" style = "font-weight:bolder;">'.$row["ten_quan"].'</h6>';
              echo '</div>';   
              echo '</a>';  
            echo '</div>';         
          }               
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