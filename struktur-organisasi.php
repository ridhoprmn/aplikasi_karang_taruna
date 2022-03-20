<?php
$halaman = 'Struktur Organisasi';
include 'global_header.php';
include 'global_navigasi.php';

?>

<div class='content'>
    <div class='container-xl'>
        <div class="page-header d-print-none">
            <div class="row align-items-center">
                <div class="col">
                    <h2 class="page-title">
                        <?= $halaman ?>
                    </h2>
                </div>
            </div>
        </div>


        <div class="row justify-content-center">
            <div class="col-lg-10 col-xl-9">
                <div class="card card-lg">
                    <div class="card-body markdown">
                    <?php $profil=$koneksi->query("SELECT * FROM tb_profil WHERE id_profil = '3'");
                                foreach ($profil as $data) {
                                    ?><?php $foto=$data["isiprofil"];
                                
                                    if($foto==='') {?>
                    Maaf Gambar Struktur Organisasi Belum di upload
                    <?php }else{ ?>
                    <img src="./admin/img/<?= $foto ?>" class="profile-user-img img-square" width=100% style="display: block; margin: auto;">
                    <?php } ?>
                    <?php } ?>
                    </div>
        
                    <div class="card-body">
                        <?php
                        $query = $koneksi->query("SELECT * FROM tb_profil WHERE id_profil = '4'");
                        foreach ($query as $data):
                        
                        echo $data['isiprofil'];
                        endforeach; ?>
                    </div>
                </div>
            </div>
        </div>
        
    </div>
</div>

<?php
 include "koneksi.php";
 
 $sql_hitung = mysqli_query($koneksi, "SELECT * FROM tb_profil WHERE id_profil='3'");
 
 while($row = mysqli_fetch_array($sql_hitung)){
 $jml_sekarang = $row['hitung'];
 $jml_baru = $jml_sekarang + 1;
 $update_counts = mysqli_query($koneksi, "UPDATE tb_profil SET hitung='$jml_baru' WHERE id_profil='3'");
 }

 ?>

<?php
include 'global_footer.php';
?>