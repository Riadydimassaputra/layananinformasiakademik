<?php
require_once '../config/config.php';
global $koneksi;


$siswa = mysqli_query($koneksi, "SELECT * from jadwalmapel order by id_jadwalmapel ASC");
while ($pro = mysqli_fetch_array($siswa)) {
?>
  <tr>
    <td><?= $no++;  ?></td>
    <td><?= $pro['hari'];  ?></td>
    <td><?= $pro['waktu']; ?></td>
    <td><?= $pro['kd_mapel']; ?></td>
    <td><?= $pro['kelas']; ?></td>

    <td><button class="btn btn-danger" data-toggle="modal" data-target="#hapus_karyawan<?= $pro['id_jadwalmapel']; ?>"><i class="fa fa-trash"></i></button>
      <div class="modal fade" id="hapus_karyawan<?= $pro['id_jadwalmapel']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                <input type="hidden" name="id_jadwalmapel" value="<?= $pro['id_jadwalmapel']; ?>" hidden>

                <label>Hari : </label>
                <b><?= $pro['hari']; ?></b><br>
                <label>Waktu : </label>
                <b><?= $pro['waktu']; ?></b><br>
                <label>Kode Mapel : </label>
                <b><?= $pro['kd_mapel']; ?></b><br>
                <label>Kelas : </label>
                <b><?= $pro['kelas']; ?></b><br>




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

      <!-- Button trigger modal -->
      <button type="button" class="btn btn-success ml-2" data-toggle="modal" data-target="#editadmin<?= $pro['id_jadwalmapel']; ?>">
        <i class="fa fa-pencil-square-o fa-1x" aria-hidden="true"></i>
      </button>

      <!-- Modal -->
      <div class="modal fade" id="editadmin<?= $pro['id_jadwalmapel']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Edit Data </h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <form action="" method="POST">
                <input type="hidden" hidden name="id_jadwalmapel" value="<?= $pro['id_jadwalmapel']; ?>">
                <div class="form-group">
                  <label>Hari :</label>
                  <input type="text" class="form-control" autocomplete="off" name="nama_hari" required value="<?= $pro['hari']; ?>">
                </div>

                <div class="form-group">
                  <label>Waktu : </label>
                  <input type="text" class="form-control" autocomplete="off" name="waktu" required value="<?= $pro['waktu']; ?>">
                </div>

                <div class="form-group">
                  <label>Kode Mapel : </label>
                  <input type="text" class="form-control" autocomplete="off" name="kode_mapel" required value="<?= $pro['kd_mapel']; ?>">
                </div>

                <div class="form-group">
                  <label>Kelas : </label>
                  <input type="text" class="form-control" autocomplete="off" name="kelas" required value="<?= $pro['kelas']; ?>">
                </div>



                <input type="hidden" name="admin" value="<?= $adm['nama_lengkap']; ?>" hidden>



            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
              <button type="submit" name="edit" class="btn btn-primary">Save changes</button>
            </div>
            </form>

          </div>
        </div>
      </div>



    </td>

  </tr>

<?php } ?>