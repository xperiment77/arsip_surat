-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Sep 2023 pada 10.29
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_arsip`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `arsip`
--

CREATE TABLE `arsip` (
  `id` int(11) NOT NULL,
  `nama_dokumen` varchar(255) NOT NULL,
  `jenis_dokumen` varchar(255) NOT NULL,
  `tanggal_dokumen` varchar(255) NOT NULL,
  `upload_dokumen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `arsip`
--

INSERT INTO `arsip` (`id`, `nama_dokumen`, `jenis_dokumen`, `tanggal_dokumen`, `upload_dokumen`) VALUES
(1, 'Permohonan surat tugas PIC Aplikasi    AR/VR Proyek Layanan Digital Campus ', 'Nota dinas', '2023-09-21', 'http://localhost/arsip/uploads/files/seo789j2mlg5qxw.pdf'),
(2, 'Pengajuan ATK Sishumad', 'Nota dinas', '2023-09-21', 'http://10.30.67.180/arsip/uploads/files/fjmb_5rop03ive4.pdf'),
(3, 'Contoh', 'Sprin', '2023-09-21', 'http://10.30.67.180/arsip/uploads/files/frdptvnc517zs4g.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `upload` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `banner`
--

INSERT INTO `banner` (`id`, `upload`) VALUES
(1, '<p><img src=\"https://rifil.co.id/wp-content/uploads/2023/09/16-e-ARSIP-RIFIL-Aplikasi-0859-1065-02195-1-2-1024x345.png\" style=\"width: 100%;\"><br></p>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dp4`
--

CREATE TABLE `dp4` (
  `id` int(11) NOT NULL,
  `nama_dokumen` varchar(255) NOT NULL,
  `upload` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `dp4`
--

INSERT INTO `dp4` (`id`, `nama_dokumen`, `upload`) VALUES
(1, 'utdut', 'utdutd'),
(2, 'Jdjbdn', 'Gdhhshs'),
(3, 'https://online.visual-paradigm.com/app/diagrams/#diagram:proj=0&type=NetworkDiagram&gallery=/repository/d233500d-cd59-4c3b-a3be-81e032398680.xml&name=Star%20Network%20Template', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kpi`
--

CREATE TABLE `kpi` (
  `id` int(11) NOT NULL,
  `nama_dokumen` varchar(255) NOT NULL,
  `upload` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `list`
--

CREATE TABLE `list` (
  `id` int(11) NOT NULL,
  `Admin` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `list`
--

INSERT INTO `list` (`id`, `Admin`, `user`) VALUES
(1, '', ''),
(2, 'User', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `photo` varchar(10000) CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL,
  `nama` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `login_session_key` varchar(255) DEFAULT NULL,
  `email_status` varchar(255) DEFAULT NULL,
  `password_expire_date` datetime DEFAULT '2023-12-15 00:00:00',
  `password_reset_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id`, `photo`, `nama`, `user_name`, `password`, `email`, `role`, `login_session_key`, `email_status`, `password_expire_date`, `password_reset_key`) VALUES
(1, 'http://localhost/arsip_surat/uploads/files/9_kbwd7iqfagsnt.png', 'khang hanna', 'khanghanna', '$2y$10$yyfZ452o..v.IlboUBTnFe5DxMJEXeT7z0N./.Rvd82VVk48/.cTS', 'knghnn@gmail.com', 'Admin', NULL, NULL, '2023-12-15 00:00:00', NULL),
(2, 'uploads/files/eatmvhl6nioz91r.png', 'hanna', 'admin', '$2y$10$fcIiuAoO8UXfSyrryneF2Ol7Bz5YfRVPuZm/t..7HQKSfPJGf92pe', 'hanna@gmail.com', 'User', NULL, NULL, '2023-12-15 00:00:00', NULL),
(3, 'http://localhost/arsip/uploads/files/19vu4mfloatzqdn.jpg', 'khang-hanna', 'khanghanna', '$2y$10$indqihz1r6gNzVjoqBA6kefxOGys9AAWJ6RqkenQuxam2qSdHUnH6', 'khanghanna@gmail.com', 'Admin', '760ffd6b61615450fea305c0a0131ff2', NULL, '2023-12-21 04:16:15', NULL),
(4, 'http://10.30.67.180/arsip/uploads/files/f1oxp2lgvqnu_60.jpeg', 'Nayla ', 'naylaraya', '$2y$10$45Y6Wl73EX5NJHwyyaGSI.EDs.bqRLpt4CwGX4FYCeChD0EVBZVL2', 'naylarayar@gmail.com', 'User', NULL, NULL, '2023-12-15 00:00:00', NULL),
(5, 'http://10.30.67.180/arsip/uploads/files/6g3xn1k7dcemybz.jpeg', 'hurul aini rahayu', 'hurul aini', '$2y$10$9V6iG5Ob4m2DzV38f0wM2eq7rANQw4Kec6t2eZ1qj2v1mJP8A7M52', 'hurul.aini@unjani.ac.id', 'User', NULL, NULL, '2023-12-15 00:00:00', NULL),
(6, 'http://10.30.64.159/arsip_surat/uploads/files/njlwzqu1orc5xmd.jpeg', 'Alma Silvana Putri', 'putrisilvana', '$2y$10$YqXNj/hzS03zF53zY8QECeYR2Ga359AgaBJ9D1qS3YWxRuKLVBfCq', 'rayarakarayirrr@gmail.com', 'Admin', NULL, NULL, '2023-12-15 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nota_dinas`
--

CREATE TABLE `nota_dinas` (
  `id` int(11) NOT NULL,
  `nama_dokumen` varchar(255) NOT NULL,
  `upload` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `profil`
--

CREATE TABLE `profil` (
  `id` int(11) NOT NULL,
  `upload` varchar(20000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `profil`
--

INSERT INTO `profil` (`id`, `upload`) VALUES
(2, '\r\n\r\n\r\n\r\n\r\n    <title>Ilham Setia Bhakti</title>\r\n    <meta charset=\"UTF-8\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n    <link rel=\"stylesheet\" href=\"https://www.w3schools.com/w3css/4/w3.css\">\r\n    <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Roboto\">\r\n    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\r\n\r\n    <style>\r\n        .magic-resize > marquee > img {\r\n            width: 100px;\r\n            height: 100px;\r\n          padding: 16px;\r\n        }\r\n        \r\n        html,\r\n        body,\r\n        h1,\r\n        h2,\r\n        h3,\r\n        h4,\r\n        h5,\r\n        h6 {\r\n            font-family: \"Roboto\", sans-serif\r\n        }\r\n        \r\n        ;\r\n    </style>\r\n\r\n    <link rel=\"icon\" href=\"https://cdn.glitch.com/9be2272f-b4da-46fa-95e7-d94a1cad4bc8%2Ficons8-checked-48.png?v=1581404444680\r\n\" type=\"image/gif\" sizes=\"16x16\">\r\n    <script src=\"https://kit.fontawesome.com/a076d05399.js\"></script>\r\n    <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js\"></script>\r\n\r\n\r\n\r\n\r\n    <!-- Page Container -->\r\n    <div class=\"w3-content w3-margin-top\" style=\"max-width:1400px;\">\r\n\r\n        <!-- The Grid -->\r\n        <div class=\"w3-row-padding\">\r\n\r\n            <!-- Left Column -->\r\n            <div class=\"w3-third\">\r\n\r\n                <div class=\"w3-white w3-text-grey w3-card-12 w3-animate-top\">\r\n                    <div class=\"w3-display-container\">\r\n                        <img src=\"https://cdn.glitch.com/9be2272f-b4da-46fa-95e7-d94a1cad4bc8%2FSUMPLE3.jpg?v=1581480552105\" style=\"width:100%\" alt=\"Avatar\">\r\n                        <div class=\"w3-display-bottomleft w3-container w3-text-black\">\r\n                            <h2 style=\"background-color:white;padding:8px;\">Ilham Setia Bhakti</h2>\r\n                        </div>\r\n                    </div>\r\n                    <div class=\"w3-container\">\r\n                        <p><i class=\"fa fa-briefcase fa-fw w3-margin-right w3-large w3-text-teal\"></i>Web Developer | Content Creator</p>\r\n                        <p><i class=\"fa fa-home fa-fw w3-margin-right w3-large w3-text-teal\"></i>Bekasi</p>\r\n                        <p><i class=\"fa fa-envelope fa-fw w3-margin-right w3-large w3-text-teal\"></i>isetiabhakti@gmail.com</p>\r\n                        <p><i class=\"fa fa-phone fa-fw w3-margin-right w3-large w3-text-teal\"></i>+62 899-8994-858</p>\r\n                        <hr>\r\n\r\n                        <p class=\"w3-large\"><b><i class=\"fa fa-asterisk fa-fw w3-margin-right w3-text-teal\"></i>Skills</b></p>\r\n                        <p>Web Based Programming</p>\r\n                        <div class=\"w3-light-grey w3-round-xlarge w3-small\">\r\n                            <div class=\"w3-container w3-center w3-round-xlarge w3-teal\" style=\"width:95%\">95%</div>\r\n                        </div>\r\n                        <p>Multimedia</p>\r\n                        <div class=\"w3-light-grey w3-round-xlarge w3-small\">\r\n                            <div class=\"w3-container w3-center w3-round-xlarge w3-teal\" style=\"width:80%\">\r\n                                <div class=\"w3-center w3-text-white\">80%</div>\r\n                            </div>\r\n                        </div>\r\n                        <p>Networking</p>\r\n                        <div class=\"w3-light-grey w3-round-xlarge w3-small\">\r\n                            <div class=\"w3-container w3-center w3-round-xlarge w3-teal\" style=\"width:75%\">75%</div>\r\n                        </div>\r\n                        <p>Blog + SEO</p>\r\n                        <div class=\"w3-light-grey w3-round-xlarge w3-small\">\r\n                            <div class=\"w3-container w3-center w3-round-xlarge w3-teal\" style=\"width:50%\">50%</div>\r\n                        </div>\r\n                        <p>Office</p>\r\n                        <div class=\"w3-light-grey w3-round-xlarge w3-small\">\r\n                            <div class=\"w3-container w3-center w3-round-xlarge w3-teal\" style=\"width:50%\">50%</div>\r\n                        </div>\r\n                        <br>\r\n\r\n                        <p class=\"w3-large w3-text-theme\"><b><i class=\"fa fa-globe fa-fw w3-margin-right w3-text-teal\"></i>Programming Language</b></p>\r\n                        <p>PHP</p>\r\n                        <div class=\"w3-light-grey w3-round-xlarge\">\r\n                            <div class=\"w3-round-xlarge w3-teal\" style=\"height:24px;width:95%\"></div>\r\n                        </div>\r\n                        <p>MySQL</p>\r\n                        <div class=\"w3-light-grey w3-round-xlarge\">\r\n                            <div class=\"w3-round-xlarge w3-teal\" style=\"height:24px;width:92%\"></div>\r\n                        </div>\r\n                        <p>HTML + CSS</p>\r\n                        <div class=\"w3-light-grey w3-round-xlarge\">\r\n                            <div class=\"w3-round-xlarge w3-teal\" style=\"height:24px;width:90%\"></div>\r\n                        </div>\r\n                        <p>Javascript</p>\r\n                        <div class=\"w3-light-grey w3-round-xlarge\">\r\n                            <div class=\"w3-round-xlarge w3-teal\" style=\"height:24px;width:85%\"></div>\r\n                        </div>\r\n                        <p>Python</p>\r\n                        <div class=\"w3-light-grey w3-round-xlarge\">\r\n                            <div class=\"w3-round-xlarge w3-teal\" style=\"height:24px;width:50%\"></div>\r\n                        </div>\r\n                        <p>NodeJS</p>\r\n                        <div class=\"w3-light-grey w3-round-xlarge\">\r\n                            <div class=\"w3-round-xlarge w3-teal\" style=\"height:24px;width:50%\"></div>\r\n                        </div>\r\n                        <p>Java</p>\r\n                        <div class=\"w3-light-grey w3-round-xlarge\">\r\n                            <div class=\"w3-round-xlarge w3-teal\" style=\"height:24px;width:50%\"></div>\r\n                        </div>\r\n                        <p>Visual Basic</p>\r\n                        <div class=\"w3-light-grey w3-round-xlarge\">\r\n                            <div class=\"w3-round-xlarge w3-teal\" style=\"height:24px;width:50%\"></div>\r\n                        </div>\r\n\r\n                        <br>\r\n                    </div>\r\n                </div>\r\n                <br>\r\n\r\n                <!-- End Left Column -->\r\n            </div>\r\n\r\n            <!-- Right Column -->\r\n \r\n\r\n\r\n\r\n                <!-- End Right Column -->\r\n            </div>\r\n\r\n            <!-- End Grid -->\r\n        </div>\r\n\r\n        <!-- End Page Container -->\r\n    \r\n\r\n    <footer class=\"w3-container w3-teal w3-center w3-margin-top\">\r\n        <p>Powered by <a href=\"https://www.w3schools.com/w3css/default.asp\" target=\"_blank\">w3.css</a> | <a href=\"https://isetiabhakti.medium.com\" target=\"_blank\">iSetiabhakti</a></p>\r\n    </footer>\r\n\r\n\r\n\r\n\r\n\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_tugas`
--

CREATE TABLE `surat_tugas` (
  `id` int(11) NOT NULL,
  `nama_dokumen` varchar(255) NOT NULL,
  `upload` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `upload_dokumen`
--

CREATE TABLE `upload_dokumen` (
  `id` int(11) NOT NULL,
  `nama_dokumen` varchar(255) NOT NULL,
  `upload` varchar(255) NOT NULL,
  `view` varchar(255) NOT NULL,
  `tanggal_dokumen` varchar(255) NOT NULL,
  `jenis_dokumen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `upload_dokumen`
--

INSERT INTO `upload_dokumen` (`id`, `nama_dokumen`, `upload`, `view`, `tanggal_dokumen`, `jenis_dokumen`) VALUES
(1, 'Pedoman Surat-Menyurat ', 'http://localhost/arsip_surat/uploads/files/lfjab0hrpdqe1gu.pdf', '<a href=\"https://repositori.kemdikbud.go.id/1670/1/Pedoman%20Surat-Menyurat%20%281985%29.pdf\" target=\"_blank\"><b>Lihat</b></a>', '', ''),
(2, 'Menulis Surat Dinas', 'http://localhost/arsip_surat/uploads/files/5j0ovqf17aurz2m.pdf', 't', '', ''),
(4, 'Pengajuan Monitor Fasilitas Penunjang kerja   Kapus Sishumad', 'http://localhost/arsip/uploads/files/j6exw_c3hzav7yo.pdf', '<p>g</p>', '', ''),
(5, 'http://webmedia.esy.es/inventori/index.php?halaman=data_barang', '', '', '', ''),
(6, '<p>Surat Pembayaran AWS</p>', 'http://10.30.64.159/arsip_surat/uploads/files/9t6pu87jsmxcgh5.docx', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `arsip`
--
ALTER TABLE `arsip`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `dp4`
--
ALTER TABLE `dp4`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kpi`
--
ALTER TABLE `kpi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `list`
--
ALTER TABLE `list`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `nota_dinas`
--
ALTER TABLE `nota_dinas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `surat_tugas`
--
ALTER TABLE `surat_tugas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `upload_dokumen`
--
ALTER TABLE `upload_dokumen`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `arsip`
--
ALTER TABLE `arsip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `dp4`
--
ALTER TABLE `dp4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kpi`
--
ALTER TABLE `kpi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `list`
--
ALTER TABLE `list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `nota_dinas`
--
ALTER TABLE `nota_dinas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `profil`
--
ALTER TABLE `profil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `surat_tugas`
--
ALTER TABLE `surat_tugas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `upload_dokumen`
--
ALTER TABLE `upload_dokumen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
