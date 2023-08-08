<?php
$NIS = $_POST['NIS'];
$nama = $_POST['nama'];
$kelas = $_POST['kelas'];
$jenispem = $_POST['pembayaran'];
$batas = $_POST['batas'];
$tanggal = date('d-m-Y');


$document = file_get_contents("surat_perjanjian.rtf");

// isi dokumen dinyatakan dalam bentuk string
$document = str_replace("#NAMA", $nama, $document);
$document = str_replace("#NIS", $NIS, $document);
$document = str_replace("#KELAS", $kelas, $document);
$document = str_replace("#KETERANGAN", $jenispem, $document);
$document = str_replace("#BATAS", $batas, $document);
$document = str_replace("#TANGGAL", $tanggal, $document);

// header untuk membuka file output RTF dengan MS. Word

header("Content-type: application/msword");
header("Content-disposition: inline; filename=Perjanjian.doc");
header("Content-length: " . strlen($document));
echo $document;
