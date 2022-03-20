<?php
include 'global_header.php';
?>

<?php
//buat koneksi ke mysql dari file config.php
if (isset($_POST["submit"])) {
  // form telah disubmit, proses data
  // ambil nilai form
  $username = htmlentities(strip_tags(trim($_POST["username"])));
  $password = htmlentities(strip_tags(trim($_POST["password"])));

  // siapkan variabel untuk menampung pesan error
  $pesan_error = "";

  // cek apakah username sudah diisi atau tidak
  if (empty($username)) {
    $pesan_error .= "Username belum diisi <br>";
  }
  //cek apakah password sudah diisi atau tidak 
  if (empty($password)) {
    $pesan_error .= "Password belum diisi <br>";
  }
  include("koneksi.php");
  //filter dengan mysqli_real_escape_string
  $username = $koneksi->escape_string($username);
  $password = $koneksi->escape_string($password);

  //generate hashing
  $password_sha1 = md5(sha1(md5($password)));

  // cek apakah username dan password ada di tabel 
  $query = "SELECT * FROM tb_user WHERE username = '$username' AND password = '$password_sha1'";
  $result = $koneksi->query($query);
  $row = $result->num_rows;
  $sql = $koneksi->query("SELECT * FROM tb_user WHERE username = '$username'");
  $akun = $sql->fetch_assoc();

  if ($row > 0) { // jika data ada
    $akun = $result->fetch_assoc();
    // bebaskan memory 
    mysqli_free_result($result);

    // tutup koneksi dengan database MySQL
    mysqli_close($koneksi);
    $_SESSION["username"] = $akun["username"];
    $_SESSION["level"] = $akun["level"];
    $_SESSION["id_user"] = $akun['user_id'];
    $_SESSION['gambar'] = $akun['gambar'];
    $_SESSION['nama_lengkap'] = $akun['nama_lengkap'];
    echo "<script> document.location.href='admin/index'; </script>";
  } else {
    $_SESSION['pesan'] = 'Username dan Password Tidak ditemukan';
  }
} else {
  $username = "";
  $password = "";
}
?>

<body class="antialiased border-top-wide border-primary d-flex flex-column">
  <div class="flex-fill d-flex flex-column justify-content-center py-4">
    <div class="container-tight py-6">
      <form class="card card-md" action="" method="POST" autocomplete="off">
        <div class="card-body">
          <?php
          // tampilkan pesan jika ada
          if (isset($_SESSION['pesan']) && $_SESSION['pesan'] <> '') {
            echo '<div class="pesan">
              <div class="alert alert-important alert-danger alert-dismissible">  <strong>Warning! </strong>' . $_SESSION['pesan'] . '</div></div>';
          }
          // tampilkan pesan error jika ada
          $_SESSION['pesan'] = '';
          ?>

          <h2 class="card-title text-center mb-4">Login ke Akun Anda</h2>
          <div class="mb-3">
            <label class="form-label">Username</label>
            <input type="text" name="username" class="form-control" placeholder="Enter username" value="<?= $username ?>">
          </div>
          <div class="mb-2">
            <label class="form-label">
              Password
              <!-- <span class="form-label-description">
                  <a href="./forgot-password.html">I forgot password</a>
                </span> -->
            </label>
            <div class="input-group input-group-flat">
              <input type="password" class="form-control" name="password" placeholder="Password" autocomplete="off" value="<?= $password ?>">
            </div>
          </div>
          <div class="form-footer">
            <button type="submit" name="submit" class="btn btn-primary w-100">Masuk</button>
          </div>
        </div>
      </form>
      <div class="text-center text-muted mt-3">
        Kembali ke Dashboard <a href="index" tabindex="-1">Disini</a>
      </div>
    </div>
  </div>