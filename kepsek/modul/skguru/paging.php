<?php
require_once '../config/config.php';
global $koneksi;

$siswa = mysqli_query($koneksi, "SELECT * FROM sk group by nosk");

while ($pro = mysqli_fetch_array($siswa)) {

?>
  <tr>
    <td><?= $no++; ?></td>
    <td>
      NIP : <?= $pro['nosk']; ?><br>
      Nama Lengkap : <?= $pro['nama_guru']; ?><br>
      Jabatan : <?= $pro['status_guru']; ?><br>
      No. HP : <?= $pro['tahunajaran']; ?><br>
      Email : <?= $pro['tanggal']; ?><br>
    </td>

    <td>

      <a href="?m=detailsk&id_guru=<?= $pro['id_guru']; ?>" target="_blank"><button type="button" class="btn btn-success ml-2">
          <i class="fa fa-file-pdf-o" aria-hidden="true"></i>
        </button></a>



    </td>

  </tr>

<?php } ?>