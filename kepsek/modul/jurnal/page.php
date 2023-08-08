<?php include 'comp/header.php'; ?>
<?php

if (isset($_POST['simpan'])) {
  insert_jurnal();
}

if (isset($_POST['hapus'])) {
  hapus_jurnal();
}
error_reporting(0);

?>
<div class="main-content mb-1">
  <div class="section__content section__content--p30">

  </div>
  <div class="content-wrapper">
    <div class="content-header mr-2">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h3 class="col-sm-6 ml-5">Data Laporan</h3>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="index.php?m=awal">Home</a></li>
            <li class="breadcrumb-item active">Laporan</li>
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
                <button type="button" class="btn btn-primary mb-5 ml-5" data-toggle="modal" data-target="#exampleModal">
                  Upload Data Laporan<i class="fa fa-upload" aria-hidden="true">
                </button></i> <?php
                            } else {
                              echo ' <button type="button" class="btn btn-primary mb-5 ml-5" data-toggle="modal" data-target="#exampleModal">
              Upload Data Laporan<i class="fa fa-upload" aria-hidden="true">
            </button></i>';
                            }
                              ?>




              <!-- Button trigger modal -->



            <?php
            endforeach; ?>


            <!-- Modal -->
            <div class="modal fade modal-dialog-lg" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Upload Data Jurnal</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                    <form action="" method="POST" enctype="multipart/form-data">
                      <div class="form-group">
                        <label>Kegiatan </label>
                        <select name="kategori_kegiatan" class="form-control">
                          <?php
                          $Que = "select kegiatan.* from kegiatan";
                          $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                          while ($hasil = mysqli_fetch_array($myQry)) {
                            echo "<option value='$hasil[nama_kegiatan]'>
                      $hasil[nama_kegiatan]
                </option>";
                          }
                          ?>
                        </select>
                      </div>

                      <div class="form-group">
                        <label>Tahun Ajaran</label>
                        <?php
                        $Que = "select tb_tahun_ajaran.* from tb_tahun_ajaran where statustapel='Aktif'";
                        $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query sub Gudang " . mysqli_error($koneksi));
                        while ($hasil = mysqli_fetch_array($myQry)) {
                          echo "<input type='text' class='form-control' name='tahunajaran' value='$hasil[tapel]' readonly>";
                        }
                        ?>
                      </div>

                      <div class="form-group">
                        <label>Nama Pengajar</label>
                        <input type="text" class="form-control" autocomplete="off" name="nama_pengajar" value="<?= $adm['nama_lengkap']; ?>" readonly>
                      </div>

                      <div class="form-group">
                        <label>Upload File Laporan </label>
                        <input type="file" class="form-control" autocomplete="off" name="file" accept=".pdf" required>
                      </div>


                      <input type="hidden" name="user" value="<?= $adm['id']; ?>" hidden>

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
                <table id="myTable" class="table table-borderless table-striped table-earning">
                  <thead>
                    <tr>
                      <th>No</th>
                      <th>Kategori Laporan </th>
                      <th>Tahun Ajaran </th>
                      <th>Nama Pengajar </th>
                      <th>Status </th>
                      <th>Catatan </th>
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

</div>
<?php include 'comp/footer.php'; ?>