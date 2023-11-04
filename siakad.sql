-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 04, 2023 at 02:50 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siakad`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_dasar`
--

CREATE TABLE `data_dasar` (
  `ID` int(11) NOT NULL,
  `NIM` varchar(10) NOT NULL,
  `NAMA` varchar(100) NOT NULL,
  `SEMESTER` int(3) NOT NULL,
  `ALAMAT` varchar(100) NOT NULL,
  `NO.TELP` varchar(15) NOT NULL,
  `PRODI` varchar(100) NOT NULL,
  `FAKULTAS` varchar(100) NOT NULL,
  `TAHUNMASUK` int(10) NOT NULL,
  `UKT` int(10) NOT NULL,
  `STATUSUKT` varchar(10) NOT NULL,
  `GENDER` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_dasar`
--

INSERT INTO `data_dasar` (`ID`, `NIM`, `NAMA`, `SEMESTER`, `ALAMAT`, `NO.TELP`, `PRODI`, `FAKULTAS`, `TAHUNMASUK`, `UKT`, `STATUSUKT`, `GENDER`) VALUES
(1, '1101623009', 'Muhammad Ruli Al Rasyid', 1, 'Jalan Palmerah Barat 4', '0895342446928', 'S1 Teknologi Pendidikan', 'Fakultas Ilmu Pendidikan', 2023, 1000000, 'Belum', 'Laki-laki'),
(2, '1101623021', 'Nathania Nasywa Salsabila', 1, 'Jalan Ganggeng 7 No. 3, Tj Priok', '085939460037', 'S1 Teknologi Pendidikan', 'Fakultas Ilmu Pendidikan', 2023, 2000000, 'Sudah', 'Perempuan'),
(3, '1101623041', 'Dinda Yusriyah Athallah', 1, 'Cikarang Barat, Bekasi', '085283584834', 'S1 Teknologi Pendidikan', 'Fakultas Ilmu Pendidikan', 2023, 3000000, 'Sudah', 'Perempuan'),
(4, '1102620065', 'Josephine Gabriella', 7, 'Jl. Anggrek Indah No. 18, Jakarta Selatan', '089876543211', 'Pendidikan Luar Biasa', 'Fakultas Ilmu Pendidikan', 2020, 4000000, 'Belum', 'Perempuan'),
(5, '1102623071', 'Salsabila Putri Rahmadian', 1, 'Jalan Raya Condet ', '087811109845', 'Pendidikan Khusus', 'Fakultas Ilmu Pendidikan', 2023, 5000000, 'Sudah', 'Perempuan'),
(6, '1104620099', 'Melodi Adinda Vibelsa', 7, 'Kompleks Citra Murni, Blok B3, Jakarta Timur', '081727365260', 'Pendidikan Luar Sekolah', 'Fakultas Ilmu Pendidikan', 2020, 1000000, 'Sudah', 'Perempuan'),
(7, '1105620031', 'Sriandini Nufikha', 7, 'Jl. Kemuning III', '083807811897', 'Pendidikan Guru Sekolah Dasar', 'Fakultas Ilmu Pendidikan', 2020, 2000000, 'Sudah', 'Perempuan'),
(8, '1107622014', 'Azizah Fiqriah', 3, 'Jalan Malaka 1 Rorotan', '085172156816', 'Pendidikan Guru Sekolah Dasar', 'Fakultas Ilmu Pendidikan', 2022, 3000000, 'Belum', 'Perempuan'),
(9, '1107622031', 'Vera Juniar', 3, 'Jl. Bentengan II', '0895393804080', 'Pendidikan Guru Sekolah Dasar', 'Fakultas Ilmu Pendidikan', 2022, 4000000, 'Sudah', 'Perempuan'),
(10, '1107622073', 'Tiara Nur Cahyati', 3, 'Pulo Gadung', '083871789213', 'Pendidikan Guru Sekolah Dasar', 'Fakultas Ilmu Pendidikan', 2022, 5000000, 'Sudah', 'Perempuan'),
(11, '1107622109', 'Jonatan Fernando Silaban', 3, 'Jl. SPG 7 Lubang Buaya', '087868809209', 'Pendidikan Guru Sekolah Dasar', 'Fakultas Ilmu Pendidikan', 2022, 1000000, 'Sudah', 'Laki-laki'),
(12, '1202622002', 'Putri Khoirunnisa', 3, 'Jalan Puskesmas 2, Jakarta Barat', '085776434274', 'Pendidikan Bahasa Inggris', 'Fakultas Bahasa dan Seni', 2022, 2000000, 'Belum', 'Perempuan'),
(13, '1205622067', 'Najla Humaira Salwa', 3, ' Jalan Pisangan Baru No.2', '085780188112', 'Pendidikan Bahasa Arab', 'Fakultas Bahasa dan Seni', 2022, 3000000, 'Sudah', 'Perempuan'),
(14, '1205622083', 'Fadilah Fatimatazzahra', 3, 'Jl. Pemuda III ', '085377164731', 'Pendidikan Bahasa Arab', 'Fakultas Bahasa dan Seni', 2022, 4000000, 'Sudah', 'Perempuan'),
(15, '1205622087', 'Raihani Qatrunnada Dhiya Afra', 3, 'Kp. Pulo Jahe - Jakarta Timur', '081294741502', 'Pendidikan Bahasa Arab', 'Fakultas Bahasa dan Seni', 2022, 5000000, 'Sudah', 'Perempuan'),
(16, '1206620037', 'Elisabeth Juannita', 7, 'Jl. Prima Sejahtera No. 25, Jakarta Selatan', '087943210988', 'Pendidikan Seni Rupa', 'Fakultas Bahasa dan Seni', 2020, 1000000, 'Belum', 'Perempuan'),
(17, '1209622001', 'Zaneta Aurora', 3, 'Cluster Melati Damai, Jakarta Selatan', '089789012345', 'Sastra Inggris', 'Fakultas Bahasa dan Seni', 2022, 2000000, 'Sudah', 'Perempuan'),
(18, '1211621004', 'Athira Zahra Rajani', 5, 'Apartemen Serenity Tower, Tower C, Lantai 25, Jakarta Pusat', '089671828361', 'Pendidikan Bahasa Jepang', 'Fakultas Bahasa dan Seni', 2021, 3000000, 'Sudah', 'Perempuan'),
(19, '1301622004', 'Retno Restu Lestari', 3, 'Jl. Bunga Indah No. 123, Jakarta Selatan', '081234567890', 'Pendidikan Matematika', 'Fakultas Matematika dan Ilmu Pengetahuan Alam', 2022, 4000000, 'Sudah', 'Perempuan'),
(20, '1301622006', 'Dwy Agustinah Fauziyah', 3, 'KP. PULO JAHE RT 002 RW 010 kel. jatinegara kec. cakung jakarta timur DKI Jakarta 13930', '085781423685', 'Pendidikan Matematika', 'Fakultas Matematika Dan Ilmu Pengetahuan Alam', 2022, 5000000, 'Belum', 'Perempuan'),
(21, '1301622024', 'Annida Elmassabil', 3, 'Jalan Srengseng Sawah Jagakarsa, Jakarta Selatan', '082246834944', 'Pendidikan Matematika', 'Fakultas Matematika Dan Ilmu Pengetahuan Alam', 2022, 1000000, 'Sudah', 'Perempuan'),
(22, '1301622040', 'Zidane Musyaffa Riesman Putra', 3, 'Komplek Sekretariat Negara Blok D 11 Pondok Kacang Barat, Pondok Aren, Tangerang Selatan, Banten 15', '085173123665', 'Pendidikan Matematika', 'Fakultas Matematika Dan Ilmu Pengetahuan Alam', 2022, 2000000, 'Sudah', 'Laki-laki'),
(23, '1302622015', 'Cantika', 3, 'Kemayoran', '085770356181', 'Pendidikan Fisika', 'Fakultas Matematika Dan Ilmu Pengetahuan Alam', 2022, 3000000, 'Sudah', 'Perempuan'),
(24, '1302622028', 'Defi Rosiana Azizah', 3, 'Kelapa Dua, Tugu, Cimanggis, Depok', '085219371357', 'Pendidikan Fisika', 'Fakultas Matematika Dan Ilmu Pengetahuan Alam', 2023, 4000000, 'Belum', 'Perempuan'),
(25, '1305622015', 'Citra Salsabila Oroh', 3, 'Jl. Manager 1 No. 159 RT/RW 05/12', '087748273883', 'Matematika', 'Fakultas Matematika dan Ilmu Pengetahuan Alam', 2022, 5000000, 'Sudah', 'Perempuan'),
(26, '1305622068', 'Raffi Aliefian Bintang Samudera ', 3, 'Jl.Puskesmas No.37', '081398260383', 'Matematika', 'Fakultas Matematika dan Ilmu Pengetahuan Alam', 2022, 1000000, 'Sudah', 'Laki-laki'),
(27, '1305623059', 'Poriananda Patmasari', 1, 'Jl. Bangka Raya Gg. Amal IV RT.002/RW.011', '0895700877733', 'Matematika', 'Fakultas Matematika dan Ilmu Pengetahuan Alam', 2023, 2000000, 'Sudah', 'Perempuan'),
(28, '1306622006', 'Wahyu Esa Wulan Ndari ', 3, 'Jl. Gudang Air No. 5', '082182359153', 'Fisika', 'Fakultas Matematika dan ilmu pengetahuan alam ', 2022, 3000000, 'Belum', 'Perempuan'),
(29, '1308621048', 'Yasmine Afiani Gumilar ', 5, 'Makasar, kel. Makasar ', '081211555951', 'Biologi ', 'Fakultas Matematika dan Ilmu Pengetahuan Alam', 2021, 4000000, 'Sudah', 'Perempuan'),
(30, '1308622020', 'Restu Gymnastiar Pasa', 3, 'Cipinang Timur', '089517124092', 'Biologi', 'Fakultas Matematika dan Ilmu Pengetahuan', 2022, 5000000, 'Sudah', 'Laki-laki'),
(31, '1313622002', 'Annisa Sekar Rini Ayu', 5, 'Rawamangun', '085693116277', 'Ilmu Komputer', 'Fakultas Matematika dan Ilmu Pengetahuan Alam', 2021, 1000000, 'Sudah', 'Perempuan'),
(32, '1313622029', 'Syahreza Sulthan Ramzy', 3, 'Rawamangun', '081291191906', 'Ilmu Komputer', 'Fakultas Matematika dan Ilmu Pengetahuan Alam', 2022, 2000000, 'Belum', 'Laki-laki'),
(33, '1313622047', 'Christy Graciella', 3, 'Jalan Warakas V Gang 7', '088512545623', 'Ilmu Komputer', 'Fakultas Matematika dan Ilmu Pengetahuan Alam', 2022, 3000000, 'Sudah', 'Perempuan'),
(34, '1313622048', 'Azzahra Agnimaya', 5, 'Rawamangun', '085760915695', 'Ilmu Komputer', 'Fakultas Matematika dan Ilmu Pengetahuan Alam', 2021, 4000000, 'Sudah', 'Perempuan'),
(35, '1314622037', 'Khairul Gunawan', 3, 'Jalan Jati Raya Blok A No. 133', '081286525734', 'Statistika', 'Matematika dan Ilmu Pengetahuan Alam', 2022, 5000000, 'Sudah', 'Laki-laki'),
(36, '1401622027', 'Agnes Dwi Marlina', 3, 'Apartemen Citra Harmoni, Tower C, Lantai 15, Jakarta Pusat', '081752681922', 'Pendidikan Pancasila dan Kewarganegaraan', 'Fakultas Ilmu Pendidikan', 2022, 1000000, 'Belum', 'Perempuan'),
(37, '1402620032', 'Rachel Natasya Alicia', 7, 'Apartemen Bintang Harmoni, Tower A, Lantai 8, Jakarta Utara', '087609876543', 'pendidikan geografi', 'Fakultas Ilmu Sosial', 2020, 2000000, 'Sudah', 'Perempuan'),
(38, '1405622006', 'Syifa Rahma Nabila', 3, 'Jalan Kecapi II No. 11', '088214740083', 'Pendidikan Sosiologi', 'Fakultas Ilmu Sosial', 2022, 3000000, 'Sudah', 'Perempuan'),
(39, '1411622003', 'Istiqomah Wulandari', 3, 'Jalan Daksinapati Barat No.5', '081290151561', 'Geografi', 'Fakultas Ilmu Sosial', 2022, 4000000, 'Sudah', 'Perempuan'),
(40, '1411622062', 'Ashila Fitria Zahra', 3, 'Jalan Swasembada Barat 21', '081223146292', 'Geografi', 'Fakultas Ilmu Sosial', 2022, 5000000, 'Belum', 'Perempuan'),
(41, '1411623027', 'Ganank Herie Baskoro', 1, 'Jl. Parung Banteng, Gang Mbah Patih RT 03/01, Katulampa, Bogor.', '089514844035', 'Geografi', 'Fakultas Ilmu Sosial', 2023, 1000000, 'Sudah', 'Laki-laki'),
(42, '1411623057', 'Audia Ratu Imtiyaz Waradana', 1, 'Jl. Kelapa No. 54, Rt.05/Rw.02, Ceger, Cipayung, Jakarta Timur', '089609730033', 'Geografi', 'Fakultas Ilmu Sosial', 2023, 2000000, 'Sudah', 'Perempuan'),
(43, '1411623062', 'Sultan Faariz Putra Arifin', 1, 'Jl. Kota Bambu Utara I', '082211550134', 'Geografi', 'Fakultas Ilmu Sosial', 2023, 3000000, 'Sudah', 'Laki-laki'),
(44, '1411623089', 'Dian Primasari', 1, 'Jl. Pemuda Asli 2', '085813752655', 'Geografi', 'Fakultas Ilmu Sosial', 2023, 4000000, 'Belum', 'Perempuan'),
(45, '1414422025', 'Yabes Edmund Macario Siburian', 3, 'Perumahan Mawar Sari, Jakarta Barat', '081587654321', 'Hubungan Masyarakat dan Komunikasi', 'Fakultas Ilmu Sosial', 2022, 5000000, 'Sudah', 'Laki-laki'),
(46, '1414422057', 'Rizca Fitriana Dewi', 3, 'Kelapa Gading', '08551085103', 'Hubungan Masyarakat dan Komunikasi', 'Fakultas Ilmu Sosial', 2022, 1000000, 'Sudah', 'Perempuan'),
(47, '1501623001', 'Muhammad Jefris', 1, 'Jalan Pemuda 1', '082339670356', 'Pendidikan Vokasional Teknik Elektro', 'Fakultas Teknik', 2023, 2000000, 'Sudah', 'Laki-laki'),
(48, '1501623018', 'Abin Syahputra', 1, 'Jalan Bugis No. 98, Tj Priok', '085694402410', 'Pendidikan Vokasional Teknik Elektro', 'Fakultas Teknik', 2023, 3000000, 'Belum', 'Laki-laki'),
(49, '1502623016', 'Iqbal Muhamad Fadhil', 1, 'Kaliabang Tengah, Bekasi Utara', '088808917694', 'S1 Pendidikan Teknik Mesin', 'Fakultas Teknik', 2023, 4000000, 'Sudah', 'Laki-laki'),
(50, '1502623042', 'Diana Nahaya', 1, 'Warakas, Tj Priok', '08979032198', 'S1 Pendidikan Teknik Mesin', 'Fakultas Teknik', 2023, 5000000, 'Sudah', 'Perempuan'),
(51, '1502623047', 'Noval Rizki Pratama', 1, 'Taman Pagelaran, Bogor', '087787794556', 'S1 Pendidikan Teknik Mesin', 'Fakultas Teknik', 2023, 1000000, 'Sudah', 'Laki-laki'),
(52, '1502623073', 'Bima Reza Athallah Putra', 1, 'Cipinang Muara', '081294913144', 'S1 Pendidikan Teknik Mesin', 'Fakultas Teknik', 2023, 2000000, 'Belum', 'Laki-laki'),
(53, '1503622003', 'Mawar Helena Manuella Napitupulu', 3, 'Perum Graha Padjajaran', '087876452456', 'Pendidikan Teknik Bangunan\r\n', 'Fakultas Teknik', 2022, 3000000, 'Sudah', 'Perempuan'),
(54, '1503622037', 'Alda Mutia Azzahra', 3, 'Pahlawan, Kota Bogor', '081967543899', 'Pendidikan Teknik Bangunan\r\n', 'Fakultas Teknik', 2022, 4000000, 'Sudah', 'Perempuan'),
(55, '1503622063', 'Aisyah Dita Qanaah\r\n', 3, 'Jalan Raya Tajur, Bogor Timur\r\n', '081948277290', 'Pendidikan Teknik Bangunan\r\n', 'Fakultas Teknik', 2022, 5000000, 'Sudah', 'Perempuan'),
(56, '1503622072', 'Noruza Egi', 3, 'Jalan Bahagia No. 5', '087765432188', 'Pendidikan Teknik Bangunan\r\n', 'Fakultas Teknik', 2022, 1000000, 'Belum', 'Laki-laki'),
(57, '1507521053', 'Taufik Alhakim\r\n', 5, 'Jl. Anggrek8 Blok,O No.25 Komplek Deppen Harjamukti, Cimanggis, Depok\r\n', '082112370785', 'Teknik Rekayasa Otomasi\r\n', 'Fakultas Teknik\r\n', 2021, 2000000, 'Sudah', 'Laki-laki'),
(58, '1511521005', 'Erlisa Aulia', 5, 'Jl Tebet Brt VIII/23, DKI Jakarta', '081829102219', 'Teknik Elektronika', 'Fakultas Teknik', 2021, 3000000, 'Sudah', 'Perempuan'),
(59, '1515620027', 'Rachmadini Salsah Billah', 7, 'Jl Pagarsih Brt IV/55, Jawa Barat', '087885802955', 'Teknik Elektronika', 'Fakultas Teknik', 2020, 4000000, 'Sudah', 'Perempuan'),
(60, '1515622011', 'Vinolia Putri Celika', 3, 'Jl. Basmol Raya Gg. HM Zein ', '087876452773', 'Psikologi', 'Fakultas Psikologi', 2022, 5000000, 'Belum', 'Perempuan'),
(61, '1515622030', 'Yasmin Yassir', 3, 'Jalan Kenaga Jaya', '087865432109', 'Pendidikan Tata Busana', 'Fakultas Teknik', 2022, 1000000, 'Sudah', 'Perempuan'),
(62, '1516620009', 'Mediefa Ayu Raraendra Eday Tetha', 7, 'Jl Kalibokor Slt 2, Jawa Timur', '087774724412', 'Pendidikan Tata Rias', 'Fakultas Teknik', 2020, 2000000, 'Sudah', 'Perempuan'),
(63, '1521422036', 'Siti Sahlaa Hafizhah', 3, 'Kebon Bawang Tj Priok Jakarta Utara', '081911082823', 'S1 Desain Mode', 'Fakultas Teknik', 2022, 3000000, 'Sudah', 'Perempuan'),
(64, '1525423058', 'Muhammad Riski Rifandi', 1, 'Jalan Kali Baru Barat 4', '085777126735', 'S1 Rekayasa Kontruksi Bangunan', 'Fakultas Teknik', 2023, 4000000, 'Belum', 'Laki-laki'),
(65, '1526423023', 'Yovalino', 3, 'Jalan Jayakarisa', '086452718591', 'Teknik Mesin', 'Fakultas Teknik', 2022, 5000000, 'Sudah', 'Laki-laki'),
(66, '1601622039', 'Reyvasha Jingga Yunita Dewi', 3, 'Jalan Rorotan 3', '0895336837088', 'S1 Pendidikan Jasmani', 'Fakultas Ilmu Keolahragaan', 2022, 1000000, 'Sudah', 'Perempuan'),
(67, '1602619059', 'Gabriel Moningka', 9, 'Apartemen Bahagia Residences, Tower B, Lantai 12, Jakarta Pusat', '087609876544', 'Pendidikan Kepelatihan Olahraga', 'Fakultas Ilmu Keolahragaan', 2019, 2000000, 'Sudah', 'Perempuan'),
(68, '1603620034', 'Ade Rafif Fachrudin', 7, 'Jl. Citra Damai No. 55, Jakarta Selatan', '081321098766', 'Ilmu Keolahragaan', 'Fakultas Ilmu Keolahragaaan', 2020, 3000000, 'Belum', 'Laki-laki'),
(69, '1603621043', 'Raihan Nur Alip', 5, 'Jalan Raya Kramat', '085718937973', 'Ilmu Keolahragaan', 'Fakultas Ilmu Keolahragaan', 2021, 4000000, 'Sudah', 'Laki-laki'),
(70, '1603623029', 'Yashinta Gustianti\r\n', 1, 'Jln Ciomas Graha Indah\r\n', '081905805789', 'Ilmu Keolahragaan\r\n', 'Fakultas Ilmu Keolahragaan\r\n', 2023, 5000000, 'Sudah', 'Perempuan'),
(71, '1604619014', 'Alifa Zahra Safira\r\n', 9, 'Jl.Haji Sabni Rt001/012', '08653667889', 'Kepelatihan Kecabangan Olahrag', 'Fakultas Ilmu Keolahragaan ', 2019, 1000000, 'Sudah', 'Perempuan'),
(72, '1606822057', 'Megan Sukma', 3, 'Perumahan Mawar Damai, Blok G4, Jakarta Utara', '089678964431', 'Pendidikan Jasmani', 'Fakultas Ilmu Keolahragaan', 2022, 2000000, 'Belum', 'Perempuan'),
(73, '1701619021', 'Olin Putri Marsyanda', 9, 'Jl P Jayakarta 73 Bl DI/12 A', '098162516678', 'Akutansi ', 'Fakultas Ekonomi', 2019, 3000000, 'Sudah', 'Perempuan'),
(74, '1701621122', 'Bintang Saputra', 3, 'Jl Kesederhanaan No 62', '087461890173', 'Teknik Elektro', 'Fakultas Teknik', 2022, 4000000, 'Sudah', 'Laki-laki'),
(75, '1701622053', 'Jasmine Syarifah', 3, 'Jalan Perumahan Arya Graha', '087261849108', 'Pendidikan Ekonomi', 'Fakultas Ekonomi', 2022, 5000000, 'Sudah', 'Perempuan'),
(76, '1705621018', 'Safitri Eka Lestari', 5, 'Jl P Jayakarta', '081283676584', 'Pendidikan Bisnis', 'Fakultas Ekonomi', 2021, 1000000, 'Belum', 'Perempuan'),
(77, '1705621072', 'Adhitya Syahputra', 5, 'Jl. Anggrek Biru No. 20, Jakarta Timur', '085710987654', 'Manajemen', 'Fakultas Ekonomi', 2021, 2000000, 'Sudah', 'Laki-laki'),
(78, '1705622005', 'Angella Priyatna', 3, 'Jakarta Barat', '081513867892', 'S1 Manajemen', 'Fakultas Ekonomi', 2022, 3000000, 'Sudah', 'Perempuan'),
(79, '1705622042', 'Atika Siti Hajar', 3, 'Jalan Sumur Binong VI No. 73', '088225687039', 'S1 Manajemen', 'Fakultas Ekonomi', 2022, 4000000, 'Sudah', 'Perempuan'),
(80, '1705622079', 'Nuvi Revalina Pangandaheng', 3, 'Pondok Sukatani Permai, Blok L4 No. 8', '082122840280', 'S1 Manajemen', 'Fakultas Ekonomi', 2022, 5000000, 'Belum', 'Perempuan'),
(81, '1705622116', 'Yoselin Pardosi ', 3, 'Griya Alam Sentosa Blok A 20 No 1A', '082211422284', 'Manajemen', 'Fakultas Ekonomi', 2022, 1000000, 'Sudah', 'Perempuan'),
(82, '1705622135', 'Made Tiara Diva Sarasdewi Sutama', 3, 'Apartment Casablanca East Residence, Duren Sawit, Jakarta Timur', '082145378075', 'Manajemen', 'Fakultas Ekonomi', 2022, 2000000, 'Sudah', 'Perempuan'),
(83, '1705622138', 'Najma Zahira Rahmita', 3, 'Jalan Warakas 3 Gang 5', '088210962400', 'S1 Manajemen', 'Fakultas Ekonomi', 2022, 3000000, 'Sudah', 'Perempuan'),
(84, '1705622146', 'Fayza Abia Kamila', 3, 'Puri Gading, Alam Raya 1, Blok L-11', '081398569867', 'S1 Manajemen', 'Fakultas Ekonomi', 2022, 4000000, 'Belum', 'Perempuan'),
(85, '1705622162', 'Qalbu Hayu', 3, 'Jalan Swasembada Barat 21 No. 33', '085890257211', 'S1 Manajemen', 'Fakultas Ekonomi', 2022, 5000000, 'Sudah', 'Perempuan'),
(86, '1706621005', 'Grace Karmel Djapri', 5, 'Kompleks Dahlia Indah, Blok B4, Jakarta Barat', '085678905432', 'S1 Akutansi', 'Fakultas Ekonomi', 2021, 1000000, 'Sudah', 'Perempuan'),
(87, '1706622082', 'Elvina Widya Hani Dalimunthe', 3, 'Jalan Jagawana Bekasi', '089507667409', 'S1 Akutansi', 'Fakultas Ekonomi', 2022, 2000000, 'Sudah', 'Perempuan'),
(88, '1706622103', 'I Made Wisnu Wijnana Giri', 3, 'Jl. Sabar No. 5 KAV. 8 petukangan selatan pesanggrahan', '085813220085', 'Akutansi', 'Fakultas Ekonomi', 2022, 3000000, 'Belum', 'Laki-laki'),
(89, '1706622108', 'Vina Ayu Naafilah', 3, 'Jl rawasari 2', '082112719020', 'Akutansi', 'Fakultas Ekonomi', 2022, 4000000, 'Sudah', 'Perempuan'),
(90, '1707620084', 'Muhammad Sabiq Ahsanul Haq', 7, 'Jalan Galur Sari IX No.22', '085717484233', 'Pendidikan Bisnis', 'Fakultas Ekonomi', 2020, 5000000, 'Sudah', 'Laki-laki'),
(91, '1709620095', 'Praditha Salwa Melodi', 7, 'Jl. Puri Makmur No. 35, Jakarta Barat', '085710987655', 'Pendidikan Administrasi Perkantoran', 'Fakultas Ekonomi', 2020, 1000000, 'Sudah', 'Perempuan'),
(92, '1709622037', 'Azrah Maysa Putri', 3, 'Jalan Kali Baru Barat IV', '081213841824', 'Pendidikan Administrasi Perkantoran', 'Fakultas Ekonomi', 2022, 2000000, 'Belum', 'Perempuan'),
(93, '1710621046', 'Wa Ode Regina Hersanti', 5, 'Jalan Kemuning Raya No. 45', '089654321098', 'S1 Bisnis Digital', 'Fakultas Ekonomi', 2021, 3000000, 'Sudah', 'Perempuan'),
(94, '1712422030', 'Jundira', 3, 'Jalan Swasembada Barat 20 No. 40', '085882486036', 'Administrasi Perkantoran Digital', 'Fakultas Ekonomi', 2022, 4000000, 'Sudah', 'Perempuan'),
(95, '1712422055', 'Ni Made Krisma Dwi Yuliati', 3, 'Perum Visar Indah Pratama Jl. Wijaya Kusuma II bloka VA11 NO16 RW012/RT005', '085157497660', 'Administrasi Perkantoran Digital', 'Fakultas Ekonomi', 2022, 5000000, 'Sudah', 'Perempuan'),
(96, '1713422001', 'Yohanes', 3, 'Jl. Kramat Sentiong', '081311841725', 'Akuntansi Sektor Publik', 'Fakultas Ekonomi', 2022, 1000000, 'Belum', 'Laki-laki'),
(97, '1714422073', 'Theodore Ezekiel', 3, 'Jl. Rawamangun Muka', '081310795808', 'Pemasaran Digital', 'Fakultas Ekonomi', 2022, 2000000, 'Sudah', 'Laki-laki'),
(98, '1801622092', 'Lucky Davri', 3, 'Jl. Budirahayu 3 No.29, Jakarta Pusat', '081223274400', 'Psikologi', 'Fakultas Pendidikan Psikologi', 2022, 3000000, 'Sudah', 'Laki-laki'),
(99, '1801622170', 'Alvina Yunita', 3, 'Jl. Karanggan rt001 rw001 No. 20 Kel. Puspasari, Kec. Citeureup, Kab. Bogor', '08979363282', 'Psikologi', 'Fakultas Pendidikan Psikologi', 2022, 4000000, 'Sudah', 'Perempuan'),
(100, '1801622193', 'Adinda Salsabilla Nabighah Ramadhani', 3, 'Kelapa Gading', '0818-0675-7181', 'Psikologi', 'Fakultas Pendidikan Psikologi', 2022, 5000000, 'Belum', 'Perempuan'),
(104, '1313622015', 'Muhamad Rizki Kadafi', 3, 'Jl. Abdul Rahman Saleh', '0895373763326', 'Ilmu Komputer', 'Matematika dan Ilmu Pengetahuan Alam', 2022, 4000000, 'Sudah', 'Laki-laki');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `username`, `password`) VALUES
(2, 'Admin', 'admin', '$2y$10$7t3ydgRIaJMbgTgsBfYVw.Aj.q38U94czZfsKV/wwfkqRPwGbWZ5G'),
(3, 'Admin1', 'admin1', '$2y$10$vwvsnaShC9cbH2JtbqsMVOb6Gzth0plgVH9lm/XsPQkPis.MPVL5O'),
(4, 'Admin2', 'admin2', '$2y$10$bC.sDFufrum5piyZsu/EqeBm4ymQ6yDH6/.USv39ushMDb6fxL6va'),
(5, 'Admin3', 'admin3', '$2y$10$f59E00tmpf/IpgsykMVMH.QJK7NSyRfnAupxWjoBs2VJ0QiRDB9Gq'),
(6, 'Admin4', 'admin4', '$2y$10$xZOv9C/uT1l4/5LHGQbuSerrcpnsoZRGjPU9jrKDsWi6ExbZflJ32'),
(7, 'Admin5', 'admin5', '$2y$10$UPzLcJ8g4U96QkXXcHsy0ODnkPu7L2Eh6pOovgmw.L6K1jQb3AWgS');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_dasar`
--
ALTER TABLE `data_dasar`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_dasar`
--
ALTER TABLE `data_dasar`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
