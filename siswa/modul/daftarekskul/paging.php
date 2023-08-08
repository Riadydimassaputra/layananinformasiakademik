<?php
require_once '../config/config.php';
global $koneksi;


$namasiswa = $adm['nama_lengkap'];
$siswa = mysqli_query($koneksi, "SELECT * from regisekskul where nama_siswa='$namasiswa' order by id_regisekskul");

while ($pro = mysqli_fetch_array($siswa)) {
?>
  <tr>
    <td><?= $no++; ?></td>
    <td><?= $pro['nama_siswa'];  ?></td>
    <td><?= $pro['nama_ekskul']; ?></td>

    <td><button class="btn btn-danger" data-toggle="modal" data-target="#hapus_karyawan<?= $pro['id_regisekskul']; ?>"><i class="fa fa-trash"></i></button>
      <div class="modal fade" id="hapus_karyawan<?= $pro['id_regisekskul']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                <input type="hidden" name="id_regisekskul" value="<?= $pro['id_regisekskul']; ?>" hidden>

                <label>Nama Lengkap : </label>
                <b><?= $pro['nama_siswa']; ?></b><br>
                <label>Nama Ekstrakurikuler : </label>
                <b><?= $pro['nama_ekskul']; ?></b><br>




                <div class="modal-footer">
                  <button type="submit" name="hapus" class="btn btn-danger">Hapus</button>
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
                </div>
              </form>
            </div>

          </div>
        </div>
      </div>

    </td>
  </tr>

<?php } ?>