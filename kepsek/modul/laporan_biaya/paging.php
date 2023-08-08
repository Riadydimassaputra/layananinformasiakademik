<?php
require_once '../config/config.php';
global $koneksi;


$siswa = mysqli_query($koneksi, "SELECT * from tagihan inner join siswa on tagihan.NIS=siswa.NIS INNER join kelas on siswa.id_kls=kelas.id_kelas 
  INNER join bayar on tagihan.id_tagihan=bayar.id_tag where bayar.status='Lunas' order by id_tagihan DESC");


$result = array();
while ($data = mysqli_fetch_array($siswa)) {
  $result[] = $data; //result dijadikan array 
}
foreach ($siswa as $pro) :
?>




  <tr>
    <td><?= $no++;  ?></td>
    <td><?= $pro['tahun']; ?>/<?= $pro['bulan']; ?></td>
    <td><?= $pro['NIS']; ?> - <?= $pro['nm_siswa']; ?></td>
    <td><?= $pro['kelas']; ?>-<?= $pro['jurusan']; ?></td>
    <td><?= $pro['kategoripem']; ?></td>
    <td>Rp. <?= number_format($pro['bayar'], 0, ',', '.'); ?></td>
    <td><?= $pro['status']; ?></td>

  </tr>

<?php endforeach; ?>