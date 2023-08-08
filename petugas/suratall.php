<?php
require '../config/config.php';
global $koneksi;

$batasbayar = $_POST['batas_bayar'];

$document = file_get_contents("surat_pemberitahuan.rtf");

$waktu = date('d-m-Y');
$bulanIndo = [
    '01' => 'Januari',
    '02' => 'Februari',
    '03' => 'Maret',
    '04' => 'April',
    '05' => 'Mei',
    '06' => 'Juni',
    '07' => 'Juli',
    '08' => 'Agustus',
    '09' => 'September',
    '10' => 'Oktober',
    '11' => 'November',
    '12' => 'Desember',
];

$tgl     = $bulanIndo[date('m', strtotime($waktu))] . "  " . date('Y', strtotime($waktu));
$nomor = '421.5';
$nomor2 = 'SP/SMKGAMA/IX/';

$siswa = mysqli_query(
    $koneksi,
    "SELECT * from tagihan WHERE status='Belum Terbayarkan' AND pembayaran LIKE '%" . $tgl . "%'"
);



$result = array();
while ($data = mysqli_fetch_array($siswa)) {
    $result[] = $data; //result dijadikan array 
}
foreach ($siswa as $pro) :
    for ($i = 0; $i < 6; $i++) {

        // isi dokumen dinyatakan dalam bentuk string

        $document = str_replace("#TANGGAL", $waktu, $document);
        $document = str_replace("#BATAS_BAYAR", $batasbayar, $document);
        $document = str_replace("#KETERANGAN", $pro['pembayaran'], $document);

        // header untuk membuka file output RTF dengan MS. Word

        header("Content-type: application/msword");
        header("Content-disposition: inline; filename=laporan.doc");
        header("Content-length: " . strlen($document));
        echo $document;
    }
endforeach;
