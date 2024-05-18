-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-05-2024 a las 20:02:22
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `iot_car`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarDatos` (IN `valorEstatus` VARCHAR(1))   INSERT INTO carStatus (estatus)     VALUES (valorEstatus)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `obtieneEstatus` ()   SELECT estatus FROM carstatus ORDER BY id DESC LIMIT 1$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carstatus`
--

CREATE TABLE `carstatus` (
  `id` int(11) NOT NULL,
  `estatus` varchar(1) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `carstatus`
--

INSERT INTO `carstatus` (`id`, `estatus`, `date`) VALUES
(1, 'f', '2024-04-23 17:27:16'),
(10, 'w', '2024-05-02 06:12:29'),
(11, 's', '2024-05-02 06:12:54'),
(12, 'a', '2024-05-02 06:12:59'),
(13, 'd', '2024-05-02 06:13:05'),
(14, 'x', '2024-05-02 06:13:10'),
(15, 'w', '2024-05-02 06:19:02'),
(16, 'w', '2024-05-02 17:28:17'),
(17, 'w', '2024-05-02 17:34:48'),
(18, 's', '2024-05-02 17:36:01'),
(19, 'x', '2024-05-02 17:36:16'),
(20, 's', '2024-05-02 17:49:59'),
(21, 'x', '2024-05-02 17:50:16'),
(22, 'd', '2024-05-02 17:50:19'),
(23, 'a', '2024-05-02 17:50:21'),
(24, 'w', '2024-05-02 17:50:23'),
(25, 'w', '2024-05-02 17:58:36'),
(26, 'w', '2024-05-02 17:59:09'),
(27, 'x', '2024-05-02 17:59:11'),
(28, 'd', '2024-05-02 17:59:16'),
(29, 'd', '2024-05-02 17:59:18'),
(30, 'w', '2024-05-02 18:01:48'),
(31, 'x', '2024-05-02 18:38:12'),
(32, 'w', '2024-05-02 18:41:54'),
(33, 'x', '2024-05-02 18:42:06'),
(34, 'a', '2024-05-02 18:42:08'),
(35, 'a', '2024-05-02 18:42:09'),
(36, 'w', '2024-05-02 18:42:13'),
(37, 'd', '2024-05-02 18:44:38'),
(38, 'x', '2024-05-02 18:44:41'),
(39, 'a', '2024-05-02 18:44:42'),
(40, 's', '2024-05-02 18:44:45'),
(41, 'w', '2024-05-02 18:44:47');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carstatus`
--
ALTER TABLE `carstatus`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carstatus`
--
ALTER TABLE `carstatus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
