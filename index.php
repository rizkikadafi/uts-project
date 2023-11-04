<?php 
require 'utils.php';
if(!isset($_SESSION["login"])) {
  header("Location: login.php");
  exit;
}

$sql = "SELECT * FROM `data_dasar`";
$result = mysqli_query($conn, $sql);

if(isset($_POST["delete"])) {
  if($_POST["confirm"] === "true") {
    if(delete_mutltiple($_POST) > 0) {
      echo "
        <script>
          alert('Data berhasil dihapus');
          document.location.href = 'index.php';
        </script>
      ";
    } else {
      echo "
        <script>
          alert('Data gagal dihapus!');
        </script>
      ";
    }
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
  <title>Data Siakad</title>
</head>
<body>
  <div class="container">
    <header>
      <h1 class="page-title">Siakad Dashboard</h1>
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
      <form action="" method="post">
        <div class="search">
          <div class="input-search">
            <label for="search">Cari data mahasiswa</label>
            <input type="text" name="search" id="search" placeholder="Cari berdasarkan nama, nim, prodi, dan fakultas..." autocomplete="off">
          </div>
          <div class="search-option-wrapper">
            <label for="search-option">Urut berdasarkan</label>
            <select name="search-option" id="search-option">
              <option value="NAMA">Nama</option>
              <option value="NIM">NIM</option>
              <option value="PRODI">Prodi</option>
              <option value="FAKULTAS">Fakultas</option>
            </select>
          </div>
          <div class="search-order-wrapper">
            <label for="search-order">Opsi Pengurutan</label>
            <select name="search-order" id="search-order">
              <option value="ASC">Ascending</option>
              <option value="DESC">Descending</option>
            </select>
          </div>
        </div>
        <div class="table-header">
          <h2 class="table-title">Data Mahasiswa</h2>
          <div class="operation">
            <button type="submit" name="delete" class="btn-primary">Hapus Data</button>
            <input type="hidden" class="confirm" name="confirm" value="">
            <a href="insert.php" class="btn-primary">Tambah Data</a>
          </div>
        </div>
        <div class="table-container">
          <table>
            <tr>
              <th class="select">PILIH</th>
              <th class="order">No</th>
              <th>NIM</th>
              <th>NAMA</th>
              <th>PRODI</th>
              <th>FAKULTAS</th>
              <th class="detail">DETAIL</th> 
            </tr>
            
            <?php $counter = 0 ?>
            <?php while ($row = $result->fetch_assoc()) : ?>
              <tr>
                <td class="select">
                  <input type="checkbox" name="selected[]" value=<?= $row["ID"]; ?>>
                </td>
                <td class="order"><?= ++$counter; ?></td>
                <td><?= $row["NIM"]; ?></td>
                <td><?= $row["NAMA"]; ?></td>
                <td><?= $row["PRODI"]; ?></td>
                <td><?= $row["FAKULTAS"]; ?></td>
                <td class="detail"><a href="detail.php?id=<?= $row["ID"] ?>" class="btn-primary">Detail</a></td>
              </tr>
            <?php endwhile; ?>
          </table>
        </div>
      </form>
    </main>
  </div>
  <script src="scripts/index.js"></script>
  <script src="scripts/search.js"></script>
</body>
</html>