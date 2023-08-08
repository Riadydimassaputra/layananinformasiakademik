<?php
$nomor = $_POST['id_tagihan'];
$batasbayar = $_POST['batas_bayar'];
$jenispem = $_POST['pembayaran'];
$waktu = $_POST['tanggal'];

$document = file_get_contents("surat_pemberitahuan.rtf");

// isi dokumen dinyatakan dalam bentuk string
$document = str_replace("#NOMOR", $nomor, $document);
$document = str_replace("#TANGGAL", $waktu, $document);
$document = str_replace("#BATAS_BAYAR", $batasbayar, $document);
$document = str_replace("#KETERANGAN", $jenispem, $document);

// header untuk membuka file output RTF dengan MS. Word

header("Content-type: application/msword");
header("Content-disposition: inline; filename=laporan.doc");
header("Content-length: " . strlen($document));
echo $document;
