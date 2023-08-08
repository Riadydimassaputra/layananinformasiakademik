<?php
require_once '../config/config.php';
global $koneksi;


$siswa = mysqli_query($koneksi, "SELECT * from siswa join kelas on siswa.id_kls=kelas.id_kelas");
while ($pro = mysqli_fetch_array($siswa)) {
?>
  <tr>
    <td><?= $no++;  ?></td>
    <td><?= $pro['nama_siswa']; ?></td>
    <td><?= $pro['nama_kelas']; ?> <?= $pro['jurusan']; ?></td>

    <td>  <a href="?m=prestasidetail&NIS=<?= $pro['NIS']; ?>"><button type="button" class="btn btn-primary mb-5 ml-5" data-toggle="modal">
                Lihat Prestasi
              </button></a>



    </td>

  </tr>

<?php } ?>