<?php
require_once '../config/config.php';
global $koneksi;

$batas = 70;
$halaman = isset($_GET['halaman']) ? (int)$_GET['halaman'] : 1;
$halaman_awal = ($halaman > 1) ? ($halaman * $batas) - $batas : 0;

$previous = $halaman - 1;
$next = $halaman + 1;

$data = mysqli_query($koneksi, "SELECT * FROM siswa");
$jumlah_data = mysqli_num_rows($data);
$total_halaman = ceil($jumlah_data / $batas);


$nomor = $halaman_awal + 1;


// cari
if (isset($_POST['go'])) {
  $nama_  = $_POST['nama_'];
  $cari = $_POST['cari'];
  $siswa = mysqli_query($koneksi, "SELECT * FROM siswa inner join kelas on siswa.id_kls=kelas.id_kelas WHERE nama_kelas='$cari' OR nama_siswa LIKE '%" . $nama_ . "%'");
} else {
  $siswa = mysqli_query($koneksi, "SELECT * FROM siswa inner join kelas on siswa.id_kls=kelas.id_kelas LIMIT $halaman_awal, $batas");
}

$result = array();
while ($data = mysqli_fetch_array($siswa)) {
  $result[] = $data; //result dijadikan array 
}
foreach ($siswa as $pro) :
?>




  <tr>
    <td><input type="checkbox" name="id_siswa[]" value="<?= $pro['NIS'] ?>"></td>
    <td><?= $pro['nama_siswa'];  ?></td>
    <td><?= $pro['nama_kelas'];  ?><?= $pro['jurusan'];  ?></td>





  </tr>
<?php endforeach; ?>