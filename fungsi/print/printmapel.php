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
				<a href="?m=cetak" target="_blank">Cetak</a>
			</div>
		</div>
	</div>

	<?PHP
	$sql = mysqli_query($koneksi, "SELECT B.*, A.*, (SELECT COUNT(hari) FROM jadwalmapel WHERE hari=A.hari AND kelas='$kelas' AND kd_mapel = 0) AS jumlah FROM jadwalmapel A JOIN guru B ON INSTR(B.mapel, A.kd_mapel) > 0 where A.kelas='$kelas' ORDER BY A.id_jadwalmapel");
	$jum = 1;

	?>
	<div class="row">

		<div class="table-responsive table--no-card m-b-30 ml-5 mr-5">
			<h2>
				<center> JADWAL PELAJARAN <?= $kelas ?></center>
			</h2>
			<?php
			echo '<table cellpadding="5 " border="1" style="width:100%">';
			echo '<tr>
					<th>
						<center>HARI</center>
					</th>
					<th>
						<center>WAKTU</center>
					</th>
					<th>
						<center>KODE MAPEL</center>
					</th>
					<th>
						<center>KELAS</center>
					</th>

				</tr>';
			while ($row = mysqli_fetch_array($sql)) {
				echo '<tr>';
				if ($jum <= 1) {
					echo '<td rowspan="' . $row['jumlah'] . '"> <center>' . $row['hari'] . '</center></td>';
					$jum = $row['jumlah'];
				} else {
					$jum = $jum - 1;
				}
				echo '<td> <center>' . $row['waktu'] . '</center></td>';
				echo '<td> <center>' . $row['kd_mapel'] . '</center><br>
				<center>' . $row['nama_guru'] . '</center></td>';
				echo '<td> <center>' . $row['kelas'] . '</center></td>';

				echo '</tr>';
			}
			echo '</table>'; ?>

			<br>


		</div>

	</div>
	<br>




	<script src="<?= url() ?>vendors/jquery/jquery.min.js"></script>
	<script src="<?= url() ?>vendors/js/bootstrap.min.js"></script>
</body>
</body>

</html>