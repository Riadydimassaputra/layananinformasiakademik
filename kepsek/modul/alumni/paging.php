<?php
require_once '../config/config.php';
global $koneksi;


$siswa = mysqli_query($koneksi, "SELECT * FROM alumni join kelas on alumni.tahun_lulus=kelas.id_kelas join siswa on alumni.NIS=siswa.nama_siswa");

while ($pro = mysqli_fetch_array($siswa)) {

?>
  <tr>
    <td><?= $no++; ?></td>
    <td><?= $pro['NIS'];  ?></td>
    <td><?= $pro['nama_siswa']; ?></td>
    <td><?= $pro['nama_kelas']; ?></td>

    <td>

      <button type="button" class="btn btn-primary ml-2" data-toggle="modal" data-target="#lihatdata<?= $pro['NIS']; ?>">
        <i class="fa fa-eye" aria-hidden="true"></i>
      </button>

      <!-- Modal -->
      <div class="modal fade bd-example-modal-lg" id="lihatdata<?= $pro['NIS']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Detail Data Alumni</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <label>NIS : </label>
              <b><?= $pro['NIS']; ?></b><br>
              <label>Nama Lengkap : </label>
              <b><?= $pro['nama_siswa']; ?></b><br>
              <label>Kelas : </label>
              <b><?= $pro['nama_kelas']; ?> <?= $pro['jurusan']; ?></b><br>
              <label>Email : </label>
              <b><?= $pro['email']; ?></b><br>
              <label>Alamat : </label>
              <b><?= $pro['alamat_siswa']; ?></b><br>
              <label>No Telepon : </label>
              <b><?= $pro['notelp_siswa']; ?></b><br>
              <label>Status : </label>
              <b><?= $pro['status']; ?></b><br>
              <label>Foto : </label>
              <b>
                <div class="card" style="width: 18rem;">
                  <img class="card-img-top" src=" <?php echo "../operator/images/" . $pro['pasfoto'] ?>" alt="Card image cap">
                </div>
              </b><br>



            </div>

    </td>

  </tr>

<?php } ?>