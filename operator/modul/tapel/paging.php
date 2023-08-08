<?php
require_once '../config/config.php';
global $koneksi;


$siswa = mysqli_query($koneksi, "SELECT * FROM tb_tahun_ajaran ");
while ($pro = mysqli_fetch_array($siswa)) {
?>




  <tr>
    <td><?= $no++;  ?></td>
    <td><?= $pro['tapel']; ?></td>
    <td><?= $pro['statustapel']; ?></td>

    <td>

      <!-- EDIT------------------------------------------------------------------------------------ -->

      <!-- Button trigger modal -->
      <button type="button" class="btn btn-success ml-2" data-toggle="modal" data-target="#editadmin<?= $pro['id_tapel']; ?>">
        <i class="fa fa-pencil-square-o fa-1x" aria-hidden="true"></i>
      </button>

      <!-- Modal -->
      <div class="modal fade" id="editadmin<?= $pro['id_tapel']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Edit Data Tahun Pelajaran</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <form action="" method="POST">
                <input type="hidden" hidden name="id_tapel" value="<?= $pro['id_tapel']; ?>">
                <div class="form-group">
                  <label>Tahun Pelajaran</label>
                  <input class="form-control" type="text" name="tapel" value="<?= $pro['tapel']; ?>" required>
                </div>
                <div class="form-group">
                  <label>Status Tahun Pelajaran</label>
                  <select class="form-control" name="statustapel">
                    <option value="">--PILIH--</option>
                    <option value="Aktif">AKTIF</option>
                    <option value="Tidak Aktif">TIDAK AKTIF</option>
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