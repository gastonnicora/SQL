-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 16-12-2023 a las 00:14:14
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `eje`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `company`
--

CREATE TABLE `company` (
  `uuid` varchar(255) NOT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `removed` int(11) DEFAULT NULL,
  `dateOfCreate` varchar(255) DEFAULT NULL,
  `dateOfUpdate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `company`
--

INSERT INTO `company` (`uuid`, `owner`, `name`, `address`, `removed`, `dateOfCreate`, `dateOfUpdate`) VALUES
('197ec657-4a20-4af3-a2fc-c98820f21af5', '85ba0dd0-0cee-4e22-a0cb-234c0ee5657d', 'Remates 21', NULL, 0, '09/12/2023 13:56:12', '09/12/2023 14:32:26'),
('76dfe4af-258b-42ba-b6b1-4984f860e184', '85ba0dd0-0cee-4e22-a0cb-234c0ee5657d', 'Remates 21', 'calle 117 nº 80, La Plata,Buenos Aires', 0, '09/12/2023 14:27:58', '09/12/2023 14:42:42'),
('c51af944-9426-454e-992a-ae2ce228091b', '85ba0dd0-0cee-4e22-a0cb-234c0ee5657d', 'Remates 21', 'calle 117 nº 80, La Plata', 0, '09/12/2023 21:38:15', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `confirm_e_mail`
--

CREATE TABLE `confirm_e_mail` (
  `uuid` varchar(255) NOT NULL,
  `user` varchar(255) DEFAULT NULL,
  `dateOfCreate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `confirm_e_mail`
--

INSERT INTO `confirm_e_mail` (`uuid`, `user`, `dateOfCreate`) VALUES
('7944cdd8-b661-4663-b147-af870bf9f84d', '414e4af5-5921-4ab7-91e5-5e2cac9e3149', '10/12/2023 16:51:32'),
('c76f65b9-b40b-4c11-b650-3062a770f879', '9786bf65-bb3d-44ea-8fe9-5ffc0b746cfd', '10/12/2023 16:46:10'),
('dc5a32e2-b6da-4702-a104-3ff8504bef73', '85ba0dd0-0cee-4e22-a0cb-234c0ee5657d', '07/12/2023 19:38:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employee`
--

CREATE TABLE `employee` (
  `uuid` varchar(255) NOT NULL,
  `user` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `removed` int(11) DEFAULT NULL,
  `dateOfCreate` varchar(255) DEFAULT NULL,
  `dateOfUpdate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `employee`
--

INSERT INTO `employee` (`uuid`, `user`, `company`, `removed`, `dateOfCreate`, `dateOfUpdate`) VALUES
('97755bb1-c665-4a09-9c11-c1a734743a98', '85ba0dd0-0cee-4e22-a0cb-234c0ee5657d', '197ec657-4a20-4af3-a2fc-c98820f21af5', 1, '09/12/2023 21:41:10', '09/12/2023 21:55:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employee_permissions`
--

CREATE TABLE `employee_permissions` (
  `uuid` varchar(255) NOT NULL,
  `employee` varchar(255) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `dateOfCreate` varchar(255) DEFAULT NULL,
  `dateOfUpdate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission`
--

CREATE TABLE `permission` (
  `uuid` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `removed` int(11) DEFAULT NULL,
  `dateOfCreate` varchar(255) DEFAULT NULL,
  `dateOfUpdate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `permission`
--

INSERT INTO `permission` (`uuid`, `name`, `url`, `description`, `removed`, `dateOfCreate`, `dateOfUpdate`) VALUES
('c7218fb4-d517-4f45-910d-a1c10d93a40f', 'Administrador', '/userCreate', 'El permiso permite que el empleado tenga todos los permisos', 0, '10/12/2023 17:03:33', NULL),
('e67201af-1e28-4f66-9782-54832953c05c', 'userCreate', '/userCreate', 'El permiso permite user el link de /userCreate', 0, '10/12/2023 17:05:10', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role`
--

CREATE TABLE `role` (
  `uuid` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `removed` int(11) DEFAULT NULL,
  `dateOfCreate` varchar(255) DEFAULT NULL,
  `dateOfUpdate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `role`
--

INSERT INTO `role` (`uuid`, `name`, `description`, `removed`, `dateOfCreate`, `dateOfUpdate`) VALUES
('af377546-5693-4a78-be79-a7a45b51e66f', 'Administrador', 'El rol permite que el empleado tenga todos los permisos, no se que poner', 1, '10/12/2023 15:20:24', '10/12/2023 15:21:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `uuid` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `birthdate` varchar(255) DEFAULT NULL,
  `removed` int(11) DEFAULT NULL,
  `confirmEmail` int(11) DEFAULT NULL,
  `dateOfCreate` varchar(255) DEFAULT NULL,
  `dateOfUpdate` varchar(255) DEFAULT NULL,
  `terms` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`uuid`, `name`, `lastName`, `email`, `password`, `birthdate`, `removed`, `confirmEmail`, `dateOfCreate`, `dateOfUpdate`, `terms`) VALUES
('414e4af5-5921-4ab7-91e5-5e2cac9e3149', 'Gastón', 'Nicora', 'gastonmatias.21@gmail.co', 'scrypt:32768:8:1$YsnIRjqmC99G4iXi$c2b4f6a9dc5fa75d7e5c360e3da4ef78b81badd4a63c5619c64e5122732bec345877cbd6b37c8944f4d768bd7700854fea143293f7d06fc96971d7b5bd3f8596', '21/06/1997', 0, 0, '10/12/2023 16:51:31', NULL, 1),
('85ba0dd0-0cee-4e22-a0cb-234c0ee5657d', 'Gastón', 'Nicora', 'gastonmatias.21@gmail.com', 'scrypt:32768:8:1$9LwvfC6Nn8V2b1cj$fbc48befc81f6b7f1c59c11099fce96fe81300a27ae5d79965dac64d105af7a462138d588798c7ce41f4f24272ade69279197bcf2a1459f34980db430a471cf6', '21/06/1997', 0, 1, '07/12/2023 19:38:30', '11/12/2023 22:03:02', 1),
('9786bf65-bb3d-44ea-8fe9-5ffc0b746cfd', 'Gastón', 'Nicora', 'gastonmatias.21gmail.com', 'scrypt:32768:8:1$PeRKyjs4PuppOXKA$64dd42f28d44a21b2610846b0393709b6f67e33d677260f4d6352057195e2d176e054a526e505c365f3c2e328127e657d0f4a16ea1231bc1a286605665cff283', '21/06/1997', 0, 0, '10/12/2023 16:46:10', NULL, 1),
('a7b4e40e-6090-4d40-b3d8-d3cb0189e995', 'Gastón', 'Nicora', 'tiyem12049@newcupon.com', 'scrypt:32768:8:1$bkFgrvnBvrB9DIbW$68eb62b4ce84d49a004e80542676c12e1bdea6c4cd816efba86623c8997e0862c79a2fd637308b098e2dfe2f33356209aefcd8305425e081b1ae8790a6ab2713', '21/06/1997', 0, 1, '06/12/2023 08:43:47', '06/12/2023 08:45:47', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`uuid`),
  ADD UNIQUE KEY `uuid` (`uuid`),
  ADD KEY `owner` (`owner`);

--
-- Indices de la tabla `confirm_e_mail`
--
ALTER TABLE `confirm_e_mail`
  ADD PRIMARY KEY (`uuid`),
  ADD UNIQUE KEY `uuid` (`uuid`),
  ADD KEY `user` (`user`);

--
-- Indices de la tabla `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`uuid`),
  ADD UNIQUE KEY `uuid` (`uuid`),
  ADD KEY `user` (`user`),
  ADD KEY `company` (`company`);

--
-- Indices de la tabla `employee_permissions`
--
ALTER TABLE `employee_permissions`
  ADD PRIMARY KEY (`uuid`),
  ADD UNIQUE KEY `uuid` (`uuid`),
  ADD KEY `employee` (`employee`),
  ADD KEY `permission` (`permission`);

--
-- Indices de la tabla `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`uuid`),
  ADD UNIQUE KEY `uuid` (`uuid`);

--
-- Indices de la tabla `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`uuid`),
  ADD UNIQUE KEY `uuid` (`uuid`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uuid`),
  ADD UNIQUE KEY `uuid` (`uuid`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `company`
--
ALTER TABLE `company`
  ADD CONSTRAINT `company_ibfk_1` FOREIGN KEY (`owner`) REFERENCES `user` (`uuid`);

--
-- Filtros para la tabla `confirm_e_mail`
--
ALTER TABLE `confirm_e_mail`
  ADD CONSTRAINT `confirm_e_mail_ibfk_1` FOREIGN KEY (`user`) REFERENCES `user` (`uuid`);

--
-- Filtros para la tabla `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`user`) REFERENCES `user` (`uuid`),
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`company`) REFERENCES `company` (`uuid`);

--
-- Filtros para la tabla `employee_permissions`
--
ALTER TABLE `employee_permissions`
  ADD CONSTRAINT `employee_permissions_ibfk_1` FOREIGN KEY (`employee`) REFERENCES `employee` (`uuid`),
  ADD CONSTRAINT `employee_permissions_ibfk_2` FOREIGN KEY (`permission`) REFERENCES `permission` (`uuid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
