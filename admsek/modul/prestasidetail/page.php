<?php include 'comp/header.php'; ?>
<?php

if (isset($_POST['simpan'])) {
  simpan_prestasidetail();
}

if (isset($_POST['hapus'])) {
  hapus_prestasidetail();
}

?>
<div class="main-content mb-1">
  <div class="section__content section__content--p30">

  </div>
  <div class="content-wrapper">
    <div class="content-header mr-2">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h3 class="col-sm-6 ml-5">Prestasi Detail</h3>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="index.php?m=awal">Data Master</a></li>
            <li class="breadcrumb-item active">Prestasi Detail</li>
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
            <?php
            $siswa = mysqli_query($koneksi, "SELECT * from tb_tahun_ajaran where statustapel='Aktif'");
            $result = array();
            while ($data = mysqli_fetch_array($siswa)) {
              $result[] = $data; //result dijadikan array

            }

            foreach ($siswa as $key) :
            ?>

              <?php
              if (($key['statustapel'] == "Aktif")) { ?>
                <button type="button" class="btn btn-primary mb-5 ml-5" data-toggle="modal" data-target="#importcsv">
                  Tambah Data Prestasi
                </button> <?php
                        } else {
                          echo '<button type="button" class="btn btn-primary mb-5 ml-5" data-toggle="modal" data-target="#importcsv">
              Tambah Data Prestasi
            </button>';
                        }
                      endforeach; ?>



            <?php
            $NIS = $_GET['NIS'];
            $siswa = mysqli_query($koneksi, "SELECT * from siswa where NIS='$NIS'");
            while ($data = mysqli_fetch_array($siswa)) {
            ?>

              <br>

              <!--Modul Import file csv -->
              <div class="modal fade" id="importcsv" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title" id="exampleModalLabel">Tambah Data Prestasi</h5>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>
                    </div>
                    <div class="modal-body">
                      <form action="" method="POST" enctype="multipart/form-data">
                        <div class="form-group">
                          <label>NIS :</label>
                          <input type="text" class="form-control" autocomplete="off" name="NIS" value="<?= $data['NIS']; ?>" readonly>
                        </div>

                        <div class="form-group">
                          <label>Nama Siswa :</label>
                          <input type="text" class="form-control" autocomplete="off" name="nama_siswa" value="<?= $data['nama_siswa']; ?>" readonly>
                        </div>

                        <div class="form-group">
                          <label>Tahun Ajaran :</label>


                          <?php
                          $Que = "select tb_tahun_ajaran.* from tb_tahun_ajaran where statustapel='Aktif' ";
                          $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query sub Gudang " . mysqli_error($koneksi));
                          while ($hasil = mysqli_fetch_array($myQry)) {
                            echo "<input type='text' class='form-control' name='tahunajaran' value='$hasil[tapel]' readonly>";
                          }
                          ?>

                        </div>


                        <div class="form-group">
                          <label>Kategori Prestasi :</label>
                          <select class="form-control" name="kategori" id="kategori">
                            <option value="">--PILIH--</option>
                            <option value="Akademik">AKADEMIK</option>
                            <option value="Non Akademik">NON AKADEMIK</option>
                          </select>
                        </div>

                        <div class="form-group">
                          <label>Nama Prestasi :</label>
                          <input type="text" class="form-control" autocomplete="off" name="nama_prestasi">
                        </div>

                        <div class="form-group">
                          <label>Keterangan Prestasi :</label>
                          <select class="form-control" name="keterangan" id="ket" onchange="opsi(this)">
                            <option value="">--PILIH--</option>
                            <option value="Peringkat 1">Peringkat 1</option>
                            <option value="Peringkat 2">Peringkat 2</option>
                            <option value="Peringkat 3">Peringkat 3</option>
                            <option value="Ikut Partisipasi">Ikut Partisipasi</option>
                          </select>
                        </div>

                        <script>
                          function opsi(value) {
                            var ts = $("#ket").val();
                            if (ts == "Peringkat 1") {
                              document.getElementById("point").value = "30";
                            } else if (ts == "Peringkat 2") {
                              document.getElementById("point").value = "25";
                            } else if (ts == "Peringkat 3") {
                              document.getElementById("point").value = "20";
                            } else {
                              document.getElementById("point").value = "15";
                            }
                          }
                        </script>

                        <div class="form-group">
                          <label>Point :</label>
                          <input type="text" class="form-control" autocomplete="off" name="point" id="point">
                        </div>

                        <input type="hidden" name="admin" value="<?= $adm['nama']; ?>" hidden>

                        <div class="modal-footer">
                          <button type="submit" name="simpan" class="btn btn-primary">Simpan</button>
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
                        <th>Nama Siswa</th>
                        <th>Tahun Ajaran</th>
                        <th>Prestasi</th>
                        <th>Kategori</th>
                        <th>Keterangan</th>
                        <th>Point</th>
                        <th>Aksi</th>

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
<?php } ?>
</div>
<?php include 'comp/footer.php'; ?>