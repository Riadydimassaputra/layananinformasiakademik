<?php include 'comp/header.php'; ?>
<?php

if (isset($_POST['simpan'])) {
  insert_jadwal();

  error_reporting(0);
}

?>
<div class="main-content mb-1">
  <div class="section__content section__content--p30">

  </div>
  <div class="content-wrapper">
    <div class="content-header mr-2">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h3 class="col-sm-6 ml-5">ADD Jadwal Pelajaran</h3>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="index.php?m=awal">Data Master</a></li>
            <li class="breadcrumb-item active">Jadwal Pelajaran</li>
          </ol>
        </div><!-- /.col -->
      </div>
    </div>


    <!-- Main Content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-sm-12"><br>


            <div class="row">
              <div class="table-responsive table--no-card m-b-30 ml-5 mr-5" style="width: 500%;">
                <table class="table table-borderless table-striped table-earning">

                  <form action="" method="POST" enctype="multipart/form-data" id="formselect">
                    <div class="form-group">
                      <label>KELAS :</label>
                      <select class="form-control" name="kelas">
                        <?php
                        $Que = "select mapel.* from mapel group by kelas";
                        $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                        while ($hasil = mysqli_fetch_array($myQry)) {
                          echo "<option value='$hasil[kelas]'>
                      $hasil[kelas]
                </option>";
                        }
                        ?>
                      </select>
                    </div>
                    <tr>
                      <th style="width: 5%;">Hari</th>
                      <td>
                        <input class="form-control" name="harisen" id="hari" value="Senin" readonly>
                      </td>
                      <td>
                        <input class="form-control" name="harisel" id="hari" value="Selasa" readonly>
                      </td>
                      <td>
                        <input class="form-control" name="harirab" id="hari" value="Rabu" readonly>
                      </td>
                      <td>
                        <input class="form-control" name="harika" id="hari" value="Kamis" readonly>
                      </td>
                    </tr>

                    <tr>
                      <td>
                        <input type="text" class="form-control" name="waktu[]" value="08:00 sd 08:35" readonly>
                      </td>

                      <td style="width: 25%;">
                        <select class="select2" name="nama_mapelsen[]">
                          <option value="Kosong">Kosong</option>
                          <?php
                          $Que = "select mapel.* from mapel";
                          $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                          while ($hasil = mysqli_fetch_array($myQry)) {
                            echo "<option value='$hasil[kode_mapel]'>
                      $hasil[kode_mapel]-$hasil[kelas]
                </option>";
                          }
                          ?>
                        </select>
                      </td>


                      <td style="width: 25%;">
                        <select class="select2" name="nama_mapelsel[]">
                          <option value="Kosong">Kosong</option>
                          <?php
                          $Que = "select mapel.* from mapel";
                          $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                          while ($hasil = mysqli_fetch_array($myQry)) {
                            echo "<option value='$hasil[kode_mapel]'>
                      $hasil[kode_mapel]-$hasil[kelas]
                </option>";
                          }
                          ?>
                        </select>
                      </td>
                      <td style="width: 25%;">
                        <select class="select2" name="nama_mapelrab[]">
                          <option value="Kosong">Kosong</option>
                          <?php
                          $Que = "select mapel.* from mapel";
                          $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                          while ($hasil = mysqli_fetch_array($myQry)) {
                            echo "<option value='$hasil[kode_mapel]'>
                      $hasil[kode_mapel]-$hasil[kelas]
                </option>";
                          }
                          ?>
                        </select>
                      </td>
                      <td style="width: 25%;">
                        <select class="select2" name="nama_mapelka[]">
                          <option value="Kosong">Kosong</option>
                          <?php
                          $Que = "select mapel.* from mapel";
                          $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                          while ($hasil = mysqli_fetch_array($myQry)) {
                            echo "<option value='$hasil[kode_mapel]'>
                      $hasil[kode_mapel]-$hasil[kelas]
                </option>";
                          }
                          ?>
                        </select>
                      </td>
                    </tr>

                    <tr>
                      <td>
                        <input type="text" class="form-control" name="waktu[]" value="08:35 sd 09:10" readonly>
                      </td>
                      <td>
                        <select class="select2" name="nama_mapelsen[]">
                          <option value="Kosong">Kosong</option>
                          <?php
                          $Que = "select mapel.* from mapel";
                          $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                          while ($hasil = mysqli_fetch_array($myQry)) {
                            echo "<option value='$hasil[kode_mapel]'>
                      $hasil[kode_mapel]-$hasil[kelas]
                </option>";
                          }
                          ?>
                        </select>
                      </td>


                      <td>
                        <select class="select2" name="nama_mapelsel[]">
                          <option value="Kosong">Kosong</option>
                          <?php
                          $Que = "select mapel.* from mapel";
                          $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                          while ($hasil = mysqli_fetch_array($myQry)) {
                            echo "<option value='$hasil[kode_mapel]'>
                      $hasil[kode_mapel]-$hasil[kelas]
                </option>";
                          }
                          ?>
                        </select>
                      </td>
                      <td>
                        <select class="select2" name="nama_mapelrab[]">
                          <option value="Kosong">Kosong</option>
                          <?php
                          $Que = "select mapel.* from mapel";
                          $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                          while ($hasil = mysqli_fetch_array($myQry)) {
                            echo "<option value='$hasil[kode_mapel]'>
                      $hasil[kode_mapel]-$hasil[kelas]
                </option>";
                          }
                          ?>
                        </select>
                      </td>
                      <td>
                        <select class="select2" name="nama_mapelka[]">
                          <option value="Kosong">Kosong</option>
                          <?php
                          $Que = "select mapel.* from mapel";
                          $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                          while ($hasil = mysqli_fetch_array($myQry)) {
                            echo "<option value='$hasil[kode_mapel]'>
                      $hasil[kode_mapel]-$hasil[kelas]
                </option>";
                          }
                          ?>
                        </select>
                      </td>
                    </tr>

                    <td>
                      <input type="text" class="form-control" name="waktu[]" value="09:10 sd 09:45" readonly>
                    </td>
                    <td>
                      <select class="select2" name="nama_mapelsen[]">
                        <option value="Kosong">Kosong</option>
                        <?php
                        $Que = "select mapel.* from mapel";
                        $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                        while ($hasil = mysqli_fetch_array($myQry)) {
                          echo "<option value='$hasil[kode_mapel]'>
                      $hasil[kode_mapel]-$hasil[kelas]
                </option>";
                        }
                        ?>
                      </select>
                    </td>


                    <td>
                      <select class="select2" name="nama_mapelsel[]">
                        <option value="Kosong">Kosong</option>
                        <?php
                        $Que = "select mapel.* from mapel";
                        $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                        while ($hasil = mysqli_fetch_array($myQry)) {
                          echo "<option value='$hasil[kode_mapel]'>
                      $hasil[kode_mapel]-$hasil[kelas]
                </option>";
                        }
                        ?>
                      </select>
                    </td>
                    <td>
                      <select class="select2" name="nama_mapelrab[]">
                        <option value="Kosong">Kosong</option>
                        <?php
                        $Que = "select mapel.* from mapel";
                        $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                        while ($hasil = mysqli_fetch_array($myQry)) {
                          echo "<option value='$hasil[kode_mapel]'>
                      $hasil[kode_mapel]-$hasil[kelas]
                </option>";
                        }
                        ?>
                      </select>
                    </td>
                    <td>
                      <select class="select2" name="nama_mapelka[]">
                        <option value="Kosong">Kosong</option>
                        <?php
                        $Que = "select mapel.* from mapel";
                        $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                        while ($hasil = mysqli_fetch_array($myQry)) {
                          echo "<option value='$hasil[kode_mapel]'>
                      $hasil[kode_mapel]-$hasil[kelas]
                </option>";
                        }
                        ?>
                      </select>
                    </td>
                    </tr>

                    <td>
                      <input type="text" class="form-control" name="waktu[]" value="09:45 sd 10:20" readonly>
                    </td>
                    <td>
                      <select class="select2" name="nama_mapelsen[]">
                        <option value="Kosong">Kosong</option>
                        <?php
                        $Que = "select mapel.* from mapel";
                        $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                        while ($hasil = mysqli_fetch_array($myQry)) {
                          echo "<option value='$hasil[kode_mapel]'>
                      $hasil[kode_mapel]-$hasil[kelas]
                </option>";
                        }
                        ?>
                      </select>
                    </td>


                    <td>
                      <select class="select2" name="nama_mapelsel[]">
                        <option value="Kosong">Kosong</option>
                        <?php
                        $Que = "select mapel.* from mapel";
                        $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                        while ($hasil = mysqli_fetch_array($myQry)) {
                          echo "<option value='$hasil[kode_mapel]'>
                      $hasil[kode_mapel]-$hasil[kelas]
                </option>";
                        }
                        ?>
                      </select>
                    </td>
                    <td>
                      <select class="select2" name="nama_mapelrab[]">
                        <option value="Kosong">Kosong</option>
                        <?php
                        $Que = "select mapel.* from mapel";
                        $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                        while ($hasil = mysqli_fetch_array($myQry)) {
                          echo "<option value='$hasil[kode_mapel]'>
                      $hasil[kode_mapel]-$hasil[kelas]
                </option>";
                        }
                        ?>
                      </select>
                    </td>
                    <td>
                      <select class="select2" name="nama_mapelka[]">
                        <option value="Kosong">Kosong</option>
                        <?php
                        $Que = "select mapel.* from mapel";
                        $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                        while ($hasil = mysqli_fetch_array($myQry)) {
                          echo "<option value='$hasil[kode_mapel]'>
                      $hasil[kode_mapel]-$hasil[kelas]
                </option>";
                        }
                        ?>
                      </select>
                    </td>
                    </tr>

                    <td>
                      <input type="text" class="form-control" name="waktu[]" value="10:55 sd 11:30" readonly>
                    </td>
                    <td>
                      <select class="select2" name="nama_mapelsen[]">
                        <option value="Kosong">Kosong</option>
                        <?php
                        $Que = "select mapel.* from mapel";
                        $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                        while ($hasil = mysqli_fetch_array($myQry)) {
                          echo "<option value='$hasil[kode_mapel]'>
                      $hasil[kode_mapel]-$hasil[kelas]
                </option>";
                        }
                        ?>
                      </select>
                    </td>


                    <td>
                      <select class="select2" name="nama_mapelsel[]">
                        <option value="Kosong">Kosong</option>
                        <?php
                        $Que = "select mapel.* from mapel";
                        $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                        while ($hasil = mysqli_fetch_array($myQry)) {
                          echo "<option value='$hasil[kode_mapel]'>
                      $hasil[kode_mapel]-$hasil[kelas]
                </option>";
                        }
                        ?>
                      </select>
                    </td>
                    <td>
                      <select class="select2" name="nama_mapelrab[]">
                        <option value="Kosong">Kosong</option>
                        <?php
                        $Que = "select mapel.* from mapel";
                        $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                        while ($hasil = mysqli_fetch_array($myQry)) {
                          echo "<option value='$hasil[kode_mapel]'>
                      $hasil[kode_mapel]-$hasil[kelas]
                </option>";
                        }
                        ?>
                      </select>
                    </td>
                    <td>
                      <select class="select2" name="nama_mapelka[]">
                        <option value="Kosong">Kosong</option>
                        <?php
                        $Que = "select mapel.* from mapel";
                        $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                        while ($hasil = mysqli_fetch_array($myQry)) {
                          echo "<option value='$hasil[kode_mapel]'>
                      $hasil[kode_mapel]-$hasil[kelas]
                </option>";
                        }
                        ?>
                      </select>
                    </td>
                    </tr>

                    <td>
                      <input type="text" class="form-control" name="waktu[]" value="11:30 sd 12:05" readonly>
                    </td>
                    <td>
                      <select class="select2" name="nama_mapelsen[]">
                        <option value="Kosong">Kosong</option>
                        <?php
                        $Que = "select mapel.* from mapel";
                        $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                        while ($hasil = mysqli_fetch_array($myQry)) {
                          echo "<option value='$hasil[kode_mapel]'>
                      $hasil[kode_mapel]-$hasil[kelas]
                </option>";
                        }
                        ?>
                      </select>
                    </td>


                    <td>
                      <select class="select2" name="nama_mapelsel[]">
                        <option value="Kosong">Kosong</option>
                        <?php
                        $Que = "select mapel.* from mapel";
                        $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                        while ($hasil = mysqli_fetch_array($myQry)) {
                          echo "<option value='$hasil[kode_mapel]'>
                      $hasil[kode_mapel]-$hasil[kelas]
                </option>";
                        }
                        ?>
                      </select>
                    </td>
                    <td>
                      <select class="select2" name="nama_mapelrab[]">
                        <option value="Kosong">Kosong</option>
                        <?php
                        $Que = "select mapel.* from mapel";
                        $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                        while ($hasil = mysqli_fetch_array($myQry)) {
                          echo "<option value='$hasil[kode_mapel]'>
                      $hasil[kode_mapel]-$hasil[kelas]
                </option>";
                        }
                        ?>
                      </select>
                    </td>
                    <td>
                      <select class="select2" name="nama_mapelka[]">
                        <option value="Kosong">Kosong</option>
                        <?php
                        $Que = "select mapel.* from mapel";
                        $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                        while ($hasil = mysqli_fetch_array($myQry)) {
                          echo "<option value='$hasil[kode_mapel]'>
                      $hasil[kode_mapel]-$hasil[kelas]
                </option>";
                        }
                        ?>
                      </select>
                    </td>
                    </tr>

                    <td>
                      <input type="text" class="form-control" name="waktu[]" value="12:05 sd 12:40">
                    </td>
                    <td>
                      <select class="select2" name="nama_mapelsen[]">
                        <option value="Kosong">Kosong</option>
                        <?php
                        $Que = "select mapel.* from mapel";
                        $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                        while ($hasil = mysqli_fetch_array($myQry)) {
                          echo "<option value='$hasil[kode_mapel]'>
                      $hasil[kode_mapel]-$hasil[kelas]
                </option>";
                        }
                        ?>
                      </select>
                    </td>


                    <td>
                      <select class="select2" name="nama_mapelsel[]">
                        <option value="Kosong">Kosong</option>
                        <?php
                        $Que = "select mapel.* from mapel";
                        $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                        while ($hasil = mysqli_fetch_array($myQry)) {
                          echo "<option value='$hasil[kode_mapel]'>
                      $hasil[kode_mapel]-$hasil[kelas]
                </option>";
                        }
                        ?>
                      </select>
                    </td>
                    <td>
                      <select class="select2" name="nama_mapelrab[]">
                        <option value="Kosong">Kosong</option>
                        <?php
                        $Que = "select mapel.* from mapel";
                        $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                        while ($hasil = mysqli_fetch_array($myQry)) {
                          echo "<option value='$hasil[kode_mapel]'>
                      $hasil[kode_mapel]-$hasil[kelas]
                </option>";
                        }
                        ?>
                      </select>
                    </td>
                    <td>
                      <select class="select2" name="nama_mapelka[]">
                        <option value="Kosong">Kosong</option>
                        <?php
                        $Que = "select mapel.* from mapel";
                        $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                        while ($hasil = mysqli_fetch_array($myQry)) {
                          echo "<option value='$hasil[kode_mapel]'>
                      $hasil[kode_mapel]-$hasil[kelas]
                </option>";
                        }
                        ?>
                      </select>
                    </td>
                    </tr>

                    <td>
                      <input type="text" class="form-control" name="waktu[]" value="13:25 sd 14:00">
                    </td>
                    <td>
                      <select class="select2" name="nama_mapelsen[]">
                        <option value="Kosong">Kosong</option>
                        <?php
                        $Que = "select mapel.* from mapel";
                        $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                        while ($hasil = mysqli_fetch_array($myQry)) {
                          echo "<option value='$hasil[kode_mapel]'>
                      $hasil[kode_mapel]-$hasil[kelas]
                </option>";
                        }
                        ?>
                      </select>
                    </td>


                    <td>
                      <select class="select2" name="nama_mapelsel[]">
                        <option value="Kosong">Kosong</option>
                        <?php
                        $Que = "select mapel.* from mapel";
                        $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                        while ($hasil = mysqli_fetch_array($myQry)) {
                          echo "<option value='$hasil[kode_mapel]'>
                      $hasil[kode_mapel]-$hasil[kelas]
                </option>";
                        }
                        ?>
                      </select>
                    </td>
                    <td>
                      <select class="select2" name="nama_mapelrab[]">
                        <option value="Kosong">Kosong</option>
                        <?php
                        $Que = "select mapel.* from mapel";
                        $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                        while ($hasil = mysqli_fetch_array($myQry)) {
                          echo "<option value='$hasil[kode_mapel]'>
                      $hasil[kode_mapel]-$hasil[kelas]
                </option>";
                        }
                        ?>
                      </select>
                    </td>
                    <td>
                      <select class="select2" name="nama_mapelka[]">
                        <option value="Kosong">Kosong</option>
                        <?php
                        $Que = "select mapel.* from mapel";
                        $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                        while ($hasil = mysqli_fetch_array($myQry)) {
                          echo "<option value='$hasil[kode_mapel]'>
                      $hasil[kode_mapel]-$hasil[kelas]
                </option>";
                        }
                        ?>
                      </select>
                    </td>
                    </tr>

                    <td>
                      <input type="text" class="form-control" name="waktu[]" value="14:00 sd 14:35">
                    </td>
                    <td>
                      <select class="select2" name="nama_mapelsen[]">
                        <option value="Kosong">Kosong</option>
                        <?php
                        $Que = "select mapel.* from mapel";
                        $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                        while ($hasil = mysqli_fetch_array($myQry)) {
                          echo "<option value='$hasil[kode_mapel]'>
                      $hasil[kode_mapel]-$hasil[kelas]
                </option>";
                        }
                        ?>
                      </select>
                    </td>


                    <td>
                      <select class="select2" name="nama_mapelsel[]">
                        <option value="Kosong">Kosong</option>
                        <?php
                        $Que = "select mapel.* from mapel";
                        $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                        while ($hasil = mysqli_fetch_array($myQry)) {
                          echo "<option value='$hasil[kode_mapel]'>
                      $hasil[kode_mapel]-$hasil[kelas]
                </option>";
                        }
                        ?>
                      </select>
                    </td>
                    <td>
                      <select class="select2" name="nama_mapelrab[]">
                        <option value="Kosong">Kosong</option>
                        <?php
                        $Que = "select mapel.* from mapel";
                        $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                        while ($hasil = mysqli_fetch_array($myQry)) {
                          echo "<option value='$hasil[kode_mapel]'>
                      $hasil[kode_mapel]-$hasil[kelas]
                </option>";
                        }
                        ?>
                      </select>
                    </td>
                    <td>
                      <select class="select2" name="nama_mapelka[]">
                        <option value="Kosong">Kosong</option>
                        <?php
                        $Que = "select mapel.* from mapel";
                        $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                        while ($hasil = mysqli_fetch_array($myQry)) {
                          echo "<option value='$hasil[kode_mapel]'>
                      $hasil[kode_mapel]-$hasil[kelas]
                </option>";
                        }
                        ?>
                      </select>
                    </td>
                    </tr>

                    <tr>
                      <th>
                        Hari
                      </th>
                      <td>
                        <input class="form-control" name="harij" id="hari" value="Jumat" readonly>
                      </td>
                    </tr>

                    <tr>
                      <td>
                        <input type="text" class="form-control" name="waktuj[]" value="07:45 sd 08:20" readonly>
                      </td>

                      <td>
                        <select class="select2" name="nama_mapelj[]">
                          <option value="Kosong">Kosong</option>
                          <?php
                          $Que = "select mapel.* from mapel";
                          $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                          while ($hasil = mysqli_fetch_array($myQry)) {
                            echo "<option value='$hasil[kode_mapel]'>
                      $hasil[kode_mapel]-$hasil[kelas]
                </option>";
                          }
                          ?>
                        </select>
                      </td>
                    </tr>

                    <tr>
                      <td>
                        <input type="text" class="form-control" name="waktuj[]" value="08:20 sd 08:55" readonly>
                      </td>

                      <td>
                        <select class="select2" name="nama_mapelj[]">
                          <option value="Kosong">Kosong</option>
                          <?php
                          $Que = "select mapel.* from mapel";
                          $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                          while ($hasil = mysqli_fetch_array($myQry)) {
                            echo "<option value='$hasil[kode_mapel]'>
                      $hasil[kode_mapel]-$hasil[kelas]
                </option>";
                          }
                          ?>
                        </select>
                      </td>
                    </tr>

                    <tr>
                      <td>
                        <input type="text" class="form-control" name="waktuj[]" value="08:55 sd 09:30" readonly>
                      </td>

                      <td>
                        <select class="select2" name="nama_mapelj[]">
                          <option value="Kosong">Kosong</option>
                          <?php
                          $Que = "select mapel.* from mapel";
                          $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                          while ($hasil = mysqli_fetch_array($myQry)) {
                            echo "<option value='$hasil[kode_mapel]'>
                      $hasil[kode_mapel]-$hasil[kelas]
                </option>";
                          }
                          ?>
                        </select>
                      </td>
                    </tr>

                    <tr>
                      <td>
                        <input type="text" class="form-control" name="waktuj[]" value="09:30 sd 10:05" readonly>
                      </td>

                      <td>
                        <select class="select2" name="nama_mapelj[]">
                          <option value="Kosong">Kosong</option>
                          <?php
                          $Que = "select mapel.* from mapel";
                          $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                          while ($hasil = mysqli_fetch_array($myQry)) {
                            echo "<option value='$hasil[kode_mapel]'>
                      $hasil[kode_mapel]-$hasil[kelas]
                </option>";
                          }
                          ?>
                        </select>
                      </td>
                    </tr>

                    <tr>
                      <td>
                        <input type="text" class="form-control" name="waktuj[]" value="10:20 sd 10:55" readonly>
                      </td>

                      <td>
                        <select class="select2" name="nama_mapelj[]">
                          <option value="Kosong">Kosong</option>
                          <?php
                          $Que = "select mapel.* from mapel";
                          $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                          while ($hasil = mysqli_fetch_array($myQry)) {
                            echo "<option value='$hasil[kode_mapel]'>
                      $hasil[kode_mapel]-$hasil[kelas]
                </option>";
                          }
                          ?>
                        </select>
                      </td>
                    </tr>

                    <tr>
                      <td>
                        <input type="text" class="form-control" name="waktuj[]" value="10:55 sd 11:30" readonly>
                      </td>

                      <td>
                        <select class="select2" name="nama_mapelj[]">
                          <option value="Kosong">Kosong</option>
                          <?php
                          $Que = "select mapel.* from mapel";
                          $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                          while ($hasil = mysqli_fetch_array($myQry)) {
                            echo "<option value='$hasil[kode_mapel]'>
                      $hasil[kode_mapel]-$hasil[kelas]
                </option>";
                          }
                          ?>
                        </select>
                      </td>
                    </tr>

                    <tr>
                      <th>
                        Hari
                      </th>
                      <td>
                        <input class="form-control" name="haris" id="hari" value="Sabtu" readonly>
                      </td>
                    </tr>

                    <tr>
                      <td>
                        <input type="text" class="form-control" name="waktus[]" value="08:00 sd 08:35" readonly>
                      </td>

                      <td>
                        <select class="select2" name="nama_mapels[]">
                          <option value="Kosong">Kosong</option>
                          <?php
                          $Que = "select mapel.* from mapel";
                          $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                          while ($hasil = mysqli_fetch_array($myQry)) {
                            echo "<option value='$hasil[kode_mapel]'>
                      $hasil[kode_mapel]-$hasil[kelas]
                </option>";
                          }
                          ?>
                        </select>
                      </td>
                    </tr>

                    <tr>
                      <td>
                        <input type="text" class="form-control" name="waktus[]" value="08:35 sd 09:10" readonly>
                      </td>

                      <td>
                        <select class="select2" name="nama_mapels[]">
                          <option value="Kosong">Kosong</option>
                          <?php
                          $Que = "select mapel.* from mapel";
                          $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                          while ($hasil = mysqli_fetch_array($myQry)) {
                            echo "<option value='$hasil[kode_mapel]'>
                      $hasil[kode_mapel]-$hasil[kelas]
                </option>";
                          }
                          ?>
                        </select>
                      </td>
                    </tr>

                    <tr>
                      <td>
                        <input type="text" class="form-control" name="waktus[]" value="09:10 sd 09:45" readonly>
                      </td>

                      <td>
                        <select class="select2" name="nama_mapels[]">
                          <option value="Kosong">Kosong</option>
                          <?php
                          $Que = "select mapel.* from mapel";
                          $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                          while ($hasil = mysqli_fetch_array($myQry)) {
                            echo "<option value='$hasil[kode_mapel]'>
                      $hasil[kode_mapel]-$hasil[kelas]
                </option>";
                          }
                          ?>
                        </select>
                      </td>
                    </tr>

                    <tr>
                      <td>
                        <input type="text" class="form-control" name="waktus[]" value="09:45 sd 10:20" readonly>
                      </td>

                      <td>
                        <select class="select2" name="nama_mapels[]">
                          <option value="Kosong">Kosong</option>
                          <?php
                          $Que = "select mapel.* from mapel";
                          $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                          while ($hasil = mysqli_fetch_array($myQry)) {
                            echo "<option value='$hasil[kode_mapel]'>
                      $hasil[kode_mapel]-$hasil[kelas]
                </option>";
                          }
                          ?>
                        </select>
                      </td>
                    </tr>

                    <tr>
                      <td>
                        <input type="text" class="form-control" name="waktus[]" value="10:55 sd 11:30" readonly>
                      </td>

                      <td>
                        <select class="select2" name="nama_mapels[]">
                          <option value="Kosong">Kosong</option>
                          <?php
                          $Que = "select mapel.* from mapel";
                          $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                          while ($hasil = mysqli_fetch_array($myQry)) {
                            echo "<option value='$hasil[kode_mapel]'>
                      $hasil[kode_mapel]-$hasil[kelas]
                </option>";
                          }
                          ?>
                        </select>
                      </td>
                    </tr>

                    <tr>
                      <td>
                        <input type="text" class="form-control" name="waktus[]" value="11:30 sd 12:05" readonly>
                      </td>

                      <td>
                        <select class="select2" name="nama_mapels[]">
                          <option value="Kosong">Kosong</option>
                          <?php
                          $Que = "select mapel.* from mapel";
                          $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                          while ($hasil = mysqli_fetch_array($myQry)) {
                            echo "<option value='$hasil[kode_mapel]'>
                      $hasil[kode_mapel]-$hasil[kelas]
                </option>";
                          }
                          ?>
                        </select>
                      </td>
                    </tr>

                    <tr>
                      <td>
                        <input type="text" class="form-control" name="waktus[]" value="12:05 sd 12:40" readonly>
                      </td>

                      <td>
                        <select class="select2" name="nama_mapels[]">
                          <option value="Kosong">Kosong</option>
                          <?php
                          $Que = "select mapel.* from mapel";
                          $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                          while ($hasil = mysqli_fetch_array($myQry)) {
                            echo "<option value='$hasil[kode_mapel]'>
                      $hasil[kode_mapel]-$hasil[kelas]
                </option>";
                          }
                          ?>
                        </select>
                      </td>
                    </tr>

                    <tr>
                      <td>
                        <input type="text" class="form-control" name="waktus[]" value="13:15 sd 13:50" readonly>
                      </td>

                      <td>
                        <select class="select2" name="nama_mapels[]">
                          <option value="Kosong">Kosong</option>
                          <?php
                          $Que = "select mapel.* from mapel";
                          $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                          while ($hasil = mysqli_fetch_array($myQry)) {
                            echo "<option value='$hasil[kode_mapel]'>
                      $hasil[kode_mapel]-$hasil[kelas]
                </option>";
                          }
                          ?>
                        </select>
                      </td>
                    </tr>

                    <tr>
                      <td>
                        <input type="text" class="form-control" name="waktus[]" value="13:50 sd 14:25" readonly>
                      </td>

                      <td>
                        <select class="select2" name="nama_mapels[]">
                          <option value="Kosong">Kosong</option>
                          <?php
                          $Que = "select mapel.* from mapel";
                          $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query Sub Kelas" . mysqli_error($koneksi));
                          while ($hasil = mysqli_fetch_array($myQry)) {
                            echo "<option value='$hasil[kode_mapel]'>
                      $hasil[kode_mapel]-$hasil[kelas]
                </option>";
                          }
                          ?>
                        </select>
                      </td>
                    </tr>




                    <tr>
                      <td>
                        <button type="submit" name="simpan" class="btn btn-primary">Save changes</button>
                      </td>
                      <td>
                        <button type="cancel" class="btn btn-secondary" data-dismiss="modal">Close</button>
                      </td>
                    </tr>
                  </form>
                </table>
              </div>
            </div>


            <input type="hidden" name="admin" value="<?= $adm['nama_lengkap']; ?>" hidden>











          </div>
        </div>
      </div>
    </section>

  </div>

</div>
<script>
  $(document).ready(function() {
    $('.js-example-basic-single').select2();
  });
</script>
<?php include 'comp/footer.php'; ?>