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
	case 'pengumuman':
		include 'modul/pengumuman/index.php';
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

	case 'printjadwalmapel':
		include '../fungsi/print/printmapel.php';
		break;

	case 'printjadwalekskul':
		include '../fungsi/print/printekskul.php';
		break;
	case 'addjadwal':
		include 'modul/addjadwal/index.php';
		break;
	case 'cetak';
		include '../fungsi/print/jadwalmapel-cetak.php';
	case 'loker':
		include 'modul/loker/index.php';
		break;
	case 'beasiswa':
		include 'modul/beasiswa/index.php';
		break;

	case 'prestasisiswa':
		include 'modul/prestasisiswa/index.php';
		break;
	case 'prestasidetail':
		include 'modul/prestasidetail/index.php';
		break;
	case 'laporanprestasisiswa':
		include '../fungsi/print/laporanprestasisiswa.php';
		break;

	case 'cetakdatabeasiswa':
		include '../fungsi/print/laporandatabeasiswa.php';
		break;

	case 'detailekskul':
		include 'modul/detailekskul/index.php';
		break;
	case 'daftarbeasiswa':
		include 'modul/daftarbeasiswa/index.php';
		break;
	case 'verifbeasiswa':
		include 'modul/verifbeasiswa/index.php';
		break;
	case 'siswabeasiswa':
		include 'modul/siswabeasiswa/index.php';
		break;
	case 'detailsk':
		include '../fungsi/print/print-skguru.php';
		break;
	case 'prestasiverifguru':
		include 'modul/jurnal/index.php';
		break;
	case 'laporanguru':
		include 'modul/laporan_guru/index.php';
		break;
}
