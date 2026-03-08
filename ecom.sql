-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2026 at 08:54 AM
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
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `image` text NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `status`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, 'HP Brand', 1, 'upload/brand-images/images (2).jpg', 'Hp is the Laptop Brand', '2025-01-19 06:00:37', '2025-01-19 06:00:37'),
(2, 'Apple', 1, 'upload/brand-images/OIP (4).jpg', 'Apple is the mobile  Brand', '2025-01-19 06:03:33', '2025-01-19 06:03:33'),
(3, 'Lotto', 1, 'upload/brand-images/OIP (2).jpg', 'Lotto watch Brand', '2025-01-19 06:04:17', '2025-01-19 06:04:17');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('11201fc76455855c802f582090bb9236', 'i:4;', 1752166074),
('11201fc76455855c802f582090bb9236:timer', 'i:1752166074;', 1752166074),
('501e283b1cb0dffcdae8944c11969679', 'i:4;', 1772956211),
('501e283b1cb0dffcdae8944c11969679:timer', 'i:1772956211;', 1772956211),
('6575dab0001181c5d88f5dac6a05781e', 'i:1;', 1752166165),
('6575dab0001181c5d88f5dac6a05781e:timer', 'i:1752166165;', 1752166165),
('723b5582a0df0098a91b784c1b67a696', 'i:1;', 1761972844),
('723b5582a0df0098a91b784c1b67a696:timer', 'i:1761972844;', 1761972844),
('b4d079f4b29126db3f5fd5bc7e1a8f98', 'i:1;', 1760565391),
('b4d079f4b29126db3f5fd5bc7e1a8f98:timer', 'i:1760565391;', 1760565391),
('bf73b69fab298aa6f6fe855d02773c43', 'i:1;', 1759826183),
('bf73b69fab298aa6f6fe855d02773c43:timer', 'i:1759826183;', 1759826183),
('c525a5357e97fef8d3db25841c86da1a', 'i:1;', 1772955809),
('c525a5357e97fef8d3db25841c86da1a:timer', 'i:1772955809;', 1772955809),
('cserubelhosen@gmial.com|103.86.198.126', 'i:4;', 1752166074),
('cserubelhosen@gmial.com|103.86.198.126:timer', 'i:1752166074;', 1752166074),
('d5c479fdc38dabc3d943cd6ccf81c901', 'i:1;', 1750843678),
('d5c479fdc38dabc3d943cd6ccf81c901:timer', 'i:1750843678;', 1750843678),
('j03jdcp7@gmail.com|128.199.198.195', 'i:1;', 1759826183),
('j03jdcp7@gmail.com|128.199.198.195:timer', 'i:1759826183;', 1759826183),
('zigzy2s8@gmail.com|128.199.79.13', 'i:1;', 1760565391),
('zigzy2s8@gmail.com|128.199.79.13:timer', 'i:1760565391;', 1760565391);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `image` text DEFAULT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `home_status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `image`, `description`, `created_at`, `updated_at`, `home_status`) VALUES
(1, 'Man Fashon', 1, 'upload/category-images/Men_s-T-shirt-Crewneck-Half-Slv-Front-Khaki-Basic-600x600-1-300x300.jpg', 'kk', '2025-01-19 05:36:14', '2026-03-08 01:54:21', 0),
(2, 'Women Fashion', 1, 'upload/category-images/CSF-3872.jpg', 'xcfhgvhjbnm,', '2025-01-19 05:36:44', '2025-01-19 05:36:44', 0),
(3, 'Eletronics', 1, 'upload/category-images/download (3).png', 'fghbjknkm', '2025-01-19 05:37:01', '2026-03-08 01:43:45', 1),
(4, 'Fruit', 1, 'upload/category-images/images (4).jpg', 'Fruit', '2025-01-19 05:44:15', '2025-01-28 14:51:39', 0),
(5, 'Software', 1, 'upload/category-images/6257867ld.avif', 'Software is most valuable', '2025-01-19 05:47:29', '2025-01-19 05:47:29', 0),
(6, 'House Hold', 1, 'upload/category-images/images (1).jpg', 'chgbhjjn', '2025-01-19 05:49:11', '2025-01-19 05:49:11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `coupon_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_code`, `coupon_status`, `created_at`, `updated_at`) VALUES
(1, 'eid-25', 1, '2025-06-18 06:04:38', '2025-06-18 06:04:38');

-- --------------------------------------------------------

--
-- Table structure for table `couriers`
--

CREATE TABLE `couriers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `logo` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` text DEFAULT NULL,
  `blood_group` varchar(255) DEFAULT NULL,
  `date_of_birth` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `mobile`, `password`, `image`, `blood_group`, `date_of_birth`, `address`, `created_at`, `updated_at`) VALUES
(11, 'Rakib', 'rakib@gmail.com', '01950383541', '$2y$12$vWviEPDu2WVcJ8sqTNtns.6/JlT/IOo6YXxWRHCMJ1ZAiVyXUFCnu', 'upload/customer-images/smiling-business-man-cartoon-vector-11141271.jpg', 'O+', '1999-02-01', 'Jhenaidah', '2025-02-08 14:41:02', '2025-06-18 00:28:36'),
(12, 'abc', 'abc@gmail.com', '456789', '$2y$12$JjzKQyzEKV4zwyGqvJj5ouxzx10MQ9Iwv5rE46/HtNHZHTHV6nhka', NULL, NULL, NULL, NULL, '2025-02-08 14:48:02', '2025-02-08 14:48:02'),
(13, 'Nahid', 'nahid@gmail.com', '018524025', '$2y$12$jiZ1b.raTZ6NblTYHhEECOb.OapzrxRnGBkKdmgju.pt6guYAMlty', 'upload/customer-images/istockphoto-1013795322-612x612.jpg', 'B+', '2004-12-10', 'Barishal', '2025-02-14 11:16:54', '2025-06-17 03:09:14'),
(14, 'Mr Donalt Trup', 'trump@gmail.com', '2345', '$2y$12$E89ED1EkjLxcpMJ5.AFeReiRWQs4kIsOezVMBiljMTlHSV.Jq0DJm', 'upload/customer-images/businessman-businessman-cartoon-character-pointing-up-mCr5zvv5_t.jpg', 'A+', NULL, NULL, '2025-02-14 12:36:26', '2025-06-18 00:32:27'),
(15, 'mehedi', 'admin@gmail.com', '4343', '$2y$12$TuyQxAieWtr6lHDfHt6.4eEl7UiP594Lpcno9VqR7PdElCYU.mg0i', 'upload/customer-images/man-cartoon-icon-HTJP85.jpg', NULL, NULL, NULL, '2025-02-15 08:45:31', '2025-06-17 06:24:30'),
(16, 'House Hold', 'House@gmail.com', '123456', '$2y$12$JdisFvxnjT4wgT00VG0PdO5FXHLxpRLfIdMy.2zP3Htbrt1ebQn7S', 'upload/customer-images/man-cartoon-icon-HTJP85.jpg', NULL, NULL, NULL, '2025-02-15 16:31:45', '2025-06-17 06:30:41'),
(17, 'Akram khan', 'akram@gmail.com', '123456', '$2y$12$bOLzLC9Z5u6gS/T5qGSmPe/GMFeie2YhMjhJzyyQJCguj33SlTSb2', 'upload/customer-images/R.jfif', NULL, NULL, NULL, '2025-03-07 15:11:04', '2025-06-17 06:31:27'),
(18, 'akram khan', 'akramkhan@gmail.com', '1234567', '$2y$12$4G1QaCdehvSEHDeoC6kqAuwN2u/Lfvrbe3GN060hkiWo/dTcTcT0i', NULL, NULL, NULL, NULL, '2025-03-09 06:28:23', '2025-03-09 06:28:23'),
(20, 'Rubel Hosen Shakib', 'shakil@gmail.com', '12345', '$2y$12$lq7LZPPU5qP82YIPSF5o5e6/ir2HNgv73DqVoeeK0rCfnjwMRpcoS', NULL, NULL, NULL, NULL, '2025-03-11 13:24:43', '2025-03-11 13:24:43'),
(21, 'ashik', 'ashik@gmail.com', '2345678', '$2y$12$NVjOxQVCxmZs8mZdufzloOuwreLLYS3RJn3Bf3L5n106vQ0e2yBym', NULL, NULL, NULL, NULL, '2025-03-12 05:10:23', '2025-03-12 05:10:23'),
(22, 'Miraj Hosen', 'mirajhosen@gmail.com', '12345678', '$2y$12$1uaxdPzTfmY.VKi9h/NfxumsiKlaBbc5oJJnrXsl9ThZ64jCUZ/NS', NULL, NULL, NULL, NULL, '2025-03-12 12:21:07', '2025-03-12 12:21:07'),
(23, 'nahid', 'nahid@gmail.com', '01950383541', '$2y$12$GJ4alvrLRp8jOPNWhKIpNu.HFlsJp1VmazTOTLrMrqNqIPHmJVN7m', NULL, NULL, NULL, NULL, '2025-05-16 09:48:20', '2025-05-16 09:48:20'),
(24, 'Akbar ali', 'akbarali@gmail.com', '0147258963', '$2y$12$FcrE1c34F.RblNZYebejPOuKA4IyazxJFBOLiawvbJcWXaRAGFnMq', NULL, NULL, NULL, NULL, '2025-05-25 23:10:07', '2025-05-25 23:10:07'),
(25, 'asif', 'asif@gmailcom', '000', '$2y$12$Xsp7upKVdbhXFzJuXtdj4OstUWw/3fER7KJqzV/KufmIebs.4EEDy', NULL, NULL, NULL, NULL, '2025-05-26 00:17:12', '2025-05-26 00:17:12'),
(26, 'somrat', 'somrat@gmail.com', '1234567', '$2y$12$V7rBJNKUKIsKZz9i9fCtbuNOJvTwcwcyj9l2znaDLawBdmy1j9clO', NULL, NULL, NULL, NULL, '2025-05-27 02:42:14', '2025-06-17 02:47:31'),
(28, 'arif', 'arif@gmail.com', '0147', '$2y$12$S1DmysVMNsMmvDB5QkWLRuIiUn1fyIGo4TTNsTd//X2.kAp7WOXSy', 'upload/customer-images/business-man-illustration-ai-generated-image_362642-344.avif', NULL, NULL, NULL, '2025-06-17 23:58:43', '2025-06-18 00:04:04'),
(29, 'Naim', 'naim@gmail.com', '12345678', '$2y$12$qu4E5/dBDG3j.L7rjx8UCuxqhx5gVGt2ij7V/Hkt8/M2cUlKTYtD6', 'upload/customer-images/3.png', 'B+', '1999-06-18', 'Dhaka', '2025-06-18 00:08:36', '2025-06-18 00:27:23'),
(30, 'Limon', 'limon@gmail.com', '01950383541', '$2y$12$Mp737yFiTJs6ESjryjmzxOseeZQC4t6mDBlqMoDQn2unKffkkGyBe', 'upload/customer-images/4.png', NULL, NULL, NULL, '2025-06-18 23:08:15', '2025-06-19 07:18:54'),
(31, 'Limon', 'limon@gmail.com', '01950383541', '$2y$12$bmXcpTBIWyO9QpVnIdw1hOI1M9v3qnnlIOQmlf3n55cyhFJ.8uxRW', NULL, NULL, NULL, NULL, '2025-06-18 23:09:06', '2025-06-18 23:09:06'),
(32, 'New', 'new@gmail.com', '23456', '$2y$12$gGoV1O69Ccju/ugLIIatluv8TqOzpH1/Xo1Ljlxs8WUzWgGduw/sm', NULL, NULL, NULL, NULL, '2025-06-19 04:44:21', '2025-06-19 04:44:21'),
(33, 'Naimur Rahman', 'naimur@gmail.com', '01950383541', '$2y$12$j/QhU7IaDMhof/D5ejwkCukX50zgBfhWhQh5xtbY2uqsWncJP6n82', NULL, NULL, NULL, NULL, '2025-06-19 06:20:59', '2025-06-19 06:20:59'),
(34, 'Mr Imran', 'imran@gmail.com', '01950383541', '$2y$12$bOBpN.t4GnzS6KSMBoTYGeenFP7nDjjZR2AhruBl8vOr0pDL3LZfa', NULL, NULL, NULL, NULL, '2025-06-19 07:19:58', '2025-06-19 07:19:58'),
(35, 'roifk', 'rofik@gmial.com', '01950383541', '$2y$12$hX/8O5MPjKfWYa1XsW8aeOlbpucctzsyWgbM893uzFee0Nc9T8zbW', NULL, NULL, NULL, NULL, '2025-06-19 07:20:42', '2025-06-19 07:20:42'),
(37, 'Ripon mia', 'ripon@gmail.com', '0741852963', '$2y$12$eQ7kyB1vw.a7/V3/qfSKbO4ScxtI7IGJIRQRuyeq3r62I5yD8kicC', NULL, NULL, NULL, NULL, '2025-06-19 07:25:15', '2025-06-19 07:25:15'),
(38, 'Liton', 'liton@gmail.com', '01950383541', '$2y$12$3I5VEg.bNQEpqlWxSUNgL.O/9/5bjPwHAg/FTNlEO3ghU2E4ZUSlW', NULL, NULL, NULL, NULL, '2025-06-19 07:27:34', '2025-06-19 07:27:34'),
(39, 'Shipon', 'shipon@gmail.com', '2345678', '$2y$12$fqEDw5riTH0OWvGoTO70EeUvlokJtTXDEAV0wy.OO989A/KaQhwAG', NULL, NULL, NULL, NULL, '2025-06-19 07:28:13', '2025-06-19 07:28:13'),
(40, 'Ujjol', 'ujjol@gmail.com', '01950383541', '$2y$12$00lPSaZJ8YeYAd.L.yVMyubJj37SUNU4h9yB7jt7xVGu4P8Wn07bq', NULL, NULL, NULL, NULL, '2025-06-19 07:38:37', '2025-06-19 07:38:37'),
(41, 'Usman', 'usman@gmail.com', '01950383541', '$2y$12$Egm2kFLfvVOmSg0xW6XG7uUvSJK33OB3Dvb5cm0iaNouLM22eYsg6', NULL, NULL, NULL, NULL, '2025-06-19 07:41:12', '2025-06-19 07:41:12'),
(42, 'Alim', 'alim@gmail.com', '01950383541', '$2y$12$t5TGVOR7FO.Gu3gAGn1Wq.O2lZhvpcDhDUaeI/2nmZyBkgmVva6Z6', NULL, NULL, NULL, NULL, '2025-06-19 07:46:54', '2025-06-19 07:46:54'),
(43, 'Selim', 'selim@gmail.com', '01950383541', '$2y$12$kjHtpu1v2fpZYBVF0HBRGOPuXnrcY3ZFGXei8ChEnJvMkBqQrxeze', NULL, NULL, NULL, NULL, '2025-06-19 07:47:47', '2025-06-19 07:47:47'),
(44, 'Selim', 'selim@gmail.com', '123456', '$2y$12$NjkGky3CXDBAo.L8c.sQm.JmSSUFS19Gw.B0r8ziiGp5ffGfnKyo2', NULL, NULL, NULL, NULL, '2025-06-19 07:52:11', '2025-06-19 07:52:11'),
(45, 'Kolim', 'kolim@gmial.com', '0147', '$2y$12$LsssUhau7l0m4P9dc3BibuWN.OoOe7BuRN.9xtk4kg.bkXnb1D02C', NULL, NULL, NULL, NULL, '2025-06-19 07:53:07', '2025-06-19 07:53:07'),
(46, 'Ahsan  Habib', 'ahsan@gmail.com', '23454', '$2y$12$oGH3EYw4eiBSIbvr1bB1.O6MF80tdY2o8SUjfDnhhVmkoqfVos36u', 'upload/customer-images/gallary.jpeg', NULL, NULL, NULL, '2025-06-23 05:04:14', '2025-06-23 05:05:14');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 2),
(3, '0001_01_01_000002_create_jobs_table', 3),
(4, '2025_01_08_103632_add_two_factor_columns_to_users_table', 3),
(5, '2025_01_08_103825_create_personal_access_tokens_table', 4),
(6, '2025_01_11_100054_create_categories_table', 5),
(7, '2025_01_14_100520_create_sub_categories_table', 6),
(8, '2025_01_15_062550_create_brands_table', 7),
(9, '2025_01_16_105258_create_units_table', 8),
(10, '2025_01_19_062142_create_other_images_table', 9),
(11, '2025_01_19_073944_create_products_table', 10),
(12, '2025_02_01_174709_add_home_status_column_to_categories_table', 10),
(13, '2025_02_04_205553_create_customers_table', 11),
(14, '2025_02_09_211651_create_orders_table', 12),
(15, '2025_02_09_211724_create_order_details_table', 13),
(16, '2025_02_22_065103_create_couriers_table', 14),
(17, '2025_02_25_205311_add_mobile_column_to_user_table', 14),
(18, '2025_06_18_100251_create_coupons_table', 15),
(19, '2025_06_18_110705_create_wishlists_table', 16);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `courier_id` int(11) NOT NULL DEFAULT 0,
  `order_total` int(11) NOT NULL,
  `tax_total` int(11) NOT NULL,
  `shipping_total` int(11) NOT NULL,
  `order_date` text NOT NULL,
  `order_timestamp` text NOT NULL,
  `order_status` varchar(255) NOT NULL DEFAULT 'Pending',
  `delivery_address` text NOT NULL,
  `delivery_date` text DEFAULT NULL,
  `delivery_timestamp` text DEFAULT NULL,
  `delivery_status` varchar(255) NOT NULL DEFAULT 'Pending',
  `payment_amount` int(11) NOT NULL DEFAULT 0,
  `payment_method` varchar(255) NOT NULL,
  `payment_date` text DEFAULT NULL,
  `payment_timestamp` text DEFAULT NULL,
  `payment_status` varchar(255) NOT NULL DEFAULT 'Pending',
  `currency` text NOT NULL DEFAULT 'BDT',
  `transaction_id` text DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `courier_id`, `order_total`, `tax_total`, `shipping_total`, `order_date`, `order_timestamp`, `order_status`, `delivery_address`, `delivery_date`, `delivery_timestamp`, `delivery_status`, `payment_amount`, `payment_method`, `payment_date`, `payment_timestamp`, `payment_status`, `currency`, `transaction_id`, `coupon_id`, `created_at`, `updated_at`) VALUES
(4, 15, 0, 5390, 690, 100, '2025-15-02', '0', 'Complete', 'dhaka', '2025-02-17', '1739750400', 'Complete', 5390, 'Cash', '2025-17-02', '0', 'Complete', 'BDT', NULL, 0, '2025-02-15 08:52:26', '2025-02-16 22:38:10'),
(5, 15, 0, 5390, 690, 100, '2025-15-02', '0', 'Pending', 'Dhaka', NULL, NULL, 'Pending', 0, 'Cash', NULL, NULL, 'Pending', 'BDT', NULL, 0, '2025-02-15 08:53:20', '2025-02-16 22:15:12'),
(6, 15, 3, 1250, 150, 100, '2025-15-02', '0', 'Processing', 'slyete', NULL, NULL, 'Pending', 0, 'Cash', NULL, NULL, 'Pending', 'BDT', NULL, 0, '2025-02-15 11:30:28', '2025-02-16 20:34:28'),
(7, 15, 0, 1250, 150, 100, '2025-15-02', '0', 'Cancel', 'Khulna', NULL, NULL, 'Cancel', 0, 'Cash', NULL, NULL, 'Cancel', 'BDT', NULL, 0, '2025-02-15 11:31:11', '2025-02-16 22:35:23'),
(8, 16, 4, 560, 60, 100, '2025-15-02', '0', 'Cancel', 'natore', NULL, NULL, 'Cancel', 0, 'Cash', NULL, NULL, 'Cancel', 'BDT', NULL, 0, '2025-02-15 16:33:04', '2025-02-16 20:29:56'),
(9, 18, 0, 2858, 360, 100, '2025-03-08', '1741392000', 'Pending', 'Narayongong', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '67ccc4addac50', 0, NULL, NULL),
(10, 18, 0, 2913, 367, 100, '2025-03-08', '1741392000', 'Processing', 'Dhaka', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '67ccc82052ec7', 0, NULL, NULL),
(11, 11, 0, 4240, 540, 100, '2025-03-10', '1741564800', 'Processing', 'Dhaka', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '67ce947fae9a5', 0, NULL, NULL),
(12, 11, 0, 1479, 180, 100, '2025-03-11', '1741651200', 'Processing', 'dhaka', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '67d075c313bc6', 0, NULL, NULL),
(13, 19, 0, 204, 14, 100, '2025-03-11', '1741651200', 'Processing', 'jjjjj', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '67d083a6b0e5f', 0, NULL, NULL),
(14, 19, 0, 204, 14, 100, '2025-12-03', '1764720000', 'Pending', 'dhaka', NULL, NULL, 'Pending', 0, 'Cash', NULL, NULL, 'Pending', 'BDT', NULL, 0, '2025-03-12 02:51:23', '2025-03-12 02:51:23'),
(15, 21, 0, 128, 4, 100, '2025-03-12', '1741737600', 'Pending', 'Framegate', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '67d16bbf75232', 0, NULL, NULL),
(16, 21, 0, 128, 4, 100, '2025-03-12', '1741737600', 'Processing', 'Framegate', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '67d16be461cc6', 0, NULL, NULL),
(17, 19, 0, 2400, 300, 100, '2025-12-03', '1764720000', 'Pending', 'dhaka', NULL, NULL, 'Pending', 0, 'Cash', NULL, NULL, 'Pending', 'BDT', NULL, 0, '2025-03-12 10:37:36', '2025-03-12 10:37:36'),
(18, 22, 0, 1020, 120, 100, '2025-12-03', '1764720000', 'Pending', 'Dhaka', NULL, NULL, 'Pending', 0, 'Cash', NULL, NULL, 'Pending', 'BDT', NULL, 0, '2025-03-12 12:21:15', '2025-03-12 12:21:15'),
(19, 20, 0, 9990, 1290, 100, '2025-19-04', '0', 'Pending', 'Shahbag', NULL, NULL, 'Pending', 0, 'Cash', NULL, NULL, 'Pending', 'BDT', NULL, 0, '2025-04-19 09:49:57', '2025-04-19 09:49:57'),
(20, 19, 0, 2400, 300, 100, '2025-04-20', '1745107200', 'Processing', 'Shahbag', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '68048eb5ce8c7', 0, NULL, NULL),
(21, 22, 0, 1480, 180, 100, '2025-20-04', '0', 'Pending', 'Mirpur', NULL, NULL, 'Pending', 0, 'Cash', NULL, NULL, 'Pending', 'BDT', NULL, 0, '2025-04-20 00:11:16', '2025-04-20 00:11:16'),
(22, 22, 0, 2860, 360, 100, '2025-04-20', '1745107200', 'Processing', 'Gabtoli', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '6804903fa7f91', 0, NULL, NULL),
(23, 22, 0, 114, 2, 100, '2025-20-04', '0', 'Pending', 'khulna', NULL, NULL, 'Pending', 0, 'Cash', NULL, NULL, 'Pending', 'BDT', NULL, 0, '2025-04-20 03:20:32', '2025-04-20 03:20:32'),
(24, 20, 0, 5160, 660, 100, '2025-16-05', '0', 'Pending', 'dhaka', NULL, NULL, 'Pending', 0, 'Cash', NULL, NULL, 'Pending', 'BDT', NULL, 0, '2025-05-15 23:27:50', '2025-05-15 23:27:50'),
(25, 20, 0, 5160, 660, 100, '2025-05-16', '1747353600', 'Processing', 'savar', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '6826cd1a817be', 0, NULL, NULL),
(26, 20, 0, 155, 7, 100, '2025-05-16', '1747353600', 'Processing', 'dhaka', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '68275da39305e', 0, NULL, NULL),
(27, 23, 0, 2400, 300, 100, '2025-16-05', '0', 'Complete', 'khulna', '2025-05-16', '1747353600', 'Complete', 2400, 'Cash', '2025-16-05', '0', 'Complete', 'BDT', NULL, 0, '2025-05-16 09:48:38', '2025-05-16 09:57:52'),
(28, 20, 0, 2400, 300, 100, '2025-05-21', '1747785600', 'Pending', 'dhaka', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '682e11e752eb0', 0, NULL, NULL),
(29, 20, 0, 4240, 540, 100, '2025-05-22', '1747872000', 'Processing', 'hhhhh', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '682ea0293ff66', 0, NULL, NULL),
(30, 13, 0, 800, 120, 100, '2025-25-05', '0', 'Pending', 'hhh', NULL, NULL, 'Pending', 0, 'Cash', NULL, NULL, 'Pending', 'BDT', NULL, 5, '2025-05-25 02:59:42', '2025-05-25 02:59:42'),
(31, 13, 0, 800, 120, 100, '2025-25-05', '0', 'Pending', 'gg', NULL, NULL, 'Pending', 0, 'Cash', NULL, NULL, 'Pending', 'BDT', NULL, 5, '2025-05-25 03:07:56', '2025-05-25 03:07:56'),
(32, 13, 0, 800, 120, 100, '2025-25-05', '0', 'Pending', 'fff', NULL, NULL, 'Pending', 0, 'Cash', NULL, NULL, 'Pending', 'BDT', NULL, 5, '2025-05-25 03:11:35', '2025-05-25 03:11:35'),
(33, 13, 0, 800, 120, 100, '2025-25-05', '0', 'Pending', 'ddd', NULL, NULL, 'Pending', 0, 'Cash', NULL, NULL, 'Pending', 'BDT', NULL, 5, '2025-05-25 03:12:53', '2025-05-25 03:12:53'),
(34, 13, 0, 1200, 180, 100, '2025-25-05', '0', 'Pending', 'dfgg', NULL, NULL, 'Pending', 0, 'Cash', NULL, NULL, 'Pending', 'BDT', NULL, 5, '2025-05-25 03:13:58', '2025-05-25 03:13:58'),
(35, 13, 0, 1200, 180, 100, '2025-25-05', '0', 'Pending', 'dfgg', NULL, NULL, 'Pending', 0, 'Cash', NULL, NULL, 'Pending', 'BDT', NULL, 5, '2025-05-25 03:14:38', '2025-05-25 03:14:38'),
(36, 13, 0, 1200, 180, 100, '2025-25-05', '0', 'Pending', 'ggggg', NULL, NULL, 'Pending', 0, 'Cash', NULL, NULL, 'Pending', 'BDT', NULL, 5, '2025-05-25 03:15:44', '2025-05-25 03:15:44'),
(37, 13, 0, 2412, 362, 100, '2025-25-05', '0', 'Pending', 'fff', NULL, NULL, 'Pending', 0, 'Cash', NULL, NULL, 'Pending', 'BDT', NULL, 5, '2025-05-25 03:16:58', '2025-05-25 03:16:58'),
(38, 13, 0, 1200, 180, 100, '2025-25-05', '0', 'Pending', 'mmmm', NULL, NULL, 'Pending', 0, 'Cash', NULL, NULL, 'Pending', 'BDT', NULL, 5, '2025-05-25 03:20:04', '2025-05-25 03:20:04'),
(39, 13, 0, 2400, 360, 100, '2025-25-05', '0', 'Pending', 'Uttora', NULL, NULL, 'Pending', 0, 'Cash', NULL, NULL, 'Pending', 'BDT', NULL, 5, '2025-05-25 03:20:39', '2025-05-25 03:20:39'),
(40, 13, 0, 2000, 300, 100, '2025-25-05', '0', 'Pending', 'Shahbag', NULL, NULL, 'Pending', 0, 'Cash', NULL, NULL, 'Pending', 'BDT', NULL, 5, '2025-05-25 03:23:27', '2025-05-25 03:23:27'),
(41, 13, 0, 2412, 362, 100, '2025-25-05', '0', 'Pending', 'Harinakundh', NULL, NULL, 'Pending', 0, 'Cash', NULL, NULL, 'Pending', 'BDT', NULL, 5, '2025-05-25 03:25:34', '2025-05-25 03:25:34'),
(42, 13, 0, 180, 27, 100, '2025-05-25', '1748131200', 'Pending', 'Barishal', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '6832e291798b7', 5, NULL, NULL),
(43, 13, 0, 2200, 330, 100, '2025-05-25', '1748131200', 'Pending', 'Savar', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '6832e2f615016', 5, NULL, NULL),
(44, 13, 0, 2000, 300, 100, '2025-25-05', '0', 'Pending', 'Savar', NULL, NULL, 'Pending', 0, 'Cash', NULL, NULL, 'Pending', 'BDT', NULL, 5, '2025-05-25 03:31:36', '2025-05-25 03:31:36'),
(45, 13, 0, 800, 120, 100, '2025-05-25', '1748131200', 'Pending', 'EB', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '6832e3a03ddc4', 5, NULL, NULL),
(46, 13, 0, 300, 45, 100, '2025-05-25', '1748131200', 'Pending', 'jjjj', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '6832e439aeb25', NULL, NULL, NULL),
(47, 13, 0, 1199, 180, 100, '2025-25-05', '0', 'Pending', 'Mohakhali', NULL, NULL, 'Pending', 0, 'Cash', NULL, NULL, 'Pending', 'BDT', NULL, NULL, '2025-05-25 03:38:16', '2025-05-25 03:38:16'),
(48, 13, 0, 300, 45, 100, '2025-25-05', '0', 'Pending', 'fff', NULL, NULL, 'Pending', 0, 'Cash', NULL, NULL, 'Pending', 'BDT', NULL, NULL, '2025-05-25 03:44:15', '2025-05-25 03:44:15'),
(49, 13, 0, 1199, 180, 100, '2025-25-05', '0', 'Pending', 'jj', NULL, NULL, 'Pending', 0, 'Cash', NULL, NULL, 'Pending', 'BDT', NULL, NULL, '2025-05-25 03:47:07', '2025-05-25 03:47:07'),
(50, 13, 0, 1199, 180, 100, '2025-05-25', '1748131200', 'Pending', 'jj', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '6832e724cd475', NULL, NULL, NULL),
(51, 13, 0, 1199, 180, 100, '2025-25-05', '0', 'Pending', 'jj', NULL, NULL, 'Pending', 0, 'Cash', NULL, NULL, 'Pending', 'BDT', NULL, NULL, '2025-05-25 03:47:36', '2025-05-25 03:47:36'),
(52, 13, 0, 1199, 180, 100, '2025-25-05', '0', 'Pending', 'jj', NULL, NULL, 'Pending', 0, 'Cash', NULL, NULL, 'Pending', 'BDT', NULL, NULL, '2025-05-25 03:48:01', '2025-05-25 03:48:01'),
(53, 13, 0, 100, 15, 100, '2025-25-05', '0', 'Pending', 'fff', NULL, NULL, 'Pending', 0, 'Cash', NULL, NULL, 'Pending', 'BDT', NULL, NULL, '2025-05-25 04:19:07', '2025-05-25 04:19:07'),
(54, 13, 0, 1200, 180, 100, '2025-25-05', '0', 'Pending', 'comillah', NULL, NULL, 'Pending', 0, 'Cash', NULL, NULL, 'Pending', 'BDT', NULL, NULL, '2025-05-25 04:32:15', '2025-05-25 04:32:15'),
(55, 13, 0, 90, 14, 100, '2025-25-05', '0', 'Pending', 'kkk', NULL, NULL, 'Pending', 0, 'Cash', NULL, NULL, 'Pending', 'BDT', NULL, NULL, '2025-05-25 04:37:06', '2025-05-25 04:37:06'),
(56, 13, 0, 12, 2, 100, '2025-05-25', '1748131200', 'Pending', 'iiii', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '6832f33b2235b', NULL, NULL, NULL),
(57, 13, 0, 1199, 180, 100, '2025-25-05', '0', 'Pending', 'yyy', NULL, NULL, 'Pending', 0, 'Cash', NULL, NULL, 'Pending', 'BDT', NULL, NULL, '2025-05-25 05:05:05', '2025-05-25 05:05:05'),
(58, 13, 0, 1000, 150, 100, '2025-05-25', '1748131200', 'Pending', 'ddd', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '68331f851fc52', NULL, NULL, NULL),
(59, 13, 0, 1180, 177, 100, '2025-05-25', '1748131200', 'Pending', 'gg', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '68332025d0c6c', NULL, NULL, NULL),
(60, 24, 0, 12, 2, 100, '2025-26-05', '0', 'Pending', 'bd', NULL, NULL, 'Pending', 0, 'Cash', NULL, NULL, 'Pending', 'BDT', NULL, NULL, '2025-05-25 23:10:29', '2025-05-25 23:10:29'),
(61, 24, 0, 0, 0, 100, '2025-26-05', '0', 'Pending', 'ddd', NULL, NULL, 'Pending', 0, 'Cash', NULL, NULL, 'Pending', 'BDT', NULL, NULL, '2025-05-25 23:11:17', '2025-05-25 23:11:17'),
(62, 24, 0, 180, 27, 100, '2025-05-26', '1748217600', 'Pending', 'harinakunud', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '6833f8bfe7e5f', NULL, NULL, NULL),
(63, 13, 0, 1200, 180, 100, '2025-05-26', '1748217600', 'Pending', 'ggg', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '683460c7d92b0', NULL, NULL, NULL),
(64, 13, 0, 1200, 180, 100, '2025-05-26', '1748217600', 'Pending', 'fff', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '6834619150883', NULL, NULL, NULL),
(65, 13, 0, 180, 27, 100, '2025-05-27', '1748304000', 'Pending', 'cf', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '68354c492f8e4', NULL, NULL, NULL),
(66, 13, 0, 1000, 150, 100, '2025-05-27', '1748304000', 'Pending', 'ff', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '683556e8b126c', NULL, NULL, NULL),
(67, 13, 0, 180, 27, 100, '2025-05-27', '1748304000', 'Pending', 'gg', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '68355735e4872', NULL, NULL, NULL),
(68, 13, 0, 12, 2, 100, '2025-05-27', '1748304000', 'Pending', 'ff', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '68356593d498a', NULL, NULL, NULL),
(69, 13, 0, 192, 29, 100, '2025-05-27', '1748304000', 'Pending', 'rff', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '683565cf9ab94', NULL, NULL, NULL),
(70, 26, 0, 400, 60, 100, '2025-05-27', '1748304000', 'Pending', 'somrat@gmail.com', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '68357aef9e194', NULL, NULL, NULL),
(71, 27, 0, 1200, 180, 100, '2025-27-05', '0', 'Pending', 'ff', NULL, NULL, 'Pending', 0, 'Cash', NULL, NULL, 'Pending', 'BDT', NULL, NULL, '2025-05-27 02:54:41', '2025-05-27 02:54:41'),
(72, 27, 0, 90, 14, 100, '2025-05-27', '1748304000', 'Pending', 'cc', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '68357e65d78c8', NULL, NULL, NULL),
(73, 13, 0, 800, 120, 100, '2025-06-15', '1749945600', 'Processing', 'ff', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '684ecc0ae3db5', NULL, NULL, NULL),
(74, 13, 0, 78900, 11835, 100, '2025-06-16', '1750032000', 'Processing', 'yy', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '684fa124ad2aa', NULL, NULL, NULL),
(75, 13, 0, 78900, 11835, 100, '2025-06-16', '1750032000', 'Processing', 'f', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '684fa46becdaa', NULL, NULL, NULL),
(76, 13, 0, 400, 60, 100, '2025-06-16', '1750032000', 'Processing', 'hh', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '684fa5c91b630', NULL, NULL, NULL),
(77, 13, 0, 0, 0, 100, '2025-06-16', '1750032000', 'Processing', 'ff', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '684fa77f93a69', NULL, NULL, NULL),
(78, 13, 0, 1199, 180, 100, '2025-06-16', '1750032000', 'Processing', 'vv', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '684fa7d83fc2b', NULL, NULL, NULL),
(79, 13, 0, 2000, 300, 100, '2025-06-16', '1750032000', 'Processing', 'ddd', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '684fa7f83a890', NULL, NULL, NULL),
(80, 13, 0, 12, 2, 100, '2025-06-16', '1750032000', 'Processing', 'oo', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '684fa9d5cd978', NULL, NULL, NULL),
(81, 13, 0, 12, 2, 100, '2025-06-16', '1750032000', 'Processing', 'oo', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '684faa5e19cc7', NULL, NULL, NULL),
(82, 13, 0, 1199, 180, 100, '2025-16-06', '0', 'Pending', 'll', NULL, NULL, 'Pending', 0, 'Cash', NULL, NULL, 'Pending', 'BDT', NULL, NULL, '2025-06-15 23:25:19', '2025-06-15 23:25:19'),
(83, 13, 0, 90, 14, 100, '2025-06-16', '1750032000', 'Processing', 'cc', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '684facf231ad1', NULL, NULL, NULL),
(84, 13, 0, 180, 27, 100, '2025-06-16', '1750032000', 'Processing', 'hg', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '684fad0d8b95c', NULL, NULL, NULL),
(85, 13, 0, 90, 14, 100, '2025-06-16', '1750032000', 'Processing', 'oo', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '684fb1bf93a08', NULL, NULL, NULL),
(86, 13, 0, 90, 14, 100, '2025-06-16', '1750032000', 'Processing', 'dd', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '684fb20888d5a', NULL, NULL, NULL),
(87, 13, 0, 1800, 270, 100, '2025-16-06', '0', 'Pending', 'uu', NULL, NULL, 'Pending', 0, 'Cash', NULL, NULL, 'Pending', 'BDT', NULL, NULL, '2025-06-16 00:01:01', '2025-06-16 00:01:01'),
(88, 13, 0, 2200, 330, 100, '2025-16-06', '0', 'Pending', 'yy', NULL, NULL, 'Pending', 0, 'Cash', NULL, NULL, 'Pending', 'BDT', NULL, NULL, '2025-06-16 00:02:11', '2025-06-16 00:02:11'),
(89, 13, 0, 1200, 180, 100, '2025-06-16', '1750032000', 'Processing', '123456', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '684fd4c328e8b', NULL, NULL, NULL),
(90, 11, 0, 400, 60, 100, '2025-06-17', '1750118400', 'Processing', 'cc', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '68512fb3e9d0f', NULL, NULL, NULL),
(91, 13, 0, 180, 27, 100, '2025-06-17', '1750118400', 'Processing', 'kk', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '685153461812f', NULL, NULL, NULL),
(92, 11, 0, 78900, 11835, 100, '2025-06-17', '1750118400', 'Pending', 'Jhenaidah', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '68516ba01b158', NULL, NULL, NULL),
(93, 11, 0, 78900, 11835, 100, '2025-06-17', '1750118400', 'Pending', 'ff', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '68516bf224491', NULL, NULL, NULL),
(94, 13, 0, 180, 27, 100, '2025-06-17', '1750118400', 'Pending', 'ccc', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '68516c4320bab', NULL, NULL, NULL),
(95, 13, 0, 400, 60, 100, '2025-06-17', '1750118400', 'Pending', 'ggg', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '68516d34abfbf', NULL, NULL, NULL),
(96, 13, 0, 12, 2, 100, '2025-06-17', '1750118400', 'Processing', 'gg', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '68516d7f8ae42', NULL, NULL, NULL),
(97, 11, 0, 78900, 11835, 100, '2025-06-17', '1750118400', 'Processing', 'nn', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '68516dc875c4e', NULL, NULL, NULL),
(98, 13, 0, 1199, 180, 100, '2025-06-18', '1750204800', 'Processing', 'ff', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '68524bf1928cd', NULL, NULL, NULL),
(99, 13, 0, 12, 2, 100, '2025-06-18', '1750204800', 'Processing', 'mm', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '68524e2a73ef7', NULL, NULL, NULL),
(100, 13, 0, 90, 14, 100, '2025-06-18', '1750204800', 'Processing', 'ooo', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '68524e60a90f3', NULL, NULL, NULL),
(101, 13, 0, 78900, 11835, 100, '2025-18-06', '0', 'Pending', 'vv', NULL, NULL, 'Pending', 0, 'Cash', NULL, NULL, 'Pending', 'BDT', NULL, NULL, '2025-06-17 23:29:47', '2025-06-17 23:29:47'),
(102, 13, 0, 12, 2, 100, '2025-06-18', '1750204800', 'Processing', 'vv', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '68524ed6e0707', NULL, NULL, NULL),
(103, 11, 0, 12, 2, 100, '2025-06-18', '1750204800', 'Pending', 'kk', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '6852520f0c043', NULL, NULL, NULL),
(104, 11, 0, 12, 2, 100, '2025-06-18', '1750204800', 'Processing', 'kk', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '685252478fc44', NULL, NULL, NULL),
(105, 11, 0, 1000, 150, 100, '2025-06-18', '1750204800', 'Processing', 'j', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '6852527f0ed19', NULL, NULL, NULL),
(106, 11, 0, 180, 27, 100, '2025-06-18', '1750204800', 'Processing', 'jhgf', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '685252a21aa68', NULL, NULL, NULL),
(107, 13, 0, 2000, 300, 100, '2025-18-06', '0', 'Pending', 'g', NULL, NULL, 'Pending', 0, 'Cash', NULL, NULL, 'Pending', 'BDT', NULL, NULL, '2025-06-17 23:50:47', '2025-06-17 23:50:47'),
(108, 13, 0, 12, 2, 100, '2025-06-18', '1750204800', 'Processing', 'ff', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '685253c9a17a6', NULL, NULL, NULL),
(109, 13, 0, 1000, 150, 100, '2025-06-18', '1750204800', 'Failed', 'vv', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '685254f38af43', NULL, NULL, NULL),
(110, 11, 0, 1000, 150, 100, '2025-06-18', '1750204800', 'Processing', 'nn', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '68525547cba87', NULL, NULL, NULL),
(111, 28, 0, 180, 27, 100, '2025-06-18', '1750204800', 'Processing', 'hg', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '685255a0c4bb3', NULL, NULL, NULL),
(112, 28, 0, 12, 2, 100, '2025-06-18', '1750204800', 'Processing', 'ff', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '685256a104eda', NULL, NULL, NULL),
(113, 28, 0, 12, 2, 100, '2025-06-18', '1750204800', 'Processing', 'xx', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '685256e7cfa00', NULL, NULL, NULL),
(114, 28, 0, 12, 2, 100, '2025-06-18', '1750204800', 'Processing', 'dd', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '68525745e7bd2', NULL, NULL, NULL),
(115, 14, 0, 180, 27, 100, '2025-06-18', '1750204800', 'Processing', 'cc', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '685257a786d89', NULL, NULL, NULL),
(116, 29, 0, 12, 2, 100, '2025-18-06', '0', 'Pending', 'dd', NULL, NULL, 'Pending', 0, 'Cash', NULL, NULL, 'Pending', 'BDT', NULL, NULL, '2025-06-18 00:08:46', '2025-06-18 00:08:46'),
(117, 11, 0, 180, 27, 100, '2025-18-06', '0', 'Pending', 'dd', NULL, NULL, 'Pending', 0, 'Cash', NULL, NULL, 'Pending', 'BDT', NULL, NULL, '2025-06-18 00:09:27', '2025-06-18 00:09:27'),
(118, 13, 0, 180, 27, 100, '2025-18-06', '0', 'Pending', 'c', NULL, NULL, 'Pending', 0, 'Cash', NULL, NULL, 'Pending', 'BDT', NULL, NULL, '2025-06-18 00:10:28', '2025-06-18 00:10:28'),
(119, 13, 0, 350, 53, 100, '2025-06-18', '1750204800', 'Processing', 'Barisahal', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '6852a876ef8dd', NULL, NULL, NULL),
(120, 11, 0, 2000, 300, 100, '2025-06-24', '1750723200', 'Pending', 'll', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '685a53b24f54f', NULL, NULL, NULL),
(121, 11, 0, 1000, 150, 100, '2025-06-24', '1750723200', 'Pending', 'hyyy', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '685a5d1dbe350', NULL, NULL, NULL),
(122, 11, 0, 1000, 150, 100, '2025-06-24', '1750723200', 'Pending', 'ccc', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '685a5f8b03d93', NULL, NULL, NULL),
(123, 13, 2, 1000, 150, 100, '2025-24-06', '0', 'Processing', 'zz', NULL, NULL, 'Pending', 0, 'Cash', NULL, NULL, 'Pending', 'BDT', NULL, NULL, '2025-06-24 02:29:08', '2025-06-25 03:28:10'),
(124, 11, 0, 2000, 300, 100, '2025-06-24', '1750723200', 'Pending', 'uu', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '685a63f615459', NULL, NULL, NULL),
(125, 13, 0, 1000, 150, 100, '2025-06-24', '1750723200', 'Pending', 'tt', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '685a649305bc5', NULL, NULL, NULL),
(126, 13, 0, 2200, 330, 100, '2025-06-24', '1750723200', 'Pending', 'harinaron pur', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '685a65011c8f3', NULL, NULL, NULL),
(127, 13, 0, 2200, 330, 100, '2025-06-24', '1750723200', 'Pending', 'kk', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '685a66522efe1', NULL, NULL, NULL),
(128, 13, 0, 1000, 150, 100, '2025-06-24', '1750723200', 'Pending', 'ttt', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '685a66c736fc7', NULL, NULL, NULL),
(129, 13, 0, 1000, 150, 100, '2025-06-24', '1750723200', 'Pending', 'rrrrrrrrrrrrrrrrrr', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '685a670c8d398', NULL, NULL, NULL),
(130, 13, 0, 1000, 150, 100, '2025-06-24', '1750723200', 'Pending', 'yyyyyyyyyyyyyyyyyyyyy', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '685a672476fd8', NULL, NULL, NULL),
(131, 13, 0, 1000, 150, 100, '2025-06-24', '1750723200', 'Pending', 'mmmmmmmmm', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '685a67616aca2', NULL, NULL, NULL),
(132, 11, 0, 1199, 180, 100, '2025-06-24', '1750723200', 'Pending', 'ff', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '685ae7ca79f3a', NULL, NULL, NULL),
(133, 11, 0, 3600, 540, 100, '2025-07-10', '1752105600', 'Pending', 'hhh', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '686fecc44201a', NULL, NULL, NULL),
(134, 11, 0, 1000, 150, 100, '2025-17-07', '0', 'Pending', 'hhhh', NULL, NULL, 'Pending', 0, 'Cash', NULL, NULL, 'Pending', 'BDT', NULL, NULL, '2025-07-17 00:16:30', '2025-07-17 00:16:30'),
(135, 11, 0, 2200, 330, 100, '2025-07-17', '1752710400', 'Pending', 'hh', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '6878958e20827', NULL, NULL, NULL),
(136, 11, 0, 1000, 150, 100, '2025-30-07', '0', 'Pending', 'dfdfdfs', NULL, NULL, 'Pending', 0, 'Cash', NULL, NULL, 'Pending', 'BDT', NULL, NULL, '2025-07-30 06:05:46', '2025-07-30 06:05:46'),
(137, 28, 0, 1000, 150, 100, '2025-09-09', '1757376000', 'Pending', 'Jhenaidah', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '68bff874cf53b', NULL, NULL, NULL),
(138, 28, 0, 1000, 150, 100, '2025-09-09', '1757376000', 'Pending', 'Jhenaidah', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '68bff87521bf5', NULL, NULL, NULL),
(139, 28, 0, 1000, 150, 100, '2025-09-09', '1757376000', 'Pending', 'kk', NULL, NULL, 'Pending', 0, 'Cash', NULL, NULL, 'Pending', 'BDT', NULL, NULL, '2025-09-09 03:51:31', '2025-09-09 03:51:31'),
(140, 28, 0, 100, 15, 100, '2025-09-09', '1757376000', 'Pending', 'u', NULL, NULL, 'Pending', 0, 'Cash', NULL, NULL, 'Pending', 'BDT', NULL, NULL, '2025-09-09 04:09:27', '2025-09-09 04:09:27'),
(141, 28, 0, 280000, 42000, 100, '2025-09-09', '1757376000', 'Pending', 'mmm', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '68bffd29162ad', NULL, NULL, NULL),
(142, 13, 0, 1000, 150, 100, '2025-11-01', '1761955200', 'Pending', 'd', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '69059116ec66d', NULL, NULL, NULL),
(143, 13, 0, 1000, 150, 100, '2025-12-06', '1764979200', 'Pending', 'hh', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '6933f893561e1', NULL, NULL, NULL),
(144, 13, 0, 2000, 300, 100, '2025-12-06', '1764979200', 'Processing', 'Uttora', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '6933f97c6841f', NULL, NULL, NULL),
(145, 13, 0, 1199, 180, 100, '2025-06-12', '1749686400', 'Pending', 'Jhenaidah', NULL, NULL, 'Pending', 0, 'Cash', NULL, NULL, 'Pending', 'BDT', NULL, NULL, '2025-12-06 03:39:06', '2025-12-06 03:39:06'),
(146, 13, 0, 7200, 1080, 100, '2025-06-12', '1749686400', 'Pending', 'Housebuilding', NULL, NULL, 'Pending', 0, 'Cash', NULL, NULL, 'Pending', 'BDT', NULL, NULL, '2025-12-06 04:44:26', '2025-12-06 04:44:26'),
(147, 11, 0, 1000, 150, 100, '2026-03-08', '1772928000', 'Pending', 'jheanidah', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '69ad21d5521e8', NULL, NULL, NULL),
(148, 11, 0, 400, 60, 100, '2026-03-08', '1772928000', 'Pending', 'Dhaka', NULL, NULL, 'Pending', 0, 'Online', NULL, NULL, 'Pending', 'BDT', '69ad22321da16', NULL, NULL, NULL),
(149, 11, 0, 400, 60, 100, '2026-03-08', '1772928000', 'Complete', 'Dhaka', '2026-03-08', '1772928000', 'Complete', 400, 'Online', '2026-08-03', '1785715200', 'Complete', 'BDT', '69ad226c30e33', NULL, NULL, '2026-03-08 01:53:53');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_qty`, `created_at`, `updated_at`) VALUES
(1, 119, 4, 'Apple', 350, 1, '2025-06-18 05:52:23', '2025-06-18 05:52:23'),
(2, 120, 18, 'Dexc Tool', 1000, 2, '2025-06-24 01:28:50', '2025-06-24 01:28:50'),
(3, 121, 18, 'Dexc Tool', 1000, 1, '2025-06-24 02:09:01', '2025-06-24 02:09:01'),
(4, 122, 18, 'Dexc Tool', 1000, 1, '2025-06-24 02:19:23', '2025-06-24 02:19:23'),
(5, 123, 18, 'Dexc Tool', 1000, 1, '2025-06-24 02:29:08', '2025-06-24 02:29:08'),
(6, 124, 18, 'Dexc Tool', 1000, 2, '2025-06-24 02:38:14', '2025-06-24 02:38:14'),
(7, 125, 18, 'Dexc Tool', 1000, 1, '2025-06-24 02:40:51', '2025-06-24 02:40:51'),
(8, 126, 18, 'Dexc Tool', 1000, 1, '2025-06-24 02:42:41', '2025-06-24 02:42:41'),
(9, 126, 19, 'Awesome showcase', 1200, 1, '2025-06-24 02:42:41', '2025-06-24 02:42:41'),
(10, 127, 18, 'Dexc Tool', 1000, 1, '2025-06-24 02:48:18', '2025-06-24 02:48:18'),
(11, 127, 19, 'Awesome showcase', 1200, 1, '2025-06-24 02:48:18', '2025-06-24 02:48:18'),
(12, 128, 18, 'Dexc Tool', 1000, 1, '2025-06-24 02:50:15', '2025-06-24 02:50:15'),
(13, 129, 18, 'Dexc Tool', 1000, 1, '2025-06-24 02:51:24', '2025-06-24 02:51:24'),
(14, 130, 18, 'Dexc Tool', 1000, 1, '2025-06-24 02:51:48', '2025-06-24 02:51:48'),
(15, 131, 18, 'Dexc Tool', 1000, 1, '2025-06-24 02:52:49', '2025-06-24 02:52:49'),
(16, 132, 11, 'Hoody', 1199, 1, '2025-06-24 12:00:42', '2025-06-24 12:00:42'),
(17, 133, 19, 'Awesome showcase', 1200, 3, '2025-07-10 10:39:32', '2025-07-10 10:39:32'),
(18, 134, 18, 'Dexc Tool', 1000, 1, '2025-07-17 00:16:30', '2025-07-17 00:16:30'),
(19, 135, 20, 'Gaming Instruments latest', 2200, 1, '2025-07-17 00:17:50', '2025-07-17 00:17:50'),
(20, 136, 18, 'Dexc Tool', 1000, 1, '2025-07-30 06:05:46', '2025-07-30 06:05:46'),
(21, 137, 18, 'Dexc Tool', 1000, 1, '2025-09-09 03:50:44', '2025-09-09 03:50:44'),
(22, 138, 18, 'Dexc Tool', 1000, 1, '2025-09-09 03:50:45', '2025-09-09 03:50:45'),
(23, 139, 18, 'Dexc Tool', 1000, 1, '2025-09-09 03:51:31', '2025-09-09 03:51:31'),
(24, 140, 6, 'Man Shirt', 100, 1, '2025-09-09 04:09:27', '2025-09-09 04:09:27'),
(25, 141, 15, 'HD camera', 280000, 1, '2025-09-09 04:10:49', '2025-09-09 04:10:49'),
(26, 142, 18, 'Dexc Tool', 1000, 1, '2025-10-31 22:48:22', '2025-10-31 22:48:22'),
(27, 143, 18, 'Dexc Tool', 1000, 1, '2025-12-06 03:34:11', '2025-12-06 03:34:11'),
(28, 144, 18, 'Dexc Tool', 1000, 2, '2025-12-06 03:38:04', '2025-12-06 03:38:04'),
(29, 145, 11, 'Hoody', 1199, 1, '2025-12-06 03:39:06', '2025-12-06 03:39:06'),
(30, 146, 19, 'Awesome showcase', 1200, 6, '2025-12-06 04:44:26', '2025-12-06 04:44:26'),
(31, 147, 18, 'Dexc Tool', 1000, 1, '2026-03-08 01:14:29', '2026-03-08 01:14:29'),
(32, 148, 16, 'Speaker', 400, 1, '2026-03-08 01:16:02', '2026-03-08 01:16:02'),
(33, 149, 16, 'Speaker', 400, 1, '2026-03-08 01:17:00', '2026-03-08 01:17:00');

