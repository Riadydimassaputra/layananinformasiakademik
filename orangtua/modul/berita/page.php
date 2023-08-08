<?php include 'comp/header.php';

if (isset($_POST['simpan'])) {
  insert_kritik();
}

if (isset($_POST['hapus'])) {
  hapus_kritik();
}

date_default_timezone_set("Asia/Jakarta");
?>
<div class="main-content mb-1">
  <div class="section__content section__content--p30">

  </div>
  <div class="content-wrapper">
    <div class="content-header mr-2">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h3 class="col-sm-6 ml-5">BERITA</h3>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="index.php?m=awal">Data Master</a></li>
            <li class="breadcrumb-item active">Berita</li>
          </ol>
        </div><!-- /.col -->
      </div>
    </div>


    <!-- Main Content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">

          <div class="col-sm-9 ml-5">
            <div class="col-8">
              <?php

              $id_berita = $_GET['id_pengumuman'];
              $pengumuman = mysqli_query($koneksi, "SELECT * FROM pengumuman where id_pengumuman='$id_berita'");
              $result = array();
              while ($data = mysqli_fetch_array($pengumuman)) {
                $result[] = $data; //result dijadikan array 
              }
              foreach ($pengumuman as $key) :
              ?>
                <h3><?= $key['nama_pengumuman']; ?></h3>
                <p><?= $key['tanggal']; ?></p><br>


                <img src=" <?php echo "../admsek/images/pengumuman/" . $key['foto'] ?>" width="25%"><br>



                <p class="text-justify" style="font-size: 20px;"><?= $key['keterangan']; ?></p>
              <?php
              endforeach; ?>
            </div>
          </div>
          <div class="col-sm-2 ml-5">


            <table id="myTable" class="table table-borderless table-striped table-earning">
              <thead>
                <tr>
                  <th>BERITA</th>
                </tr>
              </thead>

              <tbody>
                <tr>
                  <?php
                  $pengumuman = mysqli_query($koneksi, "SELECT * FROM pengumuman");
                  $result = array();
                  while ($data = mysqli_fetch_array($pengumuman)) {
                    $result[] = $data; //result dijadikan array
                  }
                  foreach ($pengumuman as $pro) :
                  ?>
                    <td>
                      <a href="?m=berita&id_pengumuman=<?= $key['id_pengumuman'] ?>"><?= $pro['nama_pengumuman']; ?></a>
                      <p> <?= $pro['tanggal']; ?></p>
                      <img src=" <?php echo "../admsek/images/pengumuman/" . $pro['foto'] ?>" width="20%">
                    </td>
                </tr>
              <?php endforeach; ?>
              </tbody>
            </table>

          </div>

          <script>
            $(document).ready(function() {
              $('#myTable').DataTable();
            });
          </script>

        </div>
      </div>


  </div>





</div>
</div>
</div>
</section>

</div>

</div>
<?php include 'comp/footer.php'; ?>