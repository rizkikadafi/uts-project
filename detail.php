<?php 
require 'utils.php';
if(!isset($_SESSION["login"])) {
  header("Location: login.php");
  exit;
}

$id = $_GET["id"];
$sql = "SELECT * FROM `data_dasar` WHERE ID=$id";
$data = mysqli_query($conn, $sql) -> fetch_assoc();

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
  <title>Detail</title>
</head>
<body>
<div class="container">
    <header>
      <h1 class="page-title">Detail Mahasiswa</h1>
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
        <form action="" method="get" class="disabled">
          <table>
            <tr>
              <td>
                <label for="nama">Nama Lengkap</label>
              </td>
              <td>
                <input type="text" name="NAMA" id="nama" value="<?= $data["NAMA"]; ?>" readonly>
              </td>
            </tr>
            <tr>
              <td>
                <label for="nim">NIM </label>
              </td>
              <td>
                <input type="text" name="NIM" id="nim" value="<?= $data["NIM"]; ?>" readonly>
              </td>
            </tr>
            <tr>
              <td>
                <label for="alamat">Alamat </label>
              </td>
              <td>
                <input type="text" name="ALAMAT" id="alamat" value="<?= $data["ALAMAT"]; ?>" readonly>
              </td>
            </tr>
            <tr>
              <td>
                <label for="gender">Gender</label>
              </td>
              <td>
                <input type="text" name="GENDER" id="gender" value="<?= $data["GENDER"]; ?>" readonly>
              </td>
            </tr>
            <tr>
              <td>
                <label for="telepon">No. Telepon </label>
              </td>
              <td>
                <input type="text" name="NO.TELP" id="telepon" value="<?= $data["NO.TELP"]; ?>" readonly>
              </td>
            </tr>
            <tr>
              <td>
                <label for="prodi">Prodi</label>
              </td>
              <td>
                <input type="text" name="PRODI" id="prodi" value="<?= $data["PRODI"]; ?>" readonly>
              </td>
            </tr>
            <tr>
              <td>
                <label for="fakultas">Fakultas</label>
              </td>
              <td>
                <input type="text" name="FAKULTAS" id="fakultas" value="<?= $data["FAKULTAS"]; ?>" readonly>
              </td>
            </tr>
            <tr>
              <td>
                <label for="semester">Semester</label>
              </td>
              <td>
                <input type="text" name="SEMESTER" id="semester" value="<?= $data["SEMESTER"]; ?>" readonly>
              </td>
            </tr>
            <tr>
              <td>
                <label for="tahun-masuk">Tahun Masuk</label>
              </td>
              <td>
                <input type="text" name="TAHUNMASUK" id="tahun-masuk" value="<?= $data["TAHUNMASUK"]; ?>" readonly>
              </td>
            </tr>
            <tr>
              <td>
                <label for="ukt">Jumlah UKT</label>
              </td>
              <td>
                <input type="number" name="UKT" id="ukt" value="<?= $data["UKT"]; ?>" readonly>
              </td>
            </tr>
            <tr>
              <td>
                <label for="status-ukt">Status UKT</label>
              </td>
              <td>
                <input type="text" name="STATUSUKT" id="status-ukt" value="<?= $data["STATUSUKT"]; ?>" readonly>
              </td>
            </tr>
          </table>
          <div class="action">
            <a href="update.php?id=<?= $data["ID"] ?>" class="btn-primary">Edit</a>
            <a href="delete.php?id=<?= $data["ID"] ?>" onclick="return confirm('Apakah anda yakin ingin menghapus data ini?');" class="btn-danger">Hapus</a>
          </div>
        </form>
      </div>
    </main>
  </div>
  <script src="scripts/index.js"></script>
</body>
</html>
