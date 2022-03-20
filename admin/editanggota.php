<?php
$halaman = 'Edit Anggota';
include 'global_header.php';

$no = $_GET['no'];

if (isset($_POST['tambah'])) {
    $nama = $_POST['nama'];
    $jabatan = $_POST['jabatan'];
    $alamat = $_POST['alamat'];
    $no_ktp = $_POST['no_ktp'];
    $no_hp = $_POST['no_hp'];

    $query = "UPDATE tb_anggota SET nama='" . $nama . "', jabatan='" . $jabatan . "', alamat='" . $alamat . "', no_ktp='" . $no_ktp . "', no_hp='" . $no_hp . "' WHERE no  = '" . $no . "' ";

    $proses = $koneksi->query($query);
    if ($proses) {
        $_SESSION['pesan'] = 'Edit';
        echo "<script> document.location.href='./anggota';</script>";
        exit;
    }

    if ($cek_noktp > 0) {
        echo "
        <script>
            window.alert('No KTP sudah terdaftar!'); 
            window.location.href='./tambah-anggota'
        </script>";
        $_SESSION['pesan'] = '';
        exit;
    } else {
        if (strlen($no_ktp) > 16) {
            echo "
            <script>
                window.alert('No KTP terlalu banyak!'); 
                window.location.href='./tambah-anggota'
            </script>";
        } else if (strlen($no_ktp) < 15) {
            echo "
            <script>
                window.alert('No KTP terlalu sedikit!'); 
                window.location.href='./tambah-anggota'
            </script>";
        } else {
            $query = 'INSERT INTO tb_anggota (nama, jabatan, alamat, no_ktp, no_hp) VALUES ("' . $nama . '","' . $jabatan . '","' . $alamat . '","' . $no_ktp . '", "' . $no_hp . '") ';

            $proses = $koneksi->query($query);
            if ($proses) {
                $_SESSION['pesan'] = 'Tambah';
                echo "<script> document.location.href='./anggota';</script>";
                exit;
            }
        }
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

        <div class="col-12">
            <div class="card">
                <div class="row row-0">
                    <div class="col">
                        <div class="card-body">
                            <div class="card-body markdown">
                                <?php
                                $query = $koneksi->query("SELECT * FROM tb_anggota WHERE no  = '$no' ");
                                if (is_array($query) || is_object($query)) {
                                    foreach ($query as $data) {
                                ?>
                                        <form action="" method="post" enctype="multipart/form-data">
                                            <div class="row">
                                                <div class="col-xl-5">
                                                    <div class="mb-6">
                                                        <div class="form-label required">Nama</div>
                                                        <input type="text" class="form-control" placeholder="Masukkan Nama" name="nama" value="<?= $data['nama'] ?>">
                                                    </div>
                                                    <div class="mb-6">
                                                        <div class="form-label required">Jabatan</div>
                                                        <select class="form-control" name="jabatan" value="<?= $data['jabatan'] ?>">>
                                                            <option value="Pembina Umum">Pembina Umum</option>
                                                            <option value="Ketua MPKT">Ketua MPKT</option>
                                                            <option value="Anggota MPKT">Anggota MPKT</option>
                                                            <option value="Ketua PH	">Ketua PH	</option>
                                                            <option value="Wakil Ketua PH	">Wakil Ketua PH	</option>
                                                            <option value="Sekertaris PH	">Sekertaris PH	</option>
                                                            <option value="Bendahara PH	">Bendahara PH	</option>
                                                            <option value="Ketua KKIE	">Ketua KKIE	</option>
                                                            <option value="Anggota KKIE	">Anggota KKIE	</option>
                                                            <option value="Ketua OSB	">Ketua OSB	</option>
                                                            <option value="Anggota OSB	">Anggota OSB	</option>
                                                            <option value="Ketua KPM	">Ketua KPM	</option>
                                                            <option value="Anggota KPM	">Anggota KPM	</option>
                                                            <option value="Ketua LHKD	">Ketua LHKD	</option>
                                                            <option value="Anggota LHKD	">Anggota LHKD	</option>
                                                            <option value="Ketua UKSKUB	">Ketua UKSKUB	</option>
                                                            <option value="Anggota UKSKUB	">Anggota UKSKUB	</option>
                                                            <option value="Ketua PPK	">Ketua PPK	</option>
                                                            <option value="Anggota PPK	">Anggota PPK	</option>
                                                            <option value="Ketua PL	">Ketua PL	</option>
                                                            <option value="Anggota PL	">Anggota PL	</option>
                                                        </select>
                                                        <!-- <input type="text" class="form-control" name="jabatan" id="jabatan" value="<?= $data['jabatan'] ?>"> -->
                                                    </div>
                                                    <div class="mb-6">
                                                        <div class="form-label required">Alamat</div>
                                                        <select class="form-control" name="alamat" value="<?= $data['alamat'] ?>">>
                                                            <option value="Cicadas">Cicadas</option>
                                                            <option value="Parung Tanjung">Parung Tanjung</option>
                                                            <option value="Pabuaran">Pabuaran</option>
                                                        </select>
                                                        <!-- <input type="text" class="form-control" name="alamat" id="alamat" value="<?= $data['alamat'] ?>"> -->
                                                    </div>
                                                </div>
                                                <div class="col-xl-5">
                                                    <div class="mb-6">
                                                        <label class="form-label required">No KTP</label>
                                                        <input type="text" class="form-control" name="no_ktp" id="no_ktp" value="<?= $data['no_ktp'] ?>">
                                                    </div>
                                                    <div class="mb-6">
                                                        <label class="form-label required">No Handphone</label>
                                                        <input type="text" class="form-control" name="no_hp" id="no_hp" value="<?= $data['no_hp'] ?>">
                                                    </div>
                                                </div>
                                            </div>
                                            <br>
                                            <input class="btn btn-primary " name="tambah" type="submit" value="Simpan">
                                            <input class="btn btn-danger" id="reset" type="reset" value="Batal" onclick="self.history.back()">
                                        </form>
                                <?php }
                                } ?>
                            </div>



                        </div>
                    </div>
                </div>
            </div>
        </div>


    </div>
</div>


<?php include 'global_footer.php'; ?>