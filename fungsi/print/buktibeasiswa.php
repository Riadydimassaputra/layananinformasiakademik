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

		#halaman{
            width: auto; 
            height: auto; 
            position: absolute; 
            border: 1px solid; 
            padding-top: 30px; 
            padding-left: 30px; 
            padding-right: 30px; 
            padding-bottom: 80px;
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


	<div class="row" id=halaman>

	<?php
		$id_beasiswa = $_GET['id_databeasiswa'];
		$siswa = mysqli_query($koneksi, "SELECT * FROM databeasiswa where id_databeasiswa='$id_beasiswa'");



		$result = array();
		while ($data = mysqli_fetch_array($siswa)) {
			$result[] = $data; //result dijadikan array
		}
		foreach ($siswa as $pro) : 
		$nama = $pro['nama_beasiswa'];
		$tahunajaran = $pro['tanggal'];
		?>

	<div class="col-sm-12">
                <?= gambar("kop.jpg", "2000px", "100px") ?>
				<br><br>
			<h3>
				<center>BUKTI PENERIMA BEASISWA</center>
			</h3><br><br>
			
			<p>Kepala Sekolah SMK Garuda Mahadhika Banjarbaru menerangkan dengan sesungguhnya bahwa siswa/i di bawah ini :</p><br>
			<table style="width: 100%;">
					<tr style="margin-top: 1cm;">
					<td style="width: 30%;">NIS</td>
					<td style="width: 5%;">:</td>
						<td>
							<?= $pro['NIS']; ?>
						</td>
					</tr>
					<tr>
					<td style="width: 30%;">Nama Siswa</td>
					<td style="width: 5%;">:</td>
						<td>
						<?= $pro['nama_siswa']; ?>
						</td>
					</tr>
					<tr>
					<td style="width: 30%;">Kelas</td>
					<td style="width: 5%;">:</td>
						<td>
							<?= $pro['kelas']; ?>
						</td>
					</tr>
					


			</table>
			
			<br>
			<p>Dengan ini kami nyatakan siswa/i bernama diatas mendapatkan beasiswa : </p>
			<table style="width: 100%">
					<tr>
					<td style="width: 30%;">Nama Beasiswa</td>
					<td style="width: 5%;">:</td>
						<td>
							<?= $pro['nama_beasiswa']; ?>
						</td>
					</tr><br>
					<tr>
					<td style="width: 30%;">Tahun Ajaran</td>
					<td style="width: 5%;">:</td>
						<td>
						<?= $pro['tanggal']; ?>
						</td>
					</tr><br>
		
				<?php endforeach; ?>

			</table><br>
			<p> Demikian bukti penerima beasiswa dibuat dengan sebenar-benarnya untuk digunakan sebagaimana mestinya</p>
			<br><br>
			<div class="pull-right">
                    <h5><center>Tanda Tangan</center></h5>
                    <h5><center>Yang Bersangkutan</center></h5>
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