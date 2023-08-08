<?php
include 'config/config.php';

global $koneksi;
$username = $_POST['username'];
$password = md5($_POST['password']);
$password2 = md5($_POST['password2']);

if ($password != $password2) {
    echo '<script>alert("password tidak sama")</script>';
    echo "<meta http-equiv='refresh' content='1; url=forgot_password.php'/>";
} else {
    // SELECT
    $select = mysqli_query($koneksi, "SELECT * FROM user WHERE username = '$username'");
    $cek = mysqli_num_rows($select);

    if ($cek > 0) {
        $update =  mysqli_query($koneksi, "UPDATE user SET password='$password' WHERE username='$username'");
        echo '<script>alert("password sukses diubah")</script>';
        echo "<meta http-equiv='refresh' content='1; url=index.php'/>";;
    } else {
        echo '<script>alert("Username tidak ditemukan")</script>';
        echo "<meta http-equiv='refresh' content='1; url=forgot_password.php'/>";
    }
}
