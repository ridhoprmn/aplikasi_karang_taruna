<?php
$halaman = 'Visi Misi';
include 'global_header.php';

if (isset($_POST['edit'])) {
    $visimisi = $_POST['visimisi'];
    $user_id = $_POST['user_id'];

    $update = $koneksi->query("UPDATE tb_profil SET isiprofil = '" . $visimisi . "' , user_id = '" . $user_id . "' WHERE id_profil = '2'  ");
    if (empty($username)) {
        $pesan_error .= "Username belum diisi <br>";
    }
    $_SESSION['pesan'] = 'Ubah';
    echo "<script> document.location.href='./visi-misi';</script>";
    exit;
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
        $_SESSION['pesan'] = '';
        unset($_SESSION['pesan']);
        ?>
        <div class="col-12">
            <div class="card">
                <div class="row row-0">
                    <div class="col">
                        <div class="card-body">
                            <h3 class="card-title">Halaman Edit <?= $halaman ?></h3>
                            <?php
                            $query = $koneksi->query("SELECT * FROM tb_profil WHERE id_profil = '2'");
                            foreach ($query as $data) :
                            ?>
                                <form action="" method="post" enctype="multipart/form-data" id="ckeditorForm">
                                    <input type="hidden" name="user_id" value="<?php echo $_SESSION['id_user'] ?>">
                                    <div class="form-group">
                                        <textarea class="ckeditor" placeholder="Leave a Content here" id="ck_editor_txt" name="visimisi"><?= $data['isiprofil'] ?></textarea>
                                        <!-- <label for="exampleFormControlTextarea1">value="</label> -->
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