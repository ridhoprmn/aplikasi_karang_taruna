<!-- Sidebar Menu -->
<div class="collapse navbar-collapse" id="navbar-menu">
    <ul class="navbar-nav pt-lg-3">
        <li class="nav-item <?php if ($halaman == 'dashboard') echo "active" ?>">
            <a class="nav-link" href="index">
                <span class="nav-link-icon d-md-none d-lg-inline-block"><svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                        <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                        <polyline points="5 12 3 12 12 3 21 12 19 12" />
                        <path d="M5 12v7a2 2 0 0 0 2 2h10a2 2 0 0 0 2 -2v-7" />
                        <path d="M9 21v-6a2 2 0 0 1 2 -2h2a2 2 0 0 1 2 2v6" />
                    </svg>
                </span>
                <span class="nav-link-title">
                    Beranda
                </span>
            </a>
        </li>
        <li class="nav-item <?php if ($halaman == 'Visi Misi' or $halaman == 'Struktur Organisasi' or $halaman == 'Anggota Pertamini' or $halaman == 'Anggota KSP' or $halaman == 'Badan Pengurus') echo "active" ?> dropdown">
            <a class="nav-link dropdown-toggle" href="#navbar-base" data-bs-toggle="dropdown" role="button" aria-expanded="false">
                <span class="nav-link-icon d-md-none d-lg-inline-block"><svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                        <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                        <polyline points="12 3 20 7.5 20 16.5 12 21 4 16.5 4 7.5 12 3" />
                        <line x1="12" y1="12" x2="20" y2="7.5" />
                        <line x1="12" y1="12" x2="12" y2="21" />
                        <line x1="12" y1="12" x2="4" y2="7.5" />
                        <line x1="16" y1="5.25" x2="8" y2="9.75" />
                    </svg>
                </span>
                <span class="nav-link-title">
                    Profil
                </span>
            </a>
            <div class="dropdown-menu <?php if ($halaman == 'Visi Misi' or $halaman == 'Struktur Organisasi' or $halaman == 'Input Anggota') echo "show" ?>">
                <div class="dropdown-menu-columns">
                    <div class="dropdown-menu-column">
                        <a class="dropdown-item <?php if ($halaman == 'Visi Misi') echo "active" ?>" href="./visi-misi">
                            Visi Misi
                        </a>
                        <a class="dropdown-item <?php if ($halaman == 'Struktur Organisasi') echo "active" ?>" href="./struktur-organisasi">
                            Struktur Organisasi
                        </a>
                        <!-- <a class="dropdown-item <?php if ($halaman == 'Badan Pengurus') echo "active" ?>" href="./adan-pengurus">
                            Badan Pengurus
                        </a> -->

                    </div>
                    <div class="dropdown-menu-column">
                        <div class="dropend">
                            <a class="dropdown-item <?php if ($halaman == 'Anggota') echo "active" ?>" href="./anggota">
                                Anggota
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </li>
        <li class="nav-item  <?php if ($halaman == 'Kegiatan' or $halaman == 'Tambah Kegiatan') echo "active" ?>">
            <a class="nav-link" href="./kegiatan">
                <span class="nav-link-icon d-md-none d-lg-inline-block"><svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                        <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                        <rect x="4" y="4" width="6" height="5" rx="2" />
                        <rect x="4" y="13" width="6" height="7" rx="2" />
                        <rect x="14" y="4" width="6" height="7" rx="2" />
                        <rect x="14" y="15" width="6" height="5" rx="2" />
                    </svg>
                </span>

                <span class="nav-link-title">
                    Kegiatan
                </span>
            </a>
        </li>
    </ul>
</div>
</div>
</aside>
<header class="navbar navbar-expand-md navbar-light d-none d-lg-flex d-print-none">
    <div class="container-xl">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbar-menu">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="navbar-nav flex-row order-md-last">
            <div class="nav-item dropdown">
                <a href="#" class="nav-link d-flex lh-1 text-reset p-0" data-bs-toggle="dropdown" aria-label="Open user menu">
                    <span class="avatar avatar-sm" style="background-image: url(./img/user/<?= $row['gambar'] ?>)"></span>
                    <div class="d-none d-xl-block ps-2">
                        <div><?= $row['nama_lengkap'] ?></div>
                    </div>
                </a>
                <div class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <a href="./gantipassword" class="dropdown-item">Ganti Password</a>
                    <a href="./setting" class="dropdown-item">Edit Profil</a>
                    <a href="../logout" class="dropdown-item">Logout</a>
                </div>
            </div>
        </div>
        <div class="collapse navbar-collapse" id="navbar-menu">
            <div>
            </div>
        </div>
    </div>
</header>