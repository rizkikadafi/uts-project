<?php 
require 'utils.php';
if(!isset($_SESSION["login"])) {
  header("Location: login.php");
  exit;
}

$id = $_GET["id"];
$sql = "SELECT * FROM `data_dasar` WHERE ID=$id";
$data = mysqli_query($conn, $sql) -> fetch_assoc();

if(isset($_POST["save"])) {
  // var_dump($_POST);
  if(edit($_POST) > 0) {
    echo "
      <script>
        alert('Data berhasil diubah');
        document.location.href = 'index.php';
      </script>
    ";
  } else {
    echo "
      <script>
        alert('Data gagal diubah!');
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
  <title>Detail</title>
</head>
<body>
  <div class="container">
    <header>
      <h1 class="page-title">Edit Data Mahasiswa</h1>
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
            <input type="hidden" name="ID" id="id" value="<?= $data['ID'] ?>">
            <tr>
              <td>
                <label for="nama">Nama Lengkap</label>
              </td>
              <td>
                <input type="text" name="NAMA" id="nama" value="<?= $data["NAMA"]; ?>">
              </td>
            </tr>
            <tr>
              <td>
                <label for="nim">NIM </label>
              </td>
              <td>
                <input type="text" name="NIM" id="nim" value="<?= $data["NIM"]; ?>">
              </td>
            </tr>
            <tr>
              <td>
                <label for="alamat">Alamat </label>
              </td>
              <td>
                <input type="text" name="ALAMAT" id="alamat" value="<?= $data["ALAMAT"]; ?>">
              </td>
            </tr>
            <tr>
              <td>
                <label for="gender">Gender </label>
              </td>
              <td>
                <div class="dropdown">
                  <select name="GENDER" id="gender">
                    <?php if($data["GENDER"] === "Laki-laki") : ?>
                      <option value="Laki-laki" selected>Laki-laki</option>
                      <option value="Perempuan">Perempuan</option>
                    <?php endif ?>
                    <?php if($data["GENDER"] === "Perempuan") : ?>
                      <option value="Laki-laki">Laki-laki</option>
                      <option value="Perempuan" selected>Perempuan</option>
                    <?php endif ?>
                  </select>
                </div>
              </td>
            </tr>
            <tr>
              <td>
                <label for="telepon">No. Telepon </label>
              </td>
              <td>
                <input type="text" name="TELP" id="telepon" value="<?= $data["NO.TELP"]; ?>">
              </td>
            </tr>
            <tr>
              <td>
                <label for="prodi">Prodi</label>
              </td>
              <td>
                <input type="text" name="PRODI" id="prodi" value="<?= $data["PRODI"]; ?>">
              </td>
            </tr>
            <tr>
              <td>
                <label for="fakultas">Fakultas</label>
              </td>
              <td>
                <input type="text" name="FAKULTAS" id="fakultas" value="<?= $data["FAKULTAS"]; ?>">
              </td>
            </tr>
            <tr>
              <td>
                <label for="semester">Semester</label>
              </td>
              <td>
                <input type="text" name="SEMESTER" id="semester" value="<?= $data["SEMESTER"]; ?>">
              </td>
            </tr>
            <tr>
              <td>
                <label for="tahun-masuk">Tahun Masuk</label>
              </td>
              <td>
                <input type="text" name="TAHUNMASUK" id="tahun-masuk" value="<?= $data["TAHUNMASUK"]; ?>">
              </td>
            </tr>
            <tr>
              <td>
                <label for="ukt">Jumlah UKT</label>
              </td>
              <td>
                <input type="number" name="UKT" id="ukt" value="<?= $data["UKT"]; ?>">
              </td>
            </tr>
            <tr>
              <td>
                <label for="status-ukt">Status UKT</label>
              </td>
              <td>
                <div class="dropdown">
                  <select name="STATUSUKT" id="status_ukt">
                    <?php if($data["STATUSUKT"] === "Sudah") : ?>
                      <option value="Sudah" selected>Sudah</option>
                      <option value="Belum">Belum</option>
                    <?php endif ?>
                    <?php if($data["STATUSUKT"] === "Belum") : ?>
                      <option value="Sudah">Sudah</option>
                      <option value="Belum" selected>Belum</option>
                    <?php endif ?>
                  </select>
                </div>
              </td>
            </tr>
          </table>
          <div class="action">
            <button name="save" type="submit" class="btn-primary">Simpan</button>
          </div>
        </form>
      </div>
    </main>
  </div>
  <script src="scripts/index.js"></script>
</body>
</html>
