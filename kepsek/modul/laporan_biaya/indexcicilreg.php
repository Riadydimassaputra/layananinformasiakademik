<?php

include_once '../fungsi/sesi.php';
$modul  = (isset($_GET['m'])) ? $_GET['m'] : "awal";
$nama_app = " | LAYANAN INFORMASI SMK GARUDA MAHADHIKA";
switch ($modul) {
	case 'awal':
	default:
		$judul = "LAPORAN CICILAN REGISTER $nama_app";
		include 'cicilreg.php';
		break;
	case 'print':
		include 'print-tagihan.php';
		break;
}
