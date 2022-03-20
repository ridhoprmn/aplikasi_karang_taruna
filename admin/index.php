<?php
$halaman = 'dashboard';
include "global_header.php";


if (isset($_POST['edit'])) {
  $visimisi = $_POST['desc'];
  $user_id = $_POST['user_id'];

  $update = $koneksi->query("UPDATE tb_profil SET isiprofil = '" . $visimisi . "' , user_id = '" . $user_id . "' WHERE id_profil = '1'");
  $_SESSION['pesan'] = 'Ubah';
  echo "<script> document.location.href='./index';</script>";
  exit;
}
?>
<!-- Main content -->
<div class="content">
  <div class="container-xl">
    <!-- Page title -->
    <div class="page-header d-print-none">
      <div class="row align-items-center">
        <div class="col">
          <!-- Page pre-title -->
          <div class="page-pretitle">
            Overview
          </div>
          <h2 class="page-title">
            Dashboard
          </h2>
        </div>
      </div>
    </div>

    <?php
    //menampilkan pesan jika ada pesan
    if (isset($_SESSION['pesan']) && $_SESSION['pesan'] <> '') {
      $pesan = $_SESSION['pesan'];
      $_SESSION['pesan'] = 'Edit';


      echo '<div class="flash-data" data-flashdata="' . $_SESSION['pesan'] . '"></div>';
      unset($_SESSION['pesan']);
    }
    ?>
    <div class="row row-deck row-cards">


      <div class="alert alert-important alert-info alert-dismissible" role="alert">
        <div class="d-flex">
          <div>
            <!-- SVG icon code with class="alert-icon" -->
          </div>
          <div>
            Selamat Datang di Aplikasi Informasi Karang Taruna Desa Cicadas
          </div>
        </div>
      </div>
      <div class="col-12">
        <div class="card">
          <div class="row row-0">
            <div class="col">
              <div class="card-body">
                <h3 class="card-title">Halaman Edit dashboard</h3>

                <?php
                $query = $koneksi->query("SELECT * FROM tb_profil WHERE id_profil = '5'");
                foreach ($query as $data) :
                ?>
                  <div class='row'>
                    <div class='col-md-4'>
                      <form action="" method="post" enctype="multipart/form-data">
                        <input type="hidden" name="user_id" value="<?php echo $_SESSION['id_user'] ?>">
                        <input type="file" class="form-control" name="foto" id="foto" accept="image/jpeg"><br><button class="btn btn-primary" name="upload" type="submit">Upload</button>
                        <br>
                      </form>
                    </div>
                    <div class='col-md-6'>
                      <?php $profil = $koneksi->query("SELECT * FROM tb_profil WHERE id_profil = '5'");
                      foreach ($profil as $data) {
                      ?><?php $foto = $data["isiprofil"];

                                      if ($foto === '') { ?>
                      Maaf Gambar Belum di upload
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
      <div class="col-12">
        <div class="card">
          <div class="row row-0">
            <div class="col">
              <div class="card-body">
                <h3 class="card-title">Halaman Edit <?= $halaman ?></h3>

                <?php
                $query = $koneksi->query("SELECT * FROM tb_profil WHERE id_profil = '1'");
                foreach ($query as $data) :
                ?>
                  <form action="" method="post" enctype="multipart/form-data" id="ckeditorForm">
                    <input type="hidden" name="user_id" value="<?php echo $_SESSION['id_user'] ?>">
                    <div class="form-group">
                      <textarea class="ckeditor" placeholder="Leave a Content here" id="ckeditorta" name="desc" required="required"><?= $data['isiprofil'] ?></textarea>
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
</div>
</div>

<?php

if (isset($_POST['tambah'])) {
  $badanpengurus = $_POST['badanpengurus'];
  $user_id = $_POST['user_id'];

  $update = $koneksi->query("UPDATE tb_profil SET isiprofil = '" . $badanpengurus . "', user_id = '" . $user_id . "' WHERE id_profil = '5'  ");
  $_SESSION['pesan'] = 'Ubah';
  echo "<script> document.location.href='./badan-pengurus';</script>";
}

if (isset($_POST['upload'])) {
  $user_id = $_POST['user_id'];
  // Ambil data foto yang dipilih dari form
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
    $profil = $koneksi->query("SELECT * FROM tb_profil WHERE id_profil = '5'");
    $data = mysqli_fetch_array($profil); // Ambil data dari hasil eksekusi $profil
    //  // Cek apakah file foto sebelumnya ada di folder images
    if (is_file("./img/" . $data['isiprofil'])) // Jika foto ada
      unlink("./img/" . $data['isiprofil']); // Hapus file foto sebelumnya yang ada di folder images

    // Proses ubah data ke Database
    $update = "UPDATE tb_profil SET isiprofil='$nama_baru', user_id = '" . $user_id . "' WHERE id_profil = '5'";
    mysqli_query($koneksi, $update) or die(mysqli_error()); // Eksekusi/ Jalankan query dari variabel $update
    $_SESSION['pesan'] = 'Update';
    echo "<script type='text/javascript'>window.location = 'index'</script>";
    // echo "<meta http-equiv='refresh' content='0; url=index.php'>";
  }
}
?>
<!-- /.content-wrapper -->
<?php include "global_footer.php"; ?>