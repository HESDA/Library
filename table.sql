-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 10 Jul 2023 pada 02.16
-- Versi server: 10.11.2-MariaDB-log
-- Versi PHP: 8.2.5

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

--
-- Dumping data untuk tabel `books`
--

INSERT INTO `books` (`id`, `book_code`, `title`, `cover`, `slug`, `author`, `rating`, `price`, `pages`, `publication_year`, `rent_duration`, `topic_suitability`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'N-001', 'NOISE', 'NOISE-1688839785.jpeg', 'noise', 'Tere Liye', 5, 9900, 99, 2022, 7, 9, 'not available', '2023-07-08 11:09:45', '2023-07-08 16:34:25', NULL),
(2, 'N-002', 'The Hardest Fall', 'The Hardest Fall-1688839883.jpeg', 'the-hardest-fall', 'Eka', 4.7, 8000, 89, 2023, 5, 9, 'in stock', '2023-07-08 11:11:23', '2023-07-08 11:11:23', NULL),
(3, 'N-003', 'From The Other Side', 'From The Other Side-1688839944.jpeg', 'from-the-other-side', 'Raditya', 4.9, 8900, 90, 2020, 5, 7, 'in stock', '2023-07-08 11:12:24', '2023-07-08 11:12:24', NULL),
(4, 'N-004', 'Between Perfect & Real', 'Between Perfect & Real-1688840019.jpeg', 'between-perfect-real', 'Dewi Lestari', 4.8, 7000, 60, 2020, 3, 6, 'in stock', '2023-07-08 11:13:39', '2023-07-08 11:13:39', NULL),
(5, 'N-005', 'Reminders Of HIM', 'Reminders Of HIM-1688840090.jpeg', 'reminders-of-him', 'Ahmad', 3.9, 3000, 45, 2008, 2, 4, 'in stock', '2023-07-08 11:14:50', '2023-07-08 11:14:50', NULL),
(6, 'N-006', 'I HOPE YOU GET THIS MESSAGE', 'I HOPE YOU GET THIS MESSAGE-1688840189.jpeg', 'i-hope-you-get-this-message', 'Ayu', 5, 9800, 90, 2023, 7, 10, 'in stock', '2023-07-08 11:16:29', '2023-07-08 11:16:29', NULL),
(7, 'T-001', 'JAVA', 'JAVA-1688840297.png', 'java', 'Ari', 4.6, 7900, 99, 2015, 7, 9.5, 'in stock', '2023-07-08 11:18:17', '2023-07-08 11:18:17', NULL),
(8, 'T-002', 'Python', 'Python-1688840361.png', 'python', 'PY', 5, 10000, 100, 2019, 6, 10, 'in stock', '2023-07-08 11:19:21', '2023-07-08 11:19:21', NULL),
(9, 'T-003', 'PHP KOMPLET', 'PHP KOMPLET-1688840455.jpg', 'php-komplet', 'PHP Corp', 4.9, 8000, 70, 2019, 7, 9.8, 'in stock', '2023-07-08 11:20:55', '2023-07-08 11:20:55', NULL),
(10, 'K-001', 'Comic Book', 'Comic Book-1688854168.jpeg', 'comic-book', 'Dini', 4.5, 8900, 48, 2020, 4, 6, 'in stock', '2023-07-08 15:09:28', '2023-07-08 15:09:28', NULL),
(11, 'K-002', 'Star Wars Mandalorian', 'Star Wars Mandalorian-1688854283.jpeg', 'star-wars-mandalorian', 'Star Corps', 5, 4000, 95, 2022, 6, 9, 'in stock', '2023-07-08 15:11:23', '2023-07-08 15:11:23', NULL),
(12, 'K-003', 'Invisible Ghost', 'Invisible Ghost-1688854368.jpeg', 'invisible-ghost', 'Marvel Inc.', 3.9, 8700, 40, 2020, 2, 4, 'in stock', '2023-07-08 15:12:48', '2023-07-08 15:12:48', NULL),
(13, 'S-001', 'Physics', 'Physics-1688854430.jpeg', 'physics', 'Mae', 5, 6000, 80, 2005, 6, 8, 'in stock', '2023-07-08 15:13:50', '2023-07-08 15:13:50', NULL),
(14, 'N-007', 'WHATEVER.', 'WHATEVER.-1688855134.jpeg', 'whatever', 'Fajar', 4.97, 9800, 37, 2023, 7, 7.9, 'in stock', '2023-07-08 15:25:34', '2023-07-08 15:25:34', NULL),
(15, 'N-008', 'Sugar & RUN', 'Sugar & RUN-1688855208.jpeg', 'sugar-run', 'Orizuka', 2.9, 1200, 68, 2007, 3, 4, 'in stock', '2023-07-08 15:26:48', '2023-07-08 15:26:48', NULL),
(16, 'K-004', 'Taxi Driver', 'Taxi Driver-1688855308.jpeg', 'taxi-driver', 'Taufiq', 5, 6900, 27, 2009, 3, 9, 'in stock', '2023-07-08 15:28:28', '2023-07-08 15:28:28', NULL),
(17, 'K-005', 'One Last Breath', 'One Last Breath-1688855378.jpeg', 'one-last-breath', 'One inc.', 3.5, 6000, 73, 2017, 5, 5, 'in stock', '2023-07-08 15:29:38', '2023-07-08 15:29:38', NULL),
(18, 'N-009', 'Star With Moon', 'Star With Moon-1688855446.jpeg', 'star-with-moon', 'Moon', 4.4, 7800, 90, 2021, 5, 9, 'in stock', '2023-07-08 15:30:46', '2023-07-08 15:30:46', NULL),
(19, 'K-006', 'FENCE', 'FENCE-1688855524.jpeg', 'fence', 'Sarah', 4.2, 4000, 70, 2016, 1, 6.9, 'in stock', '2023-07-08 15:32:04', '2023-07-08 15:32:04', NULL),
(20, 'K-007', 'MAGAZINE', 'MAGAZINE-1688855585.jpeg', 'magazine', 'Marvel', 5, 2000, 30, 2018, 3, 5, 'in stock', '2023-07-08 15:33:05', '2023-07-08 15:33:05', NULL);

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

--
-- Dumping data untuk tabel `book_category`
--

INSERT INTO `book_category` (`id`, `book_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 2, NULL, NULL),
(3, 1, 5, NULL, NULL),
(4, 2, 1, NULL, NULL),
(5, 2, 2, NULL, NULL),
(6, 3, 1, NULL, NULL),
(7, 3, 2, NULL, NULL),
(8, 3, 5, NULL, NULL),
(9, 4, 1, NULL, NULL),
(10, 4, 2, NULL, NULL),
(11, 4, 5, NULL, NULL),
(12, 5, 1, NULL, NULL),
(13, 5, 2, NULL, NULL),
(14, 5, 4, NULL, NULL),
(15, 6, 1, NULL, NULL),
(16, 6, 2, NULL, NULL),
(17, 6, 5, NULL, NULL),
(18, 7, 3, NULL, NULL),
(19, 7, 6, NULL, NULL),
(20, 8, 3, NULL, NULL),
(21, 8, 4, NULL, NULL),
(22, 8, 6, NULL, NULL),
(23, 9, 3, NULL, NULL),
(24, 9, 6, NULL, NULL),
(25, 10, 4, NULL, NULL),
(26, 10, 5, NULL, NULL),
(27, 11, 2, NULL, NULL),
(28, 11, 4, NULL, NULL),
(29, 11, 5, NULL, NULL),
(30, 12, 2, NULL, NULL),
(31, 12, 5, NULL, NULL),
(32, 13, 3, NULL, NULL),
(33, 13, 4, NULL, NULL),
(34, 14, 1, NULL, NULL),
(35, 14, 2, NULL, NULL),
(36, 15, 1, NULL, NULL),
(37, 15, 3, NULL, NULL),
(38, 16, 3, NULL, NULL),
(39, 16, 5, NULL, NULL),
(40, 17, 1, NULL, NULL),
(41, 17, 2, NULL, NULL),
(42, 17, 5, NULL, NULL),
(43, 18, 1, NULL, NULL),
(44, 18, 2, NULL, NULL),
(45, 18, 4, NULL, NULL),
(46, 19, 1, NULL, NULL),
(47, 19, 5, NULL, NULL),
(48, 20, 2, NULL, NULL),
(49, 20, 5, NULL, NULL);

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

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Novel', 'novel', '2023-07-08 12:33:06', '2023-07-08 12:33:06', NULL),
(2, 'Fiksi', 'fiksi', '2023-07-08 12:33:24', '2023-07-08 12:33:24', NULL),
(3, 'Non Fiksi', 'non-fiksi', '2023-07-08 12:33:32', '2023-07-08 12:33:32', NULL),
(4, 'Sains', 'sains', '2023-07-08 12:33:40', '2023-07-08 12:33:40', NULL),
(5, 'Komik', 'komik', '2023-07-08 12:33:46', '2023-07-08 12:33:46', NULL),
(6, 'Tutorial', 'tutorial', '2023-07-08 12:34:06', '2023-07-08 12:34:06', NULL);

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

--
-- Dumping data untuk tabel `rent_logs`
--

INSERT INTO `rent_logs` (`id`, `user_id`, `book_id`, `rent_date`, `return_date`, `actual_return_date`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2023-07-08', '2023-07-11', '2023-07-08', '2023-07-08 16:34:25', '2023-07-08 16:34:39');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `book_category`
--
ALTER TABLE `book_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
