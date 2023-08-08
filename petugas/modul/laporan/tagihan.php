<?php include 'comp/header.php'; ?>

<?php
if (isset($_POST['hapus'])) {
    deletespp();
}
?>

<div class="main-content mb-1">
    <div class="section__content section__content--p30">

    </div>
    <div class="content-wrapper">
        <div class="content-header mr-2">
            <div class="row mb-2">
                <div class="col-sm-8">
                    <h3 class="col-sm-6 ml-5">Data Pembayaran Biaya Pendidikan Lunas</h3>
                </div><!-- /.col -->
                <div class="col-sm-4">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="index.php?m=awal">Home</a></li>
                        <li class="breadcrumb-item active">Pembayaran</li>
                    </ol>
                </div>
            </div>

            <div class="row mb-3">
                <div class="col-sm-2 ml-5">
                    <form action="?m=printt" target="_blank" method="POST" enctype="multipart/form-data">
                        <div class="form-group">
                            <input type="text" placeholder="2022" name="tahun" autocomplete="off" class="form-control" require>
                        </div>
                </div>
                <div class="col-sm-2">
                    <div class="form-group">
                        <select name="bulan" id="id_cari" class="form-control" require>
                            <option value="">--PILIH BULAN--</option>
                            <option value="Januari">Januari</option>
                            <option value="Februari">Februari</option>
                            <option value="Maret">Maret</option>
                            <option value="April">April</option>
                            <option value="Mei">Mei</option>
                            <option value="Juni">Juni</option>
                            <option value="Juli">Juli</option>
                            <option value="Agustus">Agustus</option>
                            <option value="September">September</option>
                            <option value="Oktober">Oktober</option>
                            <option value="November">-November</option>
                            <option value="Desember">Desember</option>


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
                                        <th>Tahun&Bulan</th>
                                        <th>NIS - Nama</th>
                                        <th>Kelas&Jurusan</th>
                                        <th>Jenis Pembayaran</th>
                                        <th>Setoran</th>
                                        <th>Status</th>
                                        <th>Aksi</th>


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