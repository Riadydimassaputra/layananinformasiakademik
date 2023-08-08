<?php

require '../config/config.php';


// ADMIN SECTION
function summon_admin()
{
	global $koneksi;
	$id = $_SESSION['idsppapp'];
	return mysqli_query($koneksi, "SELECT * FROM user WHERE id='$id'");
}

//insert kegiatan

function insert_kegiatan()
{
	global $koneksi;
	$nama_kegiatan	= $_POST['nama_kegiatan'];
	return mysqli_query($koneksi, "INSERT INTO kegiatan SET nama_kegiatan='$nama_kegiatan'");
}

function hapus_kegiatan()
{
	global $koneksi;
	$id_kegiatan  = $_POST['id_kegiatan'];

	$hapus = mysqli_query($koneksi, "DELETE FROM kegiatan WHERE id_kegiatan='$id_kegiatan'");
}

function edit_kegiatan()
{
	global $koneksi;
	$id_kegiatan  = $_POST['id_kegiatan'];
	$nama_kegiatan	= $_POST['nama_kegiatan'];

	return mysqli_query($koneksi, "UPDATE kegiatan SET nama_kegiatan='$nama_kegiatan' where id_kegiatan='$id_kegiatan'");
}

//Laporan

function insert_lap()
{
	global $koneksi;
	$nama_user = $_POST['nama_lengkap'];
	$tahun	=	$_POST['tahun'];
	$jam	=	$_POST['jam'];
	$nama_kegiatan = $_POST['nama_kegiatan'];
	$kehadiran		=	$_POST['kehadiran'];
	$alasan			=	$_POST['alasan'];
	$point			= $_POST['point'];
	$admin			=	$_POST['admin'];
	$img			=	$_POST['image'];
	$folderPath = "../guru/cam/";

	$image_parts = explode(";base64,", $img);
	$image_type_aux = explode("image/", $image_parts[0]);
	$image_type = $image_type_aux[1];

	$image_base64 = base64_decode($image_parts[1]);
	$fileName = uniqid() . '.jpg';

	$file = $folderPath . $fileName;
	file_put_contents($file, $image_base64);

	date_default_timezone_set("Asia/Jakarta");
	$waktu = date("d-m-Y");

	$bulanIndo = [
		'01' => 'Januari',
		'02' => 'Februari',
		'03' => 'Maret',
		'04' => 'April',
		'05' => 'Mei',
		'06' => 'Juni',
		'07' => 'Juli',
		'08' => 'Agustus',
		'09' => 'September',
		'10' => 'Oktober',
		'11' => 'November',
		'12' => 'Desember',
	];

	$hariIndo = [
		'Sunday' => 'Minggu',
		'Monday' => 'Senin',
		'Tuesday' => 'Selasa',
		'Wednesday' => 'Rabu',
		'Thursday' => 'Kamis',
		'Friday' => 'Jumat',
		'Saturday' => 'Sabtu',
	];

	$bulan =
		$bulanIndo[date('m', strtotime($waktu))];
	$hari =
		$hariIndo[date('l', strtotime($waktu))];;

	if (empty($tahun)) {
		echo "<script>alert('TIDAK ADA TAHUN AJARAN YANG AKTIF'); </script>";
	} else {
		if ($kehadiran == 'Hadir') {
			$simpan = "INSERT INTO laporan SET nama_user='$nama_user',  tahun='$tahun', bulan='$bulan', hari='$hari', jam='$jam',
	 nama_kegiatan='$nama_kegiatan', kehadiran='$kehadiran', alasan='$alasan', foto='$fileName', point='$point', user_upload='$admin'";
			$result = mysqli_query($koneksi, $simpan);
			$prestasi = mysqli_query($koneksi, "INSERT INTO prestasiguru set nama_guru='$nama_user', tahunajaran='$tahun', total='$point'");
		} else if ($kehadiran == 'Tidak Hadir') {
			$simpan = "INSERT INTO laporan SET nama_user='$nama_user',  tahun='$tahun', bulan='$bulan', hari='$hari', jam='$jam',
	 nama_kegiatan='Tidak Ada Kegiatan', kehadiran='$kehadiran', alasan='$alasan', foto='--.jpg', point='$point', user_upload='$admin'";
			$result = mysqli_query($koneksi, $simpan);
		}
	}

	if ($simpan) {
		echo "<script>alert('DATA BERHASIL DI UPLOAD'); </script>";
	} else {
		echo "<script>alert('GAGAL MENGUPLOAD FILE');</script>";
	}
	error_reporting(0);
}

