<?php include 'comp/header.php'; ?>
<?php
error_reporting(0);

if (isset($_POST['simpan'])) {
  insert_lap();
}

if (isset($_POST['hapus'])) {
  hapus_lap();
}


date_default_timezone_set('Asia/Jakarta');
?>
<div class="main-content mb-1">
  <div class="section__content section__content--p30">

  </div>
  <div class="content-wrapper">
    <div class="content-header mr-2">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h3 class="col-sm-6 ml-5">Laporan</h3>
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
                  Tambah Data Laporan
                </button> <?php
                        } else {
                          echo '<button type="button" class="btn btn-primary mb-5 ml-5" data-toggle="modal" data-target="#exampleModal" disabled>
                  Tambah Data Laporan
                </button>';
                        }
                          ?>




              <!-- Button trigger modal -->



            <?php
            endforeach; ?>

            <!-- Modal -->
            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Tambah Data Laporan</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                    <div class="container p-5" align="center">
                      <div class="">
                        <b>Your Cam:</b><br>
                        <video id="camera-stream" class="border border-5 border-danger"></video>
                      </div>
                      <div class="">
                        <button disabled id="flip-btn" class="btn btn-sm btn-warning" onclick="">
                          Flip Camera
                        </button>
                        <button id="capture-camera" class="btn btn-sm btn-primary">
                          Take photo
                        </button>
                      </div>

                      <canvas id="canvas" style="display: none;" class="bg-light shadow border border-5 border-success">
                      </canvas>


                    </div>
                    <form action="" method="POST" enctype="multipart/form-data">

                      <div class="form-group">
                        <label>Kehadiran : </label>
                        <select id="ok" name="kehadiran" onchange="opsi(this)">
                          <option value="">--PILIH kehadiran--</option>
                          <option value="Hadir">Hadir</option>
                          <option value="Tidak Hadir">Tidak Hadir</option>
                        </select>
                        <script>
                          function opsi(value) {
                            var st = $("#ok").val();
                            if (st == "Hadir") {
                              document.getElementById("alas").value = "-";
                              document.getElementById("poin").value = "5";
                              document.getElementById("camera-stream").hidden = false;

                            } else {
                              document.getElementById("alas").disabled = false;
                              document.getElementById("camera-stream").hidden = true;
                              document.getElementById("poin").value = "0";

                            }
                          }
                        </script>
                        <br />
                      </div>

                      <div class="form-group">
                        <label>Nama Lengkap</label>
                        <input type="text" class="form-control" autocomplete="off" name="nama_lengkap" value="<?= $adm['nama_lengkap']; ?>" readonly>
                      </div>

                      <div class="form-group">
                        <label>Nama Kegiatan</label>
                        <input type="text" class="form-control" name="nama_kegiatan" required>
                      </div>

                      <div class="form-group">
                        <label>Tahun</label>
                        <?php
                        $Que = "select tb_tahun_ajaran.* from tb_tahun_ajaran where statustapel='Aktif'";
                        $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query sub Gudang " . mysqli_error($koneksi));
                        while ($hasil = mysqli_fetch_array($myQry)) {
                          echo "<input type='text' class='form-control' name='tahun' value='$hasil[tapel]' readonly";
                        }
                        ?>

                      </div>

                      <div class="form-group">
                        <input type="text" class="form-control" autocomplete="off" name="bulan" id="id_cari" value="<?php echo date('M'); ?>" readonly>
                      </div>

                      <div class="form-group">
                        <input type="text" class="form-control" autocomplete="off" name="hari" id="hari" value="<?php echo date('l'); ?>" readonly>
                      </div>

                      <div class="form-group">
                        <input type="text" class="form-control" autocomplete="off" name="jam" id="jam" value="<?php echo date('H:i:s a'); ?>" readonly>
                      </div>

                      <div class="form-group">
                        <label>Alasan</label>
                        <input type="text" class="form-control" autocomplete="off" name="alasan" id="alas" require>
                      </div>

                      <div class="form-group">
                        <label>Point</label>
                        <input type="text" class="form-control" autocomplete="off" name="point" id="poin" readonly>
                      </div>

                      <input type="text" name="image" id="image" hidden>
                      <img id="result">
                      <input type="hidden" name="admin" value="<?= $adm['id']; ?>" hidden>

                      <div class="modal-footer">
                        <button type="submit" name="simpan" class="btn btn-primary">Save changes</button>
                        <button type="cancel" class="btn btn-secondary" data-dismiss="modal">Close</button>
                      </div>
                    </form>



                    <style>
                      video {
                        width: 320;
                        height: 240;
                        background: rgba(0, 0, 0, 0.2);
                        -webkit-transform: scaleX(-1);
                        /* mirror effect while using front cam */
                        transform: scaleX(-1);
                        /* mirror effect while using front cam */
                      }

                      #canvas {
                        width: 192px;
                        height: 192px;
                        -webkit-transform: scaleX(-1);
                        /* mirror effect while using front cam */
                        transform: scaleX(-1);
                        /* mirror effect while using front cam */
                      }
                    </style>
                    <center>
                      <!-- -->

                      <script>
                        navigator.mediaDevices
                        // camera stream video element
                        let on_stream_video = document.querySelector('#camera-stream');
                        // flip button element
                        let flipBtn = document.querySelector('#flip-btn');

                        // default user media options
                        let constraints = {
                          audio: false,
                          video: true
                        }
                        let shouldFaceUser = true;

                        // check whether we can use facingMode
                        let supports = navigator.mediaDevices.getSupportedConstraints();
                        if (supports['facingMode'] === true) {
                          flipBtn.disabled = false;
                        }

                        let stream = null;

                        function capture() {
                          constraints.video = {
                            width: {
                              min: 192,
                              ideal: 192,
                              max: 192,
                            },
                            height: {
                              min: 192,
                              ideal: 192,
                              max: 192
                            },
                            facingMode: shouldFaceUser ? 'user' : 'environment'
                          }
                          navigator.mediaDevices.getUserMedia(constraints)
                            .then(function(mediaStream) {
                              stream = mediaStream;
                              on_stream_video.srcObject = stream;
                              on_stream_video.play();
                            })
                            .catch(function(err) {
                              console.log(err)
                            });
                        }

                        flipBtn.addEventListener('click', function() {
                          if (stream == null) return
                          // we need to flip, stop everything
                          stream.getTracks().forEach(t => {
                            t.stop();
                          });
                          // toggle / flip
                          shouldFaceUser = !shouldFaceUser;
                          capture();
                        })


                        capture()
                        document.getElementById("capture-camera").addEventListener("click", function() {


                          // Elements for taking the snapshot
                          const [video, result, image] = [
                            document.querySelector('video'),
                            document.getElementById('result'),
                            document.getElementById('image'),
                          ]
                          canvas.width = video.videoWidth;
                          canvas.height = video.videoHeight;
                          canvas.getContext('2d').drawImage(video, 0, 0);
                          result.src = canvas.toDataURL();
                          image.value = canvas.toDataURL();


                        });
                      </script>
                    </center>




                  </div>

                </div>
              </div>
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
                <th>Tahun/Bulan</th>
                <th>Hari/Jam</th>
                <th>Kehadiran</th>
                <th>Nama kegiatan</th>
                <th>Nama Lengkap</th>
                <th>Alasan</th>
                <th>Bukti Mengikuti Kegiatan</th>

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