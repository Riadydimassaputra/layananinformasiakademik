<?php
session_start();
include_once '../fungsi/sesi.php';
$modul  = (isset($_GET['m'])) ? $_GET['m'] : "awal";
$nama_app = " | LAYANAN INFORMASI SMK GARUDA MAHADHIKA";
switch ($modul) {
	case 'awal':
	default:
		$judul = "Dashboard $nama_app";
		include 'awal.php';
		break;
	case 'list':
		include 'modul/tagihan/index.php';
		break;
	case 'print':
		include '../fungsi/print/print-transaksisiswa.php';
		break;
	case 'berita':
		include 'modul/berita/index.php';
		break;
		case 'loker':
			include 'modul/loker/index.php';
			break;
			case 'beasiswa':
				include 'modul/beasiswa/index.php';
				break;
				case 'akun':
					include 'modul/akun/index.php';
					break;
}
