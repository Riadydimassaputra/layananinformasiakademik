<?php

require_once __DIR__ . '/vendor/autoload.php';

$mpdf = new \Mpdf\Mpdf([
	'mode' => 'utf-8',
	'format' => [215, 330],
	'orientation' => 'L'
]);

require '../fungsi/fungsi.php';

$nama = $_POST['nama_guru'];
$sql = mysqli_query($koneksi, "SELECT B.*, A.*, (SELECT COUNT(hari) FROM jadwalmapel WHERE hari=A.hari AND kelas='$kelas' AND kd_mapel = 0) AS jumlah FROM jadwalmapel A JOIN sk B ON B.mapel=A.kd_mapel where B.nama_guru='$nama' ORDER BY A.id_jadwalmapel");

$html = '<!DOCTYPE html>
<html>

<head>
	</head>
	

	<body>
	
				<h2>
					<center> JADWAL PELAJARAN </center>
				</h2>
<table cellpadding="5 " border="1" style="width:100%; height:25%">
<tr>
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
$jum = 1;
while ($row = mysqli_fetch_array($sql)) {
	$html .= '<tr>';
	if ($jum <= 1) {
		$html .= '<td rowspan="' . $row['jumlah'] . '"> <center>' . $row['hari'] . '</center></td>';
		$jum = $row['jumlah'];
	} else {
		$jum = $jum - 1;
	}
	$html .= '<td> <center>' . $row["waktu"] . '</center></td>
	 <td> <center>' . $row["kd_mapel"] . '</center></td>
	 <td> <center>' . $row["kelas"] . '</center></td>
	 </tr>';
}

$html .= '</table>
				
				</body>
				</html>';



$mpdf->WriteHTML($html);



$mpdf->Output('cetak-jadwal.pdf', \Mpdf\Output\Destination::INLINE);
