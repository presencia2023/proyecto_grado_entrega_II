-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 12, 2024 at 03:48 PM
-- Server version: 8.0.30
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `helpdesk_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `archivos_tickets`
--

CREATE TABLE `archivos_tickets` (
  `id` bigint UNSIGNED NOT NULL,
  `modelo_tipo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `modelo_id` bigint UNSIGNED NOT NULL,
  `archivo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre_original` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `archivos_tickets`
--

INSERT INTO `archivos_tickets` (`id`, `modelo_tipo`, `modelo_id`, `archivo`, `nombre_original`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Ticket', 1, '51216618203641.jpg', 'paisaje6.jpg', '2022-08-30 00:46:04', '2022-08-30 00:46:04'),
(3, 'App\\Models\\SolucionTicket', 1, '201516618204351.jpg', 'iabrain3.jpg', '2022-08-30 00:47:15', '2022-08-30 00:47:15'),
(4, 'App\\Models\\SolucionTicket', 3, '11916618204773.jpg', 'iabrain3.jpg', '2022-08-30 00:47:57', '2022-08-30 00:47:57'),
(5, 'App\\Models\\Ticket', 3, '51416618206373.jpg', 'Vídeos-de-paisajes-naturales.jpg', '2022-08-30 00:50:37', '2022-08-30 00:50:37'),
(6, 'App\\Models\\SolucionTicket', 4, '6116618206754.jpg', 'paisaje7.jpg', '2022-08-30 00:51:15', '2022-08-30 00:51:15'),
(7, 'App\\Models\\SolucionTicket', 4, '191716618206754.jpg', 'paisaje2.jpg', '2022-08-30 00:51:15', '2022-08-30 00:51:15');

-- --------------------------------------------------------

--
-- Table structure for table `configuracions`
--

CREATE TABLE `configuracions` (
  `id` bigint UNSIGNED NOT NULL,
  `nombre_sistema` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `razon_social` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ciudad` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dir` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fono` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `web` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `actividad_economica` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `configuracions`
--

INSERT INTO `configuracions` (`id`, `nombre_sistema`, `alias`, `razon_social`, `nit`, `ciudad`, `dir`, `fono`, `web`, `actividad_economica`, `correo`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'MOLINA COM', 'HD', 'MOLINA COM', '1111111111111111111', 'LA PAZ', 'ZONA LOS OLIVOS C. 4 #444', '2222222', '', 'ACTIVIDAD ECONOMICA', '', '1698421487_logo.jpg', NULL, '2023-10-27 15:44:47');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint UNSIGNED NOT NULL,
  `tipo_soporte_id` bigint UNSIGNED NOT NULL,
  `pregunta` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `respuesta` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_registro` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `tipo_soporte_id`, `pregunta`, `respuesta`, `fecha_registro`, `created_at`, `updated_at`) VALUES
(1, 1, 'IS SIMPLY DUMMY TEXT OF THE PRINTING AND TYPESETTING INDUSTRY', 'LOREM IPSUM HAS BEEN THE INDUSTRY\'S STANDARD DUMMY TEXT EVER SINCE THE 1500S', '2022-08-29', '2022-08-30 00:37:33', '2022-08-30 00:37:33'),
(2, 2, 'LOREM IPSUM HAS BEEN THE INDUSTRY\'S STANDARD DUMMY TEXT EVER SINCE THE 1500S', 'T IS A LONG ESTABLISHED FACT THAT A READER WILL BE DISTRACTED BY THE READABLE CONTENT OF A PAGE WHEN LOOKING AT ITS LAYOUT. THE POINT OF USING LOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL', '2022-08-29', '2022-08-30 00:45:14', '2022-08-30 00:45:14');

-- --------------------------------------------------------

--
-- Table structure for table `informacion_usuarios`
--

CREATE TABLE `informacion_usuarios` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `paterno` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `materno` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ci` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ci_exp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dir` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fono` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `informacion_usuarios`
--

INSERT INTO `informacion_usuarios` (`id`, `user_id`, `nombre`, `paterno`, `materno`, `ci`, `ci_exp`, `dir`, `correo`, `fono`, `cel`, `foto`, `created_at`, `updated_at`) VALUES
(1, 2, 'JUAN', 'PERES', '', '1111', 'LP', 'ZONA LOS OLIVOS CALLE 3 #333', '', '222222', '7777777', '1698422253_JPERES.jpg', '2022-08-30 00:36:43', '2023-10-27 15:57:33'),
(2, 3, 'MARIA', 'MAMANI', '', '2222', 'CB', 'ZONA LOS OLIVOS', 'maria@gmail.com', '22222', '777777', 'default.png', '2022-08-30 00:37:02', '2022-08-30 00:37:02'),
(3, 4, 'PEDRO', 'RAMIRES', '', '3333', 'LP', 'LOS OLIVOS', 'pedro@gmail.com', '22222', '777777', '1661820601_PRAMIRES.jpg', '2022-08-30 00:50:01', '2022-08-30 00:50:01');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2022_08_14_000000_create_informacion_usuarios_table', 1),
(5, '2022_08_17_131935_create_personals_table', 1),
(6, '2022_08_17_132012_create_tipo_soportes_table', 1),
(7, '2022_08_17_132121_create_tickets_table', 1),
(8, '2022_08_17_132134_create_solucion_tickets_table', 1),
(9, '2022_08_17_132146_create_faqs_table', 1),
(10, '2022_08_17_134837_create_archivos_tickets_table', 1),
(11, '2022_08_17_131904_create_configuracions_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `personals`
--

CREATE TABLE `personals` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personals`
--

INSERT INTO `personals` (`id`, `user_id`) VALUES
(1, 3),
(2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `solucion_tickets`
--

CREATE TABLE `solucion_tickets` (
  `id` bigint UNSIGNED NOT NULL,
  `ticket_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `tipo_incidencia` enum('REGISTRO','SOLUCION') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `asunto` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `envio` enum('ENVIADO','RECIBIDO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` enum('PENDIENTE','SOLUCIONADO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `solucion_tickets`
--

INSERT INTO `solucion_tickets` (`id`, `ticket_id`, `user_id`, `tipo_incidencia`, `asunto`, `descripcion`, `envio`, `estado`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'SOLUCION', 'PRUEBA SOLUCION PENDIENTE', 'DESCRIPCION', 'RECIBIDO', 'PENDIENTE', '2022-08-30 00:47:15', '2022-08-30 00:47:15'),
(2, 1, 3, 'REGISTRO', 'PRUEBA RESPUESTA', 'DESCRIPCION', 'RECIBIDO', 'PENDIENTE', '2022-08-30 00:47:43', '2022-08-30 00:47:43'),
(3, 1, 2, 'SOLUCION', 'SOLUCIONADO', 'PRUEBA SOLUCION', 'RECIBIDO', 'SOLUCIONADO', '2022-08-30 00:47:57', '2022-08-30 00:47:57'),
(4, 3, 2, 'SOLUCION', 'SOLUCION RAPIDA', 'DESCRIPCION SOLUCION CON ARCHIVOS', 'RECIBIDO', 'SOLUCIONADO', '2022-08-30 00:51:15', '2022-08-30 00:51:15'),
(5, 2, 2, 'SOLUCION', 'PRUEBA SOLUCION', 'DESCRIPCION SOLUCION', 'RECIBIDO', 'PENDIENTE', '2022-08-30 00:58:48', '2022-08-30 00:58:48');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint UNSIGNED NOT NULL,
  `tipo_soporte_id` bigint UNSIGNED NOT NULL,
  `prioridad` enum('ALTO','MEDIO','BAJO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `asunto` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` enum('PENDIENTE','SOLUCIONADO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `editable` tinyint(1) NOT NULL DEFAULT '1',
  `fecha_registro` date NOT NULL,
  `envio` enum('ENVIADO','RECIBIDO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `eliminado` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `tipo_soporte_id`, `prioridad`, `asunto`, `descripcion`, `estado`, `editable`, `fecha_registro`, `envio`, `user_id`, `eliminado`, `created_at`, `updated_at`) VALUES
(1, 1, 'ALTO', 'TICKET PRIORIDAD ALTO', 'IT IS A LONG ESTABLISHED FACT THAT A READER WILL BE DISTRACTED BY THE READABLE CONTENT OF A PAGE WHEN LOOKING AT ITS LAYOUT. THE POINT OF USING LOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE', 'SOLUCIONADO', 1, '2022-08-29', 'RECIBIDO', 3, 0, '2022-08-30 00:46:04', '2022-08-30 01:43:37'),
(2, 2, 'MEDIO', 'TICKET PRIORIDAD MEDIO HARDWARE', 'IT IS A LONG ESTABLISHED FACT THAT A READER WILL BE DISTRACTED BY THE READABLE CONTENT OF A PAGE WHEN LOOKING AT ITS LAYOUT. THE POINT OF USING LOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE', 'PENDIENTE', 1, '2022-08-29', 'RECIBIDO', 3, 0, '2022-08-30 00:46:04', '2022-08-30 01:43:22'),
(3, 1, 'BAJO', 'TICKET PRIORDAD BAJO', 'DESCRIPCION TICKET CON PRIORDAD BAJO', 'SOLUCIONADO', 1, '2022-08-29', 'RECIBIDO', 4, 0, '2022-08-30 00:50:37', '2022-08-30 01:43:22');

-- --------------------------------------------------------

--
-- Table structure for table `tipo_soportes`
--

CREATE TABLE `tipo_soportes` (
  `id` bigint UNSIGNED NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tipo_soportes`
--

INSERT INTO `tipo_soportes` (`id`, `nombre`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'SOFTWARE', '', '2022-08-18 14:15:31', '2022-08-18 14:15:31'),
(2, 'HARDWARE', 'DESCRIPCION DE HARDWARE', '2022-08-18 14:15:56', '2022-08-18 14:16:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `usuario` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` enum('ADMINISTRADOR','PERSONAL','TÉCNICO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_registro` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `usuario`, `password`, `tipo`, `fecha_registro`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$cDSOdzTsMDQAfqcb6.WFtu40s.wmQ4Jl8poIwW69MSZnnedD3prKu', 'ADMINISTRADOR', '2022-08-17', NULL, NULL),
(2, 'JPERES', '$2y$10$sdHndqy.H9DSG5YWSjrSqOgndjg75dr8Re9.9lcXQitNE9n5zSGJC', 'TÉCNICO', '2022-08-29', '2022-08-30 00:36:43', '2022-08-30 00:36:43'),
(3, 'MMAMANI', '$2y$10$gG3KUa579RZx7NbBMO7jSekfP0VaF3pKn7jLWlgXk5EQKWzOAhUXC', 'PERSONAL', '2022-08-29', '2022-08-30 00:37:02', '2022-08-30 00:37:02'),
(4, 'PRAMIRES', '$2y$10$FzEu7qEcjIj2sPfX2Os6h.h2Ma44PnuZI/qGjXHkHaci4ipjTWoim', 'PERSONAL', '2022-08-29', '2022-08-30 00:50:01', '2022-08-30 00:50:01'),
(7, 'RFLORES', '$2y$10$kQyl7ax9Kc0g8ORN/lfDzecJF7vRets6iPfKPh.EPP2OLOXTOeaeS', 'ADMINISTRADOR', '2023-10-27', '2023-10-27 15:51:05', '2023-10-27 15:51:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `archivos_tickets`
--
ALTER TABLE `archivos_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `configuracions`
--
ALTER TABLE `configuracions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `informacion_usuarios`
--
ALTER TABLE `informacion_usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `informacion_usuarios_correo_unique` (`correo`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personals`
--
ALTER TABLE `personals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `solucion_tickets`
--
ALTER TABLE `solucion_tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `solucion_tickets_ticket_id_foreign` (`ticket_id`),
  ADD KEY `solucion_tickets_user_id_foreign` (`user_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tipo_soportes`
--
ALTER TABLE `tipo_soportes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `archivos_tickets`
--
ALTER TABLE `archivos_tickets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `configuracions`
--
ALTER TABLE `configuracions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `informacion_usuarios`
--
ALTER TABLE `informacion_usuarios`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personals`
--
ALTER TABLE `personals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `solucion_tickets`
--
ALTER TABLE `solucion_tickets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tipo_soportes`
--
ALTER TABLE `tipo_soportes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `solucion_tickets`
--
ALTER TABLE `solucion_tickets`
  ADD CONSTRAINT `solucion_tickets_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`),
  ADD CONSTRAINT `solucion_tickets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
