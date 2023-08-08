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


	<div class="container">

	<?php
		$id_tagihan = $_GET['id_tagihan'];
		$nomor = $_POST['nomor'];
		$tanggal = $_POST['tanggal'];
		$batas = $_POST['batas_bayar'];
		$pembayaran = $_POST['pembayaran'];
	
		?>

	<div class="col-sm-12">
                <?= gambar("kop.jpg", "2000px", "100px") ?>
				<br><br>
				<div class="col offset-md-1">
			<table >
					<tr style="margin-top: 1cm;">
					<td style="width: 30%;">Nomor</td>
					<td style="width: 5%;">:</td>
						<td>
							<?= $nomor; ?>
						</td>
					</tr>
					<tr>
					<td style="width: 30%;">Lampiran</td>
					<td style="width: 5%;">:</td>
						<td>
						1 lembar
						</td>
					</tr>
					<tr>
					<td style="width: 30%;">Hal</td>
					<td style="width: 5%;">:</td>
						<td>
							Pemberitahuan
						</td>
					</tr>
	
			</table>
			<br>
			<p>Kepada Yth. <br>
				Bapak/Ibu Orangtua siswa<br>
				SMK GARUDA MAHADIKA BANJARBARU<br>
				Di Tempat</p><br>
			<p>Dengan hormat, <br>
			Berdasarkan hasil Rekap Data Keuangan SMK Garuda Mahadhika Banjarbaru per Tanggal <?= $tanggal;?><br> yang telah 
			dikelola oleh Bank BPD Kalsel Syariah, masih banyak siswa/i yang  memiliki tunggakan <br> administrasi sekolah
			 berupa tunggakan <?=$pembayaran;?> <br><br> Pihak sekolah telah beberapa kali memanggil serta meminta konfirmasi
			 kepada siswa/orangtua ysb <br> untuk melakukan pembayaran tiap bulannya, namun masih belum ada respon/tanggapan
			  dari ybs. <br><br> Dalam hal ini kami sangat mengharapkan kerjasama dan dukungan dari Bapak/Ibu agar dapat segera<br> 
			  membayar dan menyelesaikan tunggakan tersebut sebelum tanggal <?=$batas;?> Jika dalam<br> kurun waktu yang telah ditentukan 
			  belum adanya pembayaran, maka dengan sangat terpaksa <br>
			  pihak sekolah tidak dapat mengikutkan anak Bapak/Ibu pada pembelajaran yang diselenggarakan oleh sekolah.
			   Dengan demikian anak Bapak/Ibu sama artinya tidak masuk kelas (Alfa)<br> dan tidak memiliki nilai, yang nantinya 
			   akan berpengaruh pada nilai rapot.<br><br> Demikian kami sampaikan, atas perhatian dan kerjasamanya diucapkan terimakasih.
</p>
			
			<p> Demikian surat keputusan ini dibuat dengan sebenar-benarnya untuk digunakan sebagaimana mestinya</p>
			<br><br>
			<div class="pull-right">
                    <h5><center>Banjarbaru, <?= $tanggal;?></center></h5>
                    <h5><center>KEPALA SEKOLAH SMK GARUDA MAHADHIKA</center></h5>
                    <br><br><br>
                 
					<?php 
					$klo = mysqli_query($koneksi, "SELECT * from guru where jabatan='Kepala Sekolah'");
					while($row = mysqli_fetch_array($klo)){
						?>
					
                    <h5><center><?=$row['nama_guru'];?></center> </h5>
					<?php } ?>
                </div>
		</div>
			</div>
		
		

	</div>
	<br>



	<script src="<?= url() ?>vendors/jquery/jquery.min.js"></script>
	<script src="<?= url() ?>vendors/js/bootstrap.min.js"></script>
</body>
</body>

</html>