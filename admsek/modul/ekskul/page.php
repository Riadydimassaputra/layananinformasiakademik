<?php include 'comp/header.php'; ?>
<?php

if (isset($_POST['simpan'])) {
  insert_ekskul();
}

if (isset($_POST['hapus'])) {
  hapus_ekskul();
}

if (isset($_POST['edit'])) {
  edit_ekskul();
}



?>
<div class="main-content mb-1">
  <div class="section__content section__content--p30">

  </div>
  <div class="content-wrapper">
    <div class="content-header mr-2">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h3 class="col-sm-6 ml-5">Data Ekstrakurikuler</h3>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="index.php?m=awal">Data Master</a></li>
            <li class="breadcrumb-item active">Ekstrakurikuler</li>
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
              Tambah Data Ekstrakurikuler
            </button>

            <br>

            <!-- Modal -->
            <div class="modal fade bd-example-modal-lg" id="datamanual" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Tambah Data Ekstrakurikuler</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                    <form action="" method="POST" enctype="multipart/form-data">
                      <div class="form-group">
                        <label>Nama Ekstrakurikuler :</label>
                        <input type="text" class="form-control" autocomplete="off" name="nama_ekskul" required>
                      </div>

                      <div class="form-group">
                        <label>Nama Pembina : </label>
                        <input type="text" class="form-control" autocomplete="off" name="nama_pembina" required>
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


            <!-- Tabel -->
            <div class="row">
              <div class="table-responsive table--no-card m-b-30 ml-5 mr-5">
                <table id="myTable" class="table table-borderless table-striped table-earning" style="width:100%">
                  <thead>
                    <tr>
                      <th>No</th>
                      <th>Nama Ekstrakurikuler</th>
                      <th>Nama Pembina</th>
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