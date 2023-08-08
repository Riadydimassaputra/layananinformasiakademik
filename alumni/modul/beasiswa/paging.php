<?php
require_once '../config/config.php';
global $koneksi;


$siswa = mysqli_query($koneksi, "SELECT * FROM beasiswa ");

while ($pro = mysqli_fetch_array($siswa)) {

?>
  <tr>

    <td><center>
      <div class="card" style="width: 23rem;">
        <img class="card-img-top" src=" <?php echo "../admsek/images/beasiswa/" . $pro['foto'] ?>" alt="Card image cap">
      </div>
</center>
</td>
  </tr>

<?php } ?>