-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2022 at 05:38 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_docware`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_coloader_agent_info`
--

CREATE TABLE `tbl_coloader_agent_info` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `cont_person` varchar(50) NOT NULL,
  `address` varchar(250) NOT NULL,
  `type` int(11) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `fax` varchar(25) NOT NULL,
  `cell_phone` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `city_id` int(11) NOT NULL,
  `license_no` varchar(75) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_coloader_agent_info`
--

INSERT INTO `tbl_coloader_agent_info` (`id`, `name`, `cont_person`, `address`, `type`, `phone`, `fax`, `cell_phone`, `email`, `city_id`, `license_no`, `created_by`, `created_at`, `updated_at`) VALUES
(2, 'abc coloader', 'xyz', 'test address', 1, '111-11111111', '1111-1111111', '1111-1111111', 'zia@gmail.com', 4, 'abc license', 1, '2020-07-10 06:48:05', '2020-07-06 00:31:54');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_commodity`
--

CREATE TABLE `tbl_commodity` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(300) DEFAULT NULL,
  `principle_code` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_commodity`
--

INSERT INTO `tbl_commodity` (`id`, `name`, `description`, `principle_code`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'SNAP BUTTON', 'Snap Button', NULL, 1, '2020-07-10 01:24:42', '2020-07-10 01:29:13');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_companies_info`
--

