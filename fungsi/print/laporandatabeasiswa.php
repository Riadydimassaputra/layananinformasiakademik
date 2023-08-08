<?php

require '../fungsi/fungsi.php';
foreach (summon_admin() as $adm) : ?>

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
		<?php
		$tahun_ajaran = $_POST['pilihtahun'];
		$nama_beasiswa = $_POST['pilihbeasiswa'];
		if (empty($nama_beasiswa)) {
			$siswa = mysqli_query($koneksi, "SELECT * FROM databeasiswa join lobeasiswa on databeasiswa.id_lobeasiswa=lobeasiswa.id_lobeasiswa where databeasiswa.tanggal='$tahun_ajaran' AND databeasiswa.status_beasiswa='Aktif'");
		} else if (!empty($nama_beasiswa)) {
			$siswa = mysqli_query($koneksi, "SELECT * FROM databeasiswa join lobeasiswa on databeasiswa.id_lobeasiswa=lobeasiswa.id_lobeasiswa where databeasiswa.tanggal='$tahun_ajaran' AND databeasiswa.nama_beasiswa='$nama_beasiswa' AND databeasiswa.status_beasiswa='Aktif'");
		}
		?>
		<div class="row">
			<?= gambar("kop.jpg", "2000px", "100px") ?>
			<div class="table-responsive table--no-card m-b-30 ml-5 mr-5">
				<h2>
					<center>DAFTAR BEASISWA <?php echo $nama_beasiswa; ?> <?php echo $tahun_ajaran; ?></center>
				</h2><br>
				<table border="1" style="width: 100%">
					<tr>
						<th>
							<center>NIS</center>
						</th>
						<th>
							<center>NAMA SISWA</center>
						</th>
						<th>
							<center>KELAS</center>
						</th>
						<th>
							<center>JENIS BEASISWA</center>
						</th>

					</tr>
					<?php

					foreach ($siswa as $pro) : ?>
						<tr>
							<td>
								<center><?= $pro['NIS']; ?></center>
							</td>
							<td>
								<center><?= $pro['nama_siswa']; ?></center>
							</td>
							<td>
								<center><?= $pro['kelas']; ?></center>
							</td>
							<td>
								<center><?= $pro['nama_beasiswa']; ?></center>
							</td>


						</tr>
					<?php endforeach; ?>

				</table>
				<br>


			</div>

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

	</html>
<?php endforeach; ?>