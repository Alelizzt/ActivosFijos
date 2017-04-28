CREATE DATABASE activos;
USE database activos;
-- Se crea un usuario especifico para la base de datos "useractivos" con su contraseña "password"
CREATE USER 'useractivos'@'%' IDENTIFIED BY 'password'; GRANT ALL PRIVILEGES ON *.* TO 'useractivos'@'%' REQUIRE NONE WITH GRANT OPTION MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;GRANT ALL PRIVILEGES ON `activos`.* TO 'useractivos'@'%';

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";
CREATE DATABASE IF NOT EXISTS `activos` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `activos`;



--
-- Estructura de tabla para la tabla `activosfijos`
--
CREATE TABLE `activosfijos` (
  `id_act` int(20) NOT NULL AUTO_INCREMENT,
  `nombre_act` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `descr_act` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `tipo_act` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `serial_act` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `num_invent_act` int(100) NOT NULL,
  `peso_act` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `alto_act` varchar(4) COLLATE utf8_spanish_ci NOT NULL,
  `ancho_act` varchar(4) COLLATE utf8_spanish_ci NOT NULL,
  `largo_act` varchar(4) COLLATE utf8_spanish_ci NOT NULL,
  `valcompra_act` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `fechacompra_act` date NOT NULL,
  `fechabaja_act` date NOT NULL,
  `estado_act` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `color_act` varchar(10) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;


--
-- Estructura de tabla para la tabla `area`
--
CREATE TABLE `area` (
  `id_ar` int(10) NOT NULL AUTO_INCREMENT,
  `nombre_ar` int(255) NOT NULL,
  `ciudad_ar` int(30) NOT NULL,
  `id_act_ar` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;


--
-- Estructura de tabla para la tabla `persona`
--
CREATE TABLE `persona` (
  `id_per` int(10) NOT NULL AUTO_INCREMENT,
  `nombre_per` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `id_act_per` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Indices de la tabla `activosfijos`
--
ALTER TABLE `activosfijos`
  ADD PRIMARY KEY (`id_act`);

  --
  -- Indices de la tabla `area`
  --
ALTER TABLE `area`
  ADD PRIMARY KEY (`id_ar`);
  --
  -- Indices de la tabla `persona`
  --
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id_per`)
