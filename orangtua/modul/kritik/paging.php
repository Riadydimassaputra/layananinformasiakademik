<?php
require_once '../config/config.php';
global $koneksi;


$siswa = mysqli_query($koneksi, "SELECT * from kritik order by id_kritik ");
while ($pro = mysqli_fetch_array($siswa)) {

?>
  <tr>
    <td><?= $no++; ?></td>
    <td><?= nl2br($pro['kritik']);  ?></td>

  </tr>

<?php } ?>