<?php

include_once '../fungsi/sesi.php';
$modul  = (isset($_GET['m'])) ? $_GET['m'] : "awal";
$nama_app = " | LAYANAN INFORMASI SMK GARUDA MAHADHIKA";
switch ($modul) {
	case 'awal':
	default:
		$judul = "Data Siswa $nama_app";
		include 'page.php';
		break;
	case 'akun':
		$judul = "Profil $nama_app";
		include 'akun.php';
		break;
}
