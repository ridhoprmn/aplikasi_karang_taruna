-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2022 at 01:20 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `desa`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_anggota`
--

CREATE TABLE `tb_anggota` (
  `no` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jabatan` varchar(25) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_ktp` varchar(25) NOT NULL,
  `no_hp` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_anggota`
--

INSERT INTO `tb_anggota` (`no`, `user_id`, `nama`, `jabatan`, `alamat`, `no_ktp`, `no_hp`) VALUES
(7, 0, 'DIAN HERMAWAN', 'Pembina Umum', 'Parung Tanjung', '130223212515123', '081212542512'),
(8, 0, 'PUTRO UTOMO BUSTIANTO', 'Ketua MPKT', 'Pabuaran', '130223423232123', '081395232512'),
(9, 0, 'ZAENAL ABIDIN, S.T', 'Anggota MPKT', 'Parung Tanjung', '130289038265123', '081212512512'),
(10, 0, 'UMAR', 'Anggota MPKT', 'Cicadas', '130289292816123', '081432122512'),
(11, 0, 'KANIM SAEPUDIN ', 'Anggota MPKT', 'Cicadas', '130221514216173', '081216441251'),
(12, 0, 'YOGI GUS SUPRAYOGI', 'Anggota MPKT', 'Cicadas', '130285234525123', '081272342522'),
(13, 0, 'SUMPENA', 'Anggota MPKT', 'Pabuaran', '135532162515523', '0813512341512'),
(14, 0, 'YUDI ABADI', 'Ketua PH	', 'Parung Tanjung', '130489251262423', '081212643512'),
(15, 0, 'YUSUP SAEPUDIN', 'Wakil Ketua PH	', 'Parung Tanjung', '130225283235223', '081215122452'),
(16, 0, 'BURHANUDIN', 'Wakil Ketua PH	', 'Parung Tanjung', '130251236625123', '0815231422512'),
(17, 0, 'MUHAMAD GOZALI', 'Sekertaris PH	', 'Pabuaran', '135231767515123', '08137324712'),
(18, 0, 'DAUD SAPUTRA', 'Bendahara PH	', 'Parung Tanjung', '130200573655123', '08120192512'),
(19, 0, 'AHMAD YANI', 'Ketua KKIE	', 'Cicadas', '130281284225123', '08131283512'),
(20, 0, 'JAJANG', 'Anggota KKIE	', 'Parung Tanjung', '130225234132123', '081351265125'),
(21, 0, 'EDI MULYANA', 'Anggota KKIE	', 'Pabuaran', '130223261322123', '081251272512'),
(22, 0, 'JAENUDIN', 'Anggota KKIE	', 'Pabuaran', '130253512739023', '081215123512'),
(23, 0, 'SAEPUDIN', 'Anggota KKIE	', 'Parung Tanjung', '1302258770923091', '081212068237'),
(24, 0, 'KUNJOYO', 'Anggota KKIE	', 'Cicadas', '130209847615123', '081328369512'),
(25, 0, 'KOMARUDIN', 'Anggota KKIE	', 'Cicadas', '130223512018233', '0812512832512'),
(26, 0, 'ASEP JAMALUDIN', 'Ketua OSB	', 'Parung Tanjung', '1302256712322123', '081212512972'),
(27, 0, 'JAJA MIHARJA', 'Anggota OSB	', 'Pabuaran', '130229032912123', '081290292512'),
(28, 0, 'DEDE ROLIS', 'Anggota OSB	', 'Cicadas', '130249203605923', '081219203512'),
(29, 0, 'HERMAN WIJAYA', 'Anggota OSB	', 'Cicadas', '1302258949282123', '081298902512'),
(30, 0, 'SYAHRIL SIDIK', 'Anggota OSB	', 'Pabuaran', '132319029837283', '0812920382512'),
(31, 0, 'ISMAIL', 'Anggota OSB	', 'Parung Tanjung', '130289293652123', '08124215212'),
(32, 0, 'SUHENDI SELAMET', 'Anggota OSB	', 'Parung Tanjung', '132352340022376', '0838105252512'),
(33, 0, 'ABDUL FATAH', 'Ketua KPM	', 'Parung Tanjung', '132312179002231', '089712550012'),
(34, 0, 'ILHAM DAROJAT', 'Anggota KPM	', 'Pabuaran', '130289270092823', '081819283764'),
(35, 0, 'ANDRI WIBOWO', 'Anggota KPM	', 'Parung Tanjung', '130229327493123', '081312462512'),
(36, 0, 'HASAN KARIMUN', 'Anggota KPM	', 'Cicadas', '130285827325123', '081234822512'),
(37, 0, 'AFRIZAL BAIHAKI', 'Anggota KPM	', 'Parung Tanjung', '130239034132123', '081323468932'),
(38, 0, 'M. NAUFAL AL-H', 'Anggota KPM	', 'Parung Tanjung', '130242872625233', '081092832512'),
(39, 0, 'M. FIKRI APANDI ', 'Anggota KPM	', 'Cicadas', '130551241712123', '081423123512'),
(40, 0, 'EKA PERMANA', 'Ketua LHKD	', 'Cicadas', '130329826125123', '089809202512'),
(41, 0, 'ABDUL SYUKUR', 'Anggota LHKD	', 'Cicadas', '130928327125123', '081012865212'),
(42, 0, 'ARPAN SUDRAJAT', 'Anggota LHKD	', 'Cicadas', '130092837015123', '083827462536'),
(43, 0, 'HESTI RISTAMI', 'Anggota LHKD	', 'Cicadas', '130293847262323', '081375127881'),
(44, 0, 'NITA ANDRIYANI', 'Anggota LHKD	', 'Cicadas', '1302512612326123', '0812162125122'),
(45, 0, 'YADI RAMDANI', 'Ketua UKSKUB	', 'Cicadas', '130242138138723', '08121109283'),
(46, 0, 'JUNAEDI', 'Anggota UKSKUB	', 'Cicadas', '130209309286373', '081385746273'),
(47, 0, 'IRWAN SALAI', 'Anggota UKSKUB	', 'Cicadas', '130209087468241', '081251252519'),
(48, 0, 'TAUFIK ISMAIL', 'Anggota UKSKUB	', 'Parung Tanjung', '130928083715123', '089829382512'),
(49, 0, 'AFRIZKI AMRILLAH, S.Kom', 'Anggota UKSKUB	', 'Pabuaran', '130782090011237', '0813412617512'),
(50, 0, 'HERI SETIAWAN', 'Ketua PPK	', 'Cicadas', '103929152321234', '083225412512'),
(51, 0, 'AHMAD YANI', 'Anggota PPK	', 'Parung Tanjung', '130423521368212', '081794822512'),
(52, 0, 'SANAN', 'Anggota PPK	', 'Cicadas', '130203902938232', '08321257012'),
(53, 0, 'AGUS JUNJUNAN', 'Anggota PPK	', 'Parung Tanjung', '130200928365123', '0818192839212'),
(54, 0, 'DEDE SULAEMAN', 'Anggota PPK	', 'Parung Tanjung', '130241237162123', '080928392822'),
(55, 0, 'YAKUB', 'Anggota PPK	', 'Pabuaran', '1309283214990123', '081292038721'),
(56, 0, 'FERY SETIAWAN', 'Anggota PPK	', 'Pabuaran', '130209128038231', '0878172362512'),
(57, 0, 'NURI ALAM JAYA', 'Anggota PPK	', 'Pabuaran', '130910293825123', '081910291212'),
(58, 0, 'TEMY ADITIA', 'Ketua PL	', 'Pabuaran', '130292038722123', '081211425412'),
(59, 0, 'CHAERUDIN', 'Anggota PL	', 'Parung Tanjung', '130909292832523', '081309472512'),
(60, 0, 'GOZALI', 'Anggota PL	', 'Cicadas', '132312509231519', '081891280232'),
(61, 0, 'SETIA BUDI', 'Anggota PL	', 'Cicadas', '130220920033675', '081792829374'),
(62, 0, 'ALDI INSANI PRIAMBODO', 'Anggota PL	', 'Pabuaran', '130902837423223', '081920923022'),
(63, 0, 'ADHITYA GEORGI PANGESTU', 'Anggota PL	', 'Parung Tanjung', '130220920332123', '081210293822'),
(64, 0, 'AHMAD JUNAEDI', 'Anggota PL	', 'Parung Tanjung', '130220283166523', '081567889512');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kegiatan`
--

CREATE TABLE `tb_kegiatan` (
  `id_kegiatan` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(500) NOT NULL,
  `tanggal` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_kegiatan`
