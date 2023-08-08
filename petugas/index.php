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
	case 'admin':
		include 'modul/admin/index.php';
		break;
	case 'siswa':
		include 'modul/siswa/index.php';
		break;
	case 'prodi':
		include 'modul/prodi/index.php';
		break;
	case 'kelas':
		include 'modul/kelas/index.php';
		break;
	case 'tapel':
		include 'modul/tapel/index.php';
		break;
	case 'jenis_bayar':
		include 'modul/jenis_bayar/index.php';
		break;
	case 'verif':
		include 'modul/verifikasi/index.php';
		break;
	case 'bayar':
		include 'modul/transaksi/index.php';
		break;
	case 'tagihan':
		include 'modul/laporan/index.php';
		break;
	case 'cicil':
		include 'modul/laporan/indexcicil.php';
		break;
	case 'cicilreg':
		include 'modul/laporan/indexcicilreg.php';
		break;
	case 'print':
		include '../fungsi/print/print-transaksi.php';
		break;
	case 'printt':
		include '../fungsi/print/print-tagihan.php';
		break;
	case 'pprint':
		include '../fungsi/print/print-registrasi.php';
		break;
	case 'printl':
		include '../fungsi/print/print-cicilspp.php';
		break;
	case 'priint':
		include '../fungsi/print/print-cicilreg.php';
		break;
	case 'list':
		include 'modul/tagihan/index.php';
		break;

	case 'histori':
		include '../fungsi/print/print-historipembayaran.php';
		break;

	case 'daftar_tag':
		include 'modul/daftar/index.php';
		break;
	case 'print_tag':
		include '../fungsi/print/print-tagpembayaran.php';
		break;
		case 'peringatan':
			include '../fungsi/print/print-peringatan.php';
			break;
			case 'perjanjian':
				include '../fungsi/print/print-perjanjian.php';
				break;
}