-- --------------------------------------------------------

--
-- Table structure for table `other_images`
--

CREATE TABLE `other_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `other_image` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `other_images`
--

INSERT INTO `other_images` (`id`, `product_id`, `other_image`, `created_at`, `updated_at`) VALUES
(1, 4, 'upload/product-other-images/ap1.jpg', '2025-06-18 05:49:02', '2025-06-18 05:49:02'),
(2, 4, 'upload/product-other-images/appl.jpg', '2025-06-18 05:49:02', '2025-06-18 05:49:02'),
(3, 4, 'upload/product-other-images/apples-in-a-basket-on-a-white-background-photo.jpg', '2025-06-18 05:49:02', '2025-06-18 05:49:02'),
(4, 4, 'upload/product-other-images/basket-overflowing-ripe-apples-different-260nw-2434895569.webp', '2025-06-18 05:49:02', '2025-06-18 05:49:02');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
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
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `product_price` double NOT NULL,
  `selling_price` double NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `short_description` varchar(255) DEFAULT NULL,
  `long_description` text DEFAULT NULL,
  `image` text NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `hit_count` int(11) NOT NULL DEFAULT 0,
  `sales_count` int(11) NOT NULL DEFAULT 0,
  `feature_status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `brand_id`, `unit_id`, `name`, `code`, `product_price`, `selling_price`, `stock`, `status`, `short_description`, `long_description`, `image`, `meta_title`, `meta_description`, `hit_count`, `sales_count`, `feature_status`, `created_at`, `updated_at`) VALUES