--

INSERT INTO `tb_kegiatan` (`id_kegiatan`, `user_id`, `judul`, `isi`, `gambar`, `tanggal`) VALUES
(42, 0, 'Jasa Taman Asri Desa Cicadas, Gunung Putri, Bogor', '<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\"><strong>Gibrantaman</strong>&nbsp;&ndash; Merupakan Jasa pemasangan taman untuk hotel ataupun fasilitas umum yang memerlukan nuansa alam yang sejuk serta alami. Layanan Taman kami telah dipercaya dari klien perseorangan, perusahaan swasta serta beberapa instansi pemerintahan untuk melakukan proyek pembuatan tanaman, rental taman, desain tanaman, pembuatan tanaman vertikal, perawatan &amp; renovasi tanaman, pengerjaan carpot, pembuatan gazebo serta pembuatan kolam, pada proyek sekala kecil, sedang serta besar yang berada di sasak panjang, Depok, Bogor, Bekasi, Jakarta serta sekitarnya.</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Jasa buat tanaman untuk rumah, gedung sekolah ataupun fasilitas umum yang butuh nuansa alam yang sejuk dan alami. Jasa Taman kami telah dipercaya dari konsumen perorangan, perusahaan swasta dan beberapa instansi pemerintahan untuk mengerjakan proyek pembuatan taman, rental taman, desain tanaman, pembuatan taman vertikal, perawatan &amp; renovasi taman, pengerjaan carpot, pembuatan gazebo dan pembuatan kolam, pada proyek sekala kecil, sedang dan besar yang berada di sasak panjang, Depok, Bogor, Bekasi, Jakarta dan sekitarnya.</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Gibrantaman Pembuatan Taman Murah serta harga bisa NEGO karna Gibrantaman langsung ambil Bibit serta tanaman hias dari para petani tanaman hias di daerah sawangan, Pengasinan, Tajurhalang,serta Bojonggede, Bogor.</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Jasa Pembuatan Gibrantaman Tukang di Desa Cicadas, Gunung Putri, Bogor :</span></span></h1>\r\n\r\n<ul>\r\n	<li>\r\n	<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Pembuatan Berbagai Bentuk Taman di Desa Cicadas, Gunung Putri, Bogor</span></span></h1>\r\n	</li>\r\n	<li>\r\n	<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Rental Tanaman Untuk Kantor, dll di Desa Cicadas, Gunung Putri, Bogor</span></span></h1>\r\n	</li>\r\n	<li>\r\n	<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Pembuatan Kolam Minimalis di Desa Cicadas, Gunung Putri, Bogor</span></span></h1>\r\n	</li>\r\n	<li>\r\n	<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Perawatan &amp; Renovasi Taman di Desa Cicadas, Gunung Putri, Bogor</span></span></h1>\r\n	</li>\r\n	<li>\r\n	<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Pengerjaan Carpot di Desa Cicadas, Gunung Putri, Bogor</span></span></h1>\r\n	</li>\r\n	<li>\r\n	<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Desain Taman di Desa Cicadas, Gunung Putri, Bogor</span></span></h1>\r\n	</li>\r\n	<li>\r\n	<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Suplier Berbagai Tanaman Hias &amp; Rumput di Desa Cicadas, Gunung Putri, Bogor</span></span></h1>\r\n	</li>\r\n	<li>\r\n	<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Pembuatan Saung/Gazebo di Desa Cicadas, Gunung Putri, Bogor</span></span></h1>\r\n	</li>\r\n</ul>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Didukung oleh tenaga kerja yang ahli dan proses penanganan profesional dalam bidang pembuatan jasa taman dan pembuatan kolam. Jasa Tukang Taman Profesional dapat menyelesaikan berbagai macam desain taman seperti desain taman minimalis, taman kering, layanan taman vertical taman rooftop dan masih banyak pengerjaan profesional dibidang taman dan kolam.</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Berkat dukungan dan kepercayaan Anda, kami telah menangani banyak pengerjaan landscape dan taman dalam skala kecil, sedang dan besar. Pengguna jasa kami datang dari berbagai kalangan, baik perorangan maupun perusahaan swasta atau instansi pemerintah. Urusan &ldquo;Konsultan dan Kontraktor Landscape&rdquo; project Anda, percayakan pada kami</span></span></h1>\r\n', '0220221614nd0220211359ndtaman.jpg', '2021-06-16'),
(43, 0, 'Sosialisasi Izin P-IRT Produk Pangan di UMKM Desa Cicadas Gunung Putri', '<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Bogor - Berdasarkan peraturan Badan Pengawas Obat Dan Makanan (BPOM) Nomor 22 tahun 2018 tentang Pedoman Pemberian Sertifikat Pangan Industri Rumah Tangga, dijelaskan bahwa pengertian PIRT adalah sertifikat izin Pangan Industri Rumah Tangga (PIRT) yang diberikan oleh bupati atau walikota melalui dinas kesehatan. Tetapi, banyak UMKM yang kurang mengetahui dan memahami manfaat dari PIRT ini terutama dalam hal legalitas usaha. Sehingga, banyak UMKM yang belum memiliki legalitas usaha termasuk di Desa Cicadas, Gunung Putri.</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Terkait permasalahan tersebut, mahasiswa Teknologi Pangan dan Gizi dari Universitas Djuanda Bogor yang dibimbing langsung oleh ibu Noli Novidahlia Ir., M.Si telah melaksanakan Kuliah Kerja Nyata di Desa Cicadas Gunung Putri selama 1 bulan. Mahasiswa tersebut masuk ke dalam Kelompok 2 KKN yang terdiri dari tujuh orang yaitu Yunita, Ria, Tiara, Sindi, Mia, Febri dan Ulfah, membantu melakukan sosialisasi izin PIRT dan label pangan produk UMKM, kemudian mahasiswa juga melihat dan membantu proses produksi produk di UMKM. Menurut Yunita sebagai ketua kelompok 2 KKN, kegiatan ini sangat diterima dengan antusias oleh ketua Forum UMKM Desa Cicadas yaitu ibu Suryani maupun para pemilik UMKM yang mengikuti sosialisasi tersebut.</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Bogor - Berdasarkan peraturan Badan Pengawas Obat Dan Makanan (BPOM) Nomor 22 tahun 2018 tentang Pedoman Pemberian Sertifikat Pangan Industri Rumah Tangga, dijelaskan bahwa pengertian PIRT adalah sertifikat izin Pangan Industri Rumah Tangga (PIRT) yang diberikan oleh bupati atau walikota melalui dinas kesehatan. Tetapi, banyak UMKM yang kurang mengetahui dan memahami manfaat dari PIRT ini terutama dalam hal legalitas usaha. Sehingga, banyak UMKM yang belum memiliki legalitas usaha termasuk di Desa Cicadas, Gunung Putri.</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Terkait permasalahan tersebut, mahasiswa Teknologi Pangan dan Gizi dari Universitas Djuanda Bogor yang dibimbing langsung oleh ibu Noli Novidahlia Ir., M.Si telah melaksanakan Kuliah Kerja Nyata di Desa Cicadas Gunung Putri selama 1 bulan. Mahasiswa tersebut masuk ke dalam Kelompok 2 KKN yang terdiri dari tujuh orang yaitu Yunita, Ria, Tiara, Sindi, Mia, Febri dan Ulfah, membantu melakukan sosialisasi izin PIRT dan label pangan produk UMKM, kemudian mahasiswa juga melihat dan membantu proses produksi produk di UMKM. Menurut Yunita sebagai ketua kelompok 2 KKN, kegiatan ini sangat diterima dengan antusias oleh ketua Forum UMKM Desa Cicadas yaitu ibu Suryani maupun para pemilik UMKM yang mengikuti sosialisasi tersebut.</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Dengan adanya kegiatan ini diharapkan UMKM Desa Cicadas lebih memperhatikan akan pentingnya legalitas produk UMKM serta membantu UMKM dalam membuat label pangan yang baik agar menjadi usaha yang mampu bersaing dalam era global.</span></span></h1>\r\n', '0220221618nd0220211356ndsosialisasi.jpg', '2021-08-24'),
(44, 0, 'Cicadas Gunung Putri Bogor, Peredaran Gelap Obat Type G Psikotropika Mengkhawatirkan', '<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\"><strong>Cicadas-Gunung Putri Jawa Barat| Media Nasional berkeadilan| Kamis (11 Februari 2021),</strong>&nbsp;Disepanjang jalan Cicadas Gunung Putri terdapat berbagai toko obat terlarang Type &quot;G&quot; bebas beroperasi dan menjajakan alias mengedarkan secara gelap obat-obat terlarang tersebut tanpa ada rasa bersalah?.</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Padahal di wilayah lain Jawa Barat Kota Bogor misalnya peredaran obat yang mengandung zat psikotropika ini secara berkali-kali rutin ditindak;&nbsp;</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Dikutip dari &quot;Antara Megapolitan&quot; Kepala Satuan Narkoba Polresta Bogor Kota Kompol Yuni Purwanti mengatakan peredaran obat keras ilegal di Bogor, Jawa Barat, kini cukup mengkhawatirkan.</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">&quot;Obat ilegal ini banyak dijual di warung-warung dan menyasar kalangan remaja,&quot; kata Yuni di Mapolresta Bogor Kota, Rabu.</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Pada Senin (23/1) silam, Satuan Narkoba Polresta Bogor Kota menangkap salah seorang pengedar obat keras ilegal yang kerap digunakan anak punk dan anak jalanan sebagai psikotropika.</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Pelaku berinisal FN (26) ditangkap di warungnya yang terletak di Jl Pancasan, Kelurahan Pasir Jaya, Kecamatan Bogor Barat. Dari tangan pelaku petugas menyita barang bukti 527 butir pil Hexseymer dan 1.080 butir pil Tramadol.&nbsp;</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">● Penelusuran Jurnalis&nbsp;</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Pada malam Rabu (10 februari 2021),</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Bertempat di RT 1 RW 7 kecamatan Cicadas Kelurahan Cicadas Kecamatan Cileungsi Kabupaten Bogor jelas terlihat toko alias warung mirip atlas kosmetik ini berdiri kokoh tanpa ada rasa bersalah yang mana tokonya seperti toko resmi bahkan mirip Apotek yang menjadi regulasi dibawah kendali dinas kesehatan kabupaten Bogor dan lembaga penegak hukum yang lain di Wilayah kabupaten Bogor.</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Toko yang berada di RT 1 RW 7 ini persis bersebelahan dengan salah satu pabrik di sebelah kiri PT BH apabila kita dari arah pertigaan jalan raya Gunung Putri menuju ke Puri Cikeas belok kiri maka terdapat berbagai toko yang mengedarkan obat-obat haram informasi dari warga sekitar pengedar obat haram ini bahwa betul toko yang berada di RT 7 RW 1 Desa Cicadas Kecamatan Gunung Putri Kabupaten Bogor ini secara terang benderang mempunyai langganan yang sangat banyak untuk dijadikan customer ungkap ibu usia sepuh tak jauh dari TKP.</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Adapun barang yang kerap disita petugas saat penggrebekan warung macam ini berupa :</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">1. Tramadol&nbsp;</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">2. Trihex&nbsp;</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">3. Tramadol Kapsul&nbsp;</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">4. Tramadol Kupasan&nbsp;</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">5. Hexymer&nbsp;</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Hasil penjualan obat keras secara liar ini bisa mencapai Rp 300 ribu hingga Rp 3 juta perhari, indikasinya setiap bulan bisnis gelap ini dapat meraup keuntungan hitam puluhan juta per bulan.</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Dalam peredaran alias menjajakan dagangannya berupa obat-obat terlarang berjenis tipe G perkara ini telah diinvestigasi oleh media nasional dan bertahun-tahun lamanya sehingga pada tahun 2021 bulan Februari data record dari toko-toko ini telah diinvestigasi dikaji ditelusuri secara ilmiah dan memang sesuai fakta didapati peredaran obat-obat keras secara Ilegal dalam jumlah ribuan kapsul.</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Padahal konsekwensi hukum Jelas tegas bahwa pelaku akan dijerat Pasal 197 dan atau Pasal 196 Undang-Undang Nomor 36 Tahun 2009 tentang Kesehatan, dengan ancaman pidana penjara paling lama 15 tahun.</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Malam Rabu didapati berinisial &quot;TD&quot;, tanpa basa basi langsung mengulurkan tangannya menggenggam uang, ditolak lantas telp koleganya dari seberang sana penelp mengaku wartawan tak jelas apa niat dan maksud nya? berbicara sopan dan tak ada keputusan apa-apa selain membujuk agar tak dilapor maupun diekspos.</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Dengan tulisan ini diharap Polri maupun pihak berwenang segera menindak lanjuti informasi publik ini sebelum pengedar melarikan diri. [□]</span></span></h1>\r\n', '0220221622nd0220211354ndobat.jpg', '2021-02-11'),
(45, 0, 'Viral, Wanita Pukuli 5 Gadis Yang Tolak Prostitusi di Gunung Putri Bogor', '<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\"><strong>Bogor -&nbsp;</strong>Sebuah video yang memperlihatkan seorang&nbsp;<a href=\"https://www.suara.com/tag/wanita\">wanita</a>&nbsp;melakukan penganiayaan, terhadap lima&nbsp;<a href=\"https://www.suara.com/tag/gadis\">gadis</a>&nbsp;di bawah umur viral di media sosial.</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Diketahui, video viral itu terjadi di wilayah&nbsp;<a href=\"https://www.suara.com/tag/gunung-putri\">Gunung Putri</a>&nbsp;Kabupaten&nbsp;<a href=\"https://www.suara.com/tag/bogor\">Bogor</a>, Jawa Barat.</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Salah satu orang tua yang tidak terima atas perlakuan kepada anaknya tersebut, kini melaporkan ke pihak kepolisian&nbsp;<a href=\"https://www.suara.com/tag/polres-bogor\">Polres Bogor</a>.</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Humas Polres Bogor, AKP Ita Puspita membenarkan terkait laporan dari salah satu orang tua korban, yang tidak terima anaknya mendapatkan perlakuan tidak senonoh.</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">&quot;Jadi gini, tadi pagi tuh belum ada laporan ke polsek tapi kita jemput bola babin jemput bola datang ke rumah korban untuk pernyataan bener atau engganya gitu ya,&quot; kata Ita. kepada wartawan, Senin (27/12/2021).</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">&quot;Ternyata kata orang tua nya bener di pukul, nah baru orang tua nya lapor ke Polres, sekarang masih dalam proses pemeriksaan,&quot; ucapnya.</span></span></h1>\r\n', '0220221639nd19035-ilustrasi-prostitusi-online-artis-ta.jpg', '2021-12-27'),
(46, 0, 'Pemilik Pabrik Styrofoam Terbakar di Gunung Putri Rugi Rp3 M', '<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\"><strong>GUNUNGPUTRI &ndash;&nbsp; BOGOR</strong>, Serpihan bangunan imbas kebakaran yang menghanguskan pabrik styrofoam di Jalan Mercedes Benz, Desa Cicadas, Kecamatan Gunung Putri Minggu (8/11/2020) malam, menyisakan luka yang mendalam bagi Johan Wijaya.</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Pasalnya, pemilik pabrik tersebut mengaku mengalami kerugian hingga Rp 3 miliar.</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">&ldquo;Aset pabrik, barang produksi dan satu unit mobil terbakar, kurang lebih Rp3 miliar kerugian saya,&rdquo; ungkap Johan di lokasi pabrik kepada Radar Bogor Senin (9/11/2020).</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Menurutnya, peristiwa ini merupakan yang pertama kali terjadi di pabriknya yang telah berdiri sejak 1990. Sebanyak 60 karyawannya terpaksa diliburkan sementara dampak kebakaran tersebut.</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Kebakaran diduga, Johan menceritakan, disebabkan korsleting listrik yang berasal dari salah satu mesin produksi.</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Karena terjadi di hari Minggu, pihaknya tidak sempat mengantisipasi kebakaran besar tersebut lantaran semua karyawan tengah libur dan hanya ada petugas keamanan di lokasi.</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Beruntung, petugas keamanan dibantu warga setempat untuk mengamankan sebagian aset-aset pabrik. Mesin utama produksi pun masih sempat terselamatkan.</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">&ldquo;Karena mesinnya masih utuh, hanya sebagian yang terbakar, jadi masih bisa kita produksi lagi. Hanya tinggal pemulihan saja,&rdquo; tandasnya.(cok)</span></span></h1>\r\n', '0220221641ndIMG-20201109-WA0034-640x350.jpg', '2020-11-08'),
(47, 0, 'Menyambut Bulan Suci Ramadhan Babinsa Koramil 2105 Gunung Putri dan Warga Giat Kerja Bakti', '<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Babinsa Koramil 2105/Gunung Putri beserta warga dan Tokoh masyarakat pada hari ini minggu 11 April 2021 telah melaksanakan kerja bakti pembersihan TPU mumunggang RT 02 RW 13 kampung parung tanjung, Desa Cicadas, Kecamatan Gunung Putri, Kabupaten Bogor.</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">&ldquo;Kegiatan kerja bakti tersebut diprakarsai oleh ketua kadus 4 dan ketua RW 13 beserta tokoh masyarakat tokoh agama tokoh pemuda yg ada di wilayah lingkungan RW 13.</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Turut hadir dalam mengikuti Giat kerja bakti tersebut, ketua kadus 4 jaya, Babinsa Cicadas, ketua RW 13 Hadi,<br />\r\nustad pardi, Tokoh masyarakat haji Opik,<br />\r\nKetua RT 2 Hanen, Ketua RT Harun. 11/04/2021.</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Dalam kegiatan kerjabakti kali ini tetap selalu mentaati protokol kesehatan, tidak lupa tetap memperhatikan dan melakaanakan 5M, Memakai Masker, Mencuci Tangan Menjaga Jarak, Menghindari Kerumunan, dan Mengurangi Aktifitas/Mobilitas.</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Babinsa Koramil 2105/Gunung Putri Mengatakan,&rdquo; giat kerja bakti ini mengingat akan datangnya bulan suci Ramadhan, para tokoh masyarakat dibantu warga dan Babinsa mengadakan kerjabakti untuk kebersihan makam.</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Saya sebagai Babinsa,menghimbau kepada masyarakat agar bisa saling mendukung kegiatan kerja bakti yang diadakan dilingkungan agar bersih, dimana sekarang masih keadaan Pandemi Covid-19,&rdquo;saya juga mengingatkan kepada masyarakat agar selalu mentaati 5M,&rdquo;pungkasnya</span></span></h1>\r\n', '0220221644ndIMG-20210411-WA0033-750x450.jpg', '2021-04-11'),
(48, 0, 'Resimen 1 Brimob Cikeas, Polsek Gunung Putri dan Koramil gunung putri melakukan penyemprotan Disinfe', '<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Gunung putri. Bogor. Untuk mencegah penyebaran virus covid 19 di wilayah gunung putri, masih di lalukan upaya upaya antara lain dengan penyemprotan disinfektan.</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Siang tadi sekitar jam 11.00 wib, hari Rabu, tanggal 08 juli 2020. Dilakukan penyemprotan Disinfektan di desa cicadas gunung putri., yaitu Rw 08 dan Rw 17.</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Kegiatan penyemprotan ini dipimpin oleh Kanit Binmas Polsek Gunung Putru Akp. Syaiful Fajar dan anggota dari Resimen 1 Brimob Cikeas 8 orang, anggota polsek gunung putri 2 orang, anggota Koramil 3 orang dan Ketua Rw setempat.</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Selama kegiatan berlangsung lancar dan aman terkendali, dan warga cicadas antusias dalam kegiatan penyemprotan disinfektan untuk mencegah penyebaran virus covid 19. (admin gnputri).</span></span></h1>\r\n', '0220221646ndIMG-20200708-WA0125.jpg', '2020-07-08'),
(49, 0, 'Ribuan Ikan Mati di Situ Gunung Putri Diduga Tercemar Limbah', '<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\"><strong>BOGOR, investor.id&nbsp;</strong>&nbsp;- Ribuan ikan&nbsp; mati secara mendadak di Situ Citongtut, Desa Cicadas, Gunung Putri, Kabupaten Bogor sejak kemarin membuat heboh warga sekitar. Sebab, jumlah ikan mati yang mengambang di permukaan air terus bertambah.</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Kondisi tersebut banyak diperbincangkan di media sosial dan warga mendesak harus ada tindak lanjut dari Dinas Lingkungan Hidup (DLH) Kabupaten Bogor.</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Bahkan sejumlah pegiat alam menduga banyaknya ikan mati mendadak itu disebabkan air situ tercemar limbah dari sejumlah pabrik yang ada di sekitar danau itu.</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Pegiat Bela Alam Gunung Putri, Heru Kurnia mengatakan, kondisi air situ semakin parah. Hal itu karena limbah yang terus mengalir, yang membuat air berwarna hitam dan bau.</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">&quot;Kemarin sudah disidak sama dewan (DPRD Kabupaten Bogor), dan terbukti itu limbah pabrik. Sekarang kita mau bersiap untuk evakuasi ikan yang mati,&quot; ungkap Heru, Rabu (3/2/2021).</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Sementara itu, Anggota Komisi III (Bidang Lingkungan) Dewan Perwakilan Rakyat Daerah (DPRD) Kabupaten Bogor, Ahmad Fatoni mendesak Dinas Lingkungan Hidup (DLH) untuk cepat tanggap, mengatasi masalah matinya ribuan ikan yang diduga akibat limbah pabrik itu.</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">&quot;Saya sudah langsung ke kepala dinas, saya minta itu segera langsung dilakukan langkah antisipasi,&quot; katanya.</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Saat melakukan sidak, lanjut Fatoni, ia melakukan penelusuran ke jalur-jalur pembuangan limbah pabrik yang ada di sekitar Setu Citongtut.</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">&quot;Ada 17 pabrik yang saluran pembuangan limbahnya menuju Situ Citongtut, ada sekitar 5 hingga 6 pabrik yang kita curigai,&quot; jelas Fatoni.</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Fatoni mendorong agar pabrik-pabrik yang ada di sekitar Situ Citongtut membuat komitmen dengan pemerintah dan masyarakat sekitar.</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">&quot;Saya ngobrol sama pemerintah desa. Kita bikin MoU saja dengan pabrik-pabrik, jangan sampai terulang lagi, dan harus bertanggung jawab jika ada pencemaran lagi.&quot;</span></span></h1>\r\n', '0220221648nd1612322391.jpg', '2021-02-03');

