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
		$NIS = $_POST['NIS'];
		$nama = $_POST['nama'];
		$kelas = $_POST['kelas'];
		$batas = $_POST['batas'];
		$pembayaran = $_POST['pembayaran'];
		$nominal = $_POST['sisa_bayar'];
		$no = 1;
	
		?>

	<div class="col-sm-12">
                <?= gambar("kop.jpg", "2000px", "100px") ?>
				<br><br>
				<h3><center>SURAT PERNYATAAN</center></h3><br>
					<h4><center>KESANGGUPAN PELUNASAN PEMBAYARAN BIAYA PENDIDIKAN</center></h4><br>
				<div class="col offset-md-1">
					<p > Yang bertanda tangan di bawah ini : </p><br>
			<table>
					<tr>
					<td style="width: 50%;">Nama Orang Tua/Wali</td>
					<td style="width: 10%;">:</td>
						<td>
							
						</td>
					</tr>
					<tr>
					<td style="width: 30%;">Alamat</td>
					<td style="width: 5%;">:</td>
						<td>
						
						</td>
					</tr>
					<tr>
					<td style="width: 30%;">No. HP</td>
					<td style="width: 5%;">:</td>
						<td>
							
						</td>
					</tr>
			</table>
			<br>
			<p>Adalah Orang Tua/wali dari siswa di bawah ini : </p><br>
			<table>
					<tr>
					<td style="width: 50%;">Nama Siswa</td>
					<td style="width: 10%;">:</td>
						<td>
							<?= $nama;?>
						</td>
					</tr>
					<tr>
					<td style="width: 30%;">NIS</td>
					<td style="width: 5%;">:</td>
						<td>
						<?= $NIS ?>
						</td>
					</tr>
					<tr>
					<td style="width: 30%;">Kelas/Jurusan</td>
					<td style="width: 5%;">:</td>
						<td>
							<?= $kelas; ?>
						</td>
					</tr>
			</table><br>
			<p>Dengan ini menyatakan bahwa saya berjanji akan membayar tunggakan : </p> <br>
			
			<table border="1px" style="width: 90%">
				<thead>
				<tr>
					<th style="width: 50px;"><center>No</center></th>
					<th><center>Jenis Pembayaran</center></th>
					<th ><center>Nominal</center></th>
					<th><center>Waktu Pembayaran</center></th>
				</tr>
				</thead>
				<tbody>
					<tr>
						<td><center><?= $no++ ?></center></td>
						<td><center><?= $pembayaran ?></center></td>
						<td><center><?= $nominal ?></center></td>
						<td><center><?= $batas?></center></td>
					</tr>
				</tbody>
			</table><br>
			<p> Apabila saya melanggar perjanjian tersebut, maka saya bersedia menerima konsenkuensi
				dari pihak sekolah.</p><br>
			<p>Demikian surat pernyataan ini dibuat dengan sebenar-benarnya, dan atas perhatiannya 
			di sampaikan terima kasih.</p>
			<br><br>
			<div class="pull-right">
                    <h5><center>Banjarbaru, <?php echo date('d-m-Y');?></center></h5>
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