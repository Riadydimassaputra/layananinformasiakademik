<?php
require_once '../config/config.php';
global $koneksi;


$siswa = mysqli_query($koneksi, "SELECT * FROM kelas ");



foreach ($siswa as $pro) :
?>




  <tr>
    <td><?= $pro['id_kelas'];  ?></td>
    <td><?= $pro['nama_kelas']; ?></td>

    <td><button class="btn btn-danger" data-toggle="modal" data-target="#hapus_karyawan<?= $pro['id_kelas']; ?>"><i class="fa fa-trash"></i></button>
      <div class="modal fade" id="hapus_karyawan<?= $pro['id_kelas']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                <input type="hidden" name="id_kelas" value="<?= $pro['id_kelas']; ?>" hidden>

                <label>Kelas : </label>
                <b><?= $pro['nama_kelas']; ?></b><br>



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
      <button type="button" class="btn btn-success ml-2" data-toggle="modal" data-target="#editadmin<?= $pro['id_kelas']; ?>">
        <i class="fa fa-pencil-square-o fa-1x" aria-hidden="true"></i>
      </button>

      <!-- Modal -->
      <div class="modal fade" id="editadmin<?= $pro['id_kelas']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Edit Data Kelas</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <form action="" method="POST">
                <input type="hidden" hidden name="id_kelas" value="<?= $pro['id_kelas']; ?>">
                <div class="form-group">
                  <label>Kelas</label>
                  <input class="form-control" type="text" name="nama_kelas">
                </div>


                <input type="hidden" name="admin" value="<?= $adm['nama']; ?>" hidden>



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
<?php endforeach; ?>