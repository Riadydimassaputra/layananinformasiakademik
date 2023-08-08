<?php
require_once '../config/config.php';
global $koneksi;

$id  = $_SESSION['idsppapp'];


$siswa = mysqli_query($koneksi, "SELECT * FROM laporan WHERE user_upload='$id'");



foreach ($siswa as $pro) :
?>




  <tr>
    <td>
      <center><?= $no++ ?></center>
    </td>
    <td>
      <center><?= $pro['tahun']; ?>/<?= $pro['bulan']; ?></center>
    </td>
    <td>
      <center><?= $pro['hari']; ?>--<?= $pro['jam']; ?></center>
    </td>
    <td>
      <center><?= $pro['kehadiran']; ?></center>
    </td>
    <td>
      <center><?= $pro['nama_kegiatan']; ?></center>
    </td>
    <td>
      <center><?= $pro['nama_user']; ?></center>
    </td>
    <td>
      <center><?= $pro['alasan']; ?></center>
    </td>
    <td>
      <center><img src="<?php echo "cam/" . $pro['foto'] ?>" style="width: 350px;"></center>
    </td>

    <td><button class="btn btn-danger" data-toggle="modal" data-target="#hapus_karyawan<?= $pro['id_lap']; ?>"><i class="fa fa-trash"></i></button>
      <div class="modal fade" id="hapus_karyawan<?= $pro['id_lap']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                <input type="hidden" name="id_lap" value="<?= $pro['id_lap']; ?>" hidden>

                <label>Nama Kegiatan : </label>
                <b><?= $pro['nama_kegiatan']; ?></b><br>

                <label>Nama Lengkap : </label>
                <b><?= $pro['nama_user']; ?></b><br>

                <label>Kehadiran : </label>
                <b><?= $pro['kehadiran']; ?></b><br>



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




    </td>

  </tr>
<?php endforeach; ?>