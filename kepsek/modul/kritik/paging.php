<?php
require_once '../config/config.php';
global $koneksi;




$siswa = mysqli_query($koneksi, "SELECT * from kritik order by id_kritik ");


$result = array();
while ($data = mysqli_fetch_array($siswa)) {
  $result[] = $data; //result dijadikan array 
}
foreach ($siswa as $pro) :
?>
  <tr>
    <td><?= $no++; ?></td>
    <td><?= nl2br($pro['kritik']);  ?></td>

  </tr>

<?php endforeach; ?>