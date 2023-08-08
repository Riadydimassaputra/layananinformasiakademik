<?php include 'comp/header.php'; ?>

<!-- PAGE CONTENT-->
<div class="page-content--bgf7">
    <!-- BREADCRUMB-->
    <section class="au-breadcrumb2">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="au-breadcrumb-content">
                        <div class="au-breadcrumb-left">
                            <span class="au-breadcrumb-span">You are here:</span>
                            <ul class="list-unstyled list-inline au-breadcrumb__list">
                                <li class="list-inline-item active">
                                    <a href="#">Home</a>
                                </li>
                                <li class="list-inline-item seprate">
                                    <span>/</span>
                                </li>
                                <li class="list-inline-item">Dashboard</li>
                            </ul>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- END BREADCRUMB-->

    <!-- WELCOME-->
    <section class="welcome p-t-10">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1 class="title-4">Welcome back,
                        <span><?php echo $adm['nama_lengkap']; ?>!</span>
                    </h1>
                    <hr class="line-seprate">
                </div>
            </div>
        </div>
    </section>
    <!-- END WELCOME-->

    <!-- STATISTIC-->
    <section class="statistic statistic2">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-lg-4">
                    <div class="statistic__item statistic__item--green">
                        <h2 class="number"><?= stat_siswa() ?></h2>
                        <span class="desc">Jumlah Siswa</span>
                        <div class="icon">
                            <i class="fa fa-users"></i>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4">
                    <div class="statistic__item statistic__item--orange">
                        <h2 class="number"><?= stat_kelas() ?></h2>
                        <span class="desc">Jumlah Kelas</span>
                        <div class="icon">
                            <i class="fa fa-building" aria-hidden="true"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>

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
                    <?php

                    $no = 1;
                    ?>
                    <tbody>
                        <?php
                        $waktu = date('d-m-Y');
                        $bulanIndo = [
                            '01' => 'Januari',
                            '02' => 'Februari',
                            '03' => 'Maret',
                            '04' => 'April',
                            '05' => 'Mei',
                            '06' => 'Juni',
                            '07' => 'Juli',
                            '08' => 'Agustus',
                            '09' => 'September',
                            '10' => 'Oktober',
                            '11' => 'November',
                            '12' => 'Desember',
                        ];

                        $tgl     = $bulanIndo[date('m', strtotime($waktu))] . "  " . date('Y', strtotime($waktu));


                        $siswa = mysqli_query($koneksi, "SELECT * from tagihan inner join siswa on tagihan.NIS=siswa.NIS inner join kelas on siswa.id_kls=kelas.id_kelas WHERE status='Belum Terbayarkan' AND pembayaran LIKE '%" . $tgl . "%'");

                        $result = array();
                        while ($pro = mysqli_fetch_array($siswa)) {

                        ?>




                            <tr>
                                <td><?= $no++;  ?></td>
                                <td><?= $pro['jenispem']; ?></td>
                                <td><?= $pro['pembayaran']; ?></td>
                                <td><?= $pro['NIS']; ?> - <?= $pro['nama_siswa']; ?></td>
                                <td><?= $pro['nama_kelas']; ?>-<?= $pro['jurusan']; ?></td>
                                <td>Rp. <?= number_format($pro['bayar'], 0, ',', '.'); ?></td>
                                <td>Rp. <?= number_format($pro['sisa_bayar'], 0, ',', '.'); ?></td>

                            </tr>

                        <?php } ?>

                    </tbody>
                </table>

                <script>
                    $(document).ready(function() {
                        $('#myTable').DataTable();
                    });
                </script>
                <hr class="line-seprate">
            </div>
        </div>
</div>
</section>
<!-- END STATISTIC-->




<?php include 'comp/footer.php'; ?>