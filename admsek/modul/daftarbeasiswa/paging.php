<?php
require_once '../config/config.php';
global $koneksi;


$siswa = mysqli_query($koneksi, "SELECT * FROM lobeasiswa ");

while ($pro = mysqli_fetch_array($siswa)) {

?>
  <tr>

    <td><?= $pro['nama_beasiswa'];?></td>
    <td><?= $pro['tanggal'];?></td>
    <td><?= $pro['status_beasiswa'];?></td>
<td>
<button type="button" class="btn btn-success ml-2" data-toggle="modal" data-target="#editadmin<?= $pro['id_lobeasiswa']; ?>">
        <i class="fa fa-pencil-square-o fa-1x" aria-hidden="true"></i>
      </button>
<div class="modal fade" id="editadmin<?= $pro['id_lobeasiswa']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                <input type="hidden" hidden name="id_lobeasiswa" value="<?= $pro['id_lobeasiswa']; ?>">
                <div class="form-group">
                        <label>Nama Beasiswa : </label>
                        <input type="text" class="form-control" autocomplete="off" name="nama_beasiswa" value="<?= $pro['nama_beasiswa'];?>" required>
                      </div>

                      <div class="form-group">
                        <label>Tanggal : </label>
                        <input type="text" class="form-control" autocomplete="off" name="tanggal" value="<?= $pro['tanggal'];?>" required>
                      </div>

                      <div class="form-group">
                        <label>Status : </label>
                        <select class="form-control" autocomplete="off" name="status" required>
                          <option value="">--PILIH--</option>
                          <option value="Dibuka">DIBUKA</option>
                          <option value="Ditutup">DITUTUP</option>
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

      <button class="btn btn-primary" data-toggle="modal" data-target="#lihat<?= $pro['id_lobeasiswa']; ?>"><i class="fa fa-eye"></i></button>
      <div class="modal fade modal-dialog-lg" id="lihat<?= $pro['id_lobeasiswa']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg"  role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Persyarat Beasiswa</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
            
<textarea class="form-control">
          <?= $pro['syarat']; ?>
</textarea>
 
            </div> 
          </div></div></div>


      
</td>
  </tr>

<?php } ?>