(1, 6, 10, 1, 1, 'Table', 'SLM', 12000, 10000, 12, 1, 'ghujkl', '<div class=\"row\" style=\"margin: 0px -15px; padding: 0px; color: rgb(102, 102, 102); font-family: Lato, sans-serif; letter-spacing: normal;\"><span id=\"hideData\" style=\"margin: 0px; padding: 0px;\"><div class=\"col-lg-9 col-md-9 col-sm-12 col-xs-12\" style=\"margin: 0px; padding: 0px 15px; position: relative; min-height: 1px; float: left; width: 877.5px;\"><div class=\"product-info-detailed pb-25\" style=\"margin: 0px; padding: 0px 0px 25px;\"><div class=\"row\" style=\"margin: 0px -15px; padding: 0px;\"><div class=\"col-lg-12\" style=\"margin: 0px; padding: 0px 15px; position: relative; min-height: 1px; float: left; width: 877.5px;\"><div class=\"product-info-tab\" style=\"margin: 0px; padding: 0px;\"><div class=\"tab-content\" style=\"margin: 0px; padding: 0px;\"><div class=\"tab-pane active\" id=\"overview\" style=\"margin: 0px; padding: 0px; opacity: 1;\"><div class=\"product-info-tab-content\" style=\"margin: 0px; padding: 0px;\"><p style=\"margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); line-height: 24px;\">A traditional design computer table that will bring back the nostalgia of the desktop computer. It is ergonomically designed with a retractable keyboard drawer. The top area of the table has ample space for your computer and books making it comfortable for you to work. The computer table is made from high density melamine chip giving it a sturdy and compact frame. At the bottom it has a shelf compartment for placing the computer PC or other accessories. The legs of the computer table are fitted with wheels for ease of movement.&nbsp; &nbsp; &nbsp;&nbsp;</p></div></div></div></div></div></div></div></div></span><div class=\"col-lg-3 col-md-3 col-sm-12 col-xs-12\" style=\"margin: 0px; padding: 0px 15px; position: relative; min-height: 1px; float: left; width: 292.5px;\"><div class=\"product-simple-area ptb-80\" style=\"margin: 0px; padding: 80px 0px;\"><div style=\"margin: 0px; padding: 0px;\"></div><div style=\"margin: 0px; padding: 0px;\"></div><div class=\"product-simple-content\" style=\"margin: 0px; padding: 0px;\"><div class=\"action-heiper\" style=\"margin: 30px 0px; padding: 0px 0px 20px; border: none;\"></div></div></div><div class=\"feature-preduct-area hyperion home-page-2 pb-50\" style=\"margin: 0px; padding: 0px 0px 50px;\"><div class=\"row\" style=\"margin: 0px -15px; padding: 0px;\"><div class=\"col-lg-12\" style=\"margin: 0px; padding: 0px 15px; position: relative; min-height: 1px; float: left; width: 292.5px;\"><div class=\"hyper-title\" style=\"margin: 0px 0px 35px; padding: 0px; position: relative;\"><h4 class=\"text-uppercase\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-family: inherit; font-weight: 700; line-height: 1.35; color: rgb(51, 51, 51); font-size: 18px;\">You May Also Like</h4></div></div></div><div class=\"row\" style=\"margin: 0px -15px; padding: 0px;\"><div class=\"col-lg-12\" style=\"margin: 0px; padding: 0px 15px; position: relative; min-height: 1px; float: left; width: 292.5px;\"><div class=\"shop-sideber-active owl-carousel owl-theme owl-loaded\" style=\"margin: 0px; padding: 0px; width: 262.5px; -webkit-tap-highlight-color: transparent; position: relative; z-index: 1;\"><div class=\"owl-stage-outer\" style=\"margin: 0px; padding: 0px; position: relative; overflow: hidden; transform: translate3d(0px, 0px, 0px);\"><div class=\"owl-stage\" style=\"margin: 0px; padding: 0px; position: relative; transform: translate3d(-526px, 0px, 0px); transition: all; width: 2104px;\"><div class=\"owl-item cloned\" style=\"margin: 0px; padding: 0px; position: relative; min-height: 1px; float: left; backface-visibility: hidden; -webkit-tap-highlight-color: transparent; user-select: none; width: 263px;\"><div class=\"single-product-items\" style=\"margin: 0px; padding: 0px;\"><div class=\"single-new-product\" style=\"margin: 0px 0px 30px; padding: 0px; overflow: hidden;\"><div class=\"product-img\" style=\"margin: 0px; padding: 0px; position: relative; float: left; width: 105.2px;\"><a href=\"https://hatimfurniturebd.com/wooden-wardrobe-hwdh-325-details\" style=\"margin: 0px; padding: 0px; background-color: transparent; color: rgb(51, 51, 51); transition: 0.4s; position: relative; display: block;\"><img src=\"http://admin.hatimfurniturebd.com/images/product/wooden-wardrobe-hwdh-325.jpg\" class=\"first_img\" alt=\"Wooden Wardrobe\" style=\"margin: 0px; padding: 0px; border: 0px; max-width: 100%; height: auto; display: block; width: 105.2px; transform-style: preserve-3d;\"><img src=\"http://admin.hatimfurniturebd.com/images/product/wooden-wardrobe-hwdh-325.jpg\" class=\"seceond_img\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; max-width: 100%; height: auto; position: absolute; left: 0px; top: 0px; opacity: 0; transition: 0.4s; display: block; width: 105.2px; transform-style: preserve-3d;\"></a><span class=\"new\" style=\"margin: 0px; padding: 4px 8px; background: none 0px 0px repeat scroll rgb(238, 86, 85); color: rgb(255, 255, 255); font-size: 12px; position: absolute; top: 12px; z-index: 111;\">5%</span></div><div class=\"product-content text-center\" style=\"margin: 0px; padding: 0px 0px 0px 12px; text-align: left; float: left; width: 157.8px;\"><a href=\"https://hatimfurniturebd.com/wooden-wardrobe-hwdh-325-details\" style=\"margin: 0px; padding: 0px; background-color: transparent; color: rgb(51, 51, 51); transition: 0.3s;\"><h3 style=\"margin: 10px 0px; padding: 0px; font-family: inherit; line-height: 24px; color: rgb(51, 51, 51); font-size: 16px; overflow: hidden; text-transform: capitalize;\">Wooden Wardrobe-HWDH-325</h3></a><h4 style=\"margin: 7px 0px 0px; padding: 0px; font-family: inherit; font-weight: 700; line-height: 1.35; color: rgb(51, 51, 51); font-size: 15px;\">৳ 42,180.00</h4></div></div><div class=\"single-new-product\" style=\"margin: 0px 0px 30px; padding: 0px; overflow: hidden;\"><div class=\"product-img\" style=\"margin: 0px; padding: 0px; position: relative; float: left; width: 105.2px;\"><a href=\"https://hatimfurniturebd.com/wooden-kids-double-bed-hbkdh-304-moon-in-cloudy-sky-pink--details\" style=\"margin: 0px; padding: 0px; background-color: transparent; color: rgb(51, 51, 51); transition: 0.4s; position: relative; display: block;\"><img src=\"http://admin.hatimfurniturebd.com/images/product/wooden-kids-double-bed-hbkdh-304-moon-in-cloudy-sky-pink-.jpg\" class=\"first_img\" alt=\"Wooden Kids Double Bed\" style=\"margin: 0px; padding: 0px; border: 0px; max-width: 100%; height: auto; display: block; width: 105.2px; transform-style: preserve-3d;\"><img src=\"http://admin.hatimfurniturebd.com/images/product/wooden-kids-double-bed-hbkdh-304-moon-in-cloudy-sky-pink-.jpg\" class=\"seceond_img\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; max-width: 100%; height: auto; position: absolute; left: 0px; top: 0px; opacity: 0; transition: 0.4s; display: block; width: 105.2px; transform-style: preserve-3d;\"></a><span class=\"new\" style=\"margin: 0px; padding: 4px 8px; background: none 0px 0px repeat scroll rgb(238, 86, 85); color: rgb(255, 255, 255); font-size: 12px; position: absolute; top: 12px; z-index: 111;\">5%</span></div><div class=\"product-content text-center\" style=\"margin: 0px; padding: 0px 0px 0px 12px; text-align: left; float: left; width: 157.8px;\"><a href=\"https://hatimfurniturebd.com/wooden-kids-double-bed-hbkdh-304-moon-in-cloudy-sky-pink--details\" style=\"margin: 0px; padding: 0px; background-color: transparent; color: rgb(51, 51, 51); transition: 0.3s;\"><h3 style=\"margin: 10px 0px; padding: 0px; font-family: inherit; line-height: 24px; color: rgb(51, 51, 51); font-size: 16px; overflow: hidden; text-transform: capitalize;\">Wooden Kids Double Bed-HBKDH-304 (Moon in cloudy sky)(Pink)</h3></a><h4 style=\"margin: 7px 0px 0px; padding: 0px; font-family: inherit; font-weight: 700; line-height: 1.35; color: rgb(51, 51, 51); font-size: 15px;\">৳ 26,315.00</h4></div></div></div></div><div class=\"owl-item cloned\" style=\"margin: 0px; padding: 0px; position: relative; min-height: 1px; float: left; backface-visibility: hidden; -webkit-tap-highlight-color: transparent; user-select: none; width: 263px;\"><div class=\"single-product-items\" style=\"margin: 0px; padding: 0px;\"><div class=\"single-new-product\" style=\"margin: 0px 0px 30px; padding: 0px; overflow: hidden;\"><div class=\"product-img\" style=\"margin: 0px; padding: 0px; position: relative; float: left; width: 105.2px;\"><a href=\"https://hatimfurniturebd.com/wooden-dining-full-set-htdh-308-hcfd-318-1-6--details\" style=\"margin: 0px; padding: 0px; background-color: transparent; color: rgb(51, 51, 51); transition: 0.4s; position: relative; display: block;\"><img src=\"http://admin.hatimfurniturebd.com/images/product/wooden-dining-full-set-htdh-308-hcfd-318-1-6-.jpg\" class=\"first_img\" alt=\"Wooden Dining Full Set\" style=\"margin: 0px; padding: 0px; border: 0px; max-width: 100%; height: auto; display: block; width: 105.2px; transform-style: preserve-3d;\"><img src=\"http://admin.hatimfurniturebd.com/images/product/wooden-dining-full-set-htdh-308-hcfd-318-1-6-.jpg\" class=\"seceond_img\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; max-width: 100%; height: auto; position: absolute; left: 0px; top: 0px; opacity: 0; transition: 0.4s; display: block; width: 105.2px; transform-style: preserve-3d;\"></a><span class=\"new\" style=\"margin: 0px; padding: 4px 8px; background: none 0px 0px repeat scroll rgb(238, 86, 85); color: rgb(255, 255, 255); font-size: 12px; position: absolute; top: 12px; z-index: 111;\">5%</span></div><div class=\"product-content text-center\" style=\"margin: 0px; padding: 0px 0px 0px 12px; text-align: left; float: left; width: 157.8px;\"><a href=\"https://hatimfurniturebd.com/wooden-dining-full-set-htdh-308-hcfd-318-1-6--details\" style=\"margin: 0px; padding: 0px; background-color: transparent; color: rgb(51, 51, 51); transition: 0.3s;\"><h3 style=\"margin: 10px 0px; padding: 0px; font-family: inherit; line-height: 24px; color: rgb(51, 51, 51); font-size: 16px; overflow: hidden; text-transform: capitalize;\">Wooden Dining Full Set-HTDH-308, HCFD-318 (1+6)</h3></a><h4 style=\"margin: 7px 0px 0px; padding: 0px; font-family: inherit; font-weight: 700; line-height: 1.35; color: rgb(51, 51, 51); font-size: 15px;\">৳ 96,805.00</h4></div></div></div></div><div class=\"owl-item active\" style=\"margin: 0px; padding: 0px; opacity: 1; position: relative; min-height: 1px; float: left; backface-visibility: hidden; -webkit-tap-highlight-color: transparent; user-select: none; width: 263px;\"><div class=\"single-product-items\" style=\"margin: 0px; padding: 0px;\"><div class=\"single-new-product\" style=\"margin: 0px 0px 30px; padding: 0px; overflow: hidden;\"><div class=\"product-img\" style=\"margin: 0px; padding: 0px; position: relative; float: left; width: 105.2px;\"><a href=\"https://hatimfurniturebd.com/wooden-kids-chest-of-drawer-hkcdh-304-moon-in-cloudy-sky-pink--details\" style=\"margin: 0px; padding: 0px; background-color: transparent; color: rgb(51, 51, 51); transition: 0.4s; position: relative; display: block;\"><img src=\"http://admin.hatimfurniturebd.com/images/product/wooden-kids-chest-of-drawer-hkcdh-304-3-drawer-moon-in-cloudy-sky-pink-.jpg\" class=\"first_img\" alt=\"Wooden Kids \" style=\"margin: 0px; padding: 0px; border: 0px; max-width: 100%; height: auto; display: block; width: 105.2px; transform-style: preserve-3d;\"><img src=\"http://admin.hatimfurniturebd.com/images/product/wooden-kids-chest-of-drawer-hkcdh-304-3-drawer-moon-in-cloudy-sky-pink-.jpg\" class=\"seceond_img\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; max-width: 100%; height: auto; position: absolute; left: 0px; top: 0px; opacity: 0; transition: 0.4s; display: block; width: 105.2px; transform-style: preserve-3d;\"></a><span class=\"new\" style=\"margin: 0px; padding: 4px 8px; background: none 0px 0px repeat scroll rgb(238, 86, 85); color: rgb(255, 255, 255); font-size: 12px; position: absolute; top: 12px; z-index: 111;\">5%</span></div><div class=\"product-content text-center\" style=\"margin: 0px; padding: 0px 0px 0px 12px; text-align: left; float: left; width: 157.8px;\"><a href=\"https://hatimfurniturebd.com/wooden-kids-chest-of-drawer-hkcdh-304-moon-in-cloudy-sky-pink--details\" style=\"margin: 0px; padding: 0px; background-color: transparent; color: rgb(51, 51, 51); transition: 0.3s;\"><h3 style=\"margin: 10px 0px; padding: 0px; font-family: inherit; line-height: 24px; color: rgb(51, 51, 51); font-size: 16px; overflow: hidden; text-transform: capitalize;\">Wooden Kids -Chest Of Drawer-HKCDH-304 (Moon in cloudy sky)(Pink)</h3></a><h4 style=\"margin: 7px 0px 0px; padding: 0px; font-family: inherit; font-weight: 700; line-height: 1.35; color: rgb(51, 51, 51); font-size: 15px;\">৳ 21,470.00</h4></div></div><div class=\"single-new-product\" style=\"margin: 0px 0px 30px; padding: 0px; overflow: hidden;\"><div class=\"product-img\" style=\"margin: 0px; padding: 0px; position: relative; float: left; width: 105.2px;\"><a href=\"https://hatimfurniturebd.com/wooden-dressing-table-hdth-326-details\" style=\"margin: 0px; padding: 0px; background-color: transparent; color: rgb(51, 51, 51); transition: 0.4s; position: relative; display: block;\"><img src=\"http://admin.hatimfurniturebd.com/images/product/wooden-dressing-table-hdth-326.jpg\" class=\"first_img\" alt=\"Wooden Dressing Table\" style=\"margin: 0px; padding: 0px; border: 0px; max-width: 100%; height: auto; display: block; width: 105.2px; transform-style: preserve-3d;\"><img src=\"http://admin.hatimfurniturebd.com/images/product/wooden-dressing-table-hdth-326.jpg\" class=\"seceond_img\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; max-width: 100%; height: auto; position: absolute; left: 0px; top: 0px; opacity: 0; transition: 0.4s; display: block; width: 105.2px; transform-style: preserve-3d;\"></a><span class=\"new\" style=\"margin: 0px; padding: 4px 8px; background: none 0px 0px repeat scroll rgb(238, 86, 85); color: rgb(255, 255, 255); font-size: 12px; position: absolute; top: 12px; z-index: 111;\">5%</span></div><div class=\"product-content text-center\" style=\"margin: 0px; padding: 0px 0px 0px 12px; text-align: left; float: left; width: 157.8px;\"><a href=\"https://hatimfurniturebd.com/wooden-dressing-table-hdth-326-details\" style=\"margin: 0px; padding: 0px; background-color: transparent; color: rgb(51, 51, 51); transition: 0.3s;\"><h3 style=\"margin: 10px 0px; padding: 0px; font-family: inherit; line-height: 24px; color: rgb(51, 51, 51); font-size: 16px; overflow: hidden; text-transform: capitalize;\">Wooden Dressing Table-HDTH-326</h3></a><h4 style=\"margin: 7px 0px 0px; padding: 0px; font-family: inherit; font-weight: 700; line-height: 1.35; color: rgb(51, 51, 51); font-size: 15px;\">৳ 27,550.00</h4></div></div></div></div><div class=\"owl-item\" style=\"margin: 0px; padding: 0px; position: relative; min-height: 1px; float: left; backface-visibility: hidden; -webkit-tap-highlight-color: transparent; user-select: none; width: 263px;\"><div class=\"single-product-items\" style=\"margin: 0px; padding: 0px;\"><div class=\"single-new-product\" style=\"margin: 0px 0px 30px; padding: 0px; overflow: hidden;\"><div class=\"product-img\" style=\"margin: 0px; padding: 0px; position: relative; float: left; width: 105.2px;\"><a href=\"https://hatimfurniturebd.com/wooden-cupboard-hcbh-326-3-doors--details\" style=\"margin: 0px; padding: 0px; background-color: transparent; color: rgb(51, 51, 51); transition: 0.4s; position: relative; display: block;\"><img src=\"http://admin.hatimfurniturebd.com/images/product/wooden-cupboard-hcbh-326-3-doors-.jpg\" class=\"first_img\" alt=\"Wooden Cupboard\" style=\"margin: 0px; padding: 0px; border: 0px; max-width: 100%; height: auto; display: block; width: 105.2px; transform-style: preserve-3d;\"><img src=\"http://admin.hatimfurniturebd.com/images/product/wooden-cupboard-hcbh-326-3-doors-.jpg\" class=\"seceond_img\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; max-width: 100%; height: auto; position: absolute; left: 0px; top: 0px; opacity: 0; transition: 0.4s; display: block; width: 105.2px; transform-style: preserve-3d;\"></a><span class=\"new\" style=\"margin: 0px; padding: 4px 8px; background: none 0px 0px repeat scroll rgb(238, 86, 85); color: rgb(255, 255, 255); font-size: 12px; position: absolute; top: 12px; z-index: 111;\">5%</span></div><div class=\"product-content text-center\" style=\"margin: 0px; padding: 0px 0px 0px 12px; text-align: left; float: left; width: 157.8px;\"><a href=\"https://hatimfurniturebd.com/wooden-cupboard-hcbh-326-3-doors--details\" style=\"margin: 0px; padding: 0px; background-color: transparent; color: rgb(51, 51, 51); transition: 0.3s;\"><h3 style=\"margin: 10px 0px; padding: 0px; font-family: inherit; line-height: 24px; color: rgb(51, 51, 51); font-size: 16px; overflow: hidden; text-transform: capitalize;\">Wooden Cupboard-HCBH-326 (3 Doors)</h3></a><h4 style=\"margin: 7px 0px 0px; padding: 0px; font-family: inherit; font-weight: 700; line-height: 1.35; color: rgb(51, 51, 51); font-size: 15px;\">৳ 67,355.00</h4></div></div><div class=\"single-new-product\" style=\"margin: 0px 0px 30px; padding: 0px; overflow: hidden;\"><div class=\"product-img\" style=\"margin: 0px; padding: 0px; position: relative; float: left; width: 105.2px;\"><a href=\"https://hatimfurniturebd.com/wooden-king-bed-hbdh-326-details\" style=\"margin: 0px; padding: 0px; background-color: transparent; color: rgb(51, 51, 51); transition: 0.4s; position: relative; display: block;\"><img src=\"http://admin.hatimfurniturebd.com/images/product/wooden-king-bed-hbdh-326.jpg\" class=\"first_img\" alt=\"Wooden King Bed\" style=\"margin: 0px; padding: 0px; border: 0px; max-width: 100%; height: auto; display: block; width: 105.2px; transform-style: preserve-3d;\"><img src=\"http://admin.hatimfurniturebd.com/images/product/wooden-king-bed-hbdh-326.jpg\" class=\"seceond_img\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; max-width: 100%; height: auto; position: absolute; left: 0px; top: 0px; opacity: 0; transition: 0.4s; display: block; width: 105.2px; transform-style: preserve-3d;\"></a><span class=\"new\" style=\"margin: 0px; padding: 4px 8px; background: none 0px 0px repeat scroll rgb(238, 86, 85); color: rgb(255, 255, 255); font-size: 12px; position: absolute; top: 12px; z-index: 111;\">5%</span></div><div class=\"product-content text-center\" style=\"margin: 0px; padding: 0px 0px 0px 12px; text-align: left; float: left; width: 157.8px;\"><a href=\"https://hatimfurniturebd.com/wooden-king-bed-hbdh-326-details\" style=\"margin: 0px; padding: 0px; background-color: transparent; color: rgb(51, 51, 51); transition: 0.3s;\"><h3 style=\"margin: 10px 0px; padding: 0px; font-family: inherit; line-height: 24px; color: rgb(51, 51, 51); font-size: 16px; overflow: hidden; text-transform: capitalize;\">Wooden King Bed- HBDH-326</h3></a><h4 style=\"margin: 7px 0px 0px; padding: 0px; font-family: inherit; font-weight: 700; line-height: 1.35; color: rgb(51, 51, 51); font-size: 15px;\">৳ 48,735.00</h4></div></div></div></div><div class=\"owl-item\" style=\"margin: 0px; padding: 0px; position: relative; min-height: 1px; float: left; backface-visibility: hidden; -webkit-tap-highlight-color: transparent; user-select: none; width: 263px;\"><div class=\"single-product-items\" style=\"margin: 0px; padding: 0px;\"><div class=\"single-new-product\" style=\"margin: 0px 0px 30px; padding: 0px; overflow: hidden;\"><div class=\"product-img\" style=\"margin: 0px; padding: 0px; position: relative; float: left; width: 105.2px;\"><a href=\"https://hatimfurniturebd.com/wooden-wardrobe-hwdh-325-details\" style=\"margin: 0px; padding: 0px; background-color: transparent; color: rgb(51, 51, 51); transition: 0.4s; position: relative; display: block;\"><img src=\"http://admin.hatimfurniturebd.com/images/product/wooden-wardrobe-hwdh-325.jpg\" class=\"first_img\" alt=\"Wooden Wardrobe\" style=\"margin: 0px; padding: 0px; border: 0px; max-width: 100%; height: auto; display: block; width: 105.2px; transform-style: preserve-3d;\"><img src=\"http://admin.hatimfurniturebd.com/images/product/wooden-wardrobe-hwdh-325.jpg\" class=\"seceond_img\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; max-width: 100%; height: auto; position: absolute; left: 0px; top: 0px; opacity: 0; transition: 0.4s; display: block; width: 105.2px; transform-style: preserve-3d;\"></a><span class=\"new\" style=\"margin: 0px; padding: 4px 8px; background: none 0px 0px repeat scroll rgb(238, 86, 85); color: rgb(255, 255, 255); font-size: 12px; position: absolute; top: 12px; z-index: 111;\">5%</span></div><div class=\"product-content text-center\" style=\"margin: 0px; padding: 0px 0px 0px 12px; text-align: left; float: left; width: 157.8px;\"><a href=\"https://hatimfurniturebd.com/wooden-wardrobe-hwdh-325-details\" style=\"margin: 0px; padding: 0px; background-color: transparent; color: rgb(51, 51, 51); transition: 0.3s;\"><h3 style=\"margin: 10px 0px; padding: 0px; font-family: inherit; line-height: 24px; color: rgb(51, 51, 51); font-size: 16px; overflow: hidden; text-transform: capitalize;\">Wooden Wardrobe-HWDH-325</h3></a><h4 style=\"margin: 7px 0px 0px; padding: 0px; font-family: inherit; font-weight: 700; line-height: 1.35; color: rgb(51, 51, 51); font-size: 15px;\">৳ 42,180.00</h4></div></div><div class=\"single-new-product\" style=\"margin: 0px 0px 30px; padding: 0px; overflow: hidden;\"><div class=\"product-img\" style=\"margin: 0px; padding: 0px; position: relative; float: left; width: 105.2px;\"><a href=\"https://hatimfurniturebd.com/wooden-kids-double-bed-hbkdh-304-moon-in-cloudy-sky-pink--details\" style=\"margin: 0px; padding: 0px; background-color: transparent; color: rgb(51, 51, 51); transition: 0.4s; position: relative; display: block;\"><img src=\"http://admin.hatimfurniturebd.com/images/product/wooden-kids-double-bed-hbkdh-304-moon-in-cloudy-sky-pink-.jpg\" class=\"first_img\" alt=\"Wooden Kids Double Bed\" style=\"margin: 0px; padding: 0px; border: 0px; max-width: 100%; height: auto; display: block; width: 105.2px; transform-style: preserve-3d;\"><img src=\"http://admin.hatimfurniturebd.com/images/product/wooden-kids-double-bed-hbkdh-304-moon-in-cloudy-sky-pink-.jpg\" class=\"seceond_img\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; max-width: 100%; height: auto; position: absolute; left: 0px; top: 0px; opacity: 0; transition: 0.4s; display: block; width: 105.2px; transform-style: preserve-3d;\"></a><span class=\"new\" style=\"margin: 0px; padding: 4px 8px; background: none 0px 0px repeat scroll rgb(238, 86, 85); color: rgb(255, 255, 255); font-size: 12px; position: absolute; top: 12px; z-index: 111;\">5%</span></div><div class=\"product-content text-center\" style=\"margin: 0px; padding: 0px 0px 0px 12px; text-align: left; float: left; width: 157.8px;\"><a href=\"https://hatimfurniturebd.com/wooden-kids-double-bed-hbkdh-304-moon-in-cloudy-sky-pink--details\" style=\"margin: 0px; padding: 0px; background-color: transparent; color: rgb(51, 51, 51); transition: 0.3s;\"><h3 style=\"margin: 10px 0px; padding: 0px; font-family: inherit; line-height: 24px; color: rgb(51, 51, 51); font-size: 16px; overflow: hidden; text-transform: capitalize;\">Wooden Kids Double Bed-HBKDH-304 (Moon in cloudy sky)(Pink)</h3></a><h4 style=\"margin: 7px 0px 0px; padding: 0px; font-family: inherit; font-weight: 700; line-height: 1.35; color: rgb(51, 51, 51); font-size: 15px;\">৳ 26,315.00</h4></div></div></div></div><div class=\"owl-item\" style=\"margin: 0px; padding: 0px; position: relative; min-height: 1px; float: left; backface-visibility: hidden; -webkit-tap-highlight-color: transparent; user-select: none; width: 263px;\"><div class=\"single-product-items\" style=\"margin: 0px; padding: 0px;\"><div class=\"single-new-product\" style=\"margin: 0px 0px 30px; padding: 0px; overflow: hidden;\"><div class=\"product-img\" style=\"margin: 0px; padding: 0px; position: relative; float: left; width: 105.2px;\"><a href=\"https://hatimfurniturebd.com/wooden-dining-full-set-htdh-308-hcfd-318-1-6--details\" style=\"margin: 0px; padding: 0px; background-color: transparent; color: rgb(51, 51, 51); transition: 0.4s; position: relative; display: block;\"><img src=\"http://admin.hatimfurniturebd.com/images/product/wooden-dining-full-set-htdh-308-hcfd-318-1-6-.jpg\" class=\"first_img\" alt=\"Wooden Dining Full Set\" style=\"margin: 0px; padding: 0px; border: 0px; max-width: 100%; height: auto; display: block; width: 105.2px; transform-style: preserve-3d;\"><img src=\"http://admin.hatimfurniturebd.com/images/product/wooden-dining-full-set-htdh-308-hcfd-318-1-6-.jpg\" class=\"seceond_img\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; max-width: 100%; height: auto; position: absolute; left: 0px; top: 0px; opacity: 0; transition: 0.4s; display: block; width: 105.2px; transform-style: preserve-3d;\"></a><span class=\"new\" style=\"margin: 0px; padding: 4px 8px; background: none 0px 0px repeat scroll rgb(238, 86, 85); color: rgb(255, 255, 255); font-size: 12px; position: absolute; top: 12px; z-index: 111;\">5%</span></div><div class=\"product-content text-center\" style=\"margin: 0px; padding: 0px 0px 0px 12px; text-align: left; float: left; width: 157.8px;\"><a href=\"https://hatimfurniturebd.com/wooden-dining-full-set-htdh-308-hcfd-318-1-6--details\" style=\"margin: 0px; padding: 0px; background-color: transparent; color: rgb(51, 51, 51); transition: 0.3s;\"><h3 style=\"margin: 10px 0px; padding: 0px; font-family: inherit; line-height: 24px; color: rgb(51, 51, 51); font-size: 16px; overflow: hidden; text-transform: capitalize;\">Wooden Dining Full Set-HTDH-308, HCFD-318 (1+6)</h3></a><h4 style=\"margin: 7px 0px 0px; padding: 0px; font-family: inherit; font-weight: 700; line-height: 1.35; color: rgb(51, 51, 51); font-size: 15px;\">৳ 96,805.00</h4></div></div></div></div><div class=\"owl-item cloned\" style=\"margin: 0px; padding: 0px; position: relative; min-height: 1px; float: left; backface-visibility: hidden; -webkit-tap-highlight-color: transparent; user-select: none; width: 263px;\"><div class=\"single-product-items\" style=\"margin: 0px; padding: 0px;\"><div class=\"single-new-product\" style=\"margin: 0px 0px 30px; padding: 0px; overflow: hidden;\"><div class=\"product-img\" style=\"margin: 0px; padding: 0px; position: relative; float: left; width: 105.2px;\"><a href=\"https://hatimfurniturebd.com/wooden-kids-chest-of-drawer-hkcdh-304-moon-in-cloudy-sky-pink--details\" style=\"margin: 0px; padding: 0px; background-color: transparent; color: rgb(51, 51, 51); transition: 0.4s; position: relative; display: block;\"><img src=\"http://admin.hatimfurniturebd.com/images/product/wooden-kids-chest-of-drawer-hkcdh-304-3-drawer-moon-in-cloudy-sky-pink-.jpg\" class=\"first_img\" alt=\"Wooden Kids \" style=\"margin: 0px; padding: 0px; border: 0px; max-width: 100%; height: auto; display: block; width: 105.2px; transform-style: preserve-3d;\"><img src=\"http://admin.hatimfurniturebd.com/images/product/wooden-kids-chest-of-drawer-hkcdh-304-3-drawer-moon-in-cloudy-sky-pink-.jpg\" class=\"seceond_img\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; max-width: 100%; height: auto; position: absolute; left: 0px; top: 0px; opacity: 0; transition: 0.4s; display: block; width: 105.2px; transform-style: preserve-3d;\"></a><span class=\"new\" style=\"margin: 0px; padding: 4px 8px; background: none 0px 0px repeat scroll rgb(238, 86, 85); color: rgb(255, 255, 255); font-size: 12px; position: absolute; top: 12px; z-index: 111;\">5%</span></div><div class=\"product-content text-center\" style=\"margin: 0px; padding: 0px 0px 0px 12px; text-align: left; float: left; width: 157.8px;\"><a href=\"https://hatimfurniturebd.com/wooden-kids-chest-of-drawer-hkcdh-304-moon-in-cloudy-sky-pink--details\" style=\"margin: 0px; padding: 0px; background-color: transparent; color: rgb(51, 51, 51); transition: 0.3s;\"><h3 style=\"margin: 10px 0px; padding: 0px; font-family: inherit; line-height: 24px; color: rgb(51, 51, 51); font-size: 16px; overflow: hidden; text-transform: capitalize;\">Wooden Kids -Chest Of Drawer-HKCDH-304 (Moon in cloudy sky)(Pink)</h3></a><h4 style=\"margin: 7px 0px 0px; padding: 0px; font-family: inherit; font-weight: 700; line-height: 1.35; color: rgb(51, 51, 51); font-size: 15px;\">৳ 21,470.00</h4></div></div><div class=\"single-new-product\" style=\"margin: 0px 0px 30px; padding: 0px; overflow: hidden;\"><div class=\"product-img\" style=\"margin: 0px; padding: 0px; position: relative; float: left; width: 105.2px;\"><a href=\"https://hatimfurniturebd.com/wooden-dressing-table-hdth-326-details\" style=\"margin: 0px; padding: 0px; background-color: transparent; color: rgb(51, 51, 51); transition: 0.4s; position: relative; display: block;\"><img src=\"http://admin.hatimfurniturebd.com/images/product/wooden-dressing-table-hdth-326.jpg\" class=\"first_img\" alt=\"Wooden Dressing Table\" style=\"margin: 0px; padding: 0px; border: 0px; max-width: 100%; height: auto; display: block; width: 105.2px; transform-style: preserve-3d;\"><img src=\"http://admin.hatimfurniturebd.com/images/product/wooden-dressing-table-hdth-326.jpg\" class=\"seceond_img\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; max-width: 100%; height: auto; position: absolute; left: 0px; top: 0px; opacity: 0; transition: 0.4s; display: block; width: 105.2px; transform-style: preserve-3d;\"></a><span class=\"new\" style=\"margin: 0px; padding: 4px 8px; background: none 0px 0px repeat scroll rgb(238, 86, 85); color: rgb(255, 255, 255); font-size: 12px; position: absolute; top: 12px; z-index: 111;\">5%</span></div><div class=\"product-content text-center\" style=\"margin: 0px; padding: 0px 0px 0px 12px; text-align: left; float: left; width: 157.8px;\"><a href=\"https://hatimfurniturebd.com/wooden-dressing-table-hdth-326-details\" style=\"margin: 0px; padding: 0px; background-color: transparent; color: rgb(51, 51, 51); transition: 0.3s;\"><h3 style=\"margin: 10px 0px; padding: 0px; font-family: inherit; line-height: 24px; color: rgb(51, 51, 51); font-size: 16px; overflow: hidden; text-transform: capitalize;\">Wooden Dressing Table-HDTH-326</h3></a><h4 style=\"margin: 7px 0px 0px; padding: 0px; font-family: inherit; font-weight: 700; line-height: 1.35; color: rgb(51, 51, 51); font-size: 15px;\">৳ 27,550.00</h4></div></div></div></div><div class=\"owl-item cloned\" style=\"margin: 0px; padding: 0px; position: relative; min-height: 1px; float: left; backface-visibility: hidden; -webkit-tap-highlight-color: transparent; user-select: none; width: 263px;\"><div class=\"single-product-items\" style=\"margin: 0px; padding: 0px;\"><div class=\"single-new-product\" style=\"margin: 0px 0px 30px; padding: 0px; overflow: hidden;\"><div class=\"product-img\" style=\"margin: 0px; padding: 0px; position: relative; float: left; width: 105.2px;\"><a href=\"https://hatimfurniturebd.com/wooden-cupboard-hcbh-326-3-doors--details\" style=\"margin: 0px; padding: 0px; background-color: transparent; color: rgb(51, 51, 51); transition: 0.4s; position: relative; display: block;\"><img src=\"http://admin.hatimfurniturebd.com/images/product/wooden-cupboard-hcbh-326-3-doors-.jpg\" class=\"first_img\" alt=\"Wooden Cupboard\" style=\"margin: 0px; padding: 0px; border: 0px; max-width: 100%; height: auto; display: block; width: 105.2px; transform-style: preserve-3d;\"><img src=\"http://admin.hatimfurniturebd.com/images/product/wooden-cupboard-hcbh-326-3-doors-.jpg\" class=\"seceond_img\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; max-width: 100%; height: auto; position: absolute; left: 0px; top: 0px; opacity: 0; transition: 0.4s; display: block; width: 105.2px; transform-style: preserve-3d;\"></a><span class=\"new\" style=\"margin: 0px; padding: 4px 8px; background: none 0px 0px repeat scroll rgb(238, 86, 85); color: rgb(255, 255, 255); font-size: 12px; position: absolute; top: 12px; z-index: 111;\">5%</span></div><div class=\"product-content text-center\" style=\"margin: 0px; padding: 0px 0px 0px 12px; text-align: left; float: left; width: 157.8px;\"><a href=\"https://hatimfurniturebd.com/wooden-cupboard-hcbh-326-3-doors--details\" style=\"margin: 0px; padding: 0px; background-color: transparent; color: rgb(51, 51, 51); transition: 0.3s;\"><h3 style=\"margin: 10px 0px; padding: 0px; font-family: inherit; line-height: 24px; color: rgb(51, 51, 51); font-size: 16px; overflow: hidden; text-transform: capitalize;\">Wooden Cupboard-HCBH-326 (3 Doors)</h3></a><h4 style=\"margin: 7px 0px 0px; padding: 0px; font-family: inherit; font-weight: 700; line-height: 1.35; color: rgb(51, 51, 51); font-size: 15px;\">৳ 67,355.00</h4></div></div><div class=\"single-new-product\" style=\"margin: 0px 0px 30px; padding: 0px; overflow: hidden;\"><div class=\"product-img\" style=\"margin: 0px; padding: 0px; position: relative; float: left; width: 105.2px;\"><a href=\"https://hatimfurniturebd.com/wooden-king-bed-hbdh-326-details\" style=\"margin: 0px; padding: 0px; background-color: transparent; color: rgb(51, 51, 51); transition: 0.4s; position: relative; display: block;\"><img src=\"http://admin.hatimfurniturebd.com/images/product/wooden-king-bed-hbdh-326.jpg\" class=\"first_img\" alt=\"Wooden King Bed\" style=\"margin: 0px; padding: 0px; border: 0px; max-width: 100%; height: auto; display: block; width: 105.2px; transform-style: preserve-3d;\"><img src=\"http://admin.hatimfurniturebd.com/images/product/wooden-king-bed-hbdh-326.jpg\" class=\"seceond_img\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; max-width: 100%; height: auto; position: absolute; left: 0px; top: 0px; opacity: 0; transition: 0.4s; display: block; width: 105.2px; transform-style: preserve-3d;\"></a><span class=\"new\" style=\"margin: 0px; padding: 4px 8px; background: none 0px 0px repeat scroll rgb(238, 86, 85); color: rgb(255, 255, 255); font-size: 12px; position: absolute; top: 12px; z-index: 111;\">5%</span></div><div class=\"product-content text-center\" style=\"margin: 0px; padding: 0px 0px 0px 12px; text-align: left; float: left; width: 157.8px;\"><a href=\"https://hatimfurniturebd.com/wooden-king-bed-hbdh-326-details\" style=\"margin: 0px; padding: 0px; background-color: transparent; color: rgb(51, 51, 51); transition: 0.3s;\"><h3 style=\"margin: 10px 0px; padding: 0px; font-family: inherit; line-height: 24px; color: rgb(51, 51, 51); font-size: 16px; overflow: hidden; text-transform: capitalize;\">Wooden King Bed- HBDH-326</h3></a><h4 style=\"margin: 7px 0px 0px; padding: 0px; font-family: inherit; font-weight: 700; line-height: 1.35; color: rgb(51, 51, 51); font-size: 15px;\">৳ 48,735.00</h4></div></div></div></div></div></div><div class=\"owl-controls\" style=\"margin: 0px; padding: 0px;\"><div class=\"owl-nav\" style=\"margin: 0px; padding: 0px;\"><div class=\"owl-prev\" style=\"margin: 0px; padding: 0px; cursor: pointer; user-select: none; display: inline-block; font-size: 18px; height: 30px; line-height: 24px; position: absolute; right: 0px; text-align: center; top: -59px; width: 30px;\"><span class=\"fa fa-angle-right\" style=\"margin: 0px; padding: 0px; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-stretch: normal; line-height: 1; font-family: FontAwesome; font-size: inherit; text-rendering: auto; -webkit-font-smoothing: antialiased;\"></span></div><div class=\"owl-next\" style=\"margin: 0px; padding: 0px; cursor: pointer; user-select: none; display: inline-block; font-size: 18px; height: 30px; line-height: 24px; position: absolute; right: 33px; text-align: center; top: -59px; width: 30px; left: auto;\"><span class=\"fa fa-angle-left\" style=\"margin: 0px; padding: 0px; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-stretch: normal; line-height: 1; font-family: FontAwesome; font-size: inherit; text-rendering: auto; -webkit-font-smoothing: antialiased;\"></span></div></div><div class=\"owl-dots\" style=\"margin: 0px; padding: 0px;\"><div class=\"owl-dot active\" style=\"margin: 0px; padding: 0px; opacity: 1; cursor: pointer; user-select: none;\"><span style=\"margin: 0px; padding: 0px;\"></span></div><div class=\"owl-dot\" style=\"margin: 0px; padding: 0px; cursor: pointer; user-select: none;\"><span style=\"margin: 0px; padding: 0px;\"></span></div><div class=\"owl-dot\" style=\"margin: 0px; padding: 0px; cursor: pointer; user-select: none;\"><span style=\"margin: 0px; padding: 0px;\"></span></div><div class=\"owl-dot\" style=\"margin: 0px; padding: 0px; cursor: pointer; user-select: none;\"><span style=\"margin: 0px; padding: 0px;\"></span></div></div></div></div></div></div></div></div></div><section class=\"dimensions-details\" style=\"margin: 0px; padding: 0px; border-bottom: 2px solid rgb(237, 237, 237); color: rgb(102, 102, 102); font-family: Lato, sans-serif; letter-spacing: normal;\"><div class=\"NOTE1 NOTE2\" style=\"margin: 0px; padding: 0px;\"><div class=\"NOTE\" style=\"margin: 0px; padding: 0px;\"><label style=\"margin: 0px 22.8px 5px 0px; padding: 0px 5px 0px 0px; max-width: 100%; width: auto; vertical-align: top; font-family: robotoregular; overflow: hidden; text-wrap-mode: nowrap; text-overflow: ellipsis;\">NOTE</label>&nbsp;<div id=\"para\" style=\"margin: 0px 0px 15px; padding: 0px; display: inline-block; width: auto; vertical-align: top;\">The&nbsp;</div></div></div></section>', 'upload/product-image/poster-07.png', 'asfd', 'ewfrsgewraf', 0, 0, 0, '2025-01-19 06:15:06', '2025-02-02 10:55:22'),
(2, 2, 2, 3, 3, 'Women Huddy', 'M100', 100, 90, 122, 1, 'Shari', '<p>Shari is the beautiful dress&nbsp; by cover&nbsp;<span style=\"letter-spacing: 0.15px; color: var(--bs-card-color); background-color: var(--bs-card-bg); font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Shari is the beatutifull dress&nbsp; by cover&nbsp;</span><span style=\"letter-spacing: 0.15px; color: var(--bs-card-color); background-color: var(--bs-card-bg); font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Shari is the beatutifull dress&nbsp; by cover&nbsp;</span><span style=\"letter-spacing: 0.15px; color: var(--bs-card-color); background-color: var(--bs-card-bg); font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Shari is the beatutifull dress&nbsp; by cover&nbsp;</span><span style=\"letter-spacing: 0.15px; color: var(--bs-card-color); background-color: var(--bs-card-bg); font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Shari is the beatutifull dress&nbsp; by cover&nbsp;</span><span style=\"letter-spacing: 0.15px; color: var(--bs-card-color); background-color: var(--bs-card-bg); font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Shari is the beatutifull dress&nbsp; by cover&nbsp;</span><span style=\"letter-spacing: 0.15px; color: var(--bs-card-color); background-color: var(--bs-card-bg); font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Shari is the beatutifull dress&nbsp; by cover&nbsp;</span><span style=\"letter-spacing: 0.15px; color: var(--bs-card-color); background-color: var(--bs-card-bg); font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Shari is the beatutifull dress&nbsp; by cover&nbsp;</span><span style=\"letter-spacing: 0.15px; color: var(--bs-card-color); background-color: var(--bs-card-bg); font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Shari is the beatutifull dress&nbsp; by cover&nbsp;</span><span style=\"letter-spacing: 0.15px; color: var(--bs-card-color); background-color: var(--bs-card-bg); font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Shari is the beatutifull dress&nbsp; by cover&nbsp;</span><span style=\"letter-spacing: 0.15px; color: var(--bs-card-color); background-color: var(--bs-card-bg); font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Shari is the beatutifull dress&nbsp; by cover&nbsp;</span><span style=\"letter-spacing: 0.15px; color: var(--bs-card-color); background-color: var(--bs-card-bg); font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Shari is the beatutifull dress&nbsp; by cover&nbsp;</span><span style=\"letter-spacing: 0.15px; color: var(--bs-card-color); background-color: var(--bs-card-bg); font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Shari is the beatutifull dress&nbsp; by cover&nbsp;</span><span style=\"letter-spacing: 0.15px; color: var(--bs-card-color); background-color: var(--bs-card-bg); font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Shari is the beatutifull dress&nbsp; by cover&nbsp;</span></p>', 'upload/product-image/product-18.png', 'Shari is t  by cover', 'Shari is the dress  by cover', 0, 0, 0, '2025-01-19 06:17:20', '2025-02-01 15:23:58');
INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `brand_id`, `unit_id`, `name`, `code`, `product_price`, `selling_price`, `stock`, `status`, `short_description`, `long_description`, `image`, `meta_title`, `meta_description`, `hit_count`, `sales_count`, `feature_status`, `created_at`, `updated_at`) VALUES
(3, 3, 3, 2, 2, 'Keyboard', 'mobile12', 1222, 1000, 130, 1, 'Key Features\r\nModel: T15\r\nKeyboard Keys: 104\r\nCable Length: 130cm\r\nkeyboard interface: USB\r\nPlug and Play\r\nView More Info\r\nPayment Option', '<section class=\"specification-tab m-tb-10\" id=\"specification\" style=\"margin: 0px 0px 20px; padding: 20px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border-radius: 4px; box-shadow: rgba(0, 0, 0, 0.1) 0px 1px 1px; color: rgb(0, 0, 0); font-family: &quot;Trebuchet MS&quot;, sans-serif; letter-spacing: normal;\"><div class=\"section-head\" style=\"margin: 0px; padding: 0px 0px 20px;\"><h2 style=\"margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-weight: bold; font-size: 20px; line-height: 26px;\">pecification</h2></div><table class=\"data-table flex-table\" cellpadding=\"0\" cellspacing=\"0\" style=\"margin: -20px 0px 0px; padding: 0px; display: flex; flex-direction: column; width: 920px;\"><colgroup style=\"margin: 0px; padding: 0px;\"><col class=\"name\" style=\"margin: 0px; padding: 0px;\"><col class=\"value\" style=\"margin: 0px; padding: 0px;\"></colgroup><thead style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px; display: flex;\"><td class=\"heading-row\" colspan=\"3\" style=\"margin: 20px 0px 0px; padding: 6px 20px; flex: 1 1 auto; display: flex; background: var(--s-s-bg); color: var(--s-secondary); font-size: 16px; line-height: 30px; font-weight: bold; border-radius: 5px;\">Main Features</td></tr></thead><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom-width: 1px; border-bottom-color: rgb(236, 237, 239); color: rgb(102, 102, 102);\">Wired/Wireless</td><td class=\"value\" style=\"margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom-width: 1px; border-bottom-color: rgb(236, 237, 239);\">Wired</td></tr><tr style=\"margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom-width: 1px; border-bottom-color: rgb(236, 237, 239); color: rgb(102, 102, 102);\">Keys</td><td class=\"value\" style=\"margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom-width: 1px; border-bottom-color: rgb(236, 237, 239);\">104</td></tr><tr style=\"margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom-width: 1px; border-bottom-color: rgb(236, 237, 239); color: rgb(102, 102, 102);\">Cable Length</td><td class=\"value\" style=\"margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom-width: 1px; border-bottom-color: rgb(236, 237, 239);\">130cm</td></tr><tr style=\"margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom-width: 1px; border-bottom-color: rgb(236, 237, 239); color: rgb(102, 102, 102);\">Interface</td><td class=\"value\" style=\"margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom-width: 1px; border-bottom-color: rgb(236, 237, 239);\">USB</td></tr></tbody><thead style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px; display: flex;\"><td class=\"heading-row\" colspan=\"3\" style=\"margin: 20px 0px 0px; padding: 6px 20px; flex: 1 1 auto; display: flex; background: var(--s-s-bg); color: var(--s-secondary); font-size: 16px; line-height: 30px; font-weight: bold; border-radius: 5px;\">Physical Attribute</td></tr></thead><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom-width: 1px; border-bottom-color: rgb(236, 237, 239); color: rgb(102, 102, 102);\">Color</td><td class=\"value\" style=\"margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom-width: 1px; border-bottom-color: rgb(236, 237, 239);\">Black</td></tr><tr style=\"margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom-width: 1px; border-bottom-color: rgb(236, 237, 239); color: rgb(102, 102, 102);\">Dimensions</td><td class=\"value\" style=\"margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom-width: 1px; border-bottom-color: rgb(236, 237, 239);\">445 x 145 x 20mm</td></tr><tr style=\"margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom-width: 1px; border-bottom-color: rgb(236, 237, 239); color: rgb(102, 102, 102);\">Weight</td><td class=\"value\" style=\"margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom-width: 1px; border-bottom-color: rgb(236, 237, 239);\">410g</td></tr></tbody><thead style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px; display: flex;\"><td class=\"heading-row\" colspan=\"3\" style=\"margin: 20px 0px 0px; padding: 6px 20px; flex: 1 1 auto; display: flex; background: var(--s-s-bg); color: var(--s-secondary); font-size: 16px; line-height: 30px; font-weight: bold; border-radius: 5px;\">Warranty Information</td></tr></thead><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom-width: 1px; border-bottom-color: rgb(236, 237, 239); color: rgb(102, 102, 102);\">Warranty</td><td class=\"value\" style=\"margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom-width: 1px; border-bottom-color: rgb(236, 237, 239);\">1 Year</td></tr></tbody></table></section><section class=\"description bg-white m-tb-15\" id=\"description\" style=\"margin: 0px 0px 20px; padding: 20px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border-radius: 4px; box-shadow: rgba(0, 0, 0, 0.1) 0px 1px 1px; color: rgb(0, 0, 0); font-family: &quot;Trebuchet MS&quot;, sans-serif; letter-spacing: normal;\"><div class=\"section-head\" style=\"margin: 0px; padding: 0px 0px 20px;\"><h2 style=\"margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-weight: bold; font-size: 20px; line-height: 26px;\">Description</h2></div><div class=\"full-description\" itemprop=\"description\" style=\"margin: 0px; padding: 0px; line-height: 24px;\"><h2 style=\"margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-weight: bold; font-size: 20px; line-height: 26px;\">T-WOLF T15 104 Keys USB Wired Keyboard</h2><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; color: rgb(1, 19, 45); line-height: 26px;\">The T-WOLF&nbsp;<strong style=\"margin: 0px; padding: 0px;\">T15</strong>&nbsp;104 Keys USB Wired&nbsp;<a href=\"https://www.startech.com.bd/accessories/keyboards\" target=\"\" style=\"margin: 0px; padding: 0px; text-decoration-line: underline; background-color: transparent; color: rgb(0, 0, 0);\">Keyboard&nbsp;</a>is an excellent option for both gamers and those looking for a dependable keyboard for regular usage. This keyboard has a 130cm USB cable, which ensures a robust and durable wired connection for uninterrupted performance. It has 104 keys that have been constructed in accordance with international standards, providing a solid construction with high radiation resistance, increasing its endurance and longevity. The T-WOLF T15 is ideal for gaming and entertainment, offering the responsiveness and dependability required for extended gaming sessions. Its plug-and-play feature assures complete interoperability with a broad range of devices, making setup simple and painless without the need for extra software or drivers. Ergonomically constructed, the T-WOLF T15 delivers a comfortable typing experience while decreasing strain over long periods of use. The keys are designed for easy tapping and agile action, resulting in rapid and precise keystrokes. This design makes it suitable not just for gaming but also for lengthy typing jobs, ensuring both comfort and efficiency. In addition to its technological advantages, the T-WOLF T15 keyboard is intended to last, with a durable design that can handle heavy use. Whether you\'re engaging in strenuous gaming sessions or doing ordinary computer activities, this keyboard provides dependable performance and outstanding comfort, making it an invaluable complement to any setup.</p><h2 style=\"margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-weight: bold; font-size: 20px; line-height: 26px;\">Buy T-WOLF T15 104 Keys USB Wired Keyboard from Star Tech</h2><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; color: rgb(1, 19, 45); line-height: 26px;\">In Bangladesh, you can get original&nbsp;<strong style=\"margin: 0px; padding: 0px;\">T-WOLF T15 104 Keys USB Wired Keyboard</strong>&nbsp;From Star Tech. We have a large collection of latest&nbsp;<a href=\"https://www.startech.com.bd/t-wolf-keyboard\" target=\"\" style=\"margin: 0px; padding: 0px; text-decoration-line: underline; background-color: transparent; color: var(--s-primary-dark);\">T-WOLF Keyboard</a>&nbsp;to purchase. Order Online Or Visit your Nearest&nbsp;<a href=\"https://www.startech.com.bd/\" target=\"\" style=\"margin: 0px; padding: 0px; text-decoration-line: underline; background-color: transparent; color: var(--s-primary-dark);\">Star Tech Shop</a>&nbsp;to get yours at lowest price. The T-WOLF T15 104 Keys USB Wired Keyboard comes with 1-year warranty.</p></div></section><section class=\"latest-price bg-white m-tb-15\" id=\"latest-price\" style=\"margin: 0px 0px 20px; padding: 20px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border-radius: 4px; box-shadow: rgba(0, 0, 0, 0.1) 0px 1px 1px; color: rgb(0, 0, 0); font-family: &quot;Trebuchet MS&quot;, sans-serif; letter-spacing: normal;\"><div class=\"section-head\" style=\"margin: 0px; padding: 0px 0px 20px;\"><h2 style=\"margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-weight: bold; font-size: 20px; line-height: 26px;\">What is the price of T-WOLF T15 104 Keys USB Wired Keyboard in Bangladesh?</h2></div><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; color: rgb(1, 19, 45); line-height: 26px;\">The latest price of T-WOLF T15 104 Keys USB Wired Keyboard in Bangladesh is 450৳. You can buy the T-WOLF T15 104 Keys USB Wired Keyboard at best price from our website or visit any of our showrooms.</p></section><section class=\"ask-question q-n-r-section bg-white m-tb-15\" id=\"ask-question\" style=\"margin: 0px 0px 20px; padding: 20px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border-radius: 4px; box-shadow: rgba(0, 0, 0, 0.1) 0px 1px 1px; color: rgb(0, 0, 0); font-family: &quot;Trebuchet MS&quot;, sans-serif; letter-spacing: normal;\"><div class=\"section-head\" style=\"margin: 0px; padding: 0px 0px 20px; display: flex; border-bottom: 1px solid rgb(238, 238, 238);\"><div class=\"title-n-action\" style=\"margin: 0px; padding: 0px; flex: 1 1 auto;\"><h2 style=\"margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-weight: bold; font-size: 20px; line-height: 26px;\">Questions (0)</h2></div></div></section>', 'upload/product-image/product-02.png', 'lorem ipusm is the', 'meta desccription', 0, 0, 0, '2025-01-19 06:18:49', '2025-02-02 11:09:32'),
(4, 4, 1, 2, 2, 'Apple', 'appl1', 400, 350, 10, 1, 'Khasmiri Apple', '<p>Long Description&nbsp; the quick brown fox jumps over the jumps over the l laz</p>', 'upload/product-image/ap1.jpg', 'meta title', 'meta  description', 0, 0, 0, '2025-01-19 06:22:19', '2025-06-18 05:49:29'),
(6, 1, 3, 2, 2, 'Man Shirt', 'uuuu', 130, 100, 8, 1, 'Man Blazer', '<p>Man Blazer&nbsp; stylish&nbsp;<span style=\"letter-spacing: 0.15px; color: var(--bs-card-color); background-color: var(--bs-card-bg); font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Man Blazer&nbsp; stylish</span><span style=\"letter-spacing: 0.15px; color: var(--bs-card-color); background-color: var(--bs-card-bg); font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Man Blazer&nbsp; stylish</span><span style=\"letter-spacing: 0.15px; color: var(--bs-card-color); background-color: var(--bs-card-bg); font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Man Blazer&nbsp; stylish</span><span style=\"letter-spacing: 0.15px; color: var(--bs-card-color); background-color: var(--bs-card-bg); font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Man Blazer&nbsp; stylish</span><span style=\"letter-spacing: 0.15px; color: var(--bs-card-color); background-color: var(--bs-card-bg); font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Man Blazer&nbsp; stylish</span><span style=\"letter-spacing: 0.15px; color: var(--bs-card-color); background-color: var(--bs-card-bg); font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Man Blazer&nbsp; stylish</span><span style=\"letter-spacing: 0.15px; color: var(--bs-card-color); background-color: var(--bs-card-bg); font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Man Blazer&nbsp; stylish</span><span style=\"letter-spacing: 0.15px; color: var(--bs-card-color); background-color: var(--bs-card-bg); font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Man Blazer&nbsp; stylish</span><span style=\"letter-spacing: 0.15px; color: var(--bs-card-color); background-color: var(--bs-card-bg); font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Man Blazer&nbsp; stylish</span><span style=\"letter-spacing: 0.15px; color: var(--bs-card-color); background-color: var(--bs-card-bg); font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Man Blazer&nbsp; stylish</span><span style=\"letter-spacing: 0.15px; color: var(--bs-card-color); background-color: var(--bs-card-bg); font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Man Blazer&nbsp; stylish</span><span style=\"letter-spacing: 0.15px; color: var(--bs-card-color); background-color: var(--bs-card-bg); font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Man Blazer&nbsp; stylish</span></p>', 'upload/product-image/product-4.png', 'Man Blazer  stylish', 'Man Blazer  stylish', 0, 0, 0, '2025-01-19 08:30:58', '2025-01-30 12:16:54'),
(7, 2, 6, 1, 2, 'Women Blazer', 'b100', 10000, 78900, 11, 1, 'lorem  sort description', '<p>Long Sort description</p>', 'upload/product-image/product-35.png', 'meta title', 'meta desccription', 0, 0, 0, '2025-01-19 09:35:47', '2025-01-30 12:17:48'),
(8, 5, 1, 1, 1, 'Smart Blazzer', 'b33', 12, 12, 22, 1, '2222', '<p>2222222</p>', 'upload/product-image/product-16.png', '2222', '22222222222222', 0, 0, 0, '2025-01-19 11:20:06', '2025-01-30 11:55:40'),
(11, 1, 6, 2, 2, 'Hoody', 'bl12', 1200, 1199, 19, 1, 'Blazer   Handsome people', '<p>Blazer&nbsp; &nbsp;Handsome peopleBlazer&nbsp; &nbsp;Handsome peopleBlazer&nbsp; &nbsp;Handsome peopleBlazer&nbsp; &nbsp;Handsome peopleBlazer&nbsp; &nbsp;Handsome peopleBlazer&nbsp; &nbsp;Handsome peopleBlazer&nbsp; &nbsp;Handsome peopleBlazer&nbsp; &nbsp;Handsome people</p>', 'upload/product-image/product-16.png', 'Blazer   Handsome people', 'Blazer   Handsome people', 0, 0, 0, '2025-01-28 14:23:33', '2025-02-01 12:45:23'),
(12, 1, 8, 1, 1, 'T shirt', 'Mfp', 899, 800, 13, 1, 'Pant for Man', '<p>Pant for&nbsp; <b>Man. Only for Man</b></p>', 'upload/product-image/product-21.png', 'man pnat', 'man pant', 0, 0, 0, '2025-01-28 14:25:09', '2025-01-30 12:23:19'),
(13, 2, 2, 2, 2, 'Women tshirt', 'wm3', 1203, 300, 200, 1, 'women tsirt', '<p>Women tshirt&nbsp;&nbsp;<span style=\"letter-spacing: 0.15px; color: var(--bs-card-color); background-color: var(--bs-card-bg); font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Women tshirt&nbsp;</span><span style=\"letter-spacing: 0.15px; color: var(--bs-card-color); background-color: var(--bs-card-bg); font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Women tshirt&nbsp;</span><span style=\"letter-spacing: 0.15px; color: var(--bs-card-color); background-color: var(--bs-card-bg); font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Women tshirt&nbsp;</span><span style=\"letter-spacing: 0.15px; color: var(--bs-card-color); background-color: var(--bs-card-bg); font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Women tshirt&nbsp;</span><span style=\"letter-spacing: 0.15px; color: var(--bs-card-color); background-color: var(--bs-card-bg); font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Women tshirt&nbsp;</span><span style=\"letter-spacing: 0.15px; color: var(--bs-card-color); background-color: var(--bs-card-bg); font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Women tshirt&nbsp;</span><span style=\"letter-spacing: 0.15px; color: var(--bs-card-color); background-color: var(--bs-card-bg); font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Women tshirt&nbsp;</span><span style=\"letter-spacing: 0.15px; color: var(--bs-card-color); background-color: var(--bs-card-bg); font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Women tshirt&nbsp;</span><span style=\"letter-spacing: 0.15px; color: var(--bs-card-color); background-color: var(--bs-card-bg); font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Women tshi</span><span style=\"letter-spacing: 0.15px; color: var(--bs-card-color); background-color: var(--bs-card-bg); font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Women tshirt&nbsp;</span><span style=\"letter-spacing: 0.15px; color: var(--bs-card-color); background-color: var(--bs-card-bg); font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Women tshirt&nbsp;</span><span style=\"letter-spacing: 0.15px; color: var(--bs-card-color); background-color: var(--bs-card-bg); font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Women tshirt&nbsp;</span><span style=\"color: var(--bs-card-color); font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); letter-spacing: 0.15px; text-align: var(--bs-body-text-align); background-color: var(--bs-card-bg);\">rt&nbsp;</span><span style=\"color: var(--bs-card-color); font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); letter-spacing: 0.15px; text-align: var(--bs-body-text-align); background-color: var(--bs-card-bg);\">Women tshirt&nbsp;</span><span style=\"color: var(--bs-card-color); font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); letter-spacing: 0.15px; text-align: var(--bs-body-text-align); background-color: var(--bs-card-bg);\">Women tshirt&nbsp;</span><span style=\"color: var(--bs-card-color); font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); letter-spacing: 0.15px; text-align: var(--bs-body-text-align); background-color: var(--bs-card-bg);\">Women tshirt&nbsp;</span><span style=\"color: var(--bs-card-color); font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); letter-spacing: 0.15px; text-align: var(--bs-body-text-align); background-color: var(--bs-card-bg);\">Women tshirt&nbsp;</span><span style=\"color: var(--bs-card-color); font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); letter-spacing: 0.15px; text-align: var(--bs-body-text-align); background-color: var(--bs-card-bg);\">Women tshirt&nbsp;</span><span style=\"color: var(--bs-card-color); font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); letter-spacing: 0.15px; text-align: var(--bs-body-text-align); background-color: var(--bs-card-bg);\">Women tshirt&nbsp;</span></p>', 'upload/product-image/2-1.jpg', 'Women tshirt', 'Women tshirt Women tshirt Women tshirt Women tshirt', 0, 0, 0, '2025-01-28 14:31:32', '2025-01-28 14:39:01'),
(14, 6, 9, 2, 3, 'Chair', 'e43', 1333, 1200, 10, 1, 'Chair', '<p>Chair Chair Chair</p>', 'upload/product-image/product-13.png', 'Chair Chai rChair Chair', 'Chair Chair', 0, 0, 0, '2025-01-30 12:04:28', '2025-01-30 12:04:28'),
(15, 3, 3, 1, 1, 'HD camera', 'c1', 30000, 280000, 10, 1, 'HD Camera', '<table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"CategoryDiscription\" style=\"border-spacing: 0px; color: rgb(34, 34, 34); font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 14px; letter-spacing: normal;\"><tbody><tr><td style=\"padding: 0px;\"><table width=\"100%\" border=\"0\" cellspacing=\"10\" cellpadding=\"10\" style=\"border-spacing: 0px; background-color: transparent;\"><tbody><tr><td style=\"padding: 0px;\"><h1 style=\"font-size: 24px; margin: 20px 0px 10px; font-family: inherit; font-weight: bold; line-height: 1.1; color: rgb(0, 0, 0);\">080p HD Security Cameras, 1080p AHD CCTV Cameras</h1><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-size: 16px; line-height: 1.4;\"><img src=\"https://www.cctvcamerapros.com/v/images/HD-Security-Cameras/1080p-HD-Security-Cameras.jpg\" alt=\"1080p HD Security Cameras\" style=\"border: none !important;\"></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-size: 16px; line-height: 1.4;\">This page contains the 1080p HD security cameras (AHD CCTV type) that CCTV Camera Pros sells. AHD stands for analog high definition. These cameras are named that way because they can use the same RG59 coax cable that traditional analog CCTV cameras use, however, the resolution is full 1080p (1920 x 1080) instead of 704 x 480 (analog D1 CCTV resolution). This makes them a great choice for customers that want to upgrade their existing CCTV system from standard to high definition, especially when using an&nbsp;<a href=\"https://www.cctvcamerapros.com/Security-Camera-DVRs-s/1467.htm\" style=\"background: transparent; color: rgb(27, 96, 182);\">Viewtron hybrid DVR that works with SD and HD CCTV cameras</a>. Because our iDVR-PRO DVRs can also record full 1080p resolution in real time on all channels, they are also a great choice for use with all HD cameras.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-size: 16px; line-height: 1.4;\">If you are unfamiliar with the difference between AHD and traditional analog CCTV camera resolution, you can&nbsp;<a href=\"https://videos.cctvcamerapros.com/surveillance-systems/what-is-ahd-cctv.html\" style=\"background: transparent; color: rgb(27, 96, 182);\">learn more about AHD vs CCTV here</a>. We also have a&nbsp;<a href=\"https://www.cctvcamerapros.com/1080p-HD-Security-Cameras-s/986.htm#1080p-cctv-video-comparison\" style=\"background: transparent; color: rgb(27, 96, 182);\">1080p vs CCTV resolution video</a>&nbsp;here and&nbsp;<a href=\"https://www.cctvcamerapros.com/1080p-HD-Security-Cameras-s/986.htm#videos\" style=\"background: transparent; color: rgb(27, 96, 182);\">demo surveillance videos</a>&nbsp;using the cameras on this page here.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-size: 16px; line-height: 1.4;\">If you are using an AHD DVR that only supports 720p resolution, also have&nbsp;<a href=\"https://www.cctvcamerapros.com/720p-HD-Security-Cameras-s/985.htm\" style=\"background: transparent; color: rgb(27, 96, 182);\">720p AHD cameras</a>&nbsp;here.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-size: 16px; line-height: 1.4;\"><b>Need help selecting a camera?</b>&nbsp;Please feel free to&nbsp;<a href=\"https://www.cctvcamerapros.com/Contact-Us-s/1084.htm\" style=\"background: transparent; color: rgb(27, 96, 182);\">contact us</a>&nbsp;with any questions that you may have regarding the cameras on this page.</p><hr id=\"horizontalrule\" style=\"box-sizing: content-box; height: 0px; margin-top: 20px; margin-bottom: 20px; border-top: 1px solid rgb(238, 238, 238);\"></td></tr></tbody></table></td></tr></tbody></table><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"4\" style=\"border-spacing: 0px; background-color: transparent;\"><tbody><tr><td style=\"padding: 0px;\"><table cellpadding=\"3\" cellspacing=\"0\" width=\"100%\" style=\"border-spacing: 0px; background-color: transparent;\"><tbody><tr><td valign=\"bottom\" rowspan=\"2\" style=\"padding: 5px 0px 0px; vertical-align: top;\"><table width=\"250\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"border-spacing: 0px; background-color: transparent;\"><tbody><tr><td width=\"2\" valign=\"middle\" style=\"padding: 0px;\"><img src=\"https://www.cctvcamerapros.com/v/vspfiles/templates/cctvcam-resp/images/clear1x1.gif\" width=\"2\" height=\"1\" align=\"absmiddle\" alt=\"\" style=\"border: none !important;\"></td><td width=\"180\" valign=\"middle\" style=\"padding: 0px;\"><nobr><div id=\"jmenuhide\"><b>Sort By:</b>&nbsp;<select class=\"sortby_select\" title=\"Sort By:\" id=\"SortBy\" style=\"color: rgb(85, 85, 85); font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 14px; line-height: 1.42857; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; margin-top: 3px; margin-bottom: 3px; min-width: 50px; height: auto; padding: 5px 12px; min-height: 25px; background-color: rgb(255, 255, 255); background-image: none; border-color: rgb(204, 204, 204); box-shadow: rgba(0, 0, 0, 0.075) 0px 1px 1px inset; transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;\">&nbsp;							&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<option value=\"1\">Price: Low to High</option>&nbsp;							<option value=\"2\">Price: High to Low</option>&nbsp;							<option value=\"5\" selected=\"selected\">Most Popular</option>&nbsp;							<option value=\"7\">Title</option>&nbsp;							<option value=\"9\">Manufacturer</option>&nbsp;							<option value=\"3\">Newest</option>&nbsp;							<option value=\"4\">Oldest</option>&nbsp;							<option value=\"11\">Availability</option>&nbsp;						</select></div></nobr></td><td width=\"3\" valign=\"middle\" style=\"padding: 0px;\"><img src=\"https://www.cctvcamerapros.com/v/vspfiles/templates/cctvcam-resp/images/clear1x1.gif\" width=\"3\" height=\"1\" align=\"absmiddle\" alt=\"\" style=\"border: none !important;\"></td><td width=\"65\" valign=\"middle\" style=\"padding: 0px;\"><span class=\"btn  btn-default btn-xs btn_go_gray\" style=\"display: inline-block; margin-bottom: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-weight: bold; font-stretch: normal; font-size: 10px; line-height: 1.3; font-family: Montserrat, sans-serif; background-image: linear-gradient(rgb(250, 250, 250) 0%, rgb(225, 225, 225) 100%); border: 1px solid rgb(225, 225, 225); text-wrap-mode: nowrap; padding: 1px 5px; border-radius: 3px; color: rgb(29, 104, 187); background-color: rgb(250, 250, 250); text-transform: uppercase; background-size: 100%; -webkit-font-smoothing: antialiased;\">Go</span></td></tr></tbody></table></td><td align=\"right\" style=\"padding: 0px;\"><select class=\"results_per_page_select\" title=\"{0} per page\" style=\"color: rgb(85, 85, 85); font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 14px; line-height: 1.42857; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; margin-top: 3px; margin-bottom: 3px; min-width: 50px; height: auto; padding: 5px 12px; min-height: 25px; background-color: rgb(255, 255, 255); background-image: none; border-color: rgb(204, 204, 204); box-shadow: rgba(0, 0, 0, 0.075) 0px 1px 1px inset; transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;\">&nbsp;					 					<option selected=\"selected\" value=\"150\">150 per page</option>&nbsp;					 					 					<option value=\"300\">300 per page</option>&nbsp;					 					 					</select>&nbsp;<nobr><font size=\"2\" style=\"font-family: inherit;\"><b>Page&nbsp;<input type=\"text\" value=\"1\" size=\"3\" maxlength=\"4\" title=\"Go to page\" style=\"color: rgb(85, 85, 85); font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 14px; line-height: 1.42857; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; margin-top: 3px; margin-bottom: 3px; outline: none; min-width: 50px; height: auto; padding: 5px 12px; min-height: 25px; background-color: rgb(255, 255, 255); background-image: none; border-radius: 0px; border-width: 1px; border-style: solid; border-color: rgb(204, 204, 204); box-shadow: rgba(0, 0, 0, 0.075) 0px 1px 1px inset; transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;\">&nbsp;of 1</b></font></nobr></td></tr><tr><td align=\"right\" style=\"padding: 0px;\"></td></tr></tbody></table><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"border-spacing: 0px; background-color: transparent;\"><tbody><tr><td background=\"https://www.cctvcamerapros.com/v/vspfiles/templates/cctvcam-resp/images/Divider_Horizontal.gif\" style=\"padding: 0px;\"><img src=\"https://www.cctvcamerapros.com/v/vspfiles/templates/cctvcam-resp/images/clear1x1.gif\" width=\"5\" height=\"5\" alt=\"\" style=\"border: none !important;\"></td></tr></tbody></table></td></tr></tbody></table><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"8\" style=\"border-spacing: 0px; background-color: transparent;\"><tbody><tr><td style=\"padding: 0px;\"><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"v65-productDisplay\" style=\"border-spacing: 0px; background-color: transparent; table-layout: fixed;\"><tbody><tr><td style=\"padding: 0px;\"><div class=\"v-product-grid three-col\" style=\"position: relative;\"><div class=\"v-product\" style=\"margin-left: -4px; display: inline-block; vertical-align: top; width: 249.988px; padding: 15px; border-top: 1px solid rgb(238, 238, 238);\"><a href=\"https://www.cctvcamerapros.com/1080p-HD-CCTV-Camera-p/hd-q7.htm\" title=\"1080p HD CCTV Camera\" alt=\"1080p HD CCTV Camera\" class=\"v-product__img\" style=\"background: transparent; color: rgb(27, 96, 182);\"><img src=\"https://cdn4.volusion.store/not95-tcan2/v/vspfiles/photos/HD-Q7-1.jpg?v-cache=1699398115\" border=\"0\" alt=\"1080p HD CCTV Camera\" title=\"1080p HD CCTV Camera\" style=\"border-width: 1px; border-style: solid; border-color: rgb(102, 102, 102); max-width: 100%; margin: 0px auto 15px; display: block; border-image: initial !important; height: auto !important; width: 200px !important;\"></a><a href=\"https://www.cctvcamerapros.com/1080p-HD-CCTV-Camera-p/hd-q7.htm\" class=\"v-product__title productnamecolor colors_productname\" title=\"1080p HD CCTV Camera, HD-TVI, AHD, CVI, Analog Infrared Weatherproof, HD-Q7\" style=\"background: transparent; color: rgb(27, 96, 182); display: block; overflow-wrap: break-word; font-weight: bold; line-height: 1.3;\">1080p HD CCTV Camera, HD-TVI, AHD, CVI, Analog Infrared Weatherproof</a><p class=\"text v-product__desc\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-size: 16px; line-height: 1.4;\">The&nbsp;<b>HD-Q7</b>&nbsp;<a href=\"http://www.cctvcamerapros.com/1080p-HD-CCTV-Camera-p/hd-q7.htm\" style=\"background: transparent; color: rgb(27, 96, 182);\">HD CCTV Camera</a>&nbsp;features:<br></p><ul style=\"margin-bottom: 10px;\"><li><b>Video Format:</b>&nbsp;4 Selectable Modes</li><li><b>HD Formats:</b>&nbsp;AHD, HD-TVI, HD-CVI</li><li><b>Analog Format:</b>&nbsp;CVBS&nbsp;</li></ul></div></div></td></tr></tbody></table></td></tr></tbody></table>', 'upload/product-image/product-03.png', NULL, NULL, 0, 0, 0, '2025-01-30 12:11:50', '2025-02-02 11:01:09'),
(16, 3, 3, 1, 1, 'Speaker', 'sp', 600, 400, 12, 1, 'Speaker', '<p>Speaker&nbsp;Speaker&nbsp;Speaker&nbsp;Speaker&nbsp;Speaker Speaker Speaker</p>', 'upload/product-image/product-04.png', 'Speaker', 'Speaker Speaker', 0, 0, 0, '2025-01-30 12:15:19', '2025-01-30 12:15:19'),
(17, 6, 10, 2, 3, 'Foreign Table', 't56', 3000, 2000, 12, 1, 'Foreign table Foreign table', '<p>Foreign table Foreign table&nbsp;Foreign table Foreign table Foreign table Foreign table Foreign table Foreign table</p>', 'upload/product-image/product-2.png', 'Foreign table Foreign table Foreign table Foreign table', 'Foreign table Foreign table', 0, 0, 0, '2025-02-01 13:45:08', '2025-02-01 13:45:08'),
(18, 6, 11, 1, 4, 'Dexc Tool', 'w3', 1200, 1000, 10, 1, 'Dexc Tool', '<p>Dexc ToolDexc ToolDexc ToolDexc ToolDexc ToolDexc ToolDexc Tool</p>', 'upload/product-image/product-18.png', 'Dexc Tool', 'Dexc Tool', 0, 0, 0, '2025-02-01 13:48:11', '2025-02-01 13:48:11'),
(19, 6, 12, 1, 3, 'Awesome showcase', 'aw', 12300, 1200, 12, 1, 'Awesome showcase', '<p>Awesome showcase</p>', 'upload/product-image/product-15.png', 'Awesome showcase', 'Awesome showcase', 0, 0, 0, '2025-02-01 13:52:15', '2025-02-01 13:52:15'),
(20, 3, 13, 1, 1, 'Gaming Instruments latest', 'gm', 3000, 2200, 12, 1, 'Gaming Instruments', '<p>Gaming Instruments Gaming Instruments Gaming Instruments Gaming Instruments Gaming Instruments</p>', 'upload/product-image/product-01.png', 'Gaming Instruments', 'Gaming Instruments', 0, 0, 0, '2025-02-01 13:54:51', '2025-02-01 13:54:51');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('9YjACrDlG2pUzFRMiu01glsmsoFPHXibUysPLQ6n', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoicjBCeDhvSHZzRk5zWjRPRFFZYXYxWGxYclpwMmJqUVFkVk1JWDhoViI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjQ6ImNhcnQiO2E6MTp7czo3OiJkZWZhdWx0IjtPOjI5OiJJbGx1bWluYXRlXFN1cHBvcnRcQ29sbGVjdGlvbiI6Mjp7czo4OiIAKgBpdGVtcyI7YToxOntzOjMyOiJiODljYWVkNzlhMzU0MjBmYzRhMGRjM2JjNmU3MTQ5ZiI7TzozMjoiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0iOjk6e3M6NToicm93SWQiO3M6MzI6ImI4OWNhZWQ3OWEzNTQyMGZjNGEwZGMzYmM2ZTcxNDlmIjtzOjI6ImlkIjtpOjY7czozOiJxdHkiO3M6MToiMSI7czo0OiJuYW1lIjtzOjk6Ik1hbiBTaGlydCI7czo1OiJwcmljZSI7ZDoxMDA7czo3OiJvcHRpb25zIjtPOjM5OiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbU9wdGlvbnMiOjI6e3M6ODoiACoAaXRlbXMiO2E6Mjp7czo1OiJpbWFnZSI7czozNDoidXBsb2FkL3Byb2R1Y3QtaW1hZ2UvcHJvZHVjdC00LnBuZyI7czo0OiJjb2RlIjtzOjQ6InV1dXUiO31zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fXM6NDk6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBhc3NvY2lhdGVkTW9kZWwiO047czo0MToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAHRheFJhdGUiO2k6MjE7czo0MToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGlzU2F2ZWQiO2I6MDt9fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTIkOHVjdnk0MG9na3ZUSVRnMEZCaXYzT2lWZFV1dUtVY1RTLkVJZzlPUm9VYnN4U0MudmxMZ1ciO30=', 1772956101),
('vnyoRncsiZ9vbiC1E6e6FS9ZOuAPzMYTMTkbvGD2', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', 'YToxMTp7czo2OiJfdG9rZW4iO3M6NDA6Inhkb1ZmektidW5XNmhpNHJvZ2RoeHdMbFBOQTBqMWw5V2JuV2lNbDgiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQzOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvY2hlY2tvdXQvYmlsbGluZy1pbmZvIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo0OiJjYXJ0IjthOjE6e3M6NzoiZGVmYXVsdCI7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjI6e3M6ODoiACoAaXRlbXMiO2E6MTp7czozMjoiNzgzMzhjNjExYmJkZWQ3ODgyNjRiOWYyNzFmODM1MTUiO086MzI6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtIjo5OntzOjU6InJvd0lkIjtzOjMyOiI3ODMzOGM2MTFiYmRlZDc4ODI2NGI5ZjI3MWY4MzUxNSI7czoyOiJpZCI7aToxNjtzOjM6InF0eSI7aToxO3M6NDoibmFtZSI7czo3OiJTcGVha2VyIjtzOjU6InByaWNlIjtkOjQwMDtzOjc6Im9wdGlvbnMiO086Mzk6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtT3B0aW9ucyI6Mjp7czo4OiIAKgBpdGVtcyI7YToyOntzOjU6ImltYWdlIjtzOjM1OiJ1cGxvYWQvcHJvZHVjdC1pbWFnZS9wcm9kdWN0LTA0LnBuZyI7czo0OiJjb2RlIjtzOjI6InNwIjt9czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO31zOjQ5OiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AYXNzb2NpYXRlZE1vZGVsIjtOO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQB0YXhSYXRlIjtpOjIxO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBpc1NhdmVkIjtiOjA7fX1zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fX1zOjI6ImlkIjtpOjExO3M6NDoibmFtZSI7czo1OiJSYWtpYiI7czo1OiJpbWFnZSI7czo3MToidXBsb2FkL2N1c3RvbWVyLWltYWdlcy9zbWlsaW5nLWJ1c2luZXNzLW1hbi1jYXJ0b29uLXZlY3Rvci0xMTE0MTI3MS5qcGciO3M6MTE6Im9yZGVyX3RvdGFsIjtkOjQwMDtzOjE0OiJzaGlwcGluZ190b3RhbCI7aToxMDA7czo5OiJ0YXhfdG90YWwiO2Q6NjA7czoxMToiZmluYWxfdG90YWwiO2Q6NTYwO30=', 1772954212),
('WgXbixWjsvu8WXi6OdemTk1uDEbyOcqDuTcuD0GB', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', 'YToxMTp7czo2OiJfdG9rZW4iO3M6NDA6IlV1azV2bERuZFY0RGxQV2lHNVlKWXdPNjB4QkZYOFlvanVNZkhXSnQiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjUwOiJodHRwOi8vbG9jYWxob3N0L2Vjb20vcHVibGljL2NoZWNrb3V0L2JpbGxpbmctaW5mbyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NDoiY2FydCI7YToxOntzOjc6ImRlZmF1bHQiO086Mjk6IklsbHVtaW5hdGVcU3VwcG9ydFxDb2xsZWN0aW9uIjoyOntzOjg6IgAqAGl0ZW1zIjthOjE6e3M6MzI6Ijc4MzM4YzYxMWJiZGVkNzg4MjY0YjlmMjcxZjgzNTE1IjtPOjMyOiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbSI6OTp7czo1OiJyb3dJZCI7czozMjoiNzgzMzhjNjExYmJkZWQ3ODgyNjRiOWYyNzFmODM1MTUiO3M6MjoiaWQiO2k6MTY7czozOiJxdHkiO2k6MTtzOjQ6Im5hbWUiO3M6NzoiU3BlYWtlciI7czo1OiJwcmljZSI7ZDo0MDA7czo3OiJvcHRpb25zIjtPOjM5OiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbU9wdGlvbnMiOjI6e3M6ODoiACoAaXRlbXMiO2E6Mjp7czo1OiJpbWFnZSI7czozNToidXBsb2FkL3Byb2R1Y3QtaW1hZ2UvcHJvZHVjdC0wNC5wbmciO3M6NDoiY29kZSI7czoyOiJzcCI7fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9czo0OToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGFzc29jaWF0ZWRNb2RlbCI7TjtzOjQxOiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AdGF4UmF0ZSI7aToyMTtzOjQxOiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AaXNTYXZlZCI7YjowO319czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO319czoyOiJpZCI7aToxMTtzOjQ6Im5hbWUiO3M6NToiUmFraWIiO3M6NToiaW1hZ2UiO3M6NzE6InVwbG9hZC9jdXN0b21lci1pbWFnZXMvc21pbGluZy1idXNpbmVzcy1tYW4tY2FydG9vbi12ZWN0b3ItMTExNDEyNzEuanBnIjtzOjExOiJvcmRlcl90b3RhbCI7ZDo0MDA7czoxNDoic2hpcHBpbmdfdG90YWwiO2k6MTAwO3M6OToidGF4X3RvdGFsIjtkOjYwO3M6MTE6ImZpbmFsX3RvdGFsIjtkOjU2MDt9', 1772954155),
('xDY9buRJ3XDkMGpCGyR7NzQ40XI1QxvHy5gjKCXg', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoidkFGenM2eHdGdERtTG16ZGgzRHF0aVpINnk3T21IeWVOUE1PMHphOCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM2OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvY2F0ZWdvcnkvaW5kZXgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEyJDZNQlgycUVjNi9QdTZWWEd5Sm9naXU0dWJaSjJCdmM4cnpDTGUuUWJ1OTMzdjlQYmpGZmhlIjt9', 1772956461);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` tinyint(4) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `description` text DEFAULT NULL,
  `image` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `status`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'Tshirt', 1, 'tshirt for man fashoin subcategory', 'upload/Sub-category/images.jpg', '2025-01-19 05:53:57', '2025-01-19 05:53:57'),
(2, 2, 'Sari', 1, 'Sari Women Fashion Sub Category', 'upload/Sub-category/sss.jpg', '2025-01-19 05:54:28', '2025-01-19 05:54:28'),
(3, 3, 'Laptop', 1, 'Laptop sub Category Under  Electronics Category', 'upload/Sub-category/images (2).jpg', '2025-01-19 05:55:55', '2025-01-19 05:55:55'),
(4, 5, 'Mobile Apps', 1, NULL, 'upload/Sub-category/images (3).jpg', '2025-01-19 05:57:25', '2025-01-19 05:57:25'),
(5, 5, 'Web Apps', 1, 'web apps  is Sub Category under Software Category', 'upload/Sub-category/OIP (4).jpg', '2025-01-19 05:58:27', '2025-01-19 05:58:27'),
(6, 1, 'Blazer', 1, 'Blazer man', 'upload/Sub-category/id-11134207-7r992-lrgqfy7ftsy5c8.jpg', '2025-01-28 14:20:10', '2025-01-28 14:20:10'),
(7, 1, 'Blazer', 1, 'Blazer man', 'upload/Sub-category/id-11134207-7r992-lrgqfy7ftsy5c8.jpg', '2025-01-28 14:20:10', '2025-01-28 14:20:10'),
(8, 1, 'Pant', 1, 'Pant', 'upload/Sub-category/ce_pant_z1_f_5483_7_2839_1_tk_2316_vat_tk_2490_103_.jpg', '2025-01-28 14:21:59', '2025-01-28 14:21:59'),
(9, 6, 'Chair', 1, 'Chair Chai rChair Chair', 'upload/Sub-category/product-2.png', '2025-01-30 12:02:43', '2025-01-30 12:02:43'),
(10, 6, 'Table', 1, 'Table  is best dex', 'upload/Sub-category/product-1.png', '2025-02-01 13:42:47', '2025-02-01 13:42:47'),
(11, 6, 'Dexc Tool', 1, 'Dexc Tool', 'upload/Sub-category/product-18.png', '2025-02-01 13:46:51', '2025-02-01 13:46:51'),
(12, 6, 'Almari', 1, 'Almari', 'upload/Sub-category/product-15.png', '2025-02-01 13:49:30', '2025-02-01 13:49:30'),
(13, 3, 'Gaming Instruments', 1, 'Gaming Instruments', 'upload/Sub-category/product-11.png', '2025-02-01 13:53:39', '2025-02-01 13:53:39'),
(14, 4, 'Apple', 1, NULL, 'upload/Sub-category/apples-in-a-basket-on-a-white-background-photo.jpg', '2025-06-18 05:51:27', '2025-06-18 05:51:27');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `code`, `status`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Kilogram', 'KG', 1, 'kilogram', '2025-01-19 06:05:26', '2025-01-19 06:05:26'),
(2, 'Liter', 'LT', 1, 'Liter', '2025-01-19 06:05:38', '2025-01-19 06:05:38'),
(3, 'Dozon', 'D12', 1, 'Dozon', '2025-01-19 06:06:02', '2025-01-19 06:06:02'),
(4, 'Hali', 'h4', 1, 'Hali', '2025-01-19 06:06:18', '2025-01-19 06:06:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`, `mobile`) VALUES
(1, 'cserubelhosen@gmail.com', 'cserubelhosen@gmail.com', NULL, '$2y$12$6MBX2qEc6/Pu6VXGyJogiu4ubZJ2Bvc8rzCLe.Qbu933v9PbjFfhe', NULL, NULL, NULL, NULL, NULL, 'upload/user-images/cartoon-illustration-man-suit-tie-looking-directly-viewer_520881-11107.avif', '2025-06-18 05:10:32', '2025-06-18 05:12:46', NULL),
(2, 'Admin', 'admin@gmail.com', NULL, '$2y$12$8ucvy40ogkvTITg0FBiv3OiVdUuuKUcTS.EIg9ORoUbsxSC.vlLgW', NULL, NULL, NULL, NULL, NULL, 'upload/user-images/business-man-illustration-ai-generated-image_362642-344.avif', '2025-06-18 05:12:24', '2025-06-18 05:13:03', NULL),
(3, 'adminxx', 'adminxx@gmail.com', NULL, '$2y$12$XCaBp2j2hSmiw57PE.vp8uzUnTv15lPfYy7xJS5h3Lc7ugdA9Hd7C', NULL, NULL, NULL, NULL, NULL, NULL, '2025-10-07 02:35:24', '2025-10-07 02:35:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `customer_id`, `product_id`, `created_at`, `updated_at`) VALUES
(7, 30, 19, '2025-06-19 01:00:22', '2025-06-19 01:00:22'),
(9, 30, 16, '2025-06-19 01:03:48', '2025-06-19 01:03:48'),
(11, 11, 1, '2025-06-19 02:24:56', '2025-06-19 02:24:56'),
(13, 17, 19, '2025-06-19 02:58:56', '2025-06-19 02:58:56'),
(14, 17, 1, '2025-06-19 03:01:13', '2025-06-19 03:01:13'),
(15, 25, 20, '2025-06-19 03:19:03', '2025-06-19 03:19:03'),
(16, 25, 19, '2025-06-19 03:21:58', '2025-06-19 03:21:58'),
(17, 25, 17, '2025-06-19 03:37:58', '2025-06-19 03:37:58'),
(19, 25, 1, '2025-06-19 04:54:32', '2025-06-19 04:54:32'),
(24, 29, 20, '2025-06-19 05:46:23', '2025-06-19 05:46:23'),
(25, 29, 19, '2025-06-19 05:46:33', '2025-06-19 05:46:33'),
(26, 15, 20, '2025-06-19 06:10:36', '2025-06-19 06:10:36'),
(27, 15, 19, '2025-06-19 06:15:15', '2025-06-19 06:15:15'),
(28, 18, 19, '2025-06-19 06:16:46', '2025-06-19 06:16:46'),
(29, 24, 18, '2025-06-19 06:17:17', '2025-06-19 06:17:17'),
(34, 40, 18, '2025-06-19 07:40:45', '2025-06-19 07:40:45'),
(35, 42, 19, '2025-06-19 07:46:54', '2025-06-19 07:46:54'),
(36, 45, 16, '2025-06-19 07:53:07', '2025-06-19 07:53:07'),
(38, 28, 14, '2025-09-09 04:08:27', '2025-09-09 04:08:27'),
(41, 13, 14, '2025-10-31 22:50:48', '2025-10-31 22:50:48'),
(42, 13, 1, '2025-10-31 22:51:01', '2025-10-31 22:51:01'),
(43, 13, 17, '2025-10-31 22:51:08', '2025-10-31 22:51:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `couriers`
--
ALTER TABLE `couriers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `other_images`
--
ALTER TABLE `other_images`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `couriers`
--
ALTER TABLE `couriers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `other_images`
--
ALTER TABLE `other_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
