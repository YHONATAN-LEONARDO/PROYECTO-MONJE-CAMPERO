-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-06-2025 a las 00:04:50
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
-- Base de datos: `cine_teatro_monje_campero`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asientos`
--

CREATE TABLE `asientos` (
  `id_asiento` int(11) NOT NULL,
  `id_sala` int(11) DEFAULT NULL,
  `numero_asiento` int(11) DEFAULT NULL,
  `fila` char(1) DEFAULT NULL,
  `estado` enum('disponible','reservado') DEFAULT 'disponible'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `asientos`
--

INSERT INTO `asientos` (`id_asiento`, `id_sala`, `numero_asiento`, `fila`, `estado`) VALUES
(1, 1, 1, 'A', 'disponible'),
(2, 1, 2, 'A', 'disponible'),
(3, 1, 3, 'A', 'disponible'),
(4, 1, 4, 'A', 'disponible'),
(5, 1, 5, 'A', 'disponible'),
(6, 1, 6, 'A', 'disponible'),
(7, 1, 7, 'A', 'disponible'),
(8, 1, 8, 'A', 'disponible'),
(9, 1, 1, 'B', 'disponible'),
(10, 1, 2, 'B', 'disponible'),
(11, 1, 3, 'B', 'disponible'),
(12, 1, 4, 'B', 'disponible'),
(13, 1, 5, 'B', 'disponible'),
(14, 1, 6, 'B', 'disponible'),
(15, 1, 7, 'B', 'disponible'),
(16, 1, 8, 'B', 'disponible'),
(17, 1, 1, 'C', 'disponible'),
(18, 1, 2, 'C', 'disponible'),
(19, 1, 3, 'C', 'disponible'),
(20, 1, 4, 'C', 'disponible'),
(21, 1, 5, 'C', 'disponible'),
(22, 1, 6, 'C', 'disponible'),
(23, 1, 7, 'C', 'disponible'),
(24, 1, 8, 'C', 'disponible'),
(25, 1, 1, 'D', 'disponible'),
(26, 1, 2, 'D', 'disponible'),
(27, 1, 3, 'D', 'disponible'),
(28, 1, 4, 'D', 'disponible'),
(29, 1, 5, 'D', 'disponible'),
(30, 1, 6, 'D', 'disponible'),
(31, 1, 7, 'D', 'disponible'),
(32, 1, 8, 'D', 'disponible'),
(33, 1, 1, 'E', 'disponible'),
(34, 1, 2, 'E', 'disponible'),
(35, 1, 3, 'E', 'disponible'),
(36, 1, 4, 'E', 'disponible'),
(37, 1, 5, 'E', 'disponible'),
(38, 1, 6, 'E', 'disponible'),
(39, 1, 7, 'E', 'disponible'),
(40, 1, 8, 'E', 'disponible'),
(41, 1, 1, 'F', 'disponible'),
(42, 1, 2, 'F', 'disponible'),
(43, 1, 3, 'F', 'disponible'),
(44, 1, 4, 'F', 'disponible'),
(45, 1, 5, 'F', 'disponible'),
(46, 1, 6, 'F', 'disponible'),
(47, 1, 7, 'F', 'disponible'),
(48, 1, 8, 'F', 'disponible'),
(49, 1, 1, 'G', 'disponible'),
(50, 1, 2, 'G', 'disponible'),
(51, 1, 3, 'G', 'disponible'),
(52, 1, 4, 'G', 'disponible'),
(53, 1, 5, 'G', 'disponible'),
(54, 1, 6, 'G', 'disponible'),
(55, 1, 7, 'G', 'disponible'),
(56, 1, 8, 'G', 'disponible'),
(57, 1, 1, 'H', 'disponible'),
(58, 1, 2, 'H', 'disponible'),
(59, 1, 3, 'H', 'disponible'),
(60, 1, 4, 'H', 'disponible'),
(61, 1, 5, 'H', 'disponible'),
(62, 1, 6, 'H', 'disponible'),
(63, 1, 7, 'H', 'disponible'),
(64, 1, 8, 'H', 'disponible'),
(65, 1, 1, 'I', 'disponible'),
(66, 1, 2, 'I', 'disponible'),
(67, 1, 3, 'I', 'disponible'),
(68, 1, 4, 'I', 'disponible'),
(69, 1, 5, 'I', 'disponible'),
(70, 1, 6, 'I', 'disponible'),
(71, 1, 7, 'I', 'disponible'),
(72, 1, 8, 'I', 'disponible'),
(73, 1, 1, 'J', 'disponible'),
(74, 1, 2, 'J', 'disponible'),
(75, 1, 3, 'J', 'disponible'),
(76, 1, 4, 'J', 'disponible'),
(77, 1, 5, 'J', 'disponible'),
(78, 1, 6, 'J', 'disponible'),
(79, 1, 7, 'J', 'disponible'),
(80, 1, 8, 'J', 'disponible'),
(81, 2, 1, 'A', 'disponible'),
(82, 2, 2, 'A', 'disponible'),
(83, 2, 3, 'A', 'disponible'),
(84, 2, 4, 'A', 'disponible'),
(85, 2, 5, 'A', 'disponible'),
(86, 2, 6, 'A', 'disponible'),
(87, 2, 7, 'A', 'disponible'),
(88, 2, 8, 'A', 'disponible'),
(89, 2, 9, 'A', 'disponible'),
(90, 2, 10, 'A', 'disponible'),
(91, 2, 1, 'B', 'disponible'),
(92, 2, 2, 'B', 'disponible'),
(93, 2, 3, 'B', 'disponible'),
(94, 2, 4, 'B', 'disponible'),
(95, 2, 5, 'B', 'disponible'),
(96, 2, 6, 'B', 'disponible'),
(97, 2, 7, 'B', 'disponible'),
(98, 2, 8, 'B', 'disponible'),
(99, 2, 9, 'B', 'disponible'),
(100, 2, 10, 'B', 'disponible'),
(101, 2, 1, 'C', 'disponible'),
(102, 2, 2, 'C', 'disponible'),
(103, 2, 3, 'C', 'disponible'),
(104, 2, 4, 'C', 'disponible'),
(105, 2, 5, 'C', 'disponible'),
(106, 2, 6, 'C', 'disponible'),
(107, 2, 7, 'C', 'disponible'),
(108, 2, 8, 'C', 'disponible'),
(109, 2, 9, 'C', 'disponible'),
(110, 2, 10, 'C', 'disponible'),
(111, 2, 1, 'D', 'disponible'),
(112, 2, 2, 'D', 'disponible'),
(113, 2, 3, 'D', 'disponible'),
(114, 2, 4, 'D', 'disponible'),
(115, 2, 5, 'D', 'disponible'),
(116, 2, 6, 'D', 'disponible'),
(117, 2, 7, 'D', 'disponible'),
(118, 2, 8, 'D', 'disponible'),
(119, 2, 9, 'D', 'disponible'),
(120, 2, 10, 'D', 'disponible'),
(121, 2, 1, 'E', 'disponible'),
(122, 2, 2, 'E', 'disponible'),
(123, 2, 3, 'E', 'disponible'),
(124, 2, 4, 'E', 'disponible'),
(125, 2, 5, 'E', 'disponible'),
(126, 2, 6, 'E', 'disponible'),
(127, 2, 7, 'E', 'disponible'),
(128, 2, 8, 'E', 'disponible'),
(129, 2, 9, 'E', 'disponible'),
(130, 2, 10, 'E', 'disponible'),
(131, 2, 1, 'F', 'disponible'),
(132, 2, 2, 'F', 'disponible'),
(133, 2, 3, 'F', 'disponible'),
(134, 2, 4, 'F', 'disponible'),
(135, 2, 5, 'F', 'disponible'),
(136, 2, 6, 'F', 'disponible'),
(137, 2, 7, 'F', 'disponible'),
(138, 2, 8, 'F', 'disponible'),
(139, 2, 9, 'F', 'disponible'),
(140, 2, 10, 'F', 'disponible'),
(141, 2, 1, 'G', 'disponible'),
(142, 2, 2, 'G', 'disponible'),
(143, 2, 3, 'G', 'disponible'),
(144, 2, 4, 'G', 'disponible'),
(145, 2, 5, 'G', 'disponible'),
(146, 2, 6, 'G', 'disponible'),
(147, 2, 7, 'G', 'disponible'),
(148, 2, 8, 'G', 'disponible'),
(149, 2, 9, 'G', 'disponible'),
(150, 2, 10, 'G', 'disponible'),
(151, 2, 1, 'H', 'disponible'),
(152, 2, 2, 'H', 'disponible'),
(153, 2, 3, 'H', 'disponible'),
(154, 2, 4, 'H', 'disponible'),
(155, 2, 5, 'H', 'disponible'),
(156, 2, 6, 'H', 'disponible'),
(157, 2, 7, 'H', 'disponible'),
(158, 2, 8, 'H', 'disponible'),
(159, 2, 9, 'H', 'disponible'),
(160, 2, 10, 'H', 'disponible'),
(161, 2, 1, 'I', 'disponible'),
(162, 2, 2, 'I', 'disponible'),
(163, 2, 3, 'I', 'disponible'),
(164, 2, 4, 'I', 'disponible'),
(165, 2, 5, 'I', 'disponible'),
(166, 2, 6, 'I', 'disponible'),
(167, 2, 7, 'I', 'disponible'),
(168, 2, 8, 'I', 'disponible'),
(169, 2, 9, 'I', 'disponible'),
(170, 2, 10, 'I', 'disponible'),
(171, 2, 1, 'J', 'disponible'),
(172, 2, 2, 'J', 'disponible'),
(173, 2, 3, 'J', 'disponible'),
(174, 2, 4, 'J', 'disponible'),
(175, 2, 5, 'J', 'disponible'),
(176, 2, 6, 'J', 'disponible'),
(177, 2, 7, 'J', 'disponible'),
(178, 2, 8, 'J', 'disponible'),
(179, 2, 9, 'J', 'disponible'),
(180, 2, 10, 'J', 'disponible');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `boletos`
--

CREATE TABLE `boletos` (
  `id_boleto` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_funcion` int(11) DEFAULT NULL,
  `id_reserva` int(11) DEFAULT NULL,
  `id_asiento` int(11) DEFAULT NULL,
  `id_pago` int(11) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `boletos`
