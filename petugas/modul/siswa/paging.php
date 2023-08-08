<?php
require_once '../config/config.php';
global $koneksi;

$siswa = mysqli_query($koneksi, "SELECT id_siswa, NIS,nama_siswa,kelas.nama_kelas,jurusan from siswa inner JOIN kelas on 
  siswa.id_kls=kelas.id_kelas");



while ($pro = mysqli_fetch_array($siswa)) {

?>
	<tr>
		<td><?= $no++; ?></td>
		<td><?= $pro['NIS'];  ?></td>
		<td><?= $pro['nama_siswa']; ?></td>
		<td><?= $pro['nama_kelas']; ?></td>
		<td><?= $pro['jurusan']; ?></td>
		<td><button class="btn btn-danger" data-toggle="modal" data-target="#hapus_karyawan<?= $pro['NIS']; ?>"><i class="fa fa-trash"></i></button>
			<div class="modal fade" id="hapus_karyawan<?= $pro['NIS']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">Apakah anda yakin?</h5>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<form action="" method="POST" enctype="multipart/form-data">
								<input type="hidden" name="NIS" value="<?= $pro['NIS']; ?>" hidden>

								<label>NIS : </label>
								<b><?= $pro['NIS']; ?></b><br>
								<label>Nama Lengkap : </label>
								<b><?= $pro['nama_siswa']; ?></b><br>
								<label>Kelas : </label>
								<b><?= $pro['nama_kelas']; ?></b><br>
								<label>Jurusan : </label>
								<b><?= $pro['jurusan']; ?></b><br>



								<div class="modal-footer">
									<button type="submit" name="hapus" class="btn btn-danger">Hapus</button>
									<button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
								</div>
							</form>
						</div>

					</div>
				</div>
			</div>

		</td>

	</tr>

<?php } ?>