<?php
require_once '../config/config.php';
global $koneksi;


$siswa = mysqli_query($koneksi, "SELECT id_siswa, NIS,nama_siswa,kelas.nama_kelas,jurusan from siswa JOIN kelas on 
  siswa.id_kls=kelas.id_kelas Where kelas.nama_kelas='X'");

while ($pro = mysqli_fetch_array($siswa)) {

?>
  <tr>
    <td><?= $no++; ?></td>
    <td><?= $pro['NIS'];  ?></td>
    <td><?= $pro['nama_siswa']; ?></td>
    <td><?= $pro['nama_kelas']; ?></td>
    <td><?= $pro['jurusan']; ?></td>



  </tr>

<?php } ?>