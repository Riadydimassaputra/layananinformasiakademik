<?php
require_once '../config/config.php';
global $koneksi;

//halaman

$siswa = mysqli_query($koneksi, "SELECT * from regisekskul  order by id_regisekskul");



$result = array();
while ($data = mysqli_fetch_array($siswa)) {
  $result[] = $data; //result dijadikan array 
}
foreach ($siswa as $pro) :
?>
  <tr>
    <td><?= $no++; ?></td>
    <td><?= $pro['nama_siswa'];  ?></td>
    <td><?= $pro['nama_ekskul']; ?></td>
  </tr>

<?php endforeach; ?>