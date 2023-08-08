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
	case 'laporan':
		include 'modul/laporan/index.php';
		break;
	case 'laporantotal':
		include 'modul/laporantotal/index.php';
		break;
	case 'input':
		include 'modul/kegiatan/index.php';
		break;
	case 'jurnal':
		include 'modul/jurnal/index.php';
		break;
	case 'printt':
		include '../fungsi/print/print_laporan.php';
		break;
	case 'print':
		include '../fungsi/print/print_laporantunggal.php';
		break;
	case 'jurnall':
		include '../fungsi/print/print_jurnal.php';
		break;
	case 'cetakkritik':
		include '../fungsi/print/print_kritik.php';
		break;
	case 'cetakpeminat':
		include '../fungsi/print/print_peminat.php';
		break;
	case 'regisekskul':
		include 'modul/daftarekskul/index.php';
		break;
	case 'kritik':
		include 'modul/kritik/index.php';
		break;
	case 'tagihan':
		include 'modul/laporan_biaya/index.php';
		break;
	case 'cicil':
		include 'modul/laporan_biaya/indexcicil.php';
		break;
	case 'cicilreg':
		include 'modul/laporan_biaya/indexcicilreg.php';
		break;
	case 'daftar_tag':
		include 'modul/daftar/index.php';
		break;
	case 'printit':
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
	case 'print_tag':
		include '../fungsi/print/print-tagpembayaran.php';
		break;
	case 'akun':
		include 'modul/akun/index.php';
		break;
		case 'daftarsiswabaru':
			include 'modul/siswabaru/index.php';
			break;
		case 'cetaksiswabaru':
		include '../fungsi/print/cetaksiswabaru.php';
		break;
		case 'daftaralumni':
			include 'modul/alumni/index.php';
			break;
			case 'cetakalumni':
				include '../fungsi/print/cetakalumni.php';
				break;
				case 'daftarskguru':
					include 'modul/skguru/index.php';
					break;
		
						case 'laporanguru':
							include 'modul/laporan_guru/index.php';
							break;
							case 'cetakanggotaekskul':
								include '../fungsi/print/print-anggotaekskul.php';
								break;
								case 'detailsk':
									include '../fungsi/print/print-skguru.php';
									break;
									case 'grafikekskul':
										include '../fungsi/print/print-grafik.php';
										break;


				
}
