<?php
require_once '../config/config.php';
global $koneksi;


$SPP = "SPP";
$waktu = date('d-m-Y');
$waktu2 = date('Y-m-d');


$siswa = mysqli_query($koneksi, "SELECT * from tagihan inner join siswa on tagihan.NIS=siswa.NIS INNER join kelas on siswa.id_kls=kelas.id_kelas
  INNER join bayar on tagihan.id_tagihan=bayar.id_tag join orangtua ON orangtua.NIS=siswa.NIS where tagihan.pembayaran LIKE '%" . $SPP . "%' AND tagihan.status='Cicilan' order by id_tagihan DESC ");
while ($pro = mysqli_fetch_array($siswa)) {


  $tgl1 = $pro['tanggal_bayar'];
  $jatuh = date('d-m-Y', strtotime($tgl1));
  $tgl2 = date('d-m-Y', strtotime('+10 days', strtotime($tgl1)));
  $tgl3 = date('d-m-Y', strtotime('+10 days', strtotime($tgl2)));
?>




  <tr>
    <td><?= $no++;  ?></td>
    <td><?= $pro['tahun']; ?>/<?= $pro['bulan']; ?></td>
    <td><?= $pro['NIS']; ?> - <?= $pro['nama_siswa']; ?></td>
    <td><?= $pro['nama_kelas']; ?>-<?= $pro['jurusan']; ?></td>
    <td><?= $pro['kategoripem']; ?></td>
    <td>Rp. <?= number_format($pro['sisa_bayar'], 0, ',', '.'); ?></td>
    <td><button class="btn btn-danger" data-toggle="modal" data-target="#hapus_karyawan<?= $pro['id_tagihan']; ?>"><i class="fa fa-trash"></i></button>
      <div class="modal fade" id="hapus_karyawan<?= $pro['id_tagihan']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                <input type="text" name="id_tagihan" value="<?= $pro['id_tagihan']; ?>" hidden>

                <label>NIS : </label>
                <b><?= $pro['NIS']; ?></b><br>
                <label>Nama Lengkap : </label>
                <b><?= $pro['nama_siswa']; ?></b><br>
                <label>Kelas : </label>
                <b><?= $pro['kelas']; ?></b><br>
                <label>Jurusan : </label>
                <b><?= $pro['jurusan']; ?></b><br>
                <label>Pembayaran : </label>
                <b><?= $pro['bulan']; ?></b><br>
                <label>Nominal : </label>
                <b>Rp. <?= number_format($pro['bayar'], 0, ',', '.'); ?></b><br>
                <input type="text" hidden name="nominal" value="<?= $pro['bayar']; ?>">
                <input type="text" hidden name="sisa_bayar" value="<?= $pro['sisa_bayar']; ?>">
                <input type="text" hidden name="nom" value="<?= $pro['nominal']; ?>">
                <input type="text" hidden name="b_terakhir" value="<?= $pro['b_terakhir']; ?>">
                <input type="text" hidden name="tgl" value="<?= $pro['tanggal_bayar']; ?>">



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
    <td>

      <button class="btn btn-warning" name="cetak" data-toggle="modal" data-target="#cetak_karyawan<?= $pro['id_tagihan']; ?>">PERINGATAN</button>
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

      <button class="btn btn-danger" name="perjanjian" data-toggle="modal" data-target="#cetak_perjanjian<?= $pro['id_tagihan']; ?>">PERJANJIAN</button>
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