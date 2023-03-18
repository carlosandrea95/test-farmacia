-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-03-2023 a las 23:52:40
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `test_farmacia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `stage` int(10) UNSIGNED DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `courses`
--

INSERT INTO `courses` (`id`, `name`, `stage`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 'MATEMATICA', 2, 0, NULL, NULL),
(2, 'MATEMATICA', 3, 0, NULL, NULL),
(3, 'MATEMATICA', 4, 0, NULL, NULL),
(4, 'BIOLOGICA', 1, 0, NULL, NULL),
(5, 'BIOLOGICA', 2, 0, NULL, NULL),
(6, 'QUIMICA', 1, 0, NULL, NULL),
(7, 'QUIMICA', 2, 0, NULL, NULL),
(8, 'ESTADISTICA', 1, 0, NULL, NULL),
(9, 'ESTADISTICA', 2, 0, NULL, NULL),
(10, 'CALCULO', 1, 0, NULL, NULL),
(11, 'CALCULO', 2, 0, NULL, NULL),
(12, 'PROGRAMACION', 1, 0, NULL, NULL),
(13, 'PROGRAMACION', 2, 0, NULL, NULL),
(14, 'PROGRAMACION', 3, 0, NULL, NULL),
(15, 'PROGRAMACION', 4, 0, NULL, NULL),
(16, 'BASE DE DATOS', 1, 0, NULL, NULL),
(17, 'BASE DE DATOS', 2, 0, NULL, NULL),
(18, 'DEPORTES', NULL, 0, NULL, NULL),
(19, 'LENGUAJE', NULL, 0, NULL, NULL),
(20, 'DIBUJO TECNICO', NULL, 0, NULL, NULL),
(21, 'MUSICA', NULL, 0, NULL, NULL),
(22, 'CONTABILIDAD', 1, 0, NULL, NULL),
(23, 'CONTABILIDAD', 2, 0, NULL, NULL),
(24, 'CONTABILIDAD', 3, 0, NULL, NULL),
(25, 'CONTABILIDAD', 4, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `grades`
--

CREATE TABLE `grades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `studentId` bigint(20) UNSIGNED NOT NULL,
  `courseId` bigint(20) UNSIGNED NOT NULL,
  `score` int(10) UNSIGNED NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `grades`
--

INSERT INTO `grades` (`id`, `studentId`, `courseId`, `score`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 5, 23, 4, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(2, 15, 22, 11, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(3, 9, 4, 7, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(4, 8, 20, 9, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(5, 48, 13, 12, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(6, 26, 20, 9, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(7, 38, 15, 13, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(8, 17, 22, 5, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(9, 37, 25, 14, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(10, 25, 11, 13, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(11, 43, 12, 15, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(12, 15, 7, 11, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(13, 43, 19, 4, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(14, 30, 13, 14, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(15, 2, 1, 2, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(16, 23, 24, 7, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(17, 45, 14, 20, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(18, 13, 9, 2, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(19, 15, 7, 10, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(20, 34, 23, 10, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(21, 32, 22, 8, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(22, 19, 19, 13, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(23, 42, 10, 10, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(24, 10, 13, 1, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(25, 37, 15, 13, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(26, 28, 20, 8, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(27, 22, 2, 3, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(28, 19, 13, 8, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(29, 23, 3, 4, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(30, 27, 5, 7, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(31, 4, 11, 18, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(32, 8, 4, 6, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(33, 4, 12, 4, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(34, 27, 3, 20, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(35, 29, 24, 1, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(36, 22, 1, 17, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(37, 2, 17, 6, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(38, 26, 17, 16, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(39, 49, 14, 15, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(40, 9, 16, 13, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(41, 16, 16, 6, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(42, 23, 12, 1, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(43, 43, 3, 1, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(44, 47, 14, 20, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(45, 10, 3, 17, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(46, 2, 15, 17, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(47, 27, 3, 20, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(48, 30, 1, 7, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(49, 30, 2, 9, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(50, 8, 10, 12, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(51, 32, 14, 17, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(52, 25, 1, 15, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(53, 23, 5, 10, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(54, 43, 23, 20, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(55, 11, 3, 17, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(56, 45, 2, 11, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(57, 27, 4, 2, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(58, 49, 17, 10, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(59, 23, 21, 15, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(60, 11, 22, 15, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(61, 2, 0, 18, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(62, 28, 3, 19, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(63, 14, 16, 5, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(64, 20, 7, 5, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(65, 14, 18, 16, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(66, 40, 17, 18, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(67, 26, 23, 1, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(68, 20, 24, 11, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(69, 45, 24, 20, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(70, 1, 5, 18, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(71, 47, 2, 11, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(72, 26, 24, 4, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(73, 11, 13, 16, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(74, 24, 1, 16, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(75, 43, 24, 3, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(76, 48, 9, 16, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(77, 2, 19, 15, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(78, 22, 24, 10, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(79, 31, 15, 2, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(80, 34, 4, 16, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(81, 28, 9, 2, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(82, 24, 2, 1, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(83, 41, 3, 2, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(84, 6, 9, 6, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(85, 29, 0, 5, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(86, 7, 25, 10, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(87, 30, 13, 17, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(88, 31, 14, 0, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(89, 17, 17, 7, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(90, 34, 11, 2, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(91, 13, 24, 1, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(92, 17, 15, 18, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(93, 34, 20, 18, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(94, 4, 19, 12, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(95, 28, 3, 17, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(96, 43, 22, 15, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(97, 5, 7, 0, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(98, 14, 9, 18, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(99, 26, 23, 1, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35'),
(100, 23, 5, 12, 0, '2023-03-18 22:18:35', '2023-03-18 22:18:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(22, '2014_10_12_000000_create_users_table', 1),
(23, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(24, '2019_08_19_000000_create_failed_jobs_table', 1),
(25, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(26, '2023_03_17_131531_create_students_table', 1),
(27, '2023_03_17_131541_create_grades_table', 1),
(28, '2023_03_17_131612_create_courses_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
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
-- Estructura de tabla para la tabla `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `carnetId` int(10) UNSIGNED DEFAULT NULL,
  `dni` int(10) UNSIGNED NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `sex` varchar(1) NOT NULL,
  `stage` int(11) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `students`
--

INSERT INTO `students` (`id`, `carnetId`, `dni`, `fname`, `lname`, `sex`, `stage`, `phone`, `address`, `status`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 1333704768, 56416133, 'Seth', 'Black', 'F', 7, 183778088, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 0, 0, '2023-03-18 22:03:52', '2023-03-18 22:03:52'),
(2, 4294967295, 56416134, 'Lea', 'Peck', 'M', 6, 2147483647, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, 0, '2023-03-18 22:03:52', '2023-03-18 22:03:52'),
(3, 4294967295, 56416135, 'Moises', 'Ramey', 'M', 9, 2108720626, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 0, 0, '2023-03-18 22:03:52', '2023-03-18 22:03:52'),
(4, 4294967295, 56416136, 'Johan', 'Moua', 'F', 9, 947570689, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 0, 0, '2023-03-18 22:03:52', '2023-03-18 22:03:52'),
(5, 4294967295, 56416137, 'Darren', 'Fairchild', 'F', 5, 2147483647, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 0, 0, '2023-03-18 22:03:52', '2023-03-18 22:03:52'),
(6, 3613176777, 56416138, 'Kaylynn', 'Concepcion', 'F', 6, 2147483647, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, 0, '2023-03-18 22:03:52', '2023-03-18 22:03:52'),
(7, 4144501736, 56416139, 'Reese', 'Parra', 'M', 5, 843662778, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, 0, '2023-03-18 22:03:52', '2023-03-18 22:03:52'),
(8, 4294967295, 56416140, 'Babygirl', 'Johansen', 'M', 6, 2147483647, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 0, 0, '2023-03-18 22:03:52', '2023-03-18 22:03:52'),
(9, 4294967295, 56416141, 'Yvonne', 'Layman', 'M', 8, 324368672, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 0, 0, '2023-03-18 22:03:52', '2023-03-18 22:03:52'),
(10, 4294967295, 56416142, 'Jim', 'Pappas', 'F', 8, 1908629650, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 0, 0, '2023-03-18 22:03:52', '2023-03-18 22:03:52'),
(11, 4294967295, 56416143, 'Presley', 'Goodman', 'M', 7, 2147483647, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 0, 0, '2023-03-18 22:03:52', '2023-03-18 22:03:52'),
(12, 955313668, 56416144, 'Keyanna', 'Bernstein', 'M', 7, 2147483647, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 0, 0, '2023-03-18 22:03:52', '2023-03-18 22:03:52'),
(13, 4294967295, 56416145, 'Jalen', 'Oliva', 'F', 9, 2147483647, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, 0, '2023-03-18 22:03:52', '2023-03-18 22:03:52'),
(14, 828906186, 56416146, 'Demond', 'Keeler', 'F', 5, 2147483647, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, 0, '2023-03-18 22:03:52', '2023-03-18 22:03:52'),
(15, 4294967295, 56416147, 'Dulce', 'Hamm', 'F', 8, 1187986332, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 0, 0, '2023-03-18 22:03:52', '2023-03-18 22:03:52'),
(16, 4294967295, 56416148, 'Ari', 'Healey', 'M', 6, 1386453007, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 0, 0, '2023-03-18 22:03:52', '2023-03-18 22:03:52'),
(17, 1974117459, 56416149, 'Suzanne', 'Freed', 'F', 6, 2147483647, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, 0, '2023-03-18 22:03:52', '2023-03-18 22:03:52'),
(18, 4294967295, 56416150, 'Caiden', 'Leahy', 'M', 9, 2147483647, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 0, 0, '2023-03-18 22:03:52', '2023-03-18 22:03:52'),
(19, 4294967295, 56416151, 'Alexandrea', 'Ellsworth', 'M', 7, 2147483647, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, 0, '2023-03-18 22:03:52', '2023-03-18 22:03:52'),
(20, 4294967295, 56416152, 'Sarina', 'Bolen', 'F', 7, 2147483647, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 0, 0, '2023-03-18 22:03:52', '2023-03-18 22:03:52'),
(21, 4294967295, 56416153, 'Olga', 'Thigpen', 'F', 5, 2147483647, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 0, 0, '2023-03-18 22:03:52', '2023-03-18 22:03:52'),
(22, 4294967295, 56416154, 'Amaya', 'Stull', 'F', 5, 2147483647, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 0, 0, '2023-03-18 22:03:52', '2023-03-18 22:03:52'),
(23, 614501936, 56416155, 'Howard', 'Scherer', 'M', 7, 2147483647, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 0, 0, '2023-03-18 22:03:52', '2023-03-18 22:03:52'),
(24, 4025280172, 56416156, 'Lizette', 'McKenna', 'M', 8, 2147483647, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, 0, '2023-03-18 22:03:52', '2023-03-18 22:03:52'),
(25, 4294967295, 56416157, 'Berenice', 'Foss', 'M', 6, 2147483647, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 0, 0, '2023-03-18 22:03:52', '2023-03-18 22:03:52'),
(26, 4294967295, 56416158, 'Branden', 'Carroll', 'F', 9, 2147483647, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 0, 0, '2023-03-18 22:03:52', '2023-03-18 22:03:52'),
(27, 1844497110, 56416159, 'Darion', 'Otto', 'M', 5, 2147483647, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, 0, '2023-03-18 22:03:52', '2023-03-18 22:03:52'),
(28, 1206576136, 56416160, 'Lillian', 'Mohammed', 'M', 7, 2147483647, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 0, 0, '2023-03-18 22:03:52', '2023-03-18 22:03:52'),
(29, 499389656, 56416161, 'Emma', 'Ralston', 'F', 9, 2147483647, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, 0, '2023-03-18 22:03:52', '2023-03-18 22:03:52'),
(30, 4294967295, 56416162, 'Layla', 'Sanders', 'F', 7, 2147483647, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, 0, '2023-03-18 22:03:52', '2023-03-18 22:03:52'),
(31, 2887932241, 56416163, 'Lars', 'Stoner', 'F', 5, 274293590, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, 0, '2023-03-18 22:03:52', '2023-03-18 22:03:52'),
(32, 4294967295, 56416164, 'Nikki', 'Hammer', 'M', 7, 2147483647, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, 0, '2023-03-18 22:03:52', '2023-03-18 22:03:52'),
(33, 376208452, 56416165, 'Kain', 'Wheeler', 'F', 8, 2147483647, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, 0, '2023-03-18 22:03:52', '2023-03-18 22:03:52'),
(34, 4294967295, 56416166, 'Raekwon', 'Waters', 'M', 8, 2147483647, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 0, 0, '2023-03-18 22:03:52', '2023-03-18 22:03:52'),
(35, 1156573194, 56416167, 'Lazaro', 'Reynolds', 'M', 5, 2147483647, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, 0, '2023-03-18 22:03:52', '2023-03-18 22:03:52'),
(36, 411747331, 56416168, 'Jillian', 'Conklin', 'F', 8, 2147483647, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, 0, '2023-03-18 22:03:52', '2023-03-18 22:03:52'),
(37, 4294967295, 56416169, 'Latavia', 'McCarter', 'F', 5, 1440334675, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, 0, '2023-03-18 22:03:52', '2023-03-18 22:03:52'),
(38, 1709845216, 56416170, 'Christin', 'Davis', 'F', 7, 2147483647, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, 0, '2023-03-18 22:03:52', '2023-03-18 22:03:52'),
(39, 2782174248, 56416171, 'Johnpaul', 'Santiago', 'M', 5, 2147483647, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, 0, '2023-03-18 22:03:52', '2023-03-18 22:03:52'),
(40, 4294967295, 56416172, 'Brett', 'Villanueva', 'M', 5, 2147483647, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 0, 0, '2023-03-18 22:03:52', '2023-03-18 22:03:52'),
(41, 4294967295, 56416173, 'Julio', 'McMahan', 'M', 8, 2147483647, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 0, 0, '2023-03-18 22:03:52', '2023-03-18 22:03:52'),
(42, 1456777957, 56416174, 'Keandre', 'Lawton', 'F', 9, 2147483647, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, 0, '2023-03-18 22:03:52', '2023-03-18 22:03:52'),
(43, 603418881, 56416175, 'Giselle', 'Thai', 'M', 8, 405547991, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 0, 0, '2023-03-18 22:03:52', '2023-03-18 22:03:52'),
(44, 4294967295, 56416176, 'Ashanti', 'Curley', 'M', 7, 2147483647, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, 0, '2023-03-18 22:03:52', '2023-03-18 22:03:52'),
(45, 1423547874, 56416177, 'Cordell', 'McPherson', 'F', 5, 2147483647, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 0, 0, '2023-03-18 22:03:52', '2023-03-18 22:03:52'),
(46, 1177457153, 56416178, 'Darlene', 'Muhammad', 'F', 9, 2147483647, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, 0, '2023-03-18 22:03:52', '2023-03-18 22:03:52'),
(47, 1616642448, 56416179, 'Bronson', 'Cavanaugh', 'F', 7, 2147483647, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 0, 0, '2023-03-18 22:03:52', '2023-03-18 22:03:52'),
(48, 4294967295, 56416180, 'Abriana', 'Lloyd', 'M', 7, 2147483647, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, 0, '2023-03-18 22:03:52', '2023-03-18 22:03:52'),
(49, 4294967295, 56416181, 'Ivana', 'Staley', 'F', 6, 2147483647, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, 0, '2023-03-18 22:03:52', '2023-03-18 22:03:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `grades_studentid_foreign` (`studentId`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `grades`
--
ALTER TABLE `grades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `grades`
--
ALTER TABLE `grades`
  ADD CONSTRAINT `grades_studentid_foreign` FOREIGN KEY (`studentId`) REFERENCES `students` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
