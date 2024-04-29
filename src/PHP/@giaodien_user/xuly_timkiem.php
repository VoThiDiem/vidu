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
  .two-line-limit {
    display: -webkit-box;
    -webkit-line-clamp: 7;
    -webkit-box-orient: vertical;
    overflow: hidden;
    text-overflow: ellipsis;
  }
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

<div class="w3-main w3-content" style="max-width:1200px;margin-top:60px;">
  <div class="w3-row-padding" id="food">
    <?php
      $sql1 = "SELECT * FROM danh_muc_mon_an";
      $rs = $conn->query($sql1);
      if ($rs->num_rows > 0) {               
        while ($r = $rs->fetch_assoc()) {          
          $tukhoa="";
          if($_POST["timkiem"]&& !empty($_POST["timkiem"])){
            $tukhoa=mb_strtolower($_POST["timkiem"]);
          }
          $sql = "SELECT hinh_anh.hinh_anh, mon_an.id, mon_an.mo_ta, mon_an.ten_mon_an
              FROM hinh_anh
              JOIN mon_an ON hinh_anh.mon_an_id = mon_an.id WHERE danh_muc_id='".$r["id"]."' AND ten_mon_an LIKE '%".$tukhoa."%'";
          $result = $conn->query($sql);
          if ($result->num_rows > 0) {           
            while ($row = $result->fetch_assoc()) {
              echo '<div class="w3-quarter card_monan" style="margin-bottom: 50px;">';
                echo '<a href="chitiet.php?idmonan='.$row["id"].'">';
                  echo '<div class="w3-card-4 w3-white two-line-limit w3-round-large">';
                    echo '<img src="../../images/' . $row['hinh_anh'] . '" alt="' . $row['ten_mon_an'] . '" style="width:100%">';         
                    echo '<div class="w3-container w3-justify">';
                      echo '<h4 class = "w3-center" style = "font-weight:bolder;">' . $row['ten_mon_an'] . '</h4>';
                      echo '<p class ="w3-justify">' . $row['mo_ta'] . '</p>';
                    echo '</div>';
                  echo '</div>';
                echo '</a>';
              echo '</div>';
            }           
          } 
        }                 
      }     
    ?>
  </div>
</div>
<?php
  include_once("./footer.php");
?>
