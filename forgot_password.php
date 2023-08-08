<?php

include 'config/config.php';

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="au theme template">
    <meta name="author" content="Hau Nguyen">
    <meta name="keywords" content="au theme template">

    <link rel="icon" type="image/png" href="assets/images/logo.png">

    <!-- Title Page-->
    <title>Forgot Password</title>

    <!-- Fontfaces CSS-->
    <link href="assets/css/font-face.css" rel="stylesheet" media="all">
    <link href="assets/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="assets/vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="assets/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="assets/vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">


    <!-- Main CSS-->
    <link href="assets/css/theme.css" rel="stylesheet" media="all">

</head>

<body class="animsition">
    <div class="page-wrapper">
        <div class="page-content--bge5" style="background-color:#F5FFFA;">
            <div class="container">
                <div class="login-wrap">
                    <div class="login-content">
                        <div class="login-logo">
                            <a href="#">
                                <?php gambar("logo.png", "150"); ?>
                            </a>
                            <h2>SMK GARUDA MAHADHIKA </h2>

                        </div>
                        <div class="login-form">
                            <form action="forgot.php" method="post">
                                <div class="form-group">
                                    <label>Username</label>
                                    <input class="au-input au-input--full" required="" type="username" autocomplete="off" name="username" placeholder="Username">
                                </div>
                                <div class="form-group">
                                    <label>Password</label>
                                    <input class="au-input au-input--full" required="" id="txtNewPassword" type="password" name="password" placeholder="Password">
                                </div>
                                <div class="form-group">
                                    <label>Ulangi Password</label>
                                    <input class="au-input au-input--full" required="" id="txtConfirmPassword" type="password" name="password2" placeholder="Password">
                                </div>
                                <div class="login-checkbox">

                                </div>
                                <button name="simpan" class="au-btn au-btn--block au-btn--green m-b-20" type="submit">Proses</button>

                            </form>
                            <!-- Login -->

                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>



    <!-- Jquery JS-->
    <script src="<?= url() ?>vendor/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap JS-->
    <script src="<?= url() ?>vendor/bootstrap-4.1/popper.min.js"></script>
    <script src="<?= url() ?>vendor/bootstrap-4.1/bootstrap.min.js"></script>
    <!-- <?= url() ?>Vendor JS       -->
    <script src="<?= url() ?>vendor/slick/slick.min.js">
    </script>
    <script src="<?= url() ?>vendor/wow/wow.min.js"></script>
    <script src="<?= url() ?>vendor/animsition/animsition.min.js"></script>
    <script src="<?= url() ?>vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
    </script>
    <script src="<?= url() ?>vendor/counter-up/jquery.waypoints.min.js"></script>
    <script src="<?= url() ?>vendor/counter-up/jquery.counterup.min.js">
    </script>
    <script src="<?= url() ?>vendor/circle-progress/circle-progress.min.js"></script>
    <script src="<?= url() ?>vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="<?= url() ?>vendor/chartjs/Chart.bundle.min.js"></script>
    <script src="<?= url() ?>vendor/select2/select2.min.js">
    </script>

    <!-- Main JS-->
    <script src="<?= url() ?>assets/js/main.js"></script>

</body>

</html>
<!-- end document-->