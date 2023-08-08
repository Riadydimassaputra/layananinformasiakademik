<?php

include_once '../fungsi/sesi.php';
$modul  = (isset($_GET['s'])) ? $_GET['s'] : "awal";
$nama_app = " | BIAYA PENDIDIKAN SMK GARUDA MAHADHIKA";
switch ($modul) {
    case 'awal':
    default:
        $judul = "Buat Registrasi/BPP $nama_app";
        include 'page.php';
        break;
    case 'akun':
        $judul = "Profil $nama_app";
        include 'akun.php';
        break;
}
