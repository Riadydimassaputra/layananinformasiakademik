<?php
require_once '../config/config.php';
global $koneksi;


$siswa = mysqli_query($koneksi, "SELECT * FROM loker ");

while ($pro = mysqli_fetch_array($siswa)) {

?>
  <tr>

    <td><center>
      <div class="card" style="width: 23rem;">
        <img class="card-img-top" src=" <?php echo "images/loker/" . $pro['foto'] ?>" alt="Card image cap">
      </div>
</center>
</td>
<td>
<button class="btn btn-danger" data-toggle="modal" data-target="#hapus_karyawan<?= $pro['id_loker']; ?>"><i class="fa fa-trash"></i></button>
      <div class="modal fade" id="hapus_karyawan<?= $pro['id_loker']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                <input type="hidden" name="id_loker" value="<?= $pro['id_loker']; ?>" hidden>

             
                <img class="card-img-top" src=" <?php echo "images/loker/" . $pro['foto'] ?>" alt="Card image cap">
            



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