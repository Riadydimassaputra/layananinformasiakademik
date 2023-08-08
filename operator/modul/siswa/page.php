<?php include 'comp/header.php'; ?>
<?php

if (isset($_POST['simpan'])) {
  insert_siswa();
}

if (isset($_POST['hapus'])) {
  hapus_siswa();
}

if (isset($_POST['edit'])) {
  edit_siswa();
}

if (isset($_POST['import'])) {
  preview_siswa();
}

if (isset($_POST['transfer'])) {
  transfer_siswa();
}

?>
<div class="main-content mb-1">
  <div class="section__content section__content--p30">

  </div>
  <div class="content-wrapper">
    <div class="content-header mr-2">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h3 class="col-sm-6 ml-5">Data Siswa</h3>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="index.php?m=awal">Data Master</a></li>
            <li class="breadcrumb-item active">Siswa</li>
          </ol>
        </div><!-- /.col -->
      </div>
    </div>


    <!-- Main Content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-sm-12"><br>



            <!-- Button trigger modal -->
            <button type="button" class="btn btn-primary mb-5 ml-5" data-toggle="modal" data-target="#datamanual">
              Tambah Data Siswa
            </button>

            <button type="button" class="btn btn-primary mb-5 ml-5" data-toggle="modal" data-target="#importcsv">
              Import File CSV
            </button>
            <br>


            <!-- Modal -->
            <div class="modal fade bd-example-modal-lg" id="datamanual" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Tambah Data Siswa</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                    <form action="" method="POST" enctype="multipart/form-data">
                      <div class="form-group">
                        <label>NIS :</label>
                        <input type="text" class="form-control" autocomplete="off" name="NIS" required>
                      </div>

                      <div class="form-group">
                        <label>Nama Siswa : </label>
                        <input type="text" class="form-control" autocomplete="off" name="nama_siswa" required>
                      </div>

                      <div class="form-group">
                        <label>Kelas</label>
                        <select name="id_kls" class="form-control">
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
                        <input type="text" class="form-control" autocomplete="off" name="email" required>
                      </div>

                      <div class="form-group">
                        <label>Alamat : </label>
                        <input type="text" class="form-control" autocomplete="off" name="alamat" required>
                      </div>

                      <div class="form-group">
                        <label>No Telepon : </label>
                        <input type="text" class="form-control" autocomplete="off" name="notelp" required>
                      </div>








                      <input type="hidden" name="admin" value="<?= $adm['nama']; ?>" hidden>

                      <div class="modal-footer">
                        <button type="submit" name="simpan" class="btn btn-primary">Save changes</button>
                        <button type="cancel" class="btn btn-secondary" data-dismiss="modal">Close</button>
                      </div>
                    </form>

                  </div>

                </div>
              </div>
            </div>

            <!--Modul Import file csv -->
            <div class="modal fade" id="importcsv" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Tambah Data Siswa</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                    <form action="" method="POST" enctype="multipart/form-data">
                      <div class="form-group">
                        <a href="format.csv" class="btn btn-default">
                          <span class="glyphicon glyphicon-download"></span>
                          Download Format
                        </a><br><br>
                        <label>Upload File :</label>
                        <input type="file" class="form-control" autocomplete="off" name="file" accept=".csv" required>
                      </div>

                      <input type="hidden" name="admin" value="<?= $adm['nama']; ?>" hidden>

                      <div class="modal-footer">
                        <button type="submit" name="import" class="btn btn-primary">Import File</button>
                        <button type="cancel" class="btn btn-secondary" data-dismiss="modal">Close</button>
                      </div>
                    </form>

                  </div>


                </div>
              </div>
            </div>

            <!-- Tabel -->
            <div class="row">
              <div class="table-responsive table--no-card m-b-30 ml-5 mr-5">
                <table id="myTable" class="table table-borderless table-striped table-earning">
                  <thead>
                    <tr>
                      <th>No</th>
                      <th>NIS</th>
                      <th>Nama Siswa</th>
                      <th>Kelas</th>
                      <th>Status</th>

                      <th>aksi</th>

                    </tr>
                  </thead>

                  <tbody>
                    <?php
                    $no = 1;
                    include 'paging.php';
                    ?>

                  </tbody>
                </table>
              </div>
            </div>

            <script>
              $(document).ready(function() {
                $('#myTable').DataTable({
                  "lengthMenu": [25, 50, 100],

                });
              });
            </script>

            <!-- end table -->

          </div>
        </div>
      </div>
    </section>

  </div>

</div>
<?php include 'comp/footer.php'; ?>