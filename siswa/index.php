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
	case 'mapel':
		include 'modul/mapel/index.php';
		break;
	case 'ekskul':
		include 'modul/ekskul/index.php';
		break;
	case 'guru':
		include 'modul/guru/index.php';
		break;
	case 'jadwalmapel':
		include 'modul/jadwalmapel/index.php';
		break;
	case 'jadwalekskul':
		include 'modul/jadwalekskul/index.php';
		break;
	case 'regisekskul':
		include 'modul/daftarekskul/index.php';
		break;
	case 'kritik':
		include 'modul/kritik/index.php';
		break;
	case 'list':
		include 'modul/tagihan/index.php';
		break;
	case 'verif':
		include 'modul/verifikasi/index.php';
		break;
	case 'histori':
		include '../fungsi/print/print-historipembayaran.php';
		break;
	case 'print':
		include '../fungsi/print/print-transaksisiswa.php';
		break;

	case 'berita':
		include 'modul/berita/index.php';
		break;
	case 'akun':
		include 'modul/akun/index.php';
		break;
	case 'prestasidetail':
		include 'modul/prestasidetail/index.php';
		break;

	case 'infobeasiswa':
		include 'modul/infobeasiswa/index.php';
		break;
	case 'daftarbeasiswa':
		include 'modul/daftarbeasiswa/index.php';
		break;
	case 'siswabeasiswa':
		include 'modul/siswabeasiswa/index.php';
		break;
	case 'detailsk':
		include '../fungsi/print/detailsk.php';
		break;
	case 'cetakbuktibeasiswa':
		include '../fungsi/print/buktibeasiswa.php';
		break;
}
