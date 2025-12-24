-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: fdb1030.awardspace.net
-- Waktu pembuatan: 24 Des 2025 pada 05.51
-- Versi server: 8.0.32
-- Versi PHP: 8.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `4514083_halimzz`
--
CREATE DATABASE IF NOT EXISTS `4514083_halimzz` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `4514083_halimzz`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `members`
--

CREATE TABLE `members` (
  `nim` varchar(10) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `tgl_lhr` date DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `hobi` varchar(50) DEFAULT NULL,
  `quotes` text,
  `vision` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `members`
--

INSERT INTO `members` (`nim`, `nama`, `tgl_lhr`, `foto`, `hobi`, `quotes`, `vision`) VALUES
('2502020026', 'Nina Iswanti', '2007-04-14', '2502020026.jpg', 'Memasak & membaca', 'Jangan pernah takut mencoba karena kesempatan tidak datang dua kali.', 'Menjadi penulis yang handal'),
('2502020027', 'Fillia Soffia', '0000-00-00', '2502020027.jpg', 'Berenang', '[value-6]', ''),
('2502020028', 'Maira Dinta Kusuma', '2007-05-09', '2502020028.jpg', 'Badminton', '\"Hasil yang indah tidak terlahir dari langkah yang mudah.\"', 'Menjadi pengusaha sukses yang perusahaannya dikenal di nasional sampai mancanegara.'),
('2502020029', 'Alvika Lutfitamulia', '2007-01-16', '2502020029.jpg', 'Memasak', 'Tidak ada yang mustahil selagi kita berdoa dan berusaha \r\nمَنْ جَدَّ وَجَدَ ', 'Pengusaha kaya raya'),
('2502020030', 'Medinna Asmi Khairani', '2007-07-22', '2502020030.jpg', 'Kejar Prestasi', 'A problem won\'t solved itself, you gotta face it.', 'Successful entrepreneur'),
('2502020031', 'Titania Sekar Tyas Demica', '2007-05-28', '2502020031.jpg', 'Membaca', '\"jangan lupa sholat guys\"', 'membangun indonesia cerdas 2045'),
('2502020032', 'M. Zaki Azhar Maulana', '0000-00-00', '2502020032.jpg', 'Membaca, Menulis, Pujangga abiez, Berbicara (podca', '[value-6]', ''),
('2502020033', 'Azka Hayunna Bilqisty', '0000-00-00', '2502020033.jpg', 'Nyanyi, Nulis Puisi, Denger Musik, Nonton Film', '[value-6]', ''),
('2502020034', 'Yusuf Maulana', '0000-00-00', '2502020034.jpg', 'Nonton Muse Indonesia', '[value-6]', ''),
('2502020035', 'Najwa Asna', '2007-01-22', '2502020035.jpg', 'Tidur', '\"hai\"', 'Oasis'),
('2502020037', 'Riefadia Elchi Chiquita Dewi', '2007-04-28', '2502020037.jpg', 'Nonton', '\"Hidup ini sejalan searah dengan perbuatan dan perkataan kita\"', 'Pengennya cryo atau gk hydro '),
('2502020038', 'Aulia Azzahro', '2007-04-28', '2502020038.jpg', 'Nonton', '\"sehat selalu biar jadi wong sugih\"', 'Jadi orang kaya raya 50 turunan '),
('2502020039', 'Khaifa Valaecia Rahmatillah Putri', '2007-03-11', '2502020039.jpg', 'Dance', '\"Belum berakhir untuk menemukan awal\"', 'Guru lah well, insyaallah..'),
('2502020040', 'Athaya Maharani Nurusyaika', '2006-08-10', '2502020040.jpg', 'Mendengarkan Musik', 'Lingkungan yang baik melahirkan pribadi yang hebat — karena karaktermu tercermin dari siapa temanmu.', 'Menjadi individu yang terus belajar dan berkembang, mampu berkomunikasi secara efektif, serta memberikan kontribusi positif bagi dunia pendidikan dan kebahasaan.'),
('2502020041', 'Livia Rheta Maolaya', '0000-00-00', '2502020041.jpg', 'Listening to Music From Reality Club🫶🏻', '[value-6]', ''),
('2502020042', 'Achmad Salman Marzuki', '2006-10-13', '2502020042.jpg', 'Trevelling', 'diam bukan berarti tidak tahu', 'menjadi dosen di universitas negeri di jawa tengah'),
('2502020043', 'M. Albar Al Husein', '0000-00-00', '2502020043.jpg', 'Cari Duit', '[value-6]', ''),
('2502020044', 'Gracia Febriani Savira Taboy', '2007-02-23', '2502020044.jpg', 'Main Basket dan Mendengarkan Musik', '\"If You Want It, You Got It\"', 'Menjadi Guru Yang Siap dan Menjadi Diri Sendiri.'),
('2502020045', 'Karina Aghniya Luthfiyanti', '0000-00-00', '2502020045.jpg', 'Baca Novel, Nonton Film dan Drakor', '[value-6]', ''),
('2502020046', 'Khilyatus Sa`adah', '2007-08-20', '2502020046.jpg', 'Memasak', 'teruslah menjadi baik, meskipun kita ga diperlakukan dengan baik ', '-'),
('2502020047', 'Anggun Khaulida Rahma', '0000-00-00', '2502020047.jpg', '🙌🏻👊🏻🫰🏻', '[value-6]', ''),
('2502020048', 'Aura Nawwal Tsabita', '0000-00-00', '2502020048.jpg', '-', '[value-6]', ''),
('2502020049', 'Fadzilah Nuraini', '2007-02-10', '2502020049.jpg', 'Masak Bisa, Volly Bisa', 'tidak ada jalan yang mulus, semua akan menggronjal pada waktunya', 'udah gatau lagi'),
('2502020050', 'Kasih Bintang Fajar', '2008-04-11', '2502020050.jpg', 'Menggambar', 'Cobain aja semua walaupun kadang ada capenya', 'Menjadi dosen kesayangan para mahasiswa '),
('2502020052', 'M. Rizki Hafis Syahbana', '2006-09-11', '2502020052.jpg', 'Berkelana di Lautan Pengetahuan Kosmos', 'Merangkul ketidaktahuan bukanlah kelemahan, melainkan proses aktualisasi mencapai pengetahuan yang koheren.', 'Menjadi dosen yang kompeten.'),
('2502020053', 'Canes Putri Samara', '2007-05-11', '2502020053.jpg\r\n', 'Jalan-jalan', '\"Tetaplah bernafas walaupun terengah-engah\"', 'jadi orang WARAS (walaupun terikat tetapi bebas)'),
('2502020055', 'Ambarwati', '2006-07-29', '2502020055.jpg', 'Membaca Novel', 'Jadilah berguna', 'Jadi Jurnalis di Tempo'),
('2502020056', 'Nabil Halim', '2006-10-12', '2502020056.jpg', 'Ngoding, Ngedit', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque dictum ante et varius auctor.', 'Be an attractive and innovative person.'),
('2502020058', 'Zulfan Bayu Ardika', '2006-07-19', '2502020058.jpg', 'Hibernasi', 'Tangi mas, turumu miring!!!', 'Menikah dengan Oshi'),
('2502020059', 'Farid Nova', '2006-11-26', '2502020059.jpg', 'Tidur', 'Jika tidak ada peluru lagi maka jadilah peluru itu', 'Membahas dan menyebar luaskan sejarah'),
('2502020060', 'Mahendrata Febriyanto Ardi', '2007-02-19', '2502020060.jpg', 'Membaca', 'tak ada salahnya menginjakan kaki yang bukan pilihan dariku\r\njustru inilah yang dapat menerbangkanku melihat luas dan indahnya dunia', 'guru yang menyukseskan Indonesia emas 2045'),
('2502020061', 'Hanifah Azzahra Putri', '2006-07-17', '2502020061.jpg', 'Tidur', '[value-6]even we have bad days and bad luck, we have to do it now and keep fighting for our lives.', 'become a rich person (rich in heart, faith, and rich in everything)'),
('2502020062', 'Tahta Sriseta Setyasa', '2007-06-28', '2502020062.jpg', 'Nonton, Nyanyi, Denger Musik', 'Langit mendengar doa yang tulus, bumi menilai usaha yang sungguh', 'Sukses tanpa mata panda'),
('2502020064', 'Keysa Putri Anggraini', '2007-04-23', '2502020064.jpg', 'Ngelakuin Apa Aja Yang Aku Sukaa😍😍', 'Life goes on, no matter how feebile you are, so try to be stronger.', 'Tenaga ajar yang berdedikasi tinggi'),
('2502020065', 'M. Fairus Ibrahim Satria Pratama', '2007-10-23', '2502020065.jpg', 'Nonton Film', 'hari ini berjuang, bsk beruang ', 'mau jd ultramen');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sosmed`
--

CREATE TABLE `sosmed` (
  `id_sosmed` int NOT NULL,
  `nim` varchar(10) DEFAULT NULL,
  `ig` varchar(255) DEFAULT NULL,
  `tiktok` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `x` varchar(255) DEFAULT NULL,
  `fb` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `pw` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`nim`);

--
-- Indeks untuk tabel `sosmed`
--
ALTER TABLE `sosmed`
  ADD PRIMARY KEY (`id_sosmed`),
  ADD KEY `sosmed_ibfk_1` (`nim`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `sosmed`
--
ALTER TABLE `sosmed`
  ADD CONSTRAINT `sosmed_ibfk_1` FOREIGN KEY (`nim`) REFERENCES `members` (`nim`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
