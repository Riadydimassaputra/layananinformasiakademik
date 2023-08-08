<?php

include_once '../fungsi/sesi.php';
$modul  = (isset($_GET['m'])) ? $_GET['m'] : "awal";
$nama_app = " | LAYANAN INFORMASI SMK GARUDA MAHADHIKA";
switch ($modul) {
	case 'awal':
	default:
		$judul = "LAPORAN Tagihan $nama_app";
		include 'tagihan.php';
		break;
	case 'print':
		include 'print-tagihan.php';
		break;
}
