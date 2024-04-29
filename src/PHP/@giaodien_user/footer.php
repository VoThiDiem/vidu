</div>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha384-hvL8kSKjVBaUbZIq9r6K8pZ5PaWU2AEp+nS8Hr3NPd7iGqnM1PMR2D66g5y5f2Gg" crossorigin="anonymous"/>
<style>
  #btn {
    font-size: 25px;
    text-align: center;
    text-decoration: none;
    border-radius: 50%; /* Bo tròn nút */
    transition: background-color 0.3s ease;
  }
  #icon-container {
    display: flex;
    justify-content: center;
  }
  #btntop {
  position: fixed;
  bottom: 0; /* Đặt vị trí ở dưới cùng */
  right: 0; /* Đặt vị trí bên phải */
  width: 50px;
  }
  #backToTopBtn.hidden {
    display: none;
  }
  #backToTopBtn {
    margin-bottom: 10px;
  }
  ul {
    margin: 0;
    padding: 0;
  }
</style>
</div>
<div id="btntop" class="w3-bottom">
  <a href="#" id="backToTopBtn" class="w3-btn w3-round-large w3-border w3-theme-d5 w3-opacity w3-hover-opacity-off">
    <div class="fas fa-arrow-up"></div>
  </a>
</div>
<div class="w3-row w3-theme-d5">
  <div class="w3-col s3 w3-theme-d5 w3-center">
    <a href="./index.php"><img src="../../images/NTN.png" alt="" style="width: 100%"></a>
  </div>
  <div class="w3-col s4 ">
    <?php
      $sql1 = "SELECT * FROM danh_muc_mon_an";

      $rs = $conn->query($sql1);
      if ($rs->num_rows > 0) {
        echo '<h4>Danh mục món ăn</h4>';       
        while ($r = $rs->fetch_assoc()) {
          echo '<div class="w3-panel w3-xxlarge w3-serif">';
            echo '<ul style="font-size:15px">';
              echo '<li>';
                echo '<a style="text-decoration:none" href="monan.php?madm='.$r["id"].'" >'. $r["ten_danh_muc"].'</a>';
              echo '</li>';
            echo '</ul>';
          echo '</div>';
        }
      }
    ?>
  </div>
  <div class="w3-col s5">
    <?php
      $sql1 = "SELECT * FROM diem_phuc_vu ORDER BY diem_phuc_vu.ten_quan DESC LIMIT 4" ;
      $rs = $conn->query($sql1);
      if ($rs->num_rows > 0) {
        echo '<h4>Địa điểm phục vụ</h4>';       
        while ($r = $rs->fetch_assoc()) {
          echo '<div class="w3-panel w3-xxlarge w3-serif">';
            echo '<ul style="font-size:15px">';
              echo '<li>';
                echo '<a style="text-decoration:none" href="chitiet_diadiem.php?iddiadiem='.$r["id"].'" >'. $r["ten_quan"].'</a>';
              echo '</li>';
            echo '</ul>';
          echo '</div>';
        }
      }
    ?>
  </div>
</div>
<div class="w3-container w3-center w3-theme-d5 w3-border-top">&copy;copyrighted 2023 design by Diep Tu Nhu</div>
</body>
</html>

<script>
  document.addEventListener("DOMContentLoaded", function() {
  var backToTopBtn = document.getElementById("backToTopBtn");

  window.addEventListener("scroll", function() {
    // Nếu vị trí cuộn trang lớn hơn 0, hiển thị nút, ngược lại ẩn nút
    if (window.scrollY > 0) {
        backToTopBtn.classList.remove("hidden");
    } else {
        backToTopBtn.classList.add("hidden");
    }
  });
});
</script>
<script>
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 3000);    
}
</script>
<script>
function myAccFunc() {
  var x = document.getElementById("demoAcc");
  if (x.className.indexOf("w3-show") == -1) {
    x.className += " w3-show";
    x.previousElementSibling.className += " w3-white";
  } else { 
    x.className = x.className.replace(" w3-show", "");
    x.previousElementSibling.className = 
    x.previousElementSibling.className.replace(" w3-white", "");
  }
}
</script>