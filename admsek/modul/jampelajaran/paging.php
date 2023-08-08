<?php
require_once '../config/config.php';
global $koneksi;

//halaman
$batas = 25;
$halaman = isset($_GET['halaman']) ? (int)$_GET['halaman'] : 1;
$halaman_awal = ($halaman > 1) ? ($halaman * $batas) - $batas : 0;

$previous = $halaman - 1;
$next = $halaman + 1;

$data = mysqli_query($koneksi, "SELECT * FROM jam");
$jumlah_data = mysqli_num_rows($data);
if (mysqli_num_rows($data) > 0) {
  // Masukkan kode jika data ditemukan

} else {
  echo "Data pemilih tidak ditemukan";
}
$total_halaman = ceil($jumlah_data / $batas);


$nomor = $halaman_awal + 1;


// cari
if (isset($_POST['find'])) {
  $cari = $_POST['cari'];
  $siswa = mysqli_query($koneksi, "SELECT * from jam WHERE hari LIKE '%" . $cari . "%'");
} else {
  $siswa = mysqli_query($koneksi, "SELECT * from jam LIMIT $halaman_awal, $batas");
}

$result = array();
while ($data = mysqli_fetch_array($siswa)) {
  $result[] = $data; //result dijadikan array 
}
foreach ($siswa as $pro) :
?>
  <tr>
    <td><?= $no++; ?></td>
    <td><?= $pro['hari'];  ?></td>
    <td><?= $pro['waktu_mulai']; ?></td>
    <td><?= $pro['waktu_akhir']; ?></td>

    <td><button class="btn btn-danger" data-toggle="modal" data-target="#hapus_karyawan<?= $pro['id_jam']; ?>"><i class="fa fa-trash"></i></button>
      <div class="modal fade" id="hapus_karyawan<?= $pro['id_jam']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Apakah anda yakin?</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <form action="" method="POST" enctype="multipart/form-data">
                <input type="hidden" name="id_ekskul" value="<?= $pro['id_jam']; ?>" hidden>

                <label>Hari : </label>
                <b><?= $pro['hari']; ?></b><br>
                <label>Waktu Awal : </label>
                <b><?= $pro['waktu_mulai']; ?></b><br>
                <label>Waktu Akhir : </label>
                <b><?= $pro['waktu_akhir']; ?></b><br>




                <div class="modal-footer">
                  <button type="submit" name="hapus" class="btn btn-danger">Hapus</button>
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
                </div>
              </form>
            </div>

          </div>
        </div>
      </div>

      <!-- EDIT------------------------------------------------------------------------------------ -->

      <!-- Button trigger modal -->
      <button type="button" class="btn btn-success ml-2" data-toggle="modal" data-target="#editadmin<?= $pro['id_jam']; ?>">
        <i class="fa fa-pencil-square-o fa-1x" aria-hidden="true"></i>
      </button>

      <!-- Modal -->
      <div class="modal fade" id="editadmin<?= $pro['id_jam']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Edit Data </h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <form action="" method="POST">
                <input type="hidden" hidden name="id_ekskul" value="<?= $pro['id_jam']; ?>">
                <div class="form-group">
                  <label>Hari :</label>
                  <input type="text" class="form-control" autocomplete="off" name="nama_hari" required value="<?= $pro['hari']; ?>">
                </div>

                <div class="form-group">
                  <label>Waktu Awal : </label>
                  <input type="text" class="form-control" autocomplete="off" name="waktu_awal" required value="<?= $pro['waktu_mulai']; ?>">
                </div>

                <div class="form-group">
                  <label>Waktu Akhir : </label>
                  <input type="text" class="form-control" autocomplete="off" name="waktu_akhir" required value="<?= $pro['waktu_akhir']; ?>">
                </div>



                <input type="hidden" name="admin" value="<?= $adm['nama_lengkap']; ?>" hidden>



            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
              <button type="submit" name="edit" class="btn btn-primary">Save changes</button>
            </div>
            </form>

          </div>
        </div>
      </div>



    </td>

  </tr>

<?php endforeach; ?>