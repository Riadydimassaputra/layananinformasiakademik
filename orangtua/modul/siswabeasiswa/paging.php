<?php
require_once '../config/config.php';
global $koneksi;


$siswa = mysqli_query($koneksi, "SELECT * FROM databeasiswa");

while ($pro = mysqli_fetch_array($siswa)) {


?>
  <tr>
    <td><?= $no++; ?></td>
    <td><?= $pro['NIS'];  ?></td>
    <td><?= $pro['nama_siswa']; ?></td>
    <td><?= $pro['kelas']; ?></td>
    <td><?= $pro['nama_beasiswa']; ?></td>
  </tr>

<?php  } ?>