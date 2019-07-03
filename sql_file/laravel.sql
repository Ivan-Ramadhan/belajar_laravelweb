-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 03, 2019 at 04:28 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `gambar`
--

CREATE TABLE `gambar` (
  `id` int(10) NOT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gambar`
--

INSERT INTO `gambar` (`id`, `file`, `keterangan`, `created_at`, `updated_at`) VALUES
(3, '1561968966_EXCEL2.png', 'Excel Icon', '2019-07-01 08:16:06', '2019-07-01 08:16:06'),
(5, '1561968996_MAIL.jpeg', 'Mail Icon', '2019-07-01 08:16:36', '2019-07-01 08:16:36'),
(8, '1561969034_UPLOADFILE.jpeg', 'Upload Icon', '2019-07-01 08:17:14', '2019-07-01 08:17:14'),
(9, '1561985723_CRUD.png', 'CRUD Icon', '2019-07-01 12:55:23', '2019-07-01 12:55:23'),
(10, '1561985736_PDF.jpeg', 'PDF Icon', '2019-07-01 12:55:36', '2019-07-01 12:55:36'),
(11, '1561985758_ABOUT2.png', 'About Icon', '2019-07-01 12:55:58', '2019-07-01 12:55:58'),
(12, '1561985981_38-67-1-SM.pdf', 'PDF', '2019-07-01 12:59:41', '2019-07-01 12:59:41'),
(14, '1562028889_BAB_II.pdf', 'pdf', '2019-07-02 00:54:49', '2019-07-02 00:54:49'),
(15, '1562028914_siswa.xlsx', 'excel', '2019-07-02 00:55:14', '2019-07-02 00:55:14'),
(17, '1562029002_Datek Pelanggan Fiber.xlsx', 'Pelanggan Fiber', '2019-07-02 00:56:42', '2019-07-02 00:56:42'),
(18, '1562029039_GPON_New.xlsx', 'Daftar GPON', '2019-07-02 00:57:19', '2019-07-02 00:57:19'),
(19, '1562029110_ODC.xlsx', 'Daftar ODC', '2019-07-02 00:58:30', '2019-07-02 00:58:30'),
(20, '1562029145_ODP.xlsx', 'Daftar ODP', '2019-07-02 00:59:05', '2019-07-02 00:59:05'),
(24, '1562032348_Datek Pelanggan Non Fiber.xlsx', 'Pelanggan Copper', '2019-07-02 01:52:28', '2019-07-02 01:52:28'),
(25, '1562032383_DSLAM.xlsx', 'Daftar DSLAM', '2019-07-02 01:53:03', '2019-07-02 01:53:03'),
(26, '1562032403_MSAN1.xlsx', 'Daftar MSAN', '2019-07-02 01:53:23', '2019-07-02 01:53:23'),
(27, '1562032440_RK_new.xlsx', 'Daftar RK', '2019-07-02 01:54:00', '2019-07-02 01:54:00');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telepon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pekerjaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id`, `nama`, `email`, `alamat`, `telepon`, `pekerjaan`, `created_at`, `updated_at`) VALUES
(1, 'Jelita Usada S.Gz', 'widiastuti.mulya@waluyo.in', 'Psr. Ki Hajar Dewantara No. 617, Tangerang Selatan 96536, KalTim', '(+62) 600 2826 3412', 'karyawan', NULL, NULL),
(2, 'Oni Permata', 'jailani.intan@yahoo.com', 'Jln. Jakarta No. 486, Lhokseumawe 19027, Banten', '023 1750 628', 'karyawan', NULL, NULL),
(3, 'Winda Mala Novitasari S.IP', 'lailasari.novi@yahoo.com', 'Jln. Taman No. 343, Jambi 34480, KalSel', '0883 4789 583', 'karyawan', NULL, NULL),
(4, 'Kunthara Dongoran', 'wahyudin.mutia@aryani.sch.id', 'Jln. Gambang No. 930, Pekanbaru 73735, Banten', '(+62) 463 3541 9718', 'karyawan', NULL, NULL),
(5, 'Puput Wulandari M.Ak', 'irahimah@tarihoran.mil.id', 'Dk. Supono No. 872, Surakarta 51483, KalTim', '020 9179 2858', 'karyawan', NULL, NULL),
(6, 'Nurul Sadina Uyainah', 'iprasasta@mayasari.tv', 'Jr. BKR No. 718, Tebing Tinggi 65637, JaTeng', '0496 1878 9117', 'karyawan', NULL, NULL),
(7, 'Hendri Tampubolon', 'novi.narpati@rahmawati.desa.id', 'Psr. Juanda No. 722, Payakumbuh 50941, JaTim', '0472 4482 0835', 'karyawan', NULL, NULL),
(8, 'Gangsar Wakiman Iswahyudi', 'nsuartini@yulianti.mil.id', 'Ki. Sentot Alibasa No. 178, Administrasi Jakarta Utara 50452, Papua', '0541 0601 589', 'karyawan', NULL, NULL),
(9, 'Empluk Dabukke M.M.', 'kayun84@jailani.sch.id', 'Kpg. Ketandan No. 377, Administrasi Jakarta Timur 98796, Banten', '0269 0501 6452', 'karyawan', NULL, NULL),
(10, 'Ida Permata', 'hamima75@gmail.co.id', 'Kpg. Kartini No. 651, Kupang 47199, PapBar', '(+62) 396 9189 814', 'karyawan', NULL, NULL),
(11, 'Prayogo Yosef Budiyanto S.Farm', 'laksita.halima@yahoo.co.id', 'Psr. Lada No. 727, Jayapura 97578, Gorontalo', '(+62) 338 5866 0236', 'karyawan', NULL, NULL),
(12, 'Shakila Nasyiah', 'zulaika.unjani@yahoo.com', 'Dk. Baik No. 784, Metro 90641, SumSel', '(+62) 371 6151 4563', 'karyawan', NULL, NULL),
(13, 'Anggabaya Candra Saputra S.E.', 'wkuswoyo@gmail.co.id', 'Ki. B.Agam 1 No. 266, Makassar 27773, Gorontalo', '(+62) 281 1109 208', 'karyawan', NULL, NULL),
(14, 'Eka Puspasari', 'wulandari.kiandra@yahoo.com', 'Ds. Ciumbuleuit No. 242, Gorontalo 29099, SulBar', '(+62) 652 2824 6850', 'karyawan', NULL, NULL),
(15, 'Anita Karimah Wijayanti S.Pd', 'uli.rajasa@gmail.com', 'Psr. Bayam No. 964, Administrasi Jakarta Barat 15668, KepR', '0247 0040 277', 'karyawan', NULL, NULL),
(16, 'Viktor Kurniawan', 'farah57@yahoo.co.id', 'Kpg. Banda No. 61, Banjarmasin 48889, SulTeng', '0905 6113 0875', 'karyawan', NULL, NULL),
(17, 'Rahmi Mandasari', 'devi.sihotang@uyainah.sch.id', 'Dk. Baiduri No. 378, Solok 93441, SulTeng', '(+62) 589 8995 319', 'karyawan', NULL, NULL),
(18, 'Vanya Prastuti', 'ramadan.suci@iswahyudi.web.id', 'Kpg. Soekarno Hatta No. 537, Balikpapan 35076, SumSel', '0540 1558 572', 'karyawan', NULL, NULL),
(19, 'Puput Fujiati', 'muhammad69@rahmawati.org', 'Ki. Monginsidi No. 256, Tebing Tinggi 32454, NTB', '(+62) 231 7385 1119', 'karyawan', NULL, NULL),
(20, 'Devi Puspasari', 'nyoman.mansur@gmail.co.id', 'Ds. Hasanuddin No. 902, Salatiga 26886, SumUt', '(+62) 29 6315 902', 'karyawan', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `odc`
--

CREATE TABLE `odc` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sto` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `odc` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kapasitas` int(11) NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `pegawai_id` int(11) NOT NULL,
  `pegawai_nama` varchar(50) NOT NULL,
  `pegawai_jabatan` varchar(20) NOT NULL,
  `pegawai_umur` int(11) NOT NULL,
  `pegawai_alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`pegawai_id`, `pegawai_nama`, `pegawai_jabatan`, `pegawai_umur`, `pegawai_alamat`) VALUES
(8, 'Elma Sudiati', 'quo', 38, 'Gg. Cikapayang No. 255, Sungai Penuh 32691, Riau'),
(9, 'Slamet Lega Rajata S.Farm', 'voluptatem', 32, 'Gg. Supono No. 84, Sawahlunto 47885, SulSel'),
(10, 'Jaya Naradi Situmorang', 'quasi', 33, 'Dk. Imam Bonjol No. 814, Palu 46518, SumUt'),
(11, 'Rendy Habibi S.Psi', 'sit', 37, 'Gg. Basuki No. 314, Administrasi Jakarta Pusat 73176, NTB'),
(12, 'Yahya Sinaga', 'enim', 26, 'Ki. Industri No. 238, Sungai Penuh 38002, SulSel'),
(13, 'Hesti Janet Hasanah S.Sos', 'est', 35, 'Dk. Wahidin Sudirohusodo No. 637, Surabaya 44801, Banten'),
(14, 'Sari Rahmi Melani', 'laborum', 36, 'Psr. Dipatiukur No. 227, Balikpapan 19234, SulTeng'),
(15, 'Clara Wahyuni', 'eveniet', 38, 'Jln. Otista No. 163, Dumai 91798, KalUt'),
(16, 'Dasa Jais Maheswara', 'esse', 32, 'Kpg. Radio No. 94, Padangpanjang 14989, Bali'),
(17, 'Viktor Prasasta', 'sunt', 27, 'Jln. BKR No. 694, Surakarta 95932, NTB'),
(18, 'Lurhur Damanik', 'nemo', 29, 'Psr. Salak No. 990, Bau-Bau 25079, SulSel'),
(19, 'Zelaya Nasyidah', 'sit', 29, 'Jr. Kali No. 589, Administrasi Jakarta Barat 96388, Gorontalo'),
(20, 'Oman Damanik', 'maiores', 28, 'Psr. Taman No. 461, Banjarbaru 37220, Maluku'),
(21, 'Lili Anggraini', 'id', 25, 'Jr. Baranang No. 631, Pariaman 57837, JaTim'),
(22, 'Harto Prabowo', 'quos', 38, 'Jln. Ki Hajar Dewantara No. 213, Tual 51023, Jambi'),
(23, 'Kanda Habibi', 'nam', 35, 'Kpg. Baan No. 69, Blitar 72288, Lampung'),
(24, 'Wani Prastuti', 'doloremque', 33, 'Gg. Bakau No. 67, Pagar Alam 78006, Papua'),
(25, 'Vero Natsir', 'illum', 34, 'Ds. Salak No. 391, Pontianak 80916, KalTeng'),
(26, 'Paris Hani Nuraini S.IP', 'quo', 39, 'Ds. Dahlia No. 744, Ambon 99599, KalTeng'),
(27, 'Padma Salimah Suartini S.H.', 'ab', 38, 'Ds. Bawal No. 241, Salatiga 42046, Papua'),
(28, 'Kasiran Pangeran Prasetyo', 'aut', 35, 'Ki. Fajar No. 272, Prabumulih 45913, Aceh'),
(29, 'Aslijan Sirait', 'repellendus', 25, 'Gg. Ujung No. 11, Pekanbaru 57006, MalUt'),
(30, 'Ira Nuraini', 'magnam', 36, 'Gg. Yohanes No. 441, Jambi 46510, SumSel'),
(31, 'Kiandra Puspita', 'enim', 40, 'Dk. Kali No. 33, Pontianak 12025, MalUt'),
(32, 'Harsaya Prayoga', 'esse', 25, 'Kpg. Dago No. 928, Kupang 92150, Bali'),
(34, 'Ayu Zizi Kuswandari', 'voluptas', 32, 'Psr. Laksamana No. 259, Batu 93531, KalSel'),
(35, 'Adika Wasita', 'cum', 29, 'Jr. Ki Hajar Dewantara No. 725, Sawahlunto 19536, Gorontalo'),
(36, 'Najib Omar Anggriawan', 'omnis', 25, 'Kpg. Suniaraja No. 917, Tanjung Pinang 37324, SumUt'),
(37, 'Edward Tomi Saptono M.M.', 'praesentium', 29, 'Dk. Sadang Serang No. 852, Surakarta 37423, SulTeng'),
(38, 'Ajimat Ardianto M.Kom.', 'excepturi', 40, 'Gg. Bakti No. 251, Parepare 48583, Maluku'),
(39, 'Carub Gamblang Prasasta S.H.', 'inventore', 34, 'Gg. Cikutra Barat No. 259, Gunungsitoli 25016, SumUt'),
(40, 'Dimaz Prabowo S.Gz', 'libero', 26, 'Ds. Baya Kali Bungur No. 472, Bitung 95442, Lampung'),
(41, 'Siti Farida', 'autem', 37, 'Dk. Hang No. 1, Bengkulu 71277, SumUt'),
(42, 'Uchita Astuti', 'recusandae', 40, 'Ki. Sutami No. 779, Pontianak 99497, JaTim'),
(43, 'Zalindra Ghaliyati Puspita S.E.I', 'saepe', 39, 'Ki. Flores No. 891, Bandar Lampung 35072, SulSel'),
(44, 'Respati Tampubolon', 'facere', 31, 'Jr. Bagas Pati No. 769, Bukittinggi 80941, SulTeng'),
(45, 'Zulaikha Puspita', 'quam', 40, 'Gg. Baan No. 59, Pematangsiantar 98370, KalBar'),
(46, 'Maya Andriani', 'voluptatibus', 39, 'Kpg. Warga No. 155, Payakumbuh 15521, Jambi'),
(47, 'Tantri Putri Namaga S.T.', 'voluptatem', 29, 'Kpg. Laswi No. 427, Banjarbaru 52446, KalUt'),
(48, 'Dimaz Rajasa M.M.', 'sit', 39, 'Gg. Madiun No. 340, Pontianak 29529, SulUt'),
(49, 'Lintang Lalita Astuti S.Psi', 'beatae', 33, 'Kpg. Baja No. 834, Gunungsitoli 25347, PapBar'),
(50, 'Sakura Widiastuti', 'exercitationem', 35, 'Dk. Cokroaminoto No. 844, Padangpanjang 88917, Gorontalo'),
(51, 'Laksana Hidayat', 'sunt', 40, 'Ds. Bakau Griya Utama No. 757, Bandar Lampung 42512, SumSel'),
(52, 'Faizah Kusmawati S.Ked', 'tempora', 37, 'Ds. Badak No. 423, Pangkal Pinang 76234, SumSel'),
(53, 'Tami Nilam Widiastuti', 'esse', 40, 'Psr. Bahagia No. 723, Jayapura 94256, Maluku'),
(54, 'Tina Maryati', 'est', 36, 'Jln. Lumban Tobing No. 182, Bau-Bau 47907, SumUt'),
(55, 'Enteng Habibi S.Pd', 'voluptate', 39, 'Jr. Achmad Yani No. 211, Tasikmalaya 38586, JaBar'),
(56, 'Waluyo Samosir', 'ipsum', 39, 'Ki. Badak No. 252, Sorong 37092, SulTeng'),
(57, 'Malika Eli Kusmawati', 'exercitationem', 32, 'Ds. Banda No. 618, Tanjung Pinang 93287, Gorontalo');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nis` int(11) NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `nama`, `nis`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Andy Prasetyo', 123456, 'Kpg. Otto No. 157, Salatiga 34190, KepR', '2019-07-02 07:31:50', '2019-07-02 07:31:50'),
(2, 'Danang Marganeri', 123457, 'Psr. Wahid No. 119, Langsa 17291, JaTim', '2019-07-02 07:31:50', '2019-07-02 07:31:50'),
(3, 'Bagas Santoso', 123458, 'Jr. Monginsidi No. 569, Padangsidempuan 24306, SulBar', '2019-07-02 07:31:50', '2019-07-02 07:31:50'),
(4, 'Genta Haryanti', 123459, 'Psr. Gajah Mada No. 696, Mataram 90223, BaBel', '2019-07-02 07:31:50', '2019-07-02 07:31:50'),
(5, 'Laravel Excel', 123460, 'Kpg. Suryo Pranoto No. 291, Pekanbaru 76772, Maluku', '2019-07-02 07:31:50', '2019-07-02 07:31:50'),
(6, 'Wasis Bakianto Rajasa', 123461, 'Dk. Sadang Serang No. 367, Semarang 32762, SulTra', '2019-07-02 07:31:50', '2019-07-02 07:31:50'),
(7, 'Excel Laravel', 123462, 'Ki. Abdul Rahmat No. 1, Banjarbaru 58914, NTB', '2019-07-02 07:31:50', '2019-07-02 07:31:50'),
(8, 'Zaenab Winarsih', 123463, 'Dk. Padang No. 638, Bitung 46505, Aceh', '2019-07-02 07:31:50', '2019-07-02 07:31:50'),
(9, 'Malika Tina Hasanah', 123464, 'Jln. W.R. Supratman No. 392, Bitung 66104, JaTim', '2019-07-02 07:31:50', '2019-07-02 07:31:50'),
(10, 'PHPExcel Laravel', 123465, 'Dk. Imam No. 224, Banjar 37365, PapBar', '2019-07-02 07:31:50', '2019-07-02 07:31:50'),
(11, 'Paramita Rahimah', 123466, 'Dk. Qrisdoren No. 548, Surabaya 30826, KalTeng', '2019-07-02 07:31:50', '2019-07-02 07:31:50'),
(12, 'Paris Padmasari', 123467, 'Ki. Bacang No. 93, Pariaman 82570, DIY', '2019-07-02 07:31:50', '2019-07-02 07:31:50'),
(13, 'Bakijan Mahendra S.H.', 123468, 'Ki. Tambak No. 692, Mataram 65862, Aceh', '2019-07-02 07:31:50', '2019-07-02 07:31:50'),
(14, 'Damar Tamba', 123469, 'Dk. Lada No. 238, Bandar Lampung 65062, MalUt', '2019-07-02 07:31:50', '2019-07-02 07:31:50'),
(15, 'Bajragin Atmaja Kurniawan', 123470, 'Dk. Karel S. Tubun No. 988, Jayapura 18450, Bali', '2019-07-02 07:31:50', '2019-07-02 07:31:50'),
(16, 'Cakrawangsa Sihombing', 123471, 'Jr. Babah No. 536, Bekasi 20996, Aceh', '2019-07-02 07:31:50', '2019-07-02 07:31:50'),
(17, 'Najwa Rahimah', 123472, 'Gg. K.H. Maskur No. 475, Cimahi 25535, KalSel', '2019-07-02 07:31:50', '2019-07-02 07:31:50'),
(18, 'Jaswadi Hardana Maryadi', 123473, 'Jln. Abang No. 590, Tegal 31208, Lampung', '2019-07-02 07:31:50', '2019-07-02 07:31:50'),
(19, 'Shakila Nurdiyanti', 123474, 'Jr. Tangkuban Perahu No. 553, Bitung 27727, SumBar', '2019-07-02 07:31:50', '2019-07-02 07:31:50'),
(20, 'Caraka Nardi Permadi', 123475, 'Kpg. Daan No. 258, Bandar Lampung 97410, SulBar', '2019-07-02 07:31:50', '2019-07-02 07:31:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ivan', 'ivanzramadhanz@gmail.com', NULL, '$2y$10$fZHa7RjtlpCvcd6lRTofjenQwFfex1TLzxaCZV5u3k93hfsNqzI4K', 'YVQRKfSttctcRVzfLLgSPCQIPrUMRzN6Q1TpepZLAP7o9Mymu84DbgJmYxMD', '2019-06-27 00:07:30', '2019-06-27 00:07:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gambar`
--
ALTER TABLE `gambar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `odc`
--
ALTER TABLE `odc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`pegawai_id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gambar`
--
ALTER TABLE `gambar`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `odc`
--
ALTER TABLE `odc`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `pegawai_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
