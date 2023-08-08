<?php
require_once '../config/config.php';
global $koneksi;

$id  = $_SESSION['idsppapp'];
$nama = $adm['nama_lengkap'];

$siswa = mysqli_query($koneksi, "SELECT * FROM veriflapguru WHERE nama_pengajar='$nama'");



foreach ($siswa as $pro) :
?>




  <tr>
    <td><?= $no++ ?></td>
    <td><?= $pro['kategori_kegiatan']; ?></td>
    <td><?= $pro['tahunajaran']; ?></td>
    <td><?= $pro['nama_pengajar']; ?></td>
    <td><?= $pro['status_verif']; ?></td>
    <td><?= $pro['catatan']; ?></td>


    <td><?php
        if ($pro['status_verif'] == 'Diterima') {
          echo '<button class="btn btn-danger" data-toggle="modal" data-target="#hapus_karyawan$pro["id_veriflapguru"];" hidden><i class="fa fa-trash"></i></button>';
        } else { ?>
        <button class="btn btn-danger" data-toggle="modal" data-target="#hapus_karyawan<?= $pro['id_veriflapguru']; ?>"><i class="fa fa-trash"></i></button> <?php } ?>
      <div class="modal fade" id="hapus_karyawan<?= $pro['id_veriflapguru']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                <input type="hidden" name="id_veriflapguru" value="<?= $pro['id_veriflapguru']; ?>" hidden>

                <label>Jenis Laporan : </label>
                <b><?= $pro['kategori_kegiatan']; ?></b><br>
                <label>Tahun Ajaran : </label>
                <b><?= $pro['tahunajaran']; ?></b><br>
                <label>Pengajar : </label>
                <b><?= $pro['nama_pengajar']; ?></b><br>




                <div class="modal-footer">
                  <button type="submit" name="hapus" class="btn btn-danger">Hapus</button>
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
                </div>
              </form>
            </div>

          </div>
        </div>
      </div>

      <button class="btn btn-primary" data-toggle="modal" data-target="#lihat<?= $pro['id_veriflapguru']; ?>"><i class="fa fa-eye"></i></button>
      <div class="modal fade modal-dalog-lg" id="lihat<?= $pro['id_veriflapguru']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Detail</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <div class="form-group">
                <label>Laporan : </label><br>
                <object data="<?php echo '../dokumen/laporanguru/' . $pro['file_lap'] ?>" width="750" height="600"></object>
              </div>
            </div>
          </div>
        </div>
      </div>





    </td>

  </tr>
<?php endforeach; ?>