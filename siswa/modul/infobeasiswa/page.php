<?php include 'comp/header.php';

if (isset($_POST['simpan'])) {
  insert_verifikasibeasiswa();
}
?>
<div class="main-content mb-1">
  <div class="section__content section__content--p30">

  </div>
  <div class="content-wrapper">
    <div class="content-header mr-2">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h3 class="col-sm-6 ml-5">INFO BEASISWA</h3>
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

          <div class="col-sm-12 ml-5">
            <div class="col-10">
              <?php

              $pengumuman = mysqli_query($koneksi, "SELECT * FROM lobeasiswa where status_beasiswa='Dibuka' LIMIT 10");
              $result = array();
              while ($data = mysqli_fetch_array($pengumuman)) {
                $result[] = $data; //result dijadikan array 
              }
              $cek = mysqli_num_rows($pengumuman);

	if ($cek) {
    foreach ($pengumuman as $key) :
      ?>
        <h3><?= $key['nama_beasiswa']; ?></h3>
        <p><?= $key['tanggal']; ?></p><br><br>
        <p class="text-justify" style="font-size: 20px;"><?= nl2br($key['syarat']); ?></p>
      <button type="button" class="btn btn-primary ml-2" data-toggle="modal" data-target="#editadmin<?= $key['id_lobeasiswa']; ?>">DAFTAR <i class="fa fa-eye" aria-hidden="true"></i>
          </button></a>
<hr>
      <?php
      endforeach; ?>

<!-- Modal -->
<div class="modal fade modal-dialog-lg" id="editadmin<?= $key['id_lobeasiswa']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
<div class="modal-dialog modal-lg" role="document">
  <div class="modal-content">
    <div class="modal-header">
      <h5 class="modal-title" id="exampleModalLabel">Daftar Beasiswa</h5>
      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">&times;</span>
      </button>
    </div>
    <div class="modal-body">
<?php
    $NIS = $adm['username'];
    $siswa = mysqli_query($koneksi, "SELECT * FROM siswa join kelas on siswa.id_kls=kelas.id_kelas where NIS='$NIS'");
      $result = array();
      while ($data = mysqli_fetch_array($pengumuman)) {
        $result[] = $data; //result dijadikan array 
      }
      foreach ($siswa as $pro) :
      ?>
      <?php endforeach;?>
      <form action="" method="POST" enctype="multipart/form-data">
      <input type="hidden" class="form-control" autocomplete="off" name="id_lobeasiswa" required value="<?= $key['id_lobeasiswa']; ?>">
        <div class="form-group">
          <label>Nama Beasiswa :</label>
          <input type="text" class="form-control" autocomplete="off" name="nama_beasiswa" required value="<?= $key['nama_beasiswa']; ?>">
        </div>

        <div class="form-group">
          <label>NIS :</label>
          <input type="text" class="form-control" autocomplete="off" name="NIS" required value="<?= $pro['NIS']; ?>">
        </div>

        <div class="form-group">
          <label>Nama Siswa :</label>
          <input type="text" class="form-control" autocomplete="off" name="nama_siswa" required value="<?= $pro['nama_siswa']; ?>">
        </div>

        <div class="form-group">
          <label>Kelas :</label>
          <input type="text" class="form-control" autocomplete="off" name="kelas" required value="<?= $pro['nama_kelas']; ?> <?= $pro['jurusan']; ?>">
        </div>

        <div class="form-group">
          <label>Tanggal :</label>
          <input type="text" class="form-control" autocomplete="off" name="tanggal" required value="<?php echo date('d-m-Y'); ?>">
        </div>

        <div class="form-group">
          <label>Upload File : </label><p style="color: red;">*Dijadikan 1 File Pdf. Max 10 Mb</p>
          <input type="file" class="form-control" autocomplete="off" name="file" accept=".pdf" required>
        </div>



        <input type="hidden" name="admin" value="<?= $adm['nama']; ?>" hidden>



    </div>
    <div class="modal-footer">
      <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      <button type="submit" name="simpan" class="btn btn-primary">Save changes</button>
    </div>
    </form>

  </div>
</div>
</div>
    </div>
  </div>
  <?php
	
	} else { 	echo '<h2>Tidak Ada Info Beasiswa </h2>';
  }
           
   ?>      

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