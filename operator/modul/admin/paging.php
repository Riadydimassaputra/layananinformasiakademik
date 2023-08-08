<?php
require_once '../config/config.php';
global $koneksi;


$siswa = mysqli_query($koneksi, "SELECT * FROM user ");

while ($row = mysqli_fetch_array($siswa)) {

?>
    <tr>
        <td><?php echo $no++; ?></td>
        <td><?php echo $row['nama_lengkap']; ?></td>
        <td><?php echo $row['username']; ?></td>
        <td><?= $row['status']; ?></td>




        <td>
            <button class="btn btn-danger" data-toggle="modal" data-target="#hapus_karyawan<?= $row['id']; ?>"><i class="fa fa-trash"></i></button>
            <div class="modal fade" id="hapus_karyawan<?= $row['id']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                                <input type="hidden" name="id" value="<?= $rwo['id']; ?>" hidden>

                                <label>Nama Lengkap : </label>
                                <b><?= $row['nama_lengkap']; ?></b><br>

                                <label>Username : </label>
                                <b><?= $row['username']; ?></b><br>

                                <div class="modal-footer">
                                    <button type="submit" name="hapus" class="btn btn-danger">Hapus</button>
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
                                </div>
                            </form>
                        </div>

                    </div>
                </div>
            </div>

            <!-- PEMANGGIL EDIT -->
            <button type="button" class="btn btn-success ml-2" data-toggle="modal" data-target="#editadmin<?= $row['id']; ?>">
                <i class="fa fa-pencil-square-o fa-1x" aria-hidden="true"></i>
            </button>
            <!-- MODAL EDIT -->
            <div class="modal fade" id="editadmin<?= $row['id']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Edit Data User</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form action="" method="POST">
                                <input type="hidden" hidden name="id" value="<?= $row['id']; ?>">
                                <div class="form-group">
                                    <label>Nama Lengkap</label>
                                    <input class="form-control" type="text" name="nama_lengkap" value="<?= $row['nama_lengkap']; ?>">
                                </div>
                                <div class="form-group">
                                    <label>Username</label>
                                    <input class="form-control" type="text" name="username" value="<?= $row['username']; ?>">
                                </div>
                                <div class="form-group">
                                    <label>Password</label>
                                    <input type="password" class="form-control" autocomplete="off" name="password" id="inputpas">
                                    <input type="checkbox" onclick="tampilkanpas()">Tampilkan Password
                                    <script>
                                        function tampilkanpas() {
                                            var x = document.getElementById("inputpas");
                                            if (x.type === "password") {
                                                x.type = "text";
                                            } else {
                                                x.type = "password";
                                            }
                                        }
                                    </script>
                                </div>
                                <div class="form-group">
                                    <label>Status</label>
                                    <select class="form-control" name="status" value="<?= $row['status']; ?>">
                                        <option value='admsek'>Admin Sekolah</option>
                                        <option value='petugasloket'>Petugas Loket</option>
                                        <option value='Guru'>Guru</option>
                                        <option value='kepsek'>Kepala Sekolah</option>
                                        <option value='siswa'>Siswa</option>
                                        <option value='operator'>operator</option>
                                    </select>
                                </div>

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="submit" name="edit" class="btn btn-primary">Save changes</button>
                        </div>
                        </form>
        </td>

    </tr>
<?php
}
?>