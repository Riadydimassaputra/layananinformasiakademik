<?php
session_start();
include_once '../fungsi_guru/sesi.php';
$modul  = (isset($_GET['m'])) ? $_GET['m'] : "awal";
$nama_app = " | LAYANAN INFORMASI AKADEMIK";
switch ($modul) {
	case 'awal':
	default:
		$judul = "Dashboard $nama_app";
		include 'awal.php';
		break;
	case 'input':
		include 'modul/kegiatan/index.php';
		break;

	case 'laporan':
		include 'modul/laporan/index.php';
		break;
	case 'jurnal':
		include 'modul/jurnal/index.php';
		break;
	case 'akun':
		include 'modul/akun/index.php';
		break;

	case 'cetakjadwalguru':
		include '../fungsi/print/jadwalguru.php';
		break;
	case 'laporanguru':
		include 'modul/laporan_guru/index.php';
		break;
}
