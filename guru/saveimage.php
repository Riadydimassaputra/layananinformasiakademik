<?php

//set random name for the image, used time() for uniqueness
require 'fungsi/fungsi.php';

$filename =  time() . '.jpg';
$filepath = 'cam/';
if (!is_dir($filepath))
	mkdir($filepath);
if (isset($_FILES['webcam'])) {
	move_uploaded_file($_FILES['webcam']['tmp_name'], $filepath . $filename);
}
