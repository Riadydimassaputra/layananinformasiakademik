<?php
require_once '../config/config.php';
global $koneksi;

$nama = $adm['nama_lengkap'];
$siswa = mysqli_query($koneksi, "SELECT * FROM jadwalmapel JOIN sk ON sk.mapel=jadwalmapel.kd_mapel join tb_tahun_ajaran on tb_tahun_ajaran.tapel=sk.tahunajaran WHERE nama_guru='$nama' and tb_tahun_ajaran.statustapel='Aktif' ORDER BY id_jadwalmapel");



foreach ($siswa as $pro) :
?>




  <tr>
    <td><?= $no++ ?></td>
    <td><?= $pro['hari']; ?></td>
    <td><?= $pro['waktu']; ?></td>
    <td><?= $pro['kd_mapel']; ?></td>
    <td><?= $pro['kelas']; ?></td>



  </tr>
<?php endforeach; ?>