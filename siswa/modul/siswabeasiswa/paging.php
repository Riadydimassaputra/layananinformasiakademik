<?php
require_once '../config/config.php';
global $koneksi;

$nama = $adm['nama_lengkap'];
$siswa = mysqli_query($koneksi, "SELECT * FROM databeasiswa where nama_siswa='$nama'");

while ($pro = mysqli_fetch_array($siswa)) {


?>
  <tr>
    <td><?= $no++; ?></td>
    <td><?= $pro['NIS'];  ?></td>
    <td><?= $pro['nama_siswa']; ?></td>
    <td><?= $pro['kelas']; ?></td>
    <td><?= $pro['nama_beasiswa']; ?></td>
    <td>
    <a href="?m=cetakbuktibeasiswa&id_databeasiswa=<?=$pro['id_databeasiswa']?>" target="_blank"><button class="btn btn-success"><i class="fa fa-download"></i></button></a>
    </td>
  </tr>

<?php  } ?>