<?php
require_once '../config/config.php';
global $koneksi;


$siswa = mysqli_query($koneksi, "SELECT * from ekskul");

while ($pro = mysqli_fetch_array($siswa)) {

?>
  <tr>
    <td><?= $no++; ?></td>
    <td><?= $pro['nama_ekskul'];  ?></td>
    <td><?= $pro['nama_pembina']; ?></td>

    <td><button class="btn btn-danger" data-toggle="modal" data-target="#hapus_karyawan<?= $pro['id_ekskul']; ?>"><i class="fa fa-trash"></i></button>
      <div class="modal fade" id="hapus_karyawan<?= $pro['id_ekskul']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                <input type="hidden" name="id_ekskul" value="<?= $pro['id_ekskul']; ?>" hidden>

                <label>Nama Ekstrakurikuler : </label>
                <b><?= $pro['nama_ekskul']; ?></b><br>
                <label>Nama Pembina : </label>
                <b><?= $pro['nama_pembina']; ?></b><br>




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
      <button type="button" class="btn btn-success ml-2" data-toggle="modal" data-target="#editadmin<?= $pro['id_ekskul']; ?>">
        <i class="fa fa-pencil-square-o fa-1x" aria-hidden="true"></i>
      </button>

      <!-- Modal -->
      <div class="modal fade" id="editadmin<?= $pro['id_ekskul']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Edit Data Ekstrakurikuler</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <form action="" method="POST">
                <input type="hidden" hidden name="id_ekskul" value="<?= $pro['id_ekskul']; ?>">
                <div class="form-group">
                  <label>Nama Ekstrakurikuler :</label>
                  <input type="text" class="form-control" autocomplete="off" name="nama_ekskul" required value="<?= $pro['nama_ekskul']; ?>">
                </div>

                <div class="form-group">
                  <label>Nama PEmbina : </label>
                  <input type="text" class="form-control" autocomplete="off" name="nama_pembina" required value="<?= $pro['nama_pembina']; ?>">
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


      <a href="?m=detailekskul&id_ekskul=<?= $pro['id_ekskul'];?>"><button type="button" class="btn btn-primary ml-2" data-toggle="modal" data-target="#lihatadmin<?= $pro['id_ekskul']; ?>">
        <i class="fa fa-eye" aria-hidden="true"></i>
      </button></a>
     

    </td>

  </tr>

<?php } ?>