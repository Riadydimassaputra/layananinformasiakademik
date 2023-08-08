<?php
require_once '../config/config.php';
global $koneksi;


$siswa = mysqli_query($koneksi, "SELECT * from jadwalekskul");

while ($pro = mysqli_fetch_array($siswa)) {
?>
  <tr>
    <td><?= $no++;  ?></td>
    <td><?= $pro['hari'];  ?></td>
    <td><?= $pro['nama_ekskul']; ?></td>
    <td><?= $pro['waktu']; ?></td>


    <td><button class="btn btn-danger" data-toggle="modal" data-target="#hapus_karyawan<?= $pro['id_jadwalekskul']; ?>"><i class="fa fa-trash"></i></button>
      <div class="modal fade" id="hapus_karyawan<?= $pro['id_jadwalekskul']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                <input type="text" name="id_jadwalekskul" value="<?= $pro['id_jadwalekskul']; ?>" hidden>

                <label>Hari : </label>
                <b><?= $pro['hari']; ?></b><br>
                <label>Nama Ekstakurikuler : </label>
                <b><?= $pro['nama_ekskul']; ?></b><br>
                <label>Waktu : </label>
                <b><?= $pro['waktu']; ?></b><br>




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
      <button type="button" class="btn btn-success ml-2" data-toggle="modal" data-target="#editadmin<?= $pro['id_jadwalekskul']; ?>">
        <i class="fa fa-pencil-square-o fa-1x" aria-hidden="true"></i>
      </button>

      <!-- Modal -->
      <div class="modal fade" id="editadmin<?= $pro['id_jadwalekskul']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                <input type="hidden" hidden name="id_jadwalekskul" value="<?= $pro['id_jadwalekskul']; ?>">
                <div class="form-group">
                  <label>Hari :</label>
                  <input type="text" class="form-control" autocomplete="off" name="hari" required value="<?= $pro['hari']; ?>">
                </div>

                <div class="form-group">
                  <label>Nama Ekstrakurikuler : </label>
                  <input type="text" class="form-control" autocomplete="off" name="nama_ekskul" required value="<?= $pro['nama_ekskul']; ?>">
                </div>

                <div class="form-group">
                  <label>Waktu : </label>
                  <input type="text" class="form-control" autocomplete="off" name="waktu" required value="<?= $pro['waktu']; ?>">
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