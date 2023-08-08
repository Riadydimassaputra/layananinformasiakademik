	<hr>
	<div class="row">
		<div class="table-responsive  mb-30 ml-5 mr-5">
			<h3>DAFTAR TAGIHAN Atas Nama : </h3>
			<form action="?m=histori" target="_blank" method="POST" enctype="multipart/form-data">
				<table class="table table-borderless table-striped table-earning">
					<thead>
						<tr>
							<td>
								<h4>NIS : </h4>
							</td>
							<td>
								<h4><?= $r['NIS']; ?></h4>
								<input type="text" name="NIS" hidden value="<?= $r['NIS']; ?>">
								<input type="text" name="jenispem" hidden value="<?= $r['jenispem']; ?>">
							</td>

						</tr>
						<tr>
							<td>
								<h4> Siswa :</h4>
							</td>
							<td>
								<h4><?= $r['nama_siswa']; ?></h4>
							</td>
						</tr>
						<tr>
							<td>
								<h4>Kelas : </h4>
							</td>
							<td>
								<h4><?= $r['nama_kelas']; ?></h4>
							</td>
						</tr>
						<tr>
							<td>
								<h4>Jurusan : </h4>
							</td>
							<td>
								<h4><?= $r['jurusan']; ?></h4>
							</td>
						</tr>

					</thead>



				</table>
				<button id="search" name="print" style="align-items:flex-end ;" class="btn btn-success">PRINT</button>
				<hr>

			</form>
		</div>
	</div>
	</div>
	</div>


	<div class="table-responsive table--no-card m-b-30 ml-5 mr-5">
		<table id="myTable" class="table table-borderless table-striped table-earning" width="100%">
			<thead>
				<tr>
					<th>
						<center>NO</center>
					</th>
					<th>
						<center>JENIS PEMBAYARAN</center>
					</th>
					<th>
						<center>Nominal Pembayaran</center>
					</th>
					<th>
						<center>Tahun Ajaran</center>
					</th>
					<th>
						<center>Setoran</center>
					</th>
					<th>
						<center>Sisa Pembayaran</center>
					</th>
					<th>
						<center>Tanggal Bayar Terakhir</center>
					</th>
					<th>
						<center>Bayar</center>
					</th>

				</tr>
			</thead>

			<tbody>
				<?php


				$no = 1;
				error_reporting(0);
				require_once '../config/config.php';
				global $koneksi;

				$selectt = mysqli_query($koneksi, "SELECT * FROM tagihan inner join siswa on tagihan.NIS=siswa.NIS INNER JOIN kelas on siswa.id_kls=kelas.id_kelas WHERE tagihan.NIS='$cari' AND jenispem='$tahun'");
				while ($key = mysqli_fetch_array($selectt)) {
				?>

					<tr>
						<td><?= $no++; ?></td>
						<td><?= $key['pembayaran']; ?></td>
						<td><?= rupiah($key['nominal']); ?></td>
						<td><?= $key['jenispem']; ?></td>
						<td><?= rupiah($key['bayar']); ?></td>
						<td><?= rupiah($key['sisa_bayar']); ?></td>
						<td><?= $key['tanggal_bayar']; ?></td>


						<td>

							<?php
							if ($key['status'] == 'LUNAS' or ($key['status'] == 'Cicilan')) {
								echo '<button class="btn btn-success" name="tagihan" data-toggle="modal" data-target="#hapus_karyawan= $key["id_tagihan"];" disabled>Bayar</button>';
							} else {
							?>
								<button class="btn btn-success" name="tagihan" data-toggle="modal" data-target="#hapus_karyawan<?= $key['id_tagihan']; ?>">Bayar</button> <?php } ?>
							<div class="modal fade bd-example-modal-lg" id="hapus_karyawan<?= $key['id_tagihan']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
								<div class="modal-dialog modal-lg" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="exampleModalLabel">Bayar Lunas</h5>
											<button type="button" class="close" data-dismiss="modal" aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
										</div>

										<div class="modal-body">
											<form action="" method="POST" enctype="multipart/form-data">
												<input type="hidden" name="id_tagihan" value="<?= $key['id_tagihan']; ?>" hidden>
												<div class="table-responsive">
													<table class="table table-borderless table-striped table-earning">
														<thead>
															<tr>
																<td>NIS : </td>
																<td>
																	<input type="text" name="NIS" value="<?= $key['NIS']; ?>" readonly>
																</td>

															</tr>
															<tr>
																<td>Nama Siswa :</td>
																<td>

																	<input type="text" name="nama_siswa" value="<?= $key['nama_siswa']; ?>" readonly>
																</td>
															</tr>
															<tr>
																<td>Kelas : </td>
																<td>

																	<input type="text" name="nama_kelas" value="<?= $key['nama_kelas']; ?>" readonly>
																</td>
															</tr>
															<tr>
																<td>Jurusan </td>
																<td>

																	<input type="text" name="jurusan" value="<?= $key['jurusan']; ?>" readonly>

																</td>
															</tr>

															<tr>
																<td>Keterangan Pembayaran </td>
																<td>

																	<input type="text" name="pembayaran" value="<?= $key['pembayaran']; ?>" readonly>

																</td>
															</tr>

															<tr>
																<td>Semeester </td>
																<td>

																	<input type="text" name="Semester" value="<?= $key['Semester']; ?>" readonly>

																</td>
															</tr>

															<tr>
																<td>Tahun Ajaran </td>
																<td>

																	<input type="text" name="jenispem" value="<?= $key['jenispem']; ?>" readonly>

																</td>
															</tr>

															<tr>
																<td>Nominal </td>
																<td>

																	<input type="number" name="nominal" value="<?= $key['nominal']; ?>" readonly>

																</td>
															</tr>

															<tr>
																<td>Sisa Pembayaran </td>
																<td>

																	<input type="text" name="sisa_bayar" value="<?= $key['sisa_bayar']; ?>" readonly>

																</td>
															</tr>

															<tr>
																<td><label for="bayar2">Bayar : </label></td>
																<td>
																	<!-- <input type="text" class="form-control xs-2" id="bayar2" name="bayar"> -->
																	<div class="input-group mb-2">
																		<div class="input-group-prepend">
																			<div class="input-group-text"><b>Rp</b></div>
																		</div>
																		<input type="number" class="form-control xs-2" id="bayar2" name="bayar" min="<? $key['sisa_bayar']; ?>" max="<? $key['nominal']; ?>">
																	</div>
																</td>
															</tr>

															<tr>
																<td>
																	<button type="submit" name="bayartagihan" class="btn btn-success">Bayar Tagihan</button>
																</td>
																<td>
																	<button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
																</td>
															</tr>
														</thead>
													</table>
												</div>
												<input type="hidden" hidden name="admin" value="<?= $adm['nama_lengkap']; ?>">
											</form>
										</div>
									</div>
								</div>
							</div>

							<?php
							if (($key['status'] == 'Belum Terbayarkan') or ($key['status'] == 'LUNAS')) {
								echo '<button class="btn btn-danger" name="tagihan" data-toggle="modal" data-target="#bayar_cicil= $key["id_tagihan"];" disabled>Angsuran</button>';
							} else {
							?>
								<button id="cicil" class="btn btn-danger" data-toggle="modal" data-target="#bayar_cicil<?= $key['id_tagihan']; ?>">Angsuran</button> <?php } ?>
							<div class="modal fade bd-example-modal-lg" id="bayar_cicil<?= $key['id_tagihan']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
								<div class="modal-dialog modal-lg" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="exampleModalLabel">Bayar Angsuran</h5>
											<button type="button" class="close" data-dismiss="modal" aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
										</div>
										<div class="modal-body">
											<form action="" method="POST" enctype="multipart/form-data">
												<input type="text" name="id_tagihan" value="<?= $key['id_tagihan']; ?>" hidden>
												<div class="table-responsive">
													<table class="table table-borderless table-striped table-earning">
														<thead>
															<tr>
																<td>NIS : </td>
																<td>
																	<input type="text" name="NIS" value="<?= $key['NIS']; ?>" readonly>
																</td>

															</tr>

															<tr>
																<td>Nama Siswa :</td>
																<td>

																	<input type="text" name="nama_siswa" value="<?= $key['nama_siswa']; ?>" readonly>
																</td>
															</tr>
															<tr>
																<td>Kelas : </td>
																<td>

																	<input type="text" name="nama_kelas" value="<?= $key['nama_kelas']; ?>" readonly>
																</td>
															</tr>
															<tr>
																<td>Jurusan </td>
																<td>

																	<input type="text" name="jurusan" value="<?= $key['jurusan']; ?>" readonly>

																</td>
															</tr>

															<tr>
																<td>Keterangan Pembayaran </td>
																<td>

																	<input type="text" name="pembayaran" value="<?= $key['pembayaran']; ?>" readonly>

																</td>
															</tr>

															<tr>
																<td>Semeester </td>
																<td>

																	<input type="text" name="Semester" value="<?= $key['Semester']; ?>" readonly>

																</td>
															</tr>

															<tr>
																<td>Tahun Ajaran </td>
																<td>

																	<input type="text" name="jenispem" value="<?= $key['jenispem']; ?>" readonly>

																</td>
															</tr>

															<tr>
																<td>Yang Telah Di Setor </td>
																<td>

																	<input type="text" name="setor" value="<?= $key['bayar']; ?>" readonly>
																	<input type="text" name="nominal" hidden value="<?= $key['nominal']; ?>">

																</td>
															</tr>

															<tr>
																<td>Sisa Pembayaran </td>
																<td>

																	<input type="text" name="sisa_bayar" value="<?= $key['sisa_bayar']; ?>" readonly>

																</td>
															</tr>


															<tr>
																<td><label for="bayar2">Bayar : </label></td>
																<td>
																	<!-- <input type="text" class="form-control xs-2" id="bayar2" name="bayar"> -->
																	<div class="input-group mb-2">
																		<div class="input-group-prepend">
																			<div class="input-group-text"><b>Rp</b></div>
																		</div>
																		<input type="text" class="form-control xs-2" id="bayar2" name="cicil" max="<? $key['nominal']; ?>">
																	</div>
																</td>
															</tr>

															<tr>
																<td>
																	<button type="submit" name="bayarcicilan" class="btn btn-danger">Bayar Tagihan</button>
																</td>
																<td>
																	<button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
																</td>
															</tr>
														</thead>
													</table>
													<input type="hidden" hidden name="admin" value="<?= $adm['nama_lengkap']; ?>">
												</div>
											</form>
										</div>



						</td>




					</tr><?php } ?>

			</tbody>
		</table>
	</div>
	<script>
		$(document).ready(function() {
			$('#myTable').DataTable();
		});
	</script>