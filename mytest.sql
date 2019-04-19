-- phpMyAdmin SQL Dump
-- version 4.0.10deb1ubuntu0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 19, 2019 at 11:52 PM
-- Server version: 5.5.57-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mytest`
--

-- --------------------------------------------------------

--
-- Table structure for table `Category`
--

CREATE TABLE IF NOT EXISTS `Category` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `Category`
--

INSERT INTO `Category` (`id`, `name`, `created_at`) VALUES
(1, 'electronic', NULL),
(2, 'man', NULL),
(3, 'women', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2019_04_18_210517_category', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Subcategory`
--

CREATE TABLE IF NOT EXISTS `Subcategory` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `Subcategory`
--

INSERT INTO `Subcategory` (`id`, `name`, `category_id`, `created_at`) VALUES
(1, 'mobile', 1, NULL),
(2, 'tablet', 1, NULL),
(3, 'desktop', 1, NULL),
(4, 'laptop', 1, NULL),
(5, 'shirt', 2, NULL),
(6, 't-shirt', 2, NULL),
(7, 'jeans', 2, NULL),
(8, 'shoes', 2, NULL),
(9, 'top', 3, NULL),
(10, 'earing', 3, NULL),
(11, 'bags', 3, NULL),
(12, 'sandel', 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_of_user` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `type_of_user`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'kalam', 'kalam@gmail.com', NULL, NULL, '$2y$10$FPvw6pQWELfDqGXPOZLit.DehoIRq4220GjCd/j0Ekt6u3L4CIzvS', NULL, '2019-04-16 09:16:25', '2019-04-16 09:16:25'),
(2, 'ka', 'ka@gmail.com', '1', NULL, '$2y$10$2UtwZ73pfWaALcDwCaRcuuctk3saLUc0SQyhcHStH7Di3ZLXqmfTO', NULL, '2019-04-16 09:53:42', '2019-04-16 09:53:42'),
(3, 'sam', 'sam@gmail.com', '2', NULL, '$2y$10$kw.WO6DF1kAvDcAszRsWiuJQdvlcqj.PLh7TOa1msc/5paGRrHuvO', NULL, '2019-04-16 09:54:49', '2019-04-16 09:54:49'),
(4, 'kalam', 'kalam1@gmail.com', '1', NULL, '$2y$10$d9dCepsWstcITn7Py4/0XubjHS9KcGiKbbrSNgE9iBgRz8KKnlusu', NULL, '2019-04-16 09:56:31', '2019-04-16 09:56:31'),
(5, 'sam', 'sam1@gmail.com', '2', NULL, '$2y$10$WKa8Yg09gUscf8NMZD45t.SaaB6FTNOlUr0HKQiuMrJFrs3P6pDIe', NULL, '2019-04-16 13:37:01', '2019-04-16 13:37:01'),
(6, 'kalam shaikh', 'kalam12@gmail.com', '1', NULL, '$2y$10$fJ8ky.6PhRUIvL1Gz8OXluulb80Wa2OdfsLaRIirzI6E74H/ns9Y2', NULL, '2019-04-16 14:26:38', '2019-04-16 14:26:38'),
(7, 'javed', 'ja@gmail.com', '1', NULL, '$2y$10$VdAh7aarqPb5O.TLQ5fpdu23fi6C4/SiA9lKGs9nw1kC8LXT35ST.', NULL, '2019-04-18 15:56:00', '2019-04-18 15:56:00'),
(8, 'haris', 'haris@gmail.com', '2', NULL, '$2y$10$mNzzc56P/1c6BKQfaOE0c.SUohc4uvPenIwyP/y1S.1Bum6u.geNu', NULL, '2019-04-19 06:21:33', '2019-04-19 06:21:33');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
