<?php
require_once '../config/config.php';
global $koneksi;

$siswa = mysqli_query($koneksi, "SELECT * FROM guru");

while ($pro = mysqli_fetch_array($siswa)) {

?>
  <tr>
    <td><?= $no++; ?></td>
    <td>
      <div class="card" style="width: 18rem;">
        <img class="card-img-top" src=" <?php echo "images/" . $pro['foto'] ?>" alt="Card image cap">
      </div>
    </td>
    <td>
      NIP : <?= $pro['NIP']; ?><br>
      Nama Lengkap : <?= $pro['nama_guru']; ?><br>
      TTL : <?= $pro['TTL']; ?><br>
      Jabatan : <?= $pro['jabatan']; ?><br>
      No. HP : <?= $pro['nohp']; ?><br>
      Email : <?= $pro['email']; ?><br>
    </td>

    <td><button class="btn btn-danger" data-toggle="modal" data-target="#hapus_karyawan<?= $pro['id_guru']; ?>"><i class="fa fa-trash"></i></button>
      <div class="modal fade" id="hapus_karyawan<?= $pro['id_guru']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                <input type="hidden" name="id_guru" value="<?= $pro['id_guru']; ?>" hidden>

                <label>NIP : </label>
                <b><?= $pro['NIP']; ?></b><br>
                <label>Nama Guru : </label>
                <b><?= $pro['nama_guru']; ?></b><br>




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
      <button type="button" class="btn btn-success ml-2" data-toggle="modal" data-target="#editadmin<?= $pro['id_guru']; ?>">
        <i class="fa fa-pencil-square-o fa-1x" aria-hidden="true"></i>
      </button>

      <!-- Modal -->
      <div class="modal fade" id="editadmin<?= $pro['id_guru']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Edit Data Guru</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <form action="" method="POST">
                <input type="hidden" hidden name="id_guru" value="<?= $pro['id_guru']; ?>">
                <div class="form-group">
                  <label>NIP :</label>
                  <input type="text" class="form-control" autocomplete="off" name="NIP" required value="<?= $pro['NIP']; ?>">
                </div>

                <div class="form-group">
                  <label>Nama Guru : </label>
                  <input type="text" class="form-control" autocomplete="off" name="nama_guru" required value="<?= $pro['nama_guru']; ?>">
                </div>

                <div class="form-group">
                  <label>Nama Mata Pelajaran : </label>
                  <input type="text" class="form-control" autocomplete="off" name="nama_mapel" required value="<?= $pro['mapel']; ?>">
                </div>

                <div class="form-group">
                  <label>TTL : </label>
                  <input type="text" class="form-control" autocomplete="off" name="ttl" required>
                </div>

                <div class="form-group">
                  <label>Jabatan : </label>
                  <input type="text" class="form-control" autocomplete="off" name="jabatan" required>
                </div>

                <div class="form-group">
                  <label>No. Hp : </label>
                  <input type="text" class="form-control" autocomplete="off" name="nohp" required>
                </div>

                <div class="form-group">
                  <label>Email : </label>
                  <input type="text" class="form-control" autocomplete="off" name="email" required>
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


      <button type="button" class="btn btn-primary ml-2" data-toggle="modal" data-target="#skadmin<?= $pro['id_guru']; ?>">
        <i class="fa fa-id-card" aria-hidden="true"></i>
      </button>

      <!-- Modal -->
      <div class="modal fade modal-dialog-lg" id="skadmin<?= $pro['id_guru']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Tambah Data SK Guru</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <form action="" method="POST">
                <input type="hidden" hidden name="id_guru" value="<?= $pro['id_guru']; ?>">
                <div class="form-group">
                  <label>Nomor :</label>
                  <input type="text" class="form-control" autocomplete="off" name="nosk" value="421.2/<?= $pro['id_guru']; ?>/SK-GAMA/SMK/<?php echo date('Y'); ?>" readonly>
                </div>
                <div class="form-group">
                  <label>NIP :</label>
                  <input type="text" class="form-control" autocomplete="off" name="NIP" value="<?= $pro['NIP']; ?>">
                </div>

                <div class="form-group">
                  <label>Nama Guru : </label>
                  <input type="text" class="form-control" autocomplete="off" name="nama_guru" required value="<?= $pro['nama_guru']; ?>">
                </div>

                <div class="form-group">
                  <label>Nama Mata Pelajaran : </label>
                  <select class="select2" multiple="multiple" name="nama_mapel[]">
                    <?php
                    $Que = "select mapel.* from mapel";
                    $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                    while ($hasil = mysqli_fetch_array($myQry)) {
                      echo "<option value='$hasil[kode_mapel]'>
                      $hasil[nama_mapel]-$hasil[kelas]
                </option>";
                    }
                    ?>
                  </select>
                </div>

                <div class="form-group">
                  <label>Tahun Ajaran : </label>

                  <?php
                  $Que = "select tb_tahun_ajaran.* from tb_tahun_ajaran where statustapel='Aktif'";
                  $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                  while ($hasil = mysqli_fetch_array($myQry)) {
                    echo "<input type='text' class='form-control' name='tahunajaran' value='$hasil[tapel]' readonly>";
                  }
                  ?>

                </div>

                <div class="form-group">
                  <label>Jabatan : </label>
                  <select name="jabatan" class="form-control">
                    <option value="Tetap">Tetap</option>
                    <option value="Honor">Honor</option>
                  </select>
                </div>

                <div class="form-group">
                  <label>Tanggal : </label>
                  <input type="text" class="form-control" autocomplete="off" name="tanggal" value="<?php echo date('d-m-Y'); ?>" readonly>
                </div>


                <input type="hidden" name="admin" value="<?= $adm['nama']; ?>" hidden>



            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
              <button type="submit" name="SK" class="btn btn-primary">Save changes</button>
            </div>
            </form>

          </div>
        </div>
      </div>


      <a href="?m=detailsk&id_guru=<?= $pro['id_guru']; ?>" target="_blank"><button type="button" class="btn btn-success ml-2">
          <i class="fa fa-file-pdf-o" aria-hidden="true"></i>
        </button></a>



    </td>

  </tr>

<?php } ?>