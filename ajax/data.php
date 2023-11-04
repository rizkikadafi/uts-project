<?php 

require '../utils.php';
$keyword = $_GET["keyword"];
$searchOption = $_GET["orderby"];
$searchOrder = $_GET["order"];
$query = "SELECT * FROM data_dasar WHERE
          NAMA LIKE '%$keyword%' OR
          NIM LIKE '%$keyword%' OR
          PRODI LIKE '%$keyword%' OR
          FAKULTAS LIKE '%$keyword%' 
          ORDER BY $searchOption $searchOrder;
  ";

$result = mysqli_query($conn, $query);

?>
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



