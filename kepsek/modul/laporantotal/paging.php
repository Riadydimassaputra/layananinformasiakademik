<?php
include_once '../fungsi/fungsi.php';
global $koneksi;


$siswa = mysqli_query($koneksi, "SELECT nama_guru, tahunajaran, SUM(total) as hasil from prestasiguru group by nama_guru ORDER BY hasil DESC");


while ($pro = mysqli_fetch_array($siswa)) {
?>
  <tr>
    <td>
      <center><?= $no++ ?></center>
    </td>
    <td>
      <center><?= $pro['tahunajaran']; ?></center>
    </td>

    <td>
      <center><?= $pro['nama_guru']; ?></center>
    </td>
    <td>
      <center><?= $pro['hasil']; ?></center>
    </td>
  </tr>
<?php } ?>