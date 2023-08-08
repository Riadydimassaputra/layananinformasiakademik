<?php

require '../fungsi/fungsi.php';

?>
<?php foreach (summon_admin() as $adm) : ?>
	<!DOCTYPE html>
	<html>

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
		<title>Print</title>

		<!-- Fontfaces CSS-->
		<link href="<?= url() ?>css/font-face.css" rel="stylesheet" media="all">
		<link href="<?= url() ?>vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
		<link href="<?= url() ?>vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
		<link href="<?= url() ?>vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

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

		<style>
			@media print {
				.noprint {
					display: none;
					place-items: center;
				}
			}
		</style>
	</head>

	<body>
		<div class="row">
			<div class="container">

			</div>
		</div>

		<div class="row mb-3">
			<div class="col-sm-2 ml-5">
				<div class="noprint">
					<button onclick="window.print()" class="btn btn-danger" style="align-items: center ;">PRINT</button>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-sm-12">
				<?= gambar("kop.jpg", "2000px", "100px") ?>
				<h2>
					<center>LAPORAN TAGIHAN BIAYA PENDIDIKAN </center>
				</h2><br>
				<div class="col-sm-2">
					<table border="1" style="width: 1400px">
						<tr>
							<th>
								<center>No</center>
							</th>
							<th>
								<center>Tahun Ajaran</center>
							</th>
							<th>
								<center>Jenis Pembayaran</center>
							</th>
							<th>
								<center>NIS - Nama Siswa</center>
							</th>
							<th>
								<center>Kelas-Jurusan</center>
							</th>

							<th>
								<center>Status</center>
							</th>
						</tr>
						<?php
						$pembayaran = $_POST['pembayaran'];
						$jenispem = $_POST['jenispem'];
						if (empty($pembayaran)) {
							$siswa = mysqli_query($koneksi, "SELECT * from tagihan inner join siswa on tagihan.NIS=siswa.NIS inner join kelas 
					on siswa.id_kls=kelas.id_kelas  where tagihan.jenispem='$jenispem'");
						} else if (!empty($pembayaran)) {
							$siswa = mysqli_query($koneksi, "SELECT * from tagihan inner join siswa on tagihan.NIS=siswa.NIS inner join kelas 
					on siswa.id_kls=kelas.id_kelas  where tagihan.pembayaran LIKE '%" . $pembayaran . "%' AND tagihan.jenispem='$jenispem'");
						}

						$no = 1;
						$total = 0;
						$totalcicil = 0;
						$totallunas = 0;
						$result = array();
						while ($data = mysqli_fetch_array($siswa)) {
							$result[] = $data; //result dijadikan array 
							$total += ($data['status'] == 'Belum Terbayarkan');
							$totalcicil += ($data['status'] == 'Cicilan');
							$totallunas += ($data['status'] == 'LUNAS');
						}
						foreach ($siswa as $pro) : ?>
							<tr>
								<td>
									<center><?= $no++; ?></center>
								</td>
								<td>
									<center><?= $pro['jenispem']; ?></center>
								</td>

								<td>
									<center><?= $pro['pembayaran']; ?></center>
								</td>

								<td>
									<?= $pro['NIS']; ?> - <?= $pro['nama_siswa']; ?>
								</td>
								<td>
									<center><?= $pro['nama_kelas']; ?>-<?= $pro['jurusan']; ?></center>
								</td>
								<td>
									<center><?= $pro['status']; ?></center>
								</td>
							</tr>


						<?php endforeach; ?>

					</table>
					<br>
				</div>

				<h3 style="text-align: right;">Total Pembayaran Lunas : <?= $totallunas; ?></h3>
				<hr>
				<h3 style="text-align: right;">Total Pembayaran Angsuran sebanyak : <?= $totalcicil; ?></h3>
				<hr>
				<h3 style="text-align: right;">Total yang belum bayar sebanyak : <?= $total; ?></h3>
				<br><br>
				<hr>
				<div class="pull-right">
					<h5>Tanda Tangan</h5>
					<h5>Yang Bersangkutan</h5>
					<br><br><br>
					<h5>Petugas Loket SMK GARUDA MAHADHIKA</h5>
				</div>

			</div>
			<br>



			<script src="<?= url() ?>vendors/jquery/jquery.min.js"></script>
			<script src="<?= url() ?>vendors/js/bootstrap.min.js"></script>
	</body>
	</body>
<?php endforeach; ?>

	</html>