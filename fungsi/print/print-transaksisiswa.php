<?php
require '../fungsi/fungsi.php';
ob_start();
?>
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
	<div <div class="col-sm-12">
		<?= gambar("kop.jpg", "2000px", "100px") ?>
		<h2>
			<center>BUKTI PEMBAYARAN </center>
		</h2><br>

	</div>


	<div class="row mb-2">
		<div class="col-sm-2 ml-5">
			<div class="noprint">
				<button onclick="window.print()" class="btn btn-danger" style="align-items: center ;">PRINT</button>
			</div>
		</div>
		<div class="col-sm-2">
			<div class="noprint">
				<a href="?m=siswa"> <button class="btn btn-succsses" style="align-items: center ;">Kembali</button></a>
			</div>
		</div>
	</div>

	<?php
	$NIS = $_POST['NIS'];
	$jenispem = $_POST['jenispem'];
	$kategoripem = $_POST['kategoripem'];
	$siswa = mysqli_query($koneksi, "SELECT NIS, nama_siswa, kelas.nama_kelas, jurusan FROM siswa inner JOIN kelas on 
		siswa.id_kls=kelas.id_kelas WHERE NIS = '$NIS'");

	$result = array();
	while ($data = mysqli_fetch_array($siswa)) {
		$result[] = $data; //result dijadikan array 
	}
	foreach ($siswa as $key) : ?>
		<table class="table">
			<tr>
				<td style="width:10%;">
					Nama
				</td>
				<td>
					: <?php echo $key['nama_siswa']; ?>
				</td>
			</tr>
			<tr>
				<td>
					Kelas
				</td>
				<td>
					: <?php echo $key['nama_kelas']; ?>
				</td>
			</tr>
			<tr>
				<td>Prodi </td>
				<td>: <?= $key['jurusan']; ?></td>
			</tr>
		<?php endforeach; ?>
		</table>
		<br>
		<?php
		$NIS = $_POST['NIS'];
		$jenispem = $_POST['jenispem'];
		$kategoripem = $_POST['kategoripem'];
		$siswa = mysqli_query($koneksi, "SELECT * FROM bayar WHERE NIS='$NIS' AND jenispem = '$jenispem' AND kategoripem='$kategoripem'");

		$result = array();
		while ($data = mysqli_fetch_array($siswa)) {
			$result[] = $data; //result dijadikan array 
		}
		foreach ($siswa as $tab) : ?>


			<table class="table table-striped">
				<tr>
					<th>
						Bulan
					</th>
					<th>
						Bayar
					</th>
					<th>Tahun Ajaran</th>
					<th>Jenis Pembayaran</th>
					<th>Keterangan</th>
					<th>Sisa Pembayaran</th>
				</tr>

				<tr>
					<td>
						<?= $tab['bulan']; ?>
					</td>

					<td>
						<?= rupiah($tab['bayar']); ?>
					</td>
					<td>
						<?= $tab['jenispem']; ?>
					</td>
					<td>
						<?= $tab['kategoripem']; ?>
					</td>
					<td>
						<?= $tab['status']; ?>
					</td>
					<td>
						<?= rupiah($tab['sisa_bayar']); ?>
					</td>
				</tr>


			</table>
			<br><br>
			<div class="pull-right">
				<h5>Tanda Tangan</h5>
				<h5>Yang Bersangkutan</h5>
				<br><br><br>
				<h5><?php echo $tab['admin']; ?></h5>
			</div>

			<div class="pull-left">
				<h5>Tanda Tangan</h5>
				<h5>Yang Bersangkutan</h5>
				<br><br><br>
				<h5><?php echo $tab['nm_siswa']; ?></h5>
			</div>
		<?php endforeach; ?>

		<script src="<?= url() ?>vendors/jquery/jquery.min.js"></script>
		<script src="<?= url() ?>vendors/js/bootstrap.min.js"></script>
</body>
</body>

</html>