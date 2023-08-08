<?php

include_once '../fungsi_guru/sesi.php';
$modul  = (isset($_GET['s'])) ? $_GET['s'] : "awal";
$nama_app = " | APLIKASI LAYANAN INFORMASI AKADEMIK";
switch ($modul) {
	case 'akun':
	default:
		$judul = "Profil $nama_app";
		include 'akun.php';
		break;
}
