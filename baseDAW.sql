-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-01-2018 a las 16:34:24
-- Versión del servidor: 5.6.26
-- Versión de PHP: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `calestenia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `avanzados`
--

CREATE TABLE IF NOT EXISTS `avanzados` (
  `idAvanzado` int(10) unsigned NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grupoMuscular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nivel` int(11) NOT NULL,
  `idRutinaAvanzados` int(10) unsigned NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `avanzados`
--

INSERT INTO `avanzados` (`idAvanzado`, `nombre`, `grupoMuscular`, `nivel`, `idRutinaAvanzados`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Plancha back con piernas doblas', 'Espalda, recto abdominal', 3, 3, NULL, NULL, NULL),
(2, 'Posicion de pica', 'Espalda, recto abdominal', 3, 3, NULL, NULL, NULL),
(3, 'Plancha back con una pierna doblada', 'Espalda, triceps, recto abdominal', 4, 3, NULL, NULL, NULL),
(4, 'Plancha back completa', 'Espalda, pierna, triceps, recto abdominal', 4, 3, NULL, NULL, NULL),
(5, 'Plancha con piernas dobladas a front', 'Espalda, recto abdominal, triceps', 3, 4, NULL, NULL, NULL),
(6, 'Plancha con una pierna doblada a front', 'Espalda, triceps, pierna, recto abdominal', 4, 4, NULL, NULL, NULL),
(7, 'Plancha front', 'Espalda, triceps, recto abdominal, pierna', 4, 4, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `basicos`
--

CREATE TABLE IF NOT EXISTS `basicos` (
  `idBasico` int(10) unsigned NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grupoMuscular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nivel` int(11) NOT NULL,
  `idRutinaBasicos` int(10) unsigned NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `basicos`
--

INSERT INTO `basicos` (`idBasico`, `nombre`, `grupoMuscular`, `nivel`, `idRutinaBasicos`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Dominadas prono cerradas', 'Espalda', 2, 1, NULL, NULL, NULL),
(3, 'Dominadas prono normales', 'Espalda', 2, 1, NULL, NULL, NULL),
(4, 'Dominadas supino cerradas', 'Espalda', 2, 1, NULL, NULL, NULL),
(5, 'Dominadas supino normales', 'Espalda', 2, 1, NULL, NULL, NULL),
(6, 'Flexiones', 'Pecho triceps', 1, 2, NULL, NULL, NULL),
(7, 'Fondos de triceps', 'Pecho triceps', 2, 2, NULL, NULL, NULL),
(8, 'Flexiones inclinadas', 'Pecho triceps', 1, 2, NULL, NULL, NULL),
(9, 'Remo', 'Espalda', 1, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(12, '2014_10_12_000000_create_rutinas_table', 1),
(13, '2014_10_12_100000_create_basicos_table', 1),
(14, '2018_01_31_143001_create_avanzados_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rutinas`
--

CREATE TABLE IF NOT EXISTS `rutinas` (
  `idRutina` int(10) unsigned NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grupoMuscular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nivel` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `rutinas`
--

INSERT INTO `rutinas` (`idRutina`, `nombre`, `grupoMuscular`, `nivel`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rutina de basicos Espalda', 'Espalda', 2, NULL, NULL, NULL),
(2, 'Rutina basicos pecho-tríceps', 'Pecho y tríceps', 1, NULL, NULL, NULL),
(3, 'Plancha back', 'Espalda, triceps, recto abdominal y pierna', 4, NULL, NULL, NULL),
(4, 'Plancha front', 'Recto abdominal, pierna, espalda', 4, NULL, NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `avanzados`
--
ALTER TABLE `avanzados`
  ADD PRIMARY KEY (`idAvanzado`),
  ADD KEY `avanzados_idrutinaavanzados_foreign` (`idRutinaAvanzados`);

--
-- Indices de la tabla `basicos`
--
ALTER TABLE `basicos`
  ADD PRIMARY KEY (`idBasico`),
  ADD KEY `basicos_idrutinabasicos_foreign` (`idRutinaBasicos`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rutinas`
--
ALTER TABLE `rutinas`
  ADD PRIMARY KEY (`idRutina`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `avanzados`
--
ALTER TABLE `avanzados`
  MODIFY `idAvanzado` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `basicos`
--
ALTER TABLE `basicos`
  MODIFY `idBasico` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `rutinas`
--
ALTER TABLE `rutinas`
  MODIFY `idRutina` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `avanzados`
--
ALTER TABLE `avanzados`
  ADD CONSTRAINT `avanzados_idrutinaavanzados_foreign` FOREIGN KEY (`idRutinaAvanzados`) REFERENCES `rutinas` (`idRutina`) ON DELETE CASCADE;

--
-- Filtros para la tabla `basicos`
--
ALTER TABLE `basicos`
  ADD CONSTRAINT `basicos_idrutinabasicos_foreign` FOREIGN KEY (`idRutinaBasicos`) REFERENCES `rutinas` (`idRutina`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
