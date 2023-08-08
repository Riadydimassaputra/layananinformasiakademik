<?php
require_once '../config/config.php';
global $koneksi;


$siswa = mysqli_query($koneksi, "SELECT * FROM verifbeasiswa where status_verif='Belum Terverifikasi'");

while ($pro = mysqli_fetch_array($siswa)) {

?>
  <tr>

    <td><?= $pro['NIS'] ?></td>
    <td><?= $pro['nama_siswa'] ?></td>
    <td><?= $pro['kelas'] ?></td>
    <td>
      <button class="btn btn-primary" data-toggle="modal" data-target="#hapus_karyawan<?= $pro['NIS']; ?>"><i class="fa fa-eye"></i></button>
      <div class="modal fade modal-dalog-lg" id="hapus_karyawan<?= $pro['NIS']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Detail</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <form action="" method="POST" enctype="multipart/form-data">
                <input type="text" class="form-control" autocomplete="off" name="id_verifbeasiswa" value="<?= $pro['id_verifbeasiswa']; ?>" hidden>
                <input type="text" class="form-control" autocomplete="off" name="id_lobeasiswa" value="<?= $pro['id_lobeasiswa']; ?>" hidden>
                <div class="form-group">
                  <label>Nama Beasiswa : <?= $pro['nama_beasiswa']; ?></label>
                  <input type="text" class="form-control" autocomplete="off" name="nama_beasiswa" value="<?= $pro['nama_beasiswa']; ?>" hidden>
                </div>
                <div class="form-group">
                  <label>NIS : <?= $pro['NIS']; ?></label>
                  <input type="text" class="form-control" autocomplete="off" name="NIS" value="<?= $pro['NIS']; ?>" hidden>
                </div>

                <div class="form-group">
                  <label>Nama Siswa : <?= $pro['nama_siswa']; ?></label>
                  <input type="text" class="form-control" autocomplete="off" name="nama_siswa" value="<?= $pro['nama_siswa']; ?>" hidden>
                </div>

                <div class="form-group">
                  <label>Kelas : <?= $pro['kelas']; ?></label>
                  <input type="text" class="form-control" autocomplete="off" name="kelas" value="<?= $pro['kelas']; ?>" hidden>
                </div>

                <div class="form-group">
                  <label>Tahun Ajaran : </label>

                  <?php
                  $Que = "select tb_tahun_ajaran.* from tb_tahun_ajaran where statustapel='Aktif'";
                  $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                  while ($hasil = mysqli_fetch_array($myQry)) {
                    echo "<input type='text' class='form-control' name='tanggal' value='$hasil[tapel]' readonly";
                  }
                  ?>
                </div>

                <div class="form-group">
                  <label>Status Verifikasi : </label>
                  <select class="form-control" name="status_verif">
                    <option value="<?= $pro['status_verif']; ?>"><?= $pro['status_verif']; ?></option>
                    <option value="Sudah Terverifikasi">Sudah Terverifikasi</option>
                  </select>
                </div>

                <div class="form-group">
                  <label>Status Pendaftaran : </label>
                  <select class="form-control" name="status_daftar">
                    <option value="<?= $pro['status_daftar']; ?>"><?= $pro['status_daftar']; ?></option>
                    <option value="Diterima">Diterima</option>
                    <option value="Ditolak">Ditolak</option>
                  </select>
                </div>

                <?php
                if (isset($_POST['view'])) {
                  header('content-type: application/pdf');
                  readfile('../dokumen/beasiswa/' . $pro['file']);
                }
                ?>
                <div class="form-group">
                  <label>Bukti Persyaratan : </label><br>
                  <object data="<?php echo '../dokumen/beasiswa/' . $pro['file'] ?>" width="600" height="400"></object>
                </div>



                <div class="modal-footer">
                  <button type="submit" name="simpan" class="btn btn-success">Simpan</button>
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