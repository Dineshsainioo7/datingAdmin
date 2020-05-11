-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 29, 2019 at 06:12 AM
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
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(16, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 1, '{\"last_login_at\":\"2019-06-11 06:45:31\"}', '{\"last_login_at\":\"2019-06-11 07:24:47\"}', 'http://localhost/wisdonspoon/www/public/login', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:67.0) Gecko/20100101 Firefox/67.0', NULL, '2019-06-11 01:54:47', '2019-06-11 01:54:47');

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_histories`
--

INSERT INTO `password_histories` (`id`, `user_id`, `password`, `created_at`, `updated_at`) VALUES
(1, 1, '$2y$10$Kh.oecQFCjrnaFCEuPpBM.DfHNd4OSdyg4QsFp1eZKIcQcYp26Kbu', '2019-06-11 00:39:02', '2019-06-11 00:39:02'),
(2, 2, '$2y$10$Wxwl6/aeojG9nQccfBHq.uj96DawwS4GEXyvgsrl6Tf6fknoE6ajm', '2019-06-11 00:39:02', '2019-06-11 00:39:02'),
(3, 3, '$2y$10$AJyZB8RrCfl5GBImug/XlOt7BaTi.JBMXR2YR8Kbcux6bQx4DNguq', '2019-06-11 00:39:02', '2019-06-11 00:39:02');

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
  `duration` int(11) NOT NULL,
  `duration_type` enum('hours','days','months','years') NOT NULL,
  `amount` varchar(100) NOT NULL,
  `discount` varchar(25) DEFAULT '0',
  `discount_type` enum('fixed','percent') NOT NULL DEFAULT 'fixed',
  `status` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `plan_features`
--

DROP TABLE IF EXISTS `plan_features`;
CREATE TABLE IF NOT EXISTS `plan_features` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plan_id` int(11) NOT NULL,
  `plan_privilege_id` int(11) NOT NULL,
  `occurence` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('0','1','2') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `plan_months`
--

DROP TABLE IF EXISTS `plan_months`;
CREATE TABLE IF NOT EXISTS `plan_months` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plan_id` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `duration_type` enum('hours','days','months','years') NOT NULL,
  `amount` float(10,2) NOT NULL DEFAULT '0.00',
  `discount` float(10,2) NOT NULL DEFAULT '0.00',
  `discount_type` enum('fixed','percent') NOT NULL DEFAULT 'fixed',
  `status` enum('0','1','2') NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uuid`, `first_name`, `last_name`, `email`, `avatar_type`, `avatar_location`, `password`, `password_changed_at`, `active`, `confirmation_code`, `confirmed`, `timezone`, `last_login_at`, `last_login_ip`, `to_be_logged_out`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '42ccd733-136f-4e4e-bca2-bca9c37e7212', 'Super', 'Admin', 'info@webdevelopmentpark.com', 'gravatar', NULL, '$2y$10$Kh.oecQFCjrnaFCEuPpBM.DfHNd4OSdyg4QsFp1eZKIcQcYp26Kbu', NULL, 1, '48b1b746434d1b31fd62e28531f86202', 1, 'America/New_York', '2019-06-11 01:54:47', '::1', 0, 'cJ0QDyXBHuzWoT2sTbmHJRku2zCx0XS5vfUzgcSufP2z4HNSU8AbXE0kd1K1', '2019-06-11 00:39:02', '2019-06-11 01:54:47', NULL),
(2, 'cb36c729-91c1-4d5b-877e-986840272ec7', 'Backend', 'User', 'executive@webdevelopmentpark.com', 'gravatar', NULL, '$2y$10$Wxwl6/aeojG9nQccfBHq.uj96DawwS4GEXyvgsrl6Tf6fknoE6ajm', NULL, 1, '7b7a07faff9ac41f3885a241a94ab43e', 1, NULL, NULL, NULL, 0, NULL, '2019-06-11 00:39:02', '2019-06-11 00:39:02', NULL),
(3, '9e092f72-5460-4643-9849-8590da1c8ab9', 'Anil', 'Jain', 'aniljmk@gmail.com', 'storage', 'avatars/LRvU6d4ukU7PzZULp1AHLd0fnBo6HThnf5FwVsE9.jpeg', '$2y$10$AJyZB8RrCfl5GBImug/XlOt7BaTi.JBMXR2YR8Kbcux6bQx4DNguq', NULL, 1, '6248b1024542ba79ccbd0cedff641380', 1, 'America/New_York', '2019-06-11 01:45:29', '::1', 0, '33JzqYSMOkdGtcTDeefGHki969cHzgIgj4HspBzO9UboB4Xlex4m5U3wM6kq', '2019-06-11 00:39:02', '2019-06-11 01:46:21', NULL);

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
