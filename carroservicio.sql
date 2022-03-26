-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-03-2022 a las 03:13:04
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `carroservicio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inspecciones_unidad`
--

CREATE TABLE `inspecciones_unidad` (
  `id` int(11) NOT NULL,
  `id_unidad` int(11) NOT NULL,
  `id_nivel_gasolina` int(11) NOT NULL,
  `id_nivel_aceite` int(11) NOT NULL,
  `nivel_aire_chofer_delantera` tinyint(4) NOT NULL,
  `nivel_aire_chofer_trasera` tinyint(4) NOT NULL,
  `nivel_aire_copiloto_delantera` tinyint(4) NOT NULL,
  `nivel_aire_copiloto_trasera` tinyint(4) NOT NULL,
  `fecha` date NOT NULL,
  `observaciones` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `inspecciones_unidad`
--

INSERT INTO `inspecciones_unidad` (`id`, `id_unidad`, `id_nivel_gasolina`, `id_nivel_aceite`, `nivel_aire_chofer_delantera`, `nivel_aire_chofer_trasera`, `nivel_aire_copiloto_delantera`, `nivel_aire_copiloto_trasera`, `fecha`, `observaciones`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, '2022-03-01', 'nada', '2022-03-25 11:54:42', '2022-03-25 11:54:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `niveles_aceite`
--

CREATE TABLE `niveles_aceite` (
  `id` int(11) NOT NULL,
  `nivel` varchar(64) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `niveles_aceite`
--

INSERT INTO `niveles_aceite` (`id`, `nivel`, `created_at`, `updated_at`) VALUES
(1, 'Vacio', '2022-03-25 02:45:32', NULL),
(2, 'Bajo', '2022-03-25 02:45:32', NULL),
(3, 'Medio', '2022-03-25 02:45:32', NULL),
(4, 'Normal', '2022-03-25 02:45:32', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `niveles_gasolina`
--

CREATE TABLE `niveles_gasolina` (
  `id` int(11) NOT NULL,
  `nivel` varchar(64) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `niveles_gasolina`
--

INSERT INTO `niveles_gasolina` (`id`, `nivel`, `created_at`, `updated_at`) VALUES
(1, 'En reserva', '2022-03-25 02:44:45', NULL),
(2, 'Hasta un 1/4 tanque', '2022-03-25 02:44:45', NULL),
(3, 'Mas de 1/4 hasta 1/2 tanque', '2022-03-25 02:44:45', NULL),
(4, 'Mas de 1/2 hasta 3/4 tanque', '2022-03-25 02:44:45', NULL),
(5, 'Mas de 3/4 hasta tanque lleno', '2022-03-25 02:44:45', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidades`
--

CREATE TABLE `unidades` (
  `id` int(11) NOT NULL,
  `codigo` varchar(64) NOT NULL,
  `placa` varchar(16) NOT NULL,
  `marca` varchar(64) NOT NULL,
  `modelo` varchar(64) NOT NULL,
  `ano` varchar(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `unidades`
--

INSERT INTO `unidades` (`id`, `codigo`, `placa`, `marca`, `modelo`, `ano`, `created_at`, `updated_at`) VALUES
(1, '18OK9534RF67', 'WEY687', 'Hyundai', 'Elantra', '2019', '2022-03-25 02:52:38', NULL),
(2, '34YU6109HI03', 'DEA257', 'Suzuki', 'Celerio', '2015', '2022-03-25 02:52:38', NULL),
(3, '45YE3478PO92', 'GEM674', 'Kia', 'Soul', '2021', '2022-03-25 02:52:38', NULL),
(4, '34NI7634PL02', 'TRO723', 'Chevrolet', 'Camaro', '2008', '2022-03-26 00:47:34', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `inspecciones_unidad`
--
ALTER TABLE `inspecciones_unidad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_unidad` (`id_unidad`,`id_nivel_gasolina`,`id_nivel_aceite`),
  ADD KEY `id_nivel_gasolina` (`id_nivel_gasolina`),
  ADD KEY `id_nivel_aceite` (`id_nivel_aceite`);

--
-- Indices de la tabla `niveles_aceite`
--
ALTER TABLE `niveles_aceite`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `niveles_gasolina`
--
ALTER TABLE `niveles_gasolina`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `unidades`
--
ALTER TABLE `unidades`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `inspecciones_unidad`
--
ALTER TABLE `inspecciones_unidad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `niveles_aceite`
--
ALTER TABLE `niveles_aceite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `niveles_gasolina`
--
ALTER TABLE `niveles_gasolina`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `unidades`
--
ALTER TABLE `unidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `inspecciones_unidad`
--
ALTER TABLE `inspecciones_unidad`
  ADD CONSTRAINT `inspecciones_unidad_ibfk_1` FOREIGN KEY (`id_unidad`) REFERENCES `unidades` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `inspecciones_unidad_ibfk_2` FOREIGN KEY (`id_nivel_gasolina`) REFERENCES `niveles_gasolina` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `inspecciones_unidad_ibfk_3` FOREIGN KEY (`id_nivel_aceite`) REFERENCES `niveles_aceite` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
