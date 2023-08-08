<?php
require_once '../config/config.php';
global $koneksi;


$NIS = $adm['username'];

$siswa = mysqli_query($koneksi, "SELECT * from verifikasi inner join bayar on bayar.id_tag=verifikasi.id_tag_v where verifikasi.NIS='$NIS' ");
while ($pro = mysqli_fetch_array($siswa)) {
?>
  <tr>
    <td><?= $no++; ?></td>
    <td><?= $pro['kategori_pem'];  ?></td>
    <td><?= $pro['semester']; ?></td>
    <td><?= $pro['bayar_verif']; ?></td>
    <td><?= $pro['status_verif']; ?></td>
    <td>

      <?php
      if ($pro['status_verif'] == 'Sudah Verifikasi') {
        echo '<button hidden class="btn btn-danger" data-toggle="modal" data-target="#cetak_karyawan<?= $pro["id_verif"]; ?>"><i class="fa fa-trash" ></i></button> ';
      } else {
      ?>
        <button class="btn btn-danger" data-toggle="modal" data-target="#hapus_karyawan<?= $pro['id_verif']; ?>"><i class="fa fa-trash"></i></button> <?php } ?>
      <div class="modal fade" id="hapus_karyawan<?= $pro['id_verif']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                <input type="hidden" name="id_verif" value="<?= $pro['id_verif']; ?>" hidden>

                <label>Kategori Pembayaran : </label>
                <b><?= $pro['kategori_pem']; ?></b><br>
                <label>Semester : </label>
                <b><?= $pro['semester']; ?></b><br>
                <label>Nominal Pembayaran : </label>
                <b><?= $pro['bayar']; ?></b><br>
                <label>Status : </label>
                <b><?= $pro['status_verif']; ?></b><br>




                <div class="modal-footer">
                  <button type="submit" name="hapus" class="btn btn-danger">Hapus</button>
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
                </div>
              </form>
            </div>

          </div>
        </div>
      </div>



      <button class="btn btn-success" data-toggle="modal" data-target="#cetak_karyawan<?= $pro['id_verif']; ?>"><i class="fa fa-download"></i></button>
      <div class="modal fade" id="cetak_karyawan<?= $pro['id_verif']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Cetak Bukti</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <form action="?m=print" method="POST" enctype="multipart/form-data">
                <input type="hidden" name="id_verif" value="<?= $pro['id_verif']; ?>" hidden>

                <label>Kategori Pembayaran : </label>
                <b><?= $pro['kategori_pem']; ?></b><br>
                <input type="text" name="jenispem" value="<?= $pro['jenispem']; ?>" hidden>
                <input type="text" name="kategoripem" value="<?= $pro['kategoripem']; ?>" hidden>
                <label>Semester : </label>
                <b><?= $pro['semester']; ?></b><br>
                <label>NIS / Nama Siswa : </label>
                <b><?= $pro['NIS']; ?> / <?= $pro['nm_siswa']; ?></b><br>
                <input type="text" name="NIS" value="<?= $pro['NIS']; ?>">




                <div class="modal-footer">
                  <button type="submit" class="btn btn-success">Cetak</button>
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
                </div>
              </form>
            </div>

          </div>
        </div>
      </div>



  </tr>

<?php } ?>