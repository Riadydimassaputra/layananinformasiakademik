<?php
require_once '../config/config.php';
global $koneksi;

$NIS = $adm['username'];
$siswa = mysqli_query($koneksi, "SELECT NIS ,kelas.nama_kelas,jurusan, jadwalmapel.id_jadwalmapel, jadwalmapel.hari, jadwalmapel.waktu, jadwalmapel.kd_mapel, jadwalmapel.kelas from siswa inner JOIN kelas on siswa.id_kls=kelas.id_kelas LEFT JOIN jadwalmapel ON CONCAT(kelas.nama_kelas,siswa.jurusan)=jadwalmapel.kelas Where siswa.NIS='$NIS'");

while ($pro = mysqli_fetch_array($siswa)) {


?>
  <tr>
    <td><?= $no++;  ?></td>
    <td><?= $pro['hari'];  ?></td>
    <td><?= $pro['waktu']; ?></td>
    <td><?= $pro['kd_mapel']; ?></td>
    <td><?= $pro['kelas']; ?></td>

  </tr>

<?php } ?>