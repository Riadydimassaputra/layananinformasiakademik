<?php
require_once '../config/config.php';
global $koneksi;

$NIS = $_GET['NIS'];
$siswa = mysqli_query($koneksi, "SELECT * from prestasi where NIS='$NIS'");
while ($pro = mysqli_fetch_array($siswa)) {
?>
  <tr>
    <td><?= $no++;  ?></td>
    <td><?= $pro['nama_siswa'];  ?></td>
    <td><?= $pro['tahunajaran'];  ?></td>
    <td><?= $pro['nama_prestasi']; ?></td>
    <td><?= $pro['kategori']; ?></td>
    <td><?= $pro['keterangan']; ?></td>
    <td><?= $pro['point']; ?></td>

    

    
    </td>

  </tr>

<?php } ?>