CREATE TABLE `tbl_companies_info` (
  `id` int(11) NOT NULL,
  `code` varchar(150) NOT NULL,
  `name` varchar(250) NOT NULL,
  `address` varchar(500) DEFAULT NULL,
  `phone` varchar(75) DEFAULT NULL,
  `fax` varchar(75) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_companies_info`
--

INSERT INTO `tbl_companies_info` (`id`, `code`, `name`, `address`, `phone`, `fax`, `email`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'test', 'TESTT', 'TESTE', '333-33333333', '3333-3333333', 'test@gmail.com', 1, '2022-08-12 15:34:54', '2022-08-12 10:34:54');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

CREATE TABLE `tbl_country` (
  `id` int(11) NOT NULL,
  `code` varchar(25) DEFAULT NULL,
  `un_code` varchar(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_country`
--

INSERT INTO `tbl_country` (`id`, `code`, `un_code`, `name`, `created_by`, `created_at`, `updated_at`) VALUES
(10, 'PAK', 'PK', 'PAKISTAN', 1, '2020-07-10 06:32:58', '2020-07-10 01:13:16'),
(11, NULL, 'AF', 'AFGHANISTAN', 1, '2020-07-10 06:33:01', '2020-07-10 01:13:11'),
(12, '', 'AX', 'ALAND ISLANDS', 5, '2020-07-10 02:09:58', '2020-07-10 02:09:58'),
(13, '', 'AL', 'ALBANIA', 5, '2020-07-10 02:10:44', '2020-07-10 02:10:44'),
(14, '', 'DZ', 'ALGERIA', 5, '2020-07-10 02:11:06', '2020-07-10 02:11:06'),
(15, '', 'AS', 'AMERICAN SAMOA', 5, '2020-07-10 02:11:29', '2020-07-10 02:11:29'),
(16, '', 'AD', 'ANDORRA', 5, '2020-07-10 02:14:40', '2020-07-10 02:14:40'),
(17, '', 'AO', 'ANGOLA', 5, '2020-07-10 02:15:29', '2020-07-10 02:15:29'),
(18, '', 'AI', 'ANGUILLA', 5, '2020-07-10 02:16:14', '2020-07-10 02:16:14'),
(19, '', 'AQ', 'ANTARCTICA', 5, '2020-07-10 02:16:29', '2020-07-10 02:16:29'),
(20, '`', 'AG', 'ANTIGUA AND BARBUDA', 5, '2020-07-10 02:17:04', '2020-07-10 02:17:04'),
(21, '', 'AR', 'ARGENTINA', 5, '2020-07-10 02:18:46', '2020-07-10 02:18:46'),
(22, '', 'AM', 'ARMENIA', 5, '2020-07-10 02:19:00', '2020-07-10 02:19:00'),
(23, '', 'AW', 'ARUBA', 5, '2020-07-10 02:19:12', '2020-07-10 02:19:12'),
(24, 'AUS', 'AU', 'AUSTRALIA', 5, '2020-07-10 02:19:33', '2020-07-10 02:19:33'),
(25, '', 'AT', 'AUSTRIA', 5, '2020-07-10 02:19:45', '2020-07-10 02:19:45'),
(26, '', 'AZ', 'AZERBAIJAN', 5, '2020-07-10 02:19:58', '2020-07-10 02:19:58'),
(27, '', 'BS', 'BAHAMAS', 5, '2020-07-10 02:20:16', '2020-07-10 02:20:16'),
(28, '', 'BH', 'BAHRAIN', 5, '2020-07-10 02:20:53', '2020-07-10 02:20:53'),
(29, 'BANG', 'BD', 'BANGLADESH', 5, '2020-07-10 02:21:27', '2020-07-10 02:21:27'),
(30, '', 'BB', 'BARBADOS', 5, '2020-07-10 02:21:44', '2020-07-10 02:21:44'),
(31, '', 'BY', 'BELARUS', 5, '2020-07-10 02:21:57', '2020-07-10 02:21:57'),
(32, '', 'BE', 'BELGIUM', 5, '2020-07-10 02:22:09', '2020-07-10 02:22:09'),
(33, '', 'BZ', 'BELIZE', 5, '2020-07-10 02:22:21', '2020-07-10 02:22:21'),
(34, '', 'BJ', 'BENIN', 5, '2020-07-10 02:22:37', '2020-07-10 02:22:37'),
(35, '', 'BM', 'BERMUDA', 5, '2020-07-10 02:22:59', '2020-07-10 02:22:59'),
(36, '', 'BT', 'BHUTAN', 5, '2020-07-10 02:23:23', '2020-07-10 02:23:23'),
(37, '', 'BO', 'BOLIVIA', 5, '2020-07-10 02:23:50', '2020-07-10 02:23:50'),
(38, '', 'BQ', 'BONAIRE, SINT EUSTATIUS AND SABA', 5, '2020-07-10 02:24:15', '2020-07-10 02:24:15'),
(39, '', 'BA', 'BOSNIA AND HERZEGOVINA', 5, '2020-07-10 02:24:30', '2020-07-10 02:24:30'),
(40, '', 'BW', 'BOTSWANA', 5, '2020-07-10 02:27:21', '2020-07-10 02:27:21'),
(41, '', 'BR', 'BRAZIL', 5, '2020-07-10 02:29:14', '2020-07-10 02:29:14'),
(42, '', 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 5, '2020-07-10 02:29:47', '2020-07-10 02:29:47'),
(43, '', 'BN', 'BRUNEI DARUSSALAM', 5, '2020-07-10 02:30:04', '2020-07-10 02:30:04'),
(44, '', 'BG', 'BULGARIA', 5, '2020-07-10 02:30:19', '2020-07-10 02:30:19'),
(45, '', 'BF', 'BURKINA FASO', 5, '2020-07-10 02:30:38', '2020-07-10 02:30:38'),
(46, '', 'BI', 'BURUNDI', 5, '2020-07-10 02:32:00', '2020-07-10 02:32:00'),
(47, '', 'KH', 'CAMBODIA', 5, '2020-07-10 02:33:45', '2020-07-10 02:33:45'),
(48, '', 'CM', 'CAMEROON', 5, '2020-07-10 02:34:19', '2020-07-10 02:34:19'),
(49, '', 'CA', 'CANADA', 5, '2020-07-10 02:36:04', '2020-07-10 02:36:04'),
(50, '', 'CV', 'CAPE VERDE', 5, '2020-07-10 02:36:18', '2020-07-10 02:36:18'),
(51, '', 'KY', 'CAYMAN ISLANDS', 5, '2020-07-10 02:36:32', '2020-07-10 02:36:32'),
(52, 'CAR', 'CF', 'CENTRAL AFRICAN REPUBLIC', 5, '2020-07-10 02:36:50', '2020-07-10 02:36:50'),
(53, '', 'TD', 'CHAD', 5, '2020-07-10 02:37:01', '2020-07-10 02:37:01'),
(54, '', 'CL', 'CHILE', 5, '2020-07-10 02:37:17', '2020-07-10 02:37:17'),
(55, '', 'CN', 'CHINA', 5, '2020-07-10 02:37:28', '2020-07-10 02:37:28'),
(56, '', 'CX', 'CHRISTMAS ISLAND', 5, '2020-07-10 02:40:06', '2020-07-10 02:40:06'),
(57, '', 'CC', 'COCOS (KEELING) ISLANDS', 5, '2020-07-10 02:40:30', '2020-07-10 02:40:30'),
(58, '', 'CO', 'COLOMBIA', 5, '2020-07-10 02:40:44', '2020-07-10 02:40:44'),
(59, '', 'KM', 'COMOROS', 5, '2020-07-10 02:58:30', '2020-07-10 02:58:30'),
(60, '', 'CG', 'CONGO', 5, '2020-07-10 02:58:47', '2020-07-10 02:58:47'),
(61, '', 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 5, '2020-07-10 02:59:28', '2020-07-10 02:59:28'),
(62, '', 'CK', 'COOK ISLANDS', 5, '2020-07-10 02:59:50', '2020-07-10 02:59:50'),
(63, '', 'CR', 'COSTA RICA', 5, '2020-07-10 03:00:23', '2020-07-10 03:00:23'),
(64, '', 'CI', 'CôTE D\'IVOIRE', 5, '2020-07-10 03:00:38', '2020-07-10 03:00:38'),
(65, '', 'HR', 'CROATIA', 5, '2020-07-10 03:00:52', '2020-07-10 03:00:52'),
(66, '', 'CU', 'CUBA', 5, '2020-07-10 03:01:12', '2020-07-10 03:01:12'),
(67, '', 'CW', 'CURAçAO', 5, '2020-07-10 03:01:30', '2020-07-10 03:01:30'),
(68, '', 'CY', 'CYPRUS', 5, '2020-07-10 03:01:47', '2020-07-10 03:01:47'),
(69, '', 'CZ', 'CZECH REPUBLIC', 5, '2020-07-10 03:03:23', '2020-07-10 03:03:23'),
(70, '', 'DK', 'DENMARK', 5, '2020-07-10 03:05:08', '2020-07-10 03:05:08'),
(71, '', 'DJ', 'DJIBOUTI', 5, '2020-07-10 03:05:19', '2020-07-10 03:05:19'),
(72, '', 'DM', 'DOMINICA', 5, '2020-07-10 03:05:37', '2020-07-10 03:05:37'),
(73, '', 'DO', 'DOMINICAN REPUBLIC', 5, '2020-07-10 03:06:13', '2020-07-10 03:06:13'),
(74, '', 'EC', 'ECUADOR', 5, '2020-07-10 03:06:35', '2020-07-10 03:06:35'),
(75, '', 'EG', 'EGYPT', 5, '2020-07-10 03:07:32', '2020-07-10 03:07:32'),
(76, '', 'SV', 'EL SALVADOR', 5, '2020-07-10 03:07:48', '2020-07-10 03:07:48'),
(77, '', 'GQ', 'EQUATORIAL GUINEA', 5, '2020-07-10 03:08:10', '2020-07-10 03:08:10'),
(78, '', 'ER', 'ERITREA', 5, '2020-07-10 03:08:30', '2020-07-10 03:08:30'),
(79, '', 'EE', 'ESTONIA', 5, '2020-07-10 03:09:29', '2020-07-10 03:09:29'),
(80, '', 'SZ', 'ESWATINI', 5, '2020-07-10 03:10:37', '2020-07-10 03:10:37'),
(81, '', 'ET', 'ETHIOPIA', 5, '2020-07-10 03:11:20', '2020-07-10 03:11:20'),
(82, '', 'FK', 'FALKLAND ISLANDS (MALVINAS)', 5, '2020-07-10 03:11:47', '2020-07-10 03:11:47'),
(83, '', 'FO', 'FAROE ISLANDS', 5, '2020-07-10 03:12:00', '2020-07-10 03:12:00'),
(84, '', 'FJ', 'FIJI', 5, '2020-07-10 03:12:16', '2020-07-10 03:12:16'),
(85, '', 'FI', 'FINLAND', 5, '2020-07-10 03:12:32', '2020-07-10 03:12:32'),
(86, '', 'FR', 'FRANCE', 5, '2020-07-10 03:12:49', '2020-07-10 03:12:49'),
(87, '', 'GF', 'FRENCH GUIANA', 5, '2020-07-10 03:13:13', '2020-07-10 03:13:13'),
(88, '', 'PF', 'FRENCH POLYNESIA', 5, '2020-07-10 03:13:27', '2020-07-10 03:13:27'),
(89, '', 'TF', 'FRENCH SOUTHERN TERRITORIES', 5, '2020-07-10 03:13:59', '2020-07-10 03:13:59'),
(90, '', 'GA', 'GABON', 5, '2020-07-10 03:14:48', '2020-07-10 03:14:48'),
(91, '', 'GM', 'GAMBIA', 5, '2020-07-10 03:14:57', '2020-07-10 03:14:57'),
(92, '', 'GE', 'GEORGIA', 5, '2020-07-10 22:22:12', '2020-07-10 22:22:12'),
(93, '', 'DE', 'GERMANY', 5, '2020-07-10 22:22:25', '2020-07-10 22:22:25'),
(94, '', 'GH', 'GHANA', 5, '2020-07-10 22:22:42', '2020-07-10 22:22:42'),
(95, '', 'GI', 'GIBRALTAR', 5, '2020-07-10 22:22:54', '2020-07-10 22:22:54'),
(96, '', 'GR', 'GREECE', 5, '2020-07-10 22:23:08', '2020-07-10 22:23:08'),
(97, '', 'GL', 'GREENLAND', 5, '2020-07-10 22:23:25', '2020-07-10 22:23:25'),
(98, '', 'GD', 'GRENADA', 5, '2020-07-10 22:23:37', '2020-07-10 22:23:37'),
(99, '', 'GP', 'GUADELOUPE', 5, '2020-07-10 22:23:48', '2020-07-10 22:23:48'),
(100, '', 'GU', 'GUAM', 5, '2020-07-10 22:23:59', '2020-07-10 22:23:59'),
(101, '', 'GT', 'GUATEMALA', 5, '2020-07-10 22:24:12', '2020-07-10 22:24:12'),
(102, '', 'GG', 'GUERNSEY', 5, '2020-07-10 22:24:28', '2020-07-10 22:24:28'),
(103, '', 'GN', 'GUINEA', 5, '2020-07-10 22:24:45', '2020-07-10 22:24:45'),
(104, '', 'GW', 'GUINEA-BISSAU', 5, '2020-07-10 22:25:00', '2020-07-10 22:25:00'),
(105, '', 'GY', 'GUYANA', 5, '2020-07-10 22:25:16', '2020-07-10 22:25:16'),
(106, '', 'HT', 'HAITI', 5, '2020-07-10 22:25:32', '2020-07-10 22:25:32'),
(107, '', 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 5, '2020-07-10 22:25:53', '2020-07-10 22:25:53'),
(108, '', 'VA', 'HOLY SEE (VATICAN CITY STATE)', 5, '2020-07-10 22:26:14', '2020-07-10 22:26:14'),
(109, '', 'HN', 'HONDURAS', 5, '2020-07-10 22:26:35', '2020-07-10 22:26:35'),
(110, 'HKG', 'HK', 'HONG KONG', 5, '2020-07-10 22:27:21', '2020-07-10 22:27:21'),
(111, '', 'HU', 'HUNGARY', 5, '2020-07-10 22:27:36', '2020-07-10 22:27:36'),
(112, '', 'IS', 'ICELAND', 5, '2020-07-10 22:28:01', '2020-07-10 22:28:01'),
(113, 'IND', 'IN', 'INDIA', 5, '2020-07-10 22:28:19', '2020-07-10 22:28:19'),
(114, '', 'ID', 'INDONESIA', 5, '2020-07-10 22:28:31', '2020-07-10 22:28:31'),
(115, '', 'XZ', 'INSTALLATIONS IN INTERNATIONAL WATERS', 5, '2020-07-10 22:29:04', '2020-07-10 22:29:04'),
(116, '', 'IR', 'IRAN ISLAMIC REPUBLIC OF', 5, '2020-07-10 22:29:25', '2020-07-10 22:29:45'),
(117, '', 'IQ', 'IRAQ', 5, '2020-07-10 22:30:01', '2020-07-10 22:30:01'),
(118, '', 'IE', 'IRELAND', 5, '2020-07-10 22:30:11', '2020-07-10 22:30:11'),
(119, '', 'IM', 'ISLE OF MAN', 5, '2020-07-10 22:30:22', '2020-07-10 22:30:22'),
(120, '', 'IL', 'ISRAEL', 5, '2020-07-10 22:31:00', '2020-07-10 22:31:00'),
(121, '', 'IT', 'ITALY', 5, '2020-07-10 22:31:15', '2020-07-10 22:31:15'),
(122, '', 'JM', 'JAMAICA', 5, '2020-07-10 22:31:25', '2020-07-10 22:31:25'),
(123, '', 'JP', 'JAPAN', 5, '2020-07-10 22:33:13', '2020-07-10 22:33:13'),
(124, '', 'JE', 'JERSEY', 5, '2020-07-10 22:33:22', '2020-07-10 22:33:22'),
(125, '', 'JO', 'JORDAN', 5, '2020-07-10 22:33:31', '2020-07-10 22:33:31'),
(126, '', 'KZ', 'KAZAKHSTAN', 5, '2020-07-10 22:33:45', '2020-07-10 22:33:45'),
(127, '', 'KE', 'KENYA', 5, '2020-07-10 22:34:03', '2020-07-10 22:34:03'),
(128, '', 'KI', 'KIRIBATI', 5, '2020-07-10 22:34:12', '2020-07-10 22:34:12'),
(129, '', 'KP', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 5, '2020-07-10 22:34:28', '2020-07-10 22:34:28'),
(130, '', 'KR', 'KOREA, REPUBLIC OF', 5, '2020-07-10 22:34:45', '2020-07-10 22:34:45'),
(131, '', 'KW', 'KUWAIT', 5, '2020-07-10 22:34:58', '2020-07-10 22:34:58'),
(132, '', 'KG', 'KYRGYZSTAN', 5, '2020-07-10 22:35:20', '2020-07-10 22:35:20'),
(133, '', 'LA', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 5, '2020-07-10 22:36:20', '2020-07-10 22:36:39'),
(134, '', 'LV', 'LATVIA', 5, '2020-07-10 22:37:03', '2020-07-10 22:37:03'),
(135, '', 'LB', 'LEBANON', 5, '2020-07-10 22:37:21', '2020-07-10 22:37:21'),
(136, '', 'LS', 'LESOTHO', 5, '2020-07-10 22:37:51', '2020-07-10 22:37:51'),
(137, '', 'LR', 'LIBERIA', 5, '2020-07-10 23:21:49', '2020-07-10 23:21:49'),
(138, '', 'LY', 'LIBYA', 5, '2020-07-10 23:21:59', '2020-07-10 23:21:59'),
(139, '', 'LI', 'LIECHTENSTEIN', 5, '2020-07-10 23:22:15', '2020-07-10 23:22:15'),
(140, '', 'LT', 'LITHUANIA', 5, '2020-07-10 23:22:32', '2020-07-10 23:22:32'),
(141, '', 'LU', 'LUXEMBOURG', 5, '2020-07-10 23:22:57', '2020-07-10 23:22:57'),
(142, '', 'MO', 'MACAO', 5, '2020-07-10 23:23:07', '2020-07-10 23:23:07'),
(143, '', 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 5, '2020-07-10 23:23:26', '2020-07-10 23:23:26'),
(144, '', 'MG', 'MADAGASCAR', 5, '2020-07-10 23:23:42', '2020-07-10 23:23:42'),
(145, '', 'MW', 'MALAWI', 5, '2020-07-10 23:23:57', '2020-07-10 23:23:57'),
(146, '', 'MY', 'MALAYSIA', 5, '2020-07-10 23:24:10', '2020-07-10 23:24:10'),
(147, '', 'MV', 'MALDIVES', 5, '2020-07-10 23:24:35', '2020-07-10 23:24:35'),
(148, '', 'ML', 'MALI', 5, '2020-07-10 23:24:44', '2020-07-10 23:24:44'),
(149, '', 'MT', 'MALTA', 5, '2020-07-10 23:24:55', '2020-07-10 23:24:55'),
(150, '', 'MH', 'MARSHALL ISLANDS', 5, '2020-07-10 23:26:04', '2020-07-10 23:26:04'),
(151, '', 'MQ', 'MARTINIQUE', 5, '2020-07-10 23:26:16', '2020-07-10 23:26:16'),
(152, '', 'MR', 'MAURITANIA', 5, '2020-07-10 23:32:34', '2020-07-10 23:32:34'),
(153, '', 'MU', 'MAURITIUS', 5, '2020-07-10 23:32:48', '2020-07-10 23:32:48'),
(154, '', 'YT', 'MAYOTTE', 5, '2020-07-10 23:32:58', '2020-07-10 23:32:58'),
(155, '', 'MX', 'MEXICO', 5, '2020-07-10 23:33:08', '2020-07-10 23:33:08'),
(156, '', 'FM', 'MICRONESIA, FEDERATED STATES OF', 5, '2020-07-10 23:33:20', '2020-07-10 23:33:20'),
(157, '', 'MD', 'MOLDOVA, REPUBLIC OF', 5, '2020-07-10 23:33:31', '2020-07-10 23:33:31'),
(158, '', 'MC', 'MONACO', 5, '2020-07-10 23:33:50', '2020-07-10 23:33:50'),
(159, '', 'MN', 'MONGOLIA', 5, '2020-07-10 23:34:11', '2020-07-10 23:34:11'),
(160, '', 'ME', 'MONTENEGRO', 5, '2020-07-10 23:34:29', '2020-07-10 23:34:29'),
(161, '', 'MS', 'MONTSERRAT', 5, '2020-07-10 23:34:38', '2020-07-10 23:34:38'),
(162, '', 'MA', 'MOROCCO', 5, '2020-07-10 23:34:50', '2020-07-10 23:34:50'),
(163, '', 'MZ', 'MOZAMBIQUE', 5, '2020-07-10 23:35:01', '2020-07-10 23:35:01'),
(164, '', 'MM', 'MYANMAR', 5, '2020-07-10 23:35:12', '2020-07-10 23:35:12'),
(165, '', 'NA', 'NAMIBIA', 5, '2020-07-10 23:35:24', '2020-07-10 23:35:24'),
(166, '', 'NR', 'NAURU', 5, '2020-07-10 23:35:35', '2020-07-10 23:35:35'),
(167, '', 'NP', 'NEPAL', 5, '2020-07-10 23:35:55', '2020-07-10 23:35:55'),
(168, '', 'NL', 'NETHERLANDS', 5, '2020-07-10 23:39:05', '2020-07-10 23:39:05'),
(169, '', 'NC', 'NEW CALEDONIA', 5, '2020-07-10 23:46:39', '2020-07-10 23:46:39'),
(170, 'NZ', 'NZ', 'NEW ZEALAND', 5, '2020-07-10 23:46:59', '2020-07-10 23:46:59'),
(171, '', 'NI', 'NICARAGUA', 5, '2020-07-10 23:47:14', '2020-07-10 23:47:14'),
(172, '', 'NE', 'NIGER', 5, '2020-07-10 23:47:25', '2020-07-10 23:47:25'),
(173, '', 'NG', 'NIGERIA', 5, '2020-07-10 23:47:35', '2020-07-10 23:47:35'),
(174, '', 'NU', 'NIUE', 5, '2020-07-10 23:47:45', '2020-07-10 23:47:45'),
(175, '', 'NF', 'NORFOLK ISLAND', 5, '2020-07-10 23:50:21', '2020-07-10 23:50:21'),
(176, '', 'MP', 'NORTHERN MARIANA ISLANDS', 5, '2020-07-10 23:50:45', '2020-07-10 23:50:45'),
(177, '', 'NO', 'NORWAY', 5, '2020-07-10 23:51:04', '2020-07-10 23:51:04'),
(178, '', 'OM', 'OMAN', 5, '2020-07-10 23:51:18', '2020-07-10 23:51:18'),
(179, '', 'PW', 'PALAU', 5, '2020-07-10 23:51:56', '2020-07-10 23:51:56'),
(180, '', 'PS', 'PALESTINE, STATE OF', 5, '2020-07-10 23:52:09', '2020-07-10 23:52:09'),
(181, '', 'PA', 'PANAMA', 5, '2020-07-10 23:52:25', '2020-07-10 23:52:25'),
(182, '', 'PG', 'PAPUA NEW GUINEA', 5, '2020-07-10 23:53:02', '2020-07-10 23:53:02'),
(183, '', 'PY', 'PARAGUAY', 5, '2020-07-10 23:53:12', '2020-07-10 23:53:12'),
(184, '', 'PE', 'PERU', 5, '2020-07-10 23:53:25', '2020-07-10 23:53:25'),
(185, '', 'PH', 'PHILIPPINES', 5, '2020-07-10 23:53:44', '2020-07-10 23:53:44'),
(186, '', 'PN', 'PITCAIRN', 5, '2020-07-10 23:54:08', '2020-07-10 23:54:08'),
(187, '', 'PL', 'POLAND', 5, '2020-07-10 23:54:18', '2020-07-10 23:54:18'),
(188, '', 'PT', 'PORTUGAL', 5, '2020-07-10 23:54:28', '2020-07-10 23:54:28'),
(189, '', 'PR', 'PUERTO RICO', 5, '2020-07-10 23:54:40', '2020-07-10 23:54:40'),
(190, '', 'QA', 'QATAR', 5, '2020-07-10 23:55:29', '2020-07-10 23:55:29'),
(191, '', 'RE', 'REUNION', 5, '2020-07-10 23:55:38', '2020-07-10 23:55:38'),
(192, '', 'RO', 'ROMANIA', 5, '2020-07-10 23:55:51', '2020-07-10 23:55:51'),
(193, '', 'RU', 'RUSSIAN FEDERATION', 5, '2020-07-10 23:56:04', '2020-07-10 23:56:04'),
(194, '', 'RW', 'RWANDA', 5, '2020-07-10 23:56:30', '2020-07-10 23:56:30'),
(195, '', 'BL', 'SAINT BARTHéLEMY', 5, '2020-07-10 23:56:39', '2020-07-10 23:56:39'),
(196, '', 'SH', 'SAINT HELENA, ASCENSION AND TRISTAN DA CUNHA', 5, '2020-07-10 23:57:47', '2020-07-10 23:57:47'),
(197, '', 'KN', 'SAINT KITTS AND NEVIS', 5, '2020-07-10 23:58:11', '2020-07-10 23:58:11'),
(198, '', 'LC', 'SAINT LUCIA', 5, '2020-07-10 23:58:30', '2020-07-10 23:58:30'),
(199, '', 'MF', 'SAINT MARTIN (FRENCH PART)', 5, '2020-07-10 23:58:48', '2020-07-10 23:58:48'),
(200, '', 'PM', 'SAINT PIERRE AND MIQUELON', 5, '2020-07-10 23:59:01', '2020-07-10 23:59:01'),
(201, '', 'VC', 'SAINT VINCENT AND THE GRENADINES', 5, '2020-07-10 23:59:22', '2020-07-10 23:59:22'),
(202, '', 'WS', 'SAMOA', 5, '2020-07-10 23:59:45', '2020-07-10 23:59:45'),
(203, '', 'SM', 'SAN MARINO', 5, '2020-07-11 00:00:00', '2020-07-11 00:00:00'),
(204, '', 'ST', 'SAO TOME AND PRINCIPE', 5, '2020-07-11 00:00:22', '2020-07-11 00:00:22'),
(205, 'KSA', 'SA', 'SAUDI ARABIA', 5, '2020-07-13 00:46:46', '2020-07-13 00:46:46'),
(206, '', 'SN', 'SENEGAL', 5, '2020-07-13 00:46:57', '2020-07-13 00:46:57'),
(207, '', 'RS', 'SERBIA', 5, '2020-07-13 00:47:15', '2020-07-13 00:47:15'),
(208, '', 'SC', 'SEYCHELLES', 5, '2020-07-13 00:47:34', '2020-07-13 00:47:34'),
(209, '', 'SL', 'SIERRA LEONE', 5, '2020-07-13 00:47:51', '2020-07-13 00:47:51'),
(210, '', 'SG', 'SINGAPORE', 5, '2020-07-13 00:48:07', '2020-07-13 00:48:07'),
(211, '', 'SX', 'SINT MAARTEN (DUTCH PART)', 5, '2020-07-13 00:49:11', '2020-07-13 00:49:11'),
(212, '', 'SK', 'SLOVAKIA', 5, '2020-07-13 00:49:31', '2020-07-13 00:49:31'),
(213, '', 'SI', 'SLOVENIA', 5, '2020-07-13 00:49:42', '2020-07-13 00:49:42'),
(214, '', 'SB', 'SOLOMON ISLANDS', 5, '2020-07-13 00:50:13', '2020-07-13 00:50:13'),
(215, '', 'SO', 'SOMALIA', 5, '2020-07-13 00:50:26', '2020-07-13 00:50:26'),
(216, 'RSA', 'ZA', 'SOUTH AFRICA', 5, '2020-07-13 00:50:43', '2020-07-13 00:50:43'),
(217, '', 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 5, '2020-07-13 00:51:08', '2020-07-13 00:51:08'),
(218, '', 'SS', 'SOUTH SUDAN', 5, '2020-07-13 00:51:33', '2020-07-13 00:51:33'),
(219, '', 'ES', 'SPAIN', 5, '2020-07-13 00:52:34', '2020-07-13 00:52:34'),
(220, 'SL', 'LK', 'SRI LANKA', 5, '2020-07-13 00:52:58', '2020-07-13 00:52:58'),
(221, '', 'SD', 'SUDAN', 5, '2020-07-13 00:53:13', '2020-07-13 00:53:13'),
(222, '', 'SR', 'SURINAME', 5, '2020-07-13 00:53:24', '2020-07-13 00:53:24'),
(223, '', 'SJ', 'SVALBARD AND JAN MAYEN', 5, '2020-07-13 00:53:40', '2020-07-13 00:53:40'),
(224, '', 'SE', 'SWEDEN', 5, '2020-07-13 00:53:55', '2020-07-13 00:53:55'),
(225, '', 'CH', 'SWITZERLAND', 5, '2020-07-13 00:54:19', '2020-07-13 00:54:19'),
(226, '', 'SY', 'SYRIAN ARAB REPUBLIC', 5, '2020-07-13 00:55:04', '2020-07-13 00:55:04'),
(227, '', 'TW', 'TAIWAN, PROVINCE OF CHINA', 5, '2020-07-13 00:55:16', '2020-07-13 00:55:16'),
(228, '', 'TJ', 'TAJIKISTAN', 5, '2020-07-13 00:55:25', '2020-07-13 00:55:25'),
(229, '', 'TZ', 'TANZANIA, UNITED REPUBLIC OF', 5, '2020-07-13 00:55:43', '2020-07-13 00:55:43'),
(230, '', 'TH', 'THAILAND', 5, '2020-07-13 00:56:02', '2020-07-13 00:56:02'),
(231, '', 'TL', 'TIMOR-LESTE', 5, '2020-07-13 00:56:16', '2020-07-13 00:56:16'),
(232, '', 'TG', 'TOGO', 5, '2020-07-13 00:56:34', '2020-07-13 00:56:34'),
(233, '', 'TK', 'TOKELAU', 5, '2020-07-13 00:56:58', '2020-07-13 00:56:58'),
(234, '', 'TO', 'TONGA', 5, '2020-07-13 00:57:17', '2020-07-13 00:57:17'),
(235, '', 'TT', 'TRINIDAD AND TOBAGO', 5, '2020-07-13 00:57:31', '2020-07-13 00:57:31'),
(236, '', 'TN', 'TUNISIA', 5, '2020-07-13 00:57:44', '2020-07-13 00:57:44'),
(237, '', 'TR', 'TURKEY', 5, '2020-07-13 00:57:54', '2020-07-13 00:57:54'),
(238, '', 'TM', 'TURKMENISTAN', 5, '2020-07-13 00:58:03', '2020-07-13 00:58:03'),
(239, '', 'TC', 'TURKS AND CAICOS ISLANDS', 5, '2020-07-13 00:58:26', '2020-07-13 00:58:26'),
(240, '', 'TV', 'TUVALU', 5, '2020-07-13 00:58:35', '2020-07-13 00:58:35'),
(241, '', 'UG', 'UGANDA', 5, '2020-07-13 00:58:45', '2020-07-13 00:58:45'),
(242, 'UAE', 'AE', 'UNITED ARAB EMIRATES', 5, '2020-07-13 00:59:13', '2020-07-13 00:59:13'),
(243, 'UK', 'GB', 'UNITED KINGDOM', 5, '2020-07-13 00:59:27', '2020-07-13 00:59:27'),
(244, 'USA', 'US', 'UNITED STATES', 5, '2020-07-13 01:00:05', '2020-07-13 01:00:05'),
(245, '', 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 5, '2020-07-13 01:00:22', '2020-07-13 01:00:22'),
(246, '', 'UY', 'URUGUAY', 5, '2020-07-13 01:00:36', '2020-07-13 01:00:36'),
(247, '', 'UZ', 'UZBEKISTAN', 5, '2020-07-13 01:00:59', '2020-07-13 01:00:59'),
(248, '', 'VU', 'VANUATU', 5, '2020-07-13 01:01:10', '2020-07-13 01:01:10'),
(249, '', 'VE', 'VENEZUELA', 5, '2020-07-13 01:01:18', '2020-07-13 01:01:18'),
(250, '', 'VN', 'VIET NAM', 5, '2020-07-13 01:01:37', '2020-07-13 01:01:37'),
(251, '', 'VG', 'VIRGIN ISLANDS, BRITISH', 5, '2020-07-13 01:02:01', '2020-07-13 01:02:01'),
(252, '', 'VI', 'VIRGIN ISLANDS, U.S.', 5, '2020-07-13 01:02:14', '2020-07-13 01:02:14'),
(253, '', 'WF', 'WALLIS AND FUTUNA', 5, '2020-07-13 01:02:38', '2020-07-13 01:02:38'),
(254, '', 'EH', 'WESTERN SAHARA', 5, '2020-07-13 01:03:13', '2020-07-13 01:03:13'),
(255, '', 'YE', 'YEMEN', 5, '2020-07-13 01:03:22', '2020-07-13 01:03:22'),
(256, 'ZIM', 'ZW', 'ZIMBABWE', 5, '2020-07-13 01:03:42', '2020-07-13 01:03:42'),
(257, '', 'ZM', 'ZAMBIA', 5, '2020-07-13 01:03:53', '2020-07-13 01:03:53'),
(258, NULL, 'UA', 'UKRAINE', 1, '2020-07-28 00:33:10', '2020-07-28 00:33:10'),
(259, NULL, 'YU', 'YUGOSLAVIA', 1, '2020-07-28 00:36:02', '2020-07-28 00:36:02');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_foreign_agent`
--

CREATE TABLE `tbl_foreign_agent` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `short_name` varchar(15) DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `fax` varchar(25) DEFAULT NULL,
  `mobile` varchar(25) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `website` varchar(50) DEFAULT NULL,
  `country_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `address` varchar(250) DEFAULT NULL,
  `cont_person` varchar(50) DEFAULT NULL,
  `currency` varchar(15) NOT NULL,
  `ntn_no` varchar(50) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `terminal_id` int(11) DEFAULT NULL,
  `bank_details` varchar(250) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_foreign_agent`
--

INSERT INTO `tbl_foreign_agent` (`id`, `name`, `short_name`, `phone`, `fax`, `mobile`, `email`, `website`, `country_id`, `city_id`, `address`, `cont_person`, `currency`, `ntn_no`, `type`, `terminal_id`, `bank_details`, `created_by`, `created_at`, `updated_at`) VALUES
(3, 'abc agent', 'aa', '222-22333333', '2222-2222222', '2222-2222222', NULL, NULL, 10, 4, NULL, NULL, 'USD', NULL, 2, 2, NULL, 1, '2020-07-10 06:59:38', '2020-07-07 01:36:16'),
(6, 'FREIGHT LINK EXPRESS PTE LTD', NULL, NULL, NULL, NULL, NULL, NULL, 210, 217, 'NO.51 PENJURU ROAD 3RD LEVEL SINGAPORE 609143', NULL, 'USD', NULL, 2, NULL, NULL, 6, '2020-08-21 23:13:10', '2020-08-21 23:13:10'),
(7, 'AMASS FREIGHT INTERNATIONAL CO., LTD SHANGHAI', NULL, NULL, NULL, NULL, NULL, NULL, 55, 321, NULL, NULL, 'USD', NULL, 2, NULL, NULL, 6, '2020-09-21 01:00:30', '2020-09-21 01:00:30'),
(8, 'SHANGHAI AMASS INTERNATIONAL FREIGHT CO., LTD QINGDAO BRANCH', NULL, NULL, NULL, NULL, NULL, NULL, 55, 65, NULL, NULL, 'USD', NULL, 2, NULL, NULL, 10, '2020-10-06 18:57:42', '2020-10-06 18:57:42'),
(9, 'AMASS FREIGHT INTERNATIONAL (SHENZHEN) CO LTD', NULL, NULL, NULL, NULL, NULL, NULL, 55, 67, NULL, NULL, 'USD', NULL, 2, NULL, NULL, 5, '2020-10-12 00:19:53', '2020-10-12 00:19:53'),
(10, 'KING FREIGHT EXPRESS CORP', NULL, NULL, NULL, NULL, NULL, NULL, 55, 321, NULL, NULL, 'USD', NULL, 2, NULL, NULL, 5, '2020-10-12 21:30:37', '2020-10-12 21:30:37'),
(11, 'KFIC LOGISTICS (HONG KONG) LTD', NULL, NULL, NULL, NULL, NULL, NULL, 110, 117, NULL, NULL, 'USD', NULL, 2, NULL, NULL, 6, '2020-10-30 19:30:41', '2020-10-30 19:30:41'),
(12, 'KING FREIGHT EXPRESS CORP (GUANGZHOU)', NULL, NULL, NULL, NULL, NULL, NULL, 55, 59, NULL, NULL, 'USD', NULL, 2, NULL, NULL, 5, '2020-11-10 02:22:43', '2020-11-10 02:22:43'),
(13, 'RELIANCE FREIGHT SYSTEMS LLC', 'RFS', NULL, NULL, NULL, NULL, NULL, 242, 260, 'DUBAI', NULL, 'USD', NULL, 2, NULL, NULL, 6, '2020-11-11 01:25:09', '2020-11-11 01:25:09');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_importer_cust_type`
--

CREATE TABLE `tbl_importer_cust_type` (
  `id` int(11) NOT NULL,
  `importer_id` int(11) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_importer_cust_type`
--

INSERT INTO `tbl_importer_cust_type` (`id`, `importer_id`, `type`) VALUES
(37, 11, 1),
(38, 11, 3),
(39, 11, 4),
(40, 19, 1),
(41, 29, 1),
(42, 30, 3),
(43, 31, 1),
(44, 37, 1),
(45, 38, 1),
(46, 38, 2),
(47, 38, 3),
(48, 39, 3),
(49, 40, 1),
(50, 40, 2),
(51, 41, 1),
(52, 41, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_importer_facility`
--

CREATE TABLE `tbl_importer_facility` (
  `id` int(11) NOT NULL,
  `importer_id` int(11) NOT NULL,
  `facility` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_importer_facility`
--

INSERT INTO `tbl_importer_facility` (`id`, `importer_id`, `facility`) VALUES
(20, 11, 1),
(21, 11, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_importer_info`
--

CREATE TABLE `tbl_importer_info` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(250) DEFAULT NULL,
  `remarks` varchar(300) DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `fax` varchar(25) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `website` varchar(50) DEFAULT NULL,
  `city_id` int(11) NOT NULL,
  `cont_person` varchar(50) DEFAULT NULL,
  `cont_position` varchar(50) DEFAULT NULL,
  `fin_person` varchar(50) DEFAULT NULL,
  `fin_position` varchar(50) DEFAULT NULL,
  `import_license` varchar(50) DEFAULT NULL,
  `license_validity` date DEFAULT NULL,
  `ntn_no` varchar(50) DEFAULT NULL,
  `clearing_agent` varchar(50) DEFAULT NULL,
  `ccie_regist` varchar(50) DEFAULT NULL,
  `sales_man` varchar(50) DEFAULT NULL,
  `credit_amount` double DEFAULT NULL,
  `credit_days` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_importer_info`
--

INSERT INTO `tbl_importer_info` (`id`, `name`, `address`, `remarks`, `phone`, `fax`, `email`, `website`, `city_id`, `cont_person`, `cont_position`, `fin_person`, `fin_position`, `import_license`, `license_validity`, `ntn_no`, `clearing_agent`, `ccie_regist`, `sales_man`, `credit_amount`, `credit_days`, `created_by`, `created_at`, `updated_at`) VALUES
(11, 'abc importer', 'test address', 'test remarks', '333-33333333', '3333-3333333', 'zia@gmail.com', NULL, 4, 'xyz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2300, 15, 1, '2020-07-09 20:48:45', '2020-07-10 00:39:22'),
(17, 'JAFFSON ENTERPRISES PVT LTD', 'MUHAMMAD WAHEED SALEEM TOWN PASRUR ROAD 51310 SIALKOT', NULL, NULL, NULL, NULL, NULL, 86, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '2020-09-02 02:36:34', '2020-09-02 02:36:34'),
(18, 'INFINITY SHIPPIN', NULL, NULL, NULL, NULL, NULL, NULL, 319, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-09-21 02:13:20', '2020-09-21 02:13:20'),
(19, 'MEDICON PHARMACEUTICAL INDUSTRIES (PVT) LTD', NULL, NULL, NULL, NULL, NULL, NULL, 319, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-09-21 02:14:51', '2020-09-21 02:14:51'),
(20, 'HIGHNOON LABORATORIES LTD,', '17.5 KILOMETER, MULTAN ROAD,\r\nLAHORE-53700, PAKISTAN', NULL, NULL, NULL, NULL, NULL, 193, NULL, NULL, NULL, NULL, NULL, NULL, '141949-7', NULL, NULL, NULL, NULL, NULL, 10, '2020-10-06 20:48:07', '2020-10-06 20:48:07'),
(21, 'ABBOTT LABORATORIES (PAKISTAN) LIMITED', 'RADIO PAKISTAN TRANSMISSION CENTRE, HYDERABAD ROAD, LANDHI, KARACHI, PAKISTAN', NULL, NULL, NULL, NULL, NULL, 319, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, '2020-10-07 01:56:43', '2020-10-07 01:56:43'),
(22, 'QINGDAO BRIGHT MOON SEAWEED GROUP CO., LTD', '777, MINGYUE ROAD, HUANGDAO, QINGDAO, CHINA', NULL, NULL, NULL, NULL, NULL, 65, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, '2020-10-07 01:59:20', '2020-10-07 01:59:20'),
(23, 'MECHANICAL ENGINEERING DEP ARTMENT', 'UNIVERSITY OF ENGINEERING AND TECHNOLOGY (UET), LAHORE-PAKISTAN', NULL, NULL, NULL, NULL, NULL, 192, NULL, NULL, NULL, NULL, NULL, NULL, '9020619-3', NULL, NULL, NULL, NULL, NULL, 10, '2020-10-07 03:05:16', '2020-10-07 03:05:16'),
(24, 'CROWN LIGHTING (PVT) LTD', '483 E-1 TARIQ ROAD, PESHAWAR CANTT 25000 PAKSITAN', NULL, NULL, NULL, NULL, NULL, 323, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, '2020-10-12 00:43:07', '2020-10-12 00:43:07'),
(25, 'CLARIANT CHEMICAL PAKISTAN (PVT) LTD', '1-A/1, SECTOR 20, KORANGI INDUSTRIAL AREA, KARACHI-74900, PAKISTAN', NULL, NULL, NULL, NULL, NULL, 319, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, '2020-10-12 02:57:25', '2020-10-12 02:57:25'),
(26, 'CONSIGN GLOBAL', NULL, NULL, NULL, NULL, NULL, NULL, 192, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, '2020-10-19 21:16:31', '2020-10-19 21:16:31'),
(27, 'CONSIGN GLOBAL', NULL, NULL, NULL, NULL, NULL, NULL, 192, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, '2020-10-19 21:17:30', '2020-10-19 21:17:30'),
(28, 'CONSIGN GLOBAL', NULL, NULL, NULL, NULL, NULL, NULL, 192, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, '2020-10-19 21:19:54', '2020-10-19 21:19:54'),
(29, 'TANSU INTERNATIONAL TRADING PVT LTD', 'OFFICE NO.3-4, 1ST FLOOR MIAN SULEMAN MARKET OPP ST. 2, F- 11/1, ISLAMABAD PAKISTAN', NULL, NULL, NULL, NULL, NULL, 325, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-10-20 01:04:15', '2020-10-20 01:04:15'),
(30, '3A`S LOGISTICS PAKISTAN', NULL, NULL, NULL, NULL, NULL, NULL, 319, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-10-30 19:32:33', '2020-10-30 19:32:33'),
(31, 'HORIZON SOURCING (PVT) LIMITED', NULL, NULL, NULL, NULL, NULL, NULL, 319, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-10-30 19:33:01', '2020-10-30 19:33:01'),
(32, 'DHL GLOBAL FORWARDING', NULL, NULL, NULL, NULL, NULL, NULL, 319, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '2020-11-06 22:57:11', '2020-11-06 22:57:11'),
(33, 'ORBIT GROUP', 'DEFENCE ROAD SIALKOT', NULL, NULL, NULL, NULL, NULL, 320, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '2020-11-06 22:58:02', '2020-11-06 22:58:02'),
(34, 'WWG CONSOLIDATORS', NULL, NULL, NULL, NULL, NULL, NULL, 319, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '2020-11-10 02:26:29', '2020-11-10 02:26:29'),
(35, 'WWG CONSOLIDATORS', NULL, NULL, NULL, NULL, NULL, NULL, 319, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '2020-11-10 02:26:29', '2020-11-10 02:26:29'),
(36, 'TEXTILE AUXILURIES COMPANY', NULL, NULL, NULL, NULL, NULL, NULL, 319, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '2020-11-10 02:27:43', '2020-11-10 02:27:43'),
(37, 'AMWAR TRADING CO.', 'KARACHI PAKISTAN', NULL, NULL, NULL, NULL, NULL, 319, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-11-11 01:40:39', '2020-11-11 01:40:39'),
(38, 'PAKISTAN DISPERSION HOUSE', 'SUNDAR, RAIWIND ROAD, \r\nPLOT #: 88-B, SUNDAR\r\nINDUSTRIAL ESTATE', NULL, NULL, NULL, NULL, NULL, 192, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-11-11 02:05:04', '2020-11-11 02:05:04'),
(39, 'A&Z LOGISTICS PAKISTAN', 'SUIT # 413 PORTWAY TRADE CENTRE, MAIN SHAHRAH-E-FAISAL SMCHS, KARACHI PAKISTAN.', NULL, NULL, NULL, 'peration@anzlogistic.com', NULL, 319, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-11-11 02:35:16', '2020-11-11 02:35:16'),
(40, 'SH.WILAYAT AHMED & SONS.', 'SR-20/1,CAMPBELL\r\nSTREET,P.O.BOX\r\n74200 ,KARACHI,PAKISTAN', NULL, NULL, NULL, NULL, NULL, 319, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-11-11 02:37:02', '2020-11-11 02:37:02'),
(41, 'UNIVERSAL ENGINEERING ENTERPRISES', '5 HASAN MANSION, 1ST FLOOR, ALTAF HUSSAIN ROAD, DENSO HALL, NEW CHALLI, KARACHI, PAKISTAN', NULL, NULL, NULL, NULL, NULL, 319, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-11-11 03:01:42', '2020-11-11 03:01:42'),
(42, 'RIYAN SHIPPING AGENCIES', NULL, NULL, NULL, NULL, NULL, NULL, 319, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '2020-11-13 21:30:30', '2020-11-13 21:30:30'),
(43, 'SYNAMS PHARMACEUTICAL PVT LTD', NULL, NULL, NULL, NULL, NULL, NULL, 319, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '2020-11-13 21:31:06', '2020-11-13 21:31:06'),
(44, 'PAUL BROOKS HOMOEO LABS', '2ND FLOOR, AL-KHALEEJ TOWERS, SHAHEED E MILLAT ROAD, KARACHI PAKISTAN', NULL, NULL, NULL, NULL, NULL, 319, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, '2020-11-16 02:20:31', '2020-11-16 02:20:31'),
(45, 'AMBER CAPACITORS LIMITED', '6-K,COMMERCIAL MODEL TOWN, P.O.BOX 468 LAHORE 54000, PAKISTAN', NULL, NULL, NULL, NULL, NULL, 192, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, '2020-11-16 02:43:16', '2020-11-16 02:43:16');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_packs_unit`
--

CREATE TABLE `tbl_packs_unit` (
  `id` int(11) NOT NULL,
  `unit` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_packs_unit`
--

INSERT INTO `tbl_packs_unit` (`id`, `unit`) VALUES
(1, 'Packages'),
(2, 'Carton'),
(3, 'Pallet'),
(4, 'Roll'),
(5, 'Box'),
(6, 'Pieces'),
(7, 'Drum');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_port_city`
--

CREATE TABLE `tbl_port_city` (
  `id` int(11) NOT NULL,
  `paccs_code` varchar(25) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `principle_code` varchar(25) DEFAULT NULL,
  `country_id` int(11) NOT NULL,
  `type` varchar(25) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_port_city`
--

INSERT INTO `tbl_port_city` (`id`, `paccs_code`, `name`, `principle_code`, `country_id`, `type`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'AFHEA', 'HERAT', '', 11, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(2, 'AFKBL', 'KABUL', '', 11, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(3, 'AFKDH', 'KANDAHAR', '', 11, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(4, 'AFUND', 'KUNDUZ', '', 11, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(5, 'AFMZR', 'MAZAR-I-SHARIF', '', 11, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(6, 'DZALG', 'ALGER', '', 14, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(7, 'ASPPG', 'PAGO PAGO', '', 15, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(8, 'AOLAD', 'LUANDA', '', 17, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(9, 'AGBBQ', 'BARBUDA', '', 20, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(10, 'ARBUE', 'BUENOS AIRES', '', 21, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(11, 'ARAEP', 'BUENOS AIRES-AEROPARQUE APT', '', 21, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(12, 'AUADL', 'ADELAIDE, SA', '', 24, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(13, 'AUBNE', 'BRISBANE, QL', '', 24, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(14, 'AUCBR', 'CANBERRA', '', 24, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(15, 'AUDAA', 'DARRA, QL', '', 24, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(16, 'AUDRW', 'DARWIN, NT', '', 24, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(17, 'AUFRE', 'FREMANTLE, WA', '', 24, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(18, 'AUMEL', 'MELBOURNE/INT. APT, VI', '', 24, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(19, 'AUPER', 'PERTH, WA', '', 24, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(20, 'AUSYD', 'SYDNEY, NS', '', 24, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(21, 'ATVEN', 'VIENNA', '', 25, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(22, 'AZBAK', 'BAKU', '', 26, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(23, 'BHBAH', 'BAHRAIN', '', 28, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(24, 'BHMAN', 'MANAMA', '', 28, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(25, 'BDCGP', 'CHITTAGONG', '', 29, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(26, 'BDDAC', 'DHAKA', '', 29, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(27, 'BBBGI', 'BRIDGETOWN', '', 30, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(28, 'BYBQT', 'BREST', '', 31, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(29, 'BEANR', 'ANTWERPEN', '', 32, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(30, 'BEBGS', 'BRUGES', '', 32, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(31, 'BEBRU', 'BRUSSEL / BRUXELLES', '', 32, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(32, 'BZBZE', 'BELIZE CITY', '', 33, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(33, 'BASJJ', 'SARAJEVO', '', 39, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(34, 'BRQCV', 'GUARULHOS, SP', '', 41, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(35, 'BRITJ', 'ITAJAI, SC', '', 41, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(36, 'BRRIO', 'RIO DE JANEIRO, RJ', '', 41, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(37, 'BRRIG', 'RIO GRANDE, RS', '', 41, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(38, 'BRSSZ', 'SANTOS, SP', '', 41, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(39, 'BRSAO', 'SAO PAULO, SP', '', 41, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(40, 'BNMUA', 'MUARA', '', 43, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(41, 'BGSOF', 'SOFIA', '', 44, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(42, 'BGVAR', 'VARNA', '', 44, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(43, 'KHKOS', 'KAMPONG SAOM (SIHANOUKVILLE)', '', 47, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(44, 'KHPNH', 'PHNOMPENH', '', 47, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(45, 'CMDLA', 'DOUALA', '', 48, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(46, 'CAHAL', 'HALIFAX, NS', '', 49, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(47, 'CAMTR', 'MONTREAL, QU', '', 49, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(48, 'CAQUE', 'QUEBEC, QU', '', 49, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(49, 'CAYYZ', 'TORONTO APT, OT', '', 49, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(50, 'CATOR', 'TORONTO, OT', '', 49, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(51, 'CAYVR', 'VANCOUVER APT, BC', '', 49, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(52, 'CAVAN', 'VANCOUVER, BC', '', 49, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(53, 'CLARI', 'ARICA', '', 54, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(54, 'CLIQQ', 'IQUIQUE', '', 54, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(55, 'CNBJS', 'BEIJING', '', 55, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(56, 'CNCKG', 'CHONGQING', '', 55, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(57, 'CNDLC', 'DALIAN', '', 55, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(58, 'CNFOS', 'FOSHAN', '', 55, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(59, 'CNCAN', 'GUANGZHOU', '', 55, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(60, 'CNHUA', 'HUANGPU', '', 55, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(61, 'CNJGM', 'JIANGMEN', '', 55, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(62, 'CNKMG', 'KUNMING', '', 55, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(63, 'CNNSA', 'NANSHA', '', 55, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(64, 'CNNGB', 'NINGBO', '', 55, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(65, 'CNTAO', 'QINGDAO', '', 55, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(66, 'CNSHK', 'SHEKOU', '', 55, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(67, 'CNSZX', 'SHENZHEN', '', 55, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(68, 'CNTSN', 'TIANJIN', '', 55, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(69, 'CNTXG', 'XINGANG (TIANJIN)', '', 55, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(70, 'CNSIA', 'XI AN', '', 55, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(71, 'CNXMN', 'XIAMEN (XIAN)', '', 55, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(72, 'CNYNT', 'YANTAI', '', 55, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(73, 'CNYTN', 'YANTIAN', '', 55, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(74, 'CNZOS', 'ZHOUSHAN', '', 55, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(75, 'CNZUH', 'ZHUHAI', '', 55, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(76, 'COBUN', 'BUENAVENTURA', '', 58, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(77, 'CDBNW', 'BANANA', '', 61, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(78, 'CRSJO', 'SAN JOSE', '', 63, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(79, 'CIABJ', 'ABIDJAN', '', 64, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(80, 'HRRJK', 'BAKAR RIJEKA', '', 65, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(81, 'HRSUS', 'RIJEKA SUSAK', '', 65, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(82, 'HRZAG', 'ZAGREB', '', 65, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(83, 'CUANT', 'ANTILLA', '', 66, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(84, 'CYLMS', 'LIMASSOL', '', 68, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(85, 'CZASA', 'PRAGUE', '', 69, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(86, 'DKAAR', 'AARHUS', '', 70, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(87, 'DKVOR', 'COPENHAGEN', '', 70, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(88, 'DJJIB', 'DJIBOUTI', '', 71, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(89, 'ECGYE', 'GUAYAQUIL', '', 74, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(90, 'EGALY', 'ALEXANDRIA', '', 75, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(91, 'EGCAI', 'CAIRO', '', 75, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(92, 'EGDAM', 'DAMIETTA', '', 75, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(93, 'EGPSD', 'PORT SAID', '', 75, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(94, 'SVAQJ', 'ACAJUTLA', '', 76, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(95, 'SVSPM', 'SAN PEDRO DE MARCORIS', '', 76, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(96, 'SVSAL', 'SAN SALVADOR', '', 76, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(97, 'ERASM', 'ASMARA', '', 78, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(98, 'EETLL', 'TALLINN', '', 79, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(99, 'ETADD', 'ADDIS ABABA', '', 81, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(100, 'FJSUV', 'SUVA', '', 84, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(101, 'FIHEL', 'HELSINKI', '', 85, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(102, 'FRLEH', 'LE HAVRE', '', 86, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(103, 'FRMRS', 'MARSEILLE', '', 86, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(104, 'FRPAR', 'PARIS', '', 86, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(105, 'FRCDG', 'PARIS-CHARLES DE GAULLE APT', '', 86, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(106, 'GEPTI', 'POTI', '', 92, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(107, 'GETBS', 'TBILISI', '', 92, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(108, 'DEBRE', 'BREMEN', '', 93, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(109, 'DEBRV', 'BREMERHAVEN', '', 93, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(110, 'DEDUS', 'DUSSELDORF', '', 93, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(111, 'DEFRA', 'FRANKFURT', '', 93, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(112, 'DEHAM', 'HAMBURG', '', 93, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(113, 'GHACC', 'ACCRA', '', 94, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(114, 'GIGIB', 'GIBRALTAR', '', 95, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(115, 'GRPIR', 'PIRAEUS', '', 96, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(116, 'GTGUA', 'GUATEMALA CITY', '', 101, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(117, 'HKHKG', 'HONG KONG', '', 110, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(118, 'HUBUD', 'BUDAPEST', '', 111, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(119, 'INAMD', 'AHMEDABAD', '', 113, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(120, 'INBLR', 'BANGALORE', '', 113, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(121, 'INCCU', 'CALCUTTA', '', 113, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(122, 'INMAA', 'CHENNAI', '', 113, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(123, 'INDEL', 'DELHI', '', 113, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(124, 'INHYD', 'HYDERABAD', '', 113, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(125, 'INBOM', 'MUMBAI', '', 113, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(126, 'INNSA', 'NHAVA SHEVA', '', 113, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(127, 'IDBPN', 'BALIKPAPAN, KALIMANTAN', '', 114, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(128, 'IDBLW', 'BELAWAN, SUMATRA', '', 114, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(129, 'IDJKT', 'JAKARTA', '', 114, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(130, 'IRBND', 'BANDAR ABBAS', '', 116, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(131, 'IRTHR', 'TEHRAN', '', 116, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(132, 'IQBGW', 'BAGHDAD', '', 117, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(133, 'IQBSR', 'BASRA', '', 117, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(134, 'IQUQR', 'UMM QASR', '', 117, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(135, 'IEORK', 'CORK', '', 118, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(136, 'IEDUB', 'DUBLIN', '', 118, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(137, 'ITAOI', 'ANCONA', '', 121, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(138, 'ITSPE', 'LA SPEZIA', '', 121, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(139, 'ITLIV', 'LIVORNO', '', 121, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(140, 'ITMIL', 'MILANO', '', 121, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(141, 'ITMXP', 'MILANO-MALPENSA', '', 121, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(142, 'ITNAP', 'NAPOLI', '', 121, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(143, 'ITROM', 'ROMA', '', 121, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(144, 'ITTRS', 'TRIESTE', '', 121, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(145, 'JMKIN', 'KINGSTON', '', 122, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(146, 'JPUKB', 'KOBE', '', 123, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(147, 'JPNGO', 'NAGOYA', '', 123, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(148, 'JPOSA', 'OSAKA', '', 123, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(149, 'JPTYO', 'TOKYO', '', 123, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(150, 'JPYOK', 'YOKOHAMA', '', 123, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(151, 'JOAMM', 'AMMAN', '', 125, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(152, 'JOAQJ', 'AQABA (EL AKABA)', '', 125, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(153, 'KZALA', 'ALMATY (ALMA MATA)', '', 126, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(154, 'KEMBA', 'MOMBASA/PORT REITZ APT', '', 127, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(155, 'KENBO', 'NAIROBI/JOMO KENYATTA INTL APT', '', 127, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(156, 'KRINC', 'INCHEUN', '', 130, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(157, 'KRTAE', 'BUSAN', '', 130, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(158, 'KWKWI', 'KUWAIT', '', 131, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(159, 'KWMIB', 'MINA ABD ALLAH', '', 131, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(160, 'KWSWK', 'SHUWAIKH', '', 131, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(161, 'KGFRU', 'BISHKEK', '', 132, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(162, 'LVRIX', 'RIGA', '', 134, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(163, 'LBBEY', 'BEIRUT', '', 135, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(164, 'LBTIO', 'TRIPOLI', '', 135, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(165, 'LRCMT', 'CAPE MOUNT', '', 137, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(166, 'LTKLP', 'KLAIPEDA', '', 140, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(167, 'LULUX', 'LUXEMBOURG', '', 141, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(168, 'MOMAC', 'MACAU', '', 142, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(169, 'MYKUL', 'KUALA LUMPUR', '', 146, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(170, 'MYPKG', 'PORT KLANG', '', 146, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(171, 'MYPRA', 'PENANG', '', 146, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(172, 'MVMLE', 'MALE', '', 147, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(173, 'MTMLA', 'MALTA (VALETTA)', '', 149, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(174, 'MUPLU', 'PORT LOUIS', '', 153, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(175, 'MXZLO', 'MANZANILLO', '', 155, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(176, 'MXMEX', 'MEXICO CITY', '', 155, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(177, 'MACAS', 'CASABLANCA', '', 162, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(178, 'MZBEW', 'BEIRA', '', 163, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(179, 'MZMPM', 'MAPUTO', '', 163, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(180, 'MMRGN', 'YANGON', '', 164, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(181, 'NPKTM', 'KATHMANDU', '', 167, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(182, 'NLAMS', 'AMSTERDAM', '', 168, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(183, 'NLRTM', 'ROTTERDAM', '', 168, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(184, 'NZAKL', 'AUCKLAND', '', 170, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(185, 'NZCHC', 'CHRISTCHURCH', '', 170, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(186, 'NETHZ', 'TAHOUA', '', 172, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(187, 'NGAPP', 'APAPA', '', 173, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(188, 'NGLOS', 'LAGOS', '', 173, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(189, 'NOODD', 'OSLO', '', 177, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(190, 'PKGWD', 'GWADAR', '', 10, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(191, 'PKHDD', 'HYDERABAD', '', 10, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(192, 'PKLHE', 'LAHORE', '', 10, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(193, 'PKMUX', 'MULTAN', '', 10, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(194, 'PKUET', 'QUETTA', '', 10, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(195, 'PKRWP', 'RAWALPINDI/ISLAMABAD', '', 10, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(196, 'PKTOR', 'TORKHAM', '', 10, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(197, 'PKWAG', 'WAGA', '', 10, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(198, 'PYVLL', 'VILLETA', '', 183, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(199, 'PEANC', 'ANCON', '', 184, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(200, 'PELIM', 'LIMA', '', 184, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(201, 'PHMNL', 'MANILA', '', 185, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(202, 'PLGDN', 'GDANSK', '', 187, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(203, 'PLGDY', 'GDYNIA', '', 187, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(204, 'PTLEI', 'LEIXOES', '', 188, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(205, 'PTLIS', 'LISBON', '', 188, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(206, 'PRBQN', 'AGUADILLA', '', 189, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(207, 'QADOH', 'DOHA', '', 190, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(208, 'ROBRA', 'BRAILA', '', 192, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(209, 'RUAER', 'ADLER/SOCHI', '', 193, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(210, 'RUMOW', 'MOSCOW', '', 193, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(211, 'SADMN', 'DAMMAN', '', 205, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(212, 'SAJED', 'JEDDAH', '', 205, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(213, 'SAMAK', 'MAKKAH', '', 205, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(214, 'SAMED', 'MEDINA', '', 205, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(215, 'SARUH', 'RIYADH', '', 205, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(216, 'SNDKR', 'DAKAR', '', 206, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(217, 'SGSIN', 'SINGAPORE', '', 210, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(218, 'SKBTS', 'BRATISLAVA APT', '', 212, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(219, 'SKBAB', 'BRATISLAVA PORT', '', 212, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(220, 'SIKOP', 'KOPER', '', 213, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(221, 'SILJU', 'LJUBLJANA', '', 213, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(222, 'ZACPT', 'CAPETOWN', '', 216, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(223, 'ZADUR', 'DURBAN', '', 216, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(224, 'ZAJNB', 'JOHANNESBURG', '', 216, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(225, 'ESALC', 'ALICANTE', '', 219, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(226, 'ESBIO', 'BILBAO', '', 219, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(227, 'ESMAD', 'MADRID', '', 219, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(228, 'ESVLC', 'VALENCIA', '', 219, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(229, 'ESVDA', 'BARCELONA', '', 219, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(230, 'LKCMB', 'COLOMBO/KATUNAYAKE APT', '', 220, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(231, 'SDPZU', 'PORT SUDAN', '', 221, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(232, 'SESTO', 'STOCKHOLM', '', 224, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(233, 'CHBSL', 'BASEL', '', 225, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(234, 'CHGVA', 'GENEVE', '', 225, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(235, 'CHZRH', 'ZURICH', '', 225, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(236, 'TWKHH', 'KAOHSIUNG', '', 227, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(237, 'TWKEL', 'KEELUNG', '', 227, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(238, 'TWTXG', 'TAICHUNG', '', 227, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(239, 'TWTPE', 'TAIPEI', '', 227, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(240, 'TJDYU', 'DUSHANBE', '', 228, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(241, 'TZDAR', 'DAR ES SALAAM', '', 229, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(242, 'THBKK', 'BANGKOK', '', 230, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(243, 'THLCH', 'LAEM CHABANG', '', 230, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(244, 'TGLFW', 'LOME', '', 232, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(245, 'TTTAB', 'TOBAGO', '', 235, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(246, 'TNTUN', 'TUNIS', '', 236, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(247, 'TRADA', 'ADANA', '', 237, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(248, 'TRANK', 'ANKARA', '', 237, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(249, 'TRIZM', 'IZMIR', '', 237, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(250, 'TRMER', 'MERSIN', '', 237, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(251, 'TRMUD', 'MUDANYA, BURSA', '', 237, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(252, 'TRIST', 'ISTANBUL', '', 237, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(253, 'TMASB', 'ASHKHABAD', '', 238, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(254, 'UGKLA', 'KAMPALA', '', 241, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(255, 'UAKBP', 'KIEV-BORISPOL APT', '', 258, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(256, 'UAIEV', 'KIEV-ZHULHANY APT', '', 258, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(257, 'UAODS', 'ODESSA', '', 258, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(258, 'AEAUH', 'ABU DHABI', '', 242, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(259, 'AEAJM', 'AJMAN', '', 242, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(260, 'AEDXB', 'DUBAI', '', 242, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(261, 'AEJEA', 'JEBEL ALI', '', 242, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(262, 'AERKT', 'RAS AL KHAIMAH', '', 242, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(263, 'AESHJ', 'SHARJAH', '', 242, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(264, 'GBAVO', 'AVONMOUTH', '', 243, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(265, 'GBBEL', 'BELFAST', '', 243, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(266, 'GBBHX', 'BIRMINGHAM', '', 243, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(267, 'GBBRL', 'BRISTOL', '', 243, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(268, 'GBFXT', 'FELIXSTOWE', '', 243, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(269, 'GBGLW', 'GLASGOW', '', 243, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(270, 'GBGLO', 'GLOUCESTER', '', 243, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(271, 'GBLPL', 'LIVERPOOL INTERNATIONAL APT', '', 243, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(272, 'GBLON', 'LONDON', '', 243, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(273, 'GBLHR', 'LONDON / HEATHROW APT', '', 243, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(274, 'GBMNC', 'MANCHESTER', '', 243, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(275, 'GBTIL', 'TILBURY', '', 243, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(276, 'USATL', 'ATLANTA, GA', '', 244, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(277, 'USBAY', 'BALTIMORE', '', 244, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(278, 'USBOS', 'BOSTON, MA', '', 244, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(279, 'USCHS', 'CHARLESTON, SC', '', 244, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(280, 'USCLT', 'CHARLOTTE, NC', '', 244, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(281, 'USCHI', 'CHICAGO, IL', '', 244, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(282, 'USCVG', 'CINCINNATI, OH', '', 244, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(283, 'USDAL', 'DALLAS-LOVE FIELD/FORT WORTH', '', 244, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(284, 'USDET', 'DETROIT, MI', '', 244, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(285, 'USHOU', 'HOUSTON, TX', '', 244, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(286, 'USJFK', 'NEW YORK / JFK APT', '', 244, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(287, 'USKCK', 'KANSAS CITY, KS', '', 244, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(288, 'USLGB', 'LONG BEACH, CA', '', 244, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(289, 'USLAX', 'LOS ANGELES, CA', '', 244, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(290, 'USLUI', 'LOUISVILLE, KY', '', 244, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(291, 'USMCR', 'MANCHESTER, WA', '', 244, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(292, 'USMEM', 'MEMPHIS, TN', '', 244, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(293, 'USMIA', 'MIAMI, FL', '', 244, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(294, 'USNEW', 'NEW ORLEANS, LA', '', 244, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(295, 'USNYC', 'NEW YORK, NY', '', 244, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(296, 'USEWR', 'NEWARK, NJ', '', 244, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(297, 'USORF', 'NORFOLK, VA', '', 244, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(298, 'USOAK', 'OAKLAND, CA', '', 244, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(299, 'USSFO', 'SAN FRANCISCO, CA', '', 244, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(300, 'USSAV', 'SAVANNAH, GA', '', 244, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(301, 'USSEA', 'SEATTLE, WN', '', 244, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(302, 'USTXT', 'TEXAS CITY, TX', '', 244, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(303, 'USWAS', 'WASHINGTON, DC', '', 244, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(304, 'UYMVD', 'MONTEVIDEO', '', 246, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(305, 'UZBHK', 'BUKHARA', '', 247, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(306, 'UZSKD', 'SAMARKAND', '', 247, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(307, 'UZTAS', 'TASHKENT', '', 247, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(308, 'VELAG', 'LA GUAIRA/CARACAS', '', 249, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(309, 'VNDAD', 'DA NANG', '', 250, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(310, 'VNHPH', 'HAIPHONG', '', 250, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(311, 'VNHAN', 'HANOI', '', 250, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(312, 'VNSGN', 'HO CHI MINH CITY', '', 250, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(313, 'YEADE', 'ADEN', '', 255, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(314, 'YESAH', 'SANA\'A', '', 255, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(315, 'YUBEG', 'BELGRADE', '', 259, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(316, 'ZMZKB', 'KASABA BAY', '', 257, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:11:55'),
(317, 'ZWHRE', 'HARARE', '', 256, 'Base', 1, '2020-07-28 01:10:27', '2020-07-28 01:10:33'),
(318, 'PKKCT', 'KICT', NULL, 10, 'Base', 1, '2020-08-05 00:45:37', '2020-08-05 00:45:37'),
(319, 'PKKHI', 'KARACHI', 'PKKHI', 10, 'Base', 6, '2020-08-21 22:37:24', '2020-08-21 22:37:24'),
(320, 'PKSKT', 'SIALKOT', NULL, 10, 'Base', 5, '2020-09-02 02:35:15', '2020-09-02 02:35:15'),
(321, 'CASHA', 'SHANGHAI', NULL, 55, 'Base', 6, '2020-09-21 00:59:37', '2020-09-21 00:59:37'),
(322, 'CNZIB', 'ZIBO', 'CNZIB', 55, 'Base', 10, '2020-10-06 23:49:50', '2020-10-06 23:49:50'),
(323, 'PSW', 'PESHAWAR', NULL, 10, 'Base', 10, '2020-10-12 00:25:21', '2020-10-12 00:25:21'),
(324, 'CNNKG', 'NANJING', NULL, 55, 'Base', 10, '2020-10-12 00:51:13', '2020-10-12 00:51:13'),
(325, 'PKISB', 'ISLAMABAD', NULL, 10, 'Base', 6, '2020-10-20 01:03:24', '2020-10-20 01:03:24'),
(326, 'CNDGG', 'DONGGUANG', NULL, 55, 'Base', 5, '2020-11-06 23:01:38', '2020-11-06 23:01:38'),
(327, 'TONGLI', 'TONGLING', 'Tongli', 55, 'Base', 10, '2020-11-16 02:46:18', '2020-11-16 02:46:18');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quantity_unit`
--

CREATE TABLE `tbl_quantity_unit` (
  `id` int(11) NOT NULL,
  `unit` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_quantity_unit`
--

INSERT INTO `tbl_quantity_unit` (`id`, `unit`) VALUES
(1, 'CUBIC METER '),
(2, 'BARREL (OIL)'),
(3, 'BARREL (US LIQ)'),
(4, 'DOZ '),
(5, 'FEET'),
(6, 'TON'),
(7, 'SQ METER '),
(8, 'POUNDS'),
(9, 'PCS '),
(10, 'YARD '),
(11, 'U '),
(12, 'GALLON'),
(13, 'HOS '),
(14, 'KGS'),
(15, 'KILOMETER'),
(16, 'KILO LITRE'),
(17, 'LITRE'),
(18, 'METER TON'),
(19, 'METER'),
(20, 'LONG TONNES');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_role`
--

CREATE TABLE `tbl_role` (
  `id` int(11) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_role`
--

INSERT INTO `tbl_role` (`id`, `role`) VALUES
(1, 'Admin'),
(2, 'Editor');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sales_person`
--

CREATE TABLE `tbl_sales_person` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `mobile` varchar(25) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `fax` varchar(25) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `website` varchar(50) DEFAULT NULL,
  `remarks` varchar(250) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_sales_person`
--

INSERT INTO `tbl_sales_person` (`id`, `name`, `phone`, `mobile`, `email`, `fax`, `address`, `website`, `remarks`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Zia us Samad', '222-22222222', '2222-2333333', 'zia@gmail.com', NULL, 'abc street', NULL, NULL, 1, '2020-07-28 00:50:39', '2020-07-28 01:05:23'),
(2, 'ALTAF MALIK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-10-30 19:34:23', '2020-10-30 19:34:23'),
(3, 'KHURRAM AZIZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '2020-11-06 23:03:19', '2020-11-06 23:03:19');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping_license`
--

CREATE TABLE `tbl_shipping_license` (
  `id` int(11) NOT NULL,
  `code` varchar(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `fax` varchar(25) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_shipping_license`
--

INSERT INTO `tbl_shipping_license` (`id`, `code`, `name`, `phone`, `fax`, `email`, `address`, `created_by`, `created_at`, `updated_at`) VALUES
(2, 'SA-0674', 'SYNERGY FREIGHT INTERNATIONAL', '021-34390901', '0213-4390901', 'info@synergyfreightpk.com', 'KARACHI', 6, '2020-07-15 01:33:32', '2020-10-12 04:02:05');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping_line_info`
--

CREATE TABLE `tbl_shipping_line_info` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` int(11) NOT NULL,
  `route_type` int(11) NOT NULL,
  `freight_type` int(11) NOT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `fax` varchar(25) DEFAULT NULL,
  `cont_person` varchar(50) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `website` varchar(50) DEFAULT NULL,
  `shipping_agent` varchar(50) DEFAULT NULL,
  `sl_code` varchar(35) DEFAULT NULL,
  `network` varchar(50) DEFAULT NULL,
  `ship_company` varchar(50) DEFAULT NULL,
  `short_name` varchar(20) DEFAULT NULL,
  `ntn_no` varchar(35) DEFAULT NULL,
  `vessel_flight` varchar(50) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_shipping_line_info`
--

INSERT INTO `tbl_shipping_line_info` (`id`, `name`, `type`, `route_type`, `freight_type`, `phone`, `fax`, `cont_person`, `address`, `email`, `website`, `shipping_agent`, `sl_code`, `network`, `ship_company`, `short_name`, `ntn_no`, `vessel_flight`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'test shipping', 2, 3, 3, '444-44444444', '4444-4444444', 'abc', 'test address', 'zia@gmail.com', NULL, 'abc', '123', 'abc network', NULL, NULL, NULL, NULL, 1, '2020-07-09 04:59:27', '2020-08-21 22:51:51'),
(2, 'RAHMAT SHIPPING (PVT) LIMITED.', 2, 1, 1, '021-32474301', NULL, NULL, 'ROOM # 803-804, 8th FLOOR, BUSINESS & FINANCE CENTRE, I. I CHUNDRIGAR ROAD, KARACHI.', 'info@rahmat.com.pk', 'http://rahmat.com.pk', NULL, NULL, NULL, 'INTERASIA  LINE', NULL, '0711805', NULL, 6, '2020-08-21 22:50:56', '2020-08-21 22:54:21'),
(3, 'RIAZDA', 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '2020-09-02 02:13:23', '2020-09-02 02:13:23'),
(4, 'ACTIVE FREIGHT SERVICE PVT LTD', 2, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-09-21 00:30:17', '2020-09-21 00:30:17'),
(5, 'CSS PAKISTAN (PRIVATE) LIMITED', 1, 1, 1, NULL, NULL, NULL, 'Suite 1201-1202 12th floor emerald tower plot # G-19 block 5 main clifton road opposite 2 talwar karachi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '2020-09-28 04:03:57', '2020-09-28 04:03:57'),
(6, 'OOCL PAKISTAN', 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, '2020-10-05 02:13:55', '2020-10-05 02:13:55'),
(7, 'COSCO SHIPPING', 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-10-07 03:14:48', '2020-10-07 03:14:48'),
(8, 'INSHIPPING PVT LTD', 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, '2020-10-11 23:42:31', '2020-10-11 23:42:31'),
(9, 'RAHMAT SHIPPING (PVT) LIMITED.', 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'INTERASIA', NULL, NULL, NULL, 6, '2020-10-19 20:57:44', '2020-10-19 20:57:44'),
(10, 'CLT-LFC LOGOISTICS', 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '2020-11-06 22:28:38', '2020-11-06 22:28:38'),
(11, 'NEWS LOGISTICS', 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '2020-11-09 01:52:49', '2020-11-09 01:52:49'),
(12, 'DYNAMIC SHIPPING AGENCIES PVT LTD', 1, 1, 1, NULL, NULL, NULL, '1201-1202 12TH FLOOR EMRALD TOWER MAIN CLIFTON ROAD KARACHI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '2020-11-10 02:18:05', '2020-11-10 02:18:05'),
(13, 'NASHRAH SHIPPING & LOGISTICS (PVT) LTD', 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NASHRAH SHIPPING & LOGISTICS (PVT) LTD', NULL, NULL, NULL, 6, '2020-11-11 01:19:20', '2020-11-11 01:19:20'),
(14, 'INFINITY SHIPPING SERVICE', 1, 1, 1, NULL, NULL, NULL, 'SUITE 108 1ST FLOOR IBRAHIM TRADE TOWER \r\nPLOT NO#1 MAQBOOL ABAD BLOCK 7/8 MAIN SHAHRAH E FAISAL KARACHI PAKISTAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '2020-11-13 21:23:33', '2020-11-13 21:23:33'),
(15, 'AMPLE SHIPPING & LOGISTICS SERVICES', 1, 1, 1, '021-34324543', '0213-4324546', NULL, '711 7TH FLOOR BUSINESS CENTER', 'COMMERCIAL@AMPLEPK.COM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, '2020-11-17 22:16:21', '2020-11-17 22:16:21');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_supplier_info`
--

CREATE TABLE `tbl_supplier_info` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(250) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `fax` varchar(25) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `country_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `cont_person` varchar(50) DEFAULT NULL,
  `foreign_agent` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_supplier_info`
--

INSERT INTO `tbl_supplier_info` (`id`, `name`, `address`, `phone`, `email`, `fax`, `website`, `country_id`, `city_id`, `cont_person`, `foreign_agent`, `created_by`, `created_at`, `updated_at`) VALUES
(2, 'abc supplier', 'test address', '1111-1111111', 'zia@gmail.com', NULL, NULL, 9, 4, 'xyz', 2, 1, '2020-07-05 04:52:32', '2020-07-05 05:17:22'),
(3, 'SHANGHAI NUVIT BIO-TECH CO LTD', NULL, NULL, NULL, NULL, NULL, 55, 321, NULL, NULL, 6, '2020-09-21 02:26:08', '2020-09-21 02:26:08'),
(4, 'SHANDONG XINHUA PHARMACEUTICAL CO. LTD.,', 'HUTIAN CHEMICAL INDUSTRIAL ZONE, ZIBO, SHANDONG,\r\nP.R.CHINA', NULL, NULL, NULL, NULL, 55, 322, NULL, NULL, 10, '2020-10-06 23:56:12', '2020-10-06 23:56:12'),
(5, 'QINGDAO BRIGHT MOON SEAWEED GROUP CO LTD,', '777, MINGYUE ROAD, HUANGDAO, QINGDAO, CHINA', NULL, NULL, NULL, NULL, 55, 65, NULL, NULL, 10, '2020-10-07 02:01:39', '2020-10-07 02:01:39'),
(6, 'NANJING CHAMPION MACHINERY CO., LTD', 'KE CHUANG STREET NO.1, BUILDING THREE, ROOM 101-B7, YAO HUA STREET QIXIA DISTRICT, NANJING CITY, CHINA', NULL, NULL, NULL, NULL, 55, 324, NULL, NULL, 10, '2020-10-12 00:54:12', '2020-10-12 00:54:12'),
(7, 'SAS-TEC GMBH', NULL, NULL, NULL, NULL, NULL, 93, 86, NULL, NULL, 9, '2020-10-19 21:26:20', '2020-10-19 21:26:20'),
(8, 'URUMQI TIANSHU YONGXING TRADING CO,. LTD', 'ROOM 15, FLOOR 11, BLOCK F, BAIXIN ZUANSHIYUAN NO.558, SOUTH BEIJING ROAD, GAOXING\r\nDISTRIC, XINJIANG', NULL, NULL, NULL, NULL, 55, 55, NULL, NULL, 6, '2020-10-20 01:10:35', '2020-10-20 01:10:35'),
(9, 'SML SOURCING LIMITED', NULL, NULL, NULL, NULL, NULL, 110, 117, NULL, NULL, 6, '2020-10-30 19:33:45', '2020-10-30 19:33:45'),
(10, 'DONGGUANG XIONGIN NEW MATERIAL TECHNOLGY CO LTD', 'NO#1 NANGE 10# ROAD NANGE INDUSTRIAL ZONE DAOJIAO TOWN DONGGUANG CITY GUANGDONG CHINA', NULL, NULL, NULL, NULL, 55, 326, NULL, NULL, 5, '2020-11-06 23:01:54', '2020-11-06 23:01:54'),
(11, 'BROADTEX BIOTEH CO LTD', '8TH NO 30 TAISHI INDUSTRY AREA JIANTAI ROAAD DONGCHONG ROAD TOWN NASHA DISTRICT GUANGZHOU GD PRC', NULL, NULL, NULL, NULL, 55, 59, NULL, NULL, 5, '2020-11-10 02:29:15', '2020-11-10 02:29:15'),
(12, 'MEMON ABDUL AZIZ TRADING CO LLC', 'P.O. BOX 14178 DUBAI-UAE', NULL, NULL, NULL, NULL, 242, 260, NULL, NULL, 6, '2020-11-11 01:47:45', '2020-11-11 01:47:45'),
(13, 'ALLAMAAN TRADING LLC', 'P.O. BOX 55548 DUBAI, UNITED ARAB EMIRATES', NULL, NULL, NULL, NULL, 242, 260, NULL, NULL, 6, '2020-11-11 02:06:33', '2020-11-11 02:06:33'),
(14, 'SCHNEIDER ELECTRIC FZE', 'PLOT NO. S10809, JAFZA SOUTH, P.O. BOX: 17192, JEBEL ALI FREE ZONE, DUBAI, U.A.E.', NULL, NULL, NULL, NULL, 242, 260, NULL, NULL, 6, '2020-11-11 02:38:36', '2020-11-11 02:38:36'),
(15, 'LIAONING PHARAMACEITICAL FOREIGN TRADE VALUE CORPORATION', NULL, NULL, NULL, NULL, NULL, 55, 67, NULL, NULL, 5, '2020-11-13 21:32:12', '2020-11-13 21:32:12'),
(16, 'FOODING GROUP LIMITED', 'NO.759 SOUTH YANGGAO ROAD, PUDONG, SHANGHAI 200127 CHINA', NULL, NULL, NULL, NULL, 55, 321, NULL, NULL, 10, '2020-11-16 02:27:58', '2020-11-16 02:27:58'),
(17, 'ANHUI NEWI NEW ENERGY TECHNOLOGY CO., LTD', 'NO. 5105 WEST OF 4TH CUIHU ROAD, TONGLING ECONOMIC AND TECHNOLOGICAL DEVELOPMENT ZONE, TONGLING CITY 244000, ANHUI CHINA', NULL, NULL, NULL, NULL, 55, 327, NULL, NULL, 10, '2020-11-16 02:46:59', '2020-11-16 02:46:59');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_terminal_info`
--

CREATE TABLE `tbl_terminal_info` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `short_name` varchar(25) NOT NULL,
  `city_id` int(11) DEFAULT 0,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_terminal_info`
--

INSERT INTO `tbl_terminal_info` (`id`, `name`, `short_name`, `city_id`, `created_by`, `created_at`, `updated_at`) VALUES
(6, 'AL HAMD INTERNATIONAL CONTAINER TERMINAL', 'AICT', 4, 6, '2020-07-13 01:59:00', '2020-07-13 01:59:00'),
(7, 'BAY WEST (PVT.) LTD', 'BWP', 4, 6, '2020-07-13 01:59:35', '2020-07-13 02:01:40'),
(8, 'BURMA OIL MILLS LTD', 'BOML YARD', 4, 6, '2020-07-13 02:01:25', '2020-07-13 02:01:25'),
(9, 'NLCC', 'NLCCT', 4, 6, '2020-07-13 02:01:54', '2020-07-13 02:01:54'),
(10, 'PAK SHAHEEN YARD', 'PAKSHAHEEN', 4, 6, '2020-07-13 02:02:13', '2020-07-13 02:02:13'),
(11, 'Appraisment Karachi', 'APK', 319, 6, '2020-08-21 22:38:06', '2020-08-21 22:38:06'),
(12, 'PAKISTAN INTERNATIONAL CONTAINER TEMINAL', 'PICT', 319, 6, '2020-10-07 03:20:27', '2020-10-07 03:20:27'),
(13, 'KARACHI INTERNATIONAL CONTAINER TEMINAL', 'KICT', 319, 6, '2020-10-07 03:20:40', '2020-10-07 03:20:40'),
(14, 'SOUTH ASIA PAKISTAN CONTAINER TEMINAL', 'SAPT', 319, 6, '2020-10-07 03:21:06', '2020-10-07 03:21:06'),
(15, 'QASIM INTERNATIONAL CONTAINER TEMINAL', 'QICT', 319, 6, '2020-10-07 03:21:34', '2020-10-07 03:21:34');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_usr`
--

CREATE TABLE `tbl_usr` (
  `id` int(11) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(250) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `cnic` varchar(30) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` int(11) NOT NULL,
  `remember_token` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_usr`
--

INSERT INTO `tbl_usr` (`id`, `fullname`, `email`, `username`, `password`, `age`, `cnic`, `phone`, `role_id`, `created_at`, `updated_at`, `status`, `remember_token`) VALUES
(1, 'Muhammad Waseem', 'captain.wasi@gmail.com', 'wasi', '$2y$12$lP7E8qxrzphGZnTsWveIJOYI6jNYbeCXbj.24Fzay54afR4314EES', 26, '1111111111', '0303-2260684', 1, '2020-07-09 06:45:21', '2020-07-13 08:23:42', 1, 'DvEwzc0RNUxq49eavxeE14jr0fM7A3gYZ03RBn7TkG9xawdoquATH1BlPXF5'),
(5, 'Zia us Samad', 'zia@gmail.com', 'ziaussamad', '$2y$10$dMRMyDciG0a4/YAj3tscCe0QlQ/u8iDwXncxLaYrSALHTqnsPvuzG', 20, '11111-1111111-1', '0333-3333333', 1, '2020-07-10 07:29:13', '2020-08-05 00:50:55', 1, 'hYM3Bpruyf3FpWx1YL4FBS2uc5FtQczKKWvSzxwU'),
(6, 'usman', 'usman@gmail.com', 'usman12', '$2y$10$aRkjYfI7VgmqUa3VK3pKxOiJv0eoOzeZxE8wTw7hOxJ5MZ6zqEJgG', 25, '11111-1111111-1', '0333-3333333', 1, '2020-07-03 06:24:19', '2020-10-12 04:56:16', 1, 'XpdnosKdObS6LUmJVvPks5th8ehD6s6vL8ldAyUtGaMI1mDjcQ7YMYkA9DlJ'),
(7, 'Abdul Sammad', 'samad@freightworld.com.pk', 'a-samad', '$2y$10$wIzY6MQZ0pziW4P1i0leGeQKKb/ucuHOiZRFxKIEIMGnt0lLF8sIe', 35, '12345-6789412-3', NULL, 1, '2020-08-05 00:54:24', '2020-08-05 00:54:24', 1, 'NtbsVkPm1VwkgZ0FNAsWYCDwHwymWm0WZNppRk7h'),
(9, 'MALIK FAYYAZ', 'fayyaz@gmail.com', 'malikfayyaz', '$2y$10$BmBzDMpgjCUyVVXywNwB2eF0A2/1UPmJgxUGRsYoD2WdctFl8/Uii', 32, '11111-1111111-1', '0311-1111111', 2, '2020-08-18 00:46:59', '2020-08-18 09:56:18', 1, 'lPiML0uEEvU1AH6KsuAuCkfb0PImm9FxvwoirT43heT3irbFn870HE9qp1j4'),
(10, 'jawad ul haq', NULL, 'jawad007', '$2y$10$HfvW2UPVsZ7REENxWFnHsuliU7.PhvxHzTPag5PFTm9sTgQtbk6NO', 45, NULL, NULL, 1, '2020-10-05 02:11:05', '2020-10-12 07:59:58', 1, 'uIMtHJE16vPpMBWe13XiXsQMZUb466D55CajSuNQ7pcndhgVj9UREUJIncaw'),
(11, 'MALIK MUHAMMAD ALTAF', NULL, 'ALTAFMALIK', '$2y$10$0DD.J2uKqBqPcfZiJrZw9OQCJBofY3AYh5MwgtTkIOm0XOrO0sM4i', NULL, NULL, NULL, 1, '2020-10-07 20:36:39', '2020-10-08 01:41:14', 1, 'DMPXJbBoCTnI7gxdbVk4449D10Z2oUsoR4dOvXp3fGLsehAQJLoOHT7L8FUJ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_volume_status`
--

CREATE TABLE `tbl_volume_status` (
  `id` int(11) NOT NULL,
  `status` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_volume_status`
--

INSERT INTO `tbl_volume_status` (`id`, `status`) VALUES
(1, 'EMPTY'),
(2, 'CFS - CFS'),
(3, 'CFS - CY'),
(4, 'CY - CFS'),
(5, 'CY - CY'),
(6, 'LCL - LCL'),
(7, 'LCL - FCL'),
(8, 'FCL - FCL'),
(9, 'FCL - LCL');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_volume_type`
--

CREATE TABLE `tbl_volume_type` (
  `id` int(11) NOT NULL,
  `type` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_volume_type`
--

INSERT INTO `tbl_volume_type` (`id`, `type`) VALUES
(1, 'Normal'),
(2, 'Hi-Cube'),
(3, '20GP Container'),
(4, 'Flat Rack'),
(5, 'Jumbo'),
(6, 'Open'),
(7, 'Open Top'),
(8, 'Reffer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_coloader_agent_info`
--
ALTER TABLE `tbl_coloader_agent_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_commodity`
--
ALTER TABLE `tbl_commodity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_companies_info`
--
ALTER TABLE `tbl_companies_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_country`
--
ALTER TABLE `tbl_country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_foreign_agent`
--
ALTER TABLE `tbl_foreign_agent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_importer_cust_type`
--
ALTER TABLE `tbl_importer_cust_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_importer_facility`
--
ALTER TABLE `tbl_importer_facility`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_importer_info`
--
ALTER TABLE `tbl_importer_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_packs_unit`
--
ALTER TABLE `tbl_packs_unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_port_city`
--
ALTER TABLE `tbl_port_city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_quantity_unit`
--
ALTER TABLE `tbl_quantity_unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_role`
--
ALTER TABLE `tbl_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sales_person`
--
ALTER TABLE `tbl_sales_person`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_shipping_license`
--
ALTER TABLE `tbl_shipping_license`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_shipping_line_info`
--
ALTER TABLE `tbl_shipping_line_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_supplier_info`
--
ALTER TABLE `tbl_supplier_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_terminal_info`
--
ALTER TABLE `tbl_terminal_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_usr`
--
ALTER TABLE `tbl_usr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_volume_status`
--
ALTER TABLE `tbl_volume_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_volume_type`
--
ALTER TABLE `tbl_volume_type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_coloader_agent_info`
--
ALTER TABLE `tbl_coloader_agent_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_commodity`
--
ALTER TABLE `tbl_commodity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_companies_info`
--
ALTER TABLE `tbl_companies_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_country`
--
ALTER TABLE `tbl_country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=260;

--
-- AUTO_INCREMENT for table `tbl_foreign_agent`
--
ALTER TABLE `tbl_foreign_agent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_importer_cust_type`
--
ALTER TABLE `tbl_importer_cust_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `tbl_importer_facility`
--
ALTER TABLE `tbl_importer_facility`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_importer_info`
--
ALTER TABLE `tbl_importer_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `tbl_packs_unit`
--
ALTER TABLE `tbl_packs_unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_port_city`
--
ALTER TABLE `tbl_port_city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=328;

--
-- AUTO_INCREMENT for table `tbl_quantity_unit`
--
ALTER TABLE `tbl_quantity_unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_role`
--
ALTER TABLE `tbl_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_sales_person`
--
ALTER TABLE `tbl_sales_person`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_shipping_license`
--
ALTER TABLE `tbl_shipping_license`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_shipping_line_info`
--
ALTER TABLE `tbl_shipping_line_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_supplier_info`
--
ALTER TABLE `tbl_supplier_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_terminal_info`
--
ALTER TABLE `tbl_terminal_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_usr`
--
ALTER TABLE `tbl_usr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_volume_status`
--
ALTER TABLE `tbl_volume_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_volume_type`
--
ALTER TABLE `tbl_volume_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
