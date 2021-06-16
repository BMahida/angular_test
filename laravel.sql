-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 16, 2021 at 06:25 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

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
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2019_08_19_000000_create_failed_jobs_table', 1),
(12, '2021_06_15_172917_create_product_list_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_list`
--

CREATE TABLE `product_list` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_cost` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_notify_at` int(11) NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_list`
--

INSERT INTO `product_list` (`id`, `product_name`, `product_description`, `product_code`, `product_cost`, `product_size`, `product_quantity`, `product_notify_at`, `file`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'product A', 'test', 'ABCD', '100', '12px', 100, 10, 'products/product_image_60afa3a2d4cf1.jpg', 1, '2021-06-14 20:24:07', '2021-06-15 20:24:07', NULL),
(2, 'product B', 'test', 'ABCD', '50', '12px', 100, 10, 'products/product_image_60afa3a2d4cf1.jpg', 1, '2021-06-15 20:24:07', '2021-06-15 20:24:07', NULL),
(3, 'product C', 'test', 'ABCD', '99', '12px', 100, 10, 'products/product_image_60afa3a2d4cf1.jpg', 1, '2021-06-15 20:24:07', '2021-06-15 20:24:07', NULL),
(4, 'product D', 'test', 'ABCD', '44', '12px', 100, 10, 'products/product_image_60afa3a2d4cf1.jpg', 1, '2021-06-15 20:24:07', '2021-06-15 20:24:07', NULL),
(5, 'product E', 'test', 'ABCD', '33', '12px', 100, 10, 'products/product_image_60afa3a2d4cf1.jpg', 1, '2021-06-15 20:24:07', '2021-06-15 20:24:07', NULL),
(6, 'product F', 'test', 'ABCD', '333', '12px', 100, 10, 'products/product_image_60afa3a2d4cf1.jpg', 1, '2021-06-15 20:24:07', '2021-06-15 20:24:07', NULL),
(7, 'product G', 'test', 'ABCD', '44', '12px', 100, 10, 'products/product_image_60afa3a2d4cf1.jpg', 1, '2021-06-15 20:24:07', '2021-06-15 20:24:07', NULL),
(8, 'product H', 'test', 'ABCD', '44', '12px', 100, 10, 'products/product_image_60afa3a2d4cf1.jpg', 1, '2021-06-15 20:24:07', '2021-06-15 20:24:07', NULL),
(9, 'product I', 'test', 'ABCD', '77', '12px', 100, 10, 'products/product_image_60afa3a2d4cf1.jpg', 1, '2021-06-15 20:24:07', '2021-06-15 20:24:07', NULL),
(10, 'product J', 'test', 'ABCD', '77', '12px', 100, 10, 'products/product_image_60afa3a2d4cf1.jpg', 1, '2021-06-15 20:24:07', '2021-06-15 20:24:07', NULL),
(11, 'product K', 'test', 'ABCD', '77', '12px', 100, 10, 'products/product_image_60afa3a2d4cf1.jpg', 1, '2021-06-15 20:24:07', '2021-06-15 20:24:07', NULL),
(12, 'product L', 'test', 'ABCD', '77', '12px', 100, 10, 'products/product_image_60afa3a2d4cf1.jpg', 1, '2021-06-15 20:24:07', '2021-06-15 20:24:07', NULL),
(13, 'product M', 'test', 'ABCD', '77', '12px', 100, 10, 'products/product_image_60afa3a2d4cf1.jpg', 1, '2021-06-15 20:24:07', '2021-06-15 20:24:07', NULL),
(14, 'product N', 'test', 'ABCD', '77', '12px', 100, 10, 'products/product_image_60afa3a2d4cf1.jpg', 1, '2021-06-15 20:24:07', '2021-06-15 20:24:07', NULL),
(15, 'product O', 'test', 'ABCD', '77', '12px', 100, 10, 'products/product_image_60afa3a2d4cf1.jpg', 1, '2021-06-15 20:24:07', '2021-06-15 20:24:07', NULL),
(16, 'product P', 'test', 'ABCD', '77', '12px', 100, 10, 'products/product_image_60afa3a2d4cf1.jpg', 1, '2021-06-15 20:24:07', '2021-06-15 20:24:07', NULL),
(17, 'product Q', 'test', 'ABCD', '77', '12px', 100, 10, 'products/product_image_60afa3a2d4cf1.jpg', 1, '2021-06-15 20:24:07', '2021-06-15 20:24:07', NULL),
(18, 'product R', 'test', 'ABCD', '77', '12px', 100, 10, 'products/product_image_60afa3a2d4cf1.jpg', 1, '2021-06-15 20:24:07', '2021-06-15 20:24:07', NULL),
(19, 'product S', 'test', 'ABCD', '77', '12px', 100, 10, 'products/product_image_60afa3a2d4cf1.jpg', 1, '2021-06-15 20:24:07', '2021-06-15 20:24:07', NULL),
(20, 'product T', 'test', 'ABCD', '77', '12px', 100, 10, 'products/product_image_60afa3a2d4cf1.jpg', 1, '2021-06-15 20:24:07', '2021-06-15 20:24:07', NULL),
(21, 'product U', 'test', 'ABCD', '77', '12px', 100, 10, 'products/product_image_60afa3a2d4cf1.jpg', 1, '2021-06-15 20:24:07', '2021-06-15 20:24:07', NULL),
(22, 'product V', 'test', 'ABCD', '77', '12px', 100, 10, 'products/product_image_60afa3a2d4cf1.jpg', 1, '2021-06-15 20:24:07', '2021-06-15 20:24:07', NULL),
(23, 'product W', 'test', 'ABCD', '77', '12px', 100, 10, 'products/product_image_60afa3a2d4cf1.jpg', 1, '2021-06-15 20:24:07', '2021-06-15 20:24:07', NULL),
(24, 'product X', 'test', 'ABCD', '77', '12px', 100, 10, 'products/product_image_60afa3a2d4cf1.jpg', 1, '2021-06-15 20:24:07', '2021-06-15 20:24:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `product_list`
--
ALTER TABLE `product_list`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_list`
--
ALTER TABLE `product_list`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
