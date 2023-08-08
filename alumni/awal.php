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
                <div class="col-md-12">
                    <h1 class="title-4">Pengumuman Terbaru</h1><br>
                    <div class="table-responsive table--no-card m-b-30 ml-5 mr-5">
                        <table class="table table-borderless table-striped table-earning">
                            <tr>
                                <?php

                                $siswa = mysqli_query($koneksi, "SELECT * from pengumuman order by id_pengumuman DESC LIMIT 5");
                                $result = array();
                                while ($data = mysqli_fetch_array($siswa)) {
                                    $result[] = $data; //result dijadikan array
                                }

                                foreach ($siswa as $key) : ?>




                                    <td>
                                        <a href="?m=berita&id_pengumuman=<?= $key['id_pengumuman'] ?>"> <?= $key['nama_pengumuman']; ?></a>
                                        <p style="font-size:18px ;"><?= $key['tanggal'] ?></p>
                                    </td>


                            </tr>

                        <?php endforeach; ?>
                        </table>
                    </div>

                    <hr class="line-seprate">
                </div>
            </div>
        </div>
    </section>
    <!-- END WELCOME-->

    <!-- KONTEN-->
  


        <?php include 'comp/footer.php'; ?>