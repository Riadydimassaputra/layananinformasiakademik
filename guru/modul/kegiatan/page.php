<?php include 'comp/header.php'; ?>

<div class="main-content mb-1">
  <div class="section__content section__content--p30">

  </div>
  <div class="content-wrapper">
    <div class="content-header mr-2">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h3 class="col-sm-6 ml-5">Data Jadwal</h3>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="index.php?m=awal">Home</a></li>
            <li class="breadcrumb-item active">jadwal Mengajar</li>
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



            <form action="?m=cetakjadwalguru" target="_blank" method="POST" enctype="multipart/form-data">
              <div class="row mb-1">

                <input type="hidden" name="nama_guru" value="<?= $adm['nama_lengkap'] ?>">

                <div class="col-sm-2 mb-3 ml-3">
                  <button type="submit" id="search" name="find" class="btn btn-success ml-3">PRINT</button>
                </div>
              </div>
            </form>




            <!-- Tabel -->
            <div class="row">
              <div class="table-responsive table--no-card m-b-30 ml-5 mr-5">
                <table id="myTable" class="table table-borderless table-striped table-earning">
                  <thead>
                    <tr>
                      <th>No</th>
                      <th>Hari</th>
                      <th>Waktu</th>
                      <th>Mapel</th>
                      <th>Kelas</th>

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