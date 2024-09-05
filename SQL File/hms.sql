-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-11-2023 a las 06:28:38
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hms`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'Test@12345', '28-12-2016 11:42:05 AM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(7, 'Medico general', 6, 8, 205, '2023-11-16', '7:00 AM', '2023-11-19 02:05:39', 1, 1, NULL),
(8, 'Cirugia de Mano', 14, 16, 400, '2023-11-30', '1:15 PM', '2023-11-19 05:13:41', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'Dentista', 'Manuel de la Cruz Sanchez', 'Carrera 15 #15-18,  Barrio Chico Norte, BogotÃ¡ D.C., Colombia', '200', 87034644, 'Manuel.cruzsan@gmail.com', '6698254ec8a29e034e0dfb0e59777810', '2016-12-29 06:25:37', '2023-11-19 01:39:55'),
(2, 'Fondoaudiologia', 'Juan Andres Corral', 'Carrera 15 #15-18,  Barrio Chico Norte, BogotÃ¡ D.C.', '201', 64654447, 'An_corral@gmail.com', 'f8fd55446d3d4a5f76e318c2516ad2a4', '2023-11-19 00:17:33', '2023-11-19 02:54:04'),
(3, 'Psiquiatria', 'Pascuala Ros', 'Carrera 15 #15-18,  Barrio Chico Norte, BogotÃ¡ D.C., Colombia', '202', 83452367, 'pas_ro@gmail.com', '908ba646ca63edab542fa1355fc53ef7', '2023-11-19 00:30:11', '2023-11-19 01:50:28'),
(4, 'Ginecologia', 'Victorina Duque', 'Carrera 15 #15-18,  Barrio Chico Norte, BogotÃ¡ D.C., Colombia', '203', 61970784, 'vicduque13@gmail.com', '16832702cce265f146f2ee0f41c4dd67', '2023-11-19 00:32:02', '2023-11-19 01:42:14'),
(5, 'Medico general', 'Azucena Soria', 'Carrera 15 #15-18,  Barrio Chico Norte, BogotÃ¡ D.C., Colombia', '204', 48644010, 'azucesoria113@gmail.com', '93c1ab27a55348f0f383179fd18e8697', '2023-11-19 00:33:33', '2023-11-19 01:42:18'),
(6, 'Medico general', 'Virginia Montero', 'Carrera 15 #15-18,  Barrio Chico Norte, BogotÃ¡ D.C., Colombia', '205', 55393639, 'VirMontero72@gmail.com', '0b05e681635b516b7dfecddda344cbc9', '2023-11-19 01:09:46', '2023-11-19 01:42:25'),
(7, 'Homeopata', 'Fulgencio Torres', 'Carrera 15 #15-18,  Barrio Chico Norte, BogotÃ¡ D.C., Colombia', '300', 75602800, 'FulTorres300@gmail.com', '7419593b05152da8053ce1bc71e9ede2', '2023-11-19 01:13:20', '2023-11-19 01:42:38'),
(8, 'Homeopata', 'Xabier Hernando', 'Carrera 15 #15-18,  Barrio Chico Norte, BogotÃ¡ D.C., Colombia', '300', 78292057, 'Hernando623@gmail.com', '459d3700e323f5b739ec16089359a4df', '2023-11-19 01:16:09', '2023-11-19 01:42:42'),
(9, 'Otorrinolaringologo', 'Vicente Godoy', 'Carrera 15 #15-18,  Barrio Chico Norte, BogotÃ¡ D.C., Colombia', '301', 68532556, 'Vicentego301@gmail.com', '4c7653d2fb0aeac08f36718de46f3b26', '2023-11-19 01:19:23', '2023-11-19 02:10:28'),
(10, 'Medicina Interna', 'Juana Araujo', 'Carrera 15 #15-18,  Barrio Chico Norte, BogotÃ¡ D.C., Colombia', '300', 16304965, 'letiaara72@gmail.com', '8bd61f1da9d74188ce1e9442f6a6b4ec', '2023-11-19 01:24:16', '2023-11-19 02:21:49'),
(11, 'Gastroenterologia', 'Thomas Abellan', 'Carrera 15 #15-18,  Barrio Chico Norte, BogotÃ¡ D.C., Colombia', '302', 8866834880, 'thom_abellan32@gmail.com', '34c97f995dbb65433b88cbe5864d1638', '2023-11-19 01:31:41', '2023-11-19 02:53:16'),
(12, 'Obstetricia', 'Salma Diallo', 'Carrera 15 #15-18,  Barrio Chico Norte, BogotÃ¡ D.C., Colombia', '303', 2740291232, 'SalDiallo34@gmail.com', '46e73687200e9293d3cb6dd967519373', '2023-11-19 01:33:35', '2023-11-19 01:43:04'),
(13, 'Ortopedia', 'Luna Muriel', 'Carrera 15 #15-18,  Barrio Chico Norte, BogotÃ¡ D.C., Colombia', '305', 3108831169, 'Lunuriel23@gmail.com', 'f8aa516eaa944b0de8d3c890d546787d', '2023-11-19 01:38:34', '2023-11-19 01:43:09'),
(14, 'Cirugia de Mano', 'Monserrat Calero', 'Carrera 15 #15-18,  Barrio Chico Norte, BogotÃ¡ D.C., Colombia', '400', 2586074046, 'Monserrat_ca23@gmail.com', '7420e1cdc01416471aee87370d3f305a', '2023-11-19 01:46:05', '2023-11-19 02:12:35'),
(15, 'Neurologia', 'Mirian Zhang', 'Carrera 15 #15-18,  Barrio Chico Norte, BogotÃ¡ D.C., Colombia', '401', 9718932115, 'Mirianzh_24@gmail.com', '845d370a3abdf0b9baea98d4a6593577', '2023-11-19 01:49:40', '2023-11-19 01:50:51'),
(16, 'testesp', 'Test_demo', 'Carrera 15 #15-18,  Barrio Chico Norte, BogotÃ¡ D.C., Colombia', '000', 0, 'test@demo.com', 'f925916e2754e5e03f75dd58a5733251', '2023-11-19 01:53:21', '2023-11-19 01:58:55'),
(17, 'Psiquiatria', 'Valeriano Valero', 'Carrera 15 #15-18,  Barrio Chico Norte, BogotÃ¡ D.C.', '402', 1424531433, 'Valeriano23@gmail.com', '71d497e03ee66bee834d695b04fb35bc', '2023-11-19 02:37:16', '2023-11-19 02:37:48'),
(18, 'Cirugia de Cabeza y Cuello', 'Eneko Andres', 'Carrera 15 #15-18,  Barrio Chico Norte, BogotÃ¡ D.C.', '403', 2919424103, 'Enekon43@gmail.com', '8e6b6cb5ecbae92a673064a0dd990c64', '2023-11-19 02:42:38', '2023-11-19 02:47:33'),
(19, 'Maxilo Facial', 'Maria Francisca Montero', 'Carrera 15 #15-18,  Barrio Chico Norte, BogotÃ¡ D.C.', '404', 1275486028, 'MariaFrancis2023@gmail.com', '97202e4cfe0ae6d87179fded19926a8b', '2023-11-19 02:44:53', '2023-11-19 02:47:37'),
(20, 'Cirugia Oncologia', 'Carmela Lara', 'Carrera 15 #15-18,  Barrio Chico Norte, BogotÃ¡ D.C.', '405', 439, 'Carmela34@gmail.com', 'd81988cbf2611cbc798eec5384d1b8f7', '2023-11-19 02:47:07', '2023-11-19 02:47:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(20, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-07-15 20:59:57', '16-07-2022 02:30:39 AM', 1),
(21, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-07-15 21:25:47', '16-07-2022 02:56:57 AM', 1),
(22, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2023-11-02 02:40:46', NULL, 0),
(23, NULL, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-02 02:44:39', NULL, 0),
(24, NULL, 'est@demo.com', 0x3a3a3100000000000000000000000000, '2023-11-02 03:03:38', NULL, 0),
(25, NULL, 'est@demo.com', 0x3a3a3100000000000000000000000000, '2023-11-02 03:03:56', NULL, 0),
(26, NULL, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-02 03:08:10', NULL, 0),
(27, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2023-11-02 03:08:32', NULL, 1),
(28, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2023-11-13 19:20:14', '14-11-2023 12:57:36 AM', 1),
(29, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2023-11-14 20:05:18', NULL, 1),
(30, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2023-11-15 14:27:29', '15-11-2023 07:59:09 PM', 1),
(31, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2023-11-15 14:40:37', NULL, 1),
(32, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2023-11-17 18:11:23', NULL, 1),
(33, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2023-11-17 18:15:14', NULL, 1),
(34, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2023-11-17 18:31:56', '18-11-2023 12:02:12 AM', 1),
(35, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2023-11-17 18:34:58', NULL, 1),
(36, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2023-11-17 18:46:06', NULL, 1),
(37, NULL, 'Manuel.cruzsan@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-17 21:11:39', NULL, 0),
(38, NULL, 'anuel.cruzsan@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-17 21:14:32', NULL, 0),
(39, 1, 'Manuel.cruzsan@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-17 21:15:19', '18-11-2023 02:46:59 AM', 1),
(40, NULL, 'Manuel.cruzsan@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-17 21:17:26', NULL, 0),
(41, NULL, 'Manuel.cruzsan@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-17 21:17:50', NULL, 0),
(42, 1, 'Manuel.cruzsan@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-17 21:21:51', '18-11-2023 06:07:51 AM', 1),
(43, 1, 'Manuel.cruzsan@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-18 00:38:16', '18-11-2023 08:18:46 AM', 1),
(44, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-18 23:36:49', NULL, 0),
(45, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-18 23:37:03', NULL, 0),
(46, NULL, 'test@test.com', 0x3a3a3100000000000000000000000000, '2023-11-18 23:37:19', NULL, 0),
(47, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2023-11-18 23:37:52', '19-11-2023 05:08:04 AM', 1),
(48, NULL, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2023-11-19 01:51:46', NULL, 0),
(49, 24, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2023-11-19 01:53:44', '19-11-2023 07:24:07 AM', 1),
(50, NULL, 'letiaara72@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-19 02:11:14', NULL, 0),
(51, NULL, 'letiaara72@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-19 02:11:49', NULL, 0),
(52, NULL, 'letiaara72@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-19 02:14:03', NULL, 0),
(53, 10, 'letiaara72@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-19 02:15:07', NULL, 1),
(54, 16, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2023-11-19 02:19:48', '19-11-2023 07:52:07 AM', 1),
(55, 10, 'letiaara72@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-19 02:22:23', '19-11-2023 08:03:45 AM', 1),
(56, 16, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2023-11-19 04:20:03', '19-11-2023 09:56:45 AM', 1),
(57, 16, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2023-11-19 04:56:06', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Ginecologia', '2016-12-28 06:37:25', '2023-11-18 23:55:47'),
(2, 'Medico general', '2016-12-28 06:38:12', '2023-11-18 23:59:05'),
(4, 'Homeopata', '2016-12-28 06:39:26', '2023-11-18 23:51:23'),
(5, 'Dentista', '2016-12-28 06:40:08', '2023-11-18 23:50:01'),
(6, 'Otorrinolaringologo', '2016-12-28 06:41:18', '2023-11-19 00:21:08'),
(13, 'Medicina Interna', '2023-11-18 23:55:31', NULL),
(14, 'Obstetricia', '2023-11-18 23:56:04', NULL),
(15, 'Ortopedia', '2023-11-18 23:59:52', NULL),
(16, 'Cirugia de Mano', '2023-11-19 00:00:08', '2023-11-19 02:04:18'),
(17, 'Neurologia', '2023-11-19 00:00:28', NULL),
(18, 'Psiquiatria', '2023-11-19 00:00:46', '2023-11-19 00:00:54'),
(19, 'Cirugia de Cabeza y Cuello', '2023-11-19 00:01:28', NULL),
(20, 'Maxilo Facial', '2023-11-19 00:01:43', NULL),
(21, 'Cirugia Oncologia', '2023-11-19 00:02:10', NULL),
(22, 'Gastroenterologia', '2023-11-19 00:02:35', NULL),
(24, 'Fondoaudiologia', '2023-11-19 00:04:47', '2023-11-19 00:05:17'),
(25, 'testesp', '2023-11-19 01:52:03', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `AdminRemark` mediumtext,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(1, 'test user', 'test@gmail.com', 2523523522523523, ' This is sample text for the test.', '2019-06-29 19:03:08', 'Test Admin Remark', '2019-06-30 12:55:23', 1),
(3, 'fdsfsdf', 'fsdfsd@ghashhgs.com', 3264826346, 'sample text   sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  ', '2019-11-10 18:53:48', 'vfdsfgfd', '2019-11-10 18:54:04', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`) VALUES
(9, 1, '140/80', '120', '90', '32', 'se de formula Losartan por 100 mg durante un 2 meses', '2023-11-19 05:27:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblpatient`
--

CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(1, 10, 'Herminio Mora', 3224345445, 'HerminioM23@gmail.com', 'Masculino', 'Calle Puente Jaime 12#24-45', 44, 'como descendencia familiar de diabetes, con sintomas de cancer pulmonar', '2023-11-19 02:25:50', '2023-11-19 03:18:26'),
(2, 16, 'test', 0, 'tetuser@gmail.co', 'Femenino', '00', 0, '00', '2023-11-19 04:20:44', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(24, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-07-15 20:57:20', NULL, 0),
(25, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-07-15 20:57:57', '16-07-2022 02:29:28 AM', 1),
(26, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-07-15 21:11:12', '16-07-2022 02:55:17 AM', 1),
(27, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-13 19:10:24', '14-11-2023 12:48:28 AM', 1),
(28, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-14 20:04:02', '15-11-2023 01:34:42 AM', 1),
(29, NULL, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2023-11-15 14:38:27', NULL, 0),
(30, NULL, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2023-11-15 14:39:00', NULL, 0),
(31, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-15 14:39:23', '15-11-2023 08:10:07 PM', 1),
(32, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-18 04:23:52', NULL, 0),
(33, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-18 04:24:01', NULL, 0),
(34, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-18 04:24:20', NULL, 0),
(35, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-18 04:29:18', NULL, 0),
(36, 6, 'tetuser@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-18 04:29:49', '18-11-2023 10:00:33 AM', 1),
(37, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-18 05:04:42', NULL, 0),
(38, 6, 'tetuser@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-18 05:05:07', '18-11-2023 10:46:32 AM', 1),
(39, 6, 'tetuser@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-18 14:00:48', '18-11-2023 07:37:50 PM', 1),
(40, 6, 'tetuser@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-18 16:42:22', NULL, 1),
(41, 6, 'tetuser@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-18 19:33:02', NULL, 1),
(42, 6, 'tetuser@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-18 22:23:15', '19-11-2023 04:01:11 AM', 1),
(43, 6, 'tetuser@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-18 23:12:51', '19-11-2023 04:57:42 AM', 1),
(44, 4, 'rahul@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-18 23:29:20', '19-11-2023 04:59:38 AM', 1),
(45, 8, 'HerminioM23@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-19 02:03:02', NULL, 1),
(46, NULL, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2023-11-19 02:15:53', NULL, 0),
(47, NULL, 'tetuser@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-19 02:16:16', NULL, 0),
(48, NULL, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2023-11-19 02:17:50', NULL, 0),
(49, NULL, 'tetuser@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-19 04:27:51', NULL, 0),
(50, 2, 'tetuser@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-19 04:29:17', NULL, 1),
(51, NULL, 'tetuser@gmail.co', 0x3a3a3100000000000000000000000000, '2023-11-19 04:43:50', NULL, 0),
(52, 2, 'tetuser@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-19 04:50:01', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(1, 'Herminio Mora', 'Calle Puente Jaime 12#24-45', 'Dabeiba, Antioquia', 'masculino', 'HerminioM23@gmail.com', 'd50ec56b92b1bb5cd5e91cac2a845020', '2023-11-19 02:02:31', '2023-11-19 02:38:14'),
(2, 'test paciente', '000', '000', 'masculino', 'tetuser@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2023-11-19 04:29:00', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT de la tabla `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
