<?php include 'comp/header.php'; ?>



<div class="main-content mb-1">
    <div class="section__content section__content--p30">

    </div>
    <div class="content-wrapper">
        <div class="content-header mr-2">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h3 class="col-sm-6 ml-5">Data Tagihan Biaya Pendidikan </h3>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="index.php?m=awal">Home</a></li>
                        <li class="breadcrumb-item active">Pembayaran</li>
                    </ol>
                </div>
            </div>

            <div class="row mb-3">
                <div class="col-sm-2 ml-5">
                    <form action="?m=print_tag" target="_blank" method="POST" enctype="multipart/form-data">
                        <div class="form-group">
                            <select name="pembayaran" id="id_cari" class="form-control" require>
                                <option value="">--PILIH PEMBAYARAN</option>
                                <option value="SPP -  Januari">SPP-JANUARI</option>
                                <option value="SPP -  Februari">SPP-FEBRUARI</option>
                                <option value="SPP -  Maret">SPP-MARET</option>
                                <option value="SPP -  April">SPP-APRIL</option>
                                <option value="SPP -  Mei">SPP-MEI</option>
                                <option value="SPP -  Juni">SPP-JUNI</option>
                                <option value="SPP -  Juli">SPP-JULI</option>
                                <option value="SPP -  Agustus">SPP-AGUSTUS</option>
                                <option value="SPP -  September">SPP-SEPTEMBER</option>
                                <option value="SPP -  Oktober">SPP-OKTOBER</option>
                                <option value="SPP -  November">SPP-NOVEMBER</option>
                                <option value="SPP -  Desember">SPP-DESEMBER</option>
                                <option value="REGISTRASI - ">REGISTRASI</option>
                            </select>
                        </div>
                </div>
                <div class="col-sm-2">
                    <div class="form-group">
                        <select name="jenispem" id="id_cari" class="form-control" require>
                            <?php
                            $Que = "select tb_tahun_ajaran.* from tb_tahun_ajaran order by id_tapel DESC ";
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
                <div class="col-sm-2">
                    <button type="submit" id="search" name="find" class="btn btn-success ml-3">PRINT</button>
                </div>
                </form>

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
                                        <th>No</th>
                                        <th>Tahun Ajaran</th>
                                        <th>Jenis Pembayaran</th>
                                        <th>NIS - Nama</th>
                                        <th>Kelas&Jurusan</th>
                                        <th>Setoran</th>
                                        <th>Sisa Pembayaran</th>



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