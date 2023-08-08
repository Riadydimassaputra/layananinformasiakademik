<?php
require_once '../config/config.php';
global $koneksi;

$NIS = $_GET['NIS'];
$siswa = mysqli_query($koneksi, "SELECT * from prestasi where NIS='$NIS'");
while ($pro = mysqli_fetch_array($siswa)) {
?>
  <tr>
    <td><?= $no++;  ?></td>
    <td><?= $pro['nama_siswa'];  ?></td>
    <td><?= $pro['tahunajaran'];  ?></td>
    <td><?= $pro['nama_prestasi']; ?></td>
    <td><?= $pro['kategori']; ?></td>
    <td><?= $pro['keterangan']; ?></td>
    <td><?= $pro['point']; ?></td>

    <td><button class="btn btn-danger" data-toggle="modal" data-target="#hapus_karyawan<?= $pro['id_prestasi']; ?>"><i class="fa fa-trash"></i></button>
      <div class="modal fade" id="hapus_karyawan<?= $pro['id_prestasi']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                <input type="hidden" name="id_prestasi" value="<?= $pro['id_prestasi']; ?>" hidden>

                <label>NIS : </label>
                <b><?= $pro['NIS']; ?></b><br>
                <label>Nama Siswa : </label>
                <b><?= $pro['nama_siswa']; ?></b><br>
                <label>Tahun ajaran : </label>
                <b><?= $pro['tahunajaran']; ?></b><br>
                <label>Kategori : </label>
                <b><?= $pro['kategori']; ?></b><br>
                <label>Prestasi : </label>
                <b><?= $pro['nama_prestasi']; ?></b><br>
                <label>Keterangan : </label>
                <b><?= $pro['keterangan']; ?></b><br>
                <label>Point : </label>
                <b><?= $pro['point']; ?></b><br>




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