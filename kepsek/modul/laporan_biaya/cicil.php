<?php
require_once '../config/config.php';
global $koneksi;


$SPP = "SPP";


$siswa = mysqli_query($koneksi, "SELECT * from tagihan inner join siswa on tagihan.NIS=siswa.NIS INNER join kelas on siswa.id_kls=kelas.id_kelas
  INNER join bayar on tagihan.id_tagihan=bayar.id_tag where tagihan.pembayaran LIKE '%" . $SPP . "%' AND tagihan.status='Cicilan' order by id_tagihan DESC");


$result = array();
while ($data = mysqli_fetch_array($siswa)) {
  $result[] = $data; //result dijadikan array 
}
foreach ($siswa as $pro) :
?>




  <tr>
    <td><?= $no++;  ?></td>
    <td><?= $pro['tahun']; ?>/<?= $pro['bulan']; ?></td>
    <td><?= $pro['NIS']; ?> - <?= $pro['nama_siswa']; ?></td>
    <td><?= $pro['nama_kelas']; ?>-<?= $pro['jurusan']; ?></td>
    <td><?= $pro['kategoripem']; ?></td>
    <td>Rp. <?= number_format($pro['bayar'], 0, ',', '.'); ?></td>
    <td>Rp. <?= number_format($pro['sisa_bayar'], 0, ',', '.'); ?></td>
    <td><?= $pro['status']; ?></td>

  </tr>

<?php endforeach; ?>