-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 08 Jul 2023 pada 23.28
-- Versi server: 10.11.4-MariaDB
-- Versi PHP: 8.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `table`
--

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `alternatif`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `alternatif` (
`id` bigint(20) unsigned
,`book_code` varchar(255)
,`title` varchar(255)
,`rating` double
,`price` double
,`pages` double
,`publication_year` double
,`rent_duration` double
,`topic_suitability` double
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_code` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `pages` double DEFAULT NULL,
  `publication_year` double DEFAULT NULL,
  `rent_duration` double DEFAULT NULL,
  `topic_suitability` double DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'in stock',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `book_category`
--

CREATE TABLE `book_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `criteria`
--

CREATE TABLE `criteria` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `bobot` double NOT NULL,
  `label` enum('Benefit','Cost') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `criteria`
--

INSERT INTO `criteria` (`id`, `nama`, `bobot`, `label`) VALUES
(1, 'rating', 10, 'Benefit'),
(2, 'price', 20, 'Cost'),
(3, 'pages', 20, 'Cost'),
(4, 'publication_year', 10, 'Benefit'),
(5, 'rent_duration', 20, 'Cost'),
(6, 'topic_suitability', 20, 'Benefit');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `hasil`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `hasil` (
`id` bigint(20) unsigned
,`title` varchar(255)
,`book_code` varchar(255)
,`hasil` double
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `kriteria`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `kriteria` (
`id` int(10) unsigned
,`nama` varchar(255)
,`label` enum('Benefit','Cost')
,`bobot` double
,`persentase` double
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(28, '2014_10_12_000000_create_users_table', 1),
(29, '2014_10_12_100000_create_password_resets_table', 1),
(30, '2019_08_19_000000_create_failed_jobs_table', 1),
(31, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(32, '2023_04_12_073446_create_roles_table', 1),
(33, '2023_04_12_074953_add_role_id_column_to_users_table', 1),
(34, '2023_04_12_080406_create_categories_table', 1),
(35, '2023_04_12_080415_create_books_table', 1),
(36, '2023_04_12_080834_create_book_category_table', 1),
(37, '2023_04_12_082936_create_rent_logs_table', 1),
(38, '2023_04_26_095151_add_slug_column_to_categories_table', 1),
(39, '2023_04_26_100205_change_slug_column_into_nullable_in_categories_table', 1),
(40, '2023_04_26_142415_add_soft_delete_column_to_categories_table', 1),
(41, '2023_04_28_023146_add_slug_cover_column_to_books_table', 1),
(42, '2023_04_29_050110_add_soft_delete_to_books_table', 1),
(43, '2023_04_29_121616_add_slug_to_users_table', 1),
(44, '2023_04_30_023708_add_softdelete_to_users_table', 1),
(45, '2023_06_10_072916_create_hasils_table', 2);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `normalisasi`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `normalisasi` (
`id` bigint(20) unsigned
,`title` varchar(255)
,`book_code` varchar(255)
,`rating` double
,`price` double
,`pages` double
,`publication_year` double
,`rent_duration` double
,`topic_suitability` double
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `pengkali`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `pengkali` (
`id` bigint(20) unsigned
,`title` varchar(255)
,`book_code` varchar(255)
,`rating` double
,`price` double
,`pages` double
,`publication_year` double
,`rent_duration` double
,`topic_suitability` double
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rent_logs`
--

CREATE TABLE `rent_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `rent_date` date NOT NULL,
  `return_date` date NOT NULL,
  `actual_return_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, NULL),
(2, 'users', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `slug`, `password`, `phone`, `address`, `status`, `created_at`, `updated_at`, `deleted_at`, `role_id`) VALUES
(1, 'admin', 'admin', '$2y$12$NJ/Ng3DRPx0jLlhHU6mRyutbJfJ02E/6eOfab5UnwG5u9JDVN5GeO', '0000000000', 'Brebes', 'active', NULL, NULL, NULL, 1),
(2, 'hesda', 'hesda', '$2y$12$NJ/Ng3DRPx0jLlhHU6mRyutbJfJ02E/6eOfab5UnwG5u9JDVN5GeO', '1111111111', 'Tegal', 'active', NULL, NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Struktur untuk view `alternatif`
--
DROP TABLE IF EXISTS `alternatif`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `alternatif`  AS SELECT `b`.`id` AS `id`, `b`.`book_code` AS `book_code`, `b`.`title` AS `title`, `b`.`rating` AS `rating`, `b`.`price` AS `price`, `b`.`pages` AS `pages`, `b`.`publication_year` AS `publication_year`, `b`.`rent_duration` AS `rent_duration`, `b`.`topic_suitability` AS `topic_suitability` FROM `books` AS `b` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `hasil`
--
DROP TABLE IF EXISTS `hasil`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `hasil`  AS SELECT `kl`.`id` AS `id`, `kl`.`title` AS `title`, `kl`.`book_code` AS `book_code`, `kl`.`rating`+ `kl`.`price` + `kl`.`pages` + `kl`.`publication_year` + `kl`.`rent_duration` + `kl`.`topic_suitability` AS `hasil` FROM `pengkali` AS `kl` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `kriteria`
--
DROP TABLE IF EXISTS `kriteria`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `kriteria`  AS SELECT `cr`.`id` AS `id`, `cr`.`nama` AS `nama`, `cr`.`label` AS `label`, `cr`.`bobot` AS `bobot`, `cr`.`bobot`/ (select sum(`cr`.`bobot`) from `criteria` `cr`) AS `persentase` FROM `criteria` AS `cr` GROUP BY `cr`.`id` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `normalisasi`
--
DROP TABLE IF EXISTS `normalisasi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `normalisasi`  AS SELECT `alt`.`id` AS `id`, `alt`.`title` AS `title`, `alt`.`book_code` AS `book_code`, if((select `kri`.`label` from `kriteria` `kri` where `kri`.`id` = 1) = 'Benefit',`alt`.`rating` / (select max(`alt2`.`rating`) from `alternatif` `alt2`),(select min(`alt2`.`rating`) from `alternatif` `alt2`) / `alt`.`rating`) AS `rating`, if((select `kri`.`label` from `kriteria` `kri` where `kri`.`id` = 2) = 'Benefit',`alt`.`price` / (select max(`alt2`.`price`) from `alternatif` `alt2`),(select min(`alt2`.`price`) from `alternatif` `alt2`) / `alt`.`price`) AS `price`, if((select `kri`.`label` from `kriteria` `kri` where `kri`.`id` = 3) = 'Benefit',`alt`.`pages` / (select max(`alt2`.`pages`) from `alternatif` `alt2`),(select min(`alt2`.`pages`) from `alternatif` `alt2`) / `alt`.`pages`) AS `pages`, if((select `kri`.`label` from `kriteria` `kri` where `kri`.`id` = 4) = 'Benefit',`alt`.`publication_year` / (select max(`alt2`.`publication_year`) from `alternatif` `alt2`),(select min(`alt2`.`publication_year`) from `alternatif` `alt2`) / `alt`.`publication_year`) AS `publication_year`, if((select `kri`.`label` from `kriteria` `kri` where `kri`.`id` = 4) = 'Benefit',`alt`.`rent_duration` / (select max(`alt2`.`rent_duration`) from `alternatif` `alt2`),(select min(`alt2`.`rent_duration`) from `alternatif` `alt2`) / `alt`.`rent_duration`) AS `rent_duration`, if((select `kri`.`label` from `kriteria` `kri` where `kri`.`id` = 5) = 'Benefit',`alt`.`topic_suitability` / (select max(`alt2`.`topic_suitability`) from `alternatif` `alt2`),(select min(`alt2`.`topic_suitability`) from `alternatif` `alt2`) / `alt`.`topic_suitability`) AS `topic_suitability` FROM `alternatif` AS `alt` GROUP BY `alt`.`id` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `pengkali`
--
DROP TABLE IF EXISTS `pengkali`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pengkali`  AS SELECT `nor`.`id` AS `id`, `nor`.`title` AS `title`, `nor`.`book_code` AS `book_code`, `nor`.`rating`* (select `kr`.`persentase` from `kriteria` `kr` where `kr`.`id` = 1) AS `rating`, `nor`.`price`* (select `kr`.`persentase` from `kriteria` `kr` where `kr`.`id` = 2) AS `price`, `nor`.`pages`* (select `kr`.`persentase` from `kriteria` `kr` where `kr`.`id` = 3) AS `pages`, `nor`.`publication_year`* (select `kr`.`persentase` from `kriteria` `kr` where `kr`.`id` = 4) AS `publication_year`, `nor`.`rent_duration`* (select `kr`.`persentase` from `kriteria` `kr` where `kr`.`id` = 4) AS `rent_duration`, `nor`.`topic_suitability`* (select `kr`.`persentase` from `kriteria` `kr` where `kr`.`id` = 5) AS `topic_suitability` FROM `normalisasi` AS `nor` ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `book_category`
--
ALTER TABLE `book_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_category_book_id_foreign` (`book_id`),
  ADD KEY `book_category_category_id_foreign` (`category_id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `criteria`
--
ALTER TABLE `criteria`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rent_logs`
--
ALTER TABLE `rent_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rent_logs_user_id_foreign` (`user_id`),
  ADD KEY `rent_logs_book_id_foreign` (`book_id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `book_category`
--
ALTER TABLE `book_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `criteria`
--
ALTER TABLE `criteria`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT untuk tabel `rent_logs`
--
ALTER TABLE `rent_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `rent_logs`
--
ALTER TABLE `rent_logs`
  ADD CONSTRAINT `rent_logs_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `rent_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
