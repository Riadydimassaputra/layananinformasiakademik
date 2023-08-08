<?php
require_once '../config/config.php';
global $koneksi;


$siswa = mysqli_query($koneksi, "SELECT * from verifikasi inner join tagihan on verifikasi.id_tag_v=tagihan.id_tagihan inner join siswa on verifikasi.NIS=siswa.NIS INNER JOIN kelas on siswa.id_kls=kelas.id_kelas");
while ($pro = mysqli_fetch_array($siswa)) {
?>
  <tr>
    <td><?= $no++; ?></td>
    <td><?= $pro['NIS'];  ?>/<?= $pro['nama_siswa'];  ?></td>
    <td><?= $pro['kategori_pem'];  ?></td>
    <td><?= $pro['semester']; ?></td>
    <td><?= $pro['bayar']; ?></td>
    <td><img src="<?php echo "../images/" . $pro['foto'] ?>" style="width: 350px;"></td>
    <td><?= $pro['status_verif']; ?></td>
    <td>

      <?php
      if ($pro['status_verif'] == 'Sudah Verifikasi') {
        echo '<button class="btn btn-success" name="tagihan" data-toggle="modal" data-target="#hapus_karyawan= $pro["id_verif"];" disabled>Telah DiVerifikasi</button>';
      } else {
      ?>
        <button class="btn btn-danger" data-toggle="modal" data-target="#hapus_karyawan<?= $pro['id_verif']; ?>">Verifikasi</button><?php } ?>
      <div class="modal fade bd-example-modal-lg" id="hapus_karyawan<?= $pro['id_verif']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Apakah anda yakin?</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>

            <div class="modal-body">
              <form action="" method="POST" enctype="multipart/form-data">
                <input type="text" name="id_tagihan" value="<?= $pro['id_tag_v']; ?>" hidden>
                <input type="text" name="id_verifikasi" value="<?= $pro['id_verif']; ?>" hidden>
                <div class="table-responsive">
                  <table class="table table-borderless table-striped table-earning">
                    <thead>
                      <input type="text" name="NIS" value="<?= $pro['NIS']; ?>" hidden>
                      <input type="text" name="nama_siswa" value="<?= $pro['nama_siswa']; ?>" hidden>
                      <input type="text" name="nama_kelas" value="<?= $pro['nama_kelas']; ?>" hidden>
                      <input type="text" name="jurusan" value="<?= $pro['jurusan']; ?>" hidden>
                      <input type="text" name="jenispem" value="<?= $pro['jenispem']; ?>" hidden>
                      <input type="number" name="nominal" value="<?= $pro['nominal']; ?>" hidden>
                      <input type="text" name="sisa_bayar" value="<?= $pro['sisa_bayar']; ?>" hidden>
                      <tr>
                        <td>Keterangan Pembayaran </td>
                        <td>

                          <input type="text" name="pembayaran" value="<?= $pro['pembayaran']; ?>" readonly>

                        </td>
                      </tr>

                      <tr>
                        <td>Semeester </td>
                        <td>

                          <input type="text" name="Semester" value="<?= $pro['Semester']; ?>" readonly>

                        </td>
                      </tr>

                      <tr>
                        <td>Tahun Ajaran </td>
                        <td>

                          <input type="text" name="jenispem" value="<?= $pro['jenispem']; ?>" readonly>

                        </td>
                      </tr>

                      <tr>
                        <td>Pembayaran yang Dilakukan </td>
                        <td>

                          <input type="number" name="onlinebayar" value="<?= $pro['bayar_verif']; ?>" readonly>

                        </td>
                      </tr>

                      <tr>
                        <td>Bukti Pembayaran </td>
                        <td>

                          <img src="<?php echo "../images/" . $pro['foto'] ?>" style="width: 350px;">

                        </td>
                      </tr>

                      <tr>
                        <td>
                          <button type="submit" name="verifikasibayar" class="btn btn-success">Verifikasi Pembayaran</button>
                        </td>
                        <td>
                          <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
                        </td>
                      </tr>
                    </thead>
                  </table>
                </div>
                <input type="hidden" hidden name="admin" value="<?= $adm['nama_lengkap']; ?>">
              </form>
            </div>
          </div>
        </div>
      </div>
    </td>


  </tr>

<?php } ?>