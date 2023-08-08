<?php
require_once '../config/config.php';
global $koneksi;


$siswa = mysqli_query($koneksi, "SELECT * FROM guru ");

while ($pro = mysqli_fetch_array($siswa)) {

?>
  <tr>
    <td><?= $no++; ?></td>
    <td>
      <div class="card" style="width: 23rem;">
        <img class="card-img-top" src=" <?php echo "../admsek/images/" . $pro['foto'] ?>" alt="Card image cap">
        <div class="card-body" style="width: 23rem;">
          <h5 class="card-title"> <?php echo $pro['nama_guru']; ?></h5>

        </div>
      </div>
    </td>
    <td>
      NIP : <?= $pro['NIP']; ?><br>
      Nama Lengkap : <?= $pro['nama_guru']; ?><br>
      TTL : <?= $pro['TTL']; ?><br>
      Jabatan : <?= $pro['jabatan']; ?><br>
      No. HP : <?= $pro['nohp']; ?><br>
      Email : <?= $pro['email']; ?><br>
    </td>


  </tr>

<?php } ?>