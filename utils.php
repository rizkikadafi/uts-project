<?php 
require 'debug.php';
session_start();
$conn = mysqli_connect("localhost", "root", "", "siakad");


function register($data) {
  global $conn;
  $fullname = $data["fullname"];
  $username = strtolower(stripslashes($data["username"]));
  $password = mysqli_real_escape_string($conn, $data["password"]);
  $password2 = mysqli_real_escape_string($conn, $data["password2"]);

  $result = mysqli_query(
    $conn, 
    "SELECT username FROM users WHERE username = '$username'"
  );

  if(mysqli_fetch_assoc($result)) {
      echo "<script>
          alert('Username telah digunakan!');
          </script>
      ";
      return false;
  }
  
  if($password !== $password2) {
      echo "<script>
          alert('Konfirmasi password salah!');
          </script>
      ";
      return false;
  }

  $password = password_hash($password, PASSWORD_DEFAULT);
  
  mysqli_query($conn, "INSERT INTO users VALUES(NULL, '$fullname', '$username', '$password')");

  return 1;
}

function login($data) {
  global $conn;

  $username = strtolower(stripslashes($data["username"]));
  $password = mysqli_real_escape_string($conn, $data["password"]);

  $result = mysqli_query($conn, "SELECT * FROM users WHERE username = '$username'");

  $row = mysqli_fetch_assoc($result);

  if(
      mysqli_num_rows($result) === 1 && 
      password_verify($password, $row["password"]) &&
      intval($data["captcha"]) === (intval($data["val1"])+intval($data["val2"]))
    ) {
    $_SESSION["login"] = true;
    $_SESSION["fullname"] = $row["fullname"];
    $_SESSION["username"] = $row["username"];
    header("Location: index.php");
    exit;
  } else if(
    intval($data["captcha"]) !== (intval($data["val1"]) + intval($data["val2"]))) {
    echo "<script>
          alert('Invalid Captcha!');
          </script>
      ";
  }
  else {
      echo "<script>
          alert('Username atau password salah!');
          </script>
      ";
      return false;
  }
  return true;
}



function insert($data) {
  global $conn;

  $nim = $data["NIM"];
  $nama = $data["NAMA"];
  $semester = $data["SEMESTER"];
  $alamat = $data["ALAMAT"];
  $telepon = $data["TELP"];
  $prodi = $data["PRODI"];
  $fakultas = $data["FAKULTAS"];
  $tahun_masuk = $data["TAHUNMASUK"];
  $ukt = $data["UKT"];
  $status_ukt = $data["STATUSUKT"];
  $gender = $data["GENDER"];

  $query = "INSERT INTO `data_dasar` (
            `ID`, `NIM`, `NAMA`, `SEMESTER`, `ALAMAT`, `NO.TELP`, `PRODI`,
            `FAKULTAS`, `TAHUNMASUK`, `UKT`, `STATUSUKT`, `GENDER`) 
            VALUES (
              NULL,'$nim', '$nama', $semester,'$alamat','$telepon','$prodi',
              '$fakultas', $tahun_masuk, $ukt, '$status_ukt','$gender');";
  
  mysqli_query($conn, $query);
  return mysqli_affected_rows($conn);
}

function edit($data) {
  global $conn;

  $id = $data["ID"];
  $nim = $data["NIM"];
  $nama = $data["NAMA"];
  $semester = $data["SEMESTER"];
  $alamat = $data["ALAMAT"];
  $telepon = $data["TELP"];
  $prodi = $data["PRODI"];
  $fakultas = $data["FAKULTAS"];
  $tahun_masuk = $data["TAHUNMASUK"];
  $ukt = $data["UKT"];
  $status_ukt = $data["STATUSUKT"];
  $gender = $data["GENDER"];

  $query = "UPDATE data_dasar SET 
            NIM = '$nim',
            NAMA = '$nama',
            SEMESTER = $semester,
            ALAMAT = '$alamat',
            `NO.TELP` = '$telepon',
            PRODI = '$prodi',
            FAKULTAS = '$fakultas',
            TAHUNMASUK = '$tahun_masuk',
            UKT = $ukt,
            STATUSUKT = '$status_ukt',
            GENDER = '$gender'
            WHERE id = $id;";
  
  mysqli_query($conn, $query);
  return mysqli_affected_rows($conn);
}

function delete($data) {
  global $conn;

  $query = "DELETE from data_dasar WHERE ID = $data;";
  
  mysqli_query($conn, $query);
  return mysqli_affected_rows($conn);
}

function delete_mutltiple($data) {
  global $conn;

  $selected = $data["selected"];
  $selected_item_str = implode("', '", $selected);

  $query = "DELETE from data_dasar WHERE ID IN ('$selected_item_str')";

  mysqli_query($conn, $query);
  return mysqli_affected_rows($conn);
}

?>