<?php
  include_once("./header.php");
?>
<div class="w3-main w3-content" style="max-width:1200px;margin-top:60px;">
  <div class="w3-row-padding" id="food">
    <?php
      $sql1 = "SELECT * FROM danh_muc_mon_an";
      $rs = $conn->query($sql1);
      if ($rs->num_rows > 0) {               
        while ($r = $rs->fetch_assoc()) {
          echo '<div class="w3-panel w3-leftbar w3-border-green w3-theme-l2 w3-xxlarge w3-serif">';
            echo '<h2 style = "text-transform:uppercase;">';
              echo $r["ten_danh_muc"];
            echo '</h2>';
          echo '</div>';
          $sql = "SELECT hinh_anh.hinh_anh,  mon_an.id, mon_an.mo_ta,mon_an.ten_mon_an
              FROM hinh_anh
              JOIN mon_an ON hinh_anh.mon_an_id = mon_an.id WHERE danh_muc_id='".$r["id"]."'";
          $result = $conn->query($sql);
          if ($result->num_rows > 0) {
            echo '<div class="w3-row-padding">';            
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
            echo '</div>';
          } else {
            echo "0 results";
          }
        }                 
      } else {
        echo "0 results";
      }    
    ?>
  </div>
</div>
<?php
  include_once("./footer.php");
?>
