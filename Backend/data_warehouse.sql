-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-06-2021 a las 05:02:24
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `data_warehouse`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `channels`
--

CREATE TABLE `channels` (
  `channel_id` int(3) NOT NULL,
  `channel_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `channels`
--

INSERT INTO `channels` (`channel_id`, `channel_name`) VALUES
(1, 'Teléfono'),
(2, 'Whatsapp'),
(3, 'Instagram'),
(4, 'Facebook'),
(5, 'Linkedin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cities`
--

CREATE TABLE `cities` (
  `city_id` int(5) NOT NULL,
  `country_id` int(3) NOT NULL,
  `city_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cities`
--

INSERT INTO `cities` (`city_id`, `country_id`, `city_name`) VALUES
(1, 1, 'Buenos Aires'),
(2, 1, 'Córdoba'),
(3, 1, 'Rosario'),
(4, 2, 'Bogotá'),
(5, 2, 'Cúcuta'),
(6, 2, 'Medellín'),
(7, 3, 'Atacama'),
(8, 3, 'Santiago'),
(9, 3, 'Valparaíso'),
(10, 4, 'Canelones'),
(11, 4, 'Maldonado'),
(12, 4, 'Montevideo'),
(13, 5, 'Ciudad de México'),
(14, 5, 'Tijuana'),
(15, 6, 'Florida'),
(16, 6, 'Texas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `companies`
--

CREATE TABLE `companies` (
  `company_id` int(3) NOT NULL,
  `company_name` varchar(64) NOT NULL,
  `city_id` int(3) NOT NULL,
  `address` varchar(64) NOT NULL,
  `email` varchar(64) DEFAULT NULL,
  `telephone` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `companies`
--

INSERT INTO `companies` (`company_id`, `company_name`, `city_id`, `address`, `email`, `telephone`) VALUES
(1, 'Acámica', 1, 'Humboldt 1967', 'hola@acamica.com', '540112345678'),
(2, 'Digital House', 3, 'Av. Madres Plaza de Mayo 3020', 'digitalHouse@globant.com', '540341234567'),
(3, 'Paris Saint German', 2, 'Sarmiento 1234', 'psg@gmail.com', '540351456789'),
(4, 'Juventus ', 4, 'Pasco 123', 'Juventus@yahoo.com', '57123456789'),
(5, 'Benfica', 16, 'Pedernera 4567', 'Benfica@gmail.com', '1830123456789'),
(6, 'Brightom ', 12, 'Pellegrini 3456', 'Brightom@gmail.com', '598234567890');

-- --------------------------------------------------------
|
--
-- Estructura de tabla para la tabla `contacts`
--

CREATE TABLE `contacts` (
  `contact_id` int(3) NOT NULL,
  `firstname` varchar(64) NOT NULL,
  `lastname` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `city_id` int(5) NOT NULL,
  `company_id` int(3) NOT NULL,
  `position` varchar(32) NOT NULL,
  `interest` int(3) NOT NULL,
  `address` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `contacts`
--

INSERT INTO `contacts` (`contact_id`, `firstname`, `lastname`, `email`, `city_id`, `company_id`, `position`, `interest`, `address`) VALUES
(1, 'Emiliano', 'Martinez', 'dibumartinez@gmail.com', 14, 2, 'Arquero', 100, 'Mitre 3355'),
(2, 'Juan', 'Foyth', 'nicootamendi@yahoo.com', 13, 5, 'Defensor', 0, 'San Martín 456'),
(3, 'Nicolas', 'Tagliafico', 'nicotaglia@gmail.com', 8, 6, 'Defensor', 50, 'España 7768'),
(4, 'Gonzalo', 'Montiel', 'cachete@gmail.com', 1, 3, 'Defensor', 50, 'Italia 2367'),
(5, 'Leandro', 'Paredes', 'leoparedes@yahoo.com', 12, 3, 'Mediocampista', 75, 'Balcarce 567'),
(6, 'German', 'Pezzela', 'pezzela6@gmail.com', 2, 6, 'Defensor', 0, 'Moreno 980'),
(7, 'Rodrigo', 'De Paul', 'rodridepaul@gmail.com', 3, 5, 'Mediocampista', 75, 'Maipú 2136'),
(8, 'Marcos', 'Acuña', 'huevoacuña@gmail.com', 1, 4, 'Defensor', 25, 'Pasco 3245'),
(9, 'Julian', 'Alvarez', 'araña@acamica.com', 6, 4, 'Delantero', 50, 'Ayacucho 1987'),
(10, 'Lionel', 'Messi', 'lio1@messi.com', 16, 3, 'Delantero', 100, 'Cochabamba 1531'),
(11, 'Angel', 'Di maria', 'fideo@dimaria.com', 2, 2, 'Delantero', 100, 'Montevideo 2654'),
(12, 'Ruli', 'Geronimo', 'ruli@acamica.com', 7, 1, 'Arquero', 75, 'Mendoza 2105'),
(13, 'Romero', 'Cristian', 'cutiromero@gryffindor.com', 11, 3, 'Defensor', 75, 'Entre Ríos 1920'),
(14, 'Exequiel', 'Palacios', 'palacios@acamica.com', 6, 1, 'Mediocampista', 75, 'Pescio 2106'),
(15, 'Alejandro', 'Gomez', 'papugomez@slytherin.com', 14, 4, 'Mediocampista', 50, 'La Paz'),
(16, 'Thiago', 'Almada', 'thiagoalmada@slytherin.com', 15, 4, 'Mediocampista', 25, 'Córdoba 1453');



-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacts_channels`
--

CREATE TABLE `contacts_channels` (
  `contact_id` int(3) NOT NULL,
  `channel_id` int(3) NOT NULL,
  `user_account` varchar(64) NOT NULL,
  `preference` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `contacts_channels`
--

INSERT INTO `contacts_channels` (`contact_id`, `channel_id`, `user_account`, `preference`) VALUES
(0, 0, '', NULL),
(2, 1, '52554567777', 'Canal favorito'),
(3, 3, '@nicoTaglia', 'No molestar'),
(3, 5, 'https://www.linkedin.com/in/nicoTaglia', 'Canal favorito'),
(4, 1, '54114563336', 'Canal favorito'),
(4, 4, 'https://www.facebook.com/cacheteMontiel', 'Sin preferencia'),
(5, 1, '598234567655', 'Canal favorito'),
(6, 2, '543515678457', 'No molestar'),
(7, 1, '543415567433', 'Canal favorito'),
(8, 1, '54115654766', 'No molestar'),
(8, 3, '@huevoAcuña', 'Sin preferencia'),
(9, 1, '57123456789', 'Canal favorito'),
(10, 3, '@lioMessi', 'Canal favorito'),
(11, 1, '54351432334', 'Sin preferencia'),
(11, 2, '543515678435', 'Canal favorito'),
(12, 3, '@minervamcgonagall', 'No molestar'),
(12, 5, 'https://www.linkedin.com/in/eeee', 'Canal favorito'),
(13, 3, '@sssss', 'No molestar'),
(13, 5, 'https://www.linkedin.com/in/dadadad', 'Canal favorito'),
(14, 2, '5724567435', 'Canal favorito'),
(14, 3, '@ssss', 'Sin preferencia'),
(15, 1, '5255568964', 'No molestar'),
(15, 2, '5255345343', 'No molestar'),
(15, 3, '@doloresumbridge', 'No molestar'),
(15, 4, 'https://www.facebook.com/enzo', 'No molestar'),
(15, 5, 'https://www.linkedin.com/in/enzo', 'No molestar'),
(16, 3, '@fernandez', 'No molestar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `countries`
--

CREATE TABLE `countries` (
  `country_id` int(3) NOT NULL,
  `region_id` int(3) NOT NULL,
  `country_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `countries`
--

INSERT INTO `countries` (`country_id`, `region_id`, `country_name`) VALUES
(1, 1, 'Argentina'),
(2, 1, 'Colombia'),
(3, 1, 'Chile'),
(4, 1, 'Uruguay'),
(5, 2, 'México'),
(6, 2, 'Estados Unidos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regions`
--

CREATE TABLE `regions` (
  `region_id` int(3) NOT NULL,
  `region_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `regions`
--

INSERT INTO `regions` (`region_id`, `region_name`) VALUES
(1, 'Sudamérica'),
(2, 'Norteamérica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `user_id` int(3) NOT NULL,
  `firstname` varchar(64) NOT NULL,
  `lastname` varchar(64) NOT NULL,
  `email` varchar(65) NOT NULL,
  `perfil` enum('Admin','Básico') NOT NULL DEFAULT 'Básico',
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`user_id`, `firstname`, `lastname`, `email`, `perfil`, `password`) VALUES
(1, 'Ezequiel', 'Sanchez', 'ezsandev', 'Admin', '1234'),
(2, 'Lionel', 'Messi', 'lionelmessi@hotmail.com', 'Admin', 'campeon'),
(3, 'Gustavo ', 'Perez', 'gperez@yahoo.com', 'Básico', '123a'),
(4, 'Ailen', 'Hermosa', 'ailuuu@hotmail.com', 'Básico', '123a');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `channels`
--
ALTER TABLE `channels`
  ADD PRIMARY KEY (`channel_id`);

--
-- Indices de la tabla `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`city_id`),
  ADD KEY `cities_ibfk_1` (`country_id`);

--
-- Indices de la tabla `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`company_id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indices de la tabla `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`contact_id`),
  ADD KEY `city_id` (`city_id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indices de la tabla `contacts_channels`
--
ALTER TABLE `contacts_channels`
  ADD PRIMARY KEY (`contact_id`,`channel_id`),
  ADD KEY `channel_id` (`channel_id`);

--
-- Indices de la tabla `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`country_id`),
  ADD KEY `countries_ibfk_1` (`region_id`);

--
-- Indices de la tabla `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`region_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `channels`
--
ALTER TABLE `channels`
  MODIFY `channel_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `cities`
--
ALTER TABLE `cities`
  MODIFY `city_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `companies`
--
ALTER TABLE `companies`
  MODIFY `company_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `contacts`
--
ALTER TABLE `contacts`
  MODIFY `contact_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `countries`
--
ALTER TABLE `countries`
  MODIFY `country_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `regions`
--
ALTER TABLE `regions`
  MODIFY `region_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
