<?php

require '../fungsi/fungsi.php';

?>
<!DOCTYPE html>
<html>

<head>
	<!-- Required meta tags-->
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
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

	<div class="row mb-3">
		<div class="col-sm-2 ml-5">
			<div class="noprint">
				<button onclick="window.print()" class="btn btn-danger" style="align-items: center ;">PRINT</button>
			</div>
		</div>
	</div>
	<div class="row">
		<?php
		$ftahun = $_POST['tahun'];

		$siswa = mysqli_query($koneksi, "SELECT nama_guru, tahunajaran, SUM(total) as hasil from prestasiguru where tahunajaran='$ftahun' group by nama_guru ORDER BY hasil DESC");

		?>
		<div class="col-sm-12">
			<?= gambar("kop.jpg", "2000px", "100px") ?>
			<h2>
				<center>LAPORAN DAFTAR PRESTASI GURU </center>
			</h2><br>
			<table border="1" style="width: 100%">
				<tr>
					<th>
						<center>Tahun</center>
					</th>

					<th>
						<center>Nama Guru</center>
					</th>
					<th>
						<center>TOTAL POINT</center>
					</th>
				</tr>
				<?php



				while ($pro = mysqli_fetch_array($siswa)) {


				?>


					<tr style="height: 55px;">
						<td>
							<center><?= $pro['tahunajaran']; ?></center>
						</td>

						<td>
							<center><?= $pro['nama_guru']; ?></center>
						</td>
						<td>
							<center><?= $pro['hasil']; ?></center>
						</td>
					</tr>
				<?php } ?>
			</table>

			<br>



		</div>

	</div>
	<br>



	<script src="<?= url() ?>vendors/jquery/jquery.min.js"></script>
	<script src="<?= url() ?>vendors/js/bootstrap.min.js"></script>
</body>
</body>

</html>