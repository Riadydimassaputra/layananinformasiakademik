<?php
require_once '../config/config.php';
global $koneksi;


$NIS = $adm['username'];

$siswa = mysqli_query($koneksi, "SELECT * from verifbeasiswa where NIS='$NIS'");
while ($pro = mysqli_fetch_array($siswa)) {
?>
  <tr>
    <td><?= $no++; ?></td>
    <td><?= $pro['nama_beasiswa'];  ?></td>
    <td><?= $pro['nama_siswa']; ?></td>
    <td><?= $pro['status_verif']; ?></td>
    <td><?= $pro['status_daftar']; ?></td>
    <td>

      <?php
      if ($pro['status_verif'] == 'Sudah Terverifikasi') {
        echo '<button hidden class="btn btn-danger" data-toggle="modal" data-target="#cetak_karyawan<?= $pro["id_verif"]; ?>"><i class="fa fa-trash" ></i></button> ';
      } else {
      ?>
        <button class="btn btn-danger" data-toggle="modal" data-target="#hapus_karyawan<?= $pro['id_verifbeasiswa']; ?>"><i class="fa fa-trash"></i></button> <?php } ?>
      <div class="modal fade" id="hapus_karyawan<?= $pro['id_verifbeasiswa']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                <input type="hidden" name="id_verifbeasiswa" value="<?= $pro['id_verifbeasiswa']; ?>" hidden>

                <label>Nama Beasiswa : </label>
                <b><?= $pro['nama_beasiswa']; ?></b><br>
                <label>Nama Siswa : </label>
                <b><?= $pro['nama_siswa']; ?></b><br>




                <div class="modal-footer">
                  <button type="submit" name="hapus" class="btn btn-danger">Hapus</button>
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
                </div>
              </form>
            </div>

          </div>
        </div>
      </div>







  </tr>

<?php } ?>