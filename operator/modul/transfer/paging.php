<?php
require_once '../config/config.php';
global $koneksi;


$siswa = mysqli_query($koneksi, "SELECT * FROM siswa  join kelas on siswa.id_kls=kelas.id_kelas ");

foreach ($siswa as $pro) :
?>




  <tr>
    <td><input type="checkbox" name="id_siswa[]" value="<?= $pro['nama_siswa'] ?>"></td>
    <td><?= $pro['nama_siswa'];  ?></td>
    <td><?= $pro['nama_kelas'];  ?><?= $pro['jurusan']; ?></td>





  </tr>
<?php endforeach; ?>