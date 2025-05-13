-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3305
-- Tiempo de generación: 02-05-2025 a las 18:49:50
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `scorpast_codex`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumn`
--

CREATE TABLE `alumn` (
  `id` int(11) NOT NULL,
  `image` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(60) NOT NULL,
  `phone` varchar(60) NOT NULL,
  `c1_fullname` varchar(100) DEFAULT NULL,
  `c1_address` varchar(100) DEFAULT NULL,
  `c1_phone` varchar(100) DEFAULT NULL,
  `c1_note` varchar(100) DEFAULT NULL,
  `c2_fullname` varchar(100) DEFAULT NULL,
  `c2_address` varchar(100) DEFAULT NULL,
  `c2_phone` varchar(100) DEFAULT NULL,
  `c2_note` varchar(100) DEFAULT NULL,
  `condicion` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `alumn`
--

INSERT INTO `alumn` (`id`, `image`, `name`, `lastname`, `email`, `address`, `phone`, `c1_fullname`, `c1_address`, `c1_phone`, `c1_note`, `c2_fullname`, `c2_address`, `c2_phone`, `c2_note`, `condicion`, `created_at`, `user_id`) VALUES
(28, '1700668102.png', 'RICARDO', 'ALVAREZ USCAMAYTA', 'RICARDO.ALVAREZ@GMAIL.COM', 'AV. SEBASTIAN BARRANCA', '975521522', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(29, '1700668087.png', 'LIZ YENI', 'CARDENAS LAZO', 'LIZ.CARDENAS@GMAIL.COM', 'AV. JOSE PRIALE', '985465213', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(30, '1700667965.png', 'NAPOLEON ROLANDO', 'GARCIA POZO', 'ROLANDO.POZO@GMAIL.COM', 'AV. LA LIBERTAD', '978546152', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(31, '1700667956.png', 'PERCY RUBEN', 'HUAMAN CHAVEZ', 'PERCY.HUAMAN@GMAIL.COM', 'AV. BOLIVAR 256', '952548631', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(32, '1700667948.png', 'LISETH CAROL', 'LLAMOCA CCOICCA', 'CAROL.LLAMOCA@GMAIL.COM', 'CALLE JIRON DE LA UNION CUADRA 15', '985487625', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(33, '1700667940.png', 'JOSE DIEGO', 'MANCO GUEVARA', 'JOSE.MANCO@GMAIL.COM', 'URBANIZACION SOL DE ICA MZ A LOTE 5', '965412365', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(34, '1700667796.png', 'MARIA ELENA', 'PERALTA ABARCA', 'ELENA.PERALTA@GMAIL.COM', 'AV. LA FLORIDA 154', '915366475', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(35, '1700667787.png', 'MATEO BENJAMIN', 'NIETO TICONA', 'MATEO.NIETO@GMAIL.COM', 'AV. LOS ANGELES 856', '975235641', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(36, '1700667779.png', 'GLORIA', 'MONTALVO MONROY', 'GLORIA.MONTALVO@GMAIL.COM', 'AV. ESPAÑA 12', '965325641', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(37, '1700667756.png', 'LUIS HENRY', 'NEYRA SEJURO', 'LUIS.NEYRA@GMAIL.COM', 'AV. LAS HORTENCIAS', '963258641', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(38, '1700668479.png', 'MARLON HUMBERTO', 'MORALES GAMARRA', 'MARLON.MORALES@GMAIL.COM', 'AV. PASAJE A LA TINGUIÑA 485', '968547354', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(39, '1700668472.png', 'ANA MIA', 'HUAMAN LEVANO', 'ANA.HUAMAN@GMAIL.COM', 'AV. LA FLORIDA', '986452354', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(40, '1700668447.png', 'ARTHUR', 'INOCENTE PAZ', 'ARTHUR.PAZ@GMAIL.COM', 'AV. LOS ANGELES', '975462153', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(41, '1700668392.png', 'JESSICA ASTRIT', 'ESPEJO CERRON', 'JESSICA.ESPEJO@GMAIL.COM', 'AV. LAS HORTENCIAS', '935486257', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(42, '1700668375.png', 'EDWARD MANUEL', 'ELIAS MONCADA', 'EDWARD.ELIAS@GMAIL.COM', 'AV. LAS HORTENCIAS', '975864525', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(43, '1700668314.png', 'JEAN PAUL', 'BELLIDO HERMOZA', 'PAUL.BELLIDO@GMAIL.COM', 'AV. LA LIBERTAD 152', '985475685', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(44, '1700668306.png', 'JUAN', 'AMAU SULCA', 'JUAN.AMAU@GMAIL.COM', 'AV. JOSE PRIALE', '935864879', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(45, '1700668299.png', 'ALLISON YESENIA', 'ARTEAGA ARGUMEDO', 'ALLISON.ARTEAGA@GMAIL.COM', 'AV. BOLIVAR 240', '986314567', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(46, '1700668272.png', 'CECILIA', 'CANO MELO', 'CECILIA.CANO@GMAIL.COM', 'AV. LAS HORTENCIAS', '975214536', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(47, '1700668265.png', 'MERY ALICIA', 'FLORIAN SILVA', 'MERY.FLORIAN@GMAIL.COM', 'AV. LAS HORTENCIAS', '915638752', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(48, '1700668640.png', 'CARLOS MARTIN', 'FUENTES LOPEZ', 'CARLOS.FUENTES@GMAIL.COM', 'AV. BOLIVAR 263', '985647856', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(49, '1700668632.png', 'RAUL ERICK', 'GAVILAN PEDROZA', 'RAUL.GAVILAN@GMAIL.COM', 'AV. HORTENCIAS', '968754256', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(50, '1700668624.png', 'FLOR JUANA', 'HUAMANI DE GUEVARA', 'FLOR.HUAMANI@GMAIL.COM', 'AV. JOSE PRIALE', '978525642', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(51, '1700668616.png', 'MILTON EDWARD', 'MESIAS ORTIZ', 'MILTON.MESIAS@GMAIL.COM', 'AV. JOSE PRIALE', '932584624', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(52, '1700668609.png', 'CESAR DAVID', 'ACOSTA VILLALOBOS', 'CESAR.ACOSTA@GMAIL.COM', 'AV. ESPAÑA 15', '918564248', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(53, '1700668571.png', 'GUADALUPE YSABEL', 'AGUILAR CASTILLO', 'GUADALUPE.AGUILAR@GMAIL.COM', 'AV. ESPAÑA 12', '925486521', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(54, '1700668560.png', 'EDGAR MIGUEL', 'AMAYA CORRALES', 'EDGAR.AMAYA@GMAIL.COM', 'AV. ESPAÑA 12', '968425675', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(55, '1700668549.png', 'FREDY', 'ESPINOZA ORE', 'FREDY.ESPINOZA@GMAIL.COM', 'AV. LAS HORTENCIAS', '934875621', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(56, '1700668534.png', 'FRANCESCA', 'GARRIDO NIZAMA', 'FRANCESCA.GARRIDO@GMAIL.COM', 'AV. BOLIVAR 243', '924756341', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(57, '1700668497.png', 'JOSE MANUEL', 'FERNANDEZ PARRA', 'JOSE.FERNANDEZ@GMAIL.OM', 'AV. BOLIVAR 235', '975824566', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(58, '1700668859.png', 'AIMEE ELIZABETH', 'GIRALDO LOPEZ', 'AIMEE.GIRALDO@GMAIL.COM', 'AV. BOLIVAR 248', '985745856', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(59, '1700668850.png', 'SOLANSH', 'BUSTAMANTE ESTRADA', 'SOLANSH.BUSTAMANTE@GMAIL.COM', 'AV. BOLIVAR 248', '965855471', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(60, '1700668842.png', 'DAICY BETHY', 'GUTIERREZ RAMIREZ', 'DAICY.GUTIERREZ@GMAIL.COM', 'AV. BOLIVAR 249', '978858564', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(61, '1700668829.png', 'ZOILA ELIZABETH', 'LIRA ROSELLO', 'ZOILA.LIRA@GMAIL.COM', 'AV. LAS HORTENCIAS', '966584522', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(62, '1700668821.png', 'ADELINA', 'LEON MOSTACERO', 'ADELINA.LEON@GMAIL.COM', 'AV. BOLIVAR 238', '935477856', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(63, '1700668800.png', 'EUGENIA LUZ', 'ORE LUNA', 'EUGENIA.ORE@GMAIL.COM', 'AV. BOLIVAR 245', '985778564', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(64, '1700668788.png', 'SILVIA', 'RAMOS CIEZA', 'SILVIA.RAMOS@GMAIL.COM', 'AV. HORTENCIAS', '966477852', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(65, '1700668771.png', 'CARLOS', 'SUCASACA VARGAS', 'CARLOS.SUCASACA@GMAIL.COM', 'AV. HORTENCIAS', '965471545', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(66, '1700668763.png', 'MIRIAN LUZ', 'TOLEDO VARGAS', 'MIRIAN.TOLEDO@GMAIL.COM', 'AV. HORTENCIAS', '966544854', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(67, '1700668678.png', 'ROSA UBALDINA', 'ZARATE DE ANICAMA', 'ROSA.ZARATE@GMAIL.COM', 'AV. HORTENCIAS', '933254585', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(68, '1700668253.png', 'BORIS ALI', 'AGREDA FLORES', 'BORIS.AGREDA@GMAIL.COM', 'AV. LOS ANGELES', '963415278', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(69, '1700668244.png', 'MARIA FERNANDA', 'BRAVO SPINZ', 'MARIA.BRAVO@GMAIL.COM', 'AV. LOS ANGELES', '987654258', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(70, '1700668234.png', 'ROSA ELENA', 'CENTENO VILCA', 'ROSA.CENTENO@GMAIL.COM', 'AV. SEBASTIAN BARRANCA', '985535641', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(71, '1700668226.png', 'EDVARD CESAR', 'ECHEVARRIA GONZALES', 'EDVARD.ECHEVARRIA@GMAIL.COM', 'AV. SEBASTIAN BARRANCA', '922355644', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(72, '1700668218.png', 'SARIANA DANITZA', 'GARCIA PACHECO', 'SARIANA.GARCIA@GMAIL.COM', 'AV. SEBASTIAN BARRANCA', '996847852', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(73, '1700668195.png', 'SHERLEY CATHERINE', 'HUAMAN CASTILLO', 'SHERLEY.CASTILLO@GMAIL.COM', 'AV. SEBASTIAN BARRANCA', '977558465', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(74, '1700668166.png', 'ANGEL ALCIDES', 'MARTINEZ SALAS', 'ANGEL.MARTINEZ@GMAIL.COM', 'AV. SEBASTIAN BARRANCA', '963448525', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(75, '1700668157.png', 'ALPHIO GIULIO', 'OCHOA GUILLEN', 'ALPHIO.OCHOA@GMAIL.COM', 'AV. SEBASTIAN BARRANCA', '933545854', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(76, '1700668148.png', 'RUTH MILAGROS', 'PINEDA MORALES', 'RUTH.PINEDA@GMAIL.COM', 'AV. JOSE PRIALE', '911485474', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(77, '1700668137.png', 'MARIA VIVIANA', 'RAMOS ZAPATA', 'MARIA.RAMOS@GMAIL.COM', 'AV. JOSE PRIALE', '988974585', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(78, '1700667743.png', 'LUIS HENRY', 'NEYRA SEJURO', 'LUIS.NEYRA@GMAIL.COM', 'AV. LAS HORTENCIAS', '963258641', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(79, '1700667730.png', 'HANS SAMIR', 'VENTURA AQUIJE', 'HANS.HV@GMAIL.COM', 'AV. LAS HORTENCIAS', '918894746', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(80, '1700668127.png', 'RAY', 'CAVERO VEGA', 'raysvega1@gmail.com', 'SHGJFGMBVBN', '977550762', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(81, '1700668119.png', 'DCD', 'CAVERO VEGA', 'raysvega1@gmail.com', 'SHGJFGMBVBN', '977550762', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(82, '1713878542.jpg', 'RAY STEVEN', 'CAVERO', 'ray.cav12@gmail.com', 'TINGUIÑA', '963254722', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1),
(83, '1745560913.png', 'ALEXANDER', 'AJAL MEDINA', 'ajalmedina876@gmail.com', 'LOS AQUIJES', '964515489', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumn_team`
--

CREATE TABLE `alumn_team` (
  `id` int(11) NOT NULL,
  `alumn_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `alumn_team`
--

INSERT INTO `alumn_team` (`id`, `alumn_id`, `team_id`) VALUES
(17, 28, 1),
(18, 29, 1),
(19, 30, 1),
(20, 31, 1),
(21, 32, 1),
(22, 33, 1),
(23, 34, 1),
(24, 35, 1),
(25, 36, 1),
(26, 37, 1),
(27, 38, 2),
(28, 39, 2),
(29, 40, 2),
(30, 41, 2),
(31, 42, 2),
(32, 43, 2),
(33, 44, 2),
(34, 45, 2),
(35, 46, 2),
(36, 47, 2),
(37, 48, 3),
(38, 49, 3),
(39, 50, 3),
(40, 51, 3),
(41, 52, 3),
(42, 53, 3),
(43, 54, 3),
(44, 55, 3),
(45, 56, 3),
(46, 57, 3),
(47, 58, 4),
(48, 59, 4),
(49, 60, 4),
(50, 61, 4),
(51, 62, 4),
(52, 63, 4),
(53, 64, 4),
(54, 65, 4),
(55, 66, 4),
(56, 67, 4),
(57, 68, 5),
(58, 69, 5),
(59, 70, 5),
(60, 71, 5),
(61, 72, 5),
(62, 73, 5),
(63, 74, 5),
(64, 75, 5),
(65, 76, 5),
(66, 77, 5),
(67, 78, 1),
(68, 79, 1),
(69, 80, 5),
(70, 81, 5),
(71, 82, 1),
(72, 83, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `assistance`
--

CREATE TABLE `assistance` (
  `id` int(11) NOT NULL,
  `kind_id` int(11) DEFAULT NULL,
  `date_at` date NOT NULL,
  `alumn_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `behavior`
--

CREATE TABLE `behavior` (
  `id` int(11) NOT NULL,
  `kind_id` int(11) DEFAULT NULL,
  `date_at` date NOT NULL,
  `alumn_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `behavior`
--

INSERT INTO `behavior` (`id`, `kind_id`, `date_at`, `alumn_id`, `team_id`) VALUES
(4, 3, '2023-11-15', 37, 1),
(5, 4, '2023-11-15', 36, 1),
(6, 3, '2023-11-22', 79, 1),
(7, 4, '2023-11-22', 78, 1),
(8, 2, '2023-11-22', 37, 1),
(9, 2, '2023-11-22', 36, 1),
(10, 2, '2023-11-22', 35, 1),
(11, 2, '2023-11-22', 34, 1),
(12, 2, '2023-11-22', 33, 1),
(13, 2, '2023-11-22', 32, 1),
(14, 2, '2023-11-22', 30, 1),
(15, 5, '2023-11-22', 29, 1),
(16, 1, '2023-11-22', 28, 1),
(17, 2, '2023-11-22', 47, 2),
(18, 2, '2023-11-22', 46, 2),
(19, 2, '2023-11-22', 45, 2),
(20, 2, '2023-11-22', 44, 2),
(21, 3, '2023-11-22', 43, 2),
(22, 1, '2023-11-22', 42, 2),
(23, 3, '2023-11-22', 40, 2),
(24, 1, '2023-11-22', 39, 2),
(25, 3, '2023-11-22', 38, 2),
(26, 2, '2023-11-22', 41, 2),
(27, 2, '2023-11-22', 57, 3),
(28, 2, '2023-11-22', 56, 3),
(29, 2, '2023-11-22', 55, 3),
(30, 2, '2023-11-22', 54, 3),
(31, 2, '2023-11-22', 53, 3),
(32, 5, '2023-11-22', 52, 3),
(33, 2, '2023-11-22', 51, 3),
(34, 2, '2023-11-22', 50, 3),
(35, 4, '2023-11-22', 48, 3),
(36, 4, '2023-11-22', 49, 3),
(37, 2, '2023-11-22', 67, 4),
(38, 4, '2023-11-22', 66, 4),
(39, 4, '2023-11-22', 65, 4),
(40, 4, '2023-11-22', 64, 4),
(41, 4, '2023-11-22', 63, 4),
(42, 4, '2023-11-22', 62, 4),
(43, 4, '2023-11-22', 61, 4),
(44, 4, '2023-11-22', 60, 4),
(45, 4, '2023-11-22', 58, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `block`
--

CREATE TABLE `block` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `team_id` int(11) NOT NULL,
  `condicion` char(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `block`
--

INSERT INTO `block` (`id`, `name`, `team_id`, `condicion`) VALUES
(7, 'MAT 1', 2, '0'),
(8, 'INTELIGENCIA ARTIFICI', 1, '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calification`
--

CREATE TABLE `calification` (
  `id` int(11) NOT NULL,
  `val` double DEFAULT NULL,
  `alumn_id` int(11) NOT NULL,
  `block_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permiso`
--

CREATE TABLE `permiso` (
  `idpermiso` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `permiso`
--

INSERT INTO `permiso` (`idpermiso`, `nombre`) VALUES
(1, 'Escritorio'),
(2, 'Grupos'),
(3, 'Acceso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `team`
--

CREATE TABLE `team` (
  `idgrupo` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `favorito` tinyint(1) NOT NULL,
  `idusuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `team`
--

INSERT INTO `team` (`idgrupo`, `nombre`, `favorito`, `idusuario`) VALUES
(1, 'PRIMERO DE SECUNDARIA', 1, 1),
(2, 'SEGUNDO DE SECUNDARIA', 1, 1),
(3, 'TERCERO DE SECUNDARIA', 1, 1),
(4, 'CUARTO DE SECUNDARIA', 1, 1),
(5, 'QUINTO DE SECUNDARIA', 0, 1),
(11, 'SEPTIMO SECUNDARIA', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `tipo_documento` varchar(20) NOT NULL,
  `num_documento` varchar(20) NOT NULL,
  `direccion` varchar(70) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `cargo` varchar(20) DEFAULT NULL,
  `login` varchar(20) NOT NULL,
  `clave` varchar(64) NOT NULL,
  `imagen` varchar(50) NOT NULL,
  `condicion` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `nombre`, `tipo_documento`, `num_documento`, `direccion`, `telefono`, `email`, `cargo`, `login`, `clave`, `imagen`, `condicion`) VALUES
(1, 'ADMINISTRADOR', 'DNI', '72154871', 'Calle los alpes 210', '975865848', 'admin@gmail.com', 'JEFE', 'ADMINISTRADOR', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', '1714091104.png', 1),
(3, 'RAY STIVEN CAVERO VEGA', 'DNI', '71652752', 'AV. SEBASTIAN BARRANCA - C.P. EL ARENAL - LOS AQUIJES', '977550762', 'raysvega24@hotmail.com', 'ADMINISTRADOR', 'RAY.CAVERO', 'e7783490b132d65199ed9e5d7f4b4e00a9e234d34745d1f69647a81547d70e79', '1714089837.png', 1),
(4, 'CESAR ALEXANDER ROJAS LOPEZ', 'DNI', '74390048', 'AV. ACOMAYO 123', '979719971', 'cesar_pingostini@gmail.com', '', 'CESAR.ROJAS', '11fdcda67389a396e2af1f8315ecbd645c63619f921227721ad69875d0dc7472', '1714089845.png', 1),
(5, 'Leonardo', 'DNI', '71231231', 'Las lomas', '932132123', 'hola@gmail.com', 'Administrador', 'holalogin@gmail.com', 'b221d9dbb083a7f33428d7c2a3c3198ae925614d70210e28716ccaa7cd4ddb79', '1745566325.png', 1),
(6, '', '', '', '', '', '', '', '', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_permiso`
--

CREATE TABLE `usuario_permiso` (
  `idusuario_permiso` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `idpermiso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `usuario_permiso`
--

INSERT INTO `usuario_permiso` (`idusuario_permiso`, `idusuario`, `idpermiso`) VALUES
(29, 4, 1),
(30, 4, 2),
(31, 4, 3),
(41, 3, 1),
(42, 3, 2),
(43, 3, 3),
(53, 1, 1),
(54, 1, 2),
(55, 1, 3),
(59, 5, 2),
(60, 5, 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumn`
--
ALTER TABLE `alumn`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`) USING BTREE;

--
-- Indices de la tabla `alumn_team`
--
ALTER TABLE `alumn_team`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alumn_id` (`alumn_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indices de la tabla `assistance`
--
ALTER TABLE `assistance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alumn_id` (`alumn_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indices de la tabla `behavior`
--
ALTER TABLE `behavior`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alumn_id` (`alumn_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indices de la tabla `block`
--
ALTER TABLE `block`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indices de la tabla `calification`
--
ALTER TABLE `calification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alumn_id` (`alumn_id`),
  ADD KEY `block_id` (`block_id`);

--
-- Indices de la tabla `permiso`
--
ALTER TABLE `permiso`
  ADD PRIMARY KEY (`idpermiso`);

--
-- Indices de la tabla `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`idgrupo`),
  ADD KEY `team_ibfk_1` (`idusuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`),
  ADD UNIQUE KEY `login_UNIQUE` (`login`);

--
-- Indices de la tabla `usuario_permiso`
--
ALTER TABLE `usuario_permiso`
  ADD PRIMARY KEY (`idusuario_permiso`),
  ADD KEY `fk_u_permiso_usuario_idx` (`idusuario`),
  ADD KEY `fk_usuario_permiso_idx` (`idpermiso`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumn`
--
ALTER TABLE `alumn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT de la tabla `alumn_team`
--
ALTER TABLE `alumn_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT de la tabla `assistance`
--
ALTER TABLE `assistance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `behavior`
--
ALTER TABLE `behavior`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `block`
--
ALTER TABLE `block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `calification`
--
ALTER TABLE `calification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `permiso`
--
ALTER TABLE `permiso`
  MODIFY `idpermiso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `team`
--
ALTER TABLE `team`
  MODIFY `idgrupo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `usuario_permiso`
--
ALTER TABLE `usuario_permiso`
  MODIFY `idusuario_permiso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumn`
--
ALTER TABLE `alumn`
  ADD CONSTRAINT `alumn_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `usuario` (`idusuario`);

--
-- Filtros para la tabla `alumn_team`
--
ALTER TABLE `alumn_team`
  ADD CONSTRAINT `alumn_team_ibfk_1` FOREIGN KEY (`alumn_id`) REFERENCES `alumn` (`id`),
  ADD CONSTRAINT `alumn_team_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `team` (`idgrupo`);

--
-- Filtros para la tabla `assistance`
--
ALTER TABLE `assistance`
  ADD CONSTRAINT `assistance_ibfk_1` FOREIGN KEY (`alumn_id`) REFERENCES `alumn` (`id`),
  ADD CONSTRAINT `assistance_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `team` (`idgrupo`);

--
-- Filtros para la tabla `behavior`
--
ALTER TABLE `behavior`
  ADD CONSTRAINT `behavior_ibfk_1` FOREIGN KEY (`alumn_id`) REFERENCES `alumn` (`id`),
  ADD CONSTRAINT `behavior_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `team` (`idgrupo`);

--
-- Filtros para la tabla `block`
--
ALTER TABLE `block`
  ADD CONSTRAINT `block_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `team` (`idgrupo`);

--
-- Filtros para la tabla `calification`
--
ALTER TABLE `calification`
  ADD CONSTRAINT `calification_ibfk_1` FOREIGN KEY (`alumn_id`) REFERENCES `alumn` (`id`),
  ADD CONSTRAINT `calification_ibfk_2` FOREIGN KEY (`block_id`) REFERENCES `block` (`id`);

--
-- Filtros para la tabla `team`
--
ALTER TABLE `team`
  ADD CONSTRAINT `team_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`);

--
-- Filtros para la tabla `usuario_permiso`
--
ALTER TABLE `usuario_permiso`
  ADD CONSTRAINT `fk_u_permiso_usuario` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuario_permiso` FOREIGN KEY (`idpermiso`) REFERENCES `permiso` (`idpermiso`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
