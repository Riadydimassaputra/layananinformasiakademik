<?php include 'comp/header.php'; ?>
<?php

if (isset($_POST['edit'])) {
	edit_profilsiswa();
}


?>
<section class="section ml-4 mt-5">
	<div class="container">
		<div class="row">
			<H1>Profil</H1>
			<h1 class="ml-2" style="color: green;"><?= $adm['nama_lengkap']; ?></h1>

		</div>
		<div class="row">
			<div class="mt-5">
				<table>
					<td>
						<h4>Nama  : </h4>
					</td>
					<td>
						<h4 class="ml-2" style="color: green;"><?= $adm['nama_lengkap']; ?></h4>
					</td>
					<td>
						<!-- Button trigger modal -->
						<button type="button" class="btn btn-primary ml-2" data-toggle="modal" data-target="#editadmin<?= $adm['id']; ?>">
							<i class="fa fa-pencil-square-o fa-1x" aria-hidden="true"> Edit</i>
						</button>

						<!-- Modal -->
						<div class="modal fade" id="editadmin<?= $adm['id']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel">Edit Data Guru</h5>
										<button type="button" class="close" data-dismiss="modal" aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="modal-body">
										<?php
										global $koneksi;

										$NIS = $adm['username'];
										$siswa = mysqli_query($koneksi, "SELECT * FROM siswa where NIS='$NIS'");
										while ($row = mysqli_fetch_array($siswa)){

										?>
										<form action="" method="POST" enctype="multipart/form-data">
											<input type="hidden" hidden name="id" value="<?= $adm['id']; ?>">
											<div class="form-group">
												<label>Nama Lengkap</label>
												<input class="form-control" type="text" name="nama_lengkap" value="<?= $adm['nama_lengkap']; ?>" readonly>
											</div>
											<div class="form-group">
												<label>Alamat</label>
												<input class="form-control" type="text" name="alamat" value="<?= $row['alamat_siswa']; ?>" >
											</div>
											<div class="form-group">
												<label>Email</label>
												<input class="form-control" type="text" name="email" value="<?= $row['email']; ?>" >
											</div>
											<div class="form-group">
												<label>No Telepon</label>
												<input class="form-control" type="text" name="notelp" value="<?= $row['notelp_siswa']; ?>" >
											</div>
											<div class="form-group">
												<label>Foto Profil</label>
												<input type="file" class="form-control" autocomplete="off" name="foto" required>
											</div>

									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
										<button type="submit" name="edit" class="btn btn-primary">Save changes</button>
									</div>
									</form>
<?php
										}?>
								</div>
							</div>
						</div>

					</td>

				</table>
			</div>
		</div>
	</div>
</section>

<?php include 'comp/footer.php'; ?>