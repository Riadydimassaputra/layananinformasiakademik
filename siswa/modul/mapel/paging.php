<?php
require_once '../config/config.php';
global $koneksi;


$siswa = mysqli_query($koneksi, "SELECT * FROM mapel");

while ($pro = mysqli_fetch_array($siswa)) {


?>
  <tr>
    <td><?= $no++; ?></td>
    <td><?= $pro['kode_mapel'];  ?></td>
    <td><?= $pro['nama_mapel']; ?></td>
    <td><?= $pro['kelas']; ?></td>
  </tr>

<?php  } ?>