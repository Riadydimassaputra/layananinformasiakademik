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
  preview_guru();
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
            <br>
            <form action="" method="POST">
              <div class="row mb-2">
                <div class="col-sm-6 ml-5">
                  <div class="form-group">
                    <input type="text" placeholder="Masukan Nama Siswa" name="cari" autocomplete="off" class="form-control" value="">
                  </div>
                </div>

                <div class="col-sm-2">
                  <button id="search" name="find" class="btn btn-success">Cari</button>
                </div>
              </div>
            </form>

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
                        <label>Mata Pelajaran : </label>
                        <input type="text" class="form-control" autocomplete="off" name="nama_mapel" required>
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
                    <h5 class="modal-title" id="exampleModalLabel">Tambah Data Guru</h5>
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
                <table class="table table-borderless table-striped table-earning">
                  <thead>
                    <tr>
                      <th>No</th>
                      <th>NIP</th>
                      <th>Nama Guru</th>
                      <th>Mata Pelajaran</th>

                      <th>aksi</th>

                    </tr>
                  </thead>
                  <?php
                  $no = 1;
                  ?>
                  <tbody>
                    <?php
                    $no = 1;
                    include 'paging.php';
                    ?>

                  </tbody>
                </table>
              </div>
            </div>

            <center>
              <ul class="pagination justify-content-center">
                <li class="page-item">
                  <a class="page-link" <?php if ($halaman > 1) {
                                          echo "href='?m=guru&halaman=$previous'";
                                        } ?>>Previous</a>
                </li>
                <?php
                for ($x = 1; $x <= $total_halaman; $x++) {
                ?>
                  <li class="page-item"><a class="page-link" href="?m=guru&halaman=<?php echo $x ?>"><?php echo $x; ?></a></li>
                <?php
                }
                ?>
                <li class="page-item">
                  <a class="page-link" <?php if ($halaman < $total_halaman) {
                                          echo "href='?m=guru&halaman=$next'";
                                        } ?>>Next</a>
                </li>
              </ul>
            </center>

            <!-- end table -->

          </div>
        </div>
      </div>
    </section>

  </div>

</div>
<?php include 'comp/footer.php'; ?>