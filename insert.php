<?php 
require 'utils.php';
if(!isset($_SESSION["login"])) {
  header("Location: login.php");
  exit;
}

if(isset($_POST["submit"])) {
  // var_dump($_POST);
  if(insert($_POST) > 0) {
    echo "
      <script>
        alert('Data berhasil ditambahkan');
        document.location.href = 'index.php';
      </script>
    ";
  } else {
    echo "
      <script>
        alert('Data gagal ditambahkan!');
      </script>
    ";
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
  <link rel="stylesheet" href="styles/index.css">
  <link rel="stylesheet" href="styles/detail.css">
  <link rel="stylesheet" href="styles/update.css">
  <title>Detail</title>
</head>
<body>
  <div class="container">
    <header>
      <h1 class="page-title">Tambah Data Mahasiswa</h1>
      <div class="profile">
        <div class="profile-wrapper">
          <img class="profile-img" src="assets/account-circle.svg" alt="">
          <div class="profile-info">
            <p class="profile-fullname"><?= $_SESSION["fullname"]; ?></p>
            <p class="profile-username"><?= $_SESSION["username"]; ?></p>
          </div>
          <div class="logout-modal hidden">
            <a href="logout.php">Logout</a>
          </div>
        </div>
      </div>
    </header>
    <main>
      <div class="data-container">
        <form action="" method="post">
          <table>
            <tr>
              <td>
                <label for="nama">Nama Lengkap</label>
              </td>
              <td>
                <input type="text" name="NAMA" id="nama" required>
              </td>
            </tr>
            <tr>
              <td>
                <label for="nim">NIM </label>
              </td>
              <td>
                <input type="text" name="NIM" id="nim" required>
              </td>
            </tr>
            <tr>
              <td>
                <label for="alamat">Alamat </label>
              </td>
              <td>
                <input type="text" name="ALAMAT" id="alamat" required>
              </td>
            </tr>
            <tr>
              <td>
                <label for="gender">Gender </label>
              </td>
              <td>
                <div class="dropdown">
                  <select name="GENDER" id="gender">
                    <option value="Laki-laki">Laki-laki</option>
                    <option value="Perempuan">Perempuan</option>
                  </select>
                </div>
              </td>
            </tr>
            <tr>
              <td>
                <label for="telepon">No. Telepon </label>
              </td>
              <td>
                <input type="text" name="TELP" id="telepon" required>
              </td>
            </tr>
            <tr>
              <td>
                <label for="prodi">Prodi</label>
              </td>
              <td>
                <input type="text" name="PRODI" id="prodi" required>
              </td>
            </tr>
            <tr>
              <td>
                <label for="fakultas">Fakultas</label>
              </td>
              <td>
                <input type="text" name="FAKULTAS" id="fakultas" required>
              </td>
            </tr>
            <tr>
              <td>
                <label for="semester">Semester</label>
              </td>
              <td>
                <input type="text" name="SEMESTER" id="semester" required>
              </td>
            </tr>
            <tr>
              <td>
                <label for="tahun-masuk">Tahun Masuk</label>
              </td>
              <td>
                <input type="text" name="TAHUNMASUK" id="tahun-masuk" required>
              </td>
            </tr>
            <tr>
              <td>
                <label for="ukt">Jumlah UKT</label>
              </td>
              <td>
                <input type="number" name="UKT" id="ukt" required>
              </td>
            </tr>
            <tr>
              <td>
                <label for="status-ukt">Status UKT</label>
              </td>
              <td>
                <div class="dropdown">
                  <select name="STATUSUKT" id="status_ukt">
                    <option value="Sudah">Sudah</option>
                    <option value="Belum">Belum</option>
                  </select>
                </div>
              </td>
            </tr>
          </table>
          <div class="action">
            <button name="submit" type="submit" class="btn-primary">Tambah</button>
          </div>
        </form>
      </div>
    </main>
  </div>
  <script src="scripts/index.js"></script>
</body>
</html>
