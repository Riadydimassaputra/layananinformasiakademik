<?php include 'comp/header.php'; ?>
<?php

if (isset($_POST['simpan'])) {
  insert_lobeasiswa();
}

if (isset($_POST['edit'])) {
  hapus_lobeasiswa();
}
?>
<div class="main-content mb-1">
  <div class="section__content section__content--p30">

  </div>
  <div class="content-wrapper">
    <div class="content-header mr-2">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h3 class="col-sm-6 ml-5">Informasi Beasiswa SMK GAMA</h3>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="index.php?m=awal">Data Master</a></li>
            <li class="breadcrumb-item active">Beasiswa</li>
          </ol>
        </div><!-- /.col -->
      </div>
    </div>


    <!-- Main Content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-sm-12"><br>


          <button type="button" class="btn btn-primary mb-5 ml-5" data-toggle="modal" data-target="#datamanual">
              Tambah Data Beasiswa
            </button>

            <br>

            <div class="modal fade modal-dialog-lg" id="datamanual" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Tambah Data Beasiswa</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                    <form action="" method="POST" enctype="multipart/form-data">
                      <div class="form-group">
                        <label>Nama Beasiswa : </label>
                        <input type="text" class="form-control" autocomplete="off" name="nama_beasiswa" required>
                      </div>

                      <div class="form-group">
                        <label>Tanggal : </label>
                        <input type="text" class="form-control" autocomplete="off" name="tanggal" value="<?php echo date('d-m-Y');?>" required>
                      </div>

                      <div class="form-group">
                        <label>Persyaratan : </label>
                       <textarea class="form-control" name="syarat"></textarea>
                      </div>

                      <div class="form-group">
                        <label>Status : </label>
                        <select class="form-control" autocomplete="off" name="status" required>
                          <option value="">--PILIH--</option>
                          <option value="Dibuka">DIBUKA</option>
                          <option value="Ditutup">DITUTUP</option>
                        </select>
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


            <br>



            <!-- Tabel -->
            <div class="row">
              <div class="table-responsive table--no-card m-b-30 ml-5 mr-5">
                <table id="myTable" class="table table-borderless table-striped table-earning">
                  <thead>
                    <tr>
                      <th>Nama Beasiswa</th>
                      <th>Tanggal Beasiswa</th>
                      <th>Status Beasiswa</th>
                      <th>Aksi </th>
                    </tr>
                  </thead>

                  <tbody>
                    <?php
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