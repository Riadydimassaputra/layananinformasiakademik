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
					<center>LAPORAN DAFTAR SISWA YANG TELAH BAYAR REGISTER DENGAN CARA DICICIL </center>
				</h2><br>
				<div class="col-sm-2">
					<table border="1" style="width: 1400px">
						<tr>
							<th>
								<center>No</center>
							</th>
							<th>
								<center>Tahun</center>
							</th>
							<th>
								<center>Bulan DiSetor</center>
							</th>
							<th>
								<center>NIS</center>
							</th>
							<th>
								<center>Nama Siswa</center>
							</th>
							<th>
								<center>Kelas-Jurusan</center>
							</th>
							<th>
								<center>Jenis Pembayaran</center>
							</th>
							<th>
								<center>Uang yang Disetor</center>
							</th>
							<th>
								<center>Sisa Pembayaran</center>
							</th>
						</tr>
						<?php
						$ftahun = $_POST['tahun'];
						$cari = $_POST['cari'];
						$siswa = mysqli_query($koneksi, "SELECT * from bayar where tahun='$ftahun' AND bulan='$cari' And status='Cicilan' and kategoripem LIKE 'REGISTRASI%'");

						$no = 1;
						$total = 0;
						$totalsisa = 0;
						$result = array();
						while ($data = mysqli_fetch_array($siswa)) {
							$result[] = $data; //result dijadikan array 
							$total += $data['bayar'];
							$totalsisa += $data['sisa_bayar'];
						}
						foreach ($siswa as $pro) : ?>
							<tr>
								<td>
									<center><?= $no++; ?></center>
								</td>
								<td>
									<center><?= $pro['tahun']; ?></center>
								</td>

								<td>
									<center><?= $pro['bulan']; ?></center>
								</td>
								<td>
									<center><?= $pro['NIS']; ?></center>
								</td>
								<td><?= $pro['nm_siswa']; ?></td>
								<td>
									<center><?= $pro['kelas']; ?>-<?= $pro['jurusan']; ?></center>
								</td>
								<td>
									<center><?= $pro['kategoripem']; ?></center>
								</td>
								<td>
									<center>Rp. <?= number_format($pro['bayar'], 0, ',', '.'); ?></center>
								</td>
								<td>
									<center>Rp. <?= number_format($pro['sisa_bayar'], 0, ',', '.'); ?></center>
								</td>
							</tr>


						<?php endforeach; ?>

					</table>
					<br>






				</div>
				<h3 style="text-align: right;">Total Uang yang Disetor Bulan Ini Rp. <?= number_format($total, 0, ',', '.'); ?></h3>

				<hr>

				<h3 style="text-align: right;">Total sisa yang Akan didapat Rp. <?= number_format($totalsisa, 0, ',', '.'); ?></h3>

				<hr>

				<div class="pull-right">
					<h5>Tanda Tangan</h5>
					<h5>Yang Bersangkutan</h5>
					<br><br><br>
					<h5><?php echo $adm['nama_lengkap']; ?></h5>
				</div>
			</div>
			<br>


			<script src="<?= url() ?>vendors/jquery/jquery.min.js"></script>
			<script src="<?= url() ?>vendors/js/bootstrap.min.js"></script>
	</body>
	</body>
<?php endforeach; ?>

	</html>