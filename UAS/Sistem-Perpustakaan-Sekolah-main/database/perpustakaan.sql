-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2024 at 06:57 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nama_admin` varchar(255) NOT NULL,
  `password` varchar(25) NOT NULL,
  `kode_admin` varchar(12) NOT NULL,
  `no_tlp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nama_admin`, `password`, `kode_admin`, `no_tlp`) VALUES
(1, 'syeli mutiatul hilmy', '1234', 'admin1', '085749051409'),
(2, 'zielda okkya lorosae', '4321', 'admin2', '085870283409'),
(3, 'aulia sarah', '123', 'admin3', '087667282929');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `cover` varchar(255) NOT NULL,
  `id_buku` varchar(20) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `pengarang` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `tahun_terbit` date NOT NULL,
  `jumlah_halaman` int(11) NOT NULL,
  `buku_deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`cover`, `id_buku`, `kategori`, `judul`, `pengarang`, `penerbit`, `tahun_terbit`, `jumlah_halaman`, `buku_deskripsi`) VALUES
('654e505d7eda4.jpg', 'bis01', 'bisnis', 'Bussiness is fun', 'Coach yohannes g pauly', 'Rejove', '2016-11-10', 500, '7 strategi untuk membangun bisnis'),
('654e62742ef40.jpg', 'bis02', 'bisnis', 'Digital Marketing Strategy', 'Simon kings north', '-', '2023-11-11', 250, 'Belajar strategi pemasaran digital'),
('659f861a98f08.jpeg', 'cleo001', 'novel', 'Pudarnya Pesona Cleopatra', 'Habiburrahman El Shirazy', 'Republika', '2014-01-23', 500, 'Pada novel Pudarnya Pesona Cleopatra ini menceritakan tentang kisah perjodohan seorang pria yang merupakan lulusan Al-Azhar Cairo.\r\nPria ini mencintai gadis mesir yang cantik seperti ratu cleopatra.\r\n\r\nNamun, ternyata ia telah di jodohkan oleh ibunya dengan seorang gadis penghapal al-Qur’an.\r\nKarena pria ini merupakan pria yang berbakti maka ia menerima perjodohan tersebut. Karena obsesinya ia selalu menjadi cuek terhadap istrinya.\r\n\r\nWaktu terus berganti namun Raihana benar-benar tidak mampu membuat hati suaminya mencintainya.\r\n\r\nNamun, setelah pria itu sadar dengan cerita dari Pak Agung rekannya yang mengatakan bahwa pahitnya menikahi wanita mesir. Dan ia teringat dengan istrinya'),
('654e4dc4dc0c6.jpg', 'fil01', 'filsafat', 'Filosofi Teras', 'Henry Manampiring ', 'Kompas', '2018-11-26', 320, 'Filosofi Teras adalah sebuah buku pengantar filsafat Stoa yang dibuat khusus sebagai panduan moral anak muda. Buku ini ditulis untuk menjawab permasalahan tentang tingkat kekhawatiran yang cukup tinggi dalam skala nasional, terutama yang dialami oleh anak muda.'),
('654e4f5e85f75.jpg', 'fil02', 'filsafat', 'Sejarah dunia yang disembunyikan ', 'Jonathan Black ', '-', '2007-11-10', 633, 'Banyak orang mengatakan bahwa sejarah ditulis oleh para pemenang. Hal ini sama sekali tak mengejutkan alias wajar belaka. Tetapi, bagaimana jika sejarahâ€”atau apa yang kita ketahui sebagai sejarahâ€”ditulis oleh orang yang salah? '),
('654e48e1a1680.jpg', 'inf01', 'informatika', 'Dasar dasar pemrogramman web', 'Sandhika Galih ', 'Inkara', '2023-10-18', 414, 'Website di era sekarang sudah menjadi kebutuhan utama yang tidak bisa diabaikan. Seluruh sektor bisnis atau edukasi dapat memanfaatkan website sebagai alat untuk promosi, tukar informasi, dan lainnya. Berdasarkan data dari World Wide Web Technology Surveys, dari seluruh website yang aktif, 88.2% menggunakan HTML dan 95.6% menggunakan CSS. Buku ini membahas tuntas mengenai HTML dan CSS sebagai fondasi dalam pembuatan website serta dilengkapi dengan Studi Kasus yang Relevan dan sesuai trend.'),
('654e4a1c80441.jpg', 'inf02', 'informatika', 'Kursus Mandiri Python', 'Budi Raharjo', 'Informatika', '2022-05-10', 550, 'Belajar pemrogramman python dengan 5 tahapan yaitu : \r\n1. Dasar dasar python\r\n2. PBO(OOP)\r\n3. Eksplorasi Pustaka\r\n4. SQL &amp; MySql\r\n5. Pemrogramman GUI'),
('654e4b44d4d0e.png', 'inf03', 'informatika', 'Pemrogramman Javascript Dan NodeJS untuk teknologi web', 'Budi Raharjo', 'Informatika', '2022-09-16', 500, 'Panduan membuat sistem aplikasi berbasis web dengan javascript dan nodeJs'),
('654e4c1154bdd.jpg', 'inf04', 'informatika', 'Panduan Dasar ubuntu untuk pemula', 'Muhammad Ulil Fahri', 'Informatika', '2017-11-10', 404, 'Panduan awal ubuntu untuk pemula'),
('654e4cd06e0de.jpeg', 'inf05', 'informatika', 'Belajar dasar Pemrogramman C++', 'Muhammad Taufik Dwi Putra', 'Informatika', '2018-11-10', 512, 'Panduan dasar belajar pemrogramman C++ untuk pemula'),
('654e3d8b359df.jpg', 'nov01', 'novel', 'Dunia Sophie', 'Jostein Gardeer', 'Mizan', '1996-11-10', 800, 'Anda ingin tahu apa filsafat,  tetapi selalu tidak sempat,  terlalu kabur, abstrak, susah dan bertele tele?  Bacalah buku manis ini dimana sophie anak putri 14 tahun, menjadi terpesona karenanya. '),
('654e402a8ad79.jpg', 'nov02', 'novel', 'Perahu Kertas', 'Dewi Lestari', 'Bentang Pustaka', '2003-11-10', 444, 'Perahu Kertas bercerita tentang dua orang yang sama-sama unik bernama Kugy dan Keenan. '),
('654e4417e323e.jpeg', 'nov03', 'novel', 'Pulang', 'Tere Liye ', 'Sabak grip Nusantara ', '2015-11-10', 838, 'Pulangâ€ ini adalah novel yang menceritakan perjalanan hidup seorang anak laki-laki bernama Bujang, yang sejak berumur lima belas tahun di sebuah hutan rimba pedalaman Sumatera, rasa takutnya telah direnggut oleh seekor monster mengerikan (induk babi hutan).'),
('654e456c2e275.jpg', 'nov04', 'novel', 'Surat Kecil Untuk Tuhan', 'Agnes Danovar', 'Inandra Publised', '2008-11-10', 200, 'Surat kecil untuk Tuhan adalah sebuah buku yang diangkat dari kisah nyata perjuangan gadis remaja bernama Gita Sesa Wanda Cantika alias Keke melawan kanker ganas.'),
('654e46a08484e.jpg', 'nov05', 'novel', 'Ancika : dia yang bersamaku tahun 1995', 'Pidi baiq', 'Pastel books', '2021-09-02', 180, 'menceritakan tentang persahabatan antara Dilan dan Ancika Mehrunisa Rabu. Hubungan mereka yang semakin dekat membuat benih-benih cinta tumbuh dan hubungan mereka pun naik tingkat menjadi hubungan sepasang kekasih.'),
('654e63b7841f5.jpg', 'sai01', 'sains', 'Cosmos', 'Karl sagan', '-', '2016-12-18', 488, 'Buku â€œKOSMOSâ€ adalah salah satu buku sains yang paling laris sepanjang sejarah. Dengan prosa jernih yang memukau, ahli astronomi Carl Sagan mengungkapkan alam semesta yang dihuni oleh suatu bentuk kehidupan yang baru saja mulai berpetualang menjelajahi luasnya antariksa.'),
('654e64ee16c9a.jpg', 'sai02', 'sains', 'Kanker : Biografi suatu penyakit', 'Siddhartha mukherjee', '-', '2020-04-16', 682, 'kanker bukan hanya satu penyakit, melainkan banyak penyakit dengan ciri sama: pertumbuhan sel tak terkendali. Melawan kanker seolah melawan tubuh yang berkhianat: sel-sel kita sendiri yang berubah jadi ganas dan lepas kendali.'),
('659f8568a00f5.jpg', 'tau001', 'novel', 'Api Tauhid', 'Habiburrahman El Shirazy', 'Republika', '2024-01-01', 500, 'Ini adalah novel roman dan sejarah. Novel roman yang bercerita seputar perjuangan anak muda asal Lumajang, Jawa Timur, yang bernama Fahmi. Ia dan beberapa rekannya seperti Ali, Hamza, dan Subki, menuntut ilmu di Universitas Islam Madinah.\r\n\r\nDalam perjalanannya, Fahmi harus menghadapi situasi yang cukup pelik, dalam urusan rumah tangga. Fahmi pun galau. Semua persoalan yang dialaminya itu, tak pernah ia ungkapkan dengan teman-temannya.\r\n\r\nKegalauannya itu ia tumpahkan dengan cara beri’tikaf di Masjid Nabawi, Madinah, selama 40 hari untuk mengkhatamkan hafalan Al-Qur`an sebanyak 40 kali. Sayangnya, upayanya itu hanya mampu dijalani selama 12 hari. Memasuki hari-hari berikutnya, Fahmi pingsan. Ia tak sadarkan diri, hingga harus dibawa ke rumah sakit.\r\n\r\nSahabat-sahabatnya khawatir dengan kondisinya yang pemurung dan tidak seceria dulu. Hamza, temannya yang berasal dari Turki, mengajak Fahmi untuk berlibur ke Turki. Hamza berharap, Fahmi bisa melupakan masa-masa galaunya selama di Turki nanti.\r\n\r\nUntuk itulah, Hamza mengajak Fahmi menelusuri jejak perjuangan Said Nursi, seorang ulama besar asal Desa Nurs. Ulama terkemuka ini, dikenal memiliki reputasi yang mengagumkan.\r\n\r\nSyaikh Said Nursi, sudah mampu menghafal 80 kitab karya ulama klasik pada saat usianya baru menginjak 15 tahun. Tak hanya itu, Said Nursi hanya membutuhkan waktu dua hari untuk menghafal Al-Qur`an. Sungguh mengagumkan. Karena kemampuannya itu, sang guru, Muhammed Emin Efendi memberinya julukan ‘Badiuzzaman’ (Keajaiban Zaman).\r\n\r\nKeistimewaan Said Nursi, membuat iri teman-teman dan saudaranya. Ia pun dimusuhi. Namun, Said Nursi pantang menyerah. Semua diladeni dengan berani dan lapang dada. Tak cuma itu, rekan-rekan dan saudara-saudaranya yang iri dan cemburu akan kemampuannya, para ulama besar pun merasa terancam. Keberadaan Said Nursi membuat umat berpaling. Mereka mengidolakan Said Nursi.\r\n\r\nPemerintah Turki pun merasa khawatir. Sebab, Said Nursi selalu mampu menghadapi tantangan dari orang-orang yang memusuhinya. Ia selalu mengalahkan mereka dalam berdebat.\r\n\r\nTak kurang akal, pejabat pemerintah pun diam-diam berusaha menyingkirkannya. Baik dengan cara mengusirnya ke daerah terpencil, maupun memenjarakannya. Ia pun harus berhadapan dengan Sultan Hamid II hingga Mustafa Kemal Attaturk, pada masa awal Perang Dunia I.\r\n\r\nSelama 25 tahun berada di penjara, Said Nursi bukannya bersedih, ia malah bangga. Karena disitulah, ia menemukan cahaya abadi ilahi. Ia menemukan Api Tauhid. Dan melalui pengajian-pengajian yang diajarkannya, baik di masjid maupun di penjara, murid-muridnya selalu menyebarluaskannya kepada khalayak. Baik dengan cara menulis ulang pesan-pesan Said Nursi, maupun memperbanyak risalah dakwahnya. Murid-muridnya berhasil merangkum pesan dakwah Said Nursi itu dengan judul Risalah Nur. Murid-muridnya tidak ingin, Api Tauhid yang dikobarkan Said Nursi berakhir.\r\n\r\nBagaimana dengan Fahmi? Perjalanan ke Turki membawa Fahmi berkenalan dengan gadis setempat, Emel, adik Hamza, dan Aysel, saudara sepupu Hamza. Kemampuan Fahmi dalam menyikapi segala sesuatu, membuat Aysel jatuh hati. Aysel menyatakan cintanya pada Fahmi.\r\n\r\nBagaimana dengan Emel? Lalu bagaimana kisah cinta Fahmi dengan Nuzula? Semuanya ada dalam buku Api Tauhid, karya Habiburrahman El-Shirazy, novelis nomor satu di Indonesia, ini.');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_buku`
--

CREATE TABLE `kategori_buku` (
  `kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kategori_buku`
--

INSERT INTO `kategori_buku` (`kategori`) VALUES
('bisnis'),
('filsafat'),
('informatika'),
('novel'),
('sains');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `nisn` int(11) NOT NULL,
  `kode_member` varchar(12) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `kelas` varchar(5) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `no_tlp` varchar(15) NOT NULL,
  `tgl_pendaftaran` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`nisn`, `kode_member`, `nama`, `password`, `jenis_kelamin`, `kelas`, `jurusan`, `no_tlp`, `tgl_pendaftaran`) VALUES
(24001, 'mb001', 'movida tantra putra malani', '$2y$10$I5HM1YfVUOyHYkWcaiGbVu8UT9alRxLLa67rzXiF0xRSIiDdnzqmy', 'Perempuan', 'XI', 'Teknik Instalasi Tenaga Listrik', '08776789727', '2024-01-11'),
(24002, 'mb002', 'siti khodijah', '$2y$10$ty9r6yubPgRS6jQP9LuW4OMHradclBR9fHQDLKvbhpC6PCAL7vD2y', 'Perempuan', 'XI', 'Teknik Komputer Jaringan', '08776526277', '2024-01-11');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_peminjaman` int(11) NOT NULL,
  `id_buku` varchar(20) NOT NULL,
  `nisn` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `tgl_peminjaman` date NOT NULL,
  `tgl_pengembalian` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengembalian`
--

CREATE TABLE `pengembalian` (
  `id_pengembalian` int(11) NOT NULL,
  `id_peminjaman` int(11) NOT NULL,
  `id_buku` varchar(20) NOT NULL,
  `nisn` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `buku_kembali` date NOT NULL,
  `keterlambatan` enum('YA','TIDAK') NOT NULL,
  `denda` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pengembalian`
--

INSERT INTO `pengembalian` (`id_pengembalian`, `id_peminjaman`, `id_buku`, `nisn`, `id_admin`, `buku_kembali`, `keterlambatan`, `denda`) VALUES
(60, 76, 'bis01', 24002, 1, '2024-01-11', 'YA', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_admin` (`kode_admin`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD KEY `kategori` (`kategori`);

--
-- Indexes for table `kategori_buku`
--
ALTER TABLE `kategori_buku`
  ADD PRIMARY KEY (`kategori`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`nisn`),
  ADD UNIQUE KEY `kode_member` (`kode_member`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`),
  ADD KEY `id_buku` (`id_buku`),
  ADD KEY `nisn` (`nisn`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indexes for table `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`id_pengembalian`),
  ADD KEY `id_peminjaman` (`id_peminjaman`),
  ADD KEY `id_buku` (`id_buku`),
  ADD KEY `nisn` (`nisn`),
  ADD KEY `id_admin` (`id_admin`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_peminjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `pengembalian`
--
ALTER TABLE `pengembalian`
  MODIFY `id_pengembalian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_ibfk_1` FOREIGN KEY (`kategori`) REFERENCES `kategori_buku` (`kategori`);

--
-- Constraints for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`),
  ADD CONSTRAINT `peminjaman_ibfk_2` FOREIGN KEY (`nisn`) REFERENCES `member` (`nisn`),
  ADD CONSTRAINT `peminjaman_ibfk_3` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id`);

--
-- Constraints for table `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD CONSTRAINT `pengembalian_ibfk_2` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`),
  ADD CONSTRAINT `pengembalian_ibfk_3` FOREIGN KEY (`nisn`) REFERENCES `member` (`nisn`),
  ADD CONSTRAINT `pengembalian_ibfk_4` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