function hapus_lap()
{
	global $koneksi;
	$id_lap	= $_POST['id_lap'];
	$hapus = mysqli_query($koneksi, "DELETE FROM laporan WHERE id_lap='$id_lap'");
}

//PENGAJAR

//JURNAL
function insert_jurnal()
{
	global $koneksi;
	$namakegiatan = $_POST['kategori_kegiatan'];
	$tahunajaran = $_POST['tahunajaran'];
	$namapengajar = $_POST['nama_pengajar'];
	$ekstensi_diperbolehkan	= array('pdf');
	$nama = $_FILES['file']['name'];
	$x = explode('.', $nama);
	$ekstensi = strtolower(end($x));
	$ukuran	= $_FILES['file']['size'];
	$file_tmp = $_FILES['file']['tmp_name'];

	if (empty($tahunajaran)) {
		echo "<script>alert('TIDAK ADA TAHUN AJARAN YANG AKTIF'); </script>";
	} else {
		if (in_array($ekstensi, $ekstensi_diperbolehkan) === true) {
			if ($ukuran < 10440700) {
				move_uploaded_file($file_tmp, '../dokumen/laporanguru/' . $nama);
				$simpan = mysqli_query($koneksi, "INSERT INTO veriflapguru set kategori_kegiatan='$namakegiatan', tahunajaran='$tahunajaran', nama_pengajar='$namapengajar', file_lap='$nama', status_verif='Sedang Diperiksa'");

				if ($simpan) {
					echo '<script>alert("Data Berhasil Di Simpan")</script>';
				} else {
					echo '<script>alert("Data Gagal Di Simpan")</script>';
				}
			} else {
				echo 'UKURAN FILE TERLALU BESAR';
			}
		} else {
			echo 'EKSTENSI FILE YANG DI UPLOAD TIDAK DI PERBOLEHKAN';
		}
	}
	error_reporting(0);
}

function hapus_jurnal()
{
	global $koneksi;
	$id_jurnal = $_POST['id_veriflapguru'];

	$hapus = mysqli_query($koneksi, "DELETE FROM veriflapguru where id_veriflapguru='$id_jurnal'");
	if ($hapus) {
		echo '<script>alert("Data Berhasil Di Hapus")</script>';
	} else {
		echo '<script>alert("Data Gagal Di Hapus")</script>';
	}
}



function edit_profil()
{
	global $koneksi;

	$nama_lengkap = $_POST['nama_lengkap'];

	$ekstensi_diperbolehkan	= array('png', 'jpg');
	$nama = $_FILES['foto']['name'];
	$x = explode('.', $nama);
	$ekstensi = strtolower(end($x));
	$ukuran	= $_FILES['foto']['size'];
	$file_tmp = $_FILES['foto']['tmp_name'];

	if (in_array($ekstensi, $ekstensi_diperbolehkan) === true) {
		if ($ukuran < 1044070) {
			move_uploaded_file($file_tmp, '../admsek/images/' . $nama);

			$simpan = mysqli_query($koneksi, "UPDATE guru SET foto='$nama' where nama_guru='$nama_lengkap'");
			if ($simpan) {
				echo
				'<script>alert("Data Berhasil Di Simpan")</script>';
			} else {
				echo
				'<script>alert("Data Gagal Di Simpan")</script>';
			}
		} else {
			echo 'UKURAN FILE TERLALU BESAR';
		}
	} else {
		echo 'EKSTENSI FILE YANG DI UPLOAD TIDAK DI PERBOLEHKAN';
	}
}
