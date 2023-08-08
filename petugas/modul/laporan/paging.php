<?php
require_once '../config/config.php';
global $koneksi;


$siswa = mysqli_query($koneksi, "SELECT * from tagihan inner join siswa on tagihan.NIS=siswa.NIS INNER join kelas on siswa.id_kls=kelas.id_kelas 
  INNER join bayar on tagihan.id_tagihan=bayar.id_tag where bayar.status='Lunas' order by id_tagihan DESC ");

while ($pro = mysqli_fetch_array($siswa)) {

?>




  <tr>
    <td><?= $no++;  ?></td>
    <td><?= $pro['tahun']; ?>/<?= $pro['bulan']; ?></td>
    <td><?= $pro['NIS']; ?> - <?= $pro['nm_siswa']; ?></td>
    <td><?= $pro['kelas']; ?>-<?= $pro['jurusan']; ?></td>
    <td><?= $pro['kategoripem']; ?></td>
    <td>Rp. <?= number_format($pro['bayar'], 0, ',', '.'); ?></td>
    <td><?= $pro['status']; ?></td>
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
                <input type="hidden" name="id_tagihan" value="<?= $pro['id_tagihan']; ?>" hidden>

                <label>NIS : </label>
                <b><?= $pro['NIS']; ?></b><br>
                <label>Nama Lengkap : </label>
                <b><?= $pro['nm_siswa']; ?></b><br>
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