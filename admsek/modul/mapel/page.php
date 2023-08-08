<?php include 'comp/header.php'; ?>
<?php

if (isset($_POST['simpan'])) {
  insert_mapel();
}

if (isset($_POST['hapus'])) {
  hapus_mapel();
}

if (isset($_POST['edit'])) {
  edit_mapel();
}

if (isset($_POST['import'])) {
  import_mapel();
}

if (isset($_POST['reset'])) {
  reset_mapel();
}


?>
<div class="main-content mb-1">
  <div class="section__content section__content--p30">

  </div>
  <div class="content-wrapper">
    <div class="content-header mr-2">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h3 class="col-sm-6 ml-5">Data Mata Pelajaran</h3>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="index.php?m=awal">Data Master</a></li>
            <li class="breadcrumb-item active">Mata Pelajaran</li>
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
              Tambah Data Mata Pelajaran
            </button>


            <button type="button" class="btn btn-primary mb-5 ml-5" data-toggle="modal" data-target="#importcsv">
              Import File CSV
            </button>

            <button class="btn btn-danger mb-5 ml-5" data-toggle="modal" data-target="#reset">RESET MATA PELAJARAN</button>
            <br>

            <!--Modul Reset Jadwal -->
            <div class="modal fade" id="reset" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Reset Data Mapel</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                    <form action="" method="POST" enctype="multipart/form-data">
                      <div class="form-group">
                        <h2>ANDA YAKIN UNTUK MERESET MATA PELAJARAN???</h2>
                        <hr>

                        <label>Mata Pelajaran Kelas:</label>
                        <div class="form-group">
                          <select name="kelas" class="form-control">
                            <option value="">--PILIH KELAS--</option>
                            <option value="XTKJ">X TKJ</option>
                            <option value="XOTKP">X OTKP</option>
                            <option value="XMM">X MM</option>
                            <option value="XTBSM">X TBSM</option>
                            <option value="XITKJ">XI TKJ</option>
                            <option value="XIOTKP">XI OTKP</option>
                            <option value="XIMM">XI MM</option>
                            <option value="XITBSM">XI TBSM</option>
                            <option value="XIITKJ">XII TKJ</option>
                            <option value="XIIOTKP">XII OTKP</option>
                            <option value="XIIMM">XII MM</option>
                            <option value="XIITBSM">XII TBSM</option>
                          </select>
                        </div>

                        <div class="modal-footer">
                          <button type="submit" name="reset" class="btn btn-danger">RESET</button>
                          <button type="cancel" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        </div>

                      </div>
                    </form>

                  </div>


                </div>
              </div>
            </div>

            <!-- Modal -->
            <div class="modal fade" id="datamanual" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Tambah Data Mapel</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                    <form action="" method="POST" enctype="multipart/form-data">
                      <div class="form-group">
                        <label>Kode Mata Pelajaran :</label>
                        <input type="text" class="form-control" autocomplete="off" name="kode_mapel" required>
                      </div>

                      <div class="form-group">
                        <label>Mata Pelajaran :</label>
                        <input type="text" class="form-control" autocomplete="off" name="nama_mapel" required>
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
                    <h5 class="modal-title" id="exampleModalLabel">Tambah Data Mapel</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                    <form action="" method="POST" enctype="multipart/form-data">
                      <div class="form-group">
                        <a href="formatmapel.csv" class="btn btn-default">
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
                <table id="myTable" class="table table-borderless table-striped table-earning" style="width:100%">
                  <thead>
                    <tr>
                      <th>No</th>
                      <th>Kode Pelajaran</th>
                      <th>Mata Pelajaran</th>
                      <th>Kelas</th>

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
                $('#myTable').DataTable();
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