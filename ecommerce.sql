-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2024 at 10:45 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `confirmorders`
--

CREATE TABLE `confirmorders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `shipping_address1` varchar(191) DEFAULT NULL,
  `shipping_address2` varchar(191) DEFAULT NULL,
  `shipping_address3` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `zipcode` varchar(191) DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `confirmorders`
--

INSERT INTO `confirmorders` (`id`, `name`, `phone`, `email`, `shipping_address1`, `shipping_address2`, `shipping_address3`, `city`, `zipcode`, `product_name`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(5, 'user', '9876543453', 'user@gmail.com', 'Hyderabad', 'Hyderabad', 'Hyderabad', 'Hyderabad', '5000038', 'Men White', '1', '999', '2024-03-14 04:10:16', '2024-03-14 04:10:16'),
(6, 'user', '9876543453', 'user@gmail.com', 'Hyderabad', 'Hyderabad', 'Hyderabad', 'Hyderabad', '5000038', 'Men White', '1', '999', '2024-03-14 04:10:16', '2024-03-14 04:10:16');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_03_13_030320_create_products_table', 2),
(7, '2024_03_13_065609_create_orders_table', 3),
(8, '2024_03_14_060101_create_confirmorders_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `product_name` varchar(191) DEFAULT NULL,
  `quantity` varchar(191) DEFAULT NULL,
  `price` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `phone`, `address`, `product_name`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(12, 'user', '9876543453', '', 'Men White', '1', '999', '2024-03-14 03:53:51', '2024-03-14 03:53:51'),
(13, 'user', '9876543453', 'Hyderabad', 'Men White', '1', '999', '2024-03-14 04:10:11', '2024-03-14 04:10:11');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(191) DEFAULT NULL,
  `price` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `quantity` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `price`, `description`, `quantity`, `image`, `created_at`, `updated_at`) VALUES
(4, 'Men Green', '699', 'Showcase your refined sartorial taste in this Green Print shirt from', '11', '1710405498.avif', '2024-03-14 03:08:18', '2024-03-14 03:12:47'),
(5, 'Men White', '999', 'A well fitted formal shirt always makes you look sharp. Crafted in 100% Cotton', '22', '1710405672.avif', '2024-03-14 03:11:12', '2024-03-14 03:13:05'),
(6, 'Men Navy Slim', '1099', 'Discover a stylish addition to your wardrobe, with the navy slim fit shirt from Allen Solly.', '19', '1710405888.avif', '2024-03-14 03:14:48', '2024-03-14 03:14:48'),
(7, 'Neck T-shirt', '299', 'Blend style and panache with this White Patterned Half Sleeves T-shirt from Louis Philippe Sport.', '23', '1710405976.jpg', '2024-03-14 03:16:16', '2024-03-14 03:16:16'),
(8, 'Neck T-shirt', '299', 'Blend style and panache with this Pink Solid Half Sleeves T-shirt from Louis Philippe Sport.', '10', '1710406070.jpg', '2024-03-14 03:17:19', '2024-03-14 03:17:50'),
(9, 'Crew Neck T-shirt', '299', 'This Orange Print Crew Neck T-shirt from Van Heusen Sport by Van Heusen.', '17', '1710406160.avif', '2024-03-14 03:19:20', '2024-03-14 03:19:20'),
(10, 'Trousers', '1099', 'Whether at work or when you are off duty, these Grey Textured formal trousers', '17', '1710406235.avif', '2024-03-14 03:20:35', '2024-03-14 03:20:35'),
(11, 'Trousers', '1099', 'A pair of well-tailored trousers is a great style investment to a gentleman\'s wardrobe.', '8', '1710406303.avif', '2024-03-14 03:21:43', '2024-03-14 03:21:43'),
(12, 'Trousers', '1099', 'Whether at work or when you are off duty, these Green Solid casual trousers', '9', '1710406376.avif', '2024-03-14 03:22:56', '2024-03-14 03:22:56'),
(13, 'Fit Trousers', '1099', 'Refresh your off-duty looks with the Van Heusen Sport slim-fit khaki trousers for men.', '10', '1710406442.avif', '2024-03-14 03:24:02', '2024-03-14 03:24:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `role_as` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `address`, `phone`, `city`, `zipcode`, `email`, `email_verified_at`, `password`, `role_as`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'user', 'Hyderabad', '9876543453', 'Hyderabad', '5000038', 'user@gmail.com', NULL, '$2y$12$.W/IzApLfj6IrDa1EYo3xu1U2ALuWzCro3YS2DVloqVO6PF8sW8eW', 0, NULL, '2024-03-12 04:31:41', '2024-03-12 04:31:41'),
(2, 'admin', 'Hyderabad', '9876543212', 'Hyderabad', '5000038', 'admin@gmail.com', NULL, '$2y$12$jh7gVA0uef.henDwqn0RWuMO/8p0sFaaXAS1dE3f2HGGatilMYALi', 1, NULL, '2024-03-12 04:59:31', '2024-03-12 04:59:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `confirmorders`
--
ALTER TABLE `confirmorders`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `confirmorders`
--
ALTER TABLE `confirmorders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
