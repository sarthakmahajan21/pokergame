-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Aug 31, 2022 at 07:20 AM
-- Server version: 10.4.25-MariaDB-1:10.4.25+maria~focal-log
-- PHP Version: 8.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `balance` decimal(20,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `user_id`, `code`, `balance`, `created_at`, `updated_at`) VALUES
(1, 1, '22a7481146702d3c77a3c9bc89e3fdaeb230bae8250dd4647b', '0.00', '2022-08-20 06:29:19', '2022-08-20 06:29:19'),
(2, 2, 'f5a486530e2e7cada79e10a959f949c091ef53dc487304b8ca', '945.00', '2022-08-20 06:36:35', '2022-08-21 11:11:24'),
(3, 3, '70a25787994d04db6320306cb6fdb446b201dcd2e3be0a5c1a', '999.00', '2022-08-30 18:54:33', '2022-08-31 07:19:40');

-- --------------------------------------------------------

--
-- Table structure for table `account_transactions`
--

CREATE TABLE `account_transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_id` int(10) UNSIGNED NOT NULL,
  `amount` decimal(20,2) NOT NULL,
  `balance` decimal(20,2) NOT NULL,
  `transactionable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `transactionable_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `account_transactions`
--

INSERT INTO `account_transactions` (`id`, `account_id`, `amount`, `balance`, `transactionable_type`, `transactionable_id`, `created_at`, `updated_at`) VALUES
(1, 2, '1000.00', '1000.00', 'App\\Models\\Bonus', 1, '2022-08-20 06:36:35', '2022-08-20 06:36:35'),
(2, 2, '-8.00', '992.00', 'App\\Models\\Game', 2, '2022-08-20 06:36:49', '2022-08-20 06:36:49'),
(3, 2, '-10.00', '982.00', 'App\\Models\\Game', 3, '2022-08-20 06:37:03', '2022-08-20 06:37:03'),
(4, 2, '-8.00', '974.00', 'App\\Models\\Game', 4, '2022-08-20 06:37:11', '2022-08-20 06:37:11'),
(5, 2, '-10.00', '964.00', 'App\\Models\\Game', 5, '2022-08-20 06:37:21', '2022-08-20 06:37:21'),
(6, 2, '-10.00', '954.00', 'App\\Models\\Game', 6, '2022-08-20 06:37:27', '2022-08-20 06:37:27'),
(7, 2, '40.00', '994.00', 'App\\Models\\Game', 7, '2022-08-20 06:37:34', '2022-08-20 06:37:34'),
(8, 2, '-10.00', '984.00', 'App\\Models\\Game', 8, '2022-08-20 06:37:45', '2022-08-20 06:37:45'),
(9, 2, '-10.00', '974.00', 'App\\Models\\Game', 9, '2022-08-20 06:37:52', '2022-08-20 06:37:52'),
(10, 2, '-8.00', '966.00', 'App\\Models\\Game', 10, '2022-08-20 06:37:59', '2022-08-20 06:37:59'),
(11, 2, '-10.00', '956.00', 'App\\Models\\Game', 11, '2022-08-20 06:38:12', '2022-08-20 06:38:12'),
(12, 2, '-10.00', '946.00', 'App\\Models\\Game', 12, '2022-08-20 06:38:19', '2022-08-20 06:38:19'),
(13, 2, '-10.00', '936.00', 'App\\Models\\Game', 13, '2022-08-20 06:38:26', '2022-08-20 06:38:26'),
(14, 2, '-1.00', '935.00', 'App\\Models\\Game', 14, '2022-08-20 06:38:32', '2022-08-20 06:38:32'),
(15, 2, '-10.00', '925.00', 'App\\Models\\Game', 15, '2022-08-20 06:38:48', '2022-08-20 06:38:48'),
(16, 2, '-2.00', '923.00', 'App\\Models\\Game', 16, '2022-08-20 06:38:56', '2022-08-20 06:38:56'),
(17, 2, '40.00', '963.00', 'App\\Models\\Game', 17, '2022-08-20 06:39:07', '2022-08-20 06:39:07'),
(18, 2, '-10.00', '953.00', 'App\\Models\\Game', 18, '2022-08-20 06:39:18', '2022-08-20 06:39:18'),
(19, 2, '-8.00', '945.00', 'App\\Models\\Game', 19, '2022-08-20 06:39:25', '2022-08-20 06:39:25'),
(20, 2, '-10.00', '935.00', 'App\\Models\\Game', 20, '2022-08-20 06:39:37', '2022-08-20 06:39:37'),
(21, 2, '-10.00', '925.00', 'App\\Models\\Game', 21, '2022-08-20 06:39:44', '2022-08-20 06:39:44'),
(22, 2, '10.00', '935.00', 'App\\Models\\Game', 22, '2022-08-20 06:39:50', '2022-08-20 06:39:50'),
(23, 2, '-10.00', '925.00', 'App\\Models\\Game', 23, '2022-08-20 06:40:00', '2022-08-20 06:40:00'),
(24, 2, '45.00', '970.00', 'App\\Models\\Game', 24, '2022-08-20 06:40:06', '2022-08-20 06:40:06'),
(25, 2, '-1.00', '969.00', 'App\\Models\\Game', 26, '2022-08-20 10:02:37', '2022-08-20 10:02:37'),
(26, 2, '-1.00', '968.00', 'App\\Models\\Game', 28, '2022-08-20 10:02:58', '2022-08-20 10:02:58'),
(27, 2, '-1.00', '967.00', 'App\\Models\\Game', 29, '2022-08-20 10:03:23', '2022-08-20 10:03:23'),
(28, 2, '1.00', '968.00', 'App\\Models\\Game', 29, '2022-08-20 10:03:38', '2022-08-20 10:03:38'),
(29, 2, '-1.00', '967.00', 'App\\Models\\Game', 30, '2022-08-20 10:03:46', '2022-08-20 10:03:46'),
(30, 2, '2.00', '969.00', 'App\\Models\\Game', 30, '2022-08-20 10:03:57', '2022-08-20 10:03:57'),
(31, 2, '-1.00', '968.00', 'App\\Models\\Game', 31, '2022-08-20 10:04:08', '2022-08-20 10:04:08'),
(32, 2, '1.00', '969.00', 'App\\Models\\Game', 31, '2022-08-20 10:04:17', '2022-08-20 10:04:17'),
(33, 2, '-1.00', '968.00', 'App\\Models\\Game', 32, '2022-08-20 10:04:24', '2022-08-20 10:04:24'),
(34, 2, '1.00', '969.00', 'App\\Models\\Game', 32, '2022-08-20 10:04:32', '2022-08-20 10:04:32'),
(35, 2, '-1.00', '968.00', 'App\\Models\\Game', 33, '2022-08-20 10:04:41', '2022-08-20 10:04:41'),
(36, 2, '-1.00', '967.00', 'App\\Models\\Game', 34, '2022-08-20 10:04:55', '2022-08-20 10:04:55'),
(37, 2, '1.00', '968.00', 'App\\Models\\Game', 34, '2022-08-20 10:05:02', '2022-08-20 10:05:02'),
(38, 2, '-1.00', '967.00', 'App\\Models\\Game', 35, '2022-08-20 10:05:09', '2022-08-20 10:05:09'),
(39, 2, '-1.00', '966.00', 'App\\Models\\Game', 36, '2022-08-20 10:05:20', '2022-08-20 10:05:20'),
(40, 2, '3.00', '969.00', 'App\\Models\\Game', 36, '2022-08-20 10:05:27', '2022-08-20 10:05:27'),
(41, 2, '-5.00', '964.00', 'App\\Models\\Game', 37, '2022-08-20 10:05:59', '2022-08-20 10:05:59'),
(42, 2, '5.00', '969.00', 'App\\Models\\Game', 37, '2022-08-20 10:06:06', '2022-08-20 10:06:06'),
(43, 2, '-5.00', '964.00', 'App\\Models\\Game', 38, '2022-08-20 10:06:12', '2022-08-20 10:06:12'),
(44, 2, '-5.00', '959.00', 'App\\Models\\Game', 39, '2022-08-20 10:06:23', '2022-08-20 10:06:23'),
(45, 2, '-5.00', '954.00', 'App\\Models\\Game', 40, '2022-08-20 10:06:33', '2022-08-20 10:06:33'),
(46, 2, '-5.00', '949.00', 'App\\Models\\Game', 41, '2022-08-20 10:06:44', '2022-08-20 10:06:44'),
(47, 2, '5.00', '954.00', 'App\\Models\\Game', 41, '2022-08-20 10:06:49', '2022-08-20 10:06:49'),
(48, 2, '-5.00', '949.00', 'App\\Models\\Game', 42, '2022-08-20 10:06:59', '2022-08-20 10:06:59'),
(49, 2, '-1.00', '948.00', 'App\\Models\\Game', 43, '2022-08-21 07:49:34', '2022-08-21 07:49:34'),
(50, 2, '-1.00', '947.00', 'App\\Models\\Game', 44, '2022-08-21 07:53:27', '2022-08-21 07:53:27'),
(51, 2, '2.00', '949.00', 'App\\Models\\Game', 44, '2022-08-21 07:53:33', '2022-08-21 07:53:33'),
(52, 2, '-1.00', '948.00', 'App\\Models\\Game', 45, '2022-08-21 07:56:12', '2022-08-21 07:56:12'),
(53, 2, '3.00', '951.00', 'App\\Models\\Game', 45, '2022-08-21 07:56:17', '2022-08-21 07:56:17'),
(54, 2, '-1.00', '950.00', 'App\\Models\\Game', 46, '2022-08-21 08:05:54', '2022-08-21 08:05:54'),
(55, 2, '-5.00', '945.00', 'App\\Models\\Game', 47, '2022-08-21 10:54:21', '2022-08-21 10:54:21'),
(56, 2, '-5.00', '940.00', 'App\\Models\\Game', 48, '2022-08-21 10:54:44', '2022-08-21 10:54:44'),
(57, 2, '20.00', '960.00', 'App\\Models\\Game', 48, '2022-08-21 10:54:53', '2022-08-21 10:54:53'),
(58, 2, '-5.00', '955.00', 'App\\Models\\Game', 49, '2022-08-21 11:07:48', '2022-08-21 11:07:48'),
(59, 2, '-5.00', '950.00', 'App\\Models\\Game', 50, '2022-08-21 11:08:05', '2022-08-21 11:08:05'),
(60, 2, '-5.00', '945.00', 'App\\Models\\Game', 51, '2022-08-21 11:08:16', '2022-08-21 11:08:16'),
(61, 2, '15.00', '960.00', 'App\\Models\\Game', 51, '2022-08-21 11:08:22', '2022-08-21 11:08:22'),
(62, 2, '-5.00', '955.00', 'App\\Models\\Game', 52, '2022-08-21 11:08:31', '2022-08-21 11:08:31'),
(63, 2, '-5.00', '950.00', 'App\\Models\\Game', 53, '2022-08-21 11:08:40', '2022-08-21 11:08:40'),
(64, 2, '-5.00', '945.00', 'App\\Models\\Game', 54, '2022-08-21 11:08:54', '2022-08-21 11:08:54'),
(65, 2, '10.00', '955.00', 'App\\Models\\Game', 54, '2022-08-21 11:09:05', '2022-08-21 11:09:05'),
(66, 2, '-5.00', '950.00', 'App\\Models\\Game', 55, '2022-08-21 11:09:55', '2022-08-21 11:09:55'),
(67, 2, '-5.00', '945.00', 'App\\Models\\Game', 56, '2022-08-21 11:10:10', '2022-08-21 11:10:10'),
(68, 2, '5.00', '950.00', 'App\\Models\\Game', 56, '2022-08-21 11:10:18', '2022-08-21 11:10:18'),
(69, 2, '-5.00', '945.00', 'App\\Models\\Game', 57, '2022-08-21 11:10:27', '2022-08-21 11:10:27'),
(70, 2, '5.00', '950.00', 'App\\Models\\Game', 57, '2022-08-21 11:11:19', '2022-08-21 11:11:19'),
(71, 2, '-5.00', '945.00', 'App\\Models\\Game', 58, '2022-08-21 11:11:24', '2022-08-21 11:11:24'),
(72, 3, '1000.00', '1000.00', 'App\\Models\\Bonus', 2, '2022-08-30 18:54:33', '2022-08-30 18:54:33'),
(73, 3, '-1.00', '999.00', 'App\\Models\\Game', 60, '2022-08-30 18:56:16', '2022-08-30 18:56:16'),
(74, 3, '-1.00', '998.00', 'App\\Models\\Game', 61, '2022-08-30 18:56:49', '2022-08-30 18:56:49'),
(75, 3, '2.00', '1000.00', 'App\\Models\\Game', 61, '2022-08-30 18:56:57', '2022-08-30 18:56:57'),
(76, 3, '-1.00', '999.00', 'App\\Models\\Game', 62, '2022-08-30 18:57:37', '2022-08-30 18:57:37'),
(77, 3, '1.00', '1000.00', 'App\\Models\\Game', 62, '2022-08-30 18:57:43', '2022-08-30 18:57:43'),
(78, 3, '-1.00', '999.00', 'App\\Models\\Game', 63, '2022-08-31 07:19:40', '2022-08-31 07:19:40');

