<?php require '../fungsi/fungsi.php'; ?>

<?php foreach (summon_admin() as $adm) : ?>


    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="au theme template">
        <meta name="author" content="Hau Nguyen">
        <meta name="keywords" content="au theme template">

        <!-- Icon -->
        <link rel="icon" type="image/png" href="<?= url() ?>/images/logo.png">
        <!-- Title Page-->
        <title><?= $judul; ?></title>

        <!-- Fontfaces CSS-->
        <link href="<?= url() ?>css/font-face.css" rel="stylesheet" media="all">
        <link href="<?= url() ?>vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
        <link href="<?= url() ?>vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
        <link href="<?= url() ?>vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

        <!-- Bootstrap CSS-->
        <link href="<?= url() ?>vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/1.13.4/css/jquery.dataTables.css" />

        <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
        <script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
        <script>
            // In your Javascript (external .js resource or <script> tag)
            $(document).ready(function() {
                $('.select2').select2();
            });
        </script>

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
        <link href="<?= url() ?>css/theme.css" rel="stylesheet" media="all">
        <style>
            #my_camera {
                width: 320px;
                height: 240px;
                border: 1px solid black;
            }
        </style>
    </head>

    <body class="animsition">
        <div class="page-wrapper">
            <!-- HEADER DESKTOP-->
            <header class="header-desktop3 d-none d-lg-block">
                <div class="section__content section__content--p35">
                    <div class="header3-wrap">
                        <div class="header__logo">
                            <div class="img-cir">
                                <a href="#">
                                    <?= gambar("logo.png", "50") ?>
                                </a>
                            </div>
                            <!-- Bulan -->
                            <h3 class="ml-4" style="color: WHITE;">SMK GARUDA MAHADHIKA</h3>
                        </div>
                        <div class="header__navbar">
                            <ul class="list-unstyled">
                                <li class="has-sub">
                                    <a href="index.php">
                                        <i class="fas fa-tachometer-alt"></i>Dashboard
                                        <span class="bot-line"></span>
                                    </a>

                                </li>
                                <li class="has-sub">
                                    <a href="#">
                                        <i class="fa fa-compass" aria-hidden="true"></i>
                                        <span class="bot-line"></span>Data Master</a>

                                    <ul class="header3-sub-list list-unstyled">
                                        <li>
                                            <a href="?m=input">Data Kegiatan <span class="bot-line"></span></a>
                                        </li>
                                        <li>
                                            <a href="?m=daftaralumni">Data Alumni <span class="bot-line"></span></a>
                                        </li>
                                        <li>
                                            <a href="?m=daftarsiswabaru">Data Siswa Baru <span class="bot-line"></span></a>
                                        </li>
                                        <li>
                                            <a href="?m=daftarskguru">Data SK Guru <span class="bot-line"></span></a>
                                        </li>
                                        <li>
                                            <a href="?m=jurnal"> Isi Laporan<span class="bot-line"></span></a>
                                        </li>
                                        <li>
                                            <a href="?m=laporanguru">Data Laporan Guru <span class="bot-line"></span></a>
                                        </li>

                                    </ul>
                                </li>


                                <li class="has-sub">
                                    <a href="#">
                                        <i class="fa fa-book" aria-hidden="true"></i>
                                        <span class="bot-line"></span>Laporan</a>
                                    <ul class="header3-sub-list list-unstyled">
                                        <li>
                                            <a href="?m=laporan">Laporan Kehadiran Guru<span class="bot-line"></span></a>
                                        </li>
                                        <li>
                                            <a href="?m=laporantotal">Laporan Prestasi Guru <span class="bot-line"></span></a>
                                        </li>
                                        <li>
                                            <a href="?m=regisekskul">Daftar Ekstakurikuler <span class="bot-line"></span></a>
                                        </li>
                                        <li>
                                            <a href="?m=kritik">KRITIK DAN SARAN <span class="bot-line"></span></a>
                                        </li>
                                        <li>
                                            <a href="?m=tagihan">Data Pembayaran Lunas <span class="bot-line"></span></a>
                                        </li>


                                        <li>
                                            <a href="?m=cicil">Data Pembayaran Cicil SPP<span class="bot-line"></span></a>
                                        </li>

                                        <li>
                                            <a href="?m=cicilreg">Data Pembayaran Cicil Register<span class="bot-line"></span></a>
                                        </li>
                                        <li>
                                            <a href="?m=daftar_tag">Data Tagihan <span class="bot-line"></span></a>
                                        </li>





                                    </ul>
                                </li>

                            </ul>
                        </div>
                        <div class="header__tool">


                            <div class="account-wrap">
                                <div class="account-item account-item--style2 clearfix js-item-menu">
                                    <div class="image">
                                        <div class="img-cir">

                                        </div>
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
                                                        $siswa = mysqli_query($koneksi, "SELECT * FROM guru WHERE nama_guru='$nama'");
                                                        $result = array();
                                                        while ($data = mysqli_fetch_array($siswa)) {
                                                            $result[] = $data; //result dijadikan array 
                                                        }
                                                        foreach ($siswa as $pro) :
                                                        ?>
                                                            <img src=" <?php echo "../admsek/images/" . $pro['foto'] ?>">
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
                                <a href="#">
                                    <i class="fas fa-tachometer-alt"></i>Dashboard
                                    <span class="bot-line"></span>
                                </a>

                            </li>

                            <li class="has-sub">
                                <a class="js-arrow" href="#">
                                    <i class="fas fa-copy"></i>Data Master</a>
                                <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                                    <li>
                                        <a href="?m=input">Data Kegiatan <span class="bot-line"></span></a>
                                    </li>
                                    <li>
                                        <a href="?m=daftaralumni">Data Alumni <span class="bot-line"></span></a>
                                    </li>
                                    <li>
                                        <a href="?m=daftarsiswabaru">Data Siswa Baru <span class="bot-line"></span></a>
                                    </li>
                                    <li>
                                        <a href="?m=daftarskguru">Data SK Guru <span class="bot-line"></span></a>
                                    </li>
                                    <li>
                                        <a href="?m=jurnal"> Isi Laporan<span class="bot-line"></span></a>
                                    </li>
                                    <li>
                                        <a href="?m=laporanguru">Data Laporan Guru <span class="bot-line"></span></a>
                                    </li>
                                </ul>
                            </li>


                            <li class="has-sub">
                                <a class="js-arrow" href="#">
                                    <i class="fa fa-book"></i>
                                    Laporan</a>
                                <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                                    <li>
                                        <a href="?m=laporan">Laporan Kehadiran Guru<span class="bot-line"></span></a>
                                    </li>
                                    <li>
                                        <a href="?m=laporantotal">Laporan Prestasi Guru <span class="bot-line"></span></a>
                                    </li>
                                    <li>
                                        <a href="?m=regisekskul">Daftar Ekstakurikuler <span class="bot-line"></span></a>
                                    </li>
                                    <li>
                                        <a href="?m=kritik">KRITIK DAN SARAN <span class="bot-line"></span></a>
                                    </li>

                                    <li>
                                        <a href="?m=tagihan">Data Pembayaran Lunas <span class="bot-line"></span></a>
                                    </li>

                                    <li>
                                        <a href="?m=cicil">Data Pembayaran Cicil SPP<span class="bot-line"></span></a>
                                    </li>

                                    <li>
                                        <a href="?m=cicilreg">Data Pembayaran Cicil Register<span class="bot-line"></span></a>
                                    </li>
                                    <li>
                                        <a href="?m=daftar_tag">Data Tagihan <span class="bot-line"></span></a>
                                    </li>


                                </ul>
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
                                <div class="img-cir">
                                    <?= gambar("logo.png", "120") ?>
                                </div>
                            </div>
                            <div class="content">
                                <a class="js-acc-btn" href="#"><?= $adm['nama_lengkap']; ?></a>
                            </div>
                            <div class="account-dropdown js-dropdown">
                                <div class="info clearfix">
                                    <div class="image">
                                        <a href="#">
                                            <div class="img-cir">
                                                <?= gambar("logo.png", "120") ?>
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