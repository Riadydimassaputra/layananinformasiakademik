<?php

require '../fungsi/fungsi.php';

foreach (summon_admin() as $adm) :
?>
    <?php

    ob_start();

    if (isset($_POST['bayaron'])) {
        bayaronline();
    }
    ?>

    <!DOCTYPE html>
    <html lang="en">

    <head>
        <!-- Required meta tags-->
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="au theme template">
        <meta name="author" content="Hau Nguyen">
        <meta name="keywords" content="au theme template">

        <!-- Icon -->
        <link rel="icon" type="image/png" href="<?= url() ?>images/logo.png">
        <!-- Title Page-->
        <title><?= $judul; ?></title>

        <!-- Fontfaces CSS-->
        <link href="<?= url() ?>css/font-face.css" rel="stylesheet" media="all">
        <link href="<?= url() ?>vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
        <link href="<?= url() ?>vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
        <link href="<?= url() ?>vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <!-- Bootstrap CSS-->
        <link href="<?= url() ?>vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

        <!-- <?= url() ?>Vendor CSS-->
        <link href="<?= url() ?>vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
        <link href="<?= url() ?>vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
        <link href="<?= url() ?>vendor/wow/animate.css" rel="stylesheet" media="all">
        <link href="<?= url() ?>vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
        <link href="<?= url() ?>vendor/slick/slick.css" rel="stylesheet" media="all">
        <link href="<?= url() ?>vendor/select2/select2.min.css" rel="stylesheet" media="all">
        <link href="<?= url() ?>vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">

        <!-- Main CSS-->
        <link href="<?= url() ?>css/theme.css" rel="stylesheet" media="all">

    </head>

    <body class="animsition">
        <div class="page-wrapper">
            <!-- HEADER DESKTOP-->
            <header class="header-desktop3 d-none d-lg-block">
                <div class="section__content section__content--p35">
                    <div class="header3-wrap">
                        <div class="header__logo">
                            <div class="img-cir">
                                <a href="index.php">
                                    <?= gambar("logo.png", "50") ?>
                                </a>
                            </div>
                            <!-- Bulan -->
                            <a href="index.php">
                                <h3 class="ml-4" style="color: WHITE;">SMK GARUDA MAHADHIKA</h3>
                            </a>
                        </div>
                        <div class="header__navbar">
                            <ul class="list-unstyled">

                                <li class="has-sub">
                                    <a href="#">
                                        <i class="fa fa-compass" aria-hidden="true"></i>
                                        <span class="bot-line"></span>Data Master</a>

                                    <ul class="header3-sub-list list-unstyled">
                                        <li>
                                            <a href="?m=mapel">Data Mata Pelajaran <span class="bot-line"></span></a>
                                        </li>
                                        <li>
                                            <a href="?m=prestasidetail&NIS=<?= $adm['username']; ?>">Data Prestasi Siswa <span class="bot-line"></span></a>
                                        </li>
                                        <li>
                                            <a href="?m=ekskul">Data Ekstakurikuler <span class="bot-line"></span></a>
                                        </li>
                                        <li>
                                            <a href="?m=guru">Data Guru <span class="bot-line"></span></a>
                                        </li>
                                        <li>
                                            <a href="?m=jadwalmapel">Jadwal Pelajaran <span class="bot-line"></span></a>
                                        </li>
                                        <li>
                                            <a href="?m=jadwalekskul">Jadwal Ekstakurikuler <span class="bot-line"></span></a>
                                        </li>
                                        <li>
                                            <a href="?m=jurnal">Jurnal Kelas <span class="bot-line"></span></a>
                                        </li>
                                        <li>
                                            <a href="?m=verif">Verifikasi Pembayaran <span class="bot-line"></span></a>
                                        </li>
                                        <li>
                                            <a href="?m=siswabeasiswa">Penerima Beasiswa <span class="bot-line"></span></a>
                                        </li>


                                    </ul>
                                </li>

                                <li class="has-sub">
                                    <a href="?m=list">
                                        <i class="fa fa-credit-card" aria-hidden="true"></i>
                                        <span class="bot-line"></span>Pembayaran</a>

                                </li>

                                <li class="has-sub">
                                    <a href="#">
                                        <i class="fa fa-file-text-o" aria-hidden="true"></i>
                                        <span class="bot-line"></span>Pendaftaran</a>
                                    <ul class="header3-sub-list list-unstyled">
                                        <li>
                                            <a href="?m=regisekskul">Daftar Ekstakurikuler <span class="bot-line"></span></a>
                                        </li>
                                        <li>
                                            <a href="?m=infobeasiswa">Daftar Beasiswa <span class="bot-line"></span></a>
                                        </li>
                                        <li>
                                            <a href="?m=daftarbeasiswa">Daftar Antri Verif Beasiswa <span class="bot-line"></span></a>
                                        </li>
                                    </ul>



                                </li>

                                <li class="has-sub">
                                    <a href="?m=kritik">
                                        <i class="fa fa-plus-square" aria-hidden="true"></i>
                                        <span class="bot-line"></span>KRITIK DAN SARAN</a>

                                </li>
                            </ul>
                            </li>

                            </ul>
                        </div>
                        <div class="header__tool">


                            <div class="account-wrap">
                                <div class="account-item account-item--style2 clearfix js-item-menu">
                                    <div class="content">
                                        <a class="js-acc-btn" href="#"><?= $adm['nama_lengkap']; ?></a>
                                    </div>
                                    <div class="account-dropdown js-dropdown">
                                        <div class="info clearfix">
                                            <div class="image">
                                                <a href="#">

                                                </a>
                                            </div>
                                            <div class="content">
                                                <h5 class="name">
                                                    <a href="#"><?= $adm['nama_lengkap']; ?></a>
                                                </h5>

                                            </div>
                                        </div>
                                        <div class="account-dropdown__body">
                                            <div class="account-dropdown__item">
                                                <a href="?m=akun">
                                                    <i class="zmdi zmdi-account"></i>Akun</a>
                                            </div>
                                            <!-- <div class="account-dropdown__item">
                                            <a href="#">
                                                <i class="zmdi zmdi-settings"></i>Pengaturan</a>
                                        </div> -->

                                        </div>
                                        <div class="account-dropdown__footer">
                                            <a href="../fungsi/logout.php">
                                                <i class="zmdi zmdi-power"></i>Logout</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <!-- END HEADER DESKTOP-->

            <!-- HEADER MOBILE-->
            <header class="header-mobile header-mobile-2 d-block d-lg-none">
                <div class="header-mobile__bar">
                    <div class="container-fluid">
                        <div class="header-mobile-inner">
                            <div class="img-cir">
                                <a class="logo" href="index.php">
                                    <?= gambar("logo.png", "60") ?>
                                </a>
                            </div>

                            <button class="hamburger hamburger--slider" type="button">
                                <span class="hamburger-box">
                                    <span class="hamburger-inner"></span>
                                </span>
                            </button>
                        </div>
                    </div>
                </div>
                <nav class="navbar-mobile">
                    <div class="container-fluid">
                        <ul class="navbar-mobile__list list-unstyled">

                            <li class="has-sub">
                                <a class="js-arrow" href="#">
                                    <i class="fas fa-copy"></i>Data Master</a>
                                <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                                    <li>
                                        <a href="?m=mapel">Data Mata Pelajaran <span class="bot-line"></span></a>
                                    </li>
                                    <li>
                                        <a href="?m=prestasidetail&NIS=<?= $adm['username']; ?>">Data Prestasi Siswa <span class="bot-line"></span></a>
                                    </li>
                                    <li>
                                        <a href="?m=ekskul">Data Ekstakurikuler <span class="bot-line"></span></a>
                                    </li>
                                    <li>
                                        <a href="?m=guru">Data Guru <span class="bot-line"></span></a>
                                    </li>
                                    <li>
                                        <a href="?m=jadwalmapel">Jadwal Pelajaran <span class="bot-line"></span></a>
                                    </li>
                                    <li>
                                        <a href="?m=jadwalekskul">Jadwal Ekstakurikuler <span class="bot-line"></span></a>
                                    </li>
                                    <li>
                                        <a href="?m=jurnal">Jurnal Kelas <span class="bot-line"></span></a>
                                    </li>
                                    <li>
                                        <a href="?m=verif">Verifikasi Pembayaran <span class="bot-line"></span></a>
                                    </li>
                                    <li>
                                        <a href="?m=siswabeasiswa">Penerima Beasiswa <span class="bot-line"></span></a>
                                    </li>
                                </ul>
                            </li>

                            <li class="has-sub">
                                <a href="?m=list">
                                    <i class="fa fa-credit-card" aria-hidden="true"></i>
                                    <span class="bot-line"></span>Pembayaran</a>

                            </li>

                            <li class="has-sub">
                                <a href="#">
                                    <i class="fa fa-file-text-o" aria-hidden="true"></i>
                                    <span class="bot-line"></span>Pendaftaran</a>
                                <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                                    <li>
                                        <a href="?m=regisekskul">Daftar Ekstakurikuler <span class="bot-line"></span></a>
                                    </li>
                                    <li>
                                        <a href="?m=infobeasiswa">Daftar Beasiswa <span class="bot-line"></span></a>
                                    </li>
                                    <li>
                                        <a href="?m=daftarbeasiswa">Daftar Antri Verif Beasiswa <span class="bot-line"></span></a>
                                    </li>
                                </ul>

                            </li>

                            <li class="has-sub">
                                <a href="?m=kritik">
                                    <i class="fa fa-plus-square" aria-hidden="true"></i>
                                    <span class="bot-line"></span>KRITIK DAN SARAN</a>

                            </li>

                        </ul>
                    </div>
                </nav>
            </header>
            <div class="sub-header-mobile-2 d-block d-lg-none">
                <div class="header__tool">


                    <div class="account-wrap">
                        <div class="account-item account-item--style2 clearfix js-item-menu">
                            <div class="image">
                            </div>
                            <div class="content">
                                <a class="js-acc-btn" href="#"><?= $adm['nama_lengkap']; ?></a>
                            </div>
                            <div class="account-dropdown js-dropdown">
                                <div class="info clearfix">
                                    <div class="image">
                                        <a href="#">
                                            <div class="img-cir">
                                                <?php
                                                $nama = $adm['nama_lengkap'];
                                                $siswa = mysqli_query($koneksi, "SELECT * FROM siswa WHERE nama_siswa='$nama'");
                                                $result = array();
                                                while ($data = mysqli_fetch_array($siswa)) {
                                                    $result[] = $data; //result dijadikan array 
                                                }
                                                foreach ($siswa as $pro) :
                                                ?>
                                                    <img src=" <?php echo "../operator/images/" . $pro['pasfoto'] ?>">
                                                <?php endforeach; ?>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="content">
                                        <h5 class="name">
                                            <a href="#"><?= $adm['nama_lengkap']; ?></a>
                                        </h5>

                                    </div>
                                </div>
                                <div class="account-dropdown__body">
                                    <div class="account-dropdown__item">
                                        <a href="?m=akun">
                                            <i class="zmdi zmdi-account"></i>Akun</a>
                                    </div>
                                    <!--  <div class="account-dropdown__item">
                                    <a href="#">
                                        <i class="zmdi zmdi-settings"></i>Setting</a>
                                </div> -->

                                </div>
                                <div class="account-dropdown__footer">
                                    <a href="../fungsi/logout.php">
                                        <i class="zmdi zmdi-power"></i>Logout</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <?php endforeach; ?>
        <!-- END HEADER MOBILE -->
        <div class="content-header mr-2 mt-5">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h3 class="col-sm-6 ml-5">Pembayaran</h3>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="index.php?m=awal">Home</a></li>
                        <li class="breadcrumb-item active">Pembayaran</li>
                    </ol>
                </div><!-- /.col -->
            </div>
        </div>

        <section class="section mt-3 ml-5 ">

            <div class="row">
                <div class="col-sm-12"><br>

                    <div class="col-sm-6 ml-5">
                        <form action="" method="POST">
                            <table>
                                <tr>
                                    <td><b>Cari NIS :</b> </td>
                                    <td><b><input type="text" class="form-control ml-2" name="cari" autocomplete="off" value="<?= $adm['username']; ?>" readonly></b></td>
                                </tr>
                                <tr>
                                    <td><b>TAHUN AJARAN :</b> </td>
                                    <td>
                                        <select name="tahun_ajaran" id="id_tahun" class="form-control ml-2" require="">
                                            <?php
                                            $Que = "select tb_tahun_ajaran.* from tb_tahun_ajaran order by id_tapel DESC";
                                            $myQry = mysqli_query($koneksi, $Que) or die("Gagal Query sub Gudang " . mysqli_error($koneksi));
                                            while ($hasil = mysqli_fetch_array($myQry)) {
                                                echo "<option value='$hasil[tapel]' >
                                                    $hasil[tapel]
                                                    </option>";
                                            }
                                            ?>
                                        </select>
                                    </td>
                                    <td><button type="submit" name="go" class="btn btn-success ml-3" onclick="fungsinis()"><i class="fa fa-search" aria-hidden="true"></i></button></td>
                                </tr>
                            </table>

                        </form>

                    </div>
                    <div class="col-sm-6 ml-5">
                        <?php



                        if (isset($_POST['go'])) {

                            global $koneksi;


                            $cari = $_POST['cari'];
                            $tahun  =   $_POST['tahun_ajaran'];
                            if ($cari != '') {

                                $select = mysqli_query($koneksi, "SELECT * FROM siswa INNER JOIN kelas on siswa.id_kls=kelas.id_kelas INNER JOIN tagihan on siswa.NIS=tagihan.NIS WHERE siswa.NIS='$cari'");

                                $cek = mysqli_fetch_row($select);

                                if ($cek > 0) {
                                    $select = mysqli_query($koneksi, "SELECT * FROM siswa INNER JOIN kelas on siswa.id_kls=kelas.id_kelas INNER JOIN tagihan on siswa.NIS=tagihan.NIS WHERE siswa.NIS='$cari'");
                                    $r = mysqli_fetch_array($select);


                                    include 'data.php';
                                } else {
                                    echo '<div class="alert alert-danger alert-dismissible fade show" role="alert">
                                NIS <strong>' . $cari . '</strong> tidak ditemukan
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                                </div>';
                                }
                            } else {
                                echo '<div class="alert alert-danger alert-dismissible fade show" role="alert">
                                <strong>Mohon masukkan data pencarian!</strong>
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                                </div>';
                            }
                        }

                        ?>
                    </div>
                </div>
            </div>

        </section>
        <?php include 'comp/footer.php'; ?>