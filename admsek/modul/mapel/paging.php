<?php
require_once '../config/config.php';
global $koneksi;


$siswa = mysqli_query($koneksi, "SELECT * FROM mapel");
while ($pro = mysqli_fetch_array($siswa)) {
?>

  <tr>
    <td><?= $no++; ?></td>
    <td><?= $pro['kode_mapel'];  ?></td>
    <td><?= $pro['nama_mapel']; ?></td>
    <td><?= $pro['kelas']; ?></td>

    <td><button class="btn btn-danger" data-toggle="modal" data-target="#hapus_karyawan<?= $pro['id_mapel']; ?>"><i class="fa fa-trash"></i></button>
      <div class="modal fade" id="hapus_karyawan<?= $pro['id_mapel']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                <input type="hidden" name="id_mapel" value="<?= $pro['id_mapel']; ?>" hidden>

                <label>Kode Mapel : </label>
                <b><?= $pro['kode_mapel']; ?></b><br>
                <label>Nama Mapel : </label>
                <b><?= $pro['nama_mapel']; ?></b><br>
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
      <button type="button" class="btn btn-success ml-2" data-toggle="modal" data-target="#editadmin<?= $pro['id_mapel']; ?>">
        <i class="fa fa-pencil-square-o fa-1x" aria-hidden="true"></i>
      </button>

      <!-- Modal -->
      <div class="modal fade" id="editadmin<?= $pro['id_mapel']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Edit Data Mapel</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <form action="" method="POST">
                <input type="hidden" hidden name="id_mapel" value="<?= $pro['id_mapel']; ?>">
                <div class="form-group">
                  <label>Kode Mata Pelajaran :</label>
                  <input type="text" class="form-control" autocomplete="off" name="kode_mapel" value="<?= $pro['kode_mapel']; ?>" required>
                </div>

                <div class="form-group">
                  <label>Mata Pelajaran :</label>
                  <input type="text" class="form-control" autocomplete="off" name="nama_mapel" value="<?= $pro['nama_mapel']; ?>" required>
                </div>

                <div class="form-group">
                  <label>Kelas </label>
                  <select name="nama_kelas">
                    <?php
                    $Que = "select kelas.* from kelas";
                    $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                    while ($hasil = mysqli_fetch_array($myQry)) {
                      echo "<option value='$hasil[nama_kelas]'>
                      $hasil[nama_kelas]
                </option>";
                    }
                    ?>
                  </select>
                </div>

                <div class="form-group">
                  <label>Jurusan</label>
                  <select name="jurusan">
                    <option value="">---PILIH JURUSAN---</option>
                    <option value="TKJ">TKJ</option>
                    <option value="MM">MM</option>
                    <option value="OTKP">OTKP</option>
                    <option value="TBSM">TBSM</option>
                  </select>
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