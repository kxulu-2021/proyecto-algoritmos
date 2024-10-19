-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-10-2024 a las 04:49:11
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ciapp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `content` text DEFAULT NULL,
  `users_id` int(11) UNSIGNED NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `image` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `article`
--

INSERT INTO `article` (`id`, `title`, `content`, `users_id`, `created_at`, `updated_at`, `image`) VALUES
(1, 'Probando reinicio de ID', 'Ojo funciona?', 1, '0000-00-00 00:00:00', '2024-10-18 02:45:57', '1729219557_e0b5a3631a63b33a012e.jpg'),
(23, 'Respuesta', 'si', 1, '0000-00-00 00:00:00', '2024-10-18 02:28:08', NULL),
(26, 'Funciona', 'resource\r\n', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(27, 'Si funciona el login', 'Yes', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(28, 'Art', 'arte', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(29, 'Prueba', '2\r\n', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(30, 'nuevo ', 'muy nuevo', 4, '2024-10-17 22:53:21', '2024-10-17 22:53:21', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`id`, `user_id`, `group`, `created_at`) VALUES
(1, 1, 'admin', '2024-10-15 19:26:56'),
(4, 4, 'user', '2024-10-16 19:01:57'),
(5, 5, 'user', '2024-10-16 19:56:55'),
(6, 6, 'user', '2024-10-16 20:04:27'),
(7, 7, 'user', '2024-10-17 13:51:54'),
(9, 8, 'user', '2024-10-17 13:54:04'),
(10, 7, 'admin', '2024-10-17 15:21:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_identities`
--

CREATE TABLE `auth_identities` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `secret` varchar(255) NOT NULL,
  `secret2` varchar(255) DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  `extra` text DEFAULT NULL,
  `force_reset` tinyint(1) NOT NULL DEFAULT 0,
  `last_used_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_identities`
--

INSERT INTO `auth_identities` (`id`, `user_id`, `type`, `name`, `secret`, `secret2`, `expires`, `extra`, `force_reset`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'email_password', NULL, 'jonathanherrera.0098@gmail.com', '$2y$10$aCGW07teWucx9al7NICHiObhuHxUKDvLOI4yrlS1YYkGZjuFQQKoG', NULL, NULL, 0, '2024-10-18 01:29:59', '2024-10-15 19:26:55', '2024-10-18 01:29:59'),
(9, 4, 'email_password', NULL, 'herrerajony521@gmail.com', '$2y$10$WRPkJEHoM18d/ZIzQwS8BuZ6FYEdTm9rZfjgkO1FA.3fhROJz3qgu', NULL, NULL, 0, '2024-10-17 23:18:48', '2024-10-16 19:01:57', '2024-10-17 23:18:48'),
(14, 5, 'email_password', NULL, 'First@gmail.com', '$2y$10$AINvPoH4wmemjMyHrDPUxuuS6ZgSZkrLrCelltZlCjFYewOJCSw4.', NULL, NULL, 0, '2024-10-16 20:03:24', '2024-10-16 19:56:55', '2024-10-16 20:03:24'),
(15, 6, 'email_password', NULL, 'speak@gmail.com', '$2y$10$Rp3VeZdnb1AT1e8Lvs0Eie0kMhiZm8Sn2tCv10xHzejCiUADi9zcq', NULL, NULL, 0, NULL, '2024-10-16 20:04:27', '2024-10-16 21:26:41'),
(17, 4, 'magic-link', NULL, 'da4fae705194e0806b7a', NULL, '2024-10-16 22:57:03', NULL, 0, NULL, '2024-10-16 21:57:03', '2024-10-16 21:57:03'),
(19, 7, 'email_password', NULL, 'admin@example.com', '$2y$10$EPRDfZnhV5UD97TbIUD48eEnNqySgmFPnS1jC/V6n6URShcf7ePve', NULL, NULL, 0, NULL, '2024-10-17 13:51:53', '2024-10-17 13:51:54'),
(20, 8, 'email_password', NULL, 'Admin@gmail.com', '$2y$10$7lJOYs.LfXY8X.jHxCZpkOduqpGVZpky.tFYEplq2fkk9SPy4hyay', NULL, NULL, 0, '2024-10-17 13:59:50', '2024-10-17 13:54:03', '2024-10-17 13:59:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `id_type` varchar(255) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `user_agent`, `id_type`, `identifier`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'email_password', 'jonathanherrera.0098@gmail.com', 1, '2024-10-15 19:29:59', 1),
(2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'email_password', 'jonathanherrera.0098@gmail.com', 1, '2024-10-15 19:41:14', 1),
(6, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'email_password', 'First@gmail.com', 5, '2024-10-16 20:03:24', 1),
(7, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'email_password', 'herrerajony521@gmail.com', 4, '2024-10-16 21:35:26', 1),
(8, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'magic-link', '8d5940bb7693ca7b60e8', 1, '2024-10-16 21:58:53', 1),
(9, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'email_password', 'herrerajony521@gmail.com', 4, '2024-10-17 01:32:17', 1),
(10, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'email_password', 'herrerajony521@gmail.com', 4, '2024-10-17 01:32:17', 1),
(11, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'email_password', 'herrerajony521@gmail.com', 4, '2024-10-17 02:50:15', 1),
(12, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'email_password', 'herrerajony521@gmail.com', 4, '2024-10-17 03:02:30', 1),
(13, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'email_password', 'herrerajony521@gmail.com', 4, '2024-10-17 13:36:04', 1),
(14, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'email_password', 'Admin@gmail.com', NULL, '2024-10-17 13:53:33', 0),
(15, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'email_password', 'Admin@gmail.com', 8, '2024-10-17 13:56:25', 1),
(16, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'email_password', 'jonathanherrera.0098@gmail.com', NULL, '2024-10-17 13:59:10', 0),
(17, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'email_password', 'jonathanherrera.0098@gmail.com', 1, '2024-10-17 13:59:20', 1),
(18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'email_password', 'Admin@gmail.com', 8, '2024-10-17 13:59:50', 1),
(19, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'email_password', 'Admin@example.com', NULL, '2024-10-17 14:02:26', 0),
(20, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'email_password', 'jonathanherrera.0098@gmail.com', NULL, '2024-10-17 14:04:17', 0),
(21, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'email_password', 'jonathanherrera.0098@gmail.com', 1, '2024-10-17 14:04:23', 1),
(22, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'email_password', 'herrerajony521@gmail.com', 4, '2024-10-17 15:13:25', 1),
(23, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'email_password', 'jonathanherrera.0098@gmail.com', NULL, '2024-10-17 15:13:39', 0),
(24, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'email_password', 'jonathanherrera.0098@gmail.com', 1, '2024-10-17 15:13:45', 1),
(25, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'email_password', 'jonathanherrera.0098@gmail.com', 1, '2024-10-17 18:41:18', 1),
(26, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'email_password', 'herrerajony521@gmail.com', 4, '2024-10-17 18:43:06', 1),
(27, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'email_password', 'jonathanherrera.0098@gmail.com', 1, '2024-10-17 22:33:23', 1),
(28, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'email_password', 'herrerajony521@gmail.com', 4, '2024-10-17 22:49:18', 1),
(29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'email_password', 'jonathanherrera.0098@gmail.com', 1, '2024-10-17 23:16:25', 1),
(30, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'email_password', 'herrerajony521@gmail.com', 4, '2024-10-17 23:18:48', 1),
(31, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'email_password', 'jonathanherrera.0098@gmail.com', 1, '2024-10-17 23:32:10', 1),
(32, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'email_password', 'jonathanherrera.0098@gmail.com', 1, '2024-10-18 01:29:59', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permissions_users`
--

CREATE TABLE `auth_permissions_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `permission` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_remember_tokens`
--

CREATE TABLE `auth_remember_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_token_logins`
--

CREATE TABLE `auth_token_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `id_type` varchar(255) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(4, '2024-09-23-033410', 'App\\Database\\Migrations\\CreateArticleTable', 'default', 'App', 1727140331, 1),
(5, '2020-12-28-223112', 'CodeIgniter\\Shield\\Database\\Migrations\\CreateAuthTables', 'default', 'CodeIgniter\\Shield', 1729017347, 2),
(6, '2021-07-04-041948', 'CodeIgniter\\Settings\\Database\\Migrations\\CreateSettingsTable', 'default', 'CodeIgniter\\Settings', 1729017347, 2),
(7, '2021-11-14-143905', 'CodeIgniter\\Settings\\Database\\Migrations\\AddContextColumn', 'default', 'CodeIgniter\\Settings', 1729017347, 2),
(8, '2024-10-16-195112', 'App\\Database\\Migrations\\AddFirstNameToUsersTable', 'default', 'App', 1729108401, 3),
(9, '2024-10-16-233847', 'Admin\\Database\\Migrations\\AddIndexToUsersCreatedAt', 'default', 'Admin', 1729122243, 4),
(10, '2024-10-17-175009', 'App\\Database\\Migrations\\AddUserIdToArticleTable', 'default', 'App', 1729188972, 5),
(11, '2024-10-17-185401', 'App\\Database\\Migrations\\CreateArticlesTable', 'default', 'App', 1729193506, 6),
(13, '2024-10-17-185401', 'App\\Database\\Migrations\\AddTimestampsToArticleTable', 'default', 'App', 1729195758, 7),
(14, '2024-10-17-234848', 'App\\Database\\Migrations\\AddImageToArticleTable', 'default', 'App', 1729209042, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

CREATE TABLE `settings` (
  `id` int(9) NOT NULL,
  `class` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `type` varchar(31) NOT NULL DEFAULT 'string',
  `context` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `last_active` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `first_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `status`, `status_message`, `active`, `last_active`, `created_at`, `updated_at`, `deleted_at`, `first_name`) VALUES
(1, 'Jonathan', NULL, NULL, 1, NULL, '2024-10-15 19:26:54', '2024-10-15 19:26:56', NULL, 'Jonathan Herrera'),
(4, 'Jon', NULL, NULL, 1, '2024-10-17 13:50:26', '2024-10-16 19:01:56', '2024-10-16 19:05:00', NULL, 'Jon'),
(5, NULL, 'banned', NULL, 1, NULL, '2024-10-16 19:56:55', '2024-10-17 00:42:08', NULL, ''),
(6, NULL, NULL, NULL, 1, NULL, '2024-10-16 20:04:27', '2024-10-16 20:04:27', NULL, ''),
(7, NULL, NULL, NULL, 1, NULL, '2024-10-17 13:51:53', '2024-10-17 13:51:54', NULL, 'Administrator'),
(8, NULL, NULL, NULL, 1, '2024-10-17 13:56:06', '2024-10-17 13:54:03', '2024-10-17 13:54:04', NULL, '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_users_id_fk` (`users_id`);

--
-- Indices de la tabla `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `auth_identities`
--
ALTER TABLE `auth_identities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type_secret` (`type`,`secret`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type_identifier` (`id_type`,`identifier`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `auth_permissions_users`
--
ALTER TABLE `auth_permissions_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_permissions_users_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `auth_remember_tokens`
--
ALTER TABLE `auth_remember_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `selector` (`selector`),
  ADD KEY `auth_remember_tokens_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `auth_token_logins`
--
ALTER TABLE `auth_token_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type_identifier` (`id_type`,`identifier`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `created_at` (`created_at`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `auth_identities`
--
ALTER TABLE `auth_identities`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `auth_permissions_users`
--
ALTER TABLE `auth_permissions_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_remember_tokens`
--
ALTER TABLE `auth_remember_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_token_logins`
--
ALTER TABLE `auth_token_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_users_id_fk` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `auth_identities`
--
ALTER TABLE `auth_identities`
  ADD CONSTRAINT `auth_identities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `auth_permissions_users`
--
ALTER TABLE `auth_permissions_users`
  ADD CONSTRAINT `auth_permissions_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `auth_remember_tokens`
--
ALTER TABLE `auth_remember_tokens`
  ADD CONSTRAINT `auth_remember_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
