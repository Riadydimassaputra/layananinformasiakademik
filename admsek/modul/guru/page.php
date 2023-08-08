<?php include 'comp/header.php'; ?>
<?php

if (isset($_POST['simpan'])) {
  insert_guru();
}

if (isset($_POST['hapus'])) {
  hapus_guru();
}

if (isset($_POST['edit'])) {
  edit_guru();
}

if (isset($_POST['import'])) {
  import_guru();
}

if (isset($_POST['reset'])) {
  reset_guru();
}

if (isset($_POST['SK'])) {
  SK_guru();
}

?>
<div class="main-content mb-1">
  <div class="section__content section__content--p30">

  </div>
  <div class="content-wrapper">
    <div class="content-header mr-2">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h3 class="col-sm-6 ml-5">Data Guru</h3>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="index.php?m=awal">Data Master</a></li>
            <li class="breadcrumb-item active">Guru</li>
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
              Tambah Data Guru
            </button>
            <button type="button" class="btn btn-primary mb-5 ml-5" data-toggle="modal" data-target="#importcsv">
              Import File CSV
            </button>

            <button class="btn btn-danger mb-5 ml-5" data-toggle="modal" data-target="#reset">RESET DATA GURU</button>
            <br>



            <!--Modul Reset Jadwal -->
            <div class="modal fade" id="reset" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Reset Data Guru</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                    <form action="" method="POST" enctype="multipart/form-data">
                      <div class="form-group">
                        <h2>ANDA YAKIN UNTUK MERESET DATA GURU???</h2>
                        <hr>

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
                    <h5 class="modal-title" id="exampleModalLabel">Tambah Data Guru</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                    <form action="" method="POST" enctype="multipart/form-data">
                      <div class="form-group">
                        <label>NIP :</label>
                        <input type="text" class="form-control" autocomplete="off" name="NIP" required>
                      </div>

                      <div class="form-group">
                        <label>Nama Guru : </label>
                        <input type="text" class="form-control" autocomplete="off" name="nama_guru" required>
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

                      <div class="form-group">
                        <label>Foto : </label>
                        <input type="file" class="form-control" autocomplete="off" name="foto" required>
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
                        <a href="formatguru.csv" class="btn btn-default">
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
                      <th>Guru</th>
                      <th>Biodata</th>
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