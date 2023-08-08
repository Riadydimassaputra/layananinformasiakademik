<?php

require '../config/config.php';


// ADMIN SECTION
function summon_admin()
{
	global $koneksi;
	$id = $_SESSION['idsppapp'];
	return mysqli_query($koneksi, "SELECT * FROM user WHERE id='$id'");
}

function select_admin()
{
	global $koneksi;
	return mysqli_query($koneksi, "SELECT * FROM user");
}

function select_user()
{
	global $koneksi;
	return mysqli_query($koneksi, "SELECT * FROM user");
}

function insert_user()
{
	global $koneksi;
	$nama_user	= $_POST['nama_lengkap'];
	$username  = $_POST['username'];
	$password = md5($_POST['password']);
	$level		= $_POST['status'];

	$selectsiswa = mysqli_query($koneksi, "SELECT * FROM user WHERE username='$username'");
	$cek = mysqli_num_rows($selectsiswa);

	if ($cek) {
		echo '<script>alert("Username sudah ada")</script>';
	} else {
		$save = mysqli_query($koneksi, "INSERT INTO user SET nama_lengkap='$nama_user', username='$username',password='$password',status='$level'");
		if ($save) {
			echo '<script>alert("Data Berhasil Disimpan")</script>';
		} else {
			echo '<script>alert("Data Gagal Disimpan")</script>';
		}
	}
}

function edit_user()
{
	global $koneksi;
	$id = $_POST['id'];
	$nama_user	= $_POST['nama_lengkap'];
	$username  = $_POST['username'];
	$password = md5($_POST['password']);
	$level		= $_POST['status'];

	$edit = mysqli_query($koneksi, "UPDATE user SET nama_lengkap='$nama_user', username='$username',password='$password',status='$level' where id='$id'");
	if ($edit) {
		echo '<script>alert("Data Berhasil Disimpan")</script>';
	} else {
		echo '<script>alert("Data Gagal Disimpan")</script>';
	}
}

function hapus_user()
{
	global $koneksi;
	$id  = $_POST['id'];

	$hapus = mysqli_query($koneksi, "DELETE FROM user WHERE id='$id'");
	if ($hapus) {
		echo '<script>alert("Data Berhasil Dihapus")</script>';
	} else {
		echo '<script>alert("Data Gagal Dihapus")</script>';
	}
}

function import_user()
{
	global $koneksi;
	if (isset($_POST['import'])) {
		$fileName = $_FILES["file"]["tmp_name"];
		$file = fopen($fileName, "r");

		while (($row = fgetcsv($file, 10000, ";")) !== FALSE) {
			$sqlInsert = "INSERT INTO user (id, username, password, nama_lengkap, status) VALUES ('" . "','" . $row[0] . "', '" . md5($row[1]) . "', '" . $row[2] . "', '" . $row[3] . "')";

			$result = mysqli_query($koneksi, $sqlInsert);

			if (!empty($result)) {
				echo "<script>alert ('CSV Data telah di import ke Database'); </script>";
			} else {
				echo "<script>alert ('Data Gagal di Import'); </script>";
			}
		}
	}
}

//Orang Tua
function insert_ortu()
{
	global $koneksi;
	$nama_ortu = $_POST['nama_ortu'];
	$NIS	=	$_POST['nama_siswa'];
	$notelp = $_POST['notelp'];
	$pekerjaan = $_POST['pekerjaan'];
	$password = md5($_POST['notelp']);

	$simpan = mysqli_query($koneksi, "INSERT INTO orangtua set nama_ortu='$nama_ortu', NIS='$NIS', no_telp='$notelp', pekerjaan='$pekerjaan'");
	$simpan3 = mysqli_query($koneksi, "INSERT INTO user set username='$NIS', password='$password', nama_lengkap='$nama_ortu', status='orangtua'");

	if ($simpan) {
		echo "<script>alert('DATA BERHASIL DI UPLOAD'); </script>";
	} else {
		echo "<script>alert('GAGAL MENGUPLOAD DATA');</script>";
	}
}

function hapus_ortu()
{
	global $koneksi;
	$id_ortu = $_POST['id_ortu'];

	$hapus = mysqli_query($koneksi, "DELETE FROM orangtua where id_ortu='$id_ortu'");


	if ($hapus) {
		echo "<script>alert('DATA BERHASIL DI Hapus'); </script>";
	} else {
		echo "<script>alert('GAGAL Menghapus DATA');</script>";
	}
}

function edit_ortu()
{
	global $koneksi;
	$id_ortu = $_POST['id_ortu'];
	$nama_ortu = $_POST['nama_ortu'];
	$NIS	=	$_POST['nama_siswa'];
	$notelp = $_POST['notelp'];
	$pekerjaan = $_POST['pekerjaan'];

	$simpan = mysqli_query($koneksi, "UPDATE orangtua set nama_ortu='$nama_ortu', NIS='$NIS', no_telp='$notelp', pekerjaan='$pekerjaan' where id_ortu='$id_ortu'");

	if ($simpan) {
		echo "<script>alert('DATA BERHASIL DI UPLOAD'); </script>";
	} else {
		echo "<script>alert('GAGAL MENGUPLOAD DATA');</script>";
	}
}

function preview_ortu()
{
	global $koneksi;
	if (isset($_POST['import'])) {
		$fileName = $_FILES["file"]["tmp_name"];
		$file = fopen($fileName, "r");

		while (($row = fgetcsv($file, 10000, ";")) !== FALSE) {
			$sqlInsert = "INSERT INTO orangtua (id_ortu, nama_ortu, NIS, no_telp, pekerjaan) VALUES ('" . "','" . $row[0] . "', '" . $row[1] . "', '" . $row[2] . "', '" . $row[3] . "')";

			$result = mysqli_query($koneksi, $sqlInsert);

			if (!empty($result)) {
				echo "<script>alert ('CSV Data telah di import ke Database'); </script>";
			} else {
				echo "<script>alert ('Data Gagal di Import'); </script>";
			}
		}
	}
}



//insert kegiatan

function insert_kegiatan()
{
	global $koneksi;
	$nama_kegiatan	= $_POST['nama_kegiatan'];
	$point 			= $_POST['point'];

	$simpan = mysqli_query($koneksi, "INSERT INTO kegiatan SET nama_kegiatan='$nama_kegiatan', point='$point'");
	if ($simpan) {
		echo "<script>alert('Data Berhasil Di Simpan'); </script>";
	} else {
		echo "<script>alert('Data Gagal Di Simpan'); </script>";
	}
}

function hapus_kegiatan()
{
	global $koneksi;
	$id_kegiatan  = $_POST['id_kegiatan'];

	$hapus = mysqli_query($koneksi, "DELETE FROM kegiatan WHERE id_kegiatan='$id_kegiatan'");
	if ($hapus) {
		echo "<script>alert('Data Berhasil Di Hapus'); </script>";
	} else {
		echo "<script>alert('Data Gagal Di Hapus'); </script>";
	}
}


function edit_kegiatan()
{
	global $koneksi;
	$id_kegiatan  = $_POST['id_kegiatan'];
	$nama_kegiatan	= $_POST['nama_kegiatan'];
	$point 			= $_POST['point'];

	$simpan = mysqli_query($koneksi, "UPDATE kegiatan SET nama_kegiatan='$nama_kegiatan', point='$point' where id_kegiatan='$id_kegiatan'");
	if ($simpan) {
		echo "<script>alert('Data Berhasil Di Simpan'); </script>";
	} else {
		echo "<script>alert('Data Gagal Di Simpan'); </script>";
	}
}



//Laporan

function insert_lap()
{
	global $koneksi;
	$nama_user = $_POST['nama_lengkap'];
	$tahun	=	$_POST['tahun'];
	$bulan	=	$_POST['bulan'];
	$hari	=	$_POST['hari'];
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






//KELAS

function select_kelas()
{
	global $koneksi;
	return mysqli_query($koneksi, "SELECT * FROM kelas");
}

function insert_kelas()
{
	global $koneksi;
	$kelas	= $_POST['nama_kelas'];
	$simpan = mysqli_query($koneksi, "INSERT INTO kelas SET nama_kelas='$kelas'");
	if ($simpan) {
		echo "<script>alert('Data Berhasil Di Simpan'); </script>";
	} else {
		echo "<script>alert('Data Gagal Di Simpan'); </script>";
	}
}

function hapus_kelas()
{
	global $koneksi;
	$id_kelas  = $_POST['id_kelas'];

	$hapus = mysqli_query($koneksi, "DELETE FROM kelas WHERE id_kelas='$id_kelas'");
	if ($hapus) {
		echo "<script>alert('Data Berhasil Di Hapus'); </script>";
	} else {
		echo "<script>alert('Data Gagal Di Hapus'); </script>";
	}
}

function edit_kelas()
{
	global $koneksi;
	$id_kelas = $_POST['id_kelas'];
	$kelas	= $_POST['nama_kelas'];
	$edit = mysqli_query($koneksi, "UPDATE kelas SET nama_kelas='$kelas' where id_kelas='$id_kelas'");
	if ($edit) {
		echo "<script>alert('Data Berhasil Di Simpan'); </script>";
	} else {
		echo "<script>alert('Data Gagal Di Simpan'); </script>";
	}
}

function transfer_siswa()
{
	global $koneksi;
	$id_siswa	= $_POST['id_siswa'];
	$kelas	= $_POST['kelas'];
	$status = $_POST['status'];

	if ($status == 'alumni') {
		foreach ($_POST['id_siswa'] as $value) :

			$save2 = mysqli_query($koneksi, "UPDATE siswa set id_kls='$kelas', status_siswa='$status' WHERE nama_siswa='$value'");
			$save3 = mysqli_query($koneksi, "UPDATE user set status='$status' where nama_lengkap='$value'");
			$save4 = mysqli_query($koneksi, "INSERT INTO alumni set NIS='$value', tahun_lulus='$kelas'");

		endforeach;
		if ($save2) {
			echo '<script>alert("Data Berhasil Di Simpan")</script>';
		} else {
			echo '<script>alert("GAGAL DISIMPAN")</script>';
		}
	} else {
		foreach ($_POST['id_siswa'] as $value) :

			$save2 = mysqli_query($koneksi, "UPDATE siswa set id_kls='$kelas' WHERE NIS='$value'");

		endforeach;
		if ($save2) {
			echo '<script>alert("Data Berhasil Di Simpan")</script>';
		} else {
			echo '<script>alert("GAGAL DISIMPAN")</script>';
		}
	}
}

function edit_profilsiswa()
{
	global $koneksi;

	$nama_lengkap = $_POST['nama_lengkap'];
	$alamat = $_POST['alamat'];
	$email = $_POST['email'];
	$notelp = $_POST['notelp'];

	$ekstensi_diperbolehkan	= array('png', 'jpg');
	$nama = $_FILES['foto']['name'];
	$x = explode('.', $nama);
	$ekstensi = strtolower(end($x));
	$ukuran	= $_FILES['foto']['size'];
	$file_tmp = $_FILES['foto']['tmp_name'];

	if (in_array($ekstensi, $ekstensi_diperbolehkan) === true) {
		if ($ukuran < 1044070) {
			move_uploaded_file($file_tmp, '../operator/images/' . $nama);

			$simpan = mysqli_query($koneksi, "UPDATE siswa SET pasfoto='$nama', alamat_siswa='$alamat', email='$email', notelp_siswa='$notelp' where nama_siswa='$nama_lengkap'");
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

function edit_alumni()
{
	global $koneksi;
	$NIS = $_POST['NIS'];
	$status = $_POST['status'];
	$keterangan = $_POST['keterangan'];

	$edit = mysqli_query($koneksi, "UPDATE alumni set status='$status', keterangan='$keterangan' where NIS='$NIS'");
	if ($edit) {
		echo '<script>alert("Data Berhasil Di Simpan")</script>';
	} else {
		echo '<script>alert("GAGAL DISIMPAN")</script>';
	}
}

//SISWA


function select_siswa()
{
	global $koneksi;
	return mysqli_query($koneksi, "SELECT siswa.* siswa.id_siswa, siswa.NIS, siswa.nama_siswa, siswa.jurusan, kelas FROM siswa
	LEFT JOIN kelas on siswa.id_kls=kelas.id_kelas");
}

function insert_siswa()
{
	global $koneksi;
	$NIS 		=	$_POST['NIS'];
	$nama_siswa =	$_POST['nama_siswa'];
	$id_kls 	=	$_POST['id_kls'];
	$jurusan	=	$_POST['jurusan'];
	$tahun = $_POST['tapel'];
	$email = $_POST['email'];
	$alamat = $_POST['alamat'];
	$notelp = $_POST['notelp'];

	$selectsiswa = mysqli_query($koneksi, "SELECT * FROM siswa WHERE NIS='$NIS'");
	$cek = mysqli_num_rows($selectsiswa);

	if ($cek) {
		echo '<script>alert("NIS sudah ada")</script>';
	} else {
		$save = mysqli_query($koneksi, "INSERT INTO siswa set NIS='$NIS', nama_siswa='$nama_siswa', id_kls='$id_kls', jurusan='$jurusan', tahunajaran='$tahun', email='$email', alamat_siswa='$alamat', notelp_siswa='$notelp', status_siswa='Aktif', pasfoto='nofoto.png'");
		if ($save) {
			echo '<script>alert("Data Berhasil Disimpan")</script>';
		} else {
			echo '<script>alert("Data Gagal Disimpan")</script>';
		}
	}
}

function edit_siswa()
{
	global $koneksi;
	$id		= $_POST['id_siswa'];
	$NIS 		=	$_POST['NIS'];
	$nama_siswa =	$_POST['nama_siswa'];
	$id_kls 	=	$_POST['id_kls'];
	$jurusan	=	$_POST['jurusan'];
	$tapel 		=	$_POST['tapel'];
	$email = $_POST['email'];
	$alamat = $_POST['alamat'];
	$notelp = $_POST['notelp'];
	$status = $_POST['status'];

	$edit = mysqli_query($koneksi, "UPDATE siswa set NIS='$NIS', nama_siswa='$nama_siswa', id_kls='$id_kls', jurusan='$jurusan', tahunajaran='$tapel', email='$email', alamat_siswa='$alamat', notelp_siswa='$notelp', status_siswa='$status' WHERE NIS='$NIS'");
	if ($edit) {
		echo '<script>alert("Data Berhasil Di Ubah")</script>';
	} else {
		echo '<script>alert("Data Gagal Di Ubah")</script>';
	}
}

function hapus_siswa()
{
	global $koneksi;
	$id_siswa = $_POST['NIS'];

	$hapus = mysqli_query($koneksi, "DELETE FROM siswa WHERE NIS='$id_siswa'");
	if ($hapus) {
		echo '<script>alert("Data Berhasil Di Hapus")</script>';
	} else {
		echo '<script>alert("Data Gagal Di Hapus")</script>';
	}
}

function preview_siswa()
{
	global $koneksi;
	$jenispem	=	'SPP';
	$nominal	=	'250000';
	if (isset($_POST['import'])) {
		$fileName = $_FILES["file"]["tmp_name"];
		$file = fopen($fileName, "r");

		while (($row = fgetcsv($file, 10000, ";")) !== FALSE) {
			$sqlInsert = "INSERT INTO siswa (id_siswa, NIS, nama_siswa, id_kls, jurusan, tahunajaran, email, alamat_siswa, notelp_siswa, status_siswa) VALUES ('" . "','" . $row[0] . "', '" . $row[1] . "', '" . $row[2] . "', '" . $row[3] . "','" . $row[4] . "','" . $row[5] . "','" . $row[6] . "','" . $row[7] . "','" . $row[8] . "')";

			$result = mysqli_query($koneksi, $sqlInsert);

			if (!empty($result)) {
				echo "<script>alert('DATA BERHASIL DI UPLOAD'); </script>";
			} else {
				echo "<script>alert('GAGAL MENGUPLOAD DATA');</script>";
			}
		}
	}
}

function bayaronline()
{
	global $koneksi;
	$id_tagihan =	$_POST['id_tagihan'];
	$NIS 		= $_POST['NIS'];
	$semester		= $_POST['Semester'];
	$pembayaran		= $_POST['pembayaran'];
	$bayar	= $_POST['bayar'];

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

	$bulan =
		$bulanIndo[date('m', strtotime($waktu))];
	$tahun = date('Y');

	$ekstensi_diperbolehkan	= array('png', 'jpg');
	$nama = $_FILES['bukti_bayar']['name'];
	$x = explode('.', $nama);
	$ekstensi = strtolower(end($x));
	$ukuran	= $_FILES['bukti_bayar']['size'];
	$file_tmp = $_FILES['bukti_bayar']['tmp_name'];

	if (in_array($ekstensi, $ekstensi_diperbolehkan) === true) {
		if ($ukuran < 1044070) {
			move_uploaded_file($file_tmp, '../images/' . $nama);

			$simpan = mysqli_query($koneksi, "INSERT INTO verifikasi set id_tag_v='$id_tagihan', NIS='$NIS', kategori_pem='$pembayaran',semester='$semester', bulan='$bulan', tahun ='$tahun', foto='$nama', bayar_verif='$bayar', status_verif='Belum Verifikasi'");
			if ($simpan) {
				echo
				'<script>alert("Data Berhasil Di Simpan")</script>';
			} else {
				echo
				'<script>alert("Data Gagal Di Simpan")</script>';
			}
		} else {
			echo '<script>alert("UKURAN FILE TERLALU BESAR")</script>';
		}
	} else {
		echo '<script>alert("EKSTENSI FILE YANG DI UPLOAD TIDAK DI PERBOLEHKAN")</script>';
	}
}

function hapus_bayaronline()
{
	global $koneksi;
	$idverif = $_POST['id_verif'];

	$hapus = mysqli_query($koneksi, "DELETE FROM verifikasi WHERE id_verif='$idverif'");
	if ($hapus) {
		echo '<script>alert("Data Berhasil Di Hapus")</script>';
	} else {
		echo '<script>alert("Data Gagal Di Hapus")</script>';
	}
}

function verifikasibayar()
{
	global $koneksi;
	$id_verif = $_POST['id_verifikasi'];
	$id_tagihan =	$_POST['id_tagihan'];
	$NIS 		= $_POST['NIS'];
	$nm_siswa	= $_POST['nama_siswa'];
	$kelas		= $_POST['nama_kelas'];
	$jurusan	= $_POST['jurusan'];
	$semester		= $_POST['Semester'];
	$pembayaran		= $_POST['pembayaran'];
	$jenispem		= $_POST['jenispem'];
	$nominal	= $_POST['nominal'];
	$onlinebayar	= $_POST['onlinebayar'];
	$b_terakhir = $_POST['onlinebayar'];

	$admin	=	$_POST['admin'];

	date_default_timezone_set("Asia/Jakarta");
	$today = date("d-m-Y");
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

	$tahun	= date("Y");

	$tstamp = date("d-m-Y");
	$bulan = $bulanIndo[date('m', strtotime($tstamp))];

	$sisabayar = floatval($nominal) - floatval($onlinebayar);

	if ($onlinebayar == $nominal) {
		$save = mysqli_query($koneksi, "INSERT INTO bayar SET id_tag='$id_tagihan', NIS='$NIS', nm_siswa='$nm_siswa', kelas='$kelas', jurusan='$jurusan', nominal='$nominal', 
		bayar='$onlinebayar', bulan='$bulan', tahun='$tahun', kategoripem='$pembayaran', jenispem='$jenispem', sisa_bayar='$sisabayar', semester='$semester', 
		status='LUNAS', b_terakhir='$b_terakhir', admin='$admin'");
		$save2 = mysqli_query($koneksi, "UPDATE tagihan set bayar='$onlinebayar', sisa_bayar='$sisabayar', status='LUNAS', tanggal_bayar='$tstamp' where id_tagihan='$id_tagihan'");
		$save3 = mysqli_query($koneksi, "UPDATE verifikasi set status_verif='Sudah Verifikasi' where id_verif='$id_verif'");
		if ($save) {
			echo '<script>alert("Data Berhasil Di Simpan")</script>';
		} else {
			echo '<script>alert("DATA GAGAL DISIMPAN")</script>';
		}
	} else if ($onlinebayar < $nominal) {
		$save = mysqli_query($koneksi, "INSERT INTO bayar SET id_tag='$id_tagihan', NIS='$NIS', nm_siswa='$nm_siswa', kelas='$kelas', jurusan='$jurusan', nominal='$nominal', 
		bayar='$onlinebayar', bulan='$bulan', tahun='$tahun', kategoripem='$pembayaran', jenispem='$jenispem', sisa_bayar='$sisabayar', semester='$semester',
		 status='Cicilan', b_terakhir='$b_terakhir', admin='$admin'");
		$save2 = mysqli_query($koneksi, "UPDATE tagihan set bayar='$onlinebayar', sisa_bayar='$sisabayar', status='Cicilan',tanggal_bayar='$tstamp' where id_tagihan='$id_tagihan'");
		$save3 = mysqli_query($koneksi, "UPDATE verifikasi set status_verif='Sudah Verifikasi' where id_verif='$id_verif'");
		if ($save) {
			echo '<script>alert("Data Berhasil Di Simpan")</script>';
		} else {
			echo '<script>alert("DATA GAGAL DISIMPAN")</script>';
		}
	} else if ($onlinebayar > $nominal) {
		echo '<script>alert("Jumlah yang dibayarkan tidak sesuai dengan Nominal Pembayaran")</script>';
	}
}

//tagihan

function tambah_tagihan()
{
	global $koneksi;


	$id_siswa	= $_POST['id_siswa'];
	$awaltempo	 = $_POST['jatuhtempo'];
	$semester	=	$_POST['semester'];
	$jenispem	=	$_POST['tahun'];
	$nominal	= $_POST['nominal'];

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

	if (empty($jenispem)) {
		echo '<script>alert("Tidak ada Tahun Ajaran")</script>';
	} else {
		foreach ($_POST['id_siswa'] as $value) :
			for ($i = 0; $i < 6; $i++) {


				$jatuhtempo = date("Y-m-d", strtotime("+$i month", strtotime($awaltempo)));

				$bulan     = 'SPP -  '  . $bulanIndo[date('m', strtotime($jatuhtempo))] . "  " . date('Y', strtotime($jatuhtempo));

				$save2 = mysqli_query($koneksi, "INSERT INTO tagihan set NIS='$value', jenispem='$jenispem' , jatuhtempo='$jatuhtempo', pembayaran='$bulan', nominal='$nominal', Semester='$semester', bayar='0', sisa_bayar='$nominal', status='Belum Terbayarkan'");
			}


		endforeach;
	}
	if ($save2) {
		echo '<script>alert("Data Berhasil Di Simpan")</script>';
	} else {
		echo
		'<script>alert("GAGAL DISIMPAN")</script>';
	}
}

function hapus_tagihan()
{
	global $koneksi;
	$id_siswa = $_POST['id_siswa'];
	$semester	=	$_POST['semesterh'];
	$jenispem	=	$_POST['tahunh'];

	$jenispembayaran = $jenispem . ' ' . $semester;
	foreach ($_POST['id_siswa'] as $value) :


		$hapus = mysqli_query($koneksi, "DELETE from tagihan where NIS='$value' AND jenispem='$jenispembayaran' AND pembayaran LIKE 'SPP%'");
	endforeach;
	if ($hapus) {
		echo '<script>alert("Data Berhasil Di Hapus")</script>';
	} else {
		echo '<script>alert("GAGAL Di Hapus")</script>';
	}
}



function tambah_tagihanreg()
{
	global $koneksi;


	$id_siswa	= $_POST['id_siswa'];
	$awaltempo	 = $_POST['jatuhtempo'];
	$semester	=	$_POST['semester'];
	$jenispem	=	$_POST['tahun'];
	$nominal	= $_POST['nominal'];

	if (empty($jenispem)) {
		echo '<script>alert("Tidak ada Tahun Ajaran")</script>';
	} else {
		foreach ($_POST['id_siswa'] as $value) :

			$jenispembayaran = $jenispem . ' ' . $semester;
			$bulan     = 'REGISTRASI -  '  . $semester;
			$save2 = mysqli_query($koneksi, "INSERT INTO tagihan set NIS='$value', jenispem='$jenispem', jatuhtempo='$awaltempo',pembayaran='$bulan', nominal='$nominal', Semester='$semester', bayar='0', sisa_bayar='$nominal', status='Belum Terbayarkan'");


		endforeach;
	}
	if ($save2) {
		echo '<script>alert("Data Berhasil Di Simpan")</script>';
	} else {
		echo '<script>alert("GAGAL DISIMPAN")</script>';
	}
}

function hapus_tagihanreg()
{
	global $koneksi;
	$id_siswa = $_POST['id_siswa'];
	$semester	=	$_POST['semesterh'];
	$jenispem	=	$_POST['tahunh'];

	foreach ($_POST['id_siswa'] as $value) :
		$jenispembayaran = $jenispem . ' ' . $semester;

		$hapus = mysqli_query($koneksi, "DELETE from tagihan where NIS='$value' AND jenispem='$jenispembayaran' AND pembayaran LIKE 'REGISTRASI%'");
	endforeach;
	if ($hapus) {
		echo '<script>alert("Data Berhasil Di Hapus")</script>';
	} else {
		echo '<script>alert("GAGAL Di Hapus")</script>';
	}
}
function hapus_bayar()
{
	global $koneksi;
	$id_bayar =	$_POST['id_bayar'];

	$hapus = mysqli_query($koneksi, "DELETE FROM bayar WHERE id_bayar='$id_bayar'");
}


//PETUGAS LOKET

function select_print_siswa()
{

	global $koneksi;
	$NIS = $_GET['NIS'];

	return mysqli_query($koneksi, "SELECT NIS, nama_siswa, nama_kelas.kelas, jurusan FROM siswa inner JOIN kelas on 
	siswa.id_kls=kelas.id_kelas WHERE NIS = '$NIS'");
}


function select_print_bayar()
{
	global $koneksi;
	$NIS = $_GET['NIS'];
	$bulan = $_GET['bulan'];
	return mysqli_query($koneksi, "SELECT * FROM bayar WHERE NIS='$NIS' AND bulan = '$bulan'");
}

function print_tagihan()
{
	global $koneksi;
	return mysqli_query($koneksi, "SELECT * FROM bayar");
}

function bayartagihan()
{
	global $koneksi;
	$id_tagihan =	$_POST['id_tagihan'];
	$NIS 		= $_POST['NIS'];
	$nm_siswa	= $_POST['nama_siswa'];
	$kelas		= $_POST['nama_kelas'];
	$jurusan	= $_POST['jurusan'];
	$semester		= $_POST['Semester'];
	$pembayaran		= $_POST['pembayaran'];
	$jenispem		= $_POST['jenispem'];
	$nominal	= $_POST['nominal'];
	$bayar	= $_POST['bayar'];
	$b_terakhir = $_POST['bayar'];

	$admin	=	$_POST['admin'];

	date_default_timezone_set("Asia/Jakarta");
	$today = date("d-m-Y");
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

	$tahun	= date("Y");

	$tstamp = date("d-m-Y");
	$bulan = $bulanIndo[date('m', strtotime($tstamp))];

	$sisabayar = floatval($nominal) - floatval($bayar);

	if ($bayar == $nominal) {
		$save = mysqli_query($koneksi, "INSERT INTO bayar SET id_tag='$id_tagihan', NIS='$NIS', nm_siswa='$nm_siswa', kelas='$kelas', jurusan='$jurusan', nominal='$nominal', 
		bayar='$bayar', bulan='$bulan', tahun='$tahun', kategoripem='$pembayaran', jenispem='$jenispem', sisa_bayar='$sisabayar', semester='$semester', 
		status='LUNAS', b_terakhir='$b_terakhir', admin='$admin'");
		$save2 = mysqli_query($koneksi, "UPDATE tagihan set bayar='$bayar', sisa_bayar='$sisabayar', status='LUNAS', tanggal_bayar='$tstamp' where id_tagihan='$id_tagihan'");
		if ($save) {
			echo '<script>alert("Data Berhasil Di Simpan")</script>';
			header("location: ?m=print&NIS=$NIS&jenispem=$jenispem&kategoripem=$pembayaran");
		} else {
			echo '<script>alert("DATA GAGAL DISIMPAN")</script>';
		}
	} else if ($bayar < $nominal) {
		$save = mysqli_query($koneksi, "INSERT INTO bayar SET id_tag='$id_tagihan', NIS='$NIS', nm_siswa='$nm_siswa', kelas='$kelas', jurusan='$jurusan', nominal='$nominal', 
		bayar='$bayar', bulan='$bulan', tahun='$tahun', kategoripem='$pembayaran', jenispem='$jenispem', sisa_bayar='$sisabayar', semester='$semester',
		 status='Cicilan', b_terakhir='$b_terakhir', admin='$admin'");
		$save2 = mysqli_query($koneksi, "UPDATE tagihan set bayar='$bayar', sisa_bayar='$sisabayar', status='Cicilan',tanggal_bayar='$tstamp' where id_tagihan='$id_tagihan'");
		if ($save) {
			echo '<script>alert("Data Berhasil Di Simpan")</script>';
			header("location: ?m=print&NIS=$NIS&jenispem=$jenispem&kategoripem=$pembayaran");
		} else {
			echo '<script>alert("DATA GAGAL DISIMPAN")</script>';
		}
	} else if ($bayar > $nominal) {
		echo '<script>alert("Jumlah yang dibayarkan tidak sesuai dengan Nominal Pembayaran")</script>';
	}
}

function cicilantagihan()
{
	global $koneksi;
	$id_tagihan =	$_POST['id_tagihan'];
	$NIS 		= $_POST['NIS'];
	$nominal	=	$_POST['nominal'];
	$setoran		= $_POST['setor'];
	$semester		= $_POST['Semester'];
	$pembayaran		= $_POST['pembayaran'];
	$jenispem		= $_POST['jenispem'];
	$sisa_bayar	=	$_POST['sisa_bayar'];
	$cicil	= $_POST['cicil'];
	$b_terakhir = $_POST['cicil'];
	$admin	=	$_POST['admin'];

	date_default_timezone_set("Asia/Jakarta");
	$today = date("d-m-Y");
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

	$tahun	= date("Y");

	$tstamp = date("d-m-Y");
	$bulan = $bulanIndo[date('m', strtotime($tstamp))];

	$bayar = floatval($cicil) + floatval($setoran);

	$sisa_pembayar = floatval($nominal) - floatval($bayar);

	if ($cicil == $sisa_bayar) {
		if ($sisa_pembayar == 0) {
			$save = mysqli_query($koneksi, "UPDATE  bayar SET bayar='$bayar', bulan='$bulan', tahun='$tahun', sisa_bayar='$sisa_pembayar', status='LUNAS',  b_terakhir='$b_terakhir', admin='$admin' where id_tag='$id_tagihan'");
		} else {
			$save = mysqli_query($koneksi, "UPDATE  bayar SET bayar='$bayar', bulan='$bulan', tahun='$tahun', sisa_bayar='$sisa_pembayar', status='Cicilan', b_terakhir='$b_terakhir', admin='$admin' where id_tag='$id_tagihan'");
		}
		$save2 = mysqli_query($koneksi, "UPDATE tagihan set bayar='$bayar', sisa_bayar='$sisa_pembayar', status='LUNAS', tanggal_bayar='$tstamp' where id_tagihan='$id_tagihan'");
		if ($save) {
			echo '<script>alert("Data Berhasil Di Simpan")</script>';
			header("location: ?m=print&NIS=$NIS&jenispem=$jenispem&kategoripem=$pembayaran");
		} else {
			echo '<script>alert("DATA GAGAL DISIMPAN")</script>';
		}
	} else if ($cicil < $sisa_bayar) {
		if ($sisa_pembayar == 0) {
			$save = mysqli_query($koneksi, "UPDATE  bayar SET bayar='$bayar', bulan='$bulan', tahun='$tahun', sisa_bayar='$sisa_pembayar', status='LUNAS',  b_terakhir='$b_terakhir',admin='$admin' where id_tag='$id_tagihan'");
		} else {
			$save = mysqli_query($koneksi, "UPDATE  bayar SET bayar='$bayar', bulan='$bulan',tahun='$tahun', sisa_bayar='$sisa_pembayar', status='Cicilan', b_terakhir='$b_terakhir', admin='$admin' where id_tag='$id_tagihan'");
		}
		$save2 = mysqli_query($koneksi, "UPDATE tagihan set bayar='$bayar', sisa_bayar='$sisa_pembayar', status='Cicilan', tanggal_bayar='$tstamp' where id_tagihan='$id_tagihan'");
		if ($save) {
			echo '<script>alert("Data Berhasil Di Simpan")</script>';
			header("location: ?m=print&NIS=$NIS&jenispem=$jenispem&kategoripem=$pembayaran");
		} else {
			echo '<script>alert("DATA GAGAL DISIMPAN")</script>';
		}
	} else if ($cicil > $sisa_bayar) {
		echo '<script>alert("Jumlah yang dibayarkan tidak sesuai dengan Nominal Pembayaran")</script>';
	}
}

function hapuscicilanspp()
{
	global $koneksi;
	$id_tagihan = $_POST['id_tagihan'];
	$b_terakhir	=	$_POST['b_terakhir'];
	$bayar		= $_POST['nominal'];
	$sisa_bayar	=	$_POST['sisa_bayar'];
	$nominal = 	$_POST['nom'];

	$semula = floatval($sisa_bayar) + floatval($b_terakhir);
	$balik	= floatval($bayar) - floatval($b_terakhir);



	if ($semula == $nominal) {
		$hapus1 = mysqli_query($koneksi, "DELETE from bayar where id_tag='$id_tagihan'");
		$hapus2 = mysqli_query($koneksi, "UPDATE tagihan set bayar='$balik', sisa_bayar='$semula', status='Belum Terbayarkan', tanggal_bayar='' where id_tagihan='$id_tagihan'");
	} else if ($semula < $nominal) {
		$hapus1 = mysqli_query($koneksi, "UPDATE bayar set bayar='$balik', sisa_bayar='$semula', status='Cicilan', b_terakhir='$balik' where id_tag='$id_tagihan'");
		$hapus2 = mysqli_query($koneksi, "UPDATE tagihan set bayar='$balik', sisa_bayar='$semula', status='Cicilan', tanggal_bayar='' where id_tagihan='$id_tagihan'");
	}
	if ($hapus1) {
		echo '<script>alert("Data Berhasil Di Hapus")</script>';
	} else {
		echo '<script>alert("Data Gagal Di Hapus")</script>';
	}
}

function hapuscicilanreg()
{
	global $koneksi;
	$id_tagihan = $_POST['id_tagihan'];
	$b_terakhir	=	$_POST['b_terakhir'];
	$bayar		= $_POST['nominal'];
	$sisa_bayar	=	$_POST['sisa_bayar'];
	$nominal = 	$_POST['nom'];

	$semula = floatval($sisa_bayar) + floatval($b_terakhir);
	$balik	= floatval($bayar) - floatval($b_terakhir);

	if ($semula == $nominal) {
		$hapus1 = mysqli_query($koneksi, "DELETE from bayar where id_tag='$id_tagihan'");
		$hapus2 = mysqli_query($koneksi, "UPDATE tagihan set bayar='$balik', sisa_bayar='$semula', status='Belum Terbayarkan', tanggal_bayar='' where id_tagihan='$id_tagihan'");
	} else if ($semula < $nominal) {
		$hapus1 = mysqli_query($koneksi, "UPDATE bayar set bayar='$balik', sisa_bayar='$semula', status='Cicilan', b_terakhir='$balik' where id_tag='$id_tagihan'");
		$hapus2 = mysqli_query($koneksi, "UPDATE tagihan set bayar='$balik', sisa_bayar='$semula', status='Cicilan', tanggal_bayar='' where id_tagihan='$id_tagihan'");
	}
	if ($hapus1) {
		echo '<script>alert("Data Berhasil Di Hapus")</script>';
	} else {
		echo '<script>alert("Data Gagal Di Hapus")</script>';
	}
}


function deletespp()
{
	global $koneksi;
	$id_tagihan = $_POST['id_tagihan'];
	$b_terakhir	=	$_POST['b_terakhir'];
	$bayar		= $_POST['nominal'];
	$sisa_bayar	=	$_POST['sisa_bayar'];
	$nominal = 	$_POST['nom'];


	$semula = floatval($sisa_bayar) + floatval($b_terakhir);
	$balik	= floatval($bayar) - floatval($b_terakhir);


	if ($semula == $nominal) {
		$hapus1 = mysqli_query($koneksi, "DELETE from bayar where id_tag='$id_tagihan'");
		$hapus2 = mysqli_query($koneksi, "UPDATE tagihan set bayar='$balik', sisa_bayar='$semula', status='Belum Terbayarkan', tanggal_bayar='' where id_tagihan='$id_tagihan'");
	} else if ($semula < $nominal) {
		$hapus2 = mysqli_query($koneksi, "UPDATE tagihan set bayar='$balik', sisa_bayar='$semula', status='Cicilan', tanggal_bayar='' where id_tagihan='$id_tagihan'");
	}
	if ($hapus1) {
		echo '<script>alert("Data Berhasil Di Hapus")</script>';
	} else {
		echo '<script>alert("Data Gagal Di Hapus")</script>';
	}
}


function jenis_bayar()
{
	global $koneksi;
	$nama_jenispem = $_POST['nama_jenispem'];
	$nominal = $_POST['nominal'];
	$simpan =  mysqli_query($koneksi, "INSERT INTO tbjenispem SET nama_jenispem='$nama_jenispem', nominal='$nominal'");
	if ($simpan) {
		echo '<script>alert("Data Berhasil Di Simpan")</script>';
	} else {
		echo '<script>alert("Data Gagal Di Simpan")</script>';
	}
}

function hapus_jenis_bayar()
{
	global $koneksi;
	$id_jenispem = $_POST['id_jenispem'];

	$hapus = mysqli_query($koneksi, "DELETE FROM tbjenispem WHERE id_jenispem='$id_jenispem'");
	if ($hapus) {
		echo '<script>alert("Data Berhasil Di Hapus")</script>';
	} else {
		echo '<script>alert("Data Gagal Di Hapus")</script>';
	}
}

function edit_jenis_bayar()
{
	global $koneksi;
	$id_jenispem = $_POST['id_jenispem'];
	$nama_jenispem = $_POST['nama_jenispem'];
	$nominal = $_POST['nominal'];

	$edit = mysqli_query($koneksi, "UPDATE tbjenispem SET nama_jenispem='$nama_jenispem', nominal='$nominal' where id_jenispem='$id_jenispem'");
	if ($edit) {
		echo '<script>alert("Data Berhasil Di Edit")</script>';
	} else {
		echo '<script>alert("Data Gagal Di Edit")</script>';
	}
}

function addtapel()
{
	global $koneksi;
	$tapel = $_POST['tapel'];
	$statustapel = $_POST['statustapel'];

	$simpan = mysqli_query($koneksi, "INSERT INTO tb_tahun_ajaran SET tapel='$tapel', statustapel='$statustapel'");
	if ($simpan) {
		echo '<script>alert("Data Berhasil Di Simpan")</script>';
	} else {
		echo '<script>alert("Data Gagal Di Simpan")</script>';
	}
}

function edit_tapel()
{
	global $koneksi;
	$id = $_POST['id_tapel'];
	$tapel = $_POST['tapel'];
	$statustapel = $_POST['statustapel'];


	$edit = mysqli_query($koneksi, "UPDATE tb_tahun_ajaran SET tapel='$tapel', statustapel='$statustapel' where id_tapel='$id'");
	if ($edit) {
		echo '<script>alert("Data Berhasil Di Edit")</script>';
	} else {
		echo '<script>alert("Data Gagal Di Edit")</script>';
	}
}


function rupiah($angka)
{
	$hasil = "Rp. " . number_format($angka, 2, ',', '.');
	return $hasil;
}


//ADMSEKOLAH
//GURU

function insert_guru()
{
	global $koneksi;
	$nama_guru	=	$_POST['nama_guru'];
	$TTL = $_POST['ttl'];
	$jabatan = $_POST['jabatan'];
	$email = $_POST['email'];
	$nohp = $_POST['nohp'];


	$ekstensi_diperbolehkan	= array('png', 'jpg');
	$nama = $_FILES['foto']['name'];
	$x = explode('.', $nama);
	$ekstensi = strtolower(end($x));
	$ukuran	= $_FILES['foto']['size'];
	$file_tmp = $_FILES['foto']['tmp_name'];
	$selectsiswa = mysqli_query($koneksi, "SELECT * FROM guru WHERE nama_guru='$nama_guru'");
	$cek = mysqli_num_rows($selectsiswa);

	if ($cek) {
		echo '<script>alert("NAma sudah ada")</script>';
	} else {
		if (in_array($ekstensi, $ekstensi_diperbolehkan) === true) {
			if ($ukuran < 1044070) {
				move_uploaded_file($file_tmp, 'images/' . $nama);

				$simpan = mysqli_query($koneksi, "INSERT INTO guru set  nama_guru='$nama_guru', TTL='$TTL', jabatan='$jabatan', nohp='$nohp', email='$email', foto='$nama'");
				if ($simpan) {
					echo
					'<script>alert("Data Berhasil Di Simpan")</script>';
				} else {
					echo
					'<script>alert("Data Gagal Di Simpan")</script>';
				}
			} else {
				'<script>alert("UKURAN FILE TERLALU BESAR")</script>';
			}
		} else {
			echo '<script>alert("EKSTENSI FILE YANG DI UPLOAD TIDAK DI PERBOLEHKAN")</script>';
		}
	}
}

function hapus_guru()
{
	global $koneksi;
	$idguru = $_POST['id_guru'];

	$hapus = mysqli_query($koneksi, "DELETE FROM guru WHERE id_guru='$idguru'");
	if ($hapus) {
		echo '<script>alert("Data Berhasil Di Hapus")</script>';
	} else {
		echo '<script>alert("Data Gagal Di Hapus")</script>';
	}
}

function edit_guru()
{
	global $koneksi;
	$id_guru	=	$_POST['id_guru'];
	$NIP	=	$_POST['NIP'];
	$nama_guru	=	$_POST['nama_guru'];
	$mapel		=	$_POST['nama_mapel'];
	$TTL = $_POST['ttl'];
	$jabatan = $_POST['jabatan'];
	$email = $_POST['email'];
	$nohp = $_POST['nohp'];

	$ubah = mysqli_query($koneksi, "UPDATE guru SET nama_guru='$nama_guru',mapel='$mapel', TTL='$TTL', jabatan='$jabatan', nohp='$nohp', email='$email' where id_guru='$id_guru'");
	if ($ubah) {
		echo '<script>alert("Data Berhasil Di Ubah")</script>';
	} else {
		echo '<script>alert("Data Gagal Di Ubah")</script>';
	}
}

function import_guru()
{
	global $koneksi;
	if (isset($_POST['import'])) {
		$fileName = $_FILES["file"]["tmp_name"];
		$file = fopen($fileName, "r");

		while (($row = fgetcsv($file, 10000, ";")) !== FALSE) {
			$sqlInsert = "INSERT INTO guru (id_guru, nama_guru, TTL, jabatan, nohp, email, foto) VALUES ('" . "','" . $row[0] . "', '" . $row[1] . "', '" . $row[2] . "','" . $row[3] . "','" . $row[4] . "','" . $row[5] . "')";

			$result = mysqli_query($koneksi, $sqlInsert);

			if (!empty($result)) {
				echo
				'<script>alert("CSV Data telah di import ke Database")</script>';
			} else {
				echo '<script>alert("Data Gagal di Import")</script>';
			}
		}
	}
}

function reset_guru()
{
	global $koneksi;

	$reset = mysqli_query($koneksi, "DELETE FROM sk");
	if ($reset) {
		echo '<script>alert("Data Berhasil Di Reset")</script>';
	} else {
		echo '<script>alert("Data Gagal Di Reset")</script>';
	}
}

function SK_guru()
{
	global $koneksi;
	$nosk = $_POST['nosk'];
	$id_guru = $_POST['id_guru'];
	$NIP = $_POST['NIP'];
	$nama_guru = $_POST['nama_guru'];

	$jabatan = $_POST['jabatan'];
	$tahunajaran = $_POST['tahunajaran'];
	$tanggal = $_POST['tanggal'];
	if (empty($tahunajaran)) {
		echo '<script>alert("Tidak Ada Tahun Ajaran yang Aktif")</script>';
	} else {

		foreach ($_POST['nama_mapel'] as $value) :

			$simpan = mysqli_query($koneksi, "INSERT INTO sk SET nosk='$nosk', id_guru='$id_guru', NIP='$NIP', nama_guru='$nama_guru', status_guru='$jabatan', tahunajaran='$tahunajaran', tanggal='$tanggal', mapel='$value'");

		endforeach;
	}
	if ($simpan) {
		echo '<script>alert("Data Berhasil Di Simpan")</script>';
	} else {
		echo '<script>alert("Data Gagal Di Simpan")</script>';
	}
}

//Pengumuman
function insert_pengumuman()
{
	global $koneksi;
	$nama = $_POST['nama_pengumuman'];
	$keterangan = $_POST['keterangan'];
	$tanggal = $_POST['tanggal'];
	$ekstensi_diperbolehkan	= array('png', 'jpg');
	$foto = $_FILES['isi']['name'];
	$x = explode('.', $foto);
	$ekstensi = strtolower(end($x));
	$ukuran	= $_FILES['isi']['size'];
	$file_tmp = $_FILES['isi']['tmp_name'];

	if (in_array($ekstensi, $ekstensi_diperbolehkan) === true) {
		if ($ukuran < 1044070) {
			move_uploaded_file($file_tmp, 'images/pengumuman/' . $foto);

			$simpan = mysqli_query($koneksi, "INSERT INTO pengumuman set nama_pengumuman='$nama', tanggal='$tanggal', keterangan='$keterangan', foto='$foto'");
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


function hapus_pengumuman()
{
	global $koneksi;
	$id_pengu = $_POST['id_pengumuman'];

	$hapus = mysqli_query($koneksi, "DELETE FROM pengumuman WHERE id_pengumuman='$id_pengu'");
	if ($hapus) {
		echo '<script>alert("Data Berhasil Di Hapus")</script>';
	} else {
		echo '<script>alert("Data Gagal Di Hapus")</script>';
	}
}

//MAPEL

function insert_mapel()
{
	global $koneksi;
	$mapel	=	$_POST['nama_mapel'];
	$kelas	=	$_POST['nama_kelas'];
	$kode 	= 	$_POST['kode_mapel'];
	$jurusan = $_POST['jurusan'];
	$selectsiswa = mysqli_query($koneksi, "SELECT * FROM mapel WHERE nama_mapel='$mapel'");
	$cek = mysqli_num_rows($selectsiswa);

	if ($cek) {
		echo '<script>alert("MAPEL sudah ada")</script>';
	} else {

		$simpan = mysqli_query($koneksi, "INSERT INTO mapel set kode_mapel='$kode', nama_mapel='$mapel', kelas='$kelas$jurusan'");
		if ($simpan) {
			echo '<script>alert("Data Berhasil Di Simpan")</script>';
		} else {
			echo '<script>alert("Data Gagal Di Simpan")</script>';
		}
	}
}

function import_mapel()
{
	global $koneksi;
	if (isset($_POST['import'])) {
		$fileName = $_FILES["file"]["tmp_name"];
		$file = fopen($fileName, "r");

		while (($row = fgetcsv($file, 10000, ";")) !== FALSE) {
			$sqlInsert = "INSERT INTO mapel (id_mapel, kode_mapel, nama_mapel, kelas) VALUES ('" . "','" . $row[0] . "', '" . $row[1] . "', '" . $row[2] . "')";

			$result = mysqli_query($koneksi, $sqlInsert);

			if (!empty($result)) {
				echo
				'<script>alert("CSV Data telah di import ke Database")</script>';
			} else {
				echo '<script>alert("Data Gagal di Import")</script>';
			}
		}
	}
}

function hapus_mapel()
{
	global $koneksi;
	$id_mapel = $_POST['id_mapel'];

	$hapus = mysqli_query($koneksi, "DELETE from mapel where id_mapel='$id_mapel'");
	if ($hapus) {
		echo '<script>alert("Data Berhasil Di Hapus")</script>';
	} else {
		echo '<script>alert("Data Gagal Di Hapus")</script>';
	}
}

function edit_mapel()
{
	global $koneksi;
	$id_mapel = $_POST['id_mapel'];
	$mapel	=	$_POST['nama_mapel'];
	$kelas	=	$_POST['nama_kelas'];
	$kode 	= 	$_POST['kode_mapel'];
	$jurusan = $_POST['jurusan'];

	$ubah = mysqli_query($koneksi, "UPDATE mapel SET  kode_mapel='$kode', nama_mapel='$mapel', kelas='$kelas$jurusan' where id_mapel='$id_mapel'");
	if ($ubah) {
		echo '<script>alert("Data Berhasil Di Ubah")</script>';
	} else {
		echo '<script>alert("Data Gagal Di Ubah")</script>';
	}
}

function reset_mapel()
{
	global $koneksi;
	$kelas = $_POST['kelas'];

	$reset = mysqli_query($koneksi, "DELETE from mapel where kelas='$kelas'");
	if ($reset) {
		echo '<script>alert("Data Berhasil Di Reset")</script>';
	} else {
		echo '<script>alert("Data Gagal Di Reset")</script>';
	}
}

//ekskul

function insert_ekskul()
{
	global $koneksi;
	$nama_ekskul	=	$_POST['nama_ekskul'];
	$nama_pembina	=	$_POST['nama_pembina'];
	$selectsiswa = mysqli_query($koneksi, "SELECT * FROM ekskul WHERE nama_ekskul='$nama_ekskul'");
	$cek = mysqli_num_rows($selectsiswa);

	if ($cek) {
		echo '<script>alert("Ekskul sudah ada")</script>';
	} else {

		$simpan = mysqli_query($koneksi, "INSERT INTO ekskul set nama_ekskul='$nama_ekskul', nama_pembina='$nama_pembina'");
		if ($simpan) {
			echo '<script>alert("Data Berhasil Di Simpan")</script>';
		} else {
			echo '<script>alert("Data Gagal Di Simpan")</script>';
		}
	}
}

function hapus_ekskul()
{
	global $koneksi;
	$id_ekskul = $_POST['id_ekskul'];

	$hapus = mysqli_query($koneksi, "DELETE from ekskul where id_ekskul='$id_ekskul'");
	if ($hapus) {
		echo '<script>alert("Data Berhasil Di Hapus")</script>';
	} else {
		echo '<script>alert("Data Gagal Di Hapus")</script>';
	}
}

function edit_ekskul()
{
	global $koneksi;
	$id_ekskul 		=	$_POST['id_ekskul'];
	$nama_ekskul	=	$_POST['nama_ekskul'];
	$nama_pembina	=	$_POST['nama_pembina'];

	$ubah = mysqli_query($koneksi, "UPDATE ekskul SET nama_ekskul='$nama_ekskul', nama_pembina='$nama_pembina' where id_ekskul='$id_ekskul'");
	if ($ubah) {
		echo '<script>alert("Data Berhasil Di Ubah")</script>';
	} else {
		echo '<script>alert("Data Gagal Di Ubah")</script>';
	}
}

//Waktu Jam Pelajara

function insert_jampelajaran()
{
	global $koneksi;
	$hari	=	$_POST['nama_hari'];
	$waktuawal	=	$_POST['waktu_awal'];
	$waktuakhir	=	$_POST['waktu_akhir'];

	$simpan = mysqli_query($koneksi, "INSERT INTO jam set hari='$hari', waktu_mulai='$waktuawal', waktu_akhir='$waktuakhir'");
	if ($simpan) {
		echo '<script>alert("Data Berhasil Di Simpan")</script>';
	} else {
		echo '<script>alert("Data Gagal Di Simpan")</script>';
	}
}

function edit_jampelajaran()
{
	global $koneksi;
	$id_jam	= $_POST['id_jam'];
	$hari	=	$_POST['nama_hari'];
	$waktuawal	=	$_POST['waktu_awal'];
	$waktuakhir	=	$_POST['waktu_akhir'];
	$ubah = mysqli_query($koneksi, "UPDATE jam SET nama_hari='$hari', hari='$hari', waktu_mulai='$waktuawal', waktu_akhir='$waktuakhir' where id_jam='$id_jam'");
	if ($ubah) {
		echo '<script>alert("Data Berhasil Di Ubah")</script>';
	} else {
		echo '<script>alert("Data Gagal Di Ubah")</script>';
	}
}

function hapus_jampelajaran()
{
	global $koneksi;
	$id_jam	= $_POST['id_jam'];
	$hapus = mysqli_query($koneksi, "DELETE from jam where id_jam='$id_jam'");
	if ($hapus) {
		echo '<script>alert("Data Berhasil Di Hapus")</script>';
	} else {
		echo '<script>alert("Data Gagal Di Hapus")</script>';
	}
}

//jadwal pelajaran
function insert_jadwal()
{
	global $koneksi;
	$harisen = $_POST['harisen'];
	$harisel = $_POST['harisel'];
	$harirab = $_POST['harirab'];
	$harika = $_POST['harika'];
	$harij = $_POST['harij'];
	$haris = $_POST['haris'];


	$waktu = $_POST['waktu'];
	$waktuj = $_POST['waktuj'];
	$waktus = $_POST['waktus'];

	$mapelsen = $_POST['nama_mapelsen'];
	$mapelsel = $_POST['nama_mapelsel'];
	$mapelrab = $_POST['nama_mapelrab'];
	$mapelka = $_POST['nama_mapelka'];
	$mapelj = $_POST['nama_mapelj'];
	$mapels = $_POST['nama_mapels'];

	$kelas = $_POST['kelas'];

	$jum = count($waktu);
	for ($a = 0; $a < $jum; $a++) {
		$simpan = mysqli_query($koneksi, "INSERT INTO jadwalmapel set hari='$harisen', waktu='$waktu[$a]', kd_mapel='$mapelsen[$a]', kelas='$kelas'");
	}

	$jum = count($waktu);
	for ($a = 0; $a < $jum; $a++) {
		$simpan = mysqli_query($koneksi, "INSERT INTO jadwalmapel set hari='$harisel', waktu='$waktu[$a]', kd_mapel='$mapelsel[$a]', kelas='$kelas'");
	}

	$jum = count($waktu);
	for ($a = 0; $a < $jum; $a++) {
		$simpan = mysqli_query($koneksi, "INSERT INTO jadwalmapel set hari='$harirab', waktu='$waktu[$a]', kd_mapel='$mapelrab[$a]', kelas='$kelas'");
	}

	$jum = count($waktu);
	for ($a = 0; $a < $jum; $a++) {
		$simpan = mysqli_query($koneksi, "INSERT INTO jadwalmapel set hari='$harika', waktu='$waktu[$a]', kd_mapel='$mapelka[$a]', kelas='$kelas'");
	}

	$jum = count($waktuj);
	for ($a = 0; $a < $jum; $a++) {
		$simpan = mysqli_query($koneksi, "INSERT INTO jadwalmapel set hari='$harij', waktu='$waktuj[$a]', kd_mapel='$mapelj[$a]', kelas='$kelas'");
	}

	$jum = count($waktus);
	for ($a = 0; $a < $jum; $a++) {
		$simpan2 = mysqli_query($koneksi, "INSERT INTO jadwalmapel set hari='$haris', waktu='$waktus[$a]', kd_mapel='$mapels[$a]', kelas='$kelas'");
	}

	if ($simpan2) {
		echo '<script>alert("Data Berhasil Di Simpan")</script>';
	} else {
		echo '<script>alert("Data Gagal Di Simpan")</script>';
	}
}

function hapus_jadwalmapel()
{
	global $koneksi;
	$id_jadwalmapel =  $_POST['id_jadwalmapel'];
	$hapus = mysqli_query($koneksi, "DELETE from jadwalmapel where id_jadwalmapel='$id_jadwalmapel'");
	if ($hapus) {
		echo '<script>alert("Data Berhasil Di Hapus")</script>';
	} else {
		echo '<script>alert("Data Gagal Di Hapus")</script>';
	}
}

function edit_jadwalmapel()
{
	global $koneksi;
	$id_jadwalmapel =  $_POST['id_jadwalmapel'];
	$hari = $_POST['nama_hari'];
	$waktu = $_POST['waktu'];
	$kelas = $_POST['kelas'];
	$mapel = $_POST['kode_mapel'];
	$ubah = mysqli_query($koneksi, "UPDATE jadwalmapel SET  hari='$hari', waktu='$waktu', kd_mapel='$mapel', kelas='$kelas' where id_jadwalmapel='$id_jadwalmapel'");
	if ($ubah) {
		echo '<script>alert("Data Berhasil Di Ubah")</script>';
	} else {
		echo '<script>alert("Data Gagal Di Ubah")</script>';
	}
}

function import_jadwalmapel()
{
	global $koneksi;
	if (isset($_POST['import'])) {
		$fileName = $_FILES["file"]["tmp_name"];
		$file = fopen($fileName, "r");

		while (($row = fgetcsv($file, 10000, ";")) !== FALSE) {
			$sqlInsert = "INSERT INTO jadwalmapel (id_jadwalmapel, hari, waktu, kd_mapel, kelas) VALUES ('" . "','" . $row[0] . "', '" . $row[1] . "', '" . $row[2] . "','" . $row[3] . "')";

			$result = mysqli_query($koneksi, $sqlInsert);

			if (!empty($result)) {
				echo
				'<script>alert("CSV Data telah di import ke Database")</script>';
			} else {
				echo '<script>alert("Data Gagal di Import")</script>';
			}
		}
	}
}


function reset_jadwalmapel()
{
	global $koneksi;

	$reset = mysqli_query($koneksi, "DELETE from jadwalmapel");
	if ($reset) {
		echo '<script>alert("Data Berhasil Di Reset")</script>';
	} else {
		echo '<script>alert("Data Gagal Di Reset")</script>';
	}
}

//jadwal ekskul

function insert_jadwalekskul()
{
	global $koneksi;
	$hari	=	$_POST['hari'];
	$ekskul	=	$_POST['nama_ekskul'];
	$waktu	=	$_POST['waktu'];

	$simpan = mysqli_query($koneksi, "INSERT INTO jadwalekskul set hari='$hari', nama_ekskul='$ekskul', waktu='$waktu'");
	if ($simpan) {
		echo '<script>alert("Data Berhasil Di Simpan")</script>';
	} else {
		echo '<script>alert("Data Gagal Di Simpan")</script>';
	}
}

function hapus_jadwalekskul()
{
	global $koneksi;
	$id_jadwalekskul	= $_POST['id_jadwalekskul'];
	$hapus = mysqli_query($koneksi, "DELETE from jadwalekskul where id_jadwalekskul='$id_jadwalekskul'");
	if ($hapus) {
		echo '<script>alert("Data Berhasil Di Hapus")</script>';
	} else {
		echo '<script>alert("Data Gagal Di Hapus")</script>';
	}
}

function edit_jadwalekskul()
{
	global $koneksi;
	$id_jadwalekskul	= $_POST['id_jadwalekskul'];
	$hari	=	$_POST['hari'];
	$ekskul	=	$_POST['nama_ekskul'];
	$waktu	=	$_POST['waktu'];
	$ubah = mysqli_query($koneksi, "UPDATE jadwalekskul SET hari='$hari', nama_ekskul='$ekskul', waktu='$waktu' where id_jadwalekskul='$id_jadwalekskul'");
	if ($ubah) {
		echo '<script>alert("Data Berhasil Di Ubah")</script>';
	} else {
		echo '<script>alert("Data Gagal Di Ubah")</script>';
	}
}
//petugas loket

function stat_siswa()
{
	global $koneksi;
	$select = mysqli_query($koneksi, "SELECT count(id_siswa) AS jsiswa FROM siswa");
	$row = mysqli_fetch_array($select);
	echo $row['jsiswa'];
}

function stat_kelas()
{
	global $koneksi;
	$select = mysqli_query($koneksi, "SELECT count(id_kelas) AS jkelas FROM kelas");
	$row = mysqli_fetch_array($select);
	echo $row['jkelas'];
}

//SISWA
//KRITIK
function insert_kritik()
{
	global $koneksi;
	$kritik = nl2br($_POST['kritik']);
	$tahun	=	$_POST['tahun'];


	$simpan = mysqli_query($koneksi, "INSERT INTO kritik SET kritik='$kritik', tahun='$tahun'");
	if ($simpan) {
		echo '<script>alert("Data Berhasil Di Simpan")</script>';
	} else {
		echo '<script>alert("Data Gagal Di Simpan")</script>';
	}
}

function hapus_kritik()
{
	global $koneksi;
	$id = $_POST['id_kritik'];

	$hapus = mysqli_query($koneksi, "DELETE FROM kritik where id_kritik='$id'");
	if ($hapus) {
		echo '<script>alert("Data Berhasil Di Hapus")</script>';
	} else {
		echo '<script>alert("Data Gagal Di Hapus")</script>';
	}
}

//Regis Ekskul
function insert_regis()
{
	global $koneksi;
	$siswa = $_POST['nama_siswa'];
	$ekskul = $_POST['ekskul'];

	$simpan = mysqli_query($koneksi, "INSERT INTO regisekskul SET nama_siswa='$siswa', nama_ekskul='$ekskul'");
	if ($simpan) {
		echo '<script>alert("Data Berhasil Di Simpan")</script>';
	} else {
		echo '<script>alert("Data Gagal Di Simpan")</script>';
	}
}

function hapus_regis()
{
	global $koneksi;
	$id = $_POST['id_regisekskul'];

	$hapus = mysqli_query($koneksi, "DELETE FROM regisekskul where id_regisekskul='$id'");
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


//LOKER
function insert_loker()
{
	global $koneksi;
	$ekstensi_diperbolehkan	= array('png', 'jpg');
	$nama = $_FILES['foto']['name'];
	$x = explode('.', $nama);
	$ekstensi = strtolower(end($x));
	$ukuran	= $_FILES['foto']['size'];
	$file_tmp = $_FILES['foto']['tmp_name'];
	if (in_array($ekstensi, $ekstensi_diperbolehkan) === true) {
		if ($ukuran < 1044070) {
			move_uploaded_file($file_tmp, 'images/loker/' . $nama);

			$simpan = mysqli_query($koneksi, "INSERT INTO loker set foto='$nama'");
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

function hapus_loker()
{
	global $koneksi;
	$id_loker = $_POST['id_loker'];

	$hapus = mysqli_query($koneksi, "DELETE FROM loker where id_loker='$id_loker'");
	if ($hapus) {
		echo
		'<script>alert("Data Berhasil Di Hapus")</script>';
	} else {
		echo
		'<script>alert("Data Gagal Di Hapus")</script>';
	}
}

//BEASISWA

function insert_lobeasiswa()
{
	global $koneksi;
	$nama = $_POST['nama_beasiswa'];
	$tanggal = $_POST['tanggal'];
	$syarat = $_POST['syarat'];
	$status = $_POST['status'];

	$simpan = mysqli_query($koneksi, "INSERT INTO lobeasiswa set nama_beasiswa='$nama', tanggal='$tanggal', syarat='$syarat', status_beasiswa='$status'");
	if ($simpan) {
		echo
		'<script>alert("Data Berhasil Di Simpan")</script>';
	} else {
		echo
		'<script>alert("Data Gagal Di Simpan")</script>';
	}
}

function hapus_lobeasiswa()
{
	global $koneksi;
	$id_lobeasiswa = $_POST['id_lobeasiswa'];
	$nama = $_POST['nama_beasiswa'];
	$tanggal = $_POST['tanggal'];
	$status = $_POST['status'];

	$simpan = mysqli_query($koneksi, "UPDATE lobeasiswa set nama_beasiswa='$nama', tanggal='$tanggal', status_beasiswa='$status' where id_lobeasiswa='$id_lobeasiswa'");
	if ($simpan) {
		echo
		'<script>alert("Data Berhasil Di Simpan")</script>';
	} else {
		echo
		'<script>alert("Data Gagal Di Simpan")</script>';
	}
}

function insert_beasiswa()
{
	global $koneksi;
	$ekstensi_diperbolehkan	= array('png', 'jpg');
	$nama = $_FILES['foto']['name'];
	$x = explode('.', $nama);
	$ekstensi = strtolower(end($x));
	$ukuran	= $_FILES['foto']['size'];
	$file_tmp = $_FILES['foto']['tmp_name'];
	if (in_array($ekstensi, $ekstensi_diperbolehkan) === true) {
		if ($ukuran < 1044070) {
			move_uploaded_file($file_tmp, 'images/beasiswa/' . $nama);

			$simpan = mysqli_query($koneksi, "INSERT INTO beasiswa set foto='$nama'");
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

function hapus_beasiswa()
{
	global $koneksi;
	$id_beasiswa = $_POST['id_beasiswa'];

	$hapus = mysqli_query($koneksi, "DELETE FROM beasiswa where id_beasiswa='$id_beasiswa'");
	if ($hapus) {
		echo
		'<script>alert("Data Berhasil Di Hapus")</script>';
	} else {
		echo
		'<script>alert("Data Gagal Di Hapus")</script>';
	}
}

function insert_verifikasibeasiswa()
{
	global $koneksi;
	$id_lobeasiswa = $_POST['id_lobeasiswa'];
	$nama_beasiswa = $_POST['nama_beasiswa'];
	$NIS			= $_POST['NIS'];
	$nama_siswa		= $_POST['nama_siswa'];
	$kelas			= $_POST['kelas'];
	$tanggal 		= $_POST['tanggal'];
	$ekstensi_diperbolehkan	= array('pdf');
	$nama = $_FILES['file']['name'];
	$x = explode('.', $nama);
	$ekstensi = strtolower(end($x));
	$ukuran	= $_FILES['file']['size'];
	$file_tmp = $_FILES['file']['tmp_name'];
	if (in_array($ekstensi, $ekstensi_diperbolehkan) === true) {
		if ($ukuran < 10440700) {
			move_uploaded_file($file_tmp, '../dokumen/beasiswa/' . $nama);

			$daftar = mysqli_query($koneksi, "INSERT INTO verifbeasiswa set id_lobeasiswa='$id_lobeasiswa', nama_beasiswa='$nama_beasiswa', NIS='$NIS', nama_siswa='$nama_siswa', kelas='$kelas', file='$nama', status_verif='Belum Terverifikasi', status_daftar='Menunggu Konfirmasi', tanggal='$tanggal'");

			if ($daftar) {
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

function insert_databeasiswa()
{
	global $koneksi;
	$id_lobeasiswa = $_POST['id_lobeasiswa'];
	$nama_beasiswa = $_POST['nama_beasiswa'];
	$NIS			= $_POST['NIS'];
	$nama_siswa		= $_POST['nama_siswa'];
	$kelas			= $_POST['kelas'];
	$tanggal 		= $_POST['tanggal'];
	$status_verif	= $_POST['status_verif'];
	$status_daftar	=	$_POST['status_daftar'];

	if (empty($tanggal)) {
		echo
		'<script>alert("Tidak Ada Tahun Ajaran yang aktif")</script>';
	} else {
		if ($status_daftar == 'Diterima') {

			$simpan = mysqli_query($koneksi, "INSERT INTO databeasiswa set id_lobeasiswa='$id_lobeasiswa', nama_beasiswa='$nama_beasiswa', NIS='$NIS', nama_siswa='$nama_siswa', kelas='$kelas', tanggal='$tanggal', status_beasiswa='Aktif'");
			$update = mysqli_query($koneksi, "UPDATE verifbeasiswa set status_verif='$status_verif', status_daftar='$status_daftar' where NIS='$NIS'");
		} else {
			$update = mysqli_query($koneksi, "UPDATE verifbeasiswa set status_verif='$status_verif', status_daftar='$status_daftar' where NIS='$NIS'");
		}
	}

	if ($update) {
		echo
		'<script>alert("Data Berhasil Di Simpan")</script>';
	} else {
		echo
		'<script>alert("Data Gagal Di Simpan")</script>';
	}
}

function hapus_verifbeasiswa()
{
	global $koneksi;
	$id_verifbeasiswa = $_POST['id_verifbeasiswa'];

	$hapus = mysqli_query($koneksi, "DELETE FROM verifbeasiswa where id_verifbeasiswa='$id_verifbeasiswa'");
}

//PRESTASI DETAIL
function simpan_prestasidetail()
{
	global $koneksi;
	$NIS = $_POST['NIS'];
	$namasiswa = $_POST['nama_siswa'];
	$tahun = $_POST['tahunajaran'];
	$kategori = $_POST['kategori'];
	$nama_prestasi = $_POST['nama_prestasi'];
	$keterangan = $_POST['keterangan'];
	$point = $_POST['point'];

	if (empty($tahun)) {
		echo
		'<script>alert("Tidak Ada Tahun Ajaran yang Aktif")</script>';
	} else {
		$simpan = mysqli_query($koneksi, "INSERT INTO prestasi set NIS='$NIS', nama_siswa='$namasiswa', tahunajaran='$tahun', kategori='$kategori', nama_prestasi='$nama_prestasi', keterangan='$keterangan', point='$point'");
	}
	if ($simpan) {
		echo
		'<script>alert("Data Berhasil Di Simpan")</script>';
	} else {
		echo
		'<script>alert("Data Gagal Di Simnpan")</script>';
	}
}

function hapus_prestasidetail()
{
	global $koneksi;
	$id_prestasi = $_POST['id_prestasi'];

	$hapus = mysqli_query($koneksi, "DELETE FROM prestasi where id_prestasi='$id_prestasi'");
	if ($hapus) {
		echo
		'<script>alert("Data Berhasil Di Hapus")</script>';
	} else {
		echo
		'<script>alert("Data Gagal Di Hapus")</script>';
	}
}

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

function verif_jurnal()
{
	global $koneksi;
	$id_veriflapguru = $_POST['id_veriflapguru'];
	$kategori_kegiatan = $_POST['kategori_kegiatan'];
	$tahunajaran = $_POST['tahunajaran'];
	$nama_pengajar = $_POST['nama_pengajar'];
	$file_lap = $_POST['file_lap'];
	$status_verif = $_POST['status_verif'];
	$point_lap = $_POST['point_lap'];
	$catatan = $_POST['catatan'];

	if ($status_verif == 'Diterima') {
		$update = mysqli_query($koneksi, "UPDATE veriflapguru set status_verif='$status_verif' where id_veriflapguru='$id_veriflapguru'");
		$simpan = mysqli_query($koneksi, "INSERT INTO laporanguru set id_veriflapguru='$id_veriflapguru', kategori_kegiatan='$kategori_kegiatan', tahunajaran='$tahunajaran', nama_pengajar='$nama_pengajar', file_lap='$file_lap', point_lap='$point_lap'");
		$prestasi = mysqli_query($koneksi, "INSERT INTO prestasiguru SET nama_guru='$nama_pengajar', tahunajaran='$tahunajaran', total='$point_lap'");
		if ($update) {
			echo '<script>alert("Data Berhasil Di Simpan")</script>';
		} else {
			echo '<script>alert("Data Gagal Di Simpan")</script>';
		}
	} else {
		$update = mysqli_query($koneksi, "UPDATE veriflapguru set status_verif='$status_verif', catatan='$catatan' where id_veriflapguru='$id_veriflapguru'");
		if ($update) {
			echo '<script>alert("Data Berhasil Di Simpan")</script>';
		} else {
			echo '<script>alert("Data Gagal Di Simpan")</script>';
		}
	}
}
