<?php
$halaman = 'Anggota';
include 'global_header.php';
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
        ?>
        <div class="col-12">
            <div class="card">
                <div class="row row-0">
                    <div class="col">
                        <div class="card-body">
                            <h3 class="card-title">Halaman <?= $halaman ?>
                                <a style="text-align: right;" class="btn btn-primary offset-md-10" href="tambah-anggota"> <i class="fa fa-plus"></i> Tambah Anggota</a>
                            </h3>

                            <div class="table-responsive">
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>Nama</th>
                                            <th>Jabatan</th>
                                            <th>Alamat</th>
                                            <th>No KTP</th>
                                            <th>No HP</th>
                                            <th>Aksi</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $query = mysqli_query($koneksi, "SELECT * FROM tb_anggota");
                                        $nomor = 1;
                                        // $result = mysqli_fetch_assoc($query);
                                        foreach ($query as $data) : ?>
                                            <tr>
                                                <td><?= $nomor; ?></td>
                                                <td><?= $data['nama']; ?></td>
                                                <td><?= $data['jabatan']; ?></td>
                                                <td><?= $data['alamat']; ?> </td>
                                                <td><?= $data['no_ktp']; ?></td>
                                                <td><?= $data['no_hp']; ?></td>
                                                <td>
                                                    <a class="icon" href="hapusanggota?no=<?= $data['no']; ?>" onclick="return confirm('Apakah Anda Ingin Menghapus Data Ini');"><svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                                            <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                            <line x1="4" y1="7" x2="20" y2="7" />
                                                            <line x1="10" y1="11" x2="10" y2="17" />
                                                            <line x1="14" y1="11" x2="14" y2="17" />
                                                            <path d="M5 7l1 12a2 2 0 0 0 2 2h8a2 2 0 0 0 2 -2l1 -12" />
                                                            <path d="M9 7v-3a1 1 0 0 1 1 -1h4a1 1 0 0 1 1 1v3" />
                                                        </svg></a>
                                                    <a class="icon" href="editanggota?no=<?= $data['no']; ?>"><svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                                            <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                            <path d="M9 7h-3a2 2 0 0 0 -2 2v9a2 2 0 0 0 2 2h9a2 2 0 0 0 2 -2v-3" />
                                                            <path d="M9 15h3l8.5 -8.5a1.5 1.5 0 0 0 -3 -3l-8.5 8.5v3" />
                                                            <line x1="16" y1="5" x2="19" y2="8" />
                                                        </svg></a>
                                                </td>
                                            </tr>
                                        <?php $nomor++;
                                        endforeach; ?>
                                    </tbody>
                                </table>
                            </div>
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