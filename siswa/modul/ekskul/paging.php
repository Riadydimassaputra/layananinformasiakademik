<?php
require_once '../config/config.php';
global $koneksi;


$siswa = mysqli_query($koneksi, "SELECT * from ekskul ");
while ($pro = mysqli_fetch_array($siswa)) {

?>
  <tr>
    <td><?= $no++; ?></td>
    <td><?= $pro['nama_ekskul'];  ?></td>
    <td><?= $pro['nama_pembina']; ?></td>


  </tr>

<?php } ?>