<?php include 'comp/header.php'; ?>
<?php


if (isset($_POST['buat'])) {
  tambah_tagihan();
}

if (isset($_POST['hapus'])) {
  hapus_tagihan();
}

?>
<div class="main-content mb-1">
  <div class="section__content section__content--p30">

  </div>
  <div class="content-wrapper">
    <div class="content-header mr-2">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h3 class="col-sm-6 ml-5">PEMBUATAN DAFTAR TAGIHAN SPP</h3>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="index.php?m=awal">Data Master</a></li>
            <li class="breadcrumb-item active">TAGIHAN SPP</li>
          </ol>
        </div><!-- /.col -->
      </div>
    </div>


    <!-- Main Content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-sm-12"><br>
            <div class="row mb-3">
              <div class="col-sm-2 ml-5">
                <form action="" method="POST" enctype="multipart/form-data">

                  <div class="form-group">
                    <label>SEMESTER</label>
                    <select name="semester" id="id_cari" class="form-control" require>
                      <option value="">--PILIH SEMESTER--</option>
                      <option value="SEMESTER GANJIL">SEMESTER GANJIL</option>
                      <option value="SEMESTER GENAP">SEMESTER GENAP</option>

                    </select>
                  </div>
              </div>

              <div class="col-sm-2">
                <div class="form-group">
                  <label>Jatuh Tempo Pembayaran (Y-m-d)</label>
                  <input class="form-control" type="text" name="jatuhtempo" placeholder="2022-12-20">
                </div>
              </div>
              <div class="col-sm-2">
                <div class="form-group">
                  <label>Tahun Ajaran</label>

                  <?php
                  $Que = "select tb_tahun_ajaran.* from tb_tahun_ajaran where statustapel='Aktif'";
                  $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query sub Gudang " . mysqli_error($koneksi));
                  while ($hasil = mysqli_fetch_array($myQry)) {
                    echo "<input class='form-control ml-2' name='tahun' value='$hasil[tapel]' readonly>";
                  }
                  ?>

                </div>
              </div>

              <div class="col-sm-2">
                <div class="form-group">
                  <label>Jumlah yang Dibayarkan</label>
                  <input class="form-control" type="text" name="nominal" value="250000">
                </div>
              </div>

              <div class="col-sm-2">
                <br>
                <button type="submit" id="search" name="buat" class="btn btn-success ml-3">BUAT</button>
              </div>

            </div>
          </div>

          <div class="col-sm-2 ml-5">
            <div class="form-group">
              <label>SEMESTER</label>
              <select name="semesterh" id="id_cari" class="form-control" require>
                <option value="">--PILIH SEMESTER--</option>
                <option value="SEMESTER GANJIL">SEMESTER GANJIL</option>
                <option value="SEMESTER GENAP">SEMESTER GENAP</option>

              </select>
            </div>
          </div>


          <div class="col-sm-3">
            <div class="form-group">
              <label>Tahun Ajaran</label>
              <select name="tahunh" id="id_tahun" class="form-control ml-2" require="">
                <?php
                $Que = "select tb_tahun_ajaran.* from tb_tahun_ajaran group by tapel DESC";
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

          <div class="col-sm-3"><br>
            <button type="submit" id="search" name="hapus" class="btn btn-danger ml-3">HAPUS</button>
          </div>

          <div class="col-sm-2">
          </div>
          <div class="col-sm-2 ml-5">
            <div class="form-group">
              <label>Pilih Kelas</label>
              <select name="cari" id="id_cari" class="form-control" require>
                <option value="">--PILIH KELAS--</option>
                <option value="X">KELAS X</option>
                <option value="XI">KELAS XI</option>
                <option value="XII">KELAS XII</option>
              </select>
            </div>
          </div>

          <div class="col-sm-2 ml-5">
            <div class="form-group">
              <label>Masukkan Nama Siswa</label>
              <input class="form-control" type="text" name="nama_" placeholder="Masukkan Nama Siswa">
            </div>
          </div>
          <div class="col-sm-2"><br>
            <button id="search" name="go" class="btn btn-success">Cari</button>
          </div>

        </div>
        <!-- /.col -->
      </div>
  </div>



  <!-- Main Content -->
  <section class="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-12"><br>


          <!-- Tabel -->
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
                <?php


                $no = 1;




                ?>
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
          <center>
            <ul class="pagination justify-content-center">
              <li class="page-item">
                <a class="page-link" <?php if ($halaman > 1) {
                                        echo "href='?m=aktifan&halaman=$previous'";
                                      } ?>>Previous</a>
              </li>
              <?php
              for ($x = 1; $x <= $total_halaman; $x++) {
              ?>
                <li class="page-item"><a class="page-link" href="?m=aktifan&halaman=&nama_kelas=<?php echo $cari . $x ?>"><?php echo $x; ?></a></li>
              <?php
              }
              ?>
              <li class="page-item">
                <a class="page-link" <?php if ($halaman < $total_halaman) {
                                        echo "href='?m=aktifan&halaman=$next'";
                                      } ?>>Next</a>
              </li>
            </ul>
          </center>

          <!-- end table -->


        </div>
      </div>
    </div>
  </section>

</div>

</div>
<?php include 'comp/footer.php'; ?>