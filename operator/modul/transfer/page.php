<?php include 'comp/header.php'; ?>
<?php

if (isset($_POST['transfer'])) {
  transfer_siswa();
}

?>
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



            <form action="" method="POST" enctype="multipart/form-data">

              <div class="row mb-2">
                <div class="col-sm-2 ml-5">
                  <div class="form-group">
                    <select name="kelas" id="id_tahun" class="form-control ml-2" require="">
                      <?php
                      $Que = "select kelas.* from kelas";
                      $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query sub Gudang " . mysqli_error($koneksi));
                      while ($hasil = mysqli_fetch_array($myQry)) {
                        echo "<option value='$hasil[id_kelas]' >
                                                    $hasil[nama_kelas]
                                                    </option>";
                      }
                      ?>
                    </select>
                  </div>
                </div>

                <div class="col-sm-2">
                  <div class="form-group">
                  <select name="status" class="form-control ml-2" require="">
                     <option value="">--PILIH--</option>
                     <option value="siswa">SISWA</option>
                     <option value="alumni">ALUMNI</option>
                    </select>
                  </div>
                    </div>

                <div class="col-sm-2">
                  <div class="form-group">
                    <button type="submit" id="search" name="transfer" class="btn btn-success ml-3">TRANSFER</button>
                  </div>
                </div>
              </div>


              <div class="row">
                <div class="table-responsive table--no-card m-b-30 ml-5 mr-5">
                  <table id="myTable" class="table table-borderless table-striped table-earning">
                    <thead>
                      <tr>
                        <th><input type="checkbox" onchange="checkAll(this)">Pilih Semua </th>

                        <script type="text/javascript">
                          function checkAll(box) {
                            let checkboxes = document.getElementsByTagName('input');
                            if (box.checked) { // jika checkbox teratar dipilih maka semua tag input juga dipilih
                              for (let i = 0; i < checkboxes.length; i++) {
                                if (checkboxes[i].type == 'checkbox') {
                                  checkboxes[i].checked = true;
                                }
                              }
                            } else { // jika checkbox teratas tidak dipilih maka semua tag input juga tidak dipilih
                              for (let i = 0; i < checkboxes.length; i++) {
                                if (checkboxes[i].type == 'checkbox') {
                                  checkboxes[i].checked = false;
                                }
                              }
                            }
                          }
                        </script>
                        <th>Nama</th>
                        <th>Kelas</th>



                      </tr>
                    </thead>

                    <tbody>
                      <?php
                      $no = 1;
                      include 'paging.php';
                      ?>
            </form>
            </tbody>
            </table>
          </div>
        </div>
        <script>
          $(document).ready(function() {
            $('#myTable').DataTable({
              "lengthMenu": [25, 50,100],
       
            });
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