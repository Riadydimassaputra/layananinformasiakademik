<?php
session_start();
include 'config/config.php';

global $koneksi;
$username = $_POST['username'];
$password = md5($_POST['password']);
// proses login
$login = mysqli_query($koneksi, "SELECT * FROM user WHERE username='$username' AND password='$password'");
$row = mysqli_num_rows($login);
$r = mysqli_fetch_array($login);

if ($row > 0) {
    if ($r['status'] == "petugasloket") {
        session_start();
        $_SESSION['idsppapp'] = $r['id'];
        $_SESSION['username'] = $username;
        $_SESSION['status'] = $r['petugasloket'];
        header("location: petugas/index.php?m=awal");
    } else if ($r['status'] == "operator") {
        session_start();
        $_SESSION['idsppapp'] = $r['id'];
        $_SESSION['username'] = $username;
        $_SESSION['status'] = $r['operator'];
        header("location: operator/index.php?m=awal");
    } else if ($r['status'] == "Guru") {
        session_start();
        $_SESSION['idsppapp'] = $r['id'];
        $_SESSION['status'] = $r['Guru'];
        header("location: guru/index.php?m=awal");
    } else if ($r['status'] == "Kepsek") {
        session_start();
        $_SESSION['idsppapp'] = $r['id'];
        $_SESSION['status'] = $r['Kepsek'];
        header("location: kepsek/index.php?m=awal");
    } else if ($r['status'] == "admsek") {
        session_start();
        $_SESSION['idsppapp'] = $r['id'];
        $_SESSION['status'] = $r['admsek'];
        header("location: admsek/index.php?m=awal");
    } else if ($r['status'] == "siswa") {
        session_start();
        $_SESSION['idsppapp'] = $r['id'];
        $_SESSION['status'] = $r['siswa'];
        header("location: siswa/index.php?m=awal");
    } else if ($r['status'] == "alumni") {
        session_start();
        $_SESSION['idsppapp'] = $r['id'];
        $_SESSION['status'] = $r['alumni'];
        header("location: alumni/index.php?m=awal");
    } else if ($r['status'] == "orangtua") {
        session_start();
        $_SESSION['idsppapp'] = $r['id'];
        $_SESSION['status'] = $r['orangtua'];
        header("location: orangtua/index.php?m=awal");
    } else {
        echo '<script>alert("Username dan Password tidak sesuai")</script>';
        echo "<meta http-equiv='refresh' content='1; url=index.php'/>";
    }
} else {
    echo '<script>alert("Username dan Password tidak sesuai")</script>';
    echo "<meta http-equiv='refresh' content='1; url=index.php'/>";
}
