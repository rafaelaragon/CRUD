-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-02-2019 a las 20:31:32
-- Versión del servidor: 10.1.35-MariaDB
-- Versión de PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `baloncesto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `series`
--

CREATE TABLE `series` (
  `IdSer` int(11) NOT NULL,
  `NomSer` varchar(100) COLLATE utf8_bin NOT NULL,
  `SagSer` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT 'No',
  `GenSer` varchar(50) COLLATE utf8_bin NOT NULL,
  `NumCapSer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `series`
--

INSERT INTO `series` (`IdSer`, `NomSer`, `SagSer`, `GenSer`, `NumCapSer`) VALUES
(1, 'BoJack Horseman', '', 'Comedia', 60),
(2, 'Mr. Pickles', '', 'Humor negro', 32),
(4, 'Vikings', '', 'Acción, Drama Histórico', 69),
(5, 'Doctor Who', '', 'Ciencia Ficción', 845),
(6, 'Padre de Familia', '', 'Comedia', 322),
(7, 'South Park', '', 'Comedia', 297),
(8, 'Gotham', 'Batman', 'Acción, Crimen, Ciencia Ficción', 95);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socio`
--

CREATE TABLE `socio` (
  `IdPel` int(5) NOT NULL,
  `NomPel` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `SagPel` varchar(100) COLLATE utf8_spanish2_ci NOT NULL DEFAULT 'No',
  `GenPel` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `DurPel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `socio`
--

INSERT INTO `socio` (`IdPel`, `NomPel`, `SagPel`, `GenPel`, `DurPel`) VALUES
(1, 'Al final de la escalera', '', 'Terror', 109),
(2, 'El jovencito Frankenstein', '', 'Comedia', 105),
(3, 'El perfume: historia de un asesino', '', 'Drama, Suspense', 147),
(4, 'El jardinero fiel', '', 'Drama', 128),
(5, 'La vida de Brian', '', 'Comedia', 94),
(8, 'El Padrino', 'El Padrino', 'Gángsters, Drama', 175),
(9, 'El padrino: Parte II', 'El Padrino', 'Gángsters, Drama', 200),
(10, 'El bueno, el feo y el malo', 'Trilogía del dólar', 'Spaghetti Western', 186),
(11, 'Por un puñado de dólares', 'Trilogía del dólar', 'Spaghetti Western', 101),
(12, 'La Muerte tenía un precio', 'Trilogía del dólar', 'Spaghetti Western', 130),
(13, 'Los caballeros de la mesa cuadrada', '', 'Comedia', 91),
(14, 'Mad Max', 'Mad Max', 'Acción, Ciencia Ficción', 93),
(15, 'Mad Max 2', 'Mad Max', 'Acción, Ciencia Ficción', 95),
(16, 'Mad Max Beyond Thunderdome', 'Mad Max', 'Acción, Ciencia Ficción', 107),
(17, 'The Matrix', 'Matrix', 'Acción, Ciencia Ficción', 136),
(18, 'The Matrix Reloaded', 'Matrix', 'Acción, Ciencia Ficción', 138),
(19, 'El Señor de los Anillos: la Comunidad del Anillo', 'El Señor de los Anillos', 'Aventuras, Fantasía', 228),
(20, 'El Señor de los Anillos: las dos torres', 'El Señor de los Anillos', 'Aventuras, Fantasía', 223),
(21, 'El Señor de los Anillos: el retorno del Rey', 'El Señor de los Anillos', 'Aventuras, Fantasía', 250);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`IdSer`);

--
-- Indices de la tabla `socio`
--
ALTER TABLE `socio`
  ADD PRIMARY KEY (`IdPel`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `series`
--
ALTER TABLE `series`
  MODIFY `IdSer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `socio`
--
ALTER TABLE `socio`
  MODIFY `IdPel` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
