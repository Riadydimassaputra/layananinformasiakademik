<?php
require_once '../config/config.php';
global $koneksi;

//halaman
$batas = 25;
$halaman = isset($_GET['halaman']) ? (int)$_GET['halaman'] : 1;
$halaman_awal = ($halaman > 1) ? ($halaman * $batas) - $batas : 0;

$previous = $halaman - 1;
$next = $halaman + 1;

$data = mysqli_query($koneksi, "SELECT id_siswa NIS,nama_siswa,kelas.nama_kelas,jurusan from siswa inner JOIN kelas on 
siswa.id_kls=kelas.id_kelas");
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
  $siswa = mysqli_query($koneksi, "SELECT id_siswa, NIS,nama_siswa,kelas.nama_kelas,jurusan from siswa inner JOIN kelas on 
  siswa.id_kls=kelas.id_kelas WHERE nama_siswa LIKE '%" . $cari . "%'");
} else {
  $siswa = mysqli_query($koneksi, "SELECT id_siswa, NIS,nama_siswa,kelas.nama_kelas,jurusan from siswa inner JOIN kelas on 
  siswa.id_kls=kelas.id_kelas LIMIT $halaman_awal, $batas");
}

$result = array();
while ($data = mysqli_fetch_array($siswa)) {
  $result[] = $data; //result dijadikan array 
}
foreach ($siswa as $pro) :
?>
  <tr>
    <td><?= $no++; ?></td>
    <td><?= $pro['NIS'];  ?></td>
    <td><?= $pro['nama_siswa']; ?></td>
    <td><?= $pro['nama_kelas']; ?></td>
    <td><?= $pro['jurusan']; ?></td>

    <td><button class="btn btn-danger" data-toggle="modal" data-target="#hapus_karyawan<?= $pro['NIS']; ?>"><i class="fa fa-trash"></i></button>
      <div class="modal fade" id="hapus_karyawan<?= $pro['NIS']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                <input type="hidden" name="NIS" value="<?= $pro['NIS']; ?>" hidden>

                <label>NIS : </label>
                <b><?= $pro['NIS']; ?></b><br>
                <label>Nama Lengkap : </label>
                <b><?= $pro['nama_siswa']; ?></b><br>
                <label>Kelas : </label>
                <b><?= $pro['nama_kelas']; ?></b><br>
                <label>Jurusan : </label>
                <b><?= $pro['jurusan']; ?></b><br>



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
      <button type="button" class="btn btn-success ml-2" data-toggle="modal" data-target="#editadmin<?= $pro['NIS']; ?>">
        <i class="fa fa-pencil-square-o fa-1x" aria-hidden="true"></i>
      </button>

      <!-- Modal -->
      <div class="modal fade" id="editadmin<?= $pro['NIS']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Edit Data Kelas</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <form action="" method="POST">
                <input type="hidden" hidden name="id_siswa" value="<?= $pro['id_siswa']; ?>">
                <div class="form-group">
                  <label>NIS :</label>
                  <input type="text" class="form-control" autocomplete="off" name="NIS" required value="<?= $pro['NIS']; ?>">
                </div>

                <div class="form-group">
                  <label>Nama Siswa : </label>
                  <input type="text" class="form-control" autocomplete="off" name="nama_siswa" required value="<?= $pro['nama_siswa']; ?>">
                </div>

                <div class="form-group">
                  <label>Kelas</label>
                  <select name="id_kls" value="<?= $pro['nama_kelas']; ?>">
                    <?php
                    $Que = "select kelas.* from kelas";
                    $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                    while ($hasil = mysqli_fetch_array($myQry)) {
                      echo "<option value='$hasil[id_kelas]'>
                      $hasil[nama_kelas]
                </option>";
                    }
                    ?>
                  </select>

                </div>

                <div class="form-group">
                  <label>Jurusan</label>
                  <select name="jurusan">
                    <option value="">---PILIH JURUSAN---</option>
                    <option value="TKJ">TKJ</option>
                    <option value="MM">MM</option>
                    <option value="OTKP">OTKP</option>
                    <option value="TBSM">TBSM</option>
                  </select>
                </div>


                <input type="hidden" name="admin" value="<?= $adm['nama']; ?>" hidden>



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