<?php
require_once '../config/config.php';
global $koneksi;

$id  = $_SESSION['idsppapp'];
$nama = $adm['nama_lengkap'];

$siswa = mysqli_query($koneksi, "SELECT * FROM laporanguru");



foreach ($siswa as $pro) :
?>




  <tr>
    <td><?= $no++ ?></td>
    <td><?= $pro['kategori_kegiatan']; ?></td>
    <td><?= $pro['tahunajaran']; ?></td>
    <td><?= $pro['nama_pengajar']; ?></td>
    <td><?= $pro['point_lap']; ?></td>


  

  </tr>
<?php endforeach; ?>