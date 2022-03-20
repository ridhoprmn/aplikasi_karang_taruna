<body class="antialiased" style="background-image: url('floralbiru.png');">
    <div class="page">
        <header class="navbar navbar-expand-md navbar-dark navbar-overlap d-print-none">
            <div class="container-xl">
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbar-menu">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <h1 class="navbar-brand navbar-brand-autodark d-none-navbar-horizontal pe-0 pe-md-3">
                    <a href=".">
                        <img src="./img/logoktcpkf.png" width="150" height="32" alt="Sibumdes" class="navbar-brand-image">
                    </a>
                </h1>
                          <div class="navbar-nav flex-row order-md-last">
         
            <div class="nav-item dropdown">
              <a href="./login-admin" class="nav-link d-flex lh-1 text-reset p-0">
                <div class="d-none d-xl-block ps-2">
                  <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M14 8v-2a2 2 0 0 0 -2 -2h-7a2 2 0 0 0 -2 2v12a2 2 0 0 0 2 2h7a2 2 0 0 0 2 -2v-2" /><path d="M20 12h-13l3 -3m0 6l-3 -3" /></svg> Log in
                </div>
              </a>
            </div>
          </div>
                <div class="collapse navbar-collapse" id="navbar-menu">
                    <div class="d-flex flex-column flex-md-row flex-fill align-items-stretch align-items-md-center">
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link <?php if($halaman == 'index') echo "active" ?>" href="./index">
                                    <span class="nav-link-icon d-md-none d-lg-inline-block"><svg
                                            xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24"
                                            viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none"
                                            stroke-linecap="round" stroke-linejoin="round">
                                            <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                            <polyline points="5 12 3 12 12 3 21 12 19 12" />
                                            <path d="M5 12v7a2 2 0 0 0 2 2h10a2 2 0 0 0 2 -2v-7" />
                                            <path d="M9 21v-6a2 2 0 0 1 2 -2h2a2 2 0 0 1 2 2v6" /></svg>
                                    </span>
                                    <span class="nav-link-title">
                                        Beranda
                                    </span>
                                </a>
                            </li>
                            <li
                                class="nav-item <?php if($halaman == 'Visi Misi' OR $halaman == 'Struktur Organisasi' OR $halaman == 'Badan Pengurus') echo"active" ?> dropdown">
                                <a class="nav-link dropdown-toggle" href="#navbar-base" data-bs-toggle="dropdown"
                                    role="button" aria-expanded="false">
                                    <span class="nav-link-icon d-md-none d-lg-inline-block"><svg
                                            xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24"
                                            viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none"
                                            stroke-linecap="round" stroke-linejoin="round">
                                            <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                            <polyline points="12 3 20 7.5 20 16.5 12 21 4 16.5 4 7.5 12 3" />
                                            <line x1="12" y1="12" x2="20" y2="7.5" />
                                            <line x1="12" y1="12" x2="12" y2="21" />
                                            <line x1="12" y1="12" x2="4" y2="7.5" />
                                            <line x1="16" y1="5.25" x2="8" y2="9.75" /></svg>
                                    </span>
                                    <span class="nav-link-title">
                                        Profil
                                    </span>
                                </a>
                                <div class="dropdown-menu">
                                    <div class="dropdown-menu-columns">
                                        <div class="dropdown-menu-column">
                                            <a class="dropdown-item <?php if($halaman == 'Visi Misi') echo"active" ?>"
                                                href="./visi-misi">
                                                Visi Misi
                                            </a>
                                            <a class="dropdown-item <?php if($halaman == 'Struktur Organisasi') echo"active" ?>"
                                                href="./struktur-organisasi">
                                                Struktur Organisasi
                                            </a>
                                            <!-- <a class="dropdown-item <?php if($halaman == 'Badan Pengurus') echo"active" ?>" href="./badan-pengurus">
                                                Badan Pengurus
                                            </a> -->
                                            <div class="dropend">
                                                <a href="anggota" class="dropdown-item">Anggota</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="nav-item <?php if($halaman == 'Kegiatan') echo "active" ?>">
                                <a class="nav-link" href="kegiatan">
                                    <span class="nav-link-icon d-md-none d-lg-inline-block"><svg
                                            xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24"
                                            viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none"
                                            stroke-linecap="round" stroke-linejoin="round">
                                            <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                            <rect x="4" y="4" width="6" height="5" rx="2" />
                                            <rect x="4" y="13" width="6" height="7" rx="2" />
                                            <rect x="14" y="4" width="6" height="7" rx="2" />
                                            <rect x="14" y="15" width="6" height="5" rx="2" /></svg>
                                    </span>
                                    <span class="nav-link-title">
                                        Kegiatan
                                    </span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </header>