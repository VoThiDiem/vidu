<!DOCTYPE html>
<html>
<title>Đăng nhập hệ thống</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<body class="w3-light-gray"> 
<div class="w3-container" >
  <div class="w3-card-4 w3-display-middle w3-round-large w3-white">
    <div class="w3-container w3-blue w3-center" style="border-radius: 7px 7px 0 0">
      <h2>Đăng nhập hệ thống</h2>
    </div>
    <form class="w3-container dangnhap" action = "xuly_dangnhap.php" method = "post" style="width:400px; height:260px">
      <p>
        <label>Tên đăng nhập:</label>
        <input class="w3-input  w3-round" type="text" name = "tendn" required>
      </p>
      <p>     
        <label>Mật khẩu:</label>
        <input class="w3-input w3-round" type="password" name = "matkhau" required>
      </p><br>
      <div class="w3-bar">
      <a href="./@giaodien_user/index.php" class="w3-btn w3-blue w3-round-large w3-bar-item" style="width:100px">Trở về</a>
      <button class="w3-btn w3-blue w3-round-large w3-right  w3-bar-item" name="dangnhap">Đăng nhập</button>
      </div>
    </form>
  </div>
</div>  
</body>
</html>
