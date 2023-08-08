<?php include 'comp/header.php'; ?>
<?php


if (isset($_POST['hapus'])) {
  hapus_jadwalmapel();
}

if (isset($_POST['edit'])) {
  edit_jadwalmapel();
}

if (isset($_POST['import'])) {
  import_jadwalmapel();
}

if (isset($_POST['reset'])) {
  reset_jadwalmapel();
}


?>
<div class="main-content mb-1">
  <div class="section__content section__content--p30">

  </div>
  <div class="content-wrapper">
    <div class="content-header mr-2">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h3 class="col-sm-6 ml-5">Data Jadwal Pelajaran</h3>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="index.php?m=awal">Data Master</a></li>
            <li class="breadcrumb-item active">Jadwal Pelajaran</li>
          </ol>
        </div><!-- /.col -->
      </div>
    </div>


    <!-- Main Content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-sm-12"><br>


            <form action="?m=cetak" target="_blank" method="POST" enctype="multipart/form-data">
              <div class="row mb-1">
                <div class="col-sm-2  mb-5 ml-5">
                  <div class="form-group">
                    <select name="pilihkelas" id="id_cari" class="form-control" require>
                      <option value="">--PILIH KELAS--</option>
                      <option value="ALL">X</option>
                      <option value="ALLXI">XI</option>
                      <option value="ALLXII">XII</option>
                      <option value="XTKJ">X TKJ</option>
                      <option value="XMM">X MM</option>
                      <option value="XOTKP">X OTKP</option>
                      <option value="XTBSM">X TBSM</option>
                      <option value="XITKJ">XI TKJ</option>
                      <option value="XIMM">XI MM</option>
                      <option value="XIOTKP">XI OTKP</option>
                      <option value="XITBSM">XI TBSM</option>
                      <option value="XIITKJ">XII TKJ</option>
                      <option value="XIIMM">XII MM</option>
                      <option value="XIIOTKP">XII OTKP</option>
                      <option value="XIITBSM">XII TBSM</option>


                    </select>
                  </div>
                </div>
                <div class="col-sm-2">
                  <button type="submit" id="search" name="find" class="btn btn-success ml-3">PRINT</button>
                </div>
              </div>
            </form>








            <!-- Button trigger modal -->
            <a href="?m=addjadwal"> <button type="button" class="btn btn-primary mb-5 ml-5" data-toggle="modal">
                Tambah Jadwal Pelajaran
              </button></a>

            <button type="button" class="btn btn-primary mb-5 ml-5" data-toggle="modal" data-target="#importcsv">
              Import File CSV
            </button>

            <button class="btn btn-danger mb-5 ml-5" data-toggle="modal" data-target="#reset">RESET JADWAL PELAJARAN</button>

            <br>


            <!--Modul Reset Jadwal -->
            <div class="modal fade" id="reset" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Reset Data Jadwal</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                    <form action="" method="POST" enctype="multipart/form-data">
                      <div class="form-group">
                        <h2>ANDA YAKIN UNTUK MERESET JADWAL PELAJARAN???</h2>

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
                        <a href="formatjadwalmapel.csv" class="btn btn-default">
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
                      <th>Hari</th>
                      <th>Jam</th>
                      <th>Kode Mapel</th>
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