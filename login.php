<?php 
require 'debug.php';
require 'utils.php';

if(isset($_SESSION["login"])) {
  header("Location: index.php");
  exit;
}

$val1 = rand(0,9);
$val2 = rand(0,9);
if(isset($_POST["login"])) {
  // var_dump($_POST);
  login($_POST);
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
  <title>Login</title>
</head>
<body>
  <div class="container">
    <div class="banner">
      <img src="assets/logo_unj.png" alt="">
      <h1>Data Sistem Akademik</h1>
    </div>
    <div class="form-login">
      <form action="" method="post">
        <h2 class="form-title">Login Siakad</h2>
        <div class="input-wrapper">
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
          <div class="captcha">
            <p>Pertanyaan keamanan</p>
            <label for="captcha" class="captcha-label">
              <span class="first-num">
                <?= $val1; ?>
              </span>
              +
              <span class="second-num">
                <?= $val2; ?>
              </span>
            </label>
            <input type="number" id="captcha" placeholder="Jawaban" name="captcha">
            <input type="hidden" name="val1" value="<?php echo $val1 ?>" />
            <input type="hidden" name="val2" value="<?php echo $val2 ?>" />
          </div>
          <button type="submit" name="login" class="submit-form">Login</button>
        </div>

        <div class="register">
          <p>Belum punya akun? <a href="register.php">Registerasi</a></p>
        </div>
      </form>
    </div>
  </div>
  <script src="scripts/login.js"></script>
</body>
</html>