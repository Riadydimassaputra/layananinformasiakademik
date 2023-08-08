<?php
require_once '../config/config.php';
global $koneksi;

$id_ekskul = $_GET['id_ekskul'];
$siswa = mysqli_query($koneksi, "SELECT * from ekskul join regisekskul on ekskul.nama_ekskul=regisekskul.nama_ekskul join siswa on regisekskul.nama_siswa=siswa.nama_siswa join kelas on siswa.id_kls=kelas.id_kelas where ekskul.id_ekskul='$id_ekskul' AND siswa.status_siswa='Aktif'");
while ($pro = mysqli_fetch_array($siswa)) {
?>
  <tr>
    <td><?= $no++;  ?></td>
    <td><?= $pro['nama_siswa'];  ?></td>
    <td><?= $pro['nama_kelas'];  ?><?= $pro['jurusan'];  ?></td>

   

  </tr>

<?php } ?>