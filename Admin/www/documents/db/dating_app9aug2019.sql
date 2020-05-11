-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 09, 2019 at 02:11 PM
-- Server version: 5.7.21
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dating_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `audits`
--

DROP TABLE IF EXISTS `audits`;
CREATE TABLE IF NOT EXISTS `audits` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `event` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auditable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auditable_id` bigint(20) UNSIGNED NOT NULL,
  `old_values` text COLLATE utf8mb4_unicode_ci,
  `new_values` text COLLATE utf8mb4_unicode_ci,
  `url` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audits_auditable_type_auditable_id_index` (`auditable_type`,`auditable_id`),
  KEY `audits_user_id_user_type_index` (`user_id`,`user_type`)
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audits`
--

INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 1, '[]', '[]', 'http://localhost/wisdonspoon/www/public/login', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:67.0) Gecko/20100101 Firefox/67.0', NULL, '2019-06-11 00:52:19', '2019-06-11 00:52:19'),
(2, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 1, '{\"timezone\":null,\"last_login_at\":null,\"last_login_ip\":null}', '{\"timezone\":\"America\\/New_York\",\"last_login_at\":\"2019-06-11 06:22:19\",\"last_login_ip\":\"::1\"}', 'http://localhost/wisdonspoon/www/public/login', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:67.0) Gecko/20100101 Firefox/67.0', NULL, '2019-06-11 00:52:19', '2019-06-11 00:52:19'),
(3, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 1, '[]', '[]', 'http://localhost/wisdonspoon/www/public/logout', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:67.0) Gecko/20100101 Firefox/67.0', NULL, '2019-06-11 01:01:09', '2019-06-11 01:01:09'),
(4, 'App\\Models\\Auth\\User', 3, 'updated', 'App\\Models\\Auth\\User', 3, '[]', '[]', 'http://localhost/wisdonspoon/www/public/login', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:67.0) Gecko/20100101 Firefox/67.0', NULL, '2019-06-11 01:01:18', '2019-06-11 01:01:18'),
(5, 'App\\Models\\Auth\\User', 3, 'updated', 'App\\Models\\Auth\\User', 3, '{\"timezone\":null,\"last_login_at\":null,\"last_login_ip\":null}', '{\"timezone\":\"America\\/New_York\",\"last_login_at\":\"2019-06-11 06:31:18\",\"last_login_ip\":\"::1\"}', 'http://localhost/wisdonspoon/www/public/login', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:67.0) Gecko/20100101 Firefox/67.0', NULL, '2019-06-11 01:01:18', '2019-06-11 01:01:18'),
(6, 'App\\Models\\Auth\\User', 3, 'updated', 'App\\Models\\Auth\\User', 3, '{\"avatar_type\":\"gravatar\",\"avatar_location\":null}', '{\"avatar_type\":\"storage\",\"avatar_location\":\"avatars\\/uyTi5ZkgG6O4sxENcJyMu0ZdnPtYcwXh2r6i8SEA.jpeg\"}', 'http://localhost/wisdonspoon/www/public/profile/update', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:67.0) Gecko/20100101 Firefox/67.0', NULL, '2019-06-11 01:02:38', '2019-06-11 01:02:38'),
(7, 'App\\Models\\Auth\\User', 3, 'updated', 'App\\Models\\Auth\\User', 3, '{\"avatar_type\":\"storage\",\"avatar_location\":\"avatars\\/uyTi5ZkgG6O4sxENcJyMu0ZdnPtYcwXh2r6i8SEA.jpeg\"}', '{\"avatar_type\":\"gravatar\",\"avatar_location\":null}', 'http://localhost/wisdonspoon/www/public/profile/update', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:67.0) Gecko/20100101 Firefox/67.0', NULL, '2019-06-11 01:03:02', '2019-06-11 01:03:02'),
(8, 'App\\Models\\Auth\\User', 3, 'updated', 'App\\Models\\Auth\\User', 3, '[]', '[]', 'http://localhost/wisdonspoon/www/public/logout', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:67.0) Gecko/20100101 Firefox/67.0', NULL, '2019-06-11 01:03:24', '2019-06-11 01:03:24'),
(9, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 1, '{\"last_login_at\":\"2019-06-11 06:22:19\"}', '{\"last_login_at\":\"2019-06-11 06:33:39\"}', 'http://localhost/wisdonspoon/www/public/login', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:67.0) Gecko/20100101 Firefox/67.0', NULL, '2019-06-11 01:03:40', '2019-06-11 01:03:40'),
(10, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 1, '[]', '[]', 'http://localhost/wisdonspoon/www/public/logout', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:67.0) Gecko/20100101 Firefox/67.0', NULL, '2019-06-11 01:13:12', '2019-06-11 01:13:12'),
(11, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 1, '{\"last_login_at\":\"2019-06-11 06:33:39\"}', '{\"last_login_at\":\"2019-06-11 06:45:31\"}', 'http://localhost/wisdonspoon/www/public/login', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:67.0) Gecko/20100101 Firefox/67.0', NULL, '2019-06-11 01:15:43', '2019-06-11 01:15:43'),
(12, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 1, '[]', '[]', 'http://localhost/wisdonspoon/www/public/logout', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:67.0) Gecko/20100101 Firefox/67.0', NULL, '2019-06-11 01:45:19', '2019-06-11 01:45:19'),
(13, 'App\\Models\\Auth\\User', 3, 'updated', 'App\\Models\\Auth\\User', 3, '{\"last_login_at\":\"2019-06-11 06:31:18\"}', '{\"last_login_at\":\"2019-06-11 07:15:29\"}', 'http://localhost/wisdonspoon/www/public/login', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:67.0) Gecko/20100101 Firefox/67.0', NULL, '2019-06-11 01:45:30', '2019-06-11 01:45:30'),
(14, 'App\\Models\\Auth\\User', 3, 'updated', 'App\\Models\\Auth\\User', 3, '{\"avatar_type\":\"gravatar\",\"avatar_location\":null}', '{\"avatar_type\":\"storage\",\"avatar_location\":\"avatars\\/LRvU6d4ukU7PzZULp1AHLd0fnBo6HThnf5FwVsE9.jpeg\"}', 'http://localhost/wisdonspoon/www/public/profile/update', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:67.0) Gecko/20100101 Firefox/67.0', NULL, '2019-06-11 01:46:21', '2019-06-11 01:46:21'),
(15, 'App\\Models\\Auth\\User', 3, 'updated', 'App\\Models\\Auth\\User', 3, '[]', '[]', 'http://localhost/wisdonspoon/www/public/logout', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:67.0) Gecko/20100101 Firefox/67.0', NULL, '2019-06-11 01:46:50', '2019-06-11 01:46:50'),
(16, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 1, '{\"last_login_at\":\"2019-06-11 06:45:31\"}', '{\"last_login_at\":\"2019-06-11 07:24:47\"}', 'http://localhost/wisdonspoon/www/public/login', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:67.0) Gecko/20100101 Firefox/67.0', NULL, '2019-06-11 01:54:47', '2019-06-11 01:54:47'),
(17, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 1, '{\"last_login_at\":\"2019-06-11 07:24:47\"}', '{\"last_login_at\":\"2019-08-03 06:28:01\"}', 'http://localhost/loai/dating/www/public/login', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.87 Safari/537.36', NULL, '2019-08-03 00:58:03', '2019-08-03 00:58:03'),
(18, 'App\\Models\\Auth\\User', 1, 'created', 'App\\Models\\Auth\\User', 4, '[]', '{\"first_name\":\"Selma\",\"last_name\":\"Snyder\",\"email\":\"nykyserofi@mailinator.com\",\"active\":\"1\",\"uuid\":\"6d3ad3f6-003b-40ef-9db6-791e47af364b\"}', 'http://localhost/loai/dating/www/public/admin/user', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.87 Safari/537.36', NULL, '2019-08-03 01:13:44', '2019-08-03 01:13:44'),
(19, 'App\\Models\\Auth\\User', 1, 'created', 'App\\Models\\Auth\\User', 5, '[]', '{\"first_name\":\"Blake\",\"last_name\":\"Swanson\",\"email\":\"bibo@mailinator.net\",\"active\":\"1\",\"confirmed\":\"1\",\"uuid\":\"45a14ad7-1bf4-4c83-8cef-7edee1a65519\"}', 'http://localhost/loai/dating/www/public/admin/user', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.87 Safari/537.36', NULL, '2019-08-03 01:14:02', '2019-08-03 01:14:02'),
(20, 'App\\Models\\Auth\\User', 1, 'created', 'App\\Models\\Auth\\User', 6, '[]', '{\"first_name\":\"Jeremy\",\"last_name\":\"Cantu\",\"email\":\"qymotude@mailinator.net\",\"active\":\"1\",\"confirmed\":\"1\",\"uuid\":\"4d94d456-cc5a-42d5-a1ad-d5c20c42834e\"}', 'http://localhost/loai/dating/www/public/admin/user', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.87 Safari/537.36', NULL, '2019-08-03 01:14:15', '2019-08-03 01:14:15'),
(21, 'App\\Models\\Auth\\User', 1, 'created', 'App\\Models\\Auth\\User', 7, '[]', '{\"first_name\":\"Gavin\",\"last_name\":\"Gentry\",\"email\":\"suveqoc@mailinator.com\",\"active\":\"1\",\"confirmed\":\"1\",\"uuid\":\"5bdc47d6-d55c-4546-b4c9-5689c2cbb029\"}', 'http://localhost/loai/dating/www/public/admin/user', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.87 Safari/537.36', NULL, '2019-08-03 01:14:24', '2019-08-03 01:14:24'),
(22, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 7, '{\"active\":1}', '{\"active\":0}', 'http://localhost/loai/dating/www/public/admin/user/changestatus/7', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.87 Safari/537.36', NULL, '2019-08-03 01:14:31', '2019-08-03 01:14:31'),
(23, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 6, '{\"active\":1}', '{\"active\":0}', 'http://localhost/loai/dating/www/public/admin/user/changestatus/6', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.87 Safari/537.36', NULL, '2019-08-03 01:14:36', '2019-08-03 01:14:36'),
(24, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 4, '{\"active\":1}', '{\"active\":0}', 'http://localhost/loai/dating/www/public/admin/user/changestatus/4', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.87 Safari/537.36', NULL, '2019-08-03 01:14:43', '2019-08-03 01:14:43'),
(25, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 4, '{\"active\":0}', '{\"active\":1}', 'http://localhost/loai/dating/www/public/admin/user/changestatus/4', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.87 Safari/537.36', NULL, '2019-08-03 01:14:48', '2019-08-03 01:14:48'),
(26, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 4, '{\"active\":1}', '{\"active\":0}', 'http://localhost/loai/dating/www/public/admin/user/changestatus/4', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.87 Safari/537.36', NULL, '2019-08-03 01:14:55', '2019-08-03 01:14:55'),
(27, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 4, '{\"confirmed\":0}', '{\"confirmed\":true}', 'http://localhost/loai/dating/www/public/admin/auth/user/4/confirm', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.87 Safari/537.36', NULL, '2019-08-03 01:19:55', '2019-08-03 01:19:55'),
(28, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 6, '{\"confirmed\":1}', '{\"confirmed\":false}', 'http://localhost/loai/dating/www/public/admin/auth/user/6/unconfirm', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.87 Safari/537.36', NULL, '2019-08-03 01:20:23', '2019-08-03 01:20:23'),
(29, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 1, '{\"last_login_at\":\"2019-08-03 06:28:01\"}', '{\"last_login_at\":\"2019-08-03 08:57:39\"}', 'http://localhost/loai/dating/www/public/login', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.87 Safari/537.36', NULL, '2019-08-03 03:27:40', '2019-08-03 03:27:40'),
(30, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 1, '[]', '[]', 'http://localhost/loai/dating/www/public/logout', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.87 Safari/537.36', NULL, '2019-08-03 03:28:12', '2019-08-03 03:28:12'),
(31, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 1, '{\"last_login_at\":\"2019-08-03 08:57:39\"}', '{\"last_login_at\":\"2019-08-03 08:58:17\"}', 'http://localhost/loai/dating/www/public/login', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.87 Safari/537.36', NULL, '2019-08-03 03:28:17', '2019-08-03 03:28:17'),
(32, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 6, '{\"confirmed\":0}', '{\"confirmed\":true}', 'http://localhost/loai/dating/www/public/admin/auth/user/6/confirm', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.87 Safari/537.36', NULL, '2019-08-03 03:28:31', '2019-08-03 03:28:31'),
(33, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 7, '{\"active\":0}', '{\"active\":1}', 'http://localhost/loai/dating/www/public/admin/user/changestatus/7', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.87 Safari/537.36', NULL, '2019-08-03 03:34:13', '2019-08-03 03:34:13'),
(34, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 1, '{\"last_login_at\":\"2019-08-03 08:58:17\"}', '{\"last_login_at\":\"2019-08-03 11:07:57\"}', 'http://localhost/loai/dating/www/public/login', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.87 Safari/537.36', NULL, '2019-08-03 05:37:58', '2019-08-03 05:37:58'),
(35, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 1, '{\"last_login_at\":\"2019-08-03 11:07:57\"}', '{\"last_login_at\":\"2019-08-05 04:28:25\"}', 'http://localhost/loai/dating/www/public/login', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.87 Safari/537.36', NULL, '2019-08-04 22:58:30', '2019-08-04 22:58:30'),
(36, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 1, '{\"last_login_at\":\"2019-08-05 04:28:25\"}', '{\"last_login_at\":\"2019-08-05 06:21:32\"}', 'http://localhost/loai/dating/www/public/login', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.87 Safari/537.36', NULL, '2019-08-05 00:51:33', '2019-08-05 00:51:33'),
(37, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 1, '{\"last_login_at\":\"2019-08-05 06:21:32\"}', '{\"last_login_at\":\"2019-08-05 09:19:12\"}', 'http://localhost/loai/dating/www/public/login', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:69.0) Gecko/20100101 Firefox/69.0', NULL, '2019-08-05 03:49:15', '2019-08-05 03:49:15'),
(38, 'App\\Models\\Auth\\User', 1, 'created', 'App\\Models\\Auth\\User', 8, '[]', '{\"first_name\":\"Tetsing\",\"last_name\":\"user\",\"email\":\"dinesharsti@mailinator.com\",\"active\":\"1\",\"confirmed\":\"1\",\"uuid\":\"386f8c53-b5c2-437d-b4fe-222b93a18371\"}', 'http://localhost/loai/dating/www/public/admin/user', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:69.0) Gecko/20100101 Firefox/69.0', NULL, '2019-08-05 03:54:48', '2019-08-05 03:54:48'),
(39, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 8, '{\"active\":1}', '{\"active\":0}', 'http://localhost/loai/dating/www/public/admin/user/changestatus/8', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:69.0) Gecko/20100101 Firefox/69.0', NULL, '2019-08-05 03:55:15', '2019-08-05 03:55:15'),
(40, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 4, '{\"active\":0}', '{\"active\":1}', 'http://localhost/loai/dating/www/public/admin/user/changestatus/4', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:69.0) Gecko/20100101 Firefox/69.0', NULL, '2019-08-05 03:55:24', '2019-08-05 03:55:24'),
(41, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 5, '{\"confirmed\":0}', '{\"confirmed\":true}', 'http://localhost/loai/dating/www/public/admin/user/confirm/5', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:69.0) Gecko/20100101 Firefox/69.0', NULL, '2019-08-05 04:24:17', '2019-08-05 04:24:17'),
(42, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 1, '{\"last_login_at\":\"2019-08-05 09:19:12\"}', '{\"last_login_at\":\"2019-08-05 09:58:16\"}', 'http://localhost/loai/dating/www/public/login', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:69.0) Gecko/20100101 Firefox/69.0', NULL, '2019-08-05 04:28:17', '2019-08-05 04:28:17'),
(43, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 8, '{\"confirmed\":0}', '{\"confirmed\":true}', 'http://localhost/loai/dating/www/public/admin/user/confirm/8', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:69.0) Gecko/20100101 Firefox/69.0', NULL, '2019-08-05 04:28:25', '2019-08-05 04:28:25'),
(44, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 7, '{\"confirmed\":0}', '{\"confirmed\":true}', 'http://localhost/loai/dating/www/public/admin/user/confirm/7', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:69.0) Gecko/20100101 Firefox/69.0', NULL, '2019-08-05 04:28:56', '2019-08-05 04:28:56'),
(45, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 6, '{\"confirmed\":0}', '{\"confirmed\":true}', 'http://localhost/loai/dating/www/public/admin/user/confirm/6', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:69.0) Gecko/20100101 Firefox/69.0', NULL, '2019-08-05 04:30:47', '2019-08-05 04:30:47'),
(46, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 7, '{\"confirmed\":1}', '{\"confirmed\":false}', 'http://localhost/loai/dating/www/public/admin/user/unconfirm/7', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:69.0) Gecko/20100101 Firefox/69.0', NULL, '2019-08-05 04:33:15', '2019-08-05 04:33:15'),
(47, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 8, '{\"confirmed\":1}', '{\"confirmed\":false}', 'http://localhost/loai/dating/www/public/admin/user/unconfirm/8', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:69.0) Gecko/20100101 Firefox/69.0', NULL, '2019-08-05 04:34:02', '2019-08-05 04:34:02'),
(48, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 6, '{\"confirmed\":1}', '{\"confirmed\":false}', 'http://localhost/loai/dating/www/public/admin/user/unconfirm/6', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:69.0) Gecko/20100101 Firefox/69.0', NULL, '2019-08-05 04:35:05', '2019-08-05 04:35:05'),
(49, 'App\\Models\\Auth\\User', 1, 'deleted', 'App\\Models\\Auth\\User', 4, '{\"uuid\":\"6d3ad3f6-003b-40ef-9db6-791e47af364b\",\"first_name\":\"Selma\",\"last_name\":\"Snyder\",\"email\":\"nykyserofi@mailinator.com\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password_changed_at\":null,\"active\":1,\"confirmed\":1,\"timezone\":null,\"last_login_at\":null,\"last_login_ip\":null,\"to_be_logged_out\":0}', '[]', 'http://localhost/loai/dating/www/public/admin/user/destroy/4', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:69.0) Gecko/20100101 Firefox/69.0', NULL, '2019-08-05 04:35:32', '2019-08-05 04:35:32'),
(50, 'App\\Models\\Auth\\User', 1, 'deleted', 'App\\Models\\Auth\\User', 8, '{\"uuid\":\"386f8c53-b5c2-437d-b4fe-222b93a18371\",\"first_name\":\"Tetsing Update\",\"last_name\":\"user Update\",\"email\":\"dinesharsti123@mailinator.com\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password_changed_at\":null,\"active\":0,\"confirmed\":0,\"timezone\":null,\"last_login_at\":null,\"last_login_ip\":null,\"to_be_logged_out\":0}', '[]', 'http://localhost/loai/dating/www/public/admin/user/destroy/8', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:69.0) Gecko/20100101 Firefox/69.0', NULL, '2019-08-05 04:35:39', '2019-08-05 04:35:39'),
(51, 'App\\Models\\Auth\\User', 1, 'deleted', 'App\\Models\\Auth\\User', 5, '{\"uuid\":\"45a14ad7-1bf4-4c83-8cef-7edee1a65519\",\"first_name\":\"Blake\",\"last_name\":\"Swanson\",\"email\":\"bibo@mailinator.com\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password_changed_at\":null,\"active\":1,\"confirmed\":1,\"timezone\":null,\"last_login_at\":null,\"last_login_ip\":null,\"to_be_logged_out\":0}', '[]', 'http://localhost/loai/dating/www/public/admin/user/destroy/5', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:69.0) Gecko/20100101 Firefox/69.0', NULL, '2019-08-05 04:35:48', '2019-08-05 04:35:48'),
(52, 'App\\Models\\Auth\\User', 1, 'deleted', 'App\\Models\\Auth\\User', 8, '{\"uuid\":\"386f8c53-b5c2-437d-b4fe-222b93a18371\",\"first_name\":\"Tetsing Update\",\"last_name\":\"user Update\",\"email\":\"dinesharsti123@mailinator.com\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password_changed_at\":null,\"active\":0,\"confirmed\":0,\"timezone\":null,\"last_login_at\":null,\"last_login_ip\":null,\"to_be_logged_out\":0}', '[]', 'http://localhost/loai/dating/www/public/admin/user/destroy/8', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:69.0) Gecko/20100101 Firefox/69.0', NULL, '2019-08-05 04:39:42', '2019-08-05 04:39:42'),
(53, 'App\\Models\\Auth\\User', 1, 'deleted', 'App\\Models\\Auth\\User', 7, '{\"uuid\":\"5bdc47d6-d55c-4546-b4c9-5689c2cbb029\",\"first_name\":\"Gavin\",\"last_name\":\"Gentry\",\"email\":\"suveqoc@mailinator.com\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password_changed_at\":null,\"active\":1,\"confirmed\":0,\"timezone\":null,\"last_login_at\":null,\"last_login_ip\":null,\"to_be_logged_out\":0}', '[]', 'http://localhost/loai/dating/www/public/admin/user/destroy/7', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:69.0) Gecko/20100101 Firefox/69.0', NULL, '2019-08-05 04:39:57', '2019-08-05 04:39:57'),
(54, 'App\\Models\\Auth\\User', 1, 'deleted', 'App\\Models\\Auth\\User', 4, '{\"uuid\":\"6d3ad3f6-003b-40ef-9db6-791e47af364b\",\"first_name\":\"Selma\",\"last_name\":\"Snyder\",\"email\":\"nykyserofi@mailinator.com\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password_changed_at\":null,\"active\":1,\"confirmed\":1,\"timezone\":null,\"last_login_at\":null,\"last_login_ip\":null,\"to_be_logged_out\":0}', '[]', 'http://localhost/loai/dating/www/public/admin/user/destroy/4', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:69.0) Gecko/20100101 Firefox/69.0', NULL, '2019-08-05 04:40:08', '2019-08-05 04:40:08'),
(55, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 5, '{\"confirmed\":1}', '{\"confirmed\":false}', 'http://localhost/loai/dating/www/public/admin/user/unconfirm/5', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:69.0) Gecko/20100101 Firefox/69.0', NULL, '2019-08-05 04:41:11', '2019-08-05 04:41:11'),
(56, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 5, '{\"confirmed\":0}', '{\"confirmed\":true}', 'http://localhost/loai/dating/www/public/admin/user/confirm/5', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:69.0) Gecko/20100101 Firefox/69.0', NULL, '2019-08-05 04:41:34', '2019-08-05 04:41:34'),
(57, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 6, '{\"confirmed\":0}', '{\"confirmed\":true}', 'http://localhost/loai/dating/www/public/admin/user/confirm/6', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:69.0) Gecko/20100101 Firefox/69.0', NULL, '2019-08-05 04:42:01', '2019-08-05 04:42:01'),
(58, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 5, '{\"confirmed\":0}', '{\"confirmed\":true}', 'http://localhost/loai/dating/www/public/admin/auth/user/5/confirm', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:69.0) Gecko/20100101 Firefox/69.0', NULL, '2019-08-05 05:12:45', '2019-08-05 05:12:45'),
(59, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 6, '{\"confirmed\":0}', '{\"confirmed\":true}', 'http://localhost/loai/dating/www/public/admin/auth/user/6/confirm', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:69.0) Gecko/20100101 Firefox/69.0', NULL, '2019-08-05 05:18:24', '2019-08-05 05:18:24'),
(60, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 5, '{\"confirmed\":1}', '{\"confirmed\":false}', 'http://localhost/loai/dating/www/public/admin/auth/user/5/unconfirm', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:69.0) Gecko/20100101 Firefox/69.0', NULL, '2019-08-05 05:19:08', '2019-08-05 05:19:08'),
(61, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 6, '{\"confirmed\":1}', '{\"confirmed\":false}', 'http://localhost/loai/dating/www/public/admin/auth/user/6/unconfirm', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:69.0) Gecko/20100101 Firefox/69.0', NULL, '2019-08-05 05:19:12', '2019-08-05 05:19:12'),
(62, 'App\\Models\\Auth\\User', 1, 'created', 'App\\Models\\Auth\\User', 9, '[]', '{\"first_name\":\"sfsdf\",\"last_name\":\"fdsf\",\"email\":\"dinesharsti@mailinator.com\",\"active\":true,\"confirmed\":true,\"uuid\":\"980b2506-dc68-427a-bd57-cc7588ae6cff\"}', 'http://localhost/loai/dating/www/public/admin/user', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:69.0) Gecko/20100101 Firefox/69.0', NULL, '2019-08-05 05:40:03', '2019-08-05 05:40:03'),
(63, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 9, '{\"confirmed\":1}', '{\"confirmed\":false}', 'http://localhost/loai/dating/www/public/admin/auth/user/9/unconfirm', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:69.0) Gecko/20100101 Firefox/69.0', NULL, '2019-08-05 05:41:18', '2019-08-05 05:41:18'),
(64, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 1, '[]', '[]', 'http://localhost/loai/dating/www/public/logout', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:69.0) Gecko/20100101 Firefox/69.0', NULL, '2019-08-05 05:57:03', '2019-08-05 05:57:03'),
(65, 'App\\Models\\Auth\\User', 3, 'updated', 'App\\Models\\Auth\\User', 3, '{\"last_login_at\":\"2019-06-11 07:15:29\"}', '{\"last_login_at\":\"2019-08-05 11:27:10\"}', 'http://localhost/loai/dating/www/public/login', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:69.0) Gecko/20100101 Firefox/69.0', NULL, '2019-08-05 05:57:10', '2019-08-05 05:57:10'),
(66, 'App\\Models\\Auth\\User', 3, 'updated', 'App\\Models\\Auth\\User', 3, '[]', '[]', 'http://localhost/loai/dating/www/public/logout', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:69.0) Gecko/20100101 Firefox/69.0', NULL, '2019-08-05 06:07:06', '2019-08-05 06:07:06'),
(67, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 1, '{\"last_login_at\":\"2019-08-05 09:58:16\"}', '{\"last_login_at\":\"2019-08-05 11:37:30\"}', 'http://localhost/loai/dating/www/public/login', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:69.0) Gecko/20100101 Firefox/69.0', NULL, '2019-08-05 06:07:31', '2019-08-05 06:07:31'),
(68, 'App\\Models\\Auth\\User', 1, 'created', 'App\\Models\\Auth\\User', 10, '[]', '{\"first_name\":\"tyt\",\"last_name\":\"uty\",\"email\":\"wdptest@mailinator.com\",\"active\":true,\"confirmed\":true,\"uuid\":\"7c12a939-cd22-49cc-9adf-9521087fc0f6\"}', 'http://localhost/loai/dating/www/public/admin/user', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:69.0) Gecko/20100101 Firefox/69.0', NULL, '2019-08-05 06:08:00', '2019-08-05 06:08:00'),
(69, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 1, '[]', '[]', 'http://localhost/loai/dating/www/public/logout', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:69.0) Gecko/20100101 Firefox/69.0', NULL, '2019-08-05 06:12:17', '2019-08-05 06:12:17'),
(70, 'App\\Models\\Auth\\User', 9, 'updated', 'App\\Models\\Auth\\User', 9, '[]', '[]', 'http://localhost/loai/dating/www/public/login', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:69.0) Gecko/20100101 Firefox/69.0', NULL, '2019-08-05 06:13:19', '2019-08-05 06:13:19'),
(71, 'App\\Models\\Auth\\User', 9, 'updated', 'App\\Models\\Auth\\User', 9, '[]', '[]', 'http://localhost/loai/dating/www/public/login', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:69.0) Gecko/20100101 Firefox/69.0', NULL, '2019-08-05 06:13:19', '2019-08-05 06:13:19'),
(72, 'App\\Models\\Auth\\User', 9, 'updated', 'App\\Models\\Auth\\User', 9, '{\"timezone\":null,\"last_login_at\":null,\"last_login_ip\":null}', '{\"timezone\":\"America\\/New_York\",\"last_login_at\":\"2019-08-05 11:45:00\",\"last_login_ip\":\"::1\"}', 'http://localhost/loai/dating/www/public/login', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:69.0) Gecko/20100101 Firefox/69.0', NULL, '2019-08-05 06:15:01', '2019-08-05 06:15:01'),
(73, 'App\\Models\\Auth\\User', 9, 'updated', 'App\\Models\\Auth\\User', 9, '[]', '[]', 'http://localhost/loai/dating/www/public/logout', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:69.0) Gecko/20100101 Firefox/69.0', NULL, '2019-08-05 06:15:56', '2019-08-05 06:15:56'),
(74, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 1, '{\"last_login_at\":\"2019-08-05 11:37:30\"}', '{\"last_login_at\":\"2019-08-05 11:46:14\"}', 'http://localhost/loai/dating/www/public/login', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:69.0) Gecko/20100101 Firefox/69.0', NULL, '2019-08-05 06:16:14', '2019-08-05 06:16:14'),
(75, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 1, '[]', '[]', 'http://localhost/loai/dating/www/public/logout', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:69.0) Gecko/20100101 Firefox/69.0', NULL, '2019-08-05 06:16:56', '2019-08-05 06:16:56'),
(76, 'App\\Models\\Auth\\User', 10, 'updated', 'App\\Models\\Auth\\User', 10, '[]', '[]', 'http://localhost/loai/dating/www/public/login', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:69.0) Gecko/20100101 Firefox/69.0', NULL, '2019-08-05 06:17:11', '2019-08-05 06:17:11'),
(77, 'App\\Models\\Auth\\User', 10, 'updated', 'App\\Models\\Auth\\User', 10, '{\"timezone\":null,\"last_login_at\":null,\"last_login_ip\":null}', '{\"timezone\":\"America\\/New_York\",\"last_login_at\":\"2019-08-05 11:47:11\",\"last_login_ip\":\"::1\"}', 'http://localhost/loai/dating/www/public/login', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:69.0) Gecko/20100101 Firefox/69.0', NULL, '2019-08-05 06:17:12', '2019-08-05 06:17:12'),
(78, 'App\\Models\\Auth\\User', 10, 'updated', 'App\\Models\\Auth\\User', 10, '[]', '[]', 'http://localhost/loai/dating/www/public/logout', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:69.0) Gecko/20100101 Firefox/69.0', NULL, '2019-08-05 06:44:07', '2019-08-05 06:44:07'),
(79, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 1, '{\"last_login_at\":\"2019-08-05 11:46:14\"}', '{\"last_login_at\":\"2019-08-05 12:14:13\"}', 'http://localhost/loai/dating/www/public/login', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:69.0) Gecko/20100101 Firefox/69.0', NULL, '2019-08-05 06:44:13', '2019-08-05 06:44:13'),
(80, 'App\\Models\\Auth\\User', 1, 'created', 'App\\Models\\Auth\\User', 11, '[]', '{\"role_id\":2,\"first_name\":\"Param\",\"last_name\":\"lal\",\"email\":\"param@mailinator.com\",\"active\":true,\"confirmed\":false,\"uuid\":\"9290b55c-4133-4dad-ac6a-ed19a549218b\"}', 'http://localhost/loai/dating/www/public/admin/user', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:69.0) Gecko/20100101 Firefox/69.0', NULL, '2019-08-05 07:07:36', '2019-08-05 07:07:36'),
(81, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 11, '{\"confirmed\":0}', '{\"confirmed\":true}', 'http://localhost/loai/dating/www/public/admin/auth/user/11/confirm', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:69.0) Gecko/20100101 Firefox/69.0', NULL, '2019-08-05 07:08:46', '2019-08-05 07:08:46'),
(82, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 1, '[]', '[]', 'http://localhost/loai/dating/www/public/logout', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:69.0) Gecko/20100101 Firefox/69.0', NULL, '2019-08-05 07:44:24', '2019-08-05 07:44:24'),
(83, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 1, '{\"last_login_at\":\"2019-08-05 12:14:13\"}', '{\"last_login_at\":\"2019-08-05 13:19:53\"}', 'http://localhost/loai/dating/www/public/login', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:69.0) Gecko/20100101 Firefox/69.0', NULL, '2019-08-05 07:49:54', '2019-08-05 07:49:54'),
(84, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 1, '{\"last_login_at\":\"2019-08-05 13:19:53\"}', '{\"last_login_at\":\"2019-08-06 04:31:31\"}', 'http://localhost/loai/dating/www/public/login', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.87 Safari/537.36', NULL, '2019-08-05 23:01:32', '2019-08-05 23:01:32'),
(85, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 1, '{\"last_login_at\":\"2019-08-06 04:31:31\"}', '{\"last_login_at\":\"2019-08-06 06:28:51\"}', 'http://localhost/loai/dating/www/public/login', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.87 Safari/537.36', NULL, '2019-08-06 00:58:52', '2019-08-06 00:58:52'),
(86, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 1, '{\"last_login_at\":\"2019-08-06 06:28:51\"}', '{\"last_login_at\":\"2019-08-06 06:49:01\"}', 'http://localhost/loai/dating/www/public/login', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.87 Safari/537.36', NULL, '2019-08-06 01:19:08', '2019-08-06 01:19:08'),
(87, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 1, '{\"last_login_at\":\"2019-08-06 06:49:01\"}', '{\"last_login_at\":\"2019-08-07 04:36:27\"}', 'http://localhost/loai/dating/www/public/login', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.87 Safari/537.36', NULL, '2019-08-06 23:06:32', '2019-08-06 23:06:32'),
(88, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 1, '{\"last_login_at\":\"2019-08-07 04:36:27\"}', '{\"last_login_at\":\"2019-08-09 09:22:11\"}', 'http://localhost/loai/dating/www/public/login', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101 Firefox/68.0', NULL, '2019-08-09 03:52:12', '2019-08-09 03:52:12');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  UNIQUE KEY `cache_key_unique` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discussions`
--

DROP TABLE IF EXISTS `discussions`;
CREATE TABLE IF NOT EXISTS `discussions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `discussion_type` enum('group','private') NOT NULL,
  `group_id` int(11) NOT NULL DEFAULT '0',
  `from_id` int(11) NOT NULL,
  `to_id` int(11) NOT NULL,
  `content_type` enum('text','image','video','smily') NOT NULL,
  `content` varchar(255) NOT NULL,
  `status` enum('0','1','2') NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hobbies`
--

DROP TABLE IF EXISTS `hobbies`;
CREATE TABLE IF NOT EXISTS `hobbies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` enum('0','1','2') NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `interests`
--

DROP TABLE IF EXISTS `interests`;
CREATE TABLE IF NOT EXISTS `interests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` enum('0','1','2') NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `interests`
--

INSERT INTO `interests` (`id`, `user_id`, `name`, `slug`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'cooking', 'cooking', NULL, '1', '2019-08-03 09:09:07', '2019-08-06 04:32:09', NULL),
(2, 1, 'Hollee Ford', 'hollee-ford', NULL, '1', '2019-08-06 04:31:53', '2019-08-06 04:31:53', NULL),
(3, 1, 'Byron Diaz', 'byron-diaz', NULL, '1', '2019-08-06 04:32:01', '2019-08-06 04:32:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(10, '2014_10_12_000000_create_users_table', 1),
(11, '2014_10_12_100000_create_password_resets_table', 1),
(12, '2017_09_03_144628_create_permission_tables', 1),
(13, '2017_09_11_174816_create_social_accounts_table', 1),
(14, '2017_09_26_140332_create_cache_table', 1),
(15, '2017_09_26_140528_create_sessions_table', 1),
(16, '2017_09_26_140609_create_jobs_table', 1),
(17, '2018_04_08_033256_create_password_histories_table', 1),
(18, '2019_03_26_000344_create_audits_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_type_model_id_index` (`model_type`,`model_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_type_model_id_index` (`model_type`,`model_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\Auth\\User', 1),
(2, 'App\\Models\\Auth\\User', 2),
(3, 'App\\Models\\Auth\\User', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_histories`
--

DROP TABLE IF EXISTS `password_histories`;
CREATE TABLE IF NOT EXISTS `password_histories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `password_histories_user_id_foreign` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_histories`
--

INSERT INTO `password_histories` (`id`, `user_id`, `password`, `created_at`, `updated_at`) VALUES
(1, 1, '$2y$10$Kh.oecQFCjrnaFCEuPpBM.DfHNd4OSdyg4QsFp1eZKIcQcYp26Kbu', '2019-06-11 00:39:02', '2019-06-11 00:39:02'),
(2, 2, '$2y$10$Wxwl6/aeojG9nQccfBHq.uj96DawwS4GEXyvgsrl6Tf6fknoE6ajm', '2019-06-11 00:39:02', '2019-06-11 00:39:02'),
(3, 3, '$2y$10$AJyZB8RrCfl5GBImug/XlOt7BaTi.JBMXR2YR8Kbcux6bQx4DNguq', '2019-06-11 00:39:02', '2019-06-11 00:39:02'),
(4, 4, '$2y$10$x84YG2wd79NvUawOl.3/KOcmYXS2/1VMTLfe.HX5GoTkAEFb7zU7i', '2019-08-03 01:13:44', '2019-08-03 01:13:44'),
(5, 5, '$2y$10$R/cXMIq7Is7S/IrjRhOmK.Fsixc8ItDbO7ajmDJvIJzdgm2ilTgA.', '2019-08-03 01:14:02', '2019-08-03 01:14:02'),
(6, 6, '$2y$10$rb.Gg9M5bZt50SLLjnzlaeAJRqJbnCFlaJg/k02xw8VARj8/mSRua', '2019-08-03 01:14:15', '2019-08-03 01:14:15'),
(7, 7, '$2y$10$OOhNTiLlSQaYu8OofIToG.Pph5Od1z9F2gx71LY99lhHNG1sc8.Xy', '2019-08-03 01:14:24', '2019-08-03 01:14:24'),
(8, 8, '$2y$10$cAs1iz/S.FGQrJybMXgJieaApti4eZ6Cloi3izuQZjI3YVHbZrT32', '2019-08-05 03:54:48', '2019-08-05 03:54:48'),
(9, 9, '$2y$10$E9y9qBv.twnTnme013rnz.TAD6ajhL7spLdssAHC1KwJoveT2i8HC', '2019-08-05 05:40:03', '2019-08-05 05:40:03'),
(10, 10, '$2y$10$Jbn84An2JcBQjPUnQVyO1OBi5oLi5aDA6iFS.up3CPD1LvKmLj.gC', '2019-08-05 06:08:00', '2019-08-05 06:08:00'),
(11, 11, '$2y$10$dh/sJeTweFVclDzX6uX0Kuyr.5.DlnNQVmMTrfWt4QJ/f4mJj8e/q', '2019-08-05 07:07:36', '2019-08-05 07:07:36');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view backend', 'web', '2019-06-11 00:39:02', '2019-06-11 00:39:02');

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

DROP TABLE IF EXISTS `plans`;
CREATE TABLE IF NOT EXISTS `plans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `plan_type` enum('free','paid') NOT NULL,
  `amount` varchar(100) NOT NULL,
  `status` int(11) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `name`, `description`, `plan_type`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(3, 'sliver', '<p>this&nbsp; hjjfgjsgfsddffgh</p>', 'free', '0.00', 1, '2019-08-06 06:36:13', '2019-08-06 06:36:13'),
(2, 'gold', '<p>this premium</p>', 'paid', '0.00', 0, '2019-08-06 05:45:52', '2019-08-07 08:21:05'),
(4, 'Platinum', '<p>&nbsp;platinum&nbsp; this best&nbsp; plan</p>', 'paid', '5698', 1, '2019-08-06 06:36:58', '2019-08-06 06:36:58'),
(5, 'Hurry', '<p>&nbsp;Hurry Update&nbsp;&nbsp;</p>', 'free', '5122', 1, '2019-08-06 07:05:19', '2019-08-06 23:45:43'),
(6, 'golden', '<p>rtr</p>', 'free', '0.00', 1, '2019-08-06 07:05:47', '2019-08-06 07:05:47'),
(8, 'gold update', '<p>dfg update</p>', 'free', '0.00', 1, '2019-08-06 23:24:27', '2019-08-06 23:43:57');

-- --------------------------------------------------------

--
-- Table structure for table `plan_features`
--

DROP TABLE IF EXISTS `plan_features`;
CREATE TABLE IF NOT EXISTS `plan_features` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plan_id` int(11) NOT NULL,
  `feature_name` varchar(255) NOT NULL,
  `plan_privilege_id` int(11) DEFAULT NULL,
  `occurence` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('0','1','2') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plan_features`
--

INSERT INTO `plan_features` (`id`, `plan_id`, `feature_name`, `plan_privilege_id`, `occurence`, `created_at`, `status`) VALUES
(1, 3, 'Testing update', NULL, 1732, '2019-08-07 11:06:10', '0'),
(2, 8, 'working', NULL, 569, '2019-08-07 11:54:47', '1'),
(5, 4, 'sfsd', NULL, 5454, '2019-08-07 16:09:03', '0');

-- --------------------------------------------------------

--
-- Table structure for table `plan_months`
--

DROP TABLE IF EXISTS `plan_months`;
CREATE TABLE IF NOT EXISTS `plan_months` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plan_id` int(11) NOT NULL,
  `month` varchar(255) NOT NULL,
  `duration` int(11) DEFAULT NULL,
  `duration_type` enum('hours','days','months','years') DEFAULT NULL,
  `amount` float(10,2) NOT NULL DEFAULT '0.00',
  `discount` float(10,2) NOT NULL DEFAULT '0.00',
  `discount_type` enum('fixed','percent') NOT NULL DEFAULT 'fixed',
  `status` enum('0','1','2') NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plan_months`
--

INSERT INTO `plan_months` (`id`, `plan_id`, `month`, `duration`, `duration_type`, `amount`, `discount`, `discount_type`, `status`, `created_at`, `updated_at`) VALUES
(4, 5, '2 year', NULL, NULL, 0.00, 5689.00, 'fixed', '0', '2019-08-07 16:28:00', NULL),
(2, 4, '2 year', NULL, NULL, 0.00, 12545.00, 'fixed', '1', '2019-08-07 15:17:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `plan_privileges`
--

DROP TABLE IF EXISTS `plan_privileges`;
CREATE TABLE IF NOT EXISTS `plan_privileges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plan_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `controller` varchar(100) NOT NULL,
  `action` varchar(100) NOT NULL,
  `status` enum('0','1','2') NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `profile_likes`
--

DROP TABLE IF EXISTS `profile_likes`;
CREATE TABLE IF NOT EXISTS `profile_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `is_like` enum('0','1') NOT NULL,
  `from_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `roles_name_index` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'administrator', 'web', '2019-06-11 00:39:02', '2019-06-11 00:39:02'),
(2, 'executive', 'web', '2019-06-11 00:39:02', '2019-06-11 00:39:02'),
(3, 'user', 'web', '2019-06-11 00:39:02', '2019-06-11 00:39:02');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  UNIQUE KEY `sessions_id_unique` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_accounts`
--

DROP TABLE IF EXISTS `social_accounts`;
CREATE TABLE IF NOT EXISTS `social_accounts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `provider` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `social_accounts_user_id_foreign` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `static_pages`
--

DROP TABLE IF EXISTS `static_pages`;
CREATE TABLE IF NOT EXISTS `static_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `descrption` text NOT NULL,
  `graphic_type` enum('image','video') DEFAULT NULL,
  `graphic_content` varchar(100) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `status` enum('0','1','2') NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `static_pages`
--

INSERT INTO `static_pages` (`id`, `name`, `descrption`, `graphic_type`, `graphic_content`, `slug`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'dg', '<p>&nbsp;ffg</p>', 'image', '1565075374_385586878_pages.jpg', 'dg', '1', '2019-08-06 07:09:34', '2019-08-06 07:09:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'gravatar',
  `avatar_location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_changed_at` timestamp NULL DEFAULT NULL,
  `active` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `confirmation_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `timezone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login_at` timestamp NULL DEFAULT NULL,
  `last_login_ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_be_logged_out` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uuid`, `role_id`, `first_name`, `last_name`, `email`, `avatar_type`, `avatar_location`, `password`, `password_changed_at`, `active`, `confirmation_code`, `confirmed`, `timezone`, `last_login_at`, `last_login_ip`, `to_be_logged_out`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '42ccd733-136f-4e4e-bca2-bca9c37e7212', 1, 'Super', 'Admin', 'info@webdevelopmentpark.com', 'gravatar', NULL, '$2y$10$Kh.oecQFCjrnaFCEuPpBM.DfHNd4OSdyg4QsFp1eZKIcQcYp26Kbu', NULL, 1, '48b1b746434d1b31fd62e28531f86202', 1, 'America/New_York', '2019-08-09 03:52:11', '::1', 0, 'bYxwc40J2DRU4dL0JrpsfQXSYGg80v7LYQvc9SVs35iDcXkaHQrbs1xh7Lsq', '2019-06-11 00:39:02', '2019-08-09 03:52:12', NULL),
(2, 'cb36c729-91c1-4d5b-877e-986840272ec7', 2, 'Backend', 'User', 'executive@webdevelopmentpark.com', 'gravatar', NULL, '$2y$10$Wxwl6/aeojG9nQccfBHq.uj96DawwS4GEXyvgsrl6Tf6fknoE6ajm', NULL, 1, '7b7a07faff9ac41f3885a241a94ab43e', 1, NULL, NULL, NULL, 0, NULL, '2019-06-11 00:39:02', '2019-06-11 00:39:02', NULL),
(3, '9e092f72-5460-4643-9849-8590da1c8ab9', 2, 'Anil', 'Jain', 'aniljmk@gmail.com', 'storage', 'avatars/LRvU6d4ukU7PzZULp1AHLd0fnBo6HThnf5FwVsE9.jpeg', '$2y$10$AJyZB8RrCfl5GBImug/XlOt7BaTi.JBMXR2YR8Kbcux6bQx4DNguq', NULL, 1, '6248b1024542ba79ccbd0cedff641380', 1, 'America/New_York', '2019-08-05 05:57:10', '::1', 0, 'Te75eIRbKyvBfnnLTR7jAjIovHAxQa9LDTvNOo5rbY1ivLn7x8vZJxsvoWGK', '2019-06-11 00:39:02', '2019-08-05 05:57:10', NULL),
(5, '45a14ad7-1bf4-4c83-8cef-7edee1a65519', 2, 'Blake', 'Swanson', 'bibo@mailinator.com', 'gravatar', NULL, '$2y$10$R/cXMIq7Is7S/IrjRhOmK.Fsixc8ItDbO7ajmDJvIJzdgm2ilTgA.', NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, '2019-08-03 01:14:02', '2019-08-05 05:19:08', NULL),
(6, '4d94d456-cc5a-42d5-a1ad-d5c20c42834e', 2, 'Jeremy', 'Cantu', 'datingapp@mailinator.com', 'gravatar', NULL, '$2y$10$rb.Gg9M5bZt50SLLjnzlaeAJRqJbnCFlaJg/k02xw8VARj8/mSRua', NULL, 0, '300ba08980ccf3aaff173aa0f6279bcc', 0, NULL, NULL, NULL, 0, NULL, '2019-08-03 01:14:15', '2019-08-05 05:19:12', NULL),
(9, '980b2506-dc68-427a-bd57-cc7588ae6cff', 2, 'sfsdf', 'fdsf', 'dinesharsti@mailinator.com', 'gravatar', NULL, '$2y$10$E9y9qBv.twnTnme013rnz.TAD6ajhL7spLdssAHC1KwJoveT2i8HC', NULL, 1, '48b1cafc6c90e10e39eb29700489701a', 1, 'America/New_York', '2019-08-05 06:15:00', '::1', 0, 'KSEZMMThqajh6gzJ1NcbmhhMhp6RIATrOYK0amDmlZGdYigLJbpTiRQMGC9D', '2019-08-05 05:40:03', '2019-08-05 06:15:01', NULL),
(10, '7c12a939-cd22-49cc-9adf-9521087fc0f6', 2, 'tyt', 'uty', 'wdptest@mailinator.com', 'gravatar', NULL, '$2y$10$Jbn84An2JcBQjPUnQVyO1OBi5oLi5aDA6iFS.up3CPD1LvKmLj.gC', NULL, 1, '5794f7cf7020f9d5d0a2662b4cee4048', 1, 'America/New_York', '2019-08-05 06:17:11', '::1', 0, 'q0xqljCAewJ7gYOJ0KjnledGkGggR4X39M5Rt8HIGLfZ6nHGy8jakosXbxpu', '2019-08-05 06:08:00', '2019-08-05 06:17:12', NULL),
(11, '9290b55c-4133-4dad-ac6a-ed19a549218b', 2, 'Param', 'lal', 'param@mailinator.com', 'gravatar', NULL, '$2y$10$dh/sJeTweFVclDzX6uX0Kuyr.5.DlnNQVmMTrfWt4QJ/f4mJj8e/q', NULL, 1, 'e67b6b0184ddd4772b1aaa351117e8b5', 1, NULL, NULL, NULL, 0, NULL, '2019-08-05 07:07:35', '2019-08-05 08:05:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_addresses`
--

DROP TABLE IF EXISTS `user_addresses`;
CREATE TABLE IF NOT EXISTS `user_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `address_type` enum('home','office') NOT NULL DEFAULT 'home',
  `house_numer` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `city` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `country` int(11) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `status` enum('0','1','2') NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `latitude` varchar(50) NOT NULL,
  `longitude` varchar(50) NOT NULL,
  `address_api` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

DROP TABLE IF EXISTS `user_groups`;
CREATE TABLE IF NOT EXISTS `user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `group_pic` varchar(100) DEFAULT NULL,
  `members` int(11) NOT NULL DEFAULT '0',
  `status` enum('0','1','2') NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_group_members`
--

DROP TABLE IF EXISTS `user_group_members`;
CREATE TABLE IF NOT EXISTS `user_group_members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `status` enum('0','1','2') NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_interests`
--

DROP TABLE IF EXISTS `user_interests`;
CREATE TABLE IF NOT EXISTS `user_interests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `interest_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `status` enum('0','1','2') NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_profiles`
--

DROP TABLE IF EXISTS `user_profiles`;
CREATE TABLE IF NOT EXISTS `user_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `gender` enum('M','F','T') NOT NULL,
  `date_of_birth` date NOT NULL,
  `interests` varchar(255) DEFAULT NULL,
  `hobbies` varchar(255) DEFAULT NULL,
  `religion` varchar(255) DEFAULT NULL,
  `cast` varchar(255) DEFAULT NULL,
  `sub_cast` varchar(255) DEFAULT NULL,
  `gotra` varchar(255) DEFAULT NULL,
  `interested_in` varchar(255) NOT NULL,
  `contact_numbers` varchar(255) DEFAULT NULL,
  `profile_status` enum('0','1','2') NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `profile_pic` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_subscriptions`
--

DROP TABLE IF EXISTS `user_subscriptions`;
CREATE TABLE IF NOT EXISTS `user_subscriptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `plan_month_id` int(11) NOT NULL,
  `amount` float(10,2) NOT NULL,
  `discount` float(10,2) NOT NULL DEFAULT '0.00',
  `discount_type` enum('fixed','percent') NOT NULL DEFAULT 'fixed',
  `paid_amount` float(10,2) NOT NULL,
  `currency` varchar(25) NOT NULL,
  `transaction_id` varchar(100) NOT NULL,
  `gateway` varchar(50) NOT NULL,
  `payment_status` enum('0','1','2') NOT NULL DEFAULT '1' COMMENT '0=>completed, 1=>pending, 2=>cancelled',
  `plan_start_date` varchar(100) DEFAULT NULL,
  `plan_end_date` varchar(100) DEFAULT NULL,
  `status` enum('0','1','2') NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
