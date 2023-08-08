<?php include 'comp/header.php'; ?>
<?php

if (isset($_POST['simpan'])) {
  insert_jadwalekskul();
}

if (isset($_POST['hapus'])) {
  hapus_jadwalekskul();
}

if (isset($_POST['edit'])) {
  edit_jadwalekskul();
}

?>
<div class="main-content mb-1">
  <div class="section__content section__content--p30">

  </div>
  <div class="content-wrapper">
    <div class="content-header mr-2">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h3 class="col-sm-6 ml-5">Data Jadwal Ekstrakurikuler</h3>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="index.php?m=awal">Data Master</a></li>
            <li class="breadcrumb-item active">Jadwal Ekstakurikuler</li>
          </ol>
        </div><!-- /.col -->
      </div>
    </div>


    <!-- Main Content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-sm-12"><br>

            <form action="?m=printjadwalekskul" target="_blank" method="POST" enctype="multipart/form-data">
              <div class="row mb-1">
                <div class="col-sm-2  mb-5 ml-5">
                  <button type="submit" id="search" name="find" class="btn btn-success ml-3">PRINT</button>
                </div>
              </div>
            </form>

            <!-- Button trigger modal -->
            <button type="button" class="btn btn-primary mb-5 ml-5" data-toggle="modal" data-target="#datamanual">
              Tambah Jadwal Ekstrakurikuler
            </button>

            <br>

            <!-- Modal -->
            <div class="modal fade bd-example-modal-lg" id="datamanual" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Tambah Data</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                    <form action="" method="POST" enctype="multipart/form-data">
                      <div class="form-group">
                        <label>Hari :</label>
                        <select class="form-control" name="hari">
                          <option value="">--PILIH HARI--</option>
                          <option value="Senin">SENIN</option>
                          <option value="Selasa">SELASA</option>
                          <option value="Rabu">RABU</option>
                          <option value="Kamis">KAMIS</option>
                          <option value="Jumat">JUMAT</option>
                          <option value="Sabtu">SABTU</option>
                          <option value="Minggu">MINGGU-</option>
                        </select>
                      </div>

                      <div class="form-group">
                        <label>Ekstakurikuler :</label>
                        <select class="select2" multiple="multiple" name="nama_ekskul">
                          <?php
                          $Que = "select ekskul.* from ekskul";
                          $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                          while ($hasil = mysqli_fetch_array($myQry)) {
                            echo "<option value='$hasil[nama_ekskul]'>
                      $hasil[nama_ekskul]
                </option>";
                          }
                          ?>
                        </select>
                      </div>

                      <div class="form-group">
                        <label>Waktu : </label>
                        <input type="text" class="form-control" autocomplete="off" name="waktu" required>
                      </div>




                      <input type="hidden" name="admin" value="<?= $adm['nama_lengkap']; ?>" hidden>

                      <div class="modal-footer">
                        <button type="submit" name="simpan" class="btn btn-primary">Save changes</button>
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
                      <th>Nama Ekstakurikuler</th>
                      <th>Waktu</th>
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