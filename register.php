<?php 
require 'debug.php';
require 'utils.php';

if(isset($_POST["register"])) {
  if(register($_POST) > 0) {
    echo "<script>
          alert('Akun berhasil ditambahkan');
          document.location.href = 'login.php';
          </script>
      ";
    exit;
  } else {
    echo mysqli_error($conn);
  }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="styles/register.css">
  <title>Registerasi</title>
</head>
<body>
  <div class="container">
    <div class="banner">
      <img src="assets/logo_unj.png" alt="">
      <h1>Data Sistem Akademik</h1>
    </div>
    <div class="form-login">
      <form action="" method="post">
        <h2 class="form-title">Registerasi Siakad</h2>
        <div class="input-wrapper">
          <div class="form-input">
            <img src="assets/account-circle.svg" alt="" class="input-icon">
            <input type="text" name="fullname" id="fullname" autocomplete="off" required>
            <span class="placeholder" name="placeholder">Nama Lengkap</span>
          </div>
          <div class="form-input">
            <img src="assets/account-circle.svg" alt="" class="input-icon">
            <input type="text" name="username" id="username" autocomplete="off" required>
            <span class="placeholder" name="placeholder">Username</span>
          </div>
          <div class="form-input">
            <img src="assets/password.svg" alt="" class="input-icon">
            <input type="password" name="password" id="password" autocomplete="off" required>
            <span class="placeholder" name="placeholder">Password</span>
          </div>
          <div class="form-input">
            <img src="assets/password.svg" alt="" class="input-icon">
            <input type="password" name="password2" id="password2" autocomplete="off" required>
            <span class="placeholder" name="placeholder">Konfirmasi password</span>
          </div>
          <button type="submit" name="register" class="submit-form">Registerasi</button>
        </div>

        <div class="login">
          <p>Sudah punya akun? <a href="login.php">Login</a></p>
        </div>
      </form>
    </div>
  </div>
  <script src="scripts/login.js"></script>
</body>
</html>