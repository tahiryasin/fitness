-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2022 at 08:10 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `fitness`
--

-- --------------------------------------------------------

--
-- Table structure for table `class_details`
--

CREATE TABLE `class_details` (
                                 `id` bigint(20) NOT NULL,
                                 `description` text DEFAULT NULL,
                                 `aim` varchar(255) DEFAULT NULL,
                                 `exertion_level` varchar(255) DEFAULT NULL,
                                 `fitness_level` varchar(255) DEFAULT NULL,
                                 `created_at` timestamp NULL DEFAULT NULL,
                                 `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_details`
--

INSERT INTO `class_details` (`id`, `description`, `aim`, `exertion_level`, `fitness_level`, `created_at`, `updated_at`) VALUES
    (1, 'test', 'test', 'test', 'test', '2022-05-17 15:50:29', '2022-05-17 15:50:29');

-- --------------------------------------------------------

--
-- Table structure for table `class_trainers`
--

CREATE TABLE `class_trainers` (
                                  `id` bigint(20) NOT NULL,
                                  `class_id` bigint(20) NOT NULL,
                                  `trainer_id` bigint(20) UNSIGNED NOT NULL,
                                  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
                                  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_trainers`
--

INSERT INTO `class_trainers` (`id`, `class_id`, `trainer_id`, `created_at`, `updated_at`) VALUES
    (1, 1, 4, '2022-05-21 00:10:02', '2022-05-21 00:10:02');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
                            `id` bigint(20) NOT NULL,
                            `name` varchar(255) DEFAULT NULL,
                            `email` varchar(255) DEFAULT NULL,
                            `website` varchar(255) DEFAULT NULL,
                            `comment` text DEFAULT NULL,
                            `created_at` timestamp NULL DEFAULT NULL,
                            `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `website`, `comment`, `created_at`, `updated_at`) VALUES
                                                                                                     (1, 'Test', 'test@test.com', 'test.com', 'test', '2022-05-17 15:56:23', '2022-05-17 15:56:23'),
                                                                                                     (2, 'test', 'test@test.com', 'test', 'etst', '2022-05-19 05:47:11', '2022-05-19 05:47:11'),
                                                                                                     (3, 'test', 'test@test.com', 'test', 'test', '2022-05-19 06:17:28', '2022-05-19 06:17:28');

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
-- Table structure for table `issues`
--

CREATE TABLE `issues` (
                          `id` bigint(20) NOT NULL,
                          `user_id` bigint(20) UNSIGNED NOT NULL,
                          `subject` varchar(255) NOT NULL,
                          `description` text NOT NULL,
                          `created_at` timestamp NULL DEFAULT NULL,
                          `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issues`
--

INSERT INTO `issues` (`id`, `user_id`, `subject`, `description`, `created_at`, `updated_at`) VALUES
    (2, 3, 'test', 'test', '2022-05-21 00:05:41', '2022-05-21 00:05:41');

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
                                                          (2, '2014_10_12_100000_create_password_resets_table', 1),
                                                          (3, '2019_08_19_000000_create_failed_jobs_table', 1),
                                                          (4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
                                                          (5, '2022_05_17_194532_create_permission_tables', 2),
                                                          (6, '2020_03_31_114745_remove_backpackuser_model', 3);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
                                         `permission_id` bigint(20) UNSIGNED NOT NULL,
                                         `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                                         `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
                                   `role_id` bigint(20) UNSIGNED NOT NULL,
                                   `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                                   `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
                                                                        (1, 'App\\Models\\User', 3),
                                                                        (2, 'App\\Models\\User', 4),
                                                                        (3, 'App\\Models\\User', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
                                   `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                                   `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                                   `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
                               `id` bigint(20) UNSIGNED NOT NULL,
                               `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                               `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                               `created_at` timestamp NULL DEFAULT NULL,
                               `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
                                          `created_at` timestamp NULL DEFAULT NULL,
                                          `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
                         `id` bigint(20) UNSIGNED NOT NULL,
                         `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                         `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                         `created_at` timestamp NULL DEFAULT NULL,
                         `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
                                                                                 (1, 'member', 'web', '2022-05-17 14:52:03', '2022-05-17 14:52:16'),
                                                                                 (2, 'trainer', 'web', '2022-05-17 14:52:24', '2022-05-17 14:52:31'),
                                                                                 (3, 'manager', 'web', '2022-05-17 14:52:44', '2022-05-17 14:52:44');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
                                        `permission_id` bigint(20) UNSIGNED NOT NULL,
                                        `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `time_tables`
--

CREATE TABLE `time_tables` (
                               `id` bigint(20) NOT NULL,
                               `class_id` bigint(20) UNSIGNED NOT NULL,
                               `day` varchar(255) NOT NULL,
                               `time` varchar(255) NOT NULL,
                               `created_at` timestamp NULL DEFAULT NULL,
                               `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_tables`
--

INSERT INTO `time_tables` (`id`, `class_id`, `day`, `time`, `created_at`, `updated_at`) VALUES
    (1, 1, 'Tuesday', '16:10', '2022-05-17 16:07:38', '2022-05-17 16:09:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
                         `id` bigint(20) UNSIGNED NOT NULL,
                         `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                         `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                         `email_verified_at` timestamp NULL DEFAULT NULL,
                         `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                         `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `created_at` timestamp NULL DEFAULT NULL,
                         `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
                                                                                                                               (3, 'Member', 'member@gym.com', NULL, '$2y$10$pdRfjnkCdYBMoHOgeKLude.ocRrz00ExARaOCxLgcbxcBDbd1Zk06', NULL, '2022-05-20 23:28:21', '2022-05-20 23:28:21'),
                                                                                                                               (4, 'Trainer', 'trainer@gym.com', NULL, '$2y$10$pdRfjnkCdYBMoHOgeKLude.ocRrz00ExARaOCxLgcbxcBDbd1Zk06', NULL, '2022-05-21 00:07:44', '2022-05-21 00:07:44'),
                                                                                                                               (5, 'Manager', 'manager@gym.com', NULL, '$2y$10$pdRfjnkCdYBMoHOgeKLude.ocRrz00ExARaOCxLgcbxcBDbd1Zk06', NULL, '2022-05-21 00:37:06', '2022-05-21 01:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `user_classes`
--

CREATE TABLE `user_classes` (
                                `id` bigint(20) NOT NULL,
                                `user_id` bigint(20) UNSIGNED NOT NULL,
                                `class_id` bigint(20) NOT NULL,
                                `date` datetime NOT NULL,
                                `created_at` timestamp NULL DEFAULT NULL,
                                `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_classes`
--

INSERT INTO `user_classes` (`id`, `user_id`, `class_id`, `date`, `created_at`, `updated_at`) VALUES
    (2, 4, 1, '2022-05-19 17:45:12', '2022-05-19 12:45:12', '2022-05-19 12:45:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class_details`
--
ALTER TABLE `class_details`
    ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_trainers`
--
ALTER TABLE `class_trainers`
    ADD PRIMARY KEY (`id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `class_trainers_ibfk_2` (`trainer_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
    ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
    ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `issues`
--
ALTER TABLE `issues`
    ADD PRIMARY KEY (`id`),
  ADD KEY `issues_ibfk_1` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
    ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
    ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
    ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
    ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
    ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
    ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
    ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
    ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `time_tables`
--
ALTER TABLE `time_tables`
    ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
    ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_classes`
--
ALTER TABLE `user_classes`
    ADD PRIMARY KEY (`id`),
  ADD KEY `user_classes_ibfk_1` (`class_id`),
  ADD KEY `user_classes_ibfk_2` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class_details`
--
ALTER TABLE `class_details`
    MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `class_trainers`
--
ALTER TABLE `class_trainers`
    MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
    MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
    MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `issues`
--
ALTER TABLE `issues`
    MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
    MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
    MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
    MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
    MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `time_tables`
--
ALTER TABLE `time_tables`
    MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
    MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_classes`
--
ALTER TABLE `user_classes`
    MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `class_trainers`
--
ALTER TABLE `class_trainers`
    ADD CONSTRAINT `class_trainers_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `class_details` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `class_trainers_ibfk_2` FOREIGN KEY (`trainer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `issues`
--
ALTER TABLE `issues`
    ADD CONSTRAINT `issues_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
    ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
    ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
    ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_classes`
--
ALTER TABLE `user_classes`
    ADD CONSTRAINT `user_classes_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `class_details` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_classes_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;
