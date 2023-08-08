<?php
require_once '../config/config.php';
global $koneksi;


$siswa = mysqli_query($koneksi, "SELECT id_siswa, NIS,nama_siswa,kelas.nama_kelas,jurusan,status_siswa, email, alamat_siswa, notelp_siswa, pasfoto from siswa inner JOIN kelas on 
  siswa.id_kls=kelas.id_kelas");

while ($pro = mysqli_fetch_array($siswa)) {

?>
  <tr>
    <td><?= $no++; ?></td>
    <td><?= $pro['NIS'];  ?></td>
    <td><?= $pro['nama_siswa']; ?></td>
    <td><?= $pro['nama_kelas']; ?><?= $pro['jurusan']; ?></td>
    <td><?= $pro['status_siswa']; ?></td>

    <td><button class="btn btn-danger" data-toggle="modal" data-target="#hapus_karyawan<?= $pro['NIS']; ?>"><i class="fa fa-trash"></i></button>
      <div class="modal fade" id="hapus_karyawan<?= $pro['NIS']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                <input type="hidden" name="NIS" value="<?= $pro['NIS']; ?>" hidden>

                <label>NIS : </label>
                <b><?= $pro['NIS']; ?></b><br>
                <label>Nama Lengkap : </label>
                <b><?= $pro['nama_siswa']; ?></b><br>
                <label>Kelas : </label>
                <b><?= $pro['nama_kelas']; ?></b><br>
                <label>Jurusan : </label>
                <b><?= $pro['jurusan']; ?></b><br>



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
      <button type="button" class="btn btn-success ml-2" data-toggle="modal" data-target="#editadmin<?= $pro['NIS']; ?>">
        <i class="fa fa-pencil-square-o fa-1x" aria-hidden="true"></i>
      </button>

      <!-- Modal -->
      <div class="modal fade bd-example-modal-lg" id="editadmin<?= $pro['NIS']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Edit Data Kelas</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <form action="" method="POST">
                <input type="hidden" hidden name="id_siswa" value="<?= $pro['id_siswa']; ?>">
                <div class="form-group">
                  <label>NIS :</label>
                  <input type="text" class="form-control" autocomplete="off" name="NIS" required value="<?= $pro['NIS']; ?>">
                </div>

                <div class="form-group">
                  <label>Nama Siswa : </label>
                  <input type="text" class="form-control" autocomplete="off" name="nama_siswa" required value="<?= $pro['nama_siswa']; ?>">
                </div>

                <div class="form-group">
                  <label>Kelas</label>
                  <select name="id_kls" value="<?= $pro['nama_kelas']; ?>" class="form-control">
                    <?php
                    $Que = "select kelas.* from kelas";
                    $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                    while ($hasil = mysqli_fetch_array($myQry)) {
                      echo "<option value='$hasil[id_kelas]'>
                      $hasil[nama_kelas]
                </option>";
                    }
                    ?>
                  </select>

                </div>

                <div class="form-group">
                  <label>Jurusan</label>
                  <select name="jurusan" class="form-control">
                    <option value="">---PILIH JURUSAN---</option>
                    <option value="TKJ">TKJ</option>
                    <option value="MM">MM</option>
                    <option value="OTKP">OTKP</option>
                    <option value="TBSM">TBSM</option>
                  </select>
                </div>

                <div class="form-group">
                  <label>Tahun Ajaran</label>
                  <select name="tapel" class="form-control">
                    <?php
                    $Que = "select tb_tahun_ajaran.* from tb_tahun_ajaran";
                    $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                    while ($hasil = mysqli_fetch_array($myQry)) {
                      echo "<option value='$hasil[tapel]'>
                      $hasil[tapel]
                </option>";
                    }
                    ?>
                  </select>

                </div>


                <div class="form-group">
                  <label>Email : </label>
                  <input type="text" class="form-control" autocomplete="off" name="email" value="<?= $pro['email']; ?>">
                </div>

                <div class="form-group">
                  <label>Alamat : </label>
                  <input type="text" class="form-control" autocomplete="off" name="alamat" value="<?= $pro['alamat_siswa']; ?>">
                </div>

                <div class="form-group">
                  <label>No Telepon : </label>
                  <input type="text" class="form-control" autocomplete="off" name="notelp" value="<?= $pro['notelp_siswa']; ?>">
                </div>

                <div class="form-group">
                  <label>Status : </label>
                  <select name="status" class="form-control">
                    <option value="">---PILIH---</option>
                    <option value="Aktif">Aktif</option>
                    <option value="Alumni">Alumni</option>
                    <option value="DO">DO</option>
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

      <button type="button" class="btn btn-primary ml-2" data-toggle="modal" data-target="#lihatdata<?= $pro['NIS']; ?>">
        <i class="fa fa-eye" aria-hidden="true"></i>
      </button>

      <!-- Modal -->
      <div class="modal fade bd-example-modal-lg" id="lihatdata<?= $pro['NIS']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Detail Data Siswa</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <label>NIS : </label>
              <b><?= $pro['NIS']; ?></b><br>
              <label>Nama Lengkap : </label>
              <b><?= $pro['nama_siswa']; ?></b><br>
              <label>Kelas : </label>
              <b><?= $pro['nama_kelas']; ?> <?= $pro['jurusan']; ?></b><br>
              <label>Email : </label>
              <b><?= $pro['email']; ?></b><br>
              <label>Alamat : </label>
              <b><?= $pro['alamat_siswa']; ?></b><br>
              <label>No Telepon : </label>
              <b><?= $pro['notelp_siswa']; ?></b><br>
              <label>Status : </label>
              <b><?= $pro['status_siswa']; ?></b><br>
              <label>Pas Foto : </label>
              <b>
                <div class="card" style="width: 18rem;">
                  <img class="card-img-top" src=" <?php echo "images/" . $pro['pasfoto'] ?>" alt="Card image cap">
                </div>
              </b><br>


            </div>

    </td>

  </tr>

<?php } ?>