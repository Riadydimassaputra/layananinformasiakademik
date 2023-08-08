<?php
require_once '../config/config.php';
global $koneksi;


$siswa = mysqli_query($koneksi, "SELECT * FROM orangtua join siswa on siswa.NIS=orangtua.NIS");

while ($pro = mysqli_fetch_array($siswa)) {

?>
  <tr>
    <td><?= $no++; ?></td>
    <td><?= $pro['nama_ortu'];  ?></td>
    <td><?= $pro['nama_siswa']; ?></td>
    <td><?= $pro['no_telp']; ?></td>
    <td><?= $pro['pekerjaan']; ?></td>

    <td><button class="btn btn-danger" data-toggle="modal" data-target="#hapus_karyawan<?= $pro['id_ortu']; ?>"><i class="fa fa-trash"></i></button>
      <div class="modal fade" id="hapus_karyawan<?= $pro['id_ortu']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                <input type="hidden" name="id_ortu" value="<?= $pro['id_ortu']; ?>" hidden>

                <label>Nama Orang Tua/Wali : </label>
                <b><?= $pro['nama_ortu']; ?></b><br>
                <label>Nama Siswa : </label>
                <b><?= $pro['nama_siswa']; ?></b><br>
         



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
      <button type="button" class="btn btn-success ml-2" data-toggle="modal" data-target="#editadmin<?= $pro['id_ortu']; ?>">
        <i class="fa fa-pencil-square-o fa-1x" aria-hidden="true"></i>
      </button>

      <!-- Modal -->
      <div class="modal fade" id="editadmin<?= $pro['id_ortu']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Edit Data Orang Tua/Wali</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <form action="" method="POST">
                <input type="hidden" hidden name="id_ortu" value="<?= $pro['id_ortu']; ?>">
                <div class="form-group">
                        <label>Nama Orang Tua/Wali :</label>
                        <input type="text" class="form-control" autocomplete="off" name="nama_ortu" value="<?= $pro ['nama_ortu'];?>" required>
                      </div>

                      <div class="form-group">
                        <label>Nama Siswa :  </label>
                        <select class="select2" name="nama_siswa">
                          <option value="Kosong">Kosong</option>
                          <?php
                          $Que = "select siswa.* from siswa";
                          $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                          while ($hasil = mysqli_fetch_array($myQry)) {
                            echo "<option value='$hasil[NIS]'>
                      $hasil[nama_siswa]
                </option>";
                          }
                          ?>
                        </select>
                      </div>

                      <div class="form-group">
                        <label>No. Telepon :</label>
                        <input type="text" class="form-control" autocomplete="off" name="notelp" required value="<?= $pro ['no_telp'];?>">
                      </div>

                      <div class="form-group">
                        <label>Pekerjaan :</label>
                        <input type="text" class="form-control" autocomplete="off" name="pekerjaan" required value="<?= $pro ['pekerjaan'];?>">
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