<?php

require_once __DIR__ . '/vendor/autoload.php';

$mpdf = new \Mpdf\Mpdf([
	'mode' => 'utf-8',
	'format' => [215, 330],
	'orientation' => 'L'
]);

require '../fungsi/fungsi.php';

$ftahun = $_POST['tahun'];
				
	$siswa = mysqli_query($koneksi, "SELECT nama_user, tahun, SUM(point) as total from laporan where tahun='$ftahun' GROUP BY nama_user HAVING MAX(point)");
	$sql = mysqli_query($koneksi, "SELECT nama_guru, tahunajaran, SUM(point) as hasil from jurnal where tahunajaran='$ftahun' GROUP BY nama_guru HAVING MAX(point)"); 


$html = '<!DOCTYPE html>
<html>

<head>
	</head>
	

	<body>
	
				<h2>
					<center> JADWAL PELAJARAN </center>
				</h2>
<table cellpadding="5 " border="1" style="width:100%">
<tr>
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
				</tr>';
			
		while ($pro = mysqli_fetch_array($siswa) and $row = mysqli_fetch_array($sql)) {
	$jumlah = floatval($pro['total']) + floatval($row['hasil']);
	$html .= '<tr>
						<td>
							<center>'. $pro["tahun"] .'</center>
						</td>
						<td>
							<center>'. $pro["nama_user"] .'</center>
						</td>
						<td>
							<center>'. $jumlah .'</center>
						</td>
					</tr>';
				 }
	$html .= '</table>

</body>

</html>';

$mpdf->WriteHTML($html);



$mpdf->Output('cetak.pdf', \Mpdf\Output\Destination::INLINE);