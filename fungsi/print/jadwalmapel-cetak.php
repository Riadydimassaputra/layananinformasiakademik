<?php

require_once __DIR__ . '/vendor/autoload.php';

$mpdf = new \Mpdf\Mpdf([
	'mode' => 'utf-8',
	'format' => [700, 900],
	'orientation' => 'L'
]);

require '../fungsi/fungsi.php';

$kelas = $_POST['pilihkelas'];
if ($kelas == 'ALL') {
	$sql = mysqli_query($koneksi, "SELECT C.*, B.*, A.*, (SELECT COUNT(hari) FROM jadwalmapel WHERE hari=A.hari AND kelas='XTKJ' AND kd_mapel = 0) AS jumlah FROM jadwalmapel A JOIN sk B ON B.mapel=A.kd_mapel join tb_tahun_ajaran C on c.tapel=B.tahunajaran where A.kelas='XTKJ' AND c.statustapel='Aktif' ORDER BY A.id_jadwalmapel");
	$sql2 = mysqli_query($koneksi, "SELECT C.*, B.*, A.*, (SELECT COUNT(hari) FROM jadwalmapel WHERE hari=A.hari AND kelas='XOTKP' AND kd_mapel = 0) AS jumlah FROM jadwalmapel A JOIN sk B ON B.mapel=A.kd_mapel join tb_tahun_ajaran C on c.tapel=B.tahunajaran where A.kelas='XOTKP' AND c.statustapel='Aktif' ORDER BY A.id_jadwalmapel");
	$sql3 = mysqli_query($koneksi, "SELECT C.*, B.*, A.*, (SELECT COUNT(hari) FROM jadwalmapel WHERE hari=A.hari AND kelas='XMM' AND kd_mapel = 0) AS jumlah FROM jadwalmapel A JOIN sk B ON B.mapel=A.kd_mapel join tb_tahun_ajaran C on c.tapel=B.tahunajaran where A.kelas='XMM' AND c.statustapel='Aktif' ORDER BY A.id_jadwalmapel");
	$sql4 = mysqli_query($koneksi, "SELECT C.*, B.*, A.*, (SELECT COUNT(hari) FROM jadwalmapel WHERE hari=A.hari AND kelas='XTBSM' AND kd_mapel = 0 ) AS jumlah FROM jadwalmapel A JOIN sk B ON B.mapel=A.kd_mapel join tb_tahun_ajaran C on c.tapel=B.tahunajaran where A.kelas='XTBSM' AND c.statustapel='Aktif' ORDER BY A.id_jadwalmapel");



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
						<th>
						<center>KODE MAPEL</center>
					</th>
					<th>
						<center>KELAS</center>
					</th>
						<th>
						<center>KODE MAPEL</center>
					</th>
					<th>
						<center>KELAS</center>
					</th>
						<th>
						<center>KODE MAPEL</center>
					</th>
					<th>
						<center>KELAS</center>
					</th>
				</tr>';
	$jum = 1;
	while ($row = mysqli_fetch_array($sql) and $pro = mysqli_fetch_array($sql2) and $tes = mysqli_fetch_array($sql3) and $hsl = mysqli_fetch_array($sql4)) {
		$html .= '<tr>';
		if ($jum <= 1) {
			$html .= '<td rowspan="' . $row['jumlah'] . '"> <center>' . $row['hari'] . '</center></td>';
			$jum = $row['jumlah'];
		} else {
			$jum = $jum - 1;
		}
		$html .= '<td> <center>' . $row["waktu"] . '</center></td>
	 <td> <center>' . $row["kd_mapel"] . '</center><br>
				<center>' . $row['nama_guru'] . '</center></td>
	 <td style=background-color:red;> <center>' . $row["kelas"] . '</center></td>
	 <td> <center>' . $pro["kd_mapel"] . '</center><br>
				<center>' . $pro["nama_guru"] . '</center></td>
	 <td style=background-color:cyan;> <center>' . $pro["kelas"] . '</center></td>
	 <td> <center>' . $tes["kd_mapel"] . '</center><br>
				<center>' . $tes["nama_guru"] . '</center></td>
	 <td style=background-color:purple;> <center>' . $tes["kelas"] . '</center></td>
	 <td> <center>' . $hsl["kd_mapel"] . '</center><br>
				<center>' . $hsl["nama_guru"] . '</center></td>
	 <td style=background-color:yellow;> <center>' . $hsl["kelas"] . '</center></td>

	 </tr>';
	}
} else if ($kelas == 'ALLXI') {

	$sql = mysqli_query($koneksi, "SELECT C.*, B.*, A.*, (SELECT COUNT(hari) FROM jadwalmapel WHERE hari=A.hari AND kelas='XITKJ' AND kd_mapel = 0) AS jumlah FROM jadwalmapel A JOIN sk B ON B.mapel=A.kd_mapel join tb_tahun_ajaran C on c.tapel=B.tahunajaran where A.kelas='XITKJ' AND c.statustapel='Aktif' ORDER BY A.id_jadwalmapel");
	$sql2 = mysqli_query($koneksi, "SELECT C.*, B.*, A.*, (SELECT COUNT(hari) FROM jadwalmapel WHERE hari=A.hari AND kelas='XIOTKP') AS jumlah FROM jadwalmapel A JOIN sk B ON B.mapel=A.kd_mapel join tb_tahun_ajaran C on c.tapel=B.tahunajaran where A.kelas='XIOTKP' AND c.statustapel='Aktif' ORDER BY A.id_jadwalmapel");
	$sql3 = mysqli_query($koneksi, "SELECT C.*, B.*, A.*, (SELECT COUNT(hari) FROM jadwalmapel WHERE hari=A.hari AND kelas='XIMM') AS jumlah FROM jadwalmapel A JOIN sk B ON B.mapel=A.kd_mapel join tb_tahun_ajaran C on c.tapel=B.tahunajaran where A.kelas='XIMM' AND c.statustapel='Aktif' ORDER BY A.id_jadwalmapel");
	$sql4 = mysqli_query($koneksi, "SELECT C.*, B.*, A.*, (SELECT COUNT(hari) FROM jadwalmapel WHERE hari=A.hari AND kelas='XITBSM') AS jumlah FROM jadwalmapel A JOIN sk B ON B.mapel=A.kd_mapel join tb_tahun_ajaran C on c.tapel=B.tahunajaran where A.kelas='XITBSM' AND c.statustapel='Aktif' ORDER BY A.id_jadwalmapel");

	$html .=
		'<!DOCTYPE html>
<html>

<head>
	</head>
	

	<body>
	
				<h2>
					<center> JADWAL PELAJARAN </center>
				</h2>
<table cellpadding="5 " border="1" style="width:100%">
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
						<th>
						<center>KODE MAPEL</center>
					</th>
					<th>
						<center>KELAS</center>
					</th>
						<th>
						<center>KODE MAPEL</center>
					</th>
					<th>
						<center>KELAS</center>
					</th>
						<th>
						<center>KODE MAPEL</center>
					</th>
					<th>
						<center>KELAS</center>
					</th>
				</tr>';

	$jum = 1;
	while ($row = mysqli_fetch_array($sql) and $pro = mysqli_fetch_array($sql2) and $tes = mysqli_fetch_array($sql3) and $hsl = mysqli_fetch_array($sql4)) {
		$html .= '<tr>';
		if ($jum <= 1) {
			$html .= '<td rowspan="' . $row['jumlah'] . '"> <center>' . $row['hari'] . '</center></td>';
			$jum = $row['jumlah'];
		} else {
			$jum = $jum - 1;
		}
		$html .= '<td> <center>' . $row["waktu"] . '</center></td>
	 <td> <center>' . $row["kd_mapel"] . '</center><br>
				<center>' . $row['nama_guru'] . '</center></td>
	 <td style=background-color:red;> <center>' . $row["kelas"] . '</center></td>
	 <td> <center>' . $pro["kd_mapel"] . '</center><br>
				<center>' . $pro["nama_guru"] . '</center></td>
	 <td style=background-color:cyan;> <center>' . $pro["kelas"] . '</center></td>
	 <td> <center>' . $tes["kd_mapel"] . '</center><br>
				<center>' . $tes["nama_guru"] . '</center></td>
	 <td style=background-color:purple;> <center>' . $tes["kelas"] . '</center></td>
	 <td> <center>' . $hsl["kd_mapel"] . '</center><br>
				<center>' . $hsl["nama_guru"] . '</center></td>
	 <td style=background-color:yellow;> <center>' . $hsl["kelas"] . '</center></td>

	 </tr>';
	}
} else  if ($kelas == 'ALLXII') {

	$sql = mysqli_query($koneksi, "SELECT C.*, B.*, A.*, (SELECT COUNT(hari) FROM jadwalmapel WHERE hari=A.hari AND kelas='XIITKJ' AND kd_mapel = 0) AS jumlah FROM jadwalmapel A JOIN sk B ON B.mapel=A.kd_mapel join tb_tahun_ajaran C on c.tapel=B.tahunajaran where A.kelas='XIITKJ' AND c.statustapel='Aktif' ORDER BY A.id_jadwalmapel");
	$sql2 = mysqli_query($koneksi, "SELECT C.*, B.*, A.*, (SELECT COUNT(hari) FROM jadwalmapel WHERE hari=A.hari AND kelas='XIIOTKP') AS jumlah FROM jadwalmapel A JOIN sk B ON B.mapel=A.kd_mapel join tb_tahun_ajaran C on c.tapel=B.tahunajaran where A.kelas='XIIOTKP' AND c.statustapel='Aktif' ORDER BY A.id_jadwalmapel");
	$sql3 = mysqli_query($koneksi, "SELECT C.*, B.*, A.*, (SELECT COUNT(hari) FROM jadwalmapel WHERE hari=A.hari AND kelas='XIIMM') AS jumlah FROM jadwalmapel A JOIN sk B ON B.mapel=A.kd_mapel join tb_tahun_ajaran C on c.tapel=B.tahunajaran where A.kelas='XIIMM' AND c.statustapel='Aktif' ORDER BY A.id_jadwalmapel");
	$sql4 = mysqli_query($koneksi, "SELECT C.*, B.*, A.*, (SELECT COUNT(hari) FROM jadwalmapel WHERE hari=A.hari AND kelas='XIITBSM') AS jumlah FROM jadwalmapel A JOIN sk B ON B.mapel=A.kd_mapel join tb_tahun_ajaran C on c.tapel=B.tahunajaran where A.kelas='XIITBSM' AND c.statustapel='Aktif' ORDER BY A.id_jadwalmapel");

	$html .=
		'<!DOCTYPE html>
<html>

<head>
	</head>
	

	<body>
	
				<h2>
					<center> JADWAL PELAJARAN </center>
				</h2>
<table cellpadding="5 " border="1" style="width:100%">
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
						<th>
						<center>KODE MAPEL</center>
					</th>
					<th>
						<center>KELAS</center>
					</th>
						<th>
						<center>KODE MAPEL</center>
					</th>
					<th>
						<center>KELAS</center>
					</th>
						<th>
						<center>KODE MAPEL</center>
					</th>
					<th>
						<center>KELAS</center>
					</th>
				</tr>';

	$jum = 1;
	while ($row = mysqli_fetch_array($sql) and $pro = mysqli_fetch_array($sql2) and $tes = mysqli_fetch_array($sql3) and $hsl = mysqli_fetch_array($sql4)) {
		$html .= '<tr>';
		if ($jum <= 1) {
			$html .= '<td rowspan="' . $row['jumlah'] . '"> <center>' . $row['hari'] . '</center></td>';
			$jum = $row['jumlah'];
		} else {
			$jum = $jum - 1;
		}
		$html .= '<td> <center>' . $row["waktu"] . '</center></td>
	 <td> <center>' . $row["kd_mapel"] . '</center><br>
				<center>' . $row['nama_guru'] . '</center></td>
	 <td style=background-color:red;> <center>' . $row["kelas"] . '</center></td>
	 <td> <center>' . $pro["kd_mapel"] . '</center><br>
				<center>' . $pro["nama_guru"] . '</center></td>
	 <td style=background-color:cyan;> <center>' . $pro["kelas"] . '</center></td>
	 <td> <center>' . $tes["kd_mapel"] . '</center><br>
				<center>' . $tes["nama_guru"] . '</center></td>
	 <td style=background-color:purple;> <center>' . $tes["kelas"] . '</center></td>
	 <td> <center>' . $hsl["kd_mapel"] . '</center><br>
				<center>' . $hsl["nama_guru"] . '</center></td>
	 <td style=background-color:yellow;> <center>' . $hsl["kelas"] . '</center></td>

	 </tr>';
	}
} else {

	$sql = mysqli_query($koneksi, "SELECT C.*, B.*, A.*, (SELECT COUNT(waktu) FROM jadwalmapel WHERE hari=A.hari AND kelas='$kelas' AND kd_mapel = 0) AS jumlah FROM jadwalmapel A JOIN sk B ON B.mapel=A.kd_mapel join tb_tahun_ajaran C on c.tapel=B.tahunajaran where A.kelas='$kelas' AND c.statustapel='Aktif' ORDER BY A.id_jadwalmapel");

	$html .= '<!DOCTYPE html>
<html>

<head>
	</head>
	

	<body>
	
				<h2>
					<center> JADWAL PELAJARAN </center>
				</h2>
<table cellpadding="5 " border="1" style="width:100%">
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
	 <td> <center>' . $row["kd_mapel"] . '</center><br>
				<center>' . $row['nama_guru'] . '</center></td>
	 <td style=background-color:red;> <center>' . $row["kelas"] . '</center></td>
	 </tr>';
	}
}
$html .= '</table>
				
				</body>
				</html>';



$mpdf->WriteHTML($html);



$mpdf->Output('cetak.pdf', \Mpdf\Output\Destination::INLINE);
