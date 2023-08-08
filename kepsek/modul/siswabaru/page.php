<?php include 'comp/header.php'; ?>

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
            <form action="?m=cetaksiswabaru" target="_blank" method="POST" enctype="multipart/form-data">

              <div class="row mb-2">
                <div class="col-sm-2 ml-5">
                  <div class="form-group">
                    <select name="tahun" id="id_tahun" class="form-control ml-2" require="">
                      <?php
                      $Que = "select tb_tahun_ajaran.* from  tb_tahun_ajaran";
                      $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query sub Gudang " . mysqli_error($koneksi));
                      while ($hasil = mysqli_fetch_array($myQry)) {
                        echo "<option value='$hasil[tapel]' >
                                      $hasil[tapel]
                                      </option>";
                      }
                      ?>
                    </select>
                  </div>
                </div>

                <div class="col-sm-2">
                  <div class="form-group">
                    <button type="submit" id="search" name="transfer" class="btn btn-success ml-3">PRINT</button>
                  </div>
                </div>
              </div>
            </form>

            <br>




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
                      <th>Jurusan</th>



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