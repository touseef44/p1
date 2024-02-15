-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2024 at 02:34 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `p1`
--

-- --------------------------------------------------------

--
-- Table structure for table `card_details`
--

CREATE TABLE `card_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `customer_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `parent_id`, `body`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, NULL, 'qweee', '2024-01-31 06:38:41', '2024-01-31 06:38:41', NULL),
(2, 1, 1, 1, 'qwee', '2024-01-31 06:38:47', '2024-01-31 06:38:47', NULL),
(3, 1, 1, 2, 'qwee', '2024-01-31 06:38:49', '2024-01-31 06:38:49', NULL),
(4, 1, 1, 2, 'qee', '2024-01-31 06:38:55', '2024-01-31 06:38:55', NULL),
(5, 1, 1, 2, 'qee', '2024-01-31 06:39:00', '2024-01-31 06:39:00', NULL),
(6, 1, 1, 3, 'qqq', '2024-01-31 06:39:04', '2024-01-31 06:39:04', NULL),
(7, 7, 3, NULL, '122', '2024-02-01 02:37:57', '2024-02-01 02:37:57', NULL),
(8, 7, 3, 7, '1322', '2024-02-01 02:38:00', '2024-02-01 02:38:00', NULL),
(9, 7, 3, NULL, '888', '2024-02-01 02:38:06', '2024-02-01 02:38:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_01_29_101917_create_sliders_table', 2),
(6, '2024_01_31_102206_create_posts_comments_table', 3),
(7, '2024_02_15_095202_add_column_to_users_table', 4),
(8, '2024_02_15_100035_subscription_plans', 5),
(9, '2024_02_15_100933_card_details', 5),
(10, '2024_02_15_101945_subscription_details', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('touseef@cybernest.com', '$2y$10$RBP65NJ7Xrf6OUN7fARnq.LvQdK0guoNynwFLBhHWPIZxPMvd5pne', '2024-01-29 02:02:26');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`, `deleted_at`, `user_id`) VALUES
(1, 'asddd', 'asdasda', '2024-01-31 06:30:24', '2024-01-31 06:30:24', NULL, 0),
(2, 'dd', 'dd', '2024-01-31 06:49:23', '2024-01-31 06:49:23', NULL, 0),
(3, 'aaaa', 'ddddd', '2024-02-01 02:05:01', '2024-02-01 02:05:01', NULL, 7);

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `address`) VALUES
(1, 2, 'sdffdsfds'),
(2, 7, 'asddddd'),
(4, NULL, 'aa');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `offer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `botton_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `offer`, `title`, `sub_title`, `short_desc`, `botton_link`, `status`, `created_at`, `updated_at`) VALUES
(1, 'https://via.placeholder.com/640x480.png/007711?text=adipisci', '45', 'Iure cupiditate aut exercitationem nihil voluptas ea autem qui.', 'Repellat necessitatibus voluptas exercitationem et exercitationem.', 'Iure est velit dolore ab. Ut sit nobis omnis consectetur corrupti sit. Alias commodi dignissimos et perferendis.', 'http://www.moore.info/aut-est-qui-et-ea-tenetur-sit-quaerat', '0', '2024-01-29 07:10:25', '2024-01-29 07:10:25'),
(2, 'https://via.placeholder.com/640x480.png/0011bb?text=ut', '33', 'Ut sequi ut perspiciatis occaecati in labore.', 'Quis non laborum voluptate est temporibus nostrum.', 'Voluptatem id vel architecto laboriosam minus ipsa fugiat. Ut quia dolor aspernatur a impedit. Dolor debitis ad unde. Ducimus quia aut fugit quis corporis.', 'http://simonis.net/', '0', '2024-01-29 07:10:25', '2024-01-29 07:10:25'),
(3, 'https://via.placeholder.com/640x480.png/0088ee?text=consectetur', '56', 'Et facere est quae molestias quaerat porro.', 'Nulla dolor commodi voluptate id hic.', 'Incidunt maiores voluptate quibusdam molestiae voluptas. Voluptatibus expedita voluptatem ut ex. Neque minus facere minus. Ullam sed est rerum numquam quas animi.', 'http://www.stoltenberg.net/et-quo-et-natus-aut-dolor-unde', '0', '2024-01-29 07:10:25', '2024-01-29 07:10:25'),
(4, 'https://via.placeholder.com/640x480.png/00ff99?text=numquam', '44', 'Ipsum vero inventore exercitationem quod tempora ea.', 'Est modi enim veniam odio sit nisi.', 'Esse optio minus recusandae doloribus et error recusandae. Expedita possimus expedita consequuntur placeat libero est. Et quia delectus cum in dolor. Esse ut fuga nostrum voluptatum incidunt est.', 'http://streich.com/recusandae-voluptatem-eaque-et-officia-voluptas.html', '1', '2024-01-29 07:10:25', '2024-01-29 07:10:25');

-- --------------------------------------------------------

--
-- Table structure for table `subscription_details`
--

CREATE TABLE `subscription_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `stripe_subscription_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_subscription_schedule_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_customer_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subscription_plan_price_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_amount` double(10,2) NOT NULL,
  `plan_amount_currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_interval` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_interval_count` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_period_start` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan_period_end` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_end` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','cancelled') COLLATE utf8mb4_unicode_ci NOT NULL,
  `cancel` int(11) NOT NULL DEFAULT 0 COMMENT '0->active, 1->cancelled',
  `canceled_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_plans`
--

CREATE TABLE `subscription_plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_price_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trial_days` int(11) DEFAULT NULL,
  `amount` double(10,2) NOT NULL,
  `type` int(11) NOT NULL COMMENT '0->monthly, 1->yearly, 2->lifetime',
  `enabled` int(11) NOT NULL COMMENT '0->disabled, 1->enabled',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscription_plans`
--

INSERT INTO `subscription_plans` (`id`, `name`, `stripe_price_id`, `trial_days`, `amount`, `type`, `enabled`, `created_at`, `updated_at`) VALUES
(1, 'Monthly', 'price_1Ok4C2A5J3J2C1ouXuF9YM8s', 5, 12.00, 0, 1, '2024-02-15 08:32:13', '2024-02-15 08:32:13'),
(2, 'Yearly', 'price_1Ok4E8A5J3J2C1oukONEr4vz', 5, 100.00, 1, 1, '2024-02-15 08:32:36', '2024-02-15 08:32:36'),
(3, 'Lifetime', 'price_1Ok4JIA5J3J2C1ou1TZ3uZs5', 5, 2999.00, 2, 1, '2024-02-15 08:32:36', '2024-02-15 08:32:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '/uploads/avatar.jpeg',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('user','admin') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_subscribed` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `avatar`, `name`, `email`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_subscribed`) VALUES
(1, '/uploads/avatar.jpeg', 'dev', 'touseef@cybernest.com', 'user', NULL, '$2y$10$X.a8f9hhVj7bzow19wl7u.EJtJMv/41Gjns/qHzeRwj1taD7R5Dq.', NULL, '2024-01-26 04:04:23', '2024-01-26 04:04:23', 0),
(2, '/uploads/avatar.jpeg', 'Dr. Reed Bradtke IV', 'dallin.robel@example.net', 'user', NULL, '$2y$10$HF4cd07Ag5Jrq0ZfS9Mb4ue3IUc/HOxoD.qoEgaCq.NrgZ/SdsWOG', NULL, '2024-01-26 04:47:37', '2024-01-26 04:47:37', 0),
(3, '/uploads/avatar.jpeg', 'Dr. Torey Oberbrunner Sr.', 'qweber@example.com', 'user', NULL, '$2y$10$Z1d8qPj0zuKB5zveVKSnOOfQQ7INqxwoxAEFo/oaUH13W7wvFwGje', NULL, '2024-01-26 04:47:37', '2024-01-26 04:47:37', 0),
(4, '/uploads/avatar.jpeg', 'Gabriel D\'Amore I', 'batz.geraldine@example.org', 'user', NULL, '$2y$10$pyyMXifbAg3eGQhrqKE0Suv1dbQc8kFPKrYQiGg0F7dBcgP29Y7l6', NULL, '2024-01-26 04:47:37', '2024-01-26 04:47:37', 0),
(7, '/uploads/avatar.jpeg', 'Admin User', 'admin@example.com', 'admin', NULL, '$2y$10$npWtS8gXH7W/W/2gZVVawuxt1vlNMWVyOeOV7NXk4wODUfNxsWUXy', 'QNRnRGWUvvtitaHe1sArBE7Q4zg0BlbB4PRIslMcVZaOvTUxvi9DO0twPJfK', '2024-01-26 04:50:31', '2024-01-26 04:50:31', 0),
(8, '/uploads/avatar.jpeg', 'test', 'test@example.com', 'user', NULL, '$2y$10$GWw1ua4c08voDXYCB.51Z.SZf1Mer6hUdLOTA3ZwZ3dgkz4U9.oja', NULL, '2024-01-29 01:35:11', '2024-01-29 01:35:11', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `card_details`
--
ALTER TABLE `card_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_fk` (`user_id`),
  ADD KEY `idx_address` (`address`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription_details`
--
ALTER TABLE `subscription_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription_plans`
--
ALTER TABLE `subscription_plans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_plans_stripe_price_id_unique` (`stripe_price_id`);

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
-- AUTO_INCREMENT for table `card_details`
--
ALTER TABLE `card_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subscription_details`
--
ALTER TABLE `subscription_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_plans`
--
ALTER TABLE `subscription_plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
