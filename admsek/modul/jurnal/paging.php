<?php
require_once '../config/config.php';
global $koneksi;

$id  = $_SESSION['idsppapp'];
$nama = $adm['nama_lengkap'];

$siswa = mysqli_query($koneksi, "SELECT * FROM veriflapguru WHERE status_verif='Sedang Diperiksa'");



foreach ($siswa as $pro) :
?>




  <tr>
    <td><?= $no++ ?></td>
    <td><?= $pro['kategori_kegiatan']; ?></td>
    <td><?= $pro['tahunajaran']; ?></td>
    <td><?= $pro['nama_pengajar']; ?></td>
    <td><?= $pro['status_verif']; ?></td>



    <td>

      <button class="btn btn-primary" data-toggle="modal" data-target="#lihat<?= $pro['id_veriflapguru']; ?>"><i class="fa fa-eye"></i></button>
      <div class="modal fade modal-dalog-lg" id="lihat<?= $pro['id_veriflapguru']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Detail</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <div class="form-group">
                <label>Laporan : </label><br>
                <object data="<?php echo '../dokumen/laporanguru/' . $pro['file_lap'] ?>" width="750" height="600"></object>
              </div>
            </div>
          </div>
        </div>
      </div>

      <button class="btn btn-success" data-toggle="modal" data-target="#verif<?= $pro['id_veriflapguru']; ?>"><i class="fa fa-thumbs-up"></i></button>
      <div class="modal fade" id="verif<?= $pro['id_veriflapguru']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Verifikasi Data</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <form action="" method="POST" enctype="multipart/form-data">
                <input type="hidden" name="id_veriflapguru" value="<?= $pro['id_veriflapguru']; ?>" hidden>
                <input type="hidden" name="kategori_kegiatan" value="<?= $pro['kategori_kegiatan']; ?>" hidden>
                <input type="hidden" name="tahunajaran" value="<?= $pro['tahunajaran']; ?>" hidden>
                <input type="hidden" name="nama_pengajar" value="<?= $pro['nama_pengajar']; ?>" hidden>
                <input type="hidden" name="file_lap" value="<?= $pro['file_lap']; ?>" hidden>

                <label>Jenis Laporan : </label>
                <b><?= $pro['kategori_kegiatan']; ?></b><br>
                <label>Tahun Ajaran : </label>
                <b><?= $pro['tahunajaran']; ?></b><br>
                <label>Pengajar : </label>
                <b><?= $pro['nama_pengajar']; ?></b><br>

                <div class="form-group">
                  <label>Status </label>
                  <select id="ok" name="status_verif" class="form-control" onchange="opsi(this)">
                    <option value="<?= $pro['status_verif']; ?>"><?= $pro['status_verif']; ?></option>
                    <option value="Diterima">Diterima</option>
                    <option value="Ditolak">Ditolak</option>
                  </select>
                </div>

                <script>
                  function opsi(value) {
                    var st = $("#ok").val();
                    if (st == "Diterima") {
                      document.getElementById("note").hidden = true;

                    } else {
                      document.getElementById("note").hidden = false;

                    }
                  }
                </script>


                <div class="form-group">
                  <label>Point</label>
                  <?php

                  $kategori = $pro['kategori_kegiatan'];
                  $Que = "select kegiatan.* from kegiatan where nama_kegiatan='$kategori'";
                  $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                  while ($hasil = mysqli_fetch_array($myQry)) {
                    echo "<input type='text' class='form-control' name='point_lap' autocomplete='off' value='$hasil[point]' readonly>";
                  }
                  ?>
                </div>

                <div class="form-group">
                  <label>Catatan</label>
                  <input type="text" name="catatan" id="note" class="form-control">




                  <div class="modal-footer">
                    <button type="submit" name="verif" class="btn btn-success">Verifikasi</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
                  </div>
              </form>
            </div>

          </div>
        </div>
      </div>





    </td>

  </tr>
<?php endforeach; ?>