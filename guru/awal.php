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
                    <br>
                </div>
            </div>
        </div>
    </section>
    <!-- END WELCOME-->

    <!-- KONTEN-->
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2>Jadwal Mengajar <?= $adm['nama_lengkap']; ?></h2>
                <hr><br>

                <?php
                date_default_timezone_set("Asia/Jakarta");
                $waktu = date("d-m-Y");

                $hariIndo = [
                    'Sunday' => 'Minggu',
                    'Monday' => 'Senin',
                    'Tuesday' => 'Selasa',
                    'Wednesday' => 'Rabu',
                    'Thursday' => 'Kamis',
                    'Friday' => 'Jumat',
                    'Saturday' => 'Sabtu',
                ];

                $hari =
                    $hariIndo[date('l', strtotime($waktu))];;
                $nama = $adm['nama_lengkap'];


                $siswa = mysqli_query($koneksi, "SELECT * FROM jadwalmapel JOIN sk ON sk.mapel=jadwalmapel.kd_mapel WHERE hari='$hari' AND nama_guru='$nama' ORDER BY id_jadwalmapel");


                $result = array();
                while ($data = mysqli_fetch_array($siswa)) {
                    $result[] = $data; //result dijadikan array
                }
                foreach ($siswa as $pro) : ?>
                    <div class="table-responsive table--no-card m-b-30 ml-5 mr-5">
                        <table class="table table-borderless table-striped table-earning">
                            <tr>
                                <td>
                                    <?= $pro['hari']; ?>
                                </td>
                                <td>
                                    <?= $pro['waktu']; ?>
                                </td>
                                <td>
                                    <?= $pro['kd_mapel']; ?>
                                </td>
                                <td>
                                    <?= $pro['kelas']; ?>
                                </td>
                            </tr>
                        </table>
                    </div>
                <?php endforeach; ?>



                <?php include 'comp/footer.php'; ?>