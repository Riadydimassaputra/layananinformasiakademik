<?php include 'comp/header.php'; ?>
<?php



if (isset($_POST['simpan'])) {
  insert_user();
}

if (isset($_POST['hapus'])) {
  hapus_user();
}

if (isset($_POST['edit'])) {
  edit_user();
}

if (isset($_POST['import'])) {
  import_user();
}

?>
<div class="main-content mb-1">
  <div class="section__content section__content--p30">

  </div>
  <div class="content-wrapper">
    <div class="content-header mr-2">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h3 class="col-sm-6 ml-5">Data User</h3>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="?m=awal">Data Master</a></li>
            <li class="breadcrumb-item active">User</li>
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
            <button type="button" class="btn btn-primary mb-5 ml-5" data-toggle="modal" data-target="#datamanualModal">
              Tambah Data User
            </button>

            <button type="button" class="btn btn-primary mb-5 ml-5" data-toggle="modal" data-target="#importcsv">
              Import File CSV
            </button>



            <!-- Modal -->
            <div class="modal fade" id="datamanualModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Tambah data User</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                    <form action="" method="POST" enctype="multipart/form-data">
                      <div class="form-group">
                        <label>Nama Lengkap</label>
                        <input type="text" class="form-control" autocomplete="off" name="nama_lengkap">
                      </div>
                      <div class="form-group">
                        <label>Username</label>
                        <input type="text" class="form-control" autocomplete="off" name="username">
                      </div>

                      <div class="form-group">
                        <label>Password</label>
                        <input type="password" class="form-control" autocomplete="off" name="password" id="inputpas">
                        <input type="checkbox" onclick="myFunction()">Tampilkan Password

                        <script>
                          function myFunction() {
                            var x = document.getElementById("inputpas");
                            if (x.type === "password") {
                              x.type = "text";
                            } else {
                              x.type = "password";
                            }
                          }
                        </script>
                      </div>

                      <div class="form-group">
                        <label>Status Sebagai</label>
                        <select class="form-control" name="status">
                          <option value='admsek'>Admin Sekolah</option>
                          <option value='petugasloket'>Petugas Loket</option>
                          <option value='Guru'>Guru</option>
                          <option value='kepsek'>Kepala Sekolah</option>
                          <option value='siswa'>Siswa</option>
                          <option value='operator'>operator</option>
                        </select>
                      </div>

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
                        <a href="formatuser.csv" class="btn btn-default">
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
                      <th>Nama Lengkap</th>
                      <th>Username</th>
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