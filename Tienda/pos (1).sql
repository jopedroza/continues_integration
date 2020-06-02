-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-05-2019 a las 05:55:14
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `fecha`) VALUES
(1, 'Equipos Electromecánicos', '2019-02-14 23:10:16'),
(2, 'Taladros', '2019-03-06 01:19:19'),
(3, 'Andamios', '2019-03-06 01:19:25'),
(4, 'Generadores de Energía', '2019-03-06 01:19:30'),
(5, 'Equipos para Construcción', '2019-03-06 01:19:36'),
(6, 'Martillos Mecánicos', '2019-03-16 20:34:27'),
(7, 'Soportes', '2019-04-18 20:57:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `documento` int(11) NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `telefono` text COLLATE utf8_spanish_ci NOT NULL,
  `direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `compras` int(11) NOT NULL,
  `ultima_compra` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `documento`, `email`, `telefono`, `direccion`, `fecha_nacimiento`, `compras`, `ultima_compra`, `fecha`) VALUES
(1, 'leo Cardoso R', 1073167005, 'leocardoso@gmail.com', '(322) 414-4375', 'Cr 23 8 C 08  13', '1994-07-14', 32, '2019-04-26 19:24:15', '2019-04-27 00:24:15'),
(2, 'juliana granados', 1073167006, 'jgranados@oxohotel.com', '(322) 414-4343', 'Cr 23 8 C 08 Sur 13', '1995-07-09', -1, '0000-00-00 00:00:00', '2019-04-09 01:40:38'),
(3, 'jaisson villamil', 2147483647, 'jvillamil@oxohotel.com', '(313) 566-7328', 'cra67 # 23-34', '1990-12-06', 5, '0000-00-00 00:00:00', '2019-04-13 17:09:57'),
(4, 'Blanca Rodiguez', 65719206, 'blanca@gmail.com', '(321) 252-9194', 'Cr 23 8 C 08 Sur 13', '1994-07-14', 13, '2019-05-05 14:25:16', '2019-05-05 19:25:16'),
(5, 'default', 0, 'defaul@gmail.com', '(111) 111-1111', 'Cr 23 8 C 08 Sur 13', '1994-07-14', 3, '2019-04-20 09:42:48', '2019-04-20 14:42:48'),
(6, 'Adriana Coca', 1007597777, 'adriycc9@gmail.com', '(310) 574-1162', 'cr 20 bloque 6', '1999-03-31', 0, '0000-00-00 00:00:00', '2019-04-27 00:28:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `codigo` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `precio_compra` float NOT NULL,
  `precio_venta` float NOT NULL,
  `ventas` text COLLATE utf8_spanish_ci,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_categoria`, `codigo`, `descripcion`, `imagen`, `stock`, `precio_compra`, `precio_venta`, `ventas`, `fecha`) VALUES
(1, 1, '101', 'Aspiradora Industrial ', 'vistas/img/productos/default/anonymous.png', 18, 150, 210, '2', '2019-04-20 12:26:28'),
(2, 1, '102', 'Plato Flotante para Allanadora', 'vistas/img/productos/default/anonymous.png', 18, 4500, 6300, '6', '2019-04-20 12:26:28'),
(3, 1, '103', 'Compresor de Aire para pintura', 'vistas/img/productos/default/anonymous.png', 19, 3000, 4200, '0', '2019-04-20 12:26:28'),
(4, 1, '104', 'Cortadora de Adobe sin Disco ', 'vistas/img/productos/default/anonymous.png', 19, 4000, 5600, '-1', '2019-04-20 12:26:28'),
(5, 1, '105', 'Cortadora de Piso sin Disco ', 'vistas/img/productos/default/anonymous.png', 20, 1540, 2156, '0', '2019-04-20 12:26:28'),
(6, 1, '106', 'Disco Punta Diamante ', 'vistas/img/productos/default/anonymous.png', 8, 1100, 1540, '0', '2019-04-20 12:26:28'),
(7, 1, '107', 'Extractor de Aire ', 'vistas/img/productos/default/anonymous.png', 20, 1540, 2156, '0', '2019-04-20 12:26:28'),
(8, 1, '108', 'Guadañadora ', 'vistas/img/productos/default/anonymous.png', 20, 1540, 2156, '0', '2019-04-20 12:26:28'),
(9, 1, '109', 'Hidrolavadora Electrica ', 'vistas/img/productos/default/anonymous.png', 20, 2600, 3640, '0', '2019-04-20 12:26:28'),
(10, 1, '110', 'Hidrolavadora Gasolina', 'vistas/img/productos/default/anonymous.png', 20, 2210, 3094, '0', '2019-04-20 12:26:28'),
(11, 1, '111', 'Motobomba a Gasolina', 'vistas/img/productos/default/anonymous.png', 20, 2860, 4004, '0', '2019-03-23 21:08:59'),
(12, 1, '112', 'Motobomba El?ctrica', 'vistas/img/productos/default/anonymous.png', 20, 2400, 3360, '0', '2019-03-23 21:09:03'),
(13, 1, '113', 'Sierra Circular ', 'vistas/img/productos/default/anonymous.png', 20, 1100, 1540, '0', '2019-03-23 21:09:10'),
(14, 1, '114', 'Disco de tugsteno para Sierra circular', 'vistas/img/productos/default/anonymous.png', 20, 4500, 6300, '0', '2019-03-23 21:09:13'),
(15, 1, '115', 'Soldador Electrico ', 'vistas/img/productos/default/anonymous.png', 20, 1980, 2772, '0', '2019-03-23 21:09:16'),
(16, 1, '116', 'Careta para Soldador', 'vistas/img/productos/default/anonymous.png', 20, 4200, 5880, '0', '2019-03-23 21:09:18'),
(17, 1, '117', 'Torre de iluminacion ', 'vistas/img/productos/default/anonymous.png', 20, 1800, 2520, '0', '2019-03-23 21:09:22'),
(18, 2, '201', 'Martillo Demoledor de Piso 110V', 'vistas/img/productos/default/anonymous.png', 20, 5600, 7840, '0', '2019-03-23 21:09:26'),
(19, 2, '202', 'Muela o cincel martillo demoledor piso', 'vistas/img/productos/default/anonymous.png', 20, 9600, 13440, '0', '2019-03-23 21:09:29'),
(20, 2, '203', 'Taladro Demoledor de muro 110V', 'vistas/img/productos/default/anonymous.png', 20, 3850, 5390, '0', '2019-03-23 21:09:34'),
(21, 2, '204', 'Muela o cincel martillo demoledor muro', 'vistas/img/productos/default/anonymous.png', 20, 9600, 13440, '0', '2019-03-23 21:09:38'),
(22, 2, '205', 'Taladro Percutor de 1/2 Madera y Metal', 'vistas/img/productos/default/anonymous.png', 20, 8000, 11200, '0', '2019-03-23 21:09:41'),
(23, 2, '206', 'Taladro Percutor SDS Plus 110V', 'vistas/img/productos/default/anonymous.png', 20, 3900, 5460, '0', '2019-03-23 21:09:44'),
(24, 2, '207', 'Taladro Percutor SDS Max 110V (Mineria)', 'vistas/img/productos/default/anonymous.png', 20, 4600, 6440, '0', '2019-03-23 21:09:48'),
(25, 3, '301', 'Andamio colgante', 'vistas/img/productos/default/anonymous.png', 20, 1440, 2016, '0', '2019-03-23 21:09:52'),
(26, 3, '302', 'Distanciador andamio colgante', 'vistas/img/productos/default/anonymous.png', 20, 1600, 2240, '0', '2019-04-20 12:26:28'),
(27, 3, '303', 'Marco andamio modular ', 'vistas/img/productos/default/anonymous.png', 20, 900, 1260, '0', '2019-04-20 12:26:28'),
(28, 3, '304', 'Marco andamio tijera', 'vistas/img/productos/default/anonymous.png', 20, 100, 140, '0', '2019-04-20 12:26:28'),
(29, 3, '305', 'Tijera para andamio', 'vistas/img/productos/default/anonymous.png', 20, 162, 226, '0', '2019-04-20 12:26:28'),
(30, 3, '306', 'Escalera interna para andamio', 'vistas/img/productos/default/anonymous.png', 20, 270, 378, '0', '2019-04-20 12:26:28'),
(31, 3, '307', 'Pasamanos de seguridad', 'vistas/img/productos/default/anonymous.png', 20, 75, 105, '0', '2019-04-20 12:26:28'),
(32, 3, '308', 'Rueda giratoria para andamio', 'vistas/img/productos/default/anonymous.png', 20, 168, 235, '0', '2019-04-20 12:26:28'),
(33, 3, '309', 'Arnes de seguridad', 'vistas/img/productos/default/anonymous.png', 20, 1750, 2450, '0', '2019-04-20 12:26:28'),
(34, 3, '310', 'Eslinga para arnes', 'vistas/img/productos/default/anonymous.png', 20, 175, 245, '0', '2019-04-20 12:26:28'),
(35, 3, '311', 'Plataforma Met?lica', 'vistas/img/productos/default/anonymous.png', 20, 420, 588, '0', '2019-04-20 12:26:28'),
(36, 4, '401', 'Planta Electrica Diesel 6 Kva', 'vistas/img/productos/default/anonymous.png', 20, 3500, 4900, '0', '2019-04-20 12:26:28'),
(37, 4, '402', 'Planta Electrica Diesel 10 Kva', 'vistas/img/productos/default/anonymous.png', 20, 3550, 4970, '0', '2019-04-20 12:26:28'),
(38, 4, '403', 'Planta Electrica Diesel 20 Kva', 'vistas/img/productos/default/anonymous.png', 20, 3600, 5040, '0', '2019-04-20 12:26:28'),
(39, 4, '404', 'Planta Electrica Diesel 30 Kva', 'vistas/img/productos/default/anonymous.png', 20, 3650, 5110, '0', '2019-04-20 12:26:28'),
(40, 4, '405', 'Planta Electrica Diesel 60 Kva', 'vistas/img/productos/default/anonymous.png', 20, 3700, 5180, '0', '2019-04-20 12:26:28'),
(41, 4, '406', 'Planta Electrica Diesel 75 Kva', 'vistas/img/productos/default/anonymous.png', 17, 3750, 5250, '3', '2019-04-20 12:26:28'),
(42, 4, '407', 'Planta Electrica Diesel 100 Kva', 'vistas/img/productos/default/anonymous.png', 20, 3800, 5320, '0', '2019-04-20 12:26:28'),
(43, 4, '408', 'Planta Electrica Diesel 120 Kva', 'vistas/img/productos/default/anonymous.png', 20, 3850, 5390, '0', '2019-04-20 12:26:28'),
(44, 5, '501', 'Escalera de Tijera Aluminio ', 'vistas/img/productos/default/anonymous.png', 20, 350, 490, '0', '2019-04-20 12:26:28'),
(45, 5, '502', 'Extension Electrica ', 'vistas/img/productos/default/anonymous.png', 20, 370, 518, '0', '2019-04-20 12:26:28'),
(46, 5, '503', 'Gato tensor', 'vistas/img/productos/default/anonymous.png', 20, 380, 532, '0', '2019-04-20 12:26:28'),
(47, 5, '504', 'Lamina Cubre Brecha ', 'vistas/img/productos/default/anonymous.png', 20, 380, 532, '0', '2019-04-20 12:26:28'),
(48, 5, '505', 'Llave de Tubo', 'vistas/img/productos/default/anonymous.png', 20, 480, 672, '0', '2019-04-20 12:26:28'),
(49, 5, '506', 'Manila por Metro', 'vistas/img/productos/default/anonymous.png', 20, 600, 840, '0', '2019-04-20 12:26:28'),
(50, 5, '507', 'Polea 2 canales', 'vistas/img/productos/default/anonymous.png', 20, 900, 1260, '0', '2019-04-20 12:26:28'),
(51, 5, '508', 'Tensor', 'vistas/img/productos/default/anonymous.png', 19, 100, 140, '1', '2019-04-20 12:26:28'),
(52, 5, '509', 'Bascula ', 'vistas/img/productos/default/anonymous.png', 19, 130, 182, '1', '2019-04-20 12:26:28'),
(53, 5, '510', 'Bomba Hidrostatica', 'vistas/img/productos/default/anonymous.png', 19, 770, 1078, '1', '2019-04-20 12:26:28'),
(54, 5, '511', 'Chapeta', 'vistas/img/productos/default/anonymous.png', 19, 660, 924, '1', '2019-04-20 12:26:28'),
(55, 5, '512', 'Cilindro muestra de concreto', 'vistas/img/productos/default/anonymous.png', 19, 400, 560, '1', '2019-04-20 12:26:28'),
(56, 5, '513', 'Cizalla de Palanca', 'vistas/img/productos/default/anonymous.png', 18, 450, 630, '2', '2019-04-20 12:26:28'),
(57, 5, '514', 'Cizalla de Tijera', 'vistas/img/productos/default/anonymous.png', 12, 580, 812, '8', '2019-05-05 19:25:16'),
(58, 5, '515', 'Coche llanta neumatica', 'vistas/img/productos/default/anonymous.png', 14, 420, 588, '6', '2019-05-05 19:25:16'),
(59, 5, '516', 'Cono slump', 'vistas/img/productos/default/anonymous.png', 12, 140, 196, '8', '2019-05-05 19:25:15'),
(60, 5, '517', 'Cortadora de Baldosin', 'vistas/img/productos/517/997.jpg', 12, 930, 1302, '8', '2019-05-05 19:25:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `usuario` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `perfil` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `ultimo_login` datetime NOT NULL,
  `fech` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fech`) VALUES
(14, 'leito', 'leito', '$2a$07$asxx54ahjppf45sd87a5auJRR6foEJ7ynpjisKtbiKJbvJsoQ8VPS', 'Administrador', 'vistas/img/usuarios/leito/958.jpg', 1, '2019-05-28 22:52:04', '2019-05-29 03:52:04'),
(16, 'blanca rodriguez', 'blanca123', '$2a$07$asxx54ahjppf45sd87a5auJRR6foEJ7ynpjisKtbiKJbvJsoQ8VPS', 'Vendedor', 'vistas/img/usuarios/blanca123/649.jpg', 1, '2019-02-09 16:07:22', '2019-02-09 21:07:22'),
(17, 'Nini Cardoso', 'nn123', '$2a$07$asxx54ahjppf45sd87a5auJRR6foEJ7ynpjisKtbiKJbvJsoQ8VPS', 'Vendedor', 'vistas/img/usuarios/nn123/207.jpg', 1, '2019-04-26 19:30:35', '2019-04-27 00:30:35'),
(18, 'Conni Peña', 'conni', '$2a$07$asxx54ahjppf45sd87a5auJRR6foEJ7ynpjisKtbiKJbvJsoQ8VPS', 'Especial', 'vistas/img/usuarios/conni/489.jpg', 1, '2019-04-26 19:29:15', '2019-04-27 00:34:10'),
(19, 'Jilian Heredia', 'jheredia', '$2a$07$asxx54ahjppf45sd87a5auJRR6foEJ7ynpjisKtbiKJbvJsoQ8VPS', 'Administrador', 'vistas/img/usuarios/jheredia/914.jpg', 0, '0000-00-00 00:00:00', '2019-05-05 19:15:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `productos` text COLLATE utf8_spanish_ci NOT NULL,
  `impuesto` float NOT NULL,
  `neto` float NOT NULL,
  `total` float NOT NULL,
  `metodo_pago` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `codigo`, `id_cliente`, `id_vendedor`, `productos`, `impuesto`, `neto`, `total`, `metodo_pago`, `fecha`) VALUES
(1, 1, 1, 14, '[{\"id\":\"1\",\"descripcion\":\"Aspiradora Industrial \",\"cantidad\":\"1\",\"stock\":\"20\",\"precio\":\"210\",\"total\":\"210\"},{\"id\":\"2\",\"descripcion\":\"Plato Flotante para Allanadora\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"6300\",\"total\":\"6300\"},{\"id\":\"3\",\"descripcion\":\"Compresor de Aire para pintura\",\"cantidad\":\"1\",\"stock\":\"20\",\"precio\":\"4200\",\"total\":\"4200\"}]', 2034.9, 10710, 12744.9, 'Efectivo', '2019-04-12 00:24:15'),
(2, 2, 3, 18, '[{\"id\":\"1\",\"descripcion\":\"Aspiradora Industrial \",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"210\",\"total\":\"210\"},{\"id\":\"9\",\"descripcion\":\"Hidrolavadora Electrica \",\"cantidad\":\"1\",\"stock\":\"20\",\"precio\":\"3640\",\"total\":\"3640\"},{\"id\":\"41\",\"descripcion\":\"Planta Electrica Diesel 75 Kva\",\"cantidad\":\"3\",\"stock\":\"17\",\"precio\":\"5250\",\"total\":\"15750\"}]', 980, 19600, 20580, 'TC-22344', '2018-04-13 17:09:57'),
(3, 3, 4, 14, '[{\"id\":\"1\",\"descripcion\":\"Aspiradora Industrial \",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"210\",\"total\":\"210\"},{\"id\":\"2\",\"descripcion\":\"Plato Flotante para Allanadora\",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"6300\",\"total\":\"6300\"},{\"id\":\"3\",\"descripcion\":\"Compresor de Aire para pintura\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"4200\",\"total\":\"4200\"},{\"id\":\"4\",\"descripcion\":\"Cortadora de Adobe sin Disco \",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"5600\",\"total\":\"5600\"}]', 1631, 16310, 17941, 'Efectivo', '2017-04-17 01:12:08'),
(4, 4, 4, 14, '[{\"id\":\"60\",\"descripcion\":\"Cortadora de Baldosin\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"1302\",\"total\":\"1302\"},{\"id\":\"59\",\"descripcion\":\"Cono slump\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"196\",\"total\":\"196\"},{\"id\":\"58\",\"descripcion\":\"Coche llanta neumatica\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"588\",\"total\":\"588\"},{\"id\":\"57\",\"descripcion\":\"Cizalla de Tijera\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"812\",\"total\":\"812\"},{\"id\":\"56\",\"descripcion\":\"Cizalla de Palanca\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"630\",\"total\":\"630\"}]', 705.6, 3528, 4233.6, 'Efectivo', '2019-04-18 20:40:43'),
(5, 5, 1, 14, '[{\"id\":\"55\",\"descripcion\":\"Cilindro muestra de concreto\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"560\",\"total\":\"560\"},{\"id\":\"54\",\"descripcion\":\"Chapeta\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"924\",\"total\":\"924\"},{\"id\":\"53\",\"descripcion\":\"Bomba Hidrostatica\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"1078\",\"total\":\"1078\"},{\"id\":\"52\",\"descripcion\":\"Bascula \",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"182\",\"total\":\"182\"},{\"id\":\"51\",\"descripcion\":\"Tensor\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"140\",\"total\":\"140\"},{\"id\":\"56\",\"descripcion\":\"Cizalla de Palanca\",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"630\",\"total\":\"630\"},{\"id\":\"57\",\"descripcion\":\"Cizalla de Tijera\",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"812\",\"total\":\"812\"},{\"id\":\"58\",\"descripcion\":\"Coche llanta neumatica\",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"588\",\"total\":\"588\"},{\"id\":\"59\",\"descripcion\":\"Cono slump\",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"196\",\"total\":\"196\"},{\"id\":\"60\",\"descripcion\":\"Cortadora de Baldosin\",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"1302\",\"total\":\"1302\"}]', 1218.28, 6412, 7630.28, 'Efectivo', '2019-04-18 20:41:46'),
(6, 6, 5, 14, '[{\"id\":\"60\",\"descripcion\":\"Cortadora de Baldosin\",\"cantidad\":\"1\",\"stock\":\"17\",\"precio\":\"1302\",\"total\":\"1302\"},{\"id\":\"59\",\"descripcion\":\"Cono slump\",\"cantidad\":\"1\",\"stock\":\"17\",\"precio\":\"196\",\"total\":\"196\"},{\"id\":\"57\",\"descripcion\":\"Cizalla de Tijera\",\"cantidad\":\"1\",\"stock\":\"17\",\"precio\":\"812\",\"total\":\"812\"}]', 438.9, 2310, 2748.9, 'Efectivo', '2019-04-20 14:42:48'),
(7, 7, 1, 14, '[{\"id\":\"60\",\"descripcion\":\"Cortadora de Baldosin\",\"cantidad\":\"4\",\"stock\":\"13\",\"precio\":\"1302\",\"total\":\"5208\"},{\"id\":\"59\",\"descripcion\":\"Cono slump\",\"cantidad\":\"4\",\"stock\":\"13\",\"precio\":\"196\",\"total\":\"784\"},{\"id\":\"58\",\"descripcion\":\"Coche llanta neumatica\",\"cantidad\":\"3\",\"stock\":\"15\",\"precio\":\"588\",\"total\":\"1764\"},{\"id\":\"57\",\"descripcion\":\"Cizalla de Tijera\",\"cantidad\":\"4\",\"stock\":\"13\",\"precio\":\"812\",\"total\":\"3248\"}]', 2090.76, 11004, 13094.8, 'Efectivo', '2019-04-27 00:24:15'),
(8, 8, 4, 14, '[{\"id\":\"60\",\"descripcion\":\"Cortadora de Baldosin\",\"cantidad\":\"1\",\"stock\":\"12\",\"precio\":\"1302\",\"total\":\"1302\"},{\"id\":\"59\",\"descripcion\":\"Cono slump\",\"cantidad\":\"1\",\"stock\":\"12\",\"precio\":\"196\",\"total\":\"196\"},{\"id\":\"58\",\"descripcion\":\"Coche llanta neumatica\",\"cantidad\":\"1\",\"stock\":\"14\",\"precio\":\"588\",\"total\":\"588\"},{\"id\":\"57\",\"descripcion\":\"Cizalla de Tijera\",\"cantidad\":\"1\",\"stock\":\"12\",\"precio\":\"812\",\"total\":\"812\"}]', 550.62, 2898, 3448.62, 'Efectivo', '2019-05-05 19:25:16');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
