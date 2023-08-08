<?php
require_once '../config/config.php';
global $koneksi;


$waktu = date('d-m-Y');
$waktu2 = date('Y-m-d');
$bulanIndo = [
  '01' => 'Januari',
  '02' => 'Februari',
  '03' => 'Maret',
  '04' => 'April',
  '05' => 'Mei',
  '06' => 'Juni',
  '07' => 'Juli',
  '08' => 'Agustus',
  '09' => 'September',
  '10' => 'Oktober',
  '11' => 'November',
  '12' => 'Desember',
];

$tgl     = $bulanIndo[date('m', strtotime($waktu))] . "  " . date('Y', strtotime($waktu));

$siswa = mysqli_query($koneksi, "SELECT * from tagihan join siswa on tagihan.NIS=siswa.NIS inner join kelas on siswa.id_kls=kelas.id_kelas join orangtua ON orangtua.NIS=siswa.NIS WHERE status='Belum Terbayarkan' ORDER BY pembayaran");

while ($pro = mysqli_fetch_array($siswa)) {
  $tgl1 = $pro['jatuhtempo'];
  $jatuh = date('d-m-Y', strtotime($tgl1));
  $tgl2 = date('d-m-Y', strtotime('+10 days', strtotime($tgl1)));
  $tgl3 = date('d-m-Y', strtotime('+10 days', strtotime($tgl2)));
?>
  <tr>
    <td><?= $pro['jenispem']; ?></td>
    <td><?= $pro['pembayaran']; ?></td>
    <td><?= $pro['nama_siswa']; ?></td>
    <td><?= $pro['nama_kelas']; ?>-<?= $pro['jurusan']; ?></td>
    <td>
      <?php
      if (($waktu2 < $pro['jatuhtempo'])) {
        echo '<button class="btn btn-warning" name="cetak" data-toggle="modal" data-target="#cetak_karyawan= $key["id_tagihan"];" disabled>PERINGATAN</button>';
      } else {
      ?>

        <button class="btn btn-warning" name="cetak" data-toggle="modal" data-target="#cetak_karyawan<?= $pro['id_tagihan']; ?>">PERINGATAN</button><?php } ?>
      <div class="modal fade bd-example-modal-lg" id="cetak_karyawan<?= $pro['id_tagihan']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Cetak Surat Pemberitahuan</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>

            <div class="modal-body">
              <form action="?m=peringatan&id_tagihan=<?= $pro['id_tagihan']; ?>" target="_blank" method="POST" enctype="multipart/form-data">

                <div class="table-responsive">
                  <table class="table table-borderless table-striped table-earning">
                    <thead>
                      <tr>
                        <td>Nomor : </td>
                        <td>
                          <input type="text" name="nomor" value="421.5/<?= $pro['id_tagihan']; ?>/SP/SMKGAMA/IX/2022">
                        </td>
                      <tr>
                        <td>Tanggal : </td>
                        <td>
                          <input type="text" name="tanggal" value="<?= $jatuh ?>">
                        </td>

                      </tr>
                      <tr>
                        <td>Tanggal Batas Bayar :</td>
                        <td>

                          <input type="text" name="batas_bayar" value="<?= $tgl2; ?>">
                        </td>
                      </tr>

                      <tr>
                        <td>Keterangan Pembayaran </td>
                        <td>

                          <input type="text" name="pembayaran" value="<?= $pro['pembayaran']; ?>">

                        </td>
                      </tr>

                      <tr>
                        <td>
                          <button type="submit" name="cetak" class="btn btn-warning">Cetak</button>
                        </td>
                        <td>
                          <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
                        </td>

                      </tr>
                    </thead>
                  </table>
                </div>
                <input type="hidden" hidden name="admin" value="<?= $adm['nama_user']; ?>">
              </form>
            </div>
          </div>
        </div>
      </div>

      <?php
      if (($waktu2 < $pro['jatuhtempo'])) {
        echo '<button class="btn btn-danger" name="perjanjian" data-toggle="modal" data-target="#cetak_perjanjian= $key["id_tagihan"];" disabled>PERJANJIAN</button>';
      } else {
      ?>

        <button class="btn btn-danger" name="perjanjian" data-toggle="modal" data-target="#cetak_perjanjian<?= $pro['id_tagihan']; ?>">PERJANJIAN</button><?php } ?>
      <div class="modal fade bd-example-modal-lg" id="cetak_perjanjian<?= $pro['id_tagihan']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Cetak Surat PERJANJIAN</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>

            <div class="modal-body">
              <form action="?m=perjanjian&id_tagihan=<?= $pro['id_tagihan']; ?>" target="_blank" method="POST" enctype="multipart/form-data">

                <div class="table-responsive">
                  <table class="table table-borderless table-striped table-earning">
                    <thead>
                      <tr>
                        <td>NIS : </td>
                        <td>
                          <input type="text" name="NIS" value="<?= $pro['NIS']; ?>">
                        </td>
                      <tr>
                        <td>Nama Siswa : </td>
                        <td>
                          <input type="text" name="nama" value="<?= $pro['nama_siswa']; ?>">
                        </td>

                      </tr>
                      <tr>
                        <td>Kelas :</td>
                        <td>

                          <input type="text" name="kelas" value="<?= $pro['nama_kelas']; ?>-<?= $pro['jurusan']; ?>">
                        </td>
                      </tr>

                      <tr>
                        <td>Keterangan Pembayaran </td>
                        <td>

                          <input type="text" name="pembayaran" value="<?= $pro['pembayaran']; ?>">

                        </td>
                      <tr>
                        <td>Sisa Pembayaran </td>
                        <td>

                          <input type="text" name="sisa_bayar" value="<?= $pro['sisa_bayar']; ?>">

                        </td>

                      <tr>
                        <td>Batas Bayar </td>
                        <td>

                          <input type="text" name="batas" value="<?= $tgl3; ?>">

                        </td>
                      </tr>

                      <tr>
                        <td>
                          <button type="submit" name="perjanjian" class="btn btn-danger">Cetak</button>
                        </td>
                        <td>
                          <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
                        </td>

                      </tr>
                    </thead>
                  </table>
                </div>
                <input type="hidden" hidden name="admin" value="<?= $adm['nama_user']; ?>">
              </form>
            </div>
          </div>
        </div>
      </div>

    </td>
    <td>
      <a href="https://wa.me/<?= $pro['no_telp'] ?>?text=Peringatan%20Pembayaran%20<?= $pro['pembayaran'] ?>%20<?= $pro['status'] ?>%20Silakan%20Cek%20di%20Website" target="_blank"><button type="button" class="btn btn-success"><i class="fa fa fa-phone"></i></button></a>
    </td>
  </tr>

<?php } ?>