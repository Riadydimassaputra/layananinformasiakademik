<?php

//set random name for the image, used time() for uniqueness
require_once('db.php');
$filename =  time() . '.jpg';
$filepath = 'images/';
if (!is_dir($filepath))
    mkdir($filepath);
if (isset($_FILES['webcam'])) {
    move_uploaded_file($_FILES['webcam']['tmp_name'], $filepath . $filename);
    $sql = "Insert into laporan(foto) values('$filename')";
    $result = mysqli_query($con, $sql);
    echo $filepath . $filename;
}
