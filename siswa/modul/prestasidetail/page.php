<?php include 'comp/header.php'; ?>

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