<?php
$servername = "localhost";
$username   =  "root";
$password   =  "";
$dbname     = "layanan";

$koneksi = mysqli_connect($servername, $username, $password, $dbname);
if (!$koneksi) {
    die("Gagal Koneksi: " . mysqli_connect_error());
}

function gambar($img, $size)
{
    echo '<img src="//localhost:8080/AplikasiLayananInformasiAkademik/assets/images/' . $img . '" width="' . $size . '">';
}

function gambar2($img, $size)
{
    echo '<img src="//localhost:8080/AplikasiLayananInformasiAkademik/admsek/images/' . $img . '" width="' . $size . '">';
}

function url()
{
    return $url = "//localhost:8080/AplikasiLayananInformasiAkademik/assets/";
}
