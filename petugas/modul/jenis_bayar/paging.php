<?php
require_once '../config/config.php';
global $koneksi;


$siswa = mysqli_query($koneksi, "SELECT * FROM tbjenispem ");
while ($pro = mysqli_fetch_array($siswa)) {
?>
  <tr>
    <td><?= $no++;  ?></td>
    <td><?= $pro['nama_jenispem']; ?></td>
    <td><?= $pro['nominal']; ?></td>


    <td><button class="btn btn-danger" data-toggle="modal" data-target="#hapus_karyawan<?= $pro['id_jenispem']; ?>"><i class="fa fa-trash"></i></button>
      <div class="modal fade" id="hapus_karyawan<?= $pro['id_jenispem']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                <input type="hidden" name="id_jenispem" value="<?= $pro['id_jenispem']; ?>" hidden>

                <label>Jenis Pembayaran </label><br>
                <b><?= $pro['nama_jenispem']; ?></b><br>

                <label>Nominal : </label><br>
                <b><?= $pro['nominal']; ?></b><br>



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
      <button type="button" class="btn btn-success ml-2" data-toggle="modal" data-target="#editadmin<?= $pro['id_jenispem']; ?>">
        <i class="fa fa-pencil-square-o fa-1x" aria-hidden="true"></i>
      </button>

      <!-- Modal -->
      <div class="modal fade" id="editadmin<?= $pro['id_jenispem']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Edit Data Program Studi</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <form action="" method="POST">
                <input type="hidden" hidden name="id_jenispem" value="<?= $pro['id_jenispem']; ?>">
                <div class="form-group">
                  <div class="form-group">
                    <label>Jenis Pembayaran</label>
                    <input type="text" class="form-control" autocomplete="off" name="nama_jenispem" value="<?= $pro['nama_jenispem'] ?>" required>
                  </div>
                  <div class="form-group">
                    <label>Nominal</label>
                    <input type="text" class="form-control" autocomplete="off" value="<?= $pro['nominal'] ?>" name="nominal" required>
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
<?php } ?>