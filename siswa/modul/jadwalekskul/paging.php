<?php
require_once '../config/config.php';
global $koneksi;


$siswa = mysqli_query($koneksi, "SELECT * from jadwalekskul ");
while ($pro = mysqli_fetch_array($siswa)) {

?>
  <tr>
    <td><?= $pro['hari'];  ?></td>
    <td><?= $pro['nama_ekskul']; ?></td>
    <td><?= $pro['waktu']; ?></td>

  </tr>

<?php } ?>