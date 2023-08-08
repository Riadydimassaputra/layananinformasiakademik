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
		$id_guru = $_GET['id_guru'];
		$siswa = mysqli_query($koneksi, "SELECT * FROM sk join guru ON guru.id_guru=sk.id_guru  WHERE sk.id_guru='$id_guru' group by sk.id_guru");
		?>

		<div class="col-sm-12">
			<?= gambar("kop.jpg", "2000px", "100px") ?>
			<br><br>
			<h3>
				<center>SURAT KEPUTUSAN</center>
			</h3>
			<h4>
				<?php
				$result = array();
				while ($data = mysqli_fetch_array($siswa)) {
					$result[] = $data; //result dijadikan array
				}
				foreach ($siswa as $pro) :
				?>
					<center>TENTANG <br>
						PEMBAGIAN MATA PELAJARAN<br>
						Nomor Surat :<?php echo $pro['nosk']; ?> </center>
			</h4><br><br>

			<p>Kepala Sekolah SMK GARUDA MAHADHIKA BANJARBARU memutuskan guru di bawah ini :</p><br>
			<table>
				<tr style="margin-top: 1cm;">
					<td style="width: 30%;">NIP</td>
					<td style="width: 5%;">:</td>
					<td>
						<?= $pro['NIP']; ?>
					</td>
				</tr>
				<tr>
					<td style="width: 40%;">Nama Pengajar</td>
					<td style="width: 5%;">:</td>
					<td>
						<?= $pro['nama_guru']; ?>
					</td>
				</tr>
				<tr>
					<td style="width: 30%;">Status Pegawai</td>
					<td style="width: 5%;">:</td>
					<td>
						<?= $pro['status_guru']; ?>
					</td>
				</tr>
				<td style="width: 30%;">TTL</td>
				<td style="width: 5%;">:</td>
				<td>
					<?= $pro['TTL']; ?>
				</td>
				</tr>
				<td style="width: 30%;">Email</td>
				<td style="width: 5%;">:</td>
				<td>
					<?= $pro['email']; ?>
				</td>
				</tr>



			</table>
		<?php endforeach; ?>

		<?php
		$id_guru = $_GET['id_guru'];
		$siswa2 = mysqli_query($koneksi, "SELECT * FROM sk join mapel ON mapel.kode_mapel=sk.mapel join tb_tahun_ajaran on tb_tahun_ajaran.tapel=sk.tahunajaran WHERE sk.id_guru='$id_guru' AND tb_tahun_ajaran.statustapel='Aktif'");

		?>
		<br>
		<p>Untuk mengajar di SMK Garuda Mahadhika Banjarbaru mulai tahun ajaran <?= $pro['tahunajaran']; ?> dengan Mata Pelajaran yang diampu sebagai berikut :</p><br>
		<table border="1px" style="width: 100%">
			<tr>
				<td style="width: 30%;">
					<center>Kelas</center>
				</td>
				<td style="width: 30%;">
					<center>Mata Pelajaran</center>
				</td>
			</tr>
			<tr>
				<?php
				$result = array();
				while ($data = mysqli_fetch_array($siswa2)) {
					$result[] = $data; //result dijadikan array
				}
				foreach ($siswa2 as $row) :
				?>
					<td>
						<center><?= $row['kelas']; ?></center>
					</td>
					<td>
						<center><?= $row['nama_mapel']; ?></center>
					</td>
			</tr>


		<?php endforeach; ?>

		</table><br>
		<p> Demikian surat keputusan ini dibuat dengan sebenar-benarnya untuk digunakan sebagaimana mestinya</p>
		<br><br>
		<div class="pull-right">
			<h5>
				<center>Tanda Tangan</center>
			</h5>
			<h5>
				<center>Yang Bersangkutan</center>
			</h5>
			<br><br><br>

			<h5>KEPALA SEKOLAH SMK GARUDA MAHADHIKA </h5>
		</div>
		</div>


	</div>
	<br>



	<script src="<?= url() ?>vendors/jquery/jquery.min.js"></script>
	<script src="<?= url() ?>vendors/js/bootstrap.min.js"></script>
</body>
</body>

</html>