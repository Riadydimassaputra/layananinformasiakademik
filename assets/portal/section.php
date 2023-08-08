<?php


class login_app
{
	public $koneksi;
	public function login($data1, $data2, $submit)
	{
		if (isset($_POST[$submit])) {
			$this->koneksi;
			$username = $_POST[$data1];
			$password = md5($_POST[$data2]);
			// proses login
			$login = mysqli_query($this->koneksi, "SELECT * FROM user WHERE username='$username' AND password='$password'");
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
				} else {
					echo '<script>alert("Username dan Password tidak sesuai")</script>';
				}
			} else {
				echo '<script>alert("Username dan Password tidak sesuai")</script>';
			}
		}
	}
}


$pro = new login_app();
$pro->koneksi = mysqli_connect('localhost', 'root', '', 'layanan');