-- --------------------------------------------------------

--
-- Table structure for table `bonuses`
--

CREATE TABLE `bonuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_id` int(10) UNSIGNED NOT NULL,
  `type` tinyint(4) NOT NULL,
  `amount` decimal(20,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bonuses`
--

INSERT INTO `bonuses` (`id`, `account_id`, `type`, `amount`, `created_at`, `updated_at`) VALUES
(1, 2, 20, '1000.00', '2022-08-20 06:36:35', '2022-08-20 06:36:35'),
(2, 3, 20, '1000.00', '2022-08-30 18:54:33', '2022-08-30 18:54:33');

-- --------------------------------------------------------

--
-- Table structure for table `chat_messages`
--

CREATE TABLE `chat_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `commands`
--

CREATE TABLE `commands` (
  `id` int(10) UNSIGNED NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `credits`
--

CREATE TABLE `credits` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_id` int(10) UNSIGNED NOT NULL,
  `amount` decimal(20,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `debits`
--

CREATE TABLE `debits` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_id` int(10) UNSIGNED NOT NULL,
  `amount` decimal(20,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_id` int(10) UNSIGNED NOT NULL,
  `gameable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gameable_id` bigint(20) UNSIGNED NOT NULL,
  `bet` decimal(16,2) NOT NULL,
  `win` decimal(16,2) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `secret` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `server_seed` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `client_seed` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id`, `account_id`, `gameable_type`, `gameable_id`, `bet`, `win`, `status`, `secret`, `server_seed`, `client_seed`, `created_at`, `updated_at`) VALUES
(1, 1, 'Packages\\GameSlots\\Models\\GameSlots', 1, '0.00', '0.00', -1, '2,8,8,5,0', 'GWIiDTFwnOl9Ult1', NULL, '2022-08-20 06:35:38', '2022-08-20 06:35:38'),
(2, 2, 'Packages\\GameSlots\\Models\\GameSlots', 2, '10.00', '2.00', 1, '3,0,4,6,7', 'O4Z9LAV06JWaRqvd', '789020', '2022-08-20 06:36:46', '2022-08-20 06:36:49'),
(3, 2, 'Packages\\GameSlots\\Models\\GameSlots', 3, '10.00', '0.00', 1, '7,6,3,8,7', 'eUcgSbGnEEgDgn8F', '113824', '2022-08-20 06:36:49', '2022-08-20 06:37:03'),
(4, 2, 'Packages\\GameSlots\\Models\\GameSlots', 4, '10.00', '2.00', 1, '4,3,3,8,5', '4SvWJOOzHWBl4V88', '868180', '2022-08-20 06:37:03', '2022-08-20 06:37:11'),
(5, 2, 'Packages\\GameSlots\\Models\\GameSlots', 5, '10.00', '0.00', 1, '3,1,0,1,1', 'siPviItUYkvtDtfp', '622907', '2022-08-20 06:37:11', '2022-08-20 06:37:21'),
(6, 2, 'Packages\\GameSlots\\Models\\GameSlots', 6, '10.00', '0.00', 1, '8,3,2,5,8', 'dIX1O87OuvoeHc9R', '263938', '2022-08-20 06:37:21', '2022-08-20 06:37:27'),
(7, 2, 'Packages\\GameSlots\\Models\\GameSlots', 7, '10.00', '50.00', 1, '8,5,3,2,0', 'NZJmF2btML1py378', '616889', '2022-08-20 06:37:27', '2022-08-20 06:37:34'),
(8, 2, 'Packages\\GameSlots\\Models\\GameSlots', 8, '10.00', '0.00', 1, '5,2,2,1,6', 'GPNkXUKZXA3kd8D1', '61610', '2022-08-20 06:37:34', '2022-08-20 06:37:45'),
(9, 2, 'Packages\\GameSlots\\Models\\GameSlots', 9, '10.00', '0.00', 1, '0,6,8,2,6', 'LQyV4D1kYLP9CFzE', '788250', '2022-08-20 06:37:45', '2022-08-20 06:37:52'),
(10, 2, 'Packages\\GameSlots\\Models\\GameSlots', 10, '10.00', '2.00', 1, '0,1,2,0,0', 'Y2eBWC6DxLIldQWS', '671342', '2022-08-20 06:37:52', '2022-08-20 06:37:59'),
(11, 2, 'Packages\\GameSlots\\Models\\GameSlots', 11, '10.00', '0.00', 1, '3,7,1,4,6', 'BiP6ab3F8Kj5P4XC', '473373', '2022-08-20 06:37:59', '2022-08-20 06:38:12'),
(12, 2, 'Packages\\GameSlots\\Models\\GameSlots', 12, '10.00', '0.00', 1, '8,8,0,7,7', 'IzKCxPeVwx9VyM6z', '750035', '2022-08-20 06:38:12', '2022-08-20 06:38:19'),
(13, 2, 'Packages\\GameSlots\\Models\\GameSlots', 13, '10.00', '0.00', 1, '6,3,0,2,0', '86pI6w5Mp6v8PxnA', '161994', '2022-08-20 06:38:19', '2022-08-20 06:38:26'),
(14, 2, 'Packages\\GameSlots\\Models\\GameSlots', 14, '10.00', '9.00', 1, '8,7,3,7,5', 'p2u3g48yG81BoEC4', '96647', '2022-08-20 06:38:26', '2022-08-20 06:38:32'),
(15, 2, 'Packages\\GameSlots\\Models\\GameSlots', 15, '10.00', '0.00', 1, '6,1,6,0,7', '5ktMej21fG8mZpSf', '154837', '2022-08-20 06:38:32', '2022-08-20 06:38:48'),
(16, 2, 'Packages\\GameSlots\\Models\\GameSlots', 16, '10.00', '8.00', 1, '4,7,6,3,7', 'Z4lCZcW47YPYpe8a', '412872', '2022-08-20 06:38:48', '2022-08-20 06:38:56'),
(17, 2, 'Packages\\GameSlots\\Models\\GameSlots', 17, '10.00', '50.00', 1, '5,0,0,3,8', '3TbgcmvXIV7h38FC', '310031', '2022-08-20 06:38:56', '2022-08-20 06:39:07'),
(18, 2, 'Packages\\GameSlots\\Models\\GameSlots', 18, '10.00', '0.00', 1, '8,3,2,6,5', 'K63kclI2MRBWYr6d', '648658', '2022-08-20 06:39:07', '2022-08-20 06:39:18'),
(19, 2, 'Packages\\GameSlots\\Models\\GameSlots', 19, '10.00', '2.00', 1, '1,4,2,8,2', '7zv8esquinlaUfwL', '761409', '2022-08-20 06:39:18', '2022-08-20 06:39:25'),
(20, 2, 'Packages\\GameSlots\\Models\\GameSlots', 20, '10.00', '0.00', 1, '3,1,6,6,3', 'MiXHmEEyAWRlecwk', '207200', '2022-08-20 06:39:25', '2022-08-20 06:39:37'),
(21, 2, 'Packages\\GameSlots\\Models\\GameSlots', 21, '10.00', '0.00', 1, '2,4,8,4,6', 'ZBMxysJ5VL4bFGVy', '971215', '2022-08-20 06:39:37', '2022-08-20 06:39:44'),
(22, 2, 'Packages\\GameSlots\\Models\\GameSlots', 22, '10.00', '20.00', 1, '2,4,4,8,0', 'IoDS5dF2nvTzlVR1', '843590', '2022-08-20 06:39:44', '2022-08-20 06:39:50'),
(23, 2, 'Packages\\GameSlots\\Models\\GameSlots', 23, '10.00', '0.00', 1, '6,6,0,7,7', 'X1jCrSmpA3uMesbE', '960391', '2022-08-20 06:39:50', '2022-08-20 06:40:00'),
(24, 2, 'Packages\\GameSlots\\Models\\GameSlots', 24, '10.00', '55.00', 1, '7,7,3,0,1', 'Q5jlvyr2h2dCqYLh', '485710', '2022-08-20 06:40:00', '2022-08-20 06:40:06'),
(25, 2, 'Packages\\GameSlots\\Models\\GameSlots', 25, '0.00', '0.00', -1, '5,2,2,1,3', 'gj0jwgx7FEk2T1DX', NULL, '2022-08-20 06:40:06', '2022-08-20 06:40:06'),
(26, 2, 'Packages\\GameVideoPoker\\Models\\GameVideoPoker', 1, '1.00', '0.00', 1, 'hj,hq,d5,c2,c9,ck,st,ha,c7,s4,h3,s5,s2,h2,sk,h6,c8,h9,ca,ht,d3,h7,hk,dj,sa,sj,da,s9,cq,d7,d2,d4,c4,s6,s7,h8,ct,dk,h4,dt,sq,c5,s8,s3,dq,d6,d8,h5,c3,cj,d9,c6', 'omicQbnli29o36UK', '850041', '2022-08-20 07:32:42', '2022-08-20 10:02:52'),
(27, 1, 'Packages\\GameVideoPoker\\Models\\GameVideoPoker', 2, '0.00', '0.00', -1, 'ck,h8,c5,s2,h2,c2,h4,s4,c8,cq,ha,s3,dj,dk,dq,s9,s8,da,d3,ca,s6,sa,d4,sj,h3,s7,c6,hk,h9,hq,h5,sq,ct,d9,dt,d6,c9,ht,d5,c7,c4,hj,s5,h6,cj,d7,sk,st,c3,h7,d8,d2', 'uOmCNi966zyCYFmm', NULL, '2022-08-20 09:30:00', '2022-08-20 09:30:00'),
(28, 2, 'Packages\\GameVideoPoker\\Models\\GameVideoPoker', 3, '1.00', '0.00', 1, 'c7,c9,dt,cj,s4,h8,sa,ha,h3,ck,s5,d4,hj,da,h7,hk,c8,ca,d8,d6,c2,h4,c3,dj,s6,c5,st,sq,ht,c6,sj,cq,s8,d9,h9,s3,h5,d7,d5,d3,h2,s7,s2,dq,c4,s9,dk,sk,d2,h6,ct,hq', 'tYfd4JR5xIZmAv2Z', '490859', '2022-08-20 10:02:52', '2022-08-20 10:03:13'),
(29, 2, 'Packages\\GameVideoPoker\\Models\\GameVideoPoker', 4, '1.00', '1.00', 1, 'hk,ht,s9,sq,hj,s6,c3,cj,h8,sa,hq,cq,h9,dq,h4,h7,dj,da,d9,d2,d8,s8,dk,c6,h5,d3,sj,c7,ck,sk,s7,s3,d7,s2,dt,ct,h6,s4,d5,d4,h2,c2,c5,c4,ha,c9,ca,d6,st,c8,h3,s5', 'd35u2uYrUh8ah1ID', '404395', '2022-08-20 10:03:13', '2022-08-20 10:03:37'),
(30, 2, 'Packages\\GameVideoPoker\\Models\\GameVideoPoker', 5, '1.00', '2.00', 1, 'cq,d9,ck,h9,s3,dk,d7,s5,sk,c8,da,dq,c6,ca,st,h4,d2,dt,sa,c5,h5,c4,d8,hj,h7,h6,sj,ct,hk,h3,h8,s4,s6,d6,ht,c2,s2,d5,s9,c9,d4,hq,ha,cj,s7,d3,dj,c3,sq,s8,h2,c7', 'ARwBwDIhtOqrVI9R', '587058', '2022-08-20 10:03:38', '2022-08-20 10:03:57'),
(31, 2, 'Packages\\GameVideoPoker\\Models\\GameVideoPoker', 6, '1.00', '1.00', 1, 'd7,cq,hj,ht,s2,sq,c8,d8,ha,h3,c2,c9,c3,d3,d4,h6,hq,s4,cj,s8,st,c4,d6,c6,dj,h5,h8,h4,d9,h2,dk,sk,s3,d5,s7,sj,s9,c7,ca,c5,s6,ct,s5,h9,d2,sa,hk,dq,da,ck,dt,h7', 'v3wVcz3mFETgEfxY', '536757', '2022-08-20 10:03:57', '2022-08-20 10:04:17'),
(32, 2, 'Packages\\GameVideoPoker\\Models\\GameVideoPoker', 7, '1.00', '1.00', 1, 'd4,c5,c2,c9,d6,dj,s3,ht,d3,h2,d2,d8,h7,d7,c4,sj,s7,s8,h9,st,dk,hk,da,c6,h3,d9,s5,d5,s9,c3,s4,hj,cj,h5,sk,dq,s2,h4,h8,dt,ha,ca,hq,c7,sq,sa,c8,cq,ct,ck,s6,h6', 'MI96saFZRwPk4g1D', '823214', '2022-08-20 10:04:17', '2022-08-20 10:04:32'),
(33, 2, 'Packages\\GameVideoPoker\\Models\\GameVideoPoker', 8, '1.00', '0.00', 1, 'h2,ha,ht,c4,h8,cj,s4,h9,d7,c3,c6,s3,sq,s5,d8,h4,hq,d9,s2,c7,d6,s9,dt,ca,da,s6,sk,h6,dj,c9,st,h5,sj,dq,hj,dk,c5,c2,d3,ck,hk,d4,d2,s8,h7,ct,c8,h3,sa,cq,s7,d5', '38MYl4wvb1XCNHXE', '103307', '2022-08-20 10:04:32', '2022-08-20 10:04:51'),
(34, 2, 'Packages\\GameVideoPoker\\Models\\GameVideoPoker', 9, '1.00', '1.00', 1, 's8,hk,d3,c8,s7,d4,d7,da,d6,c6,cj,sj,ha,h6,s3,ck,sq,hq,cq,c2,ca,c3,s2,s4,c5,d2,s5,h5,d9,h2,h3,ht,st,sk,dk,c7,hj,h7,c9,d8,dt,h9,ct,s6,d5,s9,dj,sa,dq,c4,h8,h4', '1C8ae7QiPr0hDJpT', '850248', '2022-08-20 10:04:51', '2022-08-20 10:05:02'),
(35, 2, 'Packages\\GameVideoPoker\\Models\\GameVideoPoker', 10, '1.00', '0.00', 1, 'da,c7,h7,sk,dj,h2,st,s9,h8,c9,d3,s5,ck,h3,c3,d2,d8,sj,h4,ct,s6,cq,h9,hq,d9,hj,dq,ht,hk,d6,c2,c5,d5,s3,sq,d4,ca,c8,sa,s2,ha,c6,dt,s7,cj,s4,h6,s8,h5,c4,d7,dk', 'NHYY0TcmJUao6TRC', '289455', '2022-08-20 10:05:02', '2022-08-20 10:05:16'),
(36, 2, 'Packages\\GameVideoPoker\\Models\\GameVideoPoker', 11, '1.00', '3.00', 1, 'd5,c6,d3,cq,h3,h5,h8,c4,ca,d9,s6,ct,st,ht,cj,ha,s2,hk,d4,c3,sa,dk,h4,s9,c5,dq,dt,hj,c7,da,dj,c8,s3,sq,c9,d6,c2,h9,sk,d8,s7,s5,s4,ck,s8,hq,h2,h6,h7,sj,d2,d7', 'CqzoRULpwoifbPTw', '104887', '2022-08-20 10:05:16', '2022-08-20 10:05:27'),
(37, 2, 'Packages\\GameVideoPoker\\Models\\GameVideoPoker', 12, '5.00', '5.00', 1, 's2,ck,s5,h8,c6,d8,ca,c4,s6,hj,c2,h5,c3,dk,sj,sa,s8,s9,ha,s7,c7,c9,c5,c8,d6,h7,ct,ht,d3,cj,dq,d9,cq,d4,h6,s3,d7,h2,dt,d5,h9,h4,s4,hk,sq,d2,dj,da,sk,hq,h3,st', 'UYlSPDoabHCbwCt4', '181728', '2022-08-20 10:05:27', '2022-08-20 10:06:06'),
(38, 2, 'Packages\\GameVideoPoker\\Models\\GameVideoPoker', 13, '5.00', '0.00', 1, 'dq,hj,h5,s2,c6,h4,d7,h2,hk,hq,st,ct,h7,h9,d9,d3,d8,sj,cj,s5,da,s9,dk,h8,s7,dj,s3,c3,sa,c8,dt,c5,ht,c7,ca,ck,c4,ha,s8,d4,h3,sk,s6,s4,cq,h6,d5,sq,d2,c9,d6,c2', 'IbmSXJNS4AmpnF8c', '107975', '2022-08-20 10:06:06', '2022-08-20 10:06:18'),
(39, 2, 'Packages\\GameVideoPoker\\Models\\GameVideoPoker', 14, '5.00', '0.00', 1, 'ca,c7,d8,s2,dj,c9,c2,c3,h4,ck,dq,sa,dk,c4,cq,h8,ha,h3,s6,hq,h2,h6,s4,d5,ct,d6,sj,cj,dt,s3,h7,hk,ht,s7,sk,c5,s8,s9,h5,d2,h9,d7,c6,hj,s5,c8,d3,st,d4,sq,da,d9', 't3sHwymWCqsTQRpk', '650420', '2022-08-20 10:06:18', '2022-08-20 10:06:30'),
(40, 2, 'Packages\\GameVideoPoker\\Models\\GameVideoPoker', 15, '5.00', '0.00', 1, 'sq,da,h9,c8,dq,cq,cj,c2,s4,d7,c4,d4,s6,d5,d6,s5,dk,h2,h8,h6,c3,s8,hj,c6,sk,ht,ct,c5,st,d8,s9,c7,d3,h5,hk,sa,hq,c9,sj,ha,h7,d2,dt,s3,dj,ck,h4,s2,s7,d9,h3,ca', 'S21c2Bci5GO44ugq', '688247', '2022-08-20 10:06:30', '2022-08-20 10:06:40'),
(41, 2, 'Packages\\GameVideoPoker\\Models\\GameVideoPoker', 16, '5.00', '5.00', 1, 's3,cq,sj,s6,dt,d3,da,c2,c7,s7,c3,st,ht,dk,s2,ha,h2,s9,dq,sa,ca,h4,dj,d4,h7,h8,ct,h5,d7,d9,hq,d8,d5,d6,h6,sq,cj,hk,c8,s8,c5,d2,c9,s4,h3,c6,hj,h9,sk,ck,c4,s5', 'ej05jA6HV1dNzPyY', '544268', '2022-08-20 10:06:40', '2022-08-20 10:06:49'),
(42, 2, 'Packages\\GameVideoPoker\\Models\\GameVideoPoker', 17, '5.00', '0.00', 0, 'cj,st,s6,c2,sq,h8,s5,c8,cq,da,d2,s9,c9,d8,h5,c5,hq,c3,h2,ca,hk,h3,d3,c6,d7,s4,dt,hj,h7,sk,s3,d9,s8,h4,c4,h6,d4,h9,dq,sj,d6,s2,sa,ha,ct,ck,d5,c7,ht,dj,s7,dk', 'KnYlQOY2P9foz4Cp', '999720', '2022-08-20 10:06:49', '2022-08-20 10:06:59'),
(43, 2, 'Packages\\GameVideoPoker\\Models\\GameVideoPoker', 18, '1.00', '0.00', 1, 'd8,ca,dk,s9,d9,sj,hk,h6,c4,s8,cj,sa,ct,st,dj,h7,d4,d2,h9,sk,d6,c7,da,ck,c6,c3,d5,s6,dq,s7,d7,d3,s4,s3,dt,h5,s5,c2,hj,h4,hq,s2,h3,c8,c5,ht,h2,c9,ha,cq,h8,sq', 'aPiPbKiAyipS9d7V', '198729', '2022-08-20 10:10:29', '2022-08-21 07:49:46'),
(44, 2, 'Packages\\GameVideoPoker\\Models\\GameVideoPoker', 19, '1.00', '2.00', 1, 'hj,cq,d7,cj,ha,ca,s3,dq,d9,c6,sa,dt,s9,h3,h5,ck,c7,c4,d3,c5,h2,s6,d4,st,c8,s2,s4,ct,d2,h4,s7,sj,dj,d8,c2,h9,h6,c9,hk,sq,s5,ht,sk,dk,da,hq,h7,s8,c3,h8,d6,d5', 'hg2Czj0dhnNxkRK9', '456935', '2022-08-21 07:49:46', '2022-08-21 07:53:33'),
(45, 2, 'Packages\\GameVideoPoker\\Models\\GameVideoPoker', 20, '1.00', '3.00', 1, 'h3,c2,c7,h2,c8,sa,h8,d8,cq,d3,sj,s7,dt,c9,cj,h5,dq,c6,s3,hq,h9,ha,d4,dj,h7,d7,d9,ca,d5,ht,s5,c5,dk,st,d6,h6,c4,sk,c3,d2,s8,da,s6,sq,h4,ck,s4,hk,hj,s2,ct,s9', 'pjpdy38Whzi054ox', '680309', '2022-08-21 07:53:33', '2022-08-21 07:56:17'),
(46, 2, 'Packages\\GameVideoPoker\\Models\\GameVideoPoker', 21, '1.00', '0.00', 1, 'h4,ht,sq,h7,dk,dj,sj,sk,cj,c3,hq,d8,s2,s3,d9,h8,h9,h5,hj,sa,ha,c2,d5,dt,d2,ct,c5,d4,s9,h3,s7,ck,c8,s8,ca,cq,s6,c9,st,s4,c7,h2,c6,d6,d3,s5,hk,da,c4,h6,d7,dq', 'MO5erHl4ddH1IhA7', '893171', '2022-08-21 07:56:17', '2022-08-21 08:06:10'),
(47, 2, 'Packages\\GameVideoPoker\\Models\\GameVideoPoker', 22, '5.00', '0.00', 1, 's5,c9,dq,dt,c2,c8,d5,s4,dk,sj,d8,ca,c6,dj,h3,hj,da,s2,s6,d7,cq,h6,d4,c4,h4,ct,cj,d9,h2,ht,c7,c5,sq,sa,s7,d2,d3,h8,c3,s8,hk,ha,h5,s9,d6,h7,ck,h9,st,sk,hq,s3', 'fQMLjOiljVsYtVZt', '412683', '2022-08-21 08:06:10', '2022-08-21 10:54:30'),
(48, 2, 'Packages\\GameVideoPoker\\Models\\GameVideoPoker', 23, '5.00', '20.00', 1, 'd4,ct,d5,hk,c9,hq,d8,dk,ck,s6,d3,h8,s5,sj,da,s9,c5,h7,dt,h3,c7,s4,st,dq,h9,sq,h5,c2,h6,sk,s2,d7,c4,d2,ha,d6,h2,c8,dj,d9,s8,cq,ht,ca,cj,s7,sa,s3,c3,hj,c6,h4', 'rZfyXw4YjKBqKRyx', '905118', '2022-08-21 10:54:30', '2022-08-21 10:54:53'),
(49, 2, 'Packages\\GameVideoPoker\\Models\\GameVideoPoker', 24, '5.00', '0.00', 1, 'ck,ct,dk,d6,h7,c7,s3,d4,sj,h2,c9,d8,s6,s8,dt,ca,s5,h6,h4,d9,st,ht,c4,hj,da,h5,hk,h3,h8,c8,c6,cq,sa,cj,c2,sq,c5,d2,d3,d7,dq,ha,hq,s7,s4,s2,sk,c3,dj,s9,d5,h9', 'wpCePAdQvAzWJeU3', '701872', '2022-08-21 10:54:53', '2022-08-21 11:07:59'),
(50, 2, 'Packages\\GameVideoPoker\\Models\\GameVideoPoker', 25, '5.00', '0.00', 1, 'cj,hq,d5,h6,ha,c2,sa,c7,hj,dq,h7,ck,sj,c9,d3,d7,c8,st,s5,s4,c6,dj,s7,h5,d6,cq,sq,ct,c3,s8,d4,h4,s2,dt,sk,h3,c5,ht,dk,h8,c4,h2,s3,s6,d8,d9,hk,d2,h9,s9,da,ca', 'eAPnqhfzP2s9TKDA', '839230', '2022-08-21 11:07:59', '2022-08-21 11:08:11'),
(51, 2, 'Packages\\GameVideoPoker\\Models\\GameVideoPoker', 26, '5.00', '15.00', 1, 'h4,ck,da,cq,h8,sk,dj,c9,s8,d9,d4,sq,c6,d3,s3,c2,h3,c3,s2,ht,c7,cj,hk,dk,h9,s9,hq,h7,hj,s4,h2,sa,dq,c5,ca,d8,s7,s6,d2,c8,d5,ct,s5,st,c4,d7,ha,h6,dt,d6,sj,h5', '4qOBu3JIJ7nX54qR', '874917', '2022-08-21 11:08:11', '2022-08-21 11:08:22'),
(52, 2, 'Packages\\GameVideoPoker\\Models\\GameVideoPoker', 27, '5.00', '0.00', 1, 's4,h2,s9,h3,dq,ca,hj,d5,cj,ck,s5,c7,d6,h7,h8,c4,ht,ha,c9,dk,c6,s3,c5,d9,h6,h4,d2,h5,c8,sk,s8,h9,hq,s2,sj,st,d4,hk,d7,s7,d3,cq,ct,dt,da,c2,sq,d8,dj,c3,s6,sa', 'ksS9AuuV8xkMtLJI', '233582', '2022-08-21 11:08:22', '2022-08-21 11:08:35'),
(53, 2, 'Packages\\GameVideoPoker\\Models\\GameVideoPoker', 28, '5.00', '0.00', 1, 'c2,c5,h7,dq,c3,h5,sj,c8,h2,s9,d8,d7,d3,c6,ht,ca,hj,c7,hk,s7,c4,cj,dj,s2,da,st,ha,ck,sk,sq,d6,h6,sa,s3,s6,ct,s5,s8,c9,s4,hq,d4,h3,d9,dk,d2,h4,d5,h9,h8,dt,cq', 'FvrrnlzkDdgJLXXu', '761423', '2022-08-21 11:08:35', '2022-08-21 11:08:46'),
(54, 2, 'Packages\\GameVideoPoker\\Models\\GameVideoPoker', 29, '5.00', '10.00', 1, 'ck,s4,st,d3,s3,sk,sq,s6,sj,hk,d9,h8,c2,d8,dq,c3,s5,h4,cj,da,ht,s2,s8,d6,h7,d4,dj,c9,dt,c6,d7,dk,h9,ha,h2,ca,d2,c5,cq,hq,s7,c8,c4,ct,h6,d5,h5,sa,s9,hj,h3,c7', 'jNIjY69FCQMBWdSf', '550287', '2022-08-21 11:08:46', '2022-08-21 11:09:05'),
(55, 2, 'Packages\\GameVideoPoker\\Models\\GameVideoPoker', 30, '5.00', '0.00', 1, 'c4,h2,c5,s5,c3,s7,sk,d6,ca,d8,c9,d9,s6,h9,c2,s4,dk,sq,ht,d4,da,h5,d2,h3,d3,s8,sa,c7,ck,s9,hj,s2,d7,h7,hk,c6,ct,h4,hq,dq,s3,ha,dj,d5,dt,sj,cq,h8,h6,cj,c8,st', 'cOKwHmxE3sam5tu8', '526928', '2022-08-21 11:09:05', '2022-08-21 11:10:05'),
(56, 2, 'Packages\\GameVideoPoker\\Models\\GameVideoPoker', 31, '5.00', '5.00', 1, 'h3,d7,h8,sk,d4,h2,d9,hj,ht,dt,s8,h5,s4,h9,d6,dq,c9,s3,s7,c4,da,c2,c5,cj,dj,sq,h6,h7,cq,ca,c6,ha,d2,d5,s2,h4,hk,s5,ct,ck,s9,c7,c8,c3,sa,st,s6,d3,dk,sj,hq,d8', 'I778rgNKYOJKUjao', '48921', '2022-08-21 11:10:05', '2022-08-21 11:10:18'),
(57, 2, 'Packages\\GameVideoPoker\\Models\\GameVideoPoker', 32, '5.00', '5.00', 1, 'ct,s5,hk,d9,sj,d2,sk,sq,c7,h4,dq,d8,dk,s2,s4,s6,d7,d5,s3,c3,sa,ht,h9,ck,da,hq,cj,cq,d3,c6,ha,h2,ca,h6,st,h8,s7,s8,c4,d4,s9,c9,d6,h3,h5,dj,hj,h7,c5,c2,c8,dt', 'dP966EagomhagaOi', '167078', '2022-08-21 11:10:18', '2022-08-21 11:11:19'),
(58, 2, 'Packages\\GameVideoPoker\\Models\\GameVideoPoker', 33, '5.00', '0.00', 0, 'c7,h3,ck,d4,h8,hj,s7,hk,h7,c8,d7,h5,s6,ht,c2,s4,cj,hq,d9,d3,ha,h9,dj,dq,s3,s9,st,ct,c9,h6,sk,ca,s2,sj,h4,s5,d5,dt,sa,d8,h2,c6,sq,d6,cq,c5,s8,da,c4,d2,dk,c3', 'AyiToBRZ5mTpemBH', '477756', '2022-08-21 11:11:19', '2022-08-21 11:11:24'),
(59, 2, 'Packages\\GameVideoPoker\\Models\\GameVideoPoker', 34, '0.00', '0.00', -1, 's5,sj,da,d2,c5,ct,sa,c3,c2,c4,d4,c7,c6,hq,c9,s2,s6,h6,d9,st,s8,dt,h8,d5,s7,h7,sk,h5,s4,ht,d7,hj,sq,cq,h9,ha,h3,d3,cj,s9,h2,d6,s3,hk,d8,c8,h4,dk,ca,ck,dq,dj', 'DFBku70ZwYCmYCRq', NULL, '2022-08-21 11:12:50', '2022-08-21 11:12:50'),
(60, 3, 'Packages\\GameVideoPoker\\Models\\GameVideoPoker', 35, '1.00', '0.00', 1, 'ct,sa,dj,h7,s6,dq,d2,s5,cj,h3,ca,h9,d3,ht,sk,s9,c6,c4,sq,h8,c8,d4,d5,d7,c3,c2,dt,dk,h5,c5,s7,c7,h2,s2,d6,s4,s8,da,c9,sj,hj,ck,d9,hq,st,cq,hk,h6,h4,ha,s3,d8', 'ii9MtdqJqTAxqhP8', '942704', '2022-08-30 18:55:13', '2022-08-30 18:56:27'),
(61, 3, 'Packages\\GameVideoPoker\\Models\\GameVideoPoker', 36, '1.00', '2.00', 1, 's3,d3,s2,d2,h5,h7,sa,d8,hq,h4,c6,s5,s7,dj,da,hk,dk,d6,c2,ck,sk,c5,hj,ha,ht,h2,ca,d7,c7,dq,s4,c8,sj,d4,sq,cq,cj,c3,h6,s6,h3,dt,st,d5,c9,c4,d9,s9,ct,h9,s8,h8', 'EGzHqNaUyGvksjbl', '730055', '2022-08-30 18:56:27', '2022-08-30 18:56:57'),
(62, 3, 'Packages\\GameVideoPoker\\Models\\GameVideoPoker', 37, '1.00', '1.00', 1, 'hq,s3,s8,h8,c3,s7,dj,c2,h3,dq,h9,h2,s4,dt,d4,ck,da,c5,ct,s9,h6,d5,d8,c6,c7,d6,sk,ca,c4,sa,d7,c9,sj,cq,d3,dk,d9,s6,h4,d2,hk,s5,st,h5,c8,sq,s2,ht,ha,cj,h7,hj', 'Okan61wnAG9U8bm9', '161782', '2022-08-30 18:56:57', '2022-08-30 18:57:43'),
(63, 3, 'Packages\\GameVideoPoker\\Models\\GameVideoPoker', 38, '1.00', '0.00', 1, 's9,ha,s3,h4,st,s8,d3,h8,cq,hq,h7,c8,dq,c7,ct,hk,s6,hj,h9,s4,d7,ck,c3,s7,h6,sq,sj,d2,d4,ca,sk,c9,dk,c4,h3,s2,d5,c5,d8,d6,dt,da,c6,ht,h2,sa,s5,h5,dj,cj,c2,d9', 'qCTWVC8ztpSqRYX3', '922143', '2022-08-30 18:57:43', '2022-08-31 07:19:45'),
(64, 3, 'Packages\\GameVideoPoker\\Models\\GameVideoPoker', 39, '0.00', '0.00', -1, 'ct,ha,h9,s8,s4,h5,h6,hk,sq,d8,h4,dq,dt,cq,s9,c3,h8,d9,ht,c8,c5,s2,s5,sj,s7,ck,d4,sk,sa,c7,c9,hq,da,st,d2,h2,h7,d7,d5,ca,c4,cj,s6,d3,d6,h3,c6,hj,dk,c2,s3,dj', '1OxDAzGG9zWvndDO', NULL, '2022-08-31 07:19:45', '2022-08-31 07:19:45');

-- --------------------------------------------------------

--
-- Table structure for table `game_slots`
--

CREATE TABLE `game_slots` (
  `id` int(10) UNSIGNED NOT NULL,
  `lines_bet` int(11) NOT NULL,
  `bet_amount` decimal(10,2) NOT NULL,
  `lines_win` int(11) NOT NULL,
  `scatters_count` int(11) NOT NULL,
  `reel_positions` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `game_slots`
--

INSERT INTO `game_slots` (`id`, `lines_bet`, `bet_amount`, `lines_win`, `scatters_count`, `reel_positions`, `created_at`, `updated_at`) VALUES
(1, 0, '0.00', 0, 0, '0,0,0,0,0', '2022-08-20 06:35:38', '2022-08-20 06:35:38'),
(2, 10, '1.00', 1, 0, '5,0,4,7,7', '2022-08-20 06:36:46', '2022-08-20 06:36:49'),
(3, 10, '1.00', 0, 0, '4,2,0,5,3', '2022-08-20 06:36:49', '2022-08-20 06:37:03'),
(4, 10, '1.00', 1, 0, '1,0,2,6,4', '2022-08-20 06:37:03', '2022-08-20 06:37:11'),
(5, 10, '1.00', 0, 0, '8,3,3,7,4', '2022-08-20 06:37:11', '2022-08-20 06:37:21'),
(6, 10, '1.00', 0, 0, '1,7,4,2,1', '2022-08-20 06:37:21', '2022-08-20 06:37:27'),
(7, 10, '1.00', 0, 4, '5,5,5,2,8', '2022-08-20 06:37:27', '2022-08-20 06:37:34'),
(8, 10, '1.00', 0, 0, '2,7,1,5,8', '2022-08-20 06:37:34', '2022-08-20 06:37:45'),
(9, 10, '1.00', 0, 0, '5,6,0,4,4', '2022-08-20 06:37:45', '2022-08-20 06:37:52'),
(10, 10, '1.00', 1, 0, '3,1,7,4,4', '2022-08-20 06:37:52', '2022-08-20 06:37:59'),
(11, 10, '1.00', 0, 0, '1,7,2,4,7', '2022-08-20 06:37:59', '2022-08-20 06:38:12'),
(12, 10, '1.00', 0, 0, '3,6,2,6,2', '2022-08-20 06:38:12', '2022-08-20 06:38:19'),
(13, 10, '1.00', 0, 0, '3,1,4,6,0', '2022-08-20 06:38:19', '2022-08-20 06:38:26'),
(14, 10, '1.00', 4, 0, '0,1,7,2,5', '2022-08-20 06:38:26', '2022-08-20 06:38:32'),
(15, 10, '1.00', 0, 0, '2,3,2,6,7', '2022-08-20 06:38:32', '2022-08-20 06:38:48'),
(16, 10, '1.00', 4, 0, '1,1,8,2,3', '2022-08-20 06:38:48', '2022-08-20 06:38:56'),
(17, 10, '1.00', 0, 4, '6,4,5,4,5', '2022-08-20 06:38:56', '2022-08-20 06:39:07'),
(18, 10, '1.00', 0, 0, '8,5,2,0,5', '2022-08-20 06:39:07', '2022-08-20 06:39:18'),
(19, 10, '1.00', 1, 0, '5,4,6,1,2', '2022-08-20 06:39:18', '2022-08-20 06:39:25'),
(20, 10, '1.00', 0, 0, '2,1,2,1,7', '2022-08-20 06:39:25', '2022-08-20 06:39:37'),
(21, 10, '1.00', 0, 0, '8,2,0,7,0', '2022-08-20 06:39:37', '2022-08-20 06:39:44'),
(22, 10, '1.00', 1, 0, '5,7,6,6,2', '2022-08-20 06:39:44', '2022-08-20 06:39:50'),
(23, 10, '1.00', 0, 0, '3,5,3,7,4', '2022-08-20 06:39:50', '2022-08-20 06:40:00'),
(24, 10, '1.00', 4, 0, '8,7,7,6,5', '2022-08-20 06:40:00', '2022-08-20 06:40:06'),
(25, 0, '0.00', 0, 0, '0,0,0,0,0', '2022-08-20 06:40:06', '2022-08-20 06:40:06');

-- --------------------------------------------------------

--
-- Table structure for table `game_video_poker`
--

CREATE TABLE `game_video_poker` (
  `id` int(10) UNSIGNED NOT NULL,
  `bet_coins` tinyint(4) NOT NULL,
  `bet_amount` decimal(10,2) NOT NULL,
  `deck` varchar(160) COLLATE utf8_unicode_ci NOT NULL,
  `hold` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `combination` mediumint(9) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `game_video_poker`
--

INSERT INTO `game_video_poker` (`id`, `bet_coins`, `bet_amount`, `deck`, `hold`, `combination`, `created_at`, `updated_at`) VALUES
(1, 1, '1.00', 'da,s9,cq,d7,d2,d4,c4,s6,s7,h8,ct,dk,h4,dt,sq,c5,s8,s3,dq,d6,d8,h5,c3,cj,d9,c6,hj,hq,d5,c2,c9,ck,st,ha,c7,s4,h3,s5,s2,h2,sk,h6,c8,h9,ca,ht,d3,h7,hk,dj,sa,sj', '2', 0, '2022-08-20 07:32:42', '2022-08-20 10:02:52'),
(2, 0, '0.00', 'c2,c3,c4,c5,c6,c7,c8,c9,ct,cj,cq,ck,ca,d2,d3,d4,d5,d6,d7,d8,d9,dt,dj,dq,dk,da,h2,h3,h4,h5,h6,h7,h8,h9,ht,hj,hq,hk,ha,s2,s3,s4,s5,s6,s7,s8,s9,st,sj,sq,sk,sa', NULL, NULL, '2022-08-20 09:30:00', '2022-08-20 09:30:00'),
(3, 1, '1.00', 'c6,sj,cq,s8,d9,h9,s3,h5,d7,d5,d3,h2,s7,s2,dq,c4,s9,dk,sk,d2,h6,ct,hq,c7,c9,dt,cj,s4,h8,sa,ha,h3,ck,s5,d4,hj,da,h7,hk,c8,ca,d8,d6,c2,h4,c3,dj,s6,c5,st,sq,ht', '0', 0, '2022-08-20 10:02:52', '2022-08-20 10:03:13'),
(4, 1, '1.00', 'c5,c4,ha,c9,ca,d6,st,c8,h3,s5,hk,ht,s9,sq,hj,s6,c3,cj,h8,sa,hq,cq,h9,dq,h4,h7,dj,da,d9,d2,d8,s8,dk,c6,h5,d3,sj,c7,ck,sk,s7,s3,d7,s2,dt,ct,h6,s4,d5,d4,h2,c2', '2,3,4', 1, '2022-08-20 10:03:13', '2022-08-20 10:03:37'),
(5, 1, '1.00', 'hq,ha,cj,s7,d3,dj,c3,sq,s8,h2,c7,cq,d9,ck,h9,s3,dk,d7,s5,sk,c8,da,dq,c6,ca,st,h4,d2,dt,sa,c5,h5,c4,d8,hj,h7,h6,sj,ct,hk,h3,h8,s4,s6,d6,ht,c2,s2,d5,s9,c9,d4', '0,2', 2, '2022-08-20 10:03:38', '2022-08-20 10:03:57'),
(6, 1, '1.00', 'dq,da,ck,dt,h7,d7,cq,hj,ht,s2,sq,c8,d8,ha,h3,c2,c9,c3,d3,d4,h6,hq,s4,cj,s8,st,c4,d6,c6,dj,h5,h8,h4,d9,h2,dk,sk,s3,d5,s7,sj,s9,c7,ca,c5,s6,ct,s5,h9,d2,sa,hk', '0,2', 1, '2022-08-20 10:03:57', '2022-08-20 10:04:17'),
(7, 1, '1.00', 'dq,s2,h4,h8,dt,ha,ca,hq,c7,sq,sa,c8,cq,ct,ck,s6,h6,d4,c5,c2,c9,d6,dj,s3,ht,d3,h2,d2,d8,h7,d7,c4,sj,s7,s8,h9,st,dk,hk,da,c6,h3,d9,s5,d5,s9,c3,s4,hj,cj,h5,sk', '3,4', 1, '2022-08-20 10:04:17', '2022-08-20 10:04:32'),
(8, 1, '1.00', 'h2,ha,ht,c4,h8,cj,s4,h9,d7,c3,c6,s3,sq,s5,d8,h4,hq,d9,s2,c7,d6,s9,dt,ca,da,s6,sk,h6,dj,c9,st,h5,sj,dq,hj,dk,c5,c2,d3,ck,hk,d4,d2,s8,h7,ct,c8,h3,sa,cq,s7,d5', '0,1,2,4', 0, '2022-08-20 10:04:32', '2022-08-20 10:04:51'),
(9, 1, '1.00', 'da,d6,c6,cj,sj,ha,h6,s3,ck,sq,hq,cq,c2,ca,c3,s2,s4,c5,d2,s5,h5,d9,h2,h3,ht,st,sk,dk,c7,hj,h7,c9,d8,dt,h9,ct,s6,d5,s9,dj,sa,dq,c4,h8,h4,s8,hk,d3,c8,s7,d4,d7', '3,4', 1, '2022-08-20 10:04:51', '2022-08-20 10:05:02'),
(10, 1, '1.00', 's5,ck,h3,c3,d2,d8,sj,h4,ct,s6,cq,h9,hq,d9,hj,dq,ht,hk,d6,c2,c5,d5,s3,sq,d4,ca,c8,sa,s2,ha,c6,dt,s7,cj,s4,h6,s8,h5,c4,d7,dk,da,c7,h7,sk,dj,h2,st,s9,h8,c9,d3', '2,3', 0, '2022-08-20 10:05:02', '2022-08-20 10:05:16'),
(11, 1, '1.00', 'ca,d9,s6,ct,st,ht,cj,ha,s2,hk,d4,c3,sa,dk,h4,s9,c5,dq,dt,hj,c7,da,dj,c8,s3,sq,c9,d6,c2,h9,sk,d8,s7,s5,s4,ck,s8,hq,h2,h6,h7,sj,d2,d7,d5,c6,d3,cq,h3,h5,h8,c4', '3,4', 3, '2022-08-20 10:05:16', '2022-08-20 10:05:27'),
(12, 1, '5.00', 'h4,s4,hk,sq,d2,dj,da,sk,hq,h3,st,s2,ck,s5,h8,c6,d8,ca,c4,s6,hj,c2,h5,c3,dk,sj,sa,s8,s9,ha,s7,c7,c9,c5,c8,d6,h7,ct,ht,d3,cj,dq,d9,cq,d4,h6,s3,d7,h2,dt,d5,h9', '2,3', 1, '2022-08-20 10:05:27', '2022-08-20 10:06:06'),
(13, 1, '5.00', 'dq,hj,h5,s2,c6,h4,d7,h2,hk,hq,st,ct,h7,h9,d9,d3,d8,sj,cj,s5,da,s9,dk,h8,s7,dj,s3,c3,sa,c8,dt,c5,ht,c7,ca,ck,c4,ha,s8,d4,h3,sk,s6,s4,cq,h6,d5,sq,d2,c9,d6,c2', '0,1', 0, '2022-08-20 10:06:06', '2022-08-20 10:06:18'),
(14, 1, '5.00', 'da,d9,ca,c7,d8,s2,dj,c9,c2,c3,h4,ck,dq,sa,dk,c4,cq,h8,ha,h3,s6,hq,h2,h6,s4,d5,ct,d6,sj,cj,dt,s3,h7,hk,ht,s7,sk,c5,s8,s9,h5,d2,h9,d7,c6,hj,s5,c8,d3,st,d4,sq', '1,3,4', 0, '2022-08-20 10:06:18', '2022-08-20 10:06:30'),
(15, 1, '5.00', 'd2,dt,s3,dj,ck,h4,s2,s7,d9,h3,ca,sq,da,h9,c8,dq,cq,cj,c2,s4,d7,c4,d4,s6,d5,d6,s5,dk,h2,h8,h6,c3,s8,hj,c6,sk,ht,ct,c5,st,d8,s9,c7,d3,h5,hk,sa,hq,c9,sj,ha,h7', '1,3', 0, '2022-08-20 10:06:30', '2022-08-20 10:06:40'),
(16, 1, '5.00', 's9,dq,sa,ca,h4,dj,d4,h7,h8,ct,h5,d7,d9,hq,d8,d5,d6,h6,sq,cj,hk,c8,s8,c5,d2,c9,s4,h3,c6,hj,h9,sk,ck,c4,s5,s3,cq,sj,s6,dt,d3,da,c2,c7,s7,c3,st,ht,dk,s2,ha,h2', '2,3', 1, '2022-08-20 10:06:40', '2022-08-20 10:06:49'),
(17, 1, '5.00', 'h7,sk,s3,d9,s8,h4,c4,h6,d4,h9,dq,sj,d6,s2,sa,ha,ct,ck,d5,c7,ht,dj,s7,dk,cj,st,s6,c2,sq,h8,s5,c8,cq,da,d2,s9,c9,d8,h5,c5,hq,c3,h2,ca,hk,h3,d3,c6,d7,s4,dt,hj', NULL, 0, '2022-08-20 10:06:49', '2022-08-20 10:06:59'),
(18, 1, '1.00', 'c4,s8,cj,sa,ct,st,dj,h7,d4,d2,h9,sk,d6,c7,da,ck,c6,c3,d5,s6,dq,s7,d7,d3,s4,s3,dt,h5,s5,c2,hj,h4,hq,s2,h3,c8,c5,ht,h2,c9,ha,cq,h8,sq,d8,ca,dk,s9,d9,sj,hk,h6', '1,4', 0, '2022-08-20 10:10:29', '2022-08-21 07:49:46'),
(19, 1, '1.00', 'sq,s5,ht,sk,dk,da,hq,h7,s8,c3,h8,d6,d5,hj,cq,d7,cj,ha,ca,s3,dq,d9,c6,sa,dt,s9,h3,h5,ck,c7,c4,d3,c5,h2,s6,d4,st,c8,s2,s4,ct,d2,h4,s7,sj,dj,d8,c2,h9,h6,c9,hk', '0,3,4', 2, '2022-08-21 07:49:46', '2022-08-21 07:53:33'),
(20, 1, '1.00', 'c2,c7,h2,c8,sa,h8,d8,cq,d3,sj,s7,dt,c9,cj,h5,dq,c6,s3,hq,h9,ha,d4,dj,h7,d7,d9,ca,d5,ht,s5,c5,dk,st,d6,h6,c4,sk,c3,d2,s8,da,s6,sq,h4,ck,s4,hk,hj,s2,ct,s9,h3', '1,2,3', 3, '2022-08-21 07:53:33', '2022-08-21 07:56:17'),
(21, 1, '1.00', 'd4,s9,h3,s7,ck,c8,s8,ca,cq,s6,c9,st,s4,c7,h2,c6,d6,d3,s5,hk,da,c4,h6,d7,dq,h4,ht,sq,h7,dk,dj,sj,sk,cj,c3,hq,d8,s2,s3,d9,h8,h9,h5,hj,sa,ha,c2,d5,dt,d2,ct,c5', '1,3', 0, '2022-08-21 07:56:17', '2022-08-21 08:06:10'),
(22, 1, '5.00', 'hk,ha,h5,s9,d6,h7,ck,h9,st,sk,hq,s3,s5,c9,dq,dt,c2,c8,d5,s4,dk,sj,d8,ca,c6,dj,h3,hj,da,s2,s6,d7,cq,h6,d4,c4,h4,ct,cj,d9,h2,ht,c7,c5,sq,sa,s7,d2,d3,h8,c3,s8', '2,4', 0, '2022-08-21 08:06:10', '2022-08-21 10:54:30'),
(23, 1, '5.00', 'd9,s8,cq,ht,ca,cj,s7,sa,s3,c3,hj,c6,h4,d4,ct,d5,hk,c9,hq,d8,dk,ck,s6,d3,h8,s5,sj,da,s9,c5,h7,dt,h3,c7,s4,st,dq,h9,sq,h5,c2,h6,sk,s2,d7,c4,d2,ha,d6,h2,c8,dj', '0,1,3', 4, '2022-08-21 10:54:30', '2022-08-21 10:54:53'),
(24, 5, '1.00', 's4,s2,sk,c3,dj,s9,d5,h9,ck,ct,dk,d6,h7,c7,s3,d4,sj,h2,c9,d8,s6,s8,dt,ca,s5,h6,h4,d9,st,ht,c4,hj,da,h5,hk,h3,h8,c8,c6,cq,sa,cj,c2,sq,c5,d2,d3,d7,dq,ha,hq,s7', '0,1', 0, '2022-08-21 10:54:53', '2022-08-21 11:07:59'),
(25, 5, '1.00', 'd4,h4,s2,dt,sk,h3,c5,ht,dk,h8,c4,h2,s3,s6,d8,d9,hk,d2,h9,s9,da,ca,cj,hq,d5,h6,ha,c2,sa,c7,hj,dq,h7,ck,sj,c9,d3,d7,c8,st,s5,s4,c6,dj,s7,h5,d6,cq,sq,ct,c3,s8', '0,1', 0, '2022-08-21 11:07:59', '2022-08-21 11:08:11'),
(26, 5, '1.00', 's3,c2,h3,c3,s2,ht,c7,cj,hk,dk,h9,s9,hq,h7,hj,s4,h2,sa,dq,c5,ca,d8,s7,s6,d2,c8,d5,ct,s5,st,c4,d7,ha,h6,dt,d6,sj,h5,h4,ck,da,cq,h8,sk,dj,c9,s8,d9,d4,sq,c6,d3', '0,2,3', 3, '2022-08-21 11:08:11', '2022-08-21 11:08:22'),
(27, 5, '1.00', 'd5,cj,ck,s5,c7,d6,h7,h8,c4,ht,ha,c9,dk,c6,s3,c5,d9,h6,h4,d2,h5,c8,sk,s8,h9,hq,s2,sj,st,d4,hk,d7,s7,d3,cq,ct,dt,da,c2,sq,d8,dj,c3,s6,sa,s4,h2,s9,h3,dq,ca,hj', '1,2', 0, '2022-08-21 11:08:22', '2022-08-21 11:08:35'),
(28, 5, '1.00', 'h9,h8,dt,cq,c2,c5,h7,dq,c3,h5,sj,c8,h2,s9,d8,d7,d3,c6,ht,ca,hj,c7,hk,s7,c4,cj,dj,s2,da,st,ha,ck,sk,sq,d6,h6,sa,s3,s6,ct,s5,s8,c9,s4,hq,d4,h3,d9,dk,d2,h4,d5', '0,1', 0, '2022-08-21 11:08:35', '2022-08-21 11:08:46'),
(29, 5, '1.00', 'h9,ha,h2,ca,d2,c5,cq,hq,s7,c8,c4,ct,h6,d5,h5,sa,s9,hj,h3,c7,ck,s4,st,d3,s3,sk,sq,s6,sj,hk,d9,h8,c2,d8,dq,c3,s5,h4,cj,da,ht,s2,s8,d6,h7,d4,dj,c9,dt,c6,d7,dk', '1,2,3,4', 2, '2022-08-21 11:08:46', '2022-08-21 11:09:05'),
(30, 5, '1.00', 'd9,s6,h9,c2,s4,dk,sq,ht,d4,da,h5,d2,h3,d3,s8,sa,c7,ck,s9,hj,s2,d7,h7,hk,c6,ct,h4,hq,dq,s3,ha,dj,d5,dt,sj,cq,h8,h6,cj,c8,st,c4,h2,c5,s5,c3,s7,sk,d6,ca,d8,c9', '0,2', 0, '2022-08-21 11:09:05', '2022-08-21 11:10:05'),
(31, 5, '1.00', 'hk,s5,ct,ck,s9,c7,c8,c3,sa,st,s6,d3,dk,sj,hq,d8,h3,d7,h8,sk,d4,h2,d9,hj,ht,dt,s8,h5,s4,h9,d6,dq,c9,s3,s7,c4,da,c2,c5,cj,dj,sq,h6,h7,cq,ca,c6,ha,d2,d5,s2,h4', '0,3', 1, '2022-08-21 11:10:05', '2022-08-21 11:10:18'),
(32, 5, '1.00', 'ht,h9,ck,da,hq,cj,cq,d3,c6,ha,h2,ca,h6,st,h8,s7,s8,c4,d4,s9,c9,d6,h3,h5,dj,hj,h7,c5,c2,c8,dt,ct,s5,hk,d9,sj,d2,sk,sq,c7,h4,dq,d8,dk,s2,s4,s6,d7,d5,s3,c3,sa', '0,1,4', 1, '2022-08-21 11:10:18', '2022-08-21 11:11:19'),
(33, 5, '1.00', 'd3,ha,h9,dj,dq,s3,s9,st,ct,c9,h6,sk,ca,s2,sj,h4,s5,d5,dt,sa,d8,h2,c6,sq,d6,cq,c5,s8,da,c4,d2,dk,c3,c7,h3,ck,d4,h8,hj,s7,hk,h7,c8,d7,h5,s6,ht,c2,s4,cj,hq,d9', NULL, 0, '2022-08-21 11:11:19', '2022-08-21 11:11:24'),
(34, 0, '0.00', 'c2,c3,c4,c5,c6,c7,c8,c9,ct,cj,cq,ck,ca,d2,d3,d4,d5,d6,d7,d8,d9,dt,dj,dq,dk,da,h2,h3,h4,h5,h6,h7,h8,h9,ht,hj,hq,hk,ha,s2,s3,s4,s5,s6,s7,s8,s9,st,sj,sq,sk,sa', NULL, NULL, '2022-08-21 11:12:50', '2022-08-21 11:12:50'),
(35, 1, '1.00', 's3,d8,ct,sa,dj,h7,s6,dq,d2,s5,cj,h3,ca,h9,d3,ht,sk,s9,c6,c4,sq,h8,c8,d4,d5,d7,c3,c2,dt,dk,h5,c5,s7,c7,h2,s2,d6,s4,s8,da,c9,sj,hj,ck,d9,hq,st,cq,hk,h6,h4,ha', '1,2', 0, '2022-08-30 18:55:13', '2022-08-30 18:56:27'),
(36, 1, '1.00', 'sj,d4,sq,cq,cj,c3,h6,s6,h3,dt,st,d5,c9,c4,d9,s9,ct,h9,s8,h8,s3,d3,s2,d2,h5,h7,sa,d8,hq,h4,c6,s5,s7,dj,da,hk,dk,d6,c2,ck,sk,c5,hj,ha,ht,h2,ca,d7,c7,dq,s4,c8', '2,3', 2, '2022-08-30 18:56:27', '2022-08-30 18:56:57'),
(37, 1, '1.00', 'cq,d3,dk,d9,s6,h4,d2,hk,s5,st,h5,c8,sq,s2,ht,ha,cj,h7,hj,hq,s3,s8,h8,c3,s7,dj,c2,h3,dq,h9,h2,s4,dt,d4,ck,da,c5,ct,s9,h6,d5,d8,c6,c7,d6,sk,ca,c4,sa,d7,c9,sj', '0,2', 1, '2022-08-30 18:56:57', '2022-08-30 18:57:43'),
(38, 1, '1.00', 'cj,c2,d9,s9,ha,s3,h4,st,s8,d3,h8,cq,hq,h7,c8,dq,c7,ct,hk,s6,hj,h9,s4,d7,ck,c3,s7,h6,sq,sj,d2,d4,ca,sk,c9,dk,c4,h3,s2,d5,c5,d8,d6,dt,da,c6,ht,h2,sa,s5,h5,dj', '2,3', 0, '2022-08-30 18:57:43', '2022-08-31 07:19:45'),
(39, 0, '0.00', 'c2,c3,c4,c5,c6,c7,c8,c9,ct,cj,cq,ck,ca,d2,d3,d4,d5,d6,d7,d8,d9,dt,dj,dq,dk,da,h2,h3,h4,h5,h6,h7,h8,h9,ht,hj,hq,hk,ha,s2,s3,s4,s5,s6,s7,s8,s9,st,sj,sq,sk,sa', NULL, NULL, '2022-08-31 07:19:45', '2022-08-31 07:19:45');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_11_28_000000_create_accounts_table', 1),
(4, '2018_11_28_000001_create_account_transactions_table', 1),
(5, '2018_11_29_000000_create_games_table', 1),
(6, '2018_11_29_000001_create_game_slots_table', 1),
(7, '2019_01_14_114519_alter_games_table_delete_result', 1),
(8, '2019_01_14_160000_alter_games_table_add_status', 1),
(9, '2019_02_18_101050_alter_users_table_add_referrer_id', 1),
(10, '2019_02_18_131502_create_referral_bonuses_table', 1),
(11, '2019_02_19_125624_create_chat_messages_table', 1),
(12, '2019_03_05_072317_create_debits_table', 1),
(13, '2019_03_05_072644_create_credits_table', 1),
(14, '2019_03_11_101041_alter_games_table_add_secret_seed', 1),
(15, '2019_03_13_142811_alter_game_slots_table_add_bet_amount', 1),
(16, '2019_06_13_095842_alter_users_table_add2_f_a_secret', 1),
(17, '2019_07_16_070139_alter_users_table_add_referrer_fields', 1),
(18, '2019_09_18_150215_alter_referral_bonuses_table_add_account_id_foreign_key', 1),
(19, '2019_09_19_085844_alter_users_table_modify_referrer_fields', 1),
(20, '2019_09_26_091033_create_commands_table', 1),
(21, '2019_10_03_100000_create_social_profiles_table', 1),
(22, '2019_01_14_162209_create_game_video_poker_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_profiles`
--

CREATE TABLE `social_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `provider_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `provider_user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `referrer_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `totp_secret` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `referee_sign_up_credits` int(10) UNSIGNED DEFAULT NULL,
  `referrer_sign_up_credits` int(10) UNSIGNED DEFAULT NULL,
  `referrer_game_loss_pct` decimal(8,2) UNSIGNED DEFAULT NULL,
  `referrer_game_win_pct` decimal(8,2) UNSIGNED DEFAULT NULL,
  `referrer_deposit_pct` decimal(8,2) UNSIGNED DEFAULT NULL,
  `last_login_from` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_login_at` datetime DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `referrer_id`, `name`, `email`, `role`, `status`, `password`, `remember_token`, `totp_secret`, `referee_sign_up_credits`, `referrer_sign_up_credits`, `referrer_game_loss_pct`, `referrer_game_win_pct`, `referrer_deposit_pct`, `last_login_from`, `last_login_at`, `email_verified_at`, `created_at`, `updated_at`) VALUES
(1, NULL, 'admin', 'admin@gmail.com', 'ADMIN', 0, '$2y$10$3WCuTdh7lvtzxeX9/XoY/OCMRbWpeENqs8tf3Sz1puXJxR6qg0Z7.', 'cBcoQ9sH7kKIcpIKhe8lxVupZc7R9b4Yctm4IhZmghYisbq7nommzzH7X6y0', NULL, NULL, NULL, NULL, NULL, NULL, '172.18.0.6', '2022-08-20 09:29:55', '2022-08-20 06:29:19', '2022-08-20 06:29:19', '2022-08-20 09:29:55'),
(2, NULL, 'Hitesh', 'hiteshmittal1990@gmail.com', 'USER', 0, '$2y$10$ud4IyWcIsKjKPd3evY9B5ujxgA6j3n9kNBE4tl.jsc8HTRt.IHsRy', '94jEyIfhIfdYXzaSVKgLqksfwD3xOmD3yNJCTGuFZyRYKpNJkol1ZNvT8eBM', NULL, NULL, NULL, NULL, NULL, NULL, '172.18.0.6', '2022-08-30 18:20:36', NULL, '2022-08-20 06:36:35', '2022-08-30 18:20:36'),
(3, NULL, 'test', 'test@gmail.com', 'USER', 0, '$2y$10$aCoxfst7pTFo033t8c.AkuyfCYos3smzsEm6u7y7iRv3t2TijmJra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '172.18.0.6', '2022-08-31 07:18:18', NULL, '2022-08-30 18:54:33', '2022-08-31 07:18:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_code_unique` (`code`),
  ADD KEY `accounts_user_id_foreign` (`user_id`);

--
-- Indexes for table `account_transactions`
--
ALTER TABLE `account_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_transactions_morph` (`transactionable_type`,`transactionable_id`),
  ADD KEY `account_transactions_account_id_foreign` (`account_id`);

--
-- Indexes for table `bonuses`
--
ALTER TABLE `bonuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bonuses_account_id_foreign` (`account_id`);

--
-- Indexes for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_messages_user_id_foreign` (`user_id`);

--
-- Indexes for table `commands`
--
ALTER TABLE `commands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `commands_class_unique` (`class`);

--
-- Indexes for table `credits`
--
ALTER TABLE `credits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `credits_account_id_foreign` (`account_id`);

--
-- Indexes for table `debits`
--
ALTER TABLE `debits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `debits_account_id_foreign` (`account_id`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`),
  ADD KEY `game_morph` (`gameable_type`,`gameable_id`),
  ADD KEY `games_account_id_foreign` (`account_id`),
  ADD KEY `games_status_index` (`status`);

--
-- Indexes for table `game_slots`
--
ALTER TABLE `game_slots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `game_video_poker`
--
ALTER TABLE `game_video_poker`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `social_profiles`
--
ALTER TABLE `social_profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_profiles_provider_name_provider_user_id_unique` (`provider_name`,`provider_user_id`),
  ADD KEY `social_profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_name_unique` (`name`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_index` (`role`),
  ADD KEY `users_status_index` (`status`),
  ADD KEY `users_referrer_id_foreign` (`referrer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `account_transactions`
--
ALTER TABLE `account_transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `bonuses`
--
ALTER TABLE `bonuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `chat_messages`
--
ALTER TABLE `chat_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `commands`
--
ALTER TABLE `commands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `credits`
--
ALTER TABLE `credits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `debits`
--
ALTER TABLE `debits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `game_slots`
--
ALTER TABLE `game_slots`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `game_video_poker`
--
ALTER TABLE `game_video_poker`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `social_profiles`
--
ALTER TABLE `social_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `account_transactions`
--
ALTER TABLE `account_transactions`
  ADD CONSTRAINT `account_transactions_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bonuses`
--
ALTER TABLE `bonuses`
  ADD CONSTRAINT `bonuses_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD CONSTRAINT `chat_messages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `credits`
--
ALTER TABLE `credits`
  ADD CONSTRAINT `credits_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `debits`
--
ALTER TABLE `debits`
  ADD CONSTRAINT `debits_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `games`
--
ALTER TABLE `games`
  ADD CONSTRAINT `games_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `social_profiles`
--
ALTER TABLE `social_profiles`
  ADD CONSTRAINT `social_profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_referrer_id_foreign` FOREIGN KEY (`referrer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