-- --------------------------------------------------------

--
-- Table structure for table `tb_profil`
--

CREATE TABLE `tb_profil` (
  `id_profil` int(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `isiprofil` text NOT NULL,
  `hitung` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_profil`
--

INSERT INTO `tb_profil` (`id_profil`, `user_id`, `isiprofil`, `hitung`) VALUES
(1, 1, '<p><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Karang Taruna adalah Organisasi Sosial wadah pengembangan generasi muda yang tumbuh dan berkembang atas dasar kesadaran dan tanggung jawab sosial dari, oleh dan untuk masyarakat terutama generasi muda di wilayah desa/ kelurahan dan terutama bergerak di bidang usaha kesejahteraan sosial.</span></span></p>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Karang Taruna adalah suatu organisasi sosial, perkumpulan sosial yang dibentuk oleh masyarakat yang berfungsi sebagai sarana partisipasi masyarakat dalam melaksanakan Usaha Kesejahteraan Sosial (UKS).&nbsp;Karang Taruna Desa Cicadas itu sendiri dibangun pada tahun 2012 dengan 18 Rw dengan 18 bagian karang taruna pada masing &ndash; masing Rw, terdapat 42 anggota pada kepengurusan karang taruna Desa Cicadas ini dengan 6 kepengurusan harian. Karang taruna yang berdiri dibawah kepengurusan Desa Cicadas ini telah hampir 9 tahun dengan pergantian kepemimpinan yang telah berubah &ndash; ubah.</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Sebagai wadah pengembangan generasi muda, Karang Taruna merupakan tempat diselenggarakannya berbagai upaya atau kegiatan untuk meningkatkan dan mengembangkan cipta, rasa, karsa, dan karya generasi muda dalam rangka pengembangan sumber daya manusia (SDM).</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Karang Taruna tumbuh dan berkembang atas dasar adanya kesadaran terhadap keadaan dan permasalahan di lingkungannya serta adanya tanggung jawab sosial untuk turut berusaha menanganinya. Kesadaran dan tanggung jawab sosial tersebut merupakan modal dasar tumbuh dan berkembangnya Karang Taruna.</span></span></h1>\r\n\r\n<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Karang Taruna tumbuh dan berkembang dari generasi muda, diurus atau dikelola oleh generasi muda dan untuk kepentingan generasi muda dan masyarakat di wilayah desa/kelurahan atau komunitas adat sederajat. Karenanya setiap desa/kelurahan atau komunitas adat sederajat dapat menumbuhkan dan mengembangkan Karang Tarunanya sendiri.</span></span></h1>\r\n\r\n<h1 style=\"text-align:justify\">&nbsp;</h1>\r\n\r\n<p>&nbsp;</p>\r\n', 16),
(2, 1, '<h1 style=\"text-align:center\"><span style=\"font-family:Georgia,serif\"><span style=\"font-size:12pt\"><strong><span style=\"font-size:54.0pt\">Visi</span></strong></span></span></h1>\r\n\r\n<h1 style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\"><strong>&quot;Terwujudnya Desa Cicadas yang Maju, Sejahtera, Asri serta Bersih Lingkungannya&quot;</strong></span></span></h1>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\">\r\n	<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Maju : Memberikan Pelayanan Terbaik kepada masyarakatnya, bertanggung jawab dalam menjalankan tugas, serta mampu berdiri diatas kaki sendiri.</span></span></h1>\r\n	</li>\r\n	<li style=\"text-align:justify\">\r\n	<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Sejahtera : Menunjukan kepada masyarakat Desa Cicadas yang telah berkembang secara normal bersama - sama dengan masyarakat desa lainnya dengan memanfaatkan&nbsp; secara optimal keunggulan komperatif dan kompetitif.</span></span></h1>\r\n	</li>\r\n	<li style=\"text-align:justify\">\r\n	<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">&nbsp;Asri : Menunjukan lingkungan yang tertata dengan rapih sehingga enak dipandang mata.</span></span></h1>\r\n	</li>\r\n	<li style=\"text-align:justify\">\r\n	<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Bersih : Menunjukan lingkungan Desa Cicadas yang terbebas dari limbah dan kotoran, dengan air bersih tanpa tercemar dengan masyarakat yang memiliki ketulusan dan kesadaran dalam menjaga lingkungannya.</span></span></h1>\r\n	</li>\r\n</ul>\r\n\r\n<h1 style=\"text-align:center\"><span style=\"font-family:Georgia,serif\"><span style=\"font-size:12pt\"><strong><span style=\"font-size:54.0pt\">Misi</span></strong></span></span></h1>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\">\r\n	<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Meningkatkan kesolehan sosial anggota masyarakat dalam kehidupan kemasyarakatan.</span></span></h1>\r\n	</li>\r\n	<li style=\"text-align:justify\">\r\n	<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Meningkatkan perekonomian desa yang berdaya saing dengan titik berat pada revitalisasi ekonomi kerakyatan dan pembangunan perekonomian yang berbasis pedesaan.</span></span></h1>\r\n	</li>\r\n	<li style=\"text-align:justify\">\r\n	<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Meningkatkan infrastruktur dan aksesibilitas desa yang berkualitas dan terintegrasi secara berkelanjutan.</span></span></h1>\r\n	</li>\r\n	<li style=\"text-align:justify\">\r\n	<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Meningkatkan pemerataan dan kualitas penyelenggaraan pendidikan.</span></span></h1>\r\n	</li>\r\n	<li style=\"text-align:justify\">\r\n	<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Meningkatkan pelayanan kesehatan yang berkualitas.</span></span></h1>\r\n	</li>\r\n	<li style=\"text-align:justify\">\r\n	<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Meningkatkan tata kelola pemerintahan yang baik dan optimalisasi kualitas pelayanan publik yang prima.</span></span></h1>\r\n	</li>\r\n	<li style=\"text-align:justify\">\r\n	<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Meningkatkan kerjasama lintas sektoral dan pendekatan wilayah dalam pelaksanaan pembangunan desa.</span></span></h1>\r\n	</li>\r\n	<li style=\"text-align:justify\">\r\n	<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Meningkatkan pembinaan dalam keagamaan, kebudayaan, sosial, dan olahraga.</span></span></h1>\r\n	</li>\r\n	<li style=\"text-align:justify\">\r\n	<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Menjaga dan melestarikan cagar budaya, tempat resapan air, dan tanah aset desa serta pemanfaatannya.</span></span></h1>\r\n	</li>\r\n	<li style=\"text-align:justify\">\r\n	<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Optimalisasi penyerapan potensi desa yang diperuntukan bagi kesejahteraan masyarakat.</span></span></h1>\r\n	</li>\r\n	<li style=\"text-align:justify\">\r\n	<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Menumbuhkembangkan kesadaran masyarakat dalam menata dan menjaga lingkungan masyarakat yang asri dan bersih.</span></span></h1>\r\n	</li>\r\n</ul>\r\n', 9),
(3, 1, '3012202104160802122021124950strukturkt.png', 8),
(4, 1, '<ul>\r\n	<li>\r\n	<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Pembina Umum : Kepala Desa Cicadas</span></span></h1>\r\n	</li>\r\n	<li>\r\n	<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Pembina Fungsional : Karang Taruna Kecamatan Gunung Putri</span></span></h1>\r\n	</li>\r\n	<li>\r\n	<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Pembina Tekhnik : Kepala Seksi Kesejahteraan Rakyat Pemerintahan Desa Cicadas</span></span></h1>\r\n	</li>\r\n	<li>\r\n	<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Ketua Majlis Pertimbangan Karang Taruna : Putro Utomo Bustianto</span></span></h1>\r\n	</li>\r\n	<li>\r\n	<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Ketua Pengurus Harian : Yudi Abadi</span></span></h1>\r\n	</li>\r\n	<li>\r\n	<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Bidang Humas &amp; Kerjasama Kemitraan Internal &amp; External : Ahmad Yani</span></span></h1>\r\n	</li>\r\n	<li>\r\n	<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Bidang Olahraga dan Seni Budaya : Asep Jamaludin</span></span></h1>\r\n	</li>\r\n	<li>\r\n	<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Bidang Kerohanian &amp; Pembinaan Mental : Abdul Fatah</span></span></h1>\r\n	</li>\r\n	<li>\r\n	<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Bidang Lingkungan Hidup &amp; Kegawatdaruratan Desa : Eka Permana</span></span></h1>\r\n	</li>\r\n	<li>\r\n	<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Bidang Usaha Kesejahteraan Sosial &amp; Kelompok Usaha Bersama : Yadi Ramdani</span></span></h1>\r\n	</li>\r\n	<li>\r\n	<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Bidang Pendidikan &amp; Pelatihan Ketenagakerjaan : Heri Setiawan</span></span></h1>\r\n	</li>\r\n	<li>\r\n	<h1><span style=\"font-size:18px\"><span style=\"font-family:Georgia,serif\">Bidang Publikasi &amp; Logistik : Temy Aditia</span></span></h1>\r\n	</li>\r\n</ul>\r\n', 5),
(5, 1, '01122021114309favicon.png', 26);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `user_id` int(4) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `level` enum('Administrator','Staff','Unit Kerja') NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`user_id`, `username`, `password`, `nama_lengkap`, `level`, `gambar`) VALUES
(1, 'admin', '7c347dbad0757022131b551bb3eb2aea', 'admin', 'Administrator', '02012022161236anonim.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_anggota`
--
ALTER TABLE `tb_anggota`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tb_kegiatan`
--
ALTER TABLE `tb_kegiatan`
  ADD PRIMARY KEY (`id_kegiatan`);

--
-- Indexes for table `tb_profil`
--
ALTER TABLE `tb_profil`
  ADD PRIMARY KEY (`id_profil`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_anggota`
--
ALTER TABLE `tb_anggota`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `tb_kegiatan`
--
ALTER TABLE `tb_kegiatan`
  MODIFY `id_kegiatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `tb_profil`
--
ALTER TABLE `tb_profil`
  MODIFY `id_profil` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