--

INSERT INTO `boletos` (`id_boleto`, `id_usuario`, `id_funcion`, `id_reserva`, `id_asiento`, `id_pago`, `precio`) VALUES
(1, 1, 1, 1, 1, 1, 35.00),
(2, 2, 2, 2, 2, 2, 30.00),
(3, 3, 3, 3, 3, 3, 25.00),
(4, 4, 4, 4, 4, 4, 40.00),
(5, 5, 5, 5, 5, 5, 35.00),
(6, 6, 6, 6, 6, 6, 45.00),
(7, 7, 7, 7, 7, 7, 30.00),
(8, 8, 8, 8, 8, 8, 25.00),
(9, 9, 9, 9, 9, 9, 35.00),
(10, 10, 10, 10, 10, 10, 40.00),
(11, 11, 11, 11, 11, 11, 50.00),
(12, 12, 12, 12, 12, 12, 35.00),
(13, 13, 13, 13, 13, 13, 30.00),
(14, 14, 14, 14, 14, 14, 45.00),
(15, 15, 15, 15, 15, 15, 40.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cartelera_horario`
--

CREATE TABLE `cartelera_horario` (
  `id_cartelera` int(11) NOT NULL,
  `id_pelicula` int(11) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cartelera_horario`
--

INSERT INTO `cartelera_horario` (`id_cartelera`, `id_pelicula`, `fecha_inicio`, `fecha_fin`) VALUES
(1, 1, '2025-06-01', '2025-06-15'),
(2, 2, '2025-06-01', '2025-06-15'),
(3, 3, '2025-06-01', '2025-06-15'),
(4, 4, '2025-06-01', '2025-06-15'),
(5, 5, '2025-06-01', '2025-06-15'),
(6, 6, '2025-06-16', '2025-06-30'),
(7, 7, '2025-06-16', '2025-06-30'),
(8, 8, '2025-06-16', '2025-06-30'),
(9, 9, '2025-06-16', '2025-06-30'),
(10, 10, '2025-06-16', '2025-06-30'),
(11, 11, '2025-07-01', '2025-07-15'),
(12, 12, '2025-07-01', '2025-07-15'),
(13, 13, '2025-07-01', '2025-07-15'),
(14, 14, '2025-07-01', '2025-07-15'),
(15, 15, '2025-07-01', '2025-07-15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta_comida`
--

CREATE TABLE `detalle_venta_comida` (
  `id_detalle` int(11) NOT NULL,
  `id_venta` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_venta_comida`
--

INSERT INTO `detalle_venta_comida` (`id_detalle`, `id_venta`, `id_producto`, `cantidad`) VALUES
(1, 1, 27, 3),
(2, 1, 9, 3),
(3, 1, 7, 2),
(4, 2, 4, 1),
(5, 3, 24, 4),
(6, 3, 25, 2),
(7, 4, 4, 4),
(8, 4, 12, 1),
(9, 5, 11, 1),
(10, 5, 15, 2),
(11, 5, 13, 3),
(12, 6, 9, 2),
(13, 6, 6, 4),
(14, 7, 11, 1),
(15, 7, 15, 1),
(16, 8, 2, 1),
(17, 8, 25, 3),
(18, 8, 8, 1),
(19, 9, 24, 2),
(20, 9, 20, 2),
(21, 9, 9, 1),
(22, 10, 23, 4),
(23, 11, 22, 2),
(24, 12, 2, 4),
(25, 12, 5, 1),
(26, 12, 21, 3),
(27, 13, 19, 3),
(28, 13, 26, 3),
(29, 13, 12, 4),
(30, 14, 9, 3),
(31, 14, 7, 3),
(32, 14, 24, 2),
(33, 15, 3, 2),
(34, 16, 18, 3),
(35, 16, 1, 1),
(36, 17, 23, 2),
(37, 18, 17, 4),
(38, 18, 23, 1),
(39, 19, 16, 2),
(40, 20, 17, 1),
(41, 20, 22, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `funciones`
--

CREATE TABLE `funciones` (
  `id_funcion` int(11) NOT NULL,
  `id_pelicula` int(11) DEFAULT NULL,
  `id_sala` int(11) DEFAULT NULL,
  `fechahora` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `funciones`
--

INSERT INTO `funciones` (`id_funcion`, `id_pelicula`, `id_sala`, `fechahora`) VALUES
(1, 1, 2, '2025-06-16 10:50:00'),
(2, 2, 2, '2025-06-13 21:55:00'),
(3, 3, 2, '2025-06-10 12:50:00'),
(4, 4, 2, '2025-06-07 19:00:00'),
(5, 5, 1, '2025-06-16 10:50:00'),
(6, 6, 2, '2025-06-07 16:55:00'),
(7, 7, 2, '2025-06-16 15:00:00'),
(8, 8, 1, '2025-06-07 10:50:00'),
(9, 9, 1, '2025-06-10 19:00:00'),
(10, 10, 2, '2025-06-07 21:55:00'),
(11, 11, 1, '2025-06-10 15:00:00'),
(12, 12, 2, '2025-06-13 16:55:00'),
(13, 13, 2, '2025-06-07 10:50:00'),
(14, 14, 1, '2025-06-13 19:00:00'),
(15, 15, 1, '2025-06-10 21:55:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `id_genero` int(11) NOT NULL,
  `nombre_genero` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`id_genero`, `nombre_genero`) VALUES
(1, 'Acción'),
(2, 'Aventura'),
(3, 'Comedia'),
(4, 'Drama'),
(5, 'Ciencia ficción'),
(6, 'Fantasía'),
(7, 'Terror'),
(8, 'Suspenso'),
(9, 'Animación'),
(10, 'Documental'),
(11, 'Musical'),
(12, 'Romance'),
(13, 'Crimen'),
(14, 'Misterio'),
(15, 'Bélico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_visualizacion`
--

CREATE TABLE `historial_visualizacion` (
  `id_historial` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_pelicula` int(11) DEFAULT NULL,
  `fecha_visualizacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `historial_visualizacion`
--

INSERT INTO `historial_visualizacion` (`id_historial`, `id_usuario`, `id_pelicula`, `fecha_visualizacion`) VALUES
(1, 1, 1, '2025-06-02 19:30:00'),
(2, 2, 2, '2025-06-03 22:45:00'),
(3, 3, 3, '2025-06-05 00:15:00'),
(4, 4, 4, '2025-06-05 20:00:00'),
(5, 5, 5, '2025-06-06 23:30:00'),
(6, 6, 6, '2025-06-18 01:00:00'),
(7, 7, 7, '2025-06-18 21:45:00'),
(8, 8, 8, '2025-06-19 19:15:00'),
(9, 9, 9, '2025-06-21 02:30:00'),
(10, 10, 10, '2025-06-21 22:00:00'),
(11, 11, 11, '2025-07-02 23:45:00'),
(12, 12, 12, '2025-07-03 20:30:00'),
(13, 13, 13, '2025-07-05 01:15:00'),
(14, 14, 14, '2025-07-05 21:00:00'),
(15, 15, 15, '2025-07-07 00:45:00');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `ocupacion_salas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `ocupacion_salas` (
`nro_sala` int(11)
,`boletos_vendidos` bigint(21)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `id_pago` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `monto` decimal(10,2) DEFAULT NULL,
  `fecha_pago` date DEFAULT NULL,
  `metodo_pago` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pagos`
--

INSERT INTO `pagos` (`id_pago`, `id_usuario`, `monto`, `fecha_pago`, `metodo_pago`) VALUES
(1, 1, 35.00, '2025-06-01', 'Tarjeta'),
(2, 2, 30.00, '2025-06-02', 'Efectivo'),
(3, 3, 25.00, '2025-06-03', 'QR'),
(4, 4, 40.00, '2025-06-04', 'Tarjeta'),
(5, 5, 35.00, '2025-06-05', 'Efectivo'),
(6, 6, 45.00, '2025-06-16', 'Tarjeta'),
(7, 7, 30.00, '2025-06-17', 'Efectivo'),
(8, 8, 25.00, '2025-06-18', 'QR'),
(9, 9, 35.00, '2025-06-19', 'Tarjeta'),
(10, 10, 40.00, '2025-06-20', 'Efectivo'),
(11, 11, 50.00, '2025-07-01', 'Tarjeta'),
(12, 12, 35.00, '2025-07-02', 'Efectivo'),
(13, 13, 30.00, '2025-07-03', 'QR'),
(14, 14, 45.00, '2025-07-04', 'Tarjeta'),
(15, 15, 40.00, '2025-07-05', 'Efectivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--

CREATE TABLE `peliculas` (
  `id_pelicula` int(11) NOT NULL,
  `nombre_pelicula` varchar(200) NOT NULL,
  `duracion` int(11) DEFAULT NULL,
  `sinopsis` text DEFAULT NULL,
  `id_genero` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`id_pelicula`, `nombre_pelicula`, `duracion`, `sinopsis`, `id_genero`) VALUES
(1, 'Better Man', 131, 'Biografía musical sobre la vida y carrera del cantante británico Robbie Williams.', 11),
(2, 'The Brutalist', 215, 'Drama épico sobre un arquitecto húngaro que emigra a EE.UU. después de la Segunda Guerra Mundial.', 4),
(3, 'Flow, un mundo que salvar', 83, 'Una historia animada que explora el equilibrio ecológico en un mundo fantástico.', 9),
(4, 'Blancanieves', 120, 'Adaptación en acción real del clásico cuento de hadas de los hermanos Grimm.', 6),
(5, 'Una película de Minecraft', 110, 'Aventura inspirada en el videojuego Minecraft, con un grupo de héroes salvando su mundo pixelado.', 2),
(6, 'Misión imposible: Sentencia final', 150, 'Ethan Hunt regresa en su última y más peligrosa misión para detener una conspiración global.', 1),
(7, 'Lilo y Stitch', 95, 'Remake live-action del clásico de Disney sobre una niña hawaiana y su amigo alienígena.', 9),
(8, 'Ballerina', 100, 'Spin-off del universo de John Wick centrado en una asesina entrenada en una academia de ballet.', 8),
(9, 'Cómo entrenar a tu dragón', 98, 'Nueva entrega en acción real de la saga sobre el vínculo entre vikingos y dragones.', 6),
(10, '28 años después', 120, 'Secuela del clásico de terror postapocalíptico con nuevos horrores y supervivientes.', 7),
(11, 'Jurassic World: El Renacer', 130, 'Un nuevo capítulo donde humanos y dinosaurios deben coexistir en un mundo colapsado.', 2),
(12, 'El Padrino', 175, 'Un clásico del cine que narra la historia de la familia mafiosa Corleone.', 13),
(13, 'Terminator 2: El juicio final', 137, 'Un cyborg del futuro regresa para proteger a un niño destinado a cambiar el mundo.', 1),
(14, 'Toy Story', 81, 'Los juguetes de un niño cobran vida cuando nadie los ve.', 9),
(15, 'Buscando a Nemo', 100, 'Un pez payaso recorre el océano en busca de su hijo perdido.', 9),
(16, 'Los Increíbles', 115, 'Una familia de superhéroes lucha por salvar el mundo mientras mantiene sus identidades secretas.', 1),
(17, 'Frozen', 102, 'Una princesa debe encontrar a su hermana que posee poderes mágicos de hielo.', 6),
(18, 'Joker', 122, 'Orígenes de uno de los villanos más icónicos del universo de Batman.', 4),
(19, 'Zootopia', 108, 'Una coneja policía y un zorro estafador descubren una gran conspiración en su ciudad.', 9),
(20, 'Black Panther', 134, 'El rey de Wakanda debe defender su nación y su legado como superhéroe.', 1),
(21, 'Dune', 155, 'Un joven noble viaja a un planeta desértico para proteger el recurso más valioso del universo.', 6),
(22, 'Barbie', 114, 'Barbie y Ken se aventuran en el mundo real, enfrentando nuevos desafíos y realidades.', 3),
(23, 'Godzilla y Kong: El nuevo imperio', 115, 'Dos titanes legendarios se enfrentan a una nueva amenaza que podría destruir la Tierra.', 1),
(24, 'Shrek', 90, 'Un ogro emprende una aventura para rescatar a una princesa y ganar su pantano de regreso.', 9),
(25, 'Coco', 105, 'Un niño viaja al mundo de los muertos para descubrir el legado de su familia.', 11),
(26, 'Super Mario Bros: La película', 92, 'Los hermanos Mario se enfrentan a Bowser para salvar el Reino Champiñón.', 2),
(27, 'Wall-E', 98, 'Un robot de limpieza solitario descubre el amor y una nueva misión para salvar a la humanidad.', 9),
(28, 'Oppenheimer', 180, 'Relato biográfico sobre el físico detrás de la creación de la bomba atómica.', 10),
(29, 'Top Gun: Maverick', 131, 'El legendario piloto regresa para entrenar a una nueva generación.', 1),
(30, 'Mad Max: Furia en el camino', 120, 'En un mundo postapocalíptico, una mujer rebelde huye con cinco esclavas.', 1),
(31, 'Guardianes de la Galaxia', 122, 'Un grupo de inadaptados se une para salvar la galaxia.', 1),
(32, 'El laberinto del fauno', 118, 'Una niña escapa a un mundo de fantasía en la España franquista.', 6),
(33, 'Avatar', 162, 'Un exmarine se une a una raza alienígena en un mundo exuberante y peligroso.', 2),
(34, 'Up', 96, 'Un anciano y un niño escapan en una casa voladora para vivir una gran aventura.', 9),
(35, 'Blade Runner', 117, 'Un cazador de replicantes cuestiona su propia humanidad en un futuro distópico.', 5),
(36, 'Ukamau', 75, 'Historia de amor y venganza ambientada en el altiplano boliviano.', 4),
(37, 'Yawar Mallku', 70, 'Crítica social sobre la intervención extranjera en comunidades indígenas.', 10),
(38, 'El coraje del pueblo', 90, 'Documental sobre las masacres mineras en Bolivia.', 10),
(39, 'Chuquiago', 85, 'Cuatro historias paralelas muestran la desigualdad en La Paz.', 4),
(40, 'La nación clandestina', 134, 'Un indígena regresa a su comunidad para pagar una deuda espiritual.', 4),
(41, 'Para recibir el canto de los pájaros', 90, 'Explora la visión mítica del mundo en la cosmovisión aymara.', 10),
(42, 'Jonás y la ballena rosada', 100, 'Un joven descubre la literatura y su identidad en un internado.', 4),
(43, 'Zona Sur', 102, 'Una familia acomodada enfrenta el colapso económico y moral.', 4),
(44, '¿Quién mató a la llamita blanca?', 90, 'Comedia policial sobre dos transportistas de droga.', 3),
(45, 'Violeta más allá', 80, 'Drama que retrata el duelo de una mujer por la pérdida de su hija.', 4),
(46, 'El gran movimiento', 85, 'Retrato experimental del mundo urbano y obrero en La Paz.', 10),
(47, 'Utama', 87, 'Una pareja anciana enfrenta la sequía y el abandono rural.', 4),
(48, 'Los viejos', 75, 'Un viaje emocional de reconciliación entre padre e hijo.', 4),
(49, 'El corazón de Julia', 95, 'Una mujer busca respuestas tras la repentina muerte de su madre.', 4),
(50, 'Los de abajo', 88, 'Testimonio social sobre la pobreza y exclusión urbana.', 4),
(51, 'Boquerón', 95, 'Drama histórico basado en la Batalla de Boquerón durante la Guerra del Chaco.', 15),
(52, 'La huerta', 85, 'Drama rural que explora los lazos familiares en el altiplano boliviano.', 4),
(53, 'Santa Clara', 100, 'Suspenso psicológico ambientado en una comunidad minera de los Andes.', 8),
(54, 'El día que murió el silencio', 108, 'Comedia dramática sobre un pueblo que descubre el poder de la radio.', 3),
(55, 'Cuestión de fe', 95, 'Tres amigos intentan conseguir una imagen milagrosa para una procesión.', 3),
(56, 'American Visa', 117, 'Drama sobre un profesor boliviano que intenta emigrar a EE.UU.', 4),
(57, 'Eugenia', 80, 'Retrato existencialista de una joven periodista en Cochabamba.', 4),
(58, 'Hospital Obrero', 87, 'Documental que muestra la vida en un hospital público de La Paz.', 10),
(59, 'El Cementerio de los Elefantes', 92, 'Historia de un alcohólico aislado en un hospedaje paceño.', 4),
(60, 'La bella durmiente', 90, 'Reinterpretación moderna del clásico cuento desde una óptica boliviana.', 6),
(61, 'Olvidados', 112, 'Drama histórico sobre el Plan Cóndor y la represión en Sudamérica.', 4),
(62, 'Coca: la flor sagrada', 75, 'Documental sobre la historia y significado cultural de la hoja de coca.', 10),
(63, 'Viejo calavera', 89, 'Drama que retrata la vida de un joven minero en Huanuni.', 4),
(64, 'Averno', 87, 'Fantasía urbana sobre los mitos andinos en las calles de La Paz.', 6);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `peliculas_populares`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `peliculas_populares` (
`nombre_pelicula` varchar(200)
,`visualizaciones` bigint(21)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `id_permiso` int(11) NOT NULL,
  `rol` varchar(50) NOT NULL,
  `puede_crear_funciones` tinyint(1) DEFAULT 0,
  `puede_ver_reportes` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`id_permiso`, `rol`, `puede_crear_funciones`, `puede_ver_reportes`) VALUES
(1, 'empleado', 1, 1),
(2, 'admin', 1, 1),
(1, 'empleado', 1, 1),
(2, 'admin', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `precios`
--

CREATE TABLE `precios` (
  `id_precio` int(11) NOT NULL,
  `id_sala` int(11) DEFAULT NULL,
  `id_pelicula` int(11) DEFAULT NULL,
  `tipo_descuento` enum('normal','estudiante','adulto_mayor','niño') DEFAULT 'normal',
  `monto` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `precios`
--

INSERT INTO `precios` (`id_precio`, `id_sala`, `id_pelicula`, `tipo_descuento`, `monto`) VALUES
(1, 1, 1, 'normal', 35.00),
(2, 1, 1, 'estudiante', 25.00),
(3, 1, 1, 'adulto_mayor', 20.00),
(4, 1, 1, 'niño', 15.00),
(5, 2, 2, 'normal', 40.00),
(6, 2, 2, 'estudiante', 30.00),
(7, 2, 2, 'adulto_mayor', 25.00),
(8, 2, 2, 'niño', 20.00),
(9, 1, 3, 'normal', 30.00),
(10, 1, 3, 'estudiante', 20.00),
(11, 1, 3, 'adulto_mayor', 15.00),
(12, 1, 3, 'niño', 10.00),
(13, 2, 4, 'normal', 35.00),
(14, 2, 4, 'estudiante', 25.00),
(15, 2, 4, 'adulto_mayor', 20.00),
(16, 2, 4, 'niño', 15.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `stock` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `nombre`, `precio`, `stock`) VALUES
(1, 'Coca-Cola 500ml', 7.00, 100),
(2, 'Sprite 500ml', 7.00, 80),
(3, 'Fanta Naranja 500ml', 7.00, 70),
(4, 'Coca-Cola 1.5L', 13.00, 50),
(5, 'Agua Cielo 600ml', 6.00, 90),
(6, 'Red Bull', 15.00, 30),
(7, 'Popcorn pequeño', 10.00, 100),
(8, 'Popcorn mediano', 15.00, 100),
(9, 'Popcorn grande', 20.00, 100),
(10, 'Popcorn dulce', 15.00, 50),
(11, 'Popcorn mixto', 17.00, 60),
(12, 'Nachos con queso', 18.00, 60),
(13, 'Nachos con jalapeños', 20.00, 40),
(14, 'Snickers', 6.00, 80),
(15, 'M&M\'s', 7.00, 70),
(16, 'Kit Kat', 6.50, 60),
(17, 'Twix', 6.50, 60),
(18, 'Galletas Oreo', 5.00, 90),
(19, 'Gomitas Mogul', 5.00, 100),
(20, 'Chicle Trident', 2.00, 120),
(21, 'Combo Pareja (2 medianos + 2 gaseosas 500ml)', 30.00, 40),
(22, 'Combo Familiar (1 grande + 3 gaseosas 500ml)', 40.00, 30),
(23, 'Combo Nacho + Gaseosa', 22.00, 35),
(24, 'Combo Popcorn + Chocolate + Gaseosa', 25.00, 25),
(25, 'Hot Dog', 15.00, 50),
(26, 'Hamburguesa sencilla', 20.00, 40),
(27, 'Pizza personal', 25.00, 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `id_reserva` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `fecha_reserva` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`id_reserva`, `id_usuario`, `fecha_reserva`) VALUES
(1, 1, '2025-06-01 14:15:00'),
(2, 2, '2025-06-02 15:30:00'),
(3, 3, '2025-06-03 16:45:00'),
(4, 4, '2025-06-04 13:00:00'),
(5, 5, '2025-06-05 18:20:00'),
(6, 6, '2025-06-16 20:30:00'),
(7, 7, '2025-06-17 14:45:00'),
(8, 8, '2025-06-18 17:15:00'),
(9, 9, '2025-06-19 19:30:00'),
(10, 10, '2025-06-20 15:00:00'),
(11, 11, '2025-07-01 16:30:00'),
(12, 12, '2025-07-02 18:45:00'),
(13, 13, '2025-07-03 20:00:00'),
(14, 14, '2025-07-04 14:15:00'),
(15, 15, '2025-07-05 17:30:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salas`
--

CREATE TABLE `salas` (
  `id_sala` int(11) NOT NULL,
  `nro_sala` int(11) NOT NULL,
  `capacidad` int(11) DEFAULT NULL,
  `tipo_sala` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `salas`
--

INSERT INTO `salas` (`id_sala`, `nro_sala`, `capacidad`, `tipo_sala`) VALUES
(1, 1, 80, '2D | DOB. AL ESPAÑOL'),
(2, 2, 100, '2D | DOB. AL ESPAÑOL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suscripciones`
--

CREATE TABLE `suscripciones` (
  `id_suscripcion` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `estado_suscripcion` enum('activa','cancelada','vencida') DEFAULT 'activa',
  `metodo_pago` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `suscripciones`
--

INSERT INTO `suscripciones` (`id_suscripcion`, `id_usuario`, `fecha_inicio`, `fecha_fin`, `estado_suscripcion`, `metodo_pago`) VALUES
(1, 1, '2025-01-01', '2025-12-31', 'activa', 'Tarjeta'),
(2, 2, '2025-03-15', '2025-09-15', 'activa', 'Efectivo'),
(3, 3, '2025-02-01', '2025-08-01', 'vencida', 'QR'),
(4, 4, '2025-04-10', '2025-10-10', 'activa', 'Tarjeta'),
(5, 5, '2025-05-20', '2025-11-20', 'activa', 'Efectivo'),
(6, 6, '2025-01-15', '2025-07-15', 'vencida', 'Tarjeta'),
(7, 7, '2025-03-01', '2025-09-01', 'activa', 'Efectivo'),
(8, 8, '2025-02-10', '2025-08-10', 'vencida', 'QR'),
(9, 9, '2025-04-05', '2025-10-05', 'activa', 'Tarjeta'),
(10, 10, '2025-05-15', '2025-11-15', 'activa', 'Efectivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo_electronico` varchar(100) NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  `genero` varchar(20) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `correo_electronico`, `contrasena`, `genero`, `fecha_nacimiento`, `telefono`) VALUES
(1, 'Ana Pérez', 'anaperez.95@gmail.com', 'AnitaP*2025', 'femenino', '1995-06-12', '+59170012345'),
(2, 'Carlos Soto', 'carlitos.soto@hotmail.com', 'SotoCafe90', 'masculino', '1990-01-25', '+59171234567'),
(3, 'Luisa Méndez', 'luisa.mendez92@outlook.com', 'Lulita*Nov3', 'femenino', '1992-11-03', '+59167754321'),
(4, 'Jorge Ríos', 'jorgeriitos@gmail.com', 'RioMarzo18', 'masculino', '1985-03-18', '+59176543210'),
(5, 'Elena Cruz', 'elenitac.98@hotmail.com', 'NavidadE*98', 'femenino', '1998-12-29', '+59171234098'),
(6, 'Pedro Gómez', 'pedrog.julio89@outlook.com', 'GomezJul22', 'masculino', '1989-07-22', '+59168765432'),
(7, 'Marta Silva', 'martasilva.94@gmail.com', 'SilvaAbril16', 'femenino', '1994-04-16', '+59171122334'),
(8, 'Andrés Valle', 'andres.valle00@hotmail.com', 'ValleSep9*', 'masculino', '2000-09-09', '+59167788990'),
(9, 'Camila Paz', 'camipaz.97@outlook.com', 'Octubre5CP', 'femenino', '1997-10-05', '+59176677889'),
(10, 'Luis Méndez', 'luismendez.93@gmail.com', 'Febrero1LM', 'masculino', '1993-02-01', '+59172233445'),
(11, 'Valeria Flores', 'vale.flores96@hotmail.com', 'Julio14VF*', 'femenino', '1996-07-14', '+59165544332'),
(12, 'Diego Ramos', 'diego.ramos91@outlook.com', 'Marzo21DR', 'masculino', '1991-03-21', '+59171100998'),
(13, 'Paula Álvarez', 'paula.alvarez99@gmail.com', 'Noviembre9PA', 'femenino', '1999-11-09', '+59176655443'),
(14, 'Mateo Herrera', 'mateoh.87@hotmail.com', 'Agosto30MH', 'masculino', '1987-08-30', '+59172211009'),
(15, 'Isabel Vega', 'isavega.94@outlook.com', 'Enero17IV*', 'femenino', '1994-01-17', '+59167766554'),
(16, 'Tomás Blanco', 'tomas.blanco88@gmail.com', 'Mayo4TB2023', 'masculino', '1988-05-04', '+59171188776'),
(17, 'Lucía Romero', 'luluro.95@hotmail.com', 'Octubre20LR', 'femenino', '1995-10-20', '+59165577665'),
(18, 'Sebastián Lara', 'sebaslara.92@outlook.com', 'Junio28SL*', 'masculino', '1992-06-28', '+59176699887'),
(19, 'Carla Gutiérrez', 'carlag.90@gmail.com', 'Febrero13CG', 'femenino', '1990-02-13', '+59172200991'),
(20, 'Ricardo Molina', 'rick.molina86@hotmail.com', 'Diciembre7RM', 'masculino', '1986-12-07', '+59167711223'),
(21, 'Gabriela Torres', 'gabytorres.97@gmail.com', 'Marzo5GT*', 'femenino', '1997-03-05', '+59170098765'),
(22, 'Nicolás Fernández', 'nico.fernandez86@outlook.com', 'Diciembre1NF', 'masculino', '1986-12-01', '+59171209876'),
(23, 'Mariana Delgado', 'maridel.91@hotmail.com', 'Abril23MD', 'femenino', '1991-04-23', '+59167765432'),
(24, 'Bruno Castillo', 'brunoc.93@gmail.com', 'Noviembre12BC', 'masculino', '1993-11-12', '+59176509876'),
(25, 'Fernanda Salazar', 'fer.salazar90@outlook.com', 'Julio8FS*', 'femenino', '1990-07-08', '+59171234509'),
(26, 'Esteban Morales', 'estebanm.89@hotmail.com', 'Septiembre17EM', 'masculino', '1989-09-17', '+59168765098'),
(27, 'Julieta Aguilar', 'julieta.aguilar96@gmail.com', 'Mayo15JA', 'femenino', '1996-05-15', '+59171122309'),
(28, 'Alejandro Castro', 'ale.castro92@outlook.com', 'Enero30AC*', 'masculino', '1992-01-30', '+59167788901'),
(29, 'Florencia Herrera', 'flor.herrera93@gmail.com', 'Agosto18FH', 'femenino', '1993-08-18', '+59176677890'),
(30, 'Tomás Varela', 'tomas.varela95@hotmail.com', 'Octubre11TV', 'masculino', '1995-10-11', '+59172233409'),
(31, 'Daniela Rojas', 'danirojas.99@outlook.com', 'Diciembre3DR*', 'femenino', '1999-12-03', '+59165544301'),
(32, 'Martín Ruiz', 'martin.ruiz88@gmail.com', 'Junio9MR2023', 'masculino', '1988-06-09', '+59171100901'),
(33, 'Rocío Méndez', 'rocio.mendez94@hotmail.com', 'Marzo27RM', 'femenino', '1994-03-27', '+59176655402'),
(34, 'Fabián Ortiz', 'fabian.ortiz91@outlook.com', 'Mayo2FO*', 'masculino', '1991-05-02', '+59172211003'),
(35, 'Alicia Navarro', 'alicia.navarro98@gmail.com', 'Septiembre19AN', 'femenino', '1998-09-19', '+59167766504'),
(36, 'Ignacio Rivas', 'ignacio.rivas87@hotmail.com', 'Febrero14IR', 'masculino', '1987-02-14', '+59171188705'),
(37, 'Sofía Campos', 'sofia.campos96@outlook.com', 'Octubre7SC*', 'femenino', '1996-10-07', '+59165577606'),
(38, 'Rodrigo Fuentes', 'rodri.fuentes93@gmail.com', 'Abril26RF', 'masculino', '1993-04-26', '+59176699807'),
(39, 'Teresa Morales', 'tere.morales92@hotmail.com', 'Julio1TM2023', 'femenino', '1992-07-01', '+59172200908'),
(40, 'David Luján', 'david.lujan85@outlook.com', 'Noviembre16DL*', 'masculino', '1985-11-16', '+59167711209');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `valoraciones`
--

CREATE TABLE `valoraciones` (
  `id_valoracion` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_pelicula` int(11) DEFAULT NULL,
  `comentario` text DEFAULT NULL,
  `puntaje` int(11) DEFAULT NULL CHECK (`puntaje` between 1 and 5),
  `fecha_valoracion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `valoraciones`
--

INSERT INTO `valoraciones` (`id_valoracion`, `id_usuario`, `id_pelicula`, `comentario`, `puntaje`, `fecha_valoracion`) VALUES
(1, 12, 5, 'La historia me atrapó desde el inicio.', 4, '2024-08-21 23:32:10'),
(2, 7, 18, 'Demasiado larga y aburrida.', 2, '2024-11-06 03:15:47'),
(3, 33, 3, 'Excelente película, la volvería a ver.', 5, '2024-09-13 19:23:55'),
(4, 45, 27, 'El final me sorprendió bastante.', 5, '2024-12-29 22:51:01'),
(5, 9, 41, 'Visualmente hermosa, pero algo lenta.', 4, '2025-01-03 18:09:45'),
(6, 21, 13, 'No entendí mucho la trama.', 3, '2024-07-19 02:40:30'),
(7, 6, 22, 'La actuación fue increíble.', 5, '2025-03-28 00:07:11'),
(8, 18, 38, 'No volvería a pagar por verla.', 1, '2024-10-23 05:44:59'),
(9, 30, 15, 'Recomendada para ver en familia.', 5, '2024-08-08 17:31:02'),
(10, 2, 10, 'Personajes bien construidos.', 4, '2025-05-03 21:15:12'),
(11, 25, 46, 'Los efectos especiales fueron impresionantes.', 5, '2024-09-07 01:08:19'),
(12, 39, 19, 'Una joya del cine.', 5, '2024-11-20 20:57:38'),
(13, 16, 35, 'No cumplió mis expectativas.', 2, '2024-06-14 16:42:26'),
(14, 5, 1, 'Muy entretenida y con buen ritmo.', 4, '2025-01-30 03:21:04'),
(15, 11, 33, 'La historia me atrapó desde el inicio.', 5, '2024-07-11 18:38:55'),
(16, 20, 8, 'No entendí mucho la trama.', 2, '2024-10-01 21:00:00'),
(17, 8, 23, 'Una joya del cine.', 5, '2025-02-15 00:09:45'),
(18, 17, 44, 'Comedia absurda, pero divertida.', 4, '2024-06-18 19:02:30'),
(19, 29, 31, 'Visualmente hermosa, pero algo lenta.', 3, '2024-12-05 04:33:12'),
(20, 36, 26, 'Recomendada para ver en familia.', 5, '2025-04-10 17:45:38'),
(21, 22, 14, 'Excelente película, la volvería a ver.', 5, '2024-10-14 20:18:32'),
(22, 14, 50, 'El final me sorprendió bastante.', 4, '2024-12-02 00:35:12'),
(23, 41, 7, 'No entendí mucho la trama.', 2, '2025-01-20 16:44:20'),
(24, 10, 5, 'Visualmente hermosa, pero algo lenta.', 3, '2024-11-11 22:27:09'),
(25, 19, 35, 'Muy entretenida y con buen ritmo.', 4, '2025-03-18 18:55:30'),
(26, 48, 11, 'Recomendada para ver en familia.', 5, '2024-09-22 21:15:00'),
(27, 31, 30, 'No volvería a pagar por verla.', 1, '2025-02-05 19:23:15'),
(28, 13, 1, 'Demasiado larga y aburrida.', 1, '2024-07-27 01:04:12'),
(29, 3, 20, 'La actuación fue increíble.', 5, '2024-12-31 03:41:18'),
(30, 26, 4, 'Personajes bien construidos.', 4, '2024-08-10 23:50:42'),
(31, 40, 13, 'Una joya del cine.', 5, '2024-10-04 02:38:47'),
(32, 15, 24, 'El guion estuvo flojo.', 2, '2025-01-29 17:12:03'),
(33, 2, 42, 'Excelente película, la volvería a ver.', 5, '2025-04-08 18:56:22'),
(34, 49, 16, 'Muy entretenida y con buen ritmo.', 4, '2025-03-04 22:11:33'),
(35, 6, 21, 'No cumplió mis expectativas.', 2, '2024-07-20 00:45:01'),
(36, 23, 28, 'La historia me atrapó desde el inicio.', 5, '2025-01-14 21:59:57'),
(37, 32, 6, 'Recomendada para ver en familia.', 5, '2024-11-10 04:30:12'),
(38, 12, 10, 'Personajes bien construidos.', 4, '2024-09-16 18:22:44'),
(39, 27, 31, 'No entendí mucho la trama.', 2, '2024-06-11 20:01:38'),
(40, 35, 9, 'Una joya del cine.', 5, '2025-03-09 19:41:27'),
(41, 43, 12, 'El guion estuvo flojo.', 2, '2024-10-14 16:55:49'),
(42, 1, 25, 'Muy entretenida y con buen ritmo.', 4, '2025-02-24 00:19:04'),
(43, 11, 2, 'Visualmente hermosa, pero algo lenta.', 3, '2024-08-17 22:08:51'),
(44, 29, 17, 'Excelente película, la volvería a ver.', 5, '2025-01-18 17:45:36'),
(45, 5, 3, 'No volvería a pagar por verla.', 1, '2025-03-01 21:22:11'),
(46, 9, 8, 'La actuación fue increíble.', 5, '2024-09-14 18:37:15'),
(47, 44, 26, 'El final me sorprendió bastante.', 4, '2024-11-07 20:16:58'),
(48, 4, 34, 'No cumplió mis expectativas.', 2, '2024-10-29 23:59:30'),
(49, 24, 23, 'Recomendada para ver en familia.', 5, '2024-07-22 01:46:01'),
(50, 7, 45, 'Una joya del cine.', 5, '2025-04-04 19:55:20'),
(51, 20, 38, 'Demasiado larga y aburrida.', 1, '2024-09-19 18:26:43'),
(52, 30, 15, 'La historia me atrapó desde el inicio.', 5, '2025-02-28 16:47:13'),
(53, 16, 36, 'Muy entretenida y con buen ritmo.', 4, '2025-01-10 21:00:00'),
(54, 46, 47, 'Visualmente hermosa, pero algo lenta.', 3, '2024-10-13 03:17:22'),
(55, 18, 44, 'Personajes bien construidos.', 4, '2024-12-16 00:29:57'),
(56, 33, 7, 'Una joya del cine.', 5, '2024-11-30 22:33:18'),
(57, 34, 39, 'El guion estuvo flojo.', 2, '2024-08-04 20:10:00'),
(58, 28, 18, 'Recomendada para ver en familia.', 5, '2024-07-13 21:44:09'),
(59, 38, 32, 'No entendí mucho la trama.', 2, '2025-03-06 19:20:33'),
(60, 21, 46, 'Muy entretenida y con buen ritmo.', 4, '2025-01-31 18:48:27'),
(61, 17, 27, 'El final me sorprendió bastante.', 4, '2025-02-09 23:35:45'),
(62, 13, 37, 'No volvería a pagar por verla.', 1, '2024-12-27 16:59:01'),
(63, 19, 43, 'La historia me atrapó desde el inicio.', 5, '2025-01-05 22:12:45'),
(64, 42, 48, 'Visualmente hermosa, pero algo lenta.', 3, '2024-09-02 21:11:26'),
(65, 50, 49, 'El guion estuvo flojo.', 2, '2024-10-26 01:39:08'),
(66, 8, 19, 'La actuación fue increíble.', 5, '2024-11-17 00:05:50'),
(67, 40, 40, 'Muy entretenida y con buen ritmo.', 4, '2025-03-24 23:49:19'),
(68, 43, 6, 'Recomendada para ver en familia.', 5, '2024-10-08 18:33:58'),
(69, 12, 22, 'Excelente película, la volvería a ver.', 5, '2024-08-23 17:16:42'),
(70, 3, 28, 'Demasiado larga y aburrida.', 1, '2024-11-11 01:25:10'),
(71, 31, 29, 'El final me sorprendió bastante.', 4, '2025-04-03 02:55:29'),
(72, 36, 33, 'Visualmente hermosa, pero algo lenta.', 3, '2024-12-20 23:28:37'),
(73, 25, 50, 'No entendí mucho la trama.', 2, '2024-09-28 21:45:00'),
(74, 11, 12, 'Una joya del cine.', 5, '2025-03-11 16:41:55'),
(75, 6, 17, 'Recomendada para ver en familia.', 5, '2024-10-31 19:19:10'),
(76, 23, 13, 'Visualmente hermosa, pero algo lenta.', 3, '2024-07-06 17:52:39'),
(77, 37, 2, 'Muy entretenida y con buen ritmo.', 4, '2024-11-03 18:01:27'),
(78, 4, 24, 'No volvería a pagar por verla.', 1, '2025-01-24 20:30:33'),
(79, 10, 16, 'La historia me atrapó desde el inicio.', 5, '2025-04-06 16:50:48'),
(80, 39, 11, 'Una joya del cine.', 5, '2024-08-29 01:12:14'),
(81, 45, 45, 'El guion estuvo flojo.', 2, '2024-10-01 00:29:50'),
(82, 7, 36, 'Muy entretenida y con buen ritmo.', 4, '2025-03-20 18:10:10'),
(83, 14, 32, 'Recomendada para ver en familia.', 5, '2025-01-07 21:14:32'),
(84, 16, 5, 'Excelente película, la volvería a ver.', 5, '2025-02-13 22:48:10'),
(85, 49, 39, 'Visualmente hermosa, pero algo lenta.', 3, '2024-10-13 17:45:12'),
(86, 26, 6, 'La historia me atrapó desde el inicio.', 5, '2025-01-31 02:59:05'),
(87, 38, 7, 'Muy entretenida y con buen ritmo.', 4, '2024-12-03 23:05:50'),
(88, 34, 41, 'No volvería a pagar por verla.', 1, '2025-03-15 01:39:10'),
(89, 28, 9, 'El final me sorprendió bastante.', 4, '2025-02-01 19:24:00'),
(90, 22, 44, 'Personajes bien construidos.', 4, '2024-09-25 22:50:00'),
(91, 46, 25, 'La actuación fue increíble.', 5, '2025-04-05 21:42:00'),
(92, 24, 18, 'Demasiado larga y aburrida.', 1, '2025-03-22 16:20:00'),
(93, 17, 26, 'Recomendada para ver en familia.', 5, '2024-08-21 17:15:00'),
(94, 35, 47, 'Visualmente hermosa, pero algo lenta.', 3, '2025-01-27 18:40:00'),
(95, 48, 43, 'No entendí mucho la trama.', 2, '2024-10-16 22:23:00'),
(96, 50, 30, 'Muy entretenida y con buen ritmo.', 4, '2024-09-19 00:10:00'),
(97, 19, 19, 'Excelente película, la volvería a ver.', 5, '2024-12-29 01:58:00'),
(98, 15, 38, 'El guion estuvo flojo.', 2, '2025-03-26 17:33:00'),
(99, 20, 22, 'Una joya del cine.', 5, '2025-01-17 20:00:00'),
(100, 1, 48, 'Recomendada para ver en familia.', 5, '2025-02-18 21:20:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas_comida`
--

CREATE TABLE `ventas_comida` (
  `id_venta` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `fecha_venta` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas_comida`
--

INSERT INTO `ventas_comida` (`id_venta`, `id_usuario`, `fecha_venta`) VALUES
(1, 6, '2024-07-03 15:24:51'),
(2, 24, '2024-10-21 23:42:18'),
(3, 13, '2025-01-17 18:17:32'),
(4, 46, '2025-02-07 00:07:45'),
(5, 16, '2024-12-10 22:56:13'),
(6, 37, '2025-03-15 19:28:39'),
(7, 46, '2024-11-03 17:14:21'),
(8, 21, '2024-08-08 14:03:07'),
(9, 3, '2025-01-31 01:39:12'),
(10, 49, '2024-06-29 21:26:30'),
(11, 45, '2025-02-13 15:11:18'),
(12, 11, '2024-10-02 13:48:53'),
(13, 16, '2025-03-19 18:05:42'),
(14, 47, '2024-12-27 00:31:55'),
(15, 41, '2025-04-06 16:00:04'),
(16, 9, '2025-05-18 20:42:23'),
(17, 32, '2025-03-08 22:19:33'),
(18, 13, '2024-11-20 23:00:00'),
(19, 46, '2025-04-01 18:27:16'),
(20, 28, '2024-09-07 19:51:49'),
(21, 6, '2024-08-27 01:33:08'),
(22, 13, '2025-02-11 15:45:25'),
(23, 17, '2025-05-05 14:22:37'),
(24, 48, '2024-12-08 16:58:01'),
(25, 8, '2024-06-27 21:46:10'),
(26, 38, '2024-10-15 22:03:59'),
(27, 47, '2025-01-22 23:27:36'),
(28, 24, '2024-09-12 00:41:20'),
(29, 25, '2025-03-02 17:18:42'),
(30, 44, '2025-04-19 15:39:13'),
(31, 13, '2025-02-08 18:22:18'),
(32, 24, '2024-07-05 13:35:44'),
(33, 14, '2025-01-11 20:58:27'),
(34, 11, '2024-10-28 14:11:39'),
(35, 38, '2024-09-30 19:05:58'),
(36, 31, '2025-02-25 17:33:46'),
(37, 6, '2024-07-23 21:49:06'),
(38, 45, '2024-12-18 16:26:10'),
(39, 32, '2024-10-14 22:45:59'),
(40, 40, '2024-09-14 15:30:37'),
(41, 31, '2024-08-17 17:57:22'),
(42, 31, '2025-03-07 00:10:00'),
(43, 18, '2024-07-19 18:33:03'),
(44, 33, '2025-04-25 01:48:40'),
(45, 4, '2025-01-14 23:01:33'),
(46, 28, '2024-11-12 13:50:15'),
(47, 33, '2025-05-03 16:12:12'),
(48, 27, '2025-03-26 19:30:56'),
(49, 50, '2024-12-30 20:19:38'),
(50, 19, '2024-10-20 22:40:05'),
(51, 26, '2024-09-06 14:46:50'),
(52, 28, '2025-01-09 18:39:29'),
(53, 15, '2025-04-11 15:07:44'),
(54, 49, '2024-08-05 17:25:16'),
(55, 13, '2024-06-30 23:56:10'),
(56, 33, '2024-10-05 00:43:28'),
(57, 6, '2025-02-15 19:09:47'),
(58, 10, '2025-01-27 13:40:02'),
(59, 19, '2024-12-14 22:17:33'),
(60, 14, '2025-03-21 21:11:55');

-- --------------------------------------------------------

--
-- Estructura para la vista `ocupacion_salas`
--
DROP TABLE IF EXISTS `ocupacion_salas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ocupacion_salas`  AS SELECT `s`.`nro_sala` AS `nro_sala`, count(`b`.`id_boleto`) AS `boletos_vendidos` FROM ((`salas` `s` left join `funciones` `f` on(`s`.`id_sala` = `f`.`id_sala`)) left join `boletos` `b` on(`f`.`id_funcion` = `b`.`id_funcion`)) GROUP BY `s`.`id_sala` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `peliculas_populares`
--
DROP TABLE IF EXISTS `peliculas_populares`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `peliculas_populares`  AS SELECT `p`.`nombre_pelicula` AS `nombre_pelicula`, count(`h`.`id_pelicula`) AS `visualizaciones` FROM (`peliculas` `p` join `historial_visualizacion` `h` on(`p`.`id_pelicula` = `h`.`id_pelicula`)) GROUP BY `p`.`id_pelicula` ORDER BY count(`h`.`id_pelicula`) DESC ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asientos`
--
ALTER TABLE `asientos`
  ADD PRIMARY KEY (`id_asiento`),
  ADD KEY `id_sala` (`id_sala`);

--
-- Indices de la tabla `boletos`
--
ALTER TABLE `boletos`
  ADD PRIMARY KEY (`id_boleto`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_funcion` (`id_funcion`),
  ADD KEY `id_reserva` (`id_reserva`),
  ADD KEY `id_asiento` (`id_asiento`),
  ADD KEY `id_pago` (`id_pago`);

--
-- Indices de la tabla `cartelera_horario`
--
ALTER TABLE `cartelera_horario`
  ADD PRIMARY KEY (`id_cartelera`),
  ADD KEY `id_pelicula` (`id_pelicula`);

--
-- Indices de la tabla `detalle_venta_comida`
--
ALTER TABLE `detalle_venta_comida`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `id_venta` (`id_venta`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `funciones`
--
ALTER TABLE `funciones`
  ADD PRIMARY KEY (`id_funcion`),
  ADD KEY `id_pelicula` (`id_pelicula`),
  ADD KEY `id_sala` (`id_sala`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id_genero`);

--
-- Indices de la tabla `historial_visualizacion`
--
ALTER TABLE `historial_visualizacion`
  ADD PRIMARY KEY (`id_historial`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_pelicula` (`id_pelicula`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`id_pago`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`id_pelicula`),
  ADD KEY `id_genero` (`id_genero`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id_reserva`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `salas`
--
ALTER TABLE `salas`
  ADD PRIMARY KEY (`id_sala`);

--
-- Indices de la tabla `suscripciones`
--
ALTER TABLE `suscripciones`
  ADD PRIMARY KEY (`id_suscripcion`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `correo_electronico` (`correo_electronico`);

--
-- Indices de la tabla `valoraciones`
--
ALTER TABLE `valoraciones`
  ADD PRIMARY KEY (`id_valoracion`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_pelicula` (`id_pelicula`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asientos`
--
ALTER TABLE `asientos`
  MODIFY `id_asiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT de la tabla `boletos`
--
ALTER TABLE `boletos`
  MODIFY `id_boleto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `cartelera_horario`
--
ALTER TABLE `cartelera_horario`
  MODIFY `id_cartelera` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `funciones`
--
ALTER TABLE `funciones`
  MODIFY `id_funcion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `id_genero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `historial_visualizacion`
--
ALTER TABLE `historial_visualizacion`
  MODIFY `id_historial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `id_pago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `id_pelicula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id_reserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `salas`
--
ALTER TABLE `salas`
  MODIFY `id_sala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `suscripciones`
--
ALTER TABLE `suscripciones`
  MODIFY `id_suscripcion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `valoraciones`
--
ALTER TABLE `valoraciones`
  MODIFY `id_valoracion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asientos`
--
ALTER TABLE `asientos`
  ADD CONSTRAINT `asientos_ibfk_1` FOREIGN KEY (`id_sala`) REFERENCES `salas` (`id_sala`);

--
-- Filtros para la tabla `boletos`
--
ALTER TABLE `boletos`
  ADD CONSTRAINT `boletos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `boletos_ibfk_2` FOREIGN KEY (`id_funcion`) REFERENCES `funciones` (`id_funcion`),
  ADD CONSTRAINT `boletos_ibfk_3` FOREIGN KEY (`id_reserva`) REFERENCES `reservas` (`id_reserva`),
  ADD CONSTRAINT `boletos_ibfk_4` FOREIGN KEY (`id_asiento`) REFERENCES `asientos` (`id_asiento`),
  ADD CONSTRAINT `boletos_ibfk_5` FOREIGN KEY (`id_pago`) REFERENCES `pagos` (`id_pago`);

--
-- Filtros para la tabla `cartelera_horario`
--
ALTER TABLE `cartelera_horario`
  ADD CONSTRAINT `cartelera_horario_ibfk_1` FOREIGN KEY (`id_pelicula`) REFERENCES `peliculas` (`id_pelicula`);

--
-- Filtros para la tabla `funciones`
--
ALTER TABLE `funciones`
  ADD CONSTRAINT `funciones_ibfk_1` FOREIGN KEY (`id_pelicula`) REFERENCES `peliculas` (`id_pelicula`),
  ADD CONSTRAINT `funciones_ibfk_2` FOREIGN KEY (`id_sala`) REFERENCES `salas` (`id_sala`);

--
-- Filtros para la tabla `historial_visualizacion`
--
ALTER TABLE `historial_visualizacion`
  ADD CONSTRAINT `historial_visualizacion_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `historial_visualizacion_ibfk_2` FOREIGN KEY (`id_pelicula`) REFERENCES `peliculas` (`id_pelicula`);

--
-- Filtros para la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD CONSTRAINT `pagos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE;

--
-- Filtros para la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD CONSTRAINT `peliculas_ibfk_1` FOREIGN KEY (`id_genero`) REFERENCES `generos` (`id_genero`);

--
-- Filtros para la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD CONSTRAINT `reservas_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `suscripciones`
--
ALTER TABLE `suscripciones`
  ADD CONSTRAINT `suscripciones_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE;

--
-- Filtros para la tabla `valoraciones`
--
ALTER TABLE `valoraciones`
  ADD CONSTRAINT `valoraciones_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `valoraciones_ibfk_2` FOREIGN KEY (`id_pelicula`) REFERENCES `peliculas` (`id_pelicula`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
