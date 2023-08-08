<?php
require_once '../config/config.php';
global $koneksi;




$siswa = mysqli_query($koneksi, "SELECT * from tagihan inner join siswa on tagihan.NIS=siswa.NIS inner join kelas on siswa.id_kls=kelas.id_kelas  order by pembayaran DESC");

$result = array();
while ($data = mysqli_fetch_array($siswa)) {
  $result[] = $data; //result dijadikan array 
}
foreach ($siswa as $pro) :
?>




  <tr>
    <td><?= $no++;  ?></td>
    <td><?= $pro['jenispem']; ?></td>
    <td><?= $pro['pembayaran']; ?></td>
    <td><?= $pro['NIS']; ?> - <?= $pro['nama_siswa']; ?></td>
    <td><?= $pro['nama_kelas']; ?>-<?= $pro['jurusan']; ?></td>
    <td>Rp. <?= number_format($pro['bayar'], 0, ',', '.'); ?></td>
    <td>Rp. <?= number_format($pro['sisa_bayar'], 0, ',', '.'); ?></td>

  </tr>

<?php endforeach; ?>