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
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h3>INFORMASI PEMBAYARAN SPP</h3>
                <?php
                date_default_timezone_set("Asia/Jakarta");
                $waktu = date("d-m-Y");
                $batas = date("Y-m-d");
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
                $NIS = $adm['username'];


                $siswa = mysqli_query($koneksi, "SELECT * from tagihan inner join siswa on tagihan.NIS=siswa.NIS inner join kelas on siswa.id_kls=kelas.id_kelas WHERE status='Belum Terbayarkan' AND tagihan.NIS='$NIS' AND pembayaran LIKE '%" . $tgl . "%'");
                $result = array();
                while ($data = mysqli_fetch_array($siswa)) {
                    $result[] = $data; //result dijadikan array 
                }

                foreach ($siswa as $key) :
                    $tgl1 = $key['jatuhtempo'];
                    $jatuh = date('d-m-Y', strtotime($tgl1));
                    $tgl2 = date('d-m-Y', strtotime('+10 days', strtotime($tgl1)));
                ?>
                    <div class="table-responsive table--no-card m-b-30 ml-5 mr-5">
                        <br>
                        <table class="table table-borderless table-striped table-earning">
                            <tr>
                                <td>
                                    <?= $key['pembayaran']; ?>
                                </td>
                                <td>
                                    <?= $key['nominal']; ?>
                                </td>
                                <td>
                                    <?= $key['status']; ?>
                                </td>
                                <td>
                                    <?= $key['jatuhtempo']; ?>
                                </td>
                                <td>
                                    <?php
                                    if (($batas <= $key['jatuhtempo'])) {
                                        echo '<button class="btn btn-warning" name="cetak" data-toggle="modal" data-target="#cetak_karyawan= $key["id_tagihan"];" disabled>CETAK</button>';
                                    } else {
                                    ?>

                                        <button class="btn btn-warning" name="cetak" data-toggle="modal" data-target="#cetak_karyawan<?= $key['id_tagihan']; ?>">CETAK</button><?php } ?>
                                    <div class="modal fade bd-example-modal-lg" id="cetak_karyawan<?= $key['id_tagihan']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog modal-lg" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLabel">Cetak Surat Pembertahuan</h5>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>

                                                <div class="modal-body">
                                                    <form action="surat.php" method="POST" enctype="multipart/form-data">

                                                        <div class="table-responsive">
                                                            <table class="table table-borderless table-striped table-earning">
                                                                <thead>
                                                                    <tr hidden>
                                                                        <td>Nomor : </td>
                                                                        <td>
                                                                            <input type="text" name="nomor" value="421.5/<?= $key['id_tagihan']; ?>/SP/SMKGAMA/IX/<?php date('Y'); ?>" readonly>
                                                                        </td>
                                                                    <tr hidden>
                                                                        <td>Tanggal : </td>
                                                                        <td>
                                                                            <input type="text" name="tanggal" value="<?= $jatuh ?>" readonly>
                                                                        </td>

                                                                    </tr>
                                                                    <tr hidden>
                                                                        <td>Tanggal Batas Bayar :</td>
                                                                        <td>

                                                                            <input type="text" name="batas_bayar" value="<?= $tgl2; ?>" readonly>
                                                                        </td>
                                                                    </tr>

                                                                    <tr hidden>
                                                                        <td>Keterangan Pembayaran </td>
                                                                        <td>

                                                                            <input type="text" name="pembayaran" value="<?= $key['pembayaran']; ?>" readonly>

                                                                        </td>
                                                                    </tr>
                                                                    <H2>SILAKAN KLIK TOMBOL CETAK DIBAWAH !!!</H2>

                                                                    <tr>
                                                                        <td>
                                                                            <button type="submit" name="cetak" class="btn btn-warning">Cetak</button>
                                                                        </td>
                                                                        <td>
                                                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
                                                                        </td>

                                                                    </tr>
                                                                </thead>
                                                            </table>
                                                        </div>
                                                        <input type="hidden" hidden name="admin" value="<?= $adm['nama_user']; ?>">
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                <?php endforeach; ?>
            </div>
            <hr><br>





            <div class="col-md-12">
                <h3>INFORMASI PEMBAYARAN REGISTRASI</h3>
                <?php
                date_default_timezone_set("Asia/Jakarta");
                $waktu = date("d-m-Y");
                $NIS = $adm['username'];


                $siswa = mysqli_query($koneksi, "SELECT * from tagihan  WHERE status='Belum Terbayarkan' AND NIS='$NIS' AND pembayaran LIKE '%REGISTRASI -  %'");


                $result = array();
                while ($data = mysqli_fetch_array($siswa)) {
                    $result[] = $data; //result dijadikan array 
                }

                foreach ($siswa as $as) :
                    $tgl1 = $as['jatuhtempo'];
                    $jatuh = date('d-m-Y', strtotime($tgl1));
                    $tgl2 = date('d-m-Y', strtotime('+10 days', strtotime($tgl1)));
                ?>
                    <div class="table-responsive table--no-card m-b-30 ml-5 mr-5">
                        <br>
                        <table class="table table-borderless table-striped table-earning">
                            <tr>
                                <td>
                                    <?= $as['pembayaran']; ?>
                                </td>
                                <td>
                                    <?= $as['nominal']; ?>
                                </td>
                                <td>
                                    <?= $as['status']; ?>
                                </td>
                                <td>
                                    <?= $as['jatuhtempo']; ?>
                                </td>
                                <td>
                                    <?php
                                    if (($batas <= $as['jatuhtempo'])) {
                                        echo '<button class="btn btn-warning" name="cetak" data-toggle="modal" data-target="#cetak_karyawan= $key["id_tagihan"];" disabled>CETAK</button>';
                                    } else {
                                    ?>

                                        <button class="btn btn-warning" name="cetak" data-toggle="modal" data-target="#cetak_karyawan<?= $as['id_tagihan']; ?>">CETAK</button><?php } ?>
                                    <div class="modal fade bd-example-modal-lg" id="cetak_karyawan<?= $as['id_tagihan']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog modal-lg" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLabel">Cetak Surat Pembertahuan</h5>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>

                                                <div class="modal-body">
                                                    <form action="surat.php" method="POST" enctype="multipart/form-data">

                                                        <div class="table-responsive">
                                                            <table class="table table-borderless table-striped table-earning">
                                                                <thead>
                                                                    <tr hidden>
                                                                        <td>Nomor : </td>
                                                                        <td>
                                                                            <input type="text" name="nomor" value="421.5/<?= $as['id_tagihan']; ?>/SP/SMKGAMA/IX/<?php date('Y'); ?>" readonly>
                                                                        </td>
                                                                    <tr hidden>
                                                                        <td>Tanggal : </td>
                                                                        <td>
                                                                            <input type="text" name="tanggal" value="<?= $jatuh ?>" readonly>
                                                                        </td>

                                                                    </tr>
                                                                    <tr hidden>
                                                                        <td>Tanggal Batas Bayar :</td>
                                                                        <td>

                                                                            <input type="text" name="batas_bayar" value="<?= $tgl2; ?>" readonly>
                                                                        </td>
                                                                    </tr>

                                                                    <tr hidden>
                                                                        <td>Keterangan Pembayaran </td>
                                                                        <td>

                                                                            <input type="text" name="pembayaran" value="<?= $as['pembayaran']; ?>" readonly>

                                                                        </td>
                                                                    </tr>

                                                                    <H2>SILAKAN KLIK TOMBOL CETAK DIBAWAH !!!</H2>

                                                                    <tr>
                                                                        <td>
                                                                            <button type="submit" name="cetak" class="btn btn-warning">Cetak</button>
                                                                        </td>
                                                                        <td>
                                                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
                                                                        </td>

                                                                    </tr>
                                                                </thead>
                                                            </table>
                                                        </div>
                                                        <input type="hidden" hidden name="admin" value="<?= $adm['nama_user']; ?>">
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                <?php endforeach; ?>
            </div>
            <hr><br><br>

            <div class="col-md-12">
                <br>
                <h2>Jadwal Pelajaran <?= $adm['nama_lengkap']; ?></h2>
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

                $NIS = $adm['username'];

                $siswa = mysqli_query(
                    $koneksi,
                    "SELECT NIS ,kelas.nama_kelas,jurusan, jadwalmapel.id_jadwalmapel, jadwalmapel.hari, jadwalmapel.waktu, jadwalmapel.kd_mapel, jadwalmapel.kelas from siswa inner JOIN kelas on siswa.id_kls=kelas.id_kelas LEFT JOIN jadwalmapel ON CONCAT(kelas.nama_kelas,siswa.jurusan)=jadwalmapel.kelas WHERE jadwalmapel.hari='$hari' AND siswa.NIS='$NIS' ORDER BY jadwalmapel.id_jadwalmapel"
                );
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
            </div>
        </div>



        <?php include 'comp/footer.php'; ?>