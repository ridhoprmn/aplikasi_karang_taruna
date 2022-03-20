<?php
$halaman = 'Struktur Organisasi';
include 'global_header.php';

if (isset($_POST['edit'])) {
    $visimisi = $_POST['desc'];
    $user_id = $_POST['user_id'];

    $update = $koneksi->query("UPDATE tb_profil SET isiprofil = '" . $visimisi . "' , user_id = '" . $user_id . "' WHERE id_profil = '4'");
    $_SESSION['pesan'] = 'Ubah';
    echo "<script> document.location.href='./struktur-organisasi';</script>";
    exit;
}

if (isset($_POST['upload'])) {
    // Ambil data foto yang dipilih dari form
    $user_id = $_POST['user_id'];
    $img = $_FILES['foto']['name'];
    $tmp = $_FILES['foto']['tmp_name'];
    // // Rename nama fotonya dengan menambahkan tanggal dan jam upload
    $nama_baru = date('dmYHis') . $img;
    // // Set path folder tempat menyimpan fotonya
    $path = "img/" . $nama_baru;

    // // Proses upload
    if (move_uploaded_file($tmp, $path)) {
        // Cek apakah gambar berhasil diupload atau tidak
        // Query untuk menampilkan data gambar berdasarkan id user yang dikirim
        $profil = $koneksi->query("SELECT * FROM tb_profil WHERE id_profil = '3'");
        $data = mysqli_fetch_array($profil); // Ambil data dari hasil eksekusi $profil
        //  // Cek apakah file foto sebelumnya ada di folder images
        if (is_file("./img/" . $data['isiprofil'])) // Jika foto ada
            unlink("./img/" . $data['isiprofil']); // Hapus file foto sebelumnya yang ada di folder images

        // Proses ubah data ke Database
        $update = "UPDATE tb_profil SET isiprofil='$nama_baru', user_id = '" . $user_id . "' WHERE id_profil = '3'";
        mysqli_query($koneksi, $update) or die(mysqli_error()); // Eksekusi/ Jalankan query dari variabel $update
        $_SESSION['pesan'] = 'Update';
        echo "<script type='text/javascript'>window.location = 'struktur-organisasi'</script>";
        // echo "<meta http-equiv='refresh' content='0; url=index.php'>";
    }
}


?>

<div class="content">
    <div class="container-xl">
        <div class="page-header d-print-none">
            <div class="row align-items-center">
                <div class="col">
                    <h2 class="page-title">
                        <?= $halaman ?>
                    </h2>
                </div>
            </div>
        </div>
        <?php
        //menampilkan pesan jika ada pesan
        if (isset($_SESSION['pesan']) && $_SESSION['pesan'] <> '') {
            $pesan = $_SESSION['pesan'];
            echo '<div class="flash-data" data-flashdata="' . $_SESSION['pesan'] . '"></div>';
        }
        //mengatur session pesan menjadi kosong
        $_SESSION['pesan'] = '';
        unset($_SESSION['pesan']);
        ?>
        <div class="col-12">
            <div class="card">
                <div class="row row-0">
                    <div class="col">
                        <div class="card-body">
                            <h3 class="card-title">Halaman Edit Stuktur Organisasi</h3>

                            <?php
                            $query = $koneksi->query("SELECT * FROM tb_profil WHERE id_profil = '3'");
                            foreach ($query as $data) :
                            ?>
                                <div class='row'>
                                    <div class='col-md-4'>
                                        <form action="" method="post" enctype="multipart/form-data">
                                            <input type="hidden" name="user_id" value="<?php echo $_SESSION['id_user'] ?>"> <input type="file" class="form-control" name="foto" id="foto" accept="image/jpeg"><br><button class="btn btn-primary" name="upload" type="submit" required="required">Upload</button>
                                            <br>
                                        </form>
                                    </div>
                                    <div class='col-md-6'>
                                        <?php $profil = $koneksi->query("SELECT * FROM tb_profil WHERE id_profil = '3'");
                                        foreach ($profil as $data) {
                                        ?><?php $foto = $data["isiprofil"];

                                            if ($foto === '') { ?>
                                        Maaf Gambar Struktur Organisasi Belum di upload
                                    <?php } else { ?>
                                        <img src="./img/<?= $foto ?>" class="profile-user-img img-square" style="width:40%">
                                    <?php } ?>
                                <?php } ?>
                                    </div>
                                </div>
                            <?php endforeach; ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br>
        <div class="col-12">
            <div class="card">
                <div class="row row-0">
                    <div class="col-md-12">
                        <div class="card-body">


                            <?php
                            $query = $koneksi->query("SELECT * FROM tb_profil WHERE id_profil = '4'");
                            foreach ($query as $data) :
                            ?>
                                <form action="" method="post" enctype="multipart/form-data">
                                    <input type="hidden" name="user_id" value="<?php echo $_SESSION['id_user'] ?>">
                                    <div class="form-group">
                                        <textarea class="ckeditor" placeholder="Leave a Content here" id="floatingTextarea" name="desc" required="required"><?= $data['isiprofil'] ?></textarea>
                                    </div>
                                    <br>
                                    <input class="btn btn-primary" name="edit" type="submit" value="Update">
                                </form>
                            <?php endforeach; ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
<?php
include 'global_footer.php'
?>