-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 10/07/2024 às 18:08
-- Versão do servidor: 10.11.8-MariaDB-cll-lve
-- Versão do PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `u117422235_pgjogo`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `affiliate_histories`
--

CREATE TABLE `affiliate_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `inviter` int(10) UNSIGNED NOT NULL,
  `commission` decimal(20,2) NOT NULL DEFAULT 0.00,
  `commission_type` varchar(191) DEFAULT NULL,
  `deposited` tinyint(4) DEFAULT 0,
  `deposited_amount` decimal(10,2) DEFAULT 0.00,
  `losses` bigint(20) DEFAULT 0,
  `losses_amount` decimal(10,2) DEFAULT 0.00,
  `commission_paid` decimal(10,2) DEFAULT 0.00,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `receita` decimal(10,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `affiliate_histories`
--

INSERT INTO `affiliate_histories` (`id`, `user_id`, `inviter`, `commission`, `commission_type`, `deposited`, `deposited_amount`, `losses`, `losses_amount`, `commission_paid`, `status`, `created_at`, `updated_at`, `receita`) VALUES
(145, 273, 272, 10.00, 'cpa', 0, 10.00, 0, 0.00, 0.00, 1, '2024-07-06 23:35:09', '2024-07-06 23:37:56', NULL),
(146, 274, 272, 10.00, 'cpa', 0, 10.00, 0, 0.00, 0.00, 1, '2024-07-06 23:49:11', '2024-07-06 23:50:10', NULL),
(147, 276, 272, 10.00, 'cpa', 0, 30.00, 0, 0.00, 0.00, 1, '2024-07-07 01:48:56', '2024-07-07 01:52:11', NULL),
(148, 277, 272, 10.00, 'cpa', 0, 30.00, 0, 0.00, 0.00, 1, '2024-07-07 09:35:17', '2024-07-07 09:36:11', NULL),
(149, 278, 272, 10.00, 'cpa', 0, 50.00, 0, 0.00, 0.00, 1, '2024-07-07 12:39:24', '2024-07-07 12:41:22', NULL),
(150, 280, 279, 10.00, 'cpa', 0, 0.00, 0, 0.00, 0.00, 0, '2024-07-07 16:00:00', '2024-07-07 16:00:00', NULL),
(151, 281, 279, 10.00, 'cpa', 0, 50.05, 0, 0.00, 0.00, 1, '2024-07-07 16:48:30', '2024-07-07 17:15:34', NULL),
(152, 282, 279, 10.00, 'cpa', 0, 50.00, 0, 0.00, 0.00, 0, '2024-07-07 17:25:18', '2024-07-07 17:25:55', NULL),
(153, 283, 279, 10.00, 'cpa', 0, 50.00, 0, 0.00, 0.00, 0, '2024-07-07 17:30:00', '2024-07-07 17:30:27', NULL),
(154, 284, 279, 10.00, 'cpa', 0, 50.00, 0, 0.00, 0.00, 1, '2024-07-07 17:35:28', '2024-07-07 17:35:58', NULL),
(155, 285, 279, 10.00, 'cpa', 0, 50.00, 0, 0.00, 0.00, 1, '2024-07-07 17:54:29', '2024-07-07 17:55:24', NULL),
(156, 286, 279, 10.00, 'cpa', 0, 50.00, 0, 0.00, 0.00, 1, '2024-07-07 17:58:05', '2024-07-07 17:58:34', NULL),
(157, 287, 279, 10.00, 'cpa', 0, 50.00, 0, 0.00, 0.00, 1, '2024-07-07 18:04:58', '2024-07-07 18:05:26', NULL),
(158, 288, 279, 10.00, 'cpa', 0, 50.00, 0, 0.00, 10.00, 1, '2024-07-07 18:08:03', '2024-07-07 18:08:36', NULL),
(159, 289, 271, 15.00, 'cpa', 0, 0.00, 0, 0.00, 0.00, 0, '2024-07-09 11:14:33', '2024-07-09 11:14:33', NULL),
(160, 290, 272, 10.00, 'cpa', 0, 0.00, 0, 0.00, 0.00, 0, '2024-07-09 11:14:55', '2024-07-09 11:14:55', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `affiliate_withdraws`
--

CREATE TABLE `affiliate_withdraws` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` varchar(191) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(20,2) NOT NULL DEFAULT 0.00,
  `proof` varchar(191) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `pix_key` varchar(191) DEFAULT NULL,
  `pix_type` varchar(191) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `bank_info` text DEFAULT NULL,
  `currency` varchar(50) DEFAULT NULL,
  `symbol` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `affiliate_withdraws`
--

INSERT INTO `affiliate_withdraws` (`id`, `payment_id`, `user_id`, `amount`, `proof`, `status`, `pix_key`, `pix_type`, `type`, `bank_info`, `currency`, `symbol`, `created_at`, `updated_at`) VALUES
(7, NULL, 271, 50.00, NULL, 0, '11454171405', 'document', NULL, NULL, 'BRL', 'R$', '2024-07-09 11:29:58', '2024-07-09 11:29:58');

-- --------------------------------------------------------

--
-- Estrutura para tabela `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `link` varchar(191) DEFAULT NULL,
  `image` varchar(191) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'home',
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `banners`
--

INSERT INTO `banners` (`id`, `link`, `image`, `type`, `description`, `created_at`, `updated_at`) VALUES
(17, '#', '01J1D4EBRJG46BVR33TA43YB61.webp', 'home', '...', '2024-04-07 16:29:27', '2024-06-27 15:18:52'),
(18, '#', '01J1D4ESJ2F50MM159PJDVCRXM.webp', 'home', '....', '2024-04-07 16:30:46', '2024-06-27 15:19:07'),
(15, '#', '01J1D4C0S5W27FQ9N4V3YXFTHQ.png', 'carousel', NULL, '2024-04-06 01:58:25', '2024-06-27 15:17:36'),
(8, '#', '01J1D4BDQYTZW7GQYY9FGE6EFD.png', 'carousel', NULL, '2024-01-13 18:41:09', '2024-06-27 15:17:16'),
(16, '#', '01J1D4DECNQNW8E8TETGZSPF9H.webp', 'home', '...', '2024-04-06 02:03:23', '2024-06-27 15:18:22');

-- --------------------------------------------------------

--
-- Estrutura para tabela `baus`
--

CREATE TABLE `baus` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `bau_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `caminho` varchar(255) DEFAULT NULL,
  `dataS` timestamp NULL DEFAULT NULL,
  `aberto_em` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `baus`
--

INSERT INTO `baus` (`id`, `user_id`, `bau_id`, `status`, `caminho`, `dataS`, `aberto_em`, `updated_at`, `created_at`) VALUES
(23, 272, 1, 2, '/assets/images/big2.png', NULL, NULL, '2024-07-07 13:15:05', '2024-07-07 13:15:05'),
(24, 279, 1, 3, '/assets/images/big1.png', NULL, '2024-07-07 16:03:36', '2024-07-07 16:03:36', '2024-07-07 16:03:34'),
(25, 279, 2, 3, '/assets/images/big1.png', NULL, '2024-07-07 18:09:34', '2024-07-07 18:09:34', '2024-07-07 17:19:00'),
(26, 279, 3, 2, '/assets/images/big2.png', NULL, NULL, '2024-07-07 17:26:26', '2024-07-07 17:26:26'),
(27, 279, 4, 2, '/assets/images/big2.png', NULL, NULL, '2024-07-07 17:58:50', '2024-07-07 17:58:50'),
(28, 279, 5, 2, '/assets/images/big2.png', NULL, NULL, '2024-07-07 17:58:50', '2024-07-07 17:58:50'),
(29, 279, 6, 2, '/assets/images/big2.png', NULL, NULL, '2024-07-07 17:58:50', '2024-07-07 17:58:50'),
(30, 279, 7, 2, '/assets/images/big2.png', NULL, NULL, '2024-07-07 17:58:50', '2024-07-07 17:58:50'),
(31, 279, 8, 2, '/assets/images/big2.png', NULL, NULL, '2024-07-07 18:08:54', '2024-07-07 18:08:54'),
(32, 279, 9, 2, '/assets/images/big2.png', NULL, NULL, '2024-07-07 18:08:54', '2024-07-07 18:08:54'),
(33, 271, 1, 3, '/assets/images/big1.png', NULL, '2024-07-09 11:29:22', '2024-07-09 11:29:22', '2024-07-09 11:21:01');

-- --------------------------------------------------------

--
-- Estrutura para tabela `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` varchar(191) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Popular', 'Popular', 'popular_on.png', 'popular', '2023-11-13 14:59:07', '2024-04-30 18:13:46'),
(17, 'Slots', 'Slots', 'slots_on.png', 'slots', '2023-12-24 12:06:46', '2024-04-30 18:13:57'),
(18, 'Pescaria', 'Pescaria', 'fish_on.png', 'pescaria', '2023-12-24 12:10:01', '2024-04-30 18:14:17'),
(19, 'Blockchain', 'Blockchain', 'blockchain_on.png', 'blockchain', '2023-12-24 12:12:36', '2024-04-30 18:14:37'),
(22, 'Cartas', 'Cartas', 'cartas_on.png', 'cartas', '2024-04-16 11:26:47', '2024-04-30 18:15:22'),
(20, 'Favoritos', 'Favoritos', 'favorito_on.png', 'favoritos', '2023-12-24 12:19:42', '2024-04-30 18:14:49'),
(21, 'Recentes', 'Recentes', 'recente_on.png', 'recentes', '2023-12-24 20:03:48', '2024-04-30 18:15:05');

-- --------------------------------------------------------

--
-- Estrutura para tabela `category_game`
--

CREATE TABLE `category_game` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `game_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Estrutura para tabela `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol` varchar(5) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `symbol`, `created_at`, `updated_at`) VALUES
(1, 'Leke', 'ALL', 'Lek', '2023-11-07 18:01:38', NULL),
(2, 'Dollars', 'USD', '$', '2023-11-07 18:01:38', NULL),
(3, 'Afghanis', 'AFN', '؋', '2023-11-07 18:01:38', NULL),
(4, 'Pesos', 'ARS', '$', '2023-11-07 18:01:38', NULL),
(5, 'Guilders', 'AWG', 'ƒ', '2023-11-07 18:01:38', NULL),
(6, 'Dollars', 'AUD', '$', '2023-11-07 18:01:38', NULL),
(7, 'New Manats', 'AZN', 'ман', '2023-11-07 18:01:38', NULL),
(8, 'Dollars', 'BSD', '$', '2023-11-07 18:01:38', NULL),
(9, 'Dollars', 'BBD', '$', '2023-11-07 18:01:38', NULL),
(10, 'Rubles', 'BYR', 'p.', '2023-11-07 18:01:38', NULL),
(11, 'Euro', 'EUR', '€', '2023-11-07 18:01:38', NULL),
(12, 'Dollars', 'BZD', 'BZ$', '2023-11-07 18:01:38', NULL),
(13, 'Dollars', 'BMD', '$', '2023-11-07 18:01:38', NULL),
(14, 'Bolivianos', 'BOB', '$b', '2023-11-07 18:01:38', NULL),
(15, 'Convertible Marka', 'BAM', 'KM', '2023-11-07 18:01:38', NULL),
(16, 'Pula', 'BWP', 'P', '2023-11-07 18:01:38', NULL),
(17, 'Leva', 'BGN', 'лв', '2023-11-07 18:01:38', NULL),
(18, 'Reais', 'BRL', 'R$', '2023-11-07 18:01:38', NULL),
(19, 'Pounds', 'GBP', '£', '2023-11-07 18:01:38', NULL),
(20, 'Dollars', 'BND', '$', '2023-11-07 18:01:38', NULL),
(21, 'Riels', 'KHR', '៛', '2023-11-07 18:01:38', NULL),
(22, 'Dollars', 'CAD', '$', '2023-11-07 18:01:38', NULL),
(23, 'Dollars', 'KYD', '$', '2023-11-07 18:01:38', NULL),
(24, 'Pesos', 'CLP', '$', '2023-11-07 18:01:38', NULL),
(25, 'Yuan Renminbi', 'CNY', '¥', '2023-11-07 18:01:38', NULL),
(26, 'Pesos', 'COP', '$', '2023-11-07 18:01:38', NULL),
(27, 'Colón', 'CRC', '₡', '2023-11-07 18:01:38', NULL),
(28, 'Kuna', 'HRK', 'kn', '2023-11-07 18:01:38', NULL),
(29, 'Pesos', 'CUP', '₱', '2023-11-07 18:01:38', NULL),
(30, 'Koruny', 'CZK', 'Kč', '2023-11-07 18:01:38', NULL),
(31, 'Kroner', 'DKK', 'kr', '2023-11-07 18:01:38', NULL),
(32, 'Pesos', 'DOP', 'RD$', '2023-11-07 18:01:38', NULL),
(33, 'Dollars', 'XCD', '$', '2023-11-07 18:01:38', NULL),
(34, 'Pounds', 'EGP', '£', '2023-11-07 18:01:38', NULL),
(35, 'Colones', 'SVC', '$', '2023-11-07 18:01:38', NULL),
(36, 'Pounds', 'FKP', '£', '2023-11-07 18:01:38', NULL),
(37, 'Dollars', 'FJD', '$', '2023-11-07 18:01:38', NULL),
(38, 'Cedis', 'GHC', '¢', '2023-11-07 18:01:38', NULL),
(39, 'Pounds', 'GIP', '£', '2023-11-07 18:01:38', NULL),
(40, 'Quetzales', 'GTQ', 'Q', '2023-11-07 18:01:38', NULL),
(41, 'Pounds', 'GGP', '£', '2023-11-07 18:01:38', NULL),
(42, 'Dollars', 'GYD', '$', '2023-11-07 18:01:38', NULL),
(43, 'Lempiras', 'HNL', 'L', '2023-11-07 18:01:38', NULL),
(44, 'Dollars', 'HKD', '$', '2023-11-07 18:01:38', NULL),
(45, 'Forint', 'HUF', 'Ft', '2023-11-07 18:01:38', NULL),
(46, 'Kronur', 'ISK', 'kr', '2023-11-07 18:01:38', NULL),
(47, 'Rupees', 'INR', 'Rp', '2023-11-07 18:01:38', NULL),
(48, 'Rupiahs', 'IDR', 'Rp', '2023-11-07 18:01:38', NULL),
(49, 'Rials', 'IRR', '﷼', '2023-11-07 18:01:38', NULL),
(50, 'Pounds', 'IMP', '£', '2023-11-07 18:01:38', NULL),
(51, 'New Shekels', 'ILS', '₪', '2023-11-07 18:01:38', NULL),
(52, 'Dollars', 'JMD', 'J$', '2023-11-07 18:01:38', NULL),
(53, 'Yen', 'JPY', '¥', '2023-11-07 18:01:38', NULL),
(54, 'Pounds', 'JEP', '£', '2023-11-07 18:01:38', NULL),
(55, 'Tenge', 'KZT', 'лв', '2023-11-07 18:01:38', NULL),
(56, 'Won', 'KPW', '₩', '2023-11-07 18:01:38', NULL),
(57, 'Won', 'KRW', '₩', '2023-11-07 18:01:38', NULL),
(58, 'Soms', 'KGS', 'лв', '2023-11-07 18:01:38', NULL),
(59, 'Kips', 'LAK', '₭', '2023-11-07 18:01:38', NULL),
(60, 'Lati', 'LVL', 'Ls', '2023-11-07 18:01:38', NULL),
(61, 'Pounds', 'LBP', '£', '2023-11-07 18:01:38', NULL),
(62, 'Dollars', 'LRD', '$', '2023-11-07 18:01:38', NULL),
(63, 'Switzerland Francs', 'CHF', 'CHF', '2023-11-07 18:01:38', NULL),
(64, 'Litai', 'LTL', 'Lt', '2023-11-07 18:01:38', NULL),
(65, 'Denars', 'MKD', 'ден', '2023-11-07 18:01:38', NULL),
(66, 'Ringgits', 'MYR', 'RM', '2023-11-07 18:01:38', NULL),
(67, 'Rupees', 'MUR', '₨', '2023-11-07 18:01:38', NULL),
(68, 'Pesos', 'MXN', '$', '2023-11-07 18:01:38', NULL),
(69, 'Tugriks', 'MNT', '₮', '2023-11-07 18:01:38', NULL),
(70, 'Meticais', 'MZN', 'MT', '2023-11-07 18:01:38', NULL),
(71, 'Dollars', 'NAD', '$', '2023-11-07 18:01:38', NULL),
(72, 'Rupees', 'NPR', '₨', '2023-11-07 18:01:38', NULL),
(73, 'Guilders', 'ANG', 'ƒ', '2023-11-07 18:01:38', NULL),
(74, 'Dollars', 'NZD', '$', '2023-11-07 18:01:38', NULL),
(75, 'Cordobas', 'NIO', 'C$', '2023-11-07 18:01:38', NULL),
(76, 'Nairas', 'NGN', '₦', '2023-11-07 18:01:38', NULL),
(77, 'Krone', 'NOK', 'kr', '2023-11-07 18:01:38', NULL),
(78, 'Rials', 'OMR', '﷼', '2023-11-07 18:01:38', NULL),
(79, 'Rupees', 'PKR', '₨', '2023-11-07 18:01:38', NULL),
(80, 'Balboa', 'PAB', 'B/.', '2023-11-07 18:01:38', NULL),
(81, 'Guarani', 'PYG', 'Gs', '2023-11-07 18:01:38', NULL),
(82, 'Nuevos Soles', 'PEN', 'S/.', '2023-11-07 18:01:38', NULL),
(83, 'Pesos', 'PHP', 'Php', '2023-11-07 18:01:38', NULL),
(84, 'Zlotych', 'PLN', 'zł', '2023-11-07 18:01:38', NULL),
(85, 'Rials', 'QAR', '﷼', '2023-11-07 18:01:38', NULL),
(86, 'New Lei', 'RON', 'lei', '2023-11-07 18:01:38', NULL),
(87, 'Rubles', 'RUB', 'руб', '2023-11-07 18:01:38', NULL),
(88, 'Pounds', 'SHP', '£', '2023-11-07 18:01:38', NULL),
(89, 'Riyals', 'SAR', '﷼', '2023-11-07 18:01:38', NULL),
(90, 'Dinars', 'RSD', 'Дин.', '2023-11-07 18:01:38', NULL),
(91, 'Rupees', 'SCR', '₨', '2023-11-07 18:01:38', NULL),
(92, 'Dollars', 'SGD', '$', '2023-11-07 18:01:38', NULL),
(93, 'Dollars', 'SBD', '$', '2023-11-07 18:01:38', NULL),
(94, 'Shillings', 'SOS', 'S', '2023-11-07 18:01:38', NULL),
(95, 'Rand', 'ZAR', 'R', '2023-11-07 18:01:38', NULL),
(96, 'Rupees', 'LKR', '₨', '2023-11-07 18:01:38', NULL),
(97, 'Kronor', 'SEK', 'kr', '2023-11-07 18:01:38', NULL),
(98, 'Dollars', 'SRD', '$', '2023-11-07 18:01:38', NULL),
(99, 'Pounds', 'SYP', '£', '2023-11-07 18:01:38', NULL),
(100, 'New Dollars', 'TWD', 'NT$', '2023-11-07 18:01:38', NULL),
(101, 'Baht', 'THB', '฿', '2023-11-07 18:01:38', NULL),
(102, 'Dollars', 'TTD', 'TT$', '2023-11-07 18:01:38', NULL),
(103, 'Lira', 'TRY', '₺', '2023-11-07 18:01:38', NULL),
(104, 'Liras', 'TRL', '£', '2023-11-07 18:01:38', NULL),
(105, 'Dollars', 'TVD', '$', '2023-11-07 18:01:38', NULL),
(106, 'Hryvnia', 'UAH', '₴', '2023-11-07 18:01:38', NULL),
(107, 'Pesos', 'UYU', '$U', '2023-11-07 18:01:38', NULL),
(108, 'Sums', 'UZS', 'лв', '2023-11-07 18:01:38', NULL),
(109, 'Bolivares Fuertes', 'VEF', 'Bs', '2023-11-07 18:01:38', NULL),
(110, 'Dong', 'VND', '₫', '2023-11-07 18:01:38', NULL),
(111, 'Rials', 'YER', '﷼', '2023-11-07 18:01:38', NULL),
(112, 'Zimbabwe Dollars', 'ZWD', 'Z$', '2023-11-07 18:01:38', NULL),
(113, 'Rupees', 'INR', '₹', '2023-11-07 18:01:38', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `currency_alloweds`
--

CREATE TABLE `currency_alloweds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `currency_id` bigint(20) UNSIGNED NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Estrutura para tabela `custom_layouts`
--

CREATE TABLE `custom_layouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `font_family_default` varchar(191) DEFAULT NULL,
  `primary_color` varchar(20) NOT NULL DEFAULT '#0073D2',
  `primary_opacity_color` varchar(20) DEFAULT NULL,
  `secundary_color` varchar(20) NOT NULL DEFAULT '#084375',
  `gray_dark_color` varchar(20) NOT NULL DEFAULT '#3b3b3b',
  `gray_light_color` varchar(20) NOT NULL DEFAULT '#c9c9c9',
  `gray_medium_color` varchar(20) NOT NULL DEFAULT '#676767',
  `gray_over_color` varchar(20) NOT NULL DEFAULT '#1A1C20',
  `title_color` varchar(20) NOT NULL DEFAULT '#ffffff',
  `text_color` varchar(20) NOT NULL DEFAULT '#98A7B5',
  `sub_text_color` varchar(20) NOT NULL DEFAULT '#656E78',
  `placeholder_color` varchar(20) NOT NULL DEFAULT '#4D565E',
  `background_color` varchar(20) NOT NULL DEFAULT '#24262B',
  `background_base` varchar(20) DEFAULT '#ECEFF1',
  `background_base_dark` varchar(20) DEFAULT '#24262B',
  `carousel_banners` varchar(20) DEFAULT '#1E2024',
  `carousel_banners_dark` varchar(20) DEFAULT '#1E2024',
  `sidebar_color` varchar(20) DEFAULT NULL,
  `sidebar_color_dark` varchar(20) DEFAULT NULL,
  `navtop_color` varchar(20) DEFAULT NULL,
  `navtop_color_dark` varchar(20) DEFAULT NULL,
  `side_menu` varchar(20) DEFAULT NULL,
  `side_menu_dark` varchar(20) DEFAULT NULL,
  `input_primary` varchar(20) DEFAULT NULL,
  `input_primary_dark` varchar(20) DEFAULT NULL,
  `footer_color` varchar(20) DEFAULT NULL,
  `footer_color_dark` varchar(20) DEFAULT NULL,
  `card_color` varchar(20) DEFAULT NULL,
  `card_color_dark` varchar(20) DEFAULT NULL,
  `border_radius` varchar(20) NOT NULL DEFAULT '.25rem',
  `custom_css` text DEFAULT NULL,
  `custom_js` text DEFAULT NULL,
  `custom_header` longtext DEFAULT NULL,
  `custom_body` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `instagram` varchar(191) DEFAULT NULL,
  `facebook` varchar(191) DEFAULT NULL,
  `telegram` varchar(191) DEFAULT NULL,
  `twitter` varchar(191) DEFAULT NULL,
  `whastapp` varchar(191) DEFAULT NULL,
  `youtube` varchar(191) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `custom_layouts`
--

INSERT INTO `custom_layouts` (`id`, `font_family_default`, `primary_color`, `primary_opacity_color`, `secundary_color`, `gray_dark_color`, `gray_light_color`, `gray_medium_color`, `gray_over_color`, `title_color`, `text_color`, `sub_text_color`, `placeholder_color`, `background_color`, `background_base`, `background_base_dark`, `carousel_banners`, `carousel_banners_dark`, `sidebar_color`, `sidebar_color_dark`, `navtop_color`, `navtop_color_dark`, `side_menu`, `side_menu_dark`, `input_primary`, `input_primary_dark`, `footer_color`, `footer_color_dark`, `card_color`, `card_color_dark`, `border_radius`, `custom_css`, `custom_js`, `custom_header`, `custom_body`, `created_at`, `updated_at`, `instagram`, `facebook`, `telegram`, `twitter`, `whastapp`, `youtube`) VALUES
(1, '\'Roboto Condensed\', sans-serif', '#11422b', '#baaa08', '#186e46', '#3b3b3b', '#efefef', '#d4d4d4', '#191A1E', '#ffffff', '#98A7B5', '#d92020', '#4D565E', '#11422b', '#000000', '#11422b', '#080101', '#93727200', '#0f86fc', '#10a100', '#ffffff0e', '#0f1923', '#dbdbdb', '#0f1923', '#001cc2', '#ffffff', '#919191', '#0f1923', '#ffffff', '#1E2024', '.25rem', '\n', '<div class=\"w-full relative\">\n    <div class=\"text-[var(--theme-text-color)] font-bold my-[20px] text-[22px] w-full min-h-[24px] text-center leading-[1.3]\">\n        <span class=\"w-full -mb-[2.58824px] pb-[-2.58824px] text-[22px] inline-block leading-[0] overflow-hidden\">\n            <span class=\"text-[14.9067px] sm:text-[22px] inline-block w-full\">\n                <span class=\"leading-[1.2] [overflow:initial] text-center overflow-ellipsis align-middle\" style=\"-webkit-line-clamp: 5;\">\n                    🎁 Venha se Divertir no maior site do Brasil\n                </span>\n            </span>\n        </span>\n    </div>\n    <div class=\"text-[var(--theme-text-color)] pb-[20px] sm:pb-0 sm:h-[405px] text-[14px] leading-[1.56] text-left w-full\">\n        <div class=\"w-full h-full px-[30px]\">\n            <div class=\"sm:h-full overflow-x-hidden overflow-y-scroll [scrollbar-width:none]\">\n                <div class=\"my-scrollbar-content\">\n                    <div class=\"D4IXpi08hh8lVGgzIBUz\">\n                        <div>\n                            <p class=\"mb-0\">\n                                ✈️Clique no canal:\n                                <a href=\"https://t.me/\" target=\"_blank\" rel=\"noopener\">\n                                    <span style=\"color: #ffeb00;\">Telegram</span>\n                                </a>\n                                <br>📲Baixe o site oficial do APP:\n                                <a href=\"https://t.me/\" target=\"_blank\" rel=\"noopener\">\n                                    <span style=\"color: #ffeb00;\">Google.com</span>\n                                </a>\n                                <br>❤️Convide amigos e ganhe\n                                <span style=\"color: #ffeb00;\">10 mil</span>\n                                reais por dia não é sonho❤️\n                                <br>🎁Bônus de primeiro depósito para novos usuários\n                                <span style=\"color: #ffeb00;\">10%</span>\n                                <br>🎁 Bônus convite:\n                                <span style=\"color: #ffeb00;\">R$ 10</span>\n                                por pessoa\n                                <br>🎁 Convide amigos, compartilhe e ganhe dinheiro! Comissão\n                                <span style=\"color: #ffeb00;\"> até 2%</span>\n                                <br>🎁 Recompensas e privilégios de associação VIP de até\n                                <span style=\"color: #ffeb00;\">R$ 777.777</span>\n                                <br>👉 Passos: Visitar → Eventos/Promoções → Recomendar amigos → Receber/Receber\n                            </p>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n', '', '<a href=\"https://t.me/\" target=\"_blank\" class=\"float1\" id=\"float1\">\n  <img class=\"icon\" src=\"https://wordpress-731680-3807664.cloudwaysapps.com/wp-content/uploads/2024/04/ActiveImg7532580654847733-1.gif\"/>\n</a>\n<button class=\"close-btn\" onclick=\"hideFloat1()\"><i class=\"fa-regular fa-circle-xmark\"></i></button>\n\n<style>\n  :root {\n    --icon-color: #fff;\n    --icon-hover: #fff;\n    --background-color: #0060ff;\n    --background-hover: #0044b3;\n  }\n\n  .icon {\n    width: 110px;\n    height: 110px;\n    transform: scale(0.6) translate(15%, 28%);\n  }\n\n  .float1 {\n    position: fixed;\n    cursor: pointer;\n    width: 110px;\n    height: 110px;\n    bottom: 140px;\n    right: 0px;\n    transition: 1s;\n    z-index: 9000;\n  }\n\n  .close-btn {\n    position: fixed;\n    bottom: 200px; /* Ajuste conforme necessário */\n    right: 10px; /* Ajuste conforme necessário */\n    width: 20px;\n    height: 20px;\n   background-color: var(--ci-primary-color);\n    color: var(--ci-secundary-color);\n    border: none;\n    border-radius: 50%;\n    cursor: pointer;\n    z-index: 9001; /* Um nível acima da float2 */\n  }\n\n  .close-btn:hover {\n    background-color: var(--background-hover);\n  }\n\n  @keyframes pulse {\n    0% {\n      -webkit-box-shadow: 0 0 0 0 rgba(0, 96, 255, 1);\n    }\n\n    70% {\n      -webkit-box-shadow: 0 0 0 20px rgba(0, 96, 255, 0);\n    }\n\n    100% {\n      -webkit-box-shadow: 0 0 0 0 rgba(0, 96, 255, 0);\n    }\n  }\n\n\n</style>\n\n<script>\n  function hideFloat1() {\n    document.getElementById(\'float1\').style.display = \'none\';\n    document.querySelector(\'.close-btn\').style.display = \'none\';\n  }\n</script>\n\n<a href=\"/home/agents\" class=\"float2\" id=\"float2\">\n  <img class=\"icon\" src=\"/storage/rox/rox_gif_post.gif\"/>\n</a>\n<button class=\"close-btn2\" onclick=\"hideFloat2()\"><i class=\"fa-regular fa-circle-xmark\"></i></button>\n\n<style>\n  :root {\n    --icon-color: #fff;\n    --icon-hover: #fff;\n    --background-color: #0060ff;\n    --background-hover: #0044b3;\n  }\n\n \n  .float2 {\n    position: fixed;\n    cursor: pointer;\n    width: 110px;\n    height: 110px;\n    bottom: 230px;\n    right: 5px;\n    transition: 1s;\n    z-index: 9000;\n  }\n\n  .close-btn2 {\n    position: fixed;\n    bottom: 280px; /* Ajuste conforme necessário */\n    right: 10px; /* Ajuste conforme necessário */\n    width: 20px;\n    height: 20px;\n    background-color: var(--ci-primary-color);\n    color: var(--ci-secundary-color);\n    border: none;\n    border-radius: 50%;\n    cursor: pointer;\n    z-index: 9001; /* Um nível acima da float2 */\n  }\n\n  .close-btn2:hover {\n    background-color: var(--background-hover);\n  }\n\n\n\n\n</style>\n\n<script>\n  function hideFloat2() {\n    document.getElementById(\'float2\').style.display = \'none\';\n    document.querySelector(\'.close-btn2\').style.display = \'none\';\n  }\n</script>\n\n', '2024-01-01 14:36:03', '2024-07-09 13:54:17', 'https://t.me/eumsoficial', 'https://t.me/eumsoficial', 'https://t.me/eumsoficial', 'https://twitter.com/', 'https://api.whatsapp.com/', 'https://www.youtube.com/');

-- --------------------------------------------------------

--
-- Estrutura para tabela `debug`
--

CREATE TABLE `debug` (
  `text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `debug`
--

INSERT INTO `debug` (`text`) VALUES
('\"PlaceBet: 914806915\"'),
('\"PlaceBet: 914806915\"'),
('\"AwardWinnings: 914806915\"'),
('\"PlaceBet: 914806916\"'),
('\"AwardWinnings: 914806916\"'),
('\"PlaceBet: 914806916\"'),
('\"PlaceBet: 914806917\"'),
('\"PlaceBet: 914806918\"'),
('\"AwardWinnings: 914806918\"'),
('\"PlaceBet: 914806918\"'),
('\"PlaceBet: 914806919\"'),
('\"AwardWinnings: 914806919\"'),
('\"AwardWinnings: 914806919\"'),
('\"PlaceBet: 914806920\"'),
('\"PlaceBet: 914806921\"'),
('\"AwardWinnings: 914806921\"'),
('\"PlaceBet: 535367\"'),
('\"PlaceBet: 154646\"'),
('\"PlaceBet: 914806922\"'),
('\"PlaceBet: 914806923\"'),
('\"PlaceBet: 914806924\"'),
('\"AwardWinnings: 914806924\"'),
('{\"idTransaction\":\"875dcfac-f963-4a70-90ef-ad3c357d3f7b\",\"typeTransaction\":\"PIX_CASHOUT\",\"statusTransaction\":\"PAID_OUT\",\"value\":150,\"destinationName\":\"Julia Ayumi Imada De Lima\",\"destinationTaxId\":\"***.373.478-**\",\"destinationBank\":\"PICPAY\"}'),
('{\"idTransaction\":\"1979e952-67cb-4924-a463-b79e2716804b\",\"typeTransaction\":\"PIX_CASHOUT\",\"statusTransaction\":\"PAID_OUT\",\"value\":177,\"destinationName\":\"Anne Ferreira\",\"destinationTaxId\":\"***.916.418-**\",\"destinationBank\":\"NUBANK\"}'),
('{\"idTransaction\":\"ec707f26-d5b9-4d0b-85cf-56a4d518144b\",\"typeTransaction\":\"PIX_CASHOUT\",\"statusTransaction\":\"PAID_OUT\",\"value\":181,\"destinationName\":\"Anne Ferreira\",\"destinationTaxId\":\"***.916.418-**\",\"destinationBank\":\"NUBANK\"}');

-- --------------------------------------------------------

--
-- Estrutura para tabela `deposits`
--

CREATE TABLE `deposits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` varchar(191) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(20,2) NOT NULL DEFAULT 0.00,
  `type` varchar(191) NOT NULL,
  `proof` varchar(191) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `currency` varchar(50) DEFAULT NULL,
  `symbol` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `deposits`
--

INSERT INTO `deposits` (`id`, `payment_id`, `user_id`, `amount`, `type`, `proof`, `status`, `currency`, `symbol`, `created_at`, `updated_at`) VALUES
(154, '9f9b0ca4-3352-4324-9342-01a11555cf1a', 273, 10.00, 'pix', NULL, 1, 'BRL', 'R$', '2024-07-06 23:35:32', '2024-07-06 23:37:56'),
(155, '9075c0d0-517c-4fbf-9ad7-511c8ab56860', 274, 10.00, 'pix', NULL, 1, 'BRL', 'R$', '2024-07-06 23:49:21', '2024-07-06 23:50:10'),
(156, '7b2cfc13-6c13-4e6e-a283-bb8394f8abd5', 275, 10.00, 'pix', NULL, 1, 'BRL', 'R$', '2024-07-07 01:14:55', '2024-07-07 01:17:03'),
(157, 'f40961db-21f9-424c-8c80-ec53363cf8aa', 276, 30.00, 'pix', NULL, 1, 'BRL', 'R$', '2024-07-07 01:49:30', '2024-07-07 01:52:11'),
(158, '6c5b6fe3-d9bc-465d-8d93-445d85c59692', 277, 30.00, 'pix', NULL, 1, 'BRL', 'R$', '2024-07-07 09:35:27', '2024-07-07 09:36:11'),
(159, 'cd9f9454-c455-42dc-a5e6-cc9bcc51a002', 278, 50.00, 'pix', NULL, 1, 'BRL', 'R$', '2024-07-07 12:41:03', '2024-07-07 12:41:22'),
(160, '1caff4fa-cd20-4c75-abf2-b93ace6ec517', 280, 50.00, 'pix', NULL, 1, 'BRL', 'R$', '2024-07-07 16:02:27', '2024-07-07 16:02:27'),
(162, 'a5942582-b1c4-44d6-bd31-e926c8a08dad', 281, 50.00, 'pix', NULL, 1, 'BRL', 'R$', '2024-07-07 17:15:16', '2024-07-07 17:15:34'),
(163, '7c9fd14f-7e4d-41c0-a8e8-a74aee91e66c', 282, 50.00, 'pix', NULL, 1, 'BRL', 'R$', '2024-07-07 17:25:29', '2024-07-07 17:25:55'),
(164, 'a35f8859-41ae-4193-a46a-62af996eaee6', 283, 50.00, 'pix', NULL, 1, 'BRL', 'R$', '2024-07-07 17:30:08', '2024-07-07 17:30:27'),
(165, '9fff863e-80d5-4fa1-b6de-f6c1aabaadcc', 284, 50.00, 'pix', NULL, 1, 'BRL', 'R$', '2024-07-07 17:35:35', '2024-07-07 17:35:58'),
(166, 'c9d2cab6-337e-4f3a-9964-25cbbf95e643', 285, 50.00, 'pix', NULL, 1, 'BRL', 'R$', '2024-07-07 17:54:39', '2024-07-07 17:55:24'),
(167, 'e96d2922-84b7-4e8f-8852-b9eb000078d4', 286, 50.00, 'pix', NULL, 1, 'BRL', 'R$', '2024-07-07 17:58:10', '2024-07-07 17:58:34'),
(168, '8a8eda9e-0292-41bb-a33b-452f7ab1c997', 287, 50.00, 'pix', NULL, 1, 'BRL', 'R$', '2024-07-07 18:05:06', '2024-07-07 18:05:26'),
(169, '71475e63-8873-4f3f-9e9e-a737db77e489', 288, 50.00, 'pix', NULL, 1, 'BRL', 'R$', '2024-07-07 18:08:10', '2024-07-07 18:08:36'),
(170, '91d84886-018c-4e0e-acbb-f4062726f073', 289, 50.00, 'pix', NULL, 1, 'BRL', 'R$', '2024-07-09 11:19:23', '2024-07-09 11:19:23');

-- --------------------------------------------------------

--
-- Estrutura para tabela `digito_pay_payments`
--

CREATE TABLE `digito_pay_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` varchar(191) DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `withdrawal_id` int(10) UNSIGNED NOT NULL,
  `pix_key` varchar(191) NOT NULL,
  `pix_type` varchar(191) NOT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `observation` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `games`
--

CREATE TABLE `games` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `provider_id` int(10) UNSIGNED NOT NULL,
  `game_server_url` varchar(191) DEFAULT NULL,
  `game_id` varchar(191) NOT NULL,
  `game_name` varchar(191) NOT NULL,
  `game_code` varchar(191) NOT NULL,
  `game_type` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `cover` varchar(191) DEFAULT NULL,
  `status` varchar(191) NOT NULL,
  `technology` varchar(191) DEFAULT NULL,
  `has_lobby` tinyint(4) NOT NULL DEFAULT 0,
  `is_mobile` tinyint(4) NOT NULL DEFAULT 0,
  `has_freespins` tinyint(4) NOT NULL DEFAULT 0,
  `has_tables` tinyint(4) NOT NULL DEFAULT 0,
  `only_demo` tinyint(4) DEFAULT 0,
  `rtp` bigint(20) NOT NULL COMMENT 'Controle de RTP em porcentagem',
  `distribution` varchar(191) NOT NULL COMMENT 'O nome do provedor',
  `views` bigint(20) NOT NULL DEFAULT 0,
  `is_featured` tinyint(1) DEFAULT 0,
  `show_home` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `games`
--

INSERT INTO `games` (`id`, `provider_id`, `game_server_url`, `game_id`, `game_name`, `game_code`, `game_type`, `description`, `cover`, `status`, `technology`, `has_lobby`, `is_mobile`, `has_freespins`, `has_tables`, `only_demo`, `rtp`, `distribution`, `views`, `is_featured`, `show_home`, `created_at`, `updated_at`) VALUES
(1, 164, NULL, '48', 'Double Fortune', '48', 'slot', NULL, '01J1D491Q29HGFV5C1PTRMBNF2.jpg', '1', NULL, 0, 0, 0, 0, 0, 90, 'renan', 100, 1, 1, '2024-06-26 18:15:16', '2024-07-09 13:55:35'),
(2, 164, NULL, '42', 'Ganesha Gold', '42', 'slot', NULL, '01J1D48FYP54MWCEA99PMKA5KG.jpg', '1', NULL, 0, 0, 0, 0, 0, 90, 'fivers', 272, 1, 1, '2024-06-26 18:21:11', '2024-07-09 13:55:33'),
(3, 164, NULL, '63', 'Dragon Tiger Luck', '63', 'slot', NULL, '01J1D47X4J6E99V1S9GJS2FWF7.jpg', '1', NULL, 0, 0, 0, 0, 0, 90, 'renan', 6, 1, 1, '2024-06-26 18:22:54', '2024-07-09 13:55:29'),
(4, 164, NULL, '40', 'Jungle Delight', '40', 'slot', NULL, '01J1D4719PT2EZBDQZYMF1EQ31.jpg', '1', NULL, 0, 0, 0, 0, 0, 90, 'renan', 10, 1, 1, '2024-06-26 18:23:42', '2024-07-09 13:55:28'),
(5, 164, NULL, '69', 'Bikini Paradise', '69', 'slot', NULL, '01J1D46FHEPTSGDH71Z5Z6KZA7.jpg', '1', NULL, 0, 0, 0, 0, 0, 90, 'renan', 160, 1, 1, '2024-06-26 18:25:02', '2024-07-09 13:55:26'),
(6, 164, NULL, '68', 'Fortune Mouse', '68', 'slot', NULL, '01J1D45Y482BBXBM7RYBAG4TEG.avif', '1', NULL, 0, 0, 0, 0, 0, 90, 'renan', 267, 1, 1, '2024-06-26 18:26:01', '2024-07-09 22:23:43'),
(7, 164, NULL, '98', 'Fortune OX', '98', 'slot', NULL, '01J1D456G9KWD75JW8WW5SCJCS.avif', '1', NULL, 0, 0, 0, 0, 0, 90, 'renan', 9, 1, 1, '2024-06-26 18:26:32', '2024-07-09 22:22:38'),
(8, 164, NULL, '1543462', 'Fortune Rabbit', '1543462', 'slot', NULL, '01J1D44M2DZ70NXGXAJG4VA84F.avif', '1', NULL, 0, 0, 0, 0, 0, 90, 'renan', 205, 1, 1, '2024-06-26 18:27:22', '2024-07-09 13:55:21'),
(9, 164, NULL, '1695365', 'Fortune Dragon', '1695365', 'slot', NULL, '01J1D440FJPF57J40W92DWGKDE.avif', '1', NULL, 0, 0, 0, 0, 0, 90, 'renan', 278, 1, 1, '2024-06-26 18:28:11', '2024-07-09 14:12:12'),
(10, 164, NULL, '126', 'Fortune Tiger', '126', 'slot, fish', NULL, '01J1D43AFWYG2PWS9ZZ58HK01J.avif', '1', NULL, 0, 0, 0, 0, 0, 90, 'renan', 100000049, 1, 1, '2024-06-26 18:28:53', '2024-07-10 11:25:07'),
(11, 164, NULL, '1682240', 'Cash Mania', '1682240', 'slot', NULL, '01J2C7YKQ51VYMT62JAGYQN2A1.webp', '1', NULL, 0, 0, 0, 0, 0, 90, 'renan', 0, 1, 1, '2024-07-06 20:55:43', '2024-07-09 14:16:38'),
(12, 164, NULL, '1738001', 'Chicky Run', '1738001', 'slot', NULL, '01J2C804T77P979Y936GNGBGSG.webp', '1', NULL, 0, 0, 0, 0, 0, 90, 'renan', 3, 1, 1, '2024-07-06 20:56:20', '2024-07-10 11:25:48');

-- --------------------------------------------------------

--
-- Estrutura para tabela `games_keys`
--

CREATE TABLE `games_keys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `merchant_url` varchar(191) DEFAULT NULL,
  `merchant_id` varchar(191) DEFAULT NULL,
  `merchant_key` varchar(191) DEFAULT NULL,
  `agent_code` varchar(255) DEFAULT NULL,
  `agent_token` varchar(255) DEFAULT NULL,
  `agent_secret_key` varchar(255) DEFAULT NULL,
  `api_endpoint` varchar(255) DEFAULT NULL,
  `salsa_base_uri` varchar(255) DEFAULT NULL,
  `salsa_pn` varchar(255) DEFAULT NULL,
  `salsa_key` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vibra_site_id` varchar(191) DEFAULT NULL,
  `vibra_game_mode` varchar(191) DEFAULT NULL,
  `worldslot_agent_code` varchar(191) DEFAULT NULL,
  `worldslot_agent_token` varchar(191) DEFAULT NULL,
  `worldslot_agent_secret_key` varchar(191) DEFAULT NULL,
  `worldslot_api_endpoint` varchar(191) NOT NULL DEFAULT 'https://api.worldslotgame.com/api/v2/',
  `games2_agent_code` varchar(191) DEFAULT NULL,
  `games2_agent_token` varchar(191) DEFAULT NULL,
  `games2_agent_secret_key` varchar(191) DEFAULT NULL,
  `games2_api_endpoint` varchar(191) NOT NULL DEFAULT 'api.games2api.xyz',
  `evergame_agent_code` varchar(191) DEFAULT NULL,
  `evergame_agent_token` varchar(191) DEFAULT NULL,
  `evergame_api_endpoint` varchar(191) DEFAULT NULL,
  `venix_agent_code` varchar(191) DEFAULT NULL,
  `venix_agent_token` varchar(191) DEFAULT NULL,
  `venix_agent_secret` varchar(191) DEFAULT NULL,
  `play_gaming_hall` varchar(191) DEFAULT NULL,
  `play_gaming_key` varchar(191) DEFAULT NULL,
  `play_gaming_login` varchar(191) DEFAULT NULL,
  `pig_agent_code` varchar(191) DEFAULT NULL,
  `pig_agent_token` varchar(191) DEFAULT NULL,
  `pig_agent_secret` varchar(191) DEFAULT NULL,
  `imperium_games_hall` varchar(191) DEFAULT NULL,
  `imperium_games_key` varchar(191) DEFAULT NULL,
  `imperium_games_login` varchar(191) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `games_keys`
--

INSERT INTO `games_keys` (`id`, `merchant_url`, `merchant_id`, `merchant_key`, `agent_code`, `agent_token`, `agent_secret_key`, `api_endpoint`, `salsa_base_uri`, `salsa_pn`, `salsa_key`, `created_at`, `updated_at`, `vibra_site_id`, `vibra_game_mode`, `worldslot_agent_code`, `worldslot_agent_token`, `worldslot_agent_secret_key`, `worldslot_api_endpoint`, `games2_agent_code`, `games2_agent_token`, `games2_agent_secret_key`, `games2_api_endpoint`, `evergame_agent_code`, `evergame_agent_token`, `evergame_api_endpoint`, `venix_agent_code`, `venix_agent_token`, `venix_agent_secret`, `play_gaming_hall`, `play_gaming_key`, `play_gaming_login`, `pig_agent_code`, `pig_agent_token`, `pig_agent_secret`, `imperium_games_hall`, `imperium_games_key`, `imperium_games_login`) VALUES
(1, 'https://gis.slotegrator.com/api/index.php/v1', NULL, NULL, NULL, NULL, NULL, 'https://api.fiverscool.com', NULL, NULL, NULL, '2023-11-30 18:03:08', '2024-06-26 17:37:42', NULL, NULL, '2as', '0ad6540a2b2a812d74c036e35c3c18e9', '16600838288af7d55a8be1ec86f13e1e', 'https://api.worldslotgame.com/api/v2/', NULL, NULL, NULL, 'https://api.games2api.xyz', 'daanrox', '3262366c767a74743162783875797874', 'https://api.evergame.org/api/casinoapi', '', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `game_favorites`
--

CREATE TABLE `game_favorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `game_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Estrutura para tabela `game_likes`
--

CREATE TABLE `game_likes` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `game_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Estrutura para tabela `game_reviews`
--

CREATE TABLE `game_reviews` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `game_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(191) NOT NULL,
  `rating` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `gateways`
--

CREATE TABLE `gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `suitpay_uri` varchar(191) DEFAULT NULL,
  `suitpay_cliente_id` varchar(191) DEFAULT NULL,
  `suitpay_cliente_secret` varchar(191) DEFAULT NULL,
  `stripe_production` tinyint(4) DEFAULT 0,
  `stripe_public_key` varchar(255) DEFAULT NULL,
  `stripe_secret_key` varchar(255) DEFAULT NULL,
  `stripe_webhook_key` varchar(255) DEFAULT NULL,
  `bspay_uri` varchar(255) DEFAULT NULL,
  `bspay_cliente_id` varchar(255) DEFAULT NULL,
  `bspay_cliente_secret` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `public_key` varchar(191) DEFAULT NULL,
  `private_key` varchar(191) DEFAULT NULL,
  `mp_client_id` varchar(191) DEFAULT NULL,
  `mp_client_secret` varchar(191) DEFAULT NULL,
  `mp_public_key` varchar(191) DEFAULT NULL,
  `mp_access_token` varchar(191) DEFAULT NULL,
  `digitopay_uri` varchar(191) DEFAULT NULL,
  `digitopay_cliente_id` varchar(191) DEFAULT NULL,
  `digitopay_cliente_secret` varchar(191) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `gateways`
--

INSERT INTO `gateways` (`id`, `suitpay_uri`, `suitpay_cliente_id`, `suitpay_cliente_secret`, `stripe_production`, `stripe_public_key`, `stripe_secret_key`, `stripe_webhook_key`, `bspay_uri`, `bspay_cliente_id`, `bspay_cliente_secret`, `created_at`, `updated_at`, `public_key`, `private_key`, `mp_client_id`, `mp_client_secret`, `mp_public_key`, `mp_access_token`, `digitopay_uri`, `digitopay_cliente_id`, `digitopay_cliente_secret`) VALUES
(1, 'https://ws.suitpay.app/api/v1/', 'eumatheussoares_1698847527170', '6be2a8ca915a15315c6eb28912d5d0fa2534c989e0d54aa2409ac53c7dc778d7c4a813e593d8450e82ae03b4a456126d', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-30 21:05:51', '2024-07-06 21:03:09', NULL, NULL, NULL, NULL, NULL, NULL, 'https://api.digitopayoficial.com.br/', '', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `ggds_spin_config`
--

CREATE TABLE `ggds_spin_config` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prizes` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Despejando dados para a tabela `ggds_spin_config`
--

INSERT INTO `ggds_spin_config` (`id`, `prizes`, `created_at`, `updated_at`) VALUES
(1, '[{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":0},{\"currency\":\"BRL\",\"value\":1},{\"currency\":\"BRL\",\"value\":0},{\"currency\":\"BRL\",\"value\":2},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":0},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":1},{\"currency\":\"BRL\",\"value\":0},{\"currency\":\"BRL\",\"value\":3},{\"currency\":\"BRL\",\"value\":0},{\"currency\":\"BRL\",\"value\":1},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":0},{\"currency\":\"BRL\",\"value\":10}]', '2024-01-11 20:52:59', '2024-04-13 11:07:31');

-- --------------------------------------------------------

--
-- Estrutura para tabela `ggds_spin_runs`
--

CREATE TABLE `ggds_spin_runs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `nonce` varchar(255) NOT NULL,
  `possibilities` text NOT NULL,
  `prize` varchar(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Despejando dados para a tabela `ggds_spin_runs`
--

INSERT INTO `ggds_spin_runs` (`id`, `key`, `nonce`, `possibilities`, `prize`, `created_at`, `updated_at`) VALUES
(1, '526db7d417473d56275f7dffa72c0c3382aa76df7adcfe7216951fca7dc5e810', '11bea414-f850-460a-91d2-a9703e47ca2e', '[{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":10},{\"currency\":\"BRL\",\"value\":25},{\"currency\":\"BRL\",\"value\":30},{\"currency\":\"BRL\",\"value\":40},{\"currency\":\"BRL\",\"value\":50},{\"currency\":\"BRL\",\"value\":90},{\"currency\":\"BRL\",\"value\":100},{\"currency\":\"BRL\",\"value\":140},{\"currency\":\"BRL\",\"value\":15},{\"currency\":\"BRL\",\"value\":30},{\"currency\":\"BRL\",\"value\":500},{\"currency\":\"BRL\",\"value\":1000},{\"currency\":\"BRL\",\"value\":1500},{\"currency\":\"BRL\",\"value\":2000},{\"currency\":\"BRL\",\"value\":2500}]', '{\"currency\":\"BRL\",\"value\":15}', '2024-06-10 21:48:09', '2024-06-10 21:48:09'),
(2, '2c35774a073f9e945a91b9b12b5147639cca66234af69b34b0d6656595372c96', '2b712589-b2ad-40af-82c3-ea01fec5f308', '[{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":10},{\"currency\":\"BRL\",\"value\":25},{\"currency\":\"BRL\",\"value\":30},{\"currency\":\"BRL\",\"value\":40},{\"currency\":\"BRL\",\"value\":50},{\"currency\":\"BRL\",\"value\":90},{\"currency\":\"BRL\",\"value\":100},{\"currency\":\"BRL\",\"value\":140},{\"currency\":\"BRL\",\"value\":15},{\"currency\":\"BRL\",\"value\":30},{\"currency\":\"BRL\",\"value\":500},{\"currency\":\"BRL\",\"value\":1000},{\"currency\":\"BRL\",\"value\":1500},{\"currency\":\"BRL\",\"value\":2000},{\"currency\":\"BRL\",\"value\":2500}]', '{\"currency\":\"BRL\",\"value\":5}', '2024-06-10 21:48:20', '2024-06-10 21:48:20');

-- --------------------------------------------------------

--
-- Estrutura para tabela `ggr_games`
--

CREATE TABLE `ggr_games` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `provider` varchar(191) NOT NULL,
  `game` varchar(191) NOT NULL,
  `balance_bet` decimal(20,2) NOT NULL DEFAULT 0.00,
  `balance_win` decimal(20,2) NOT NULL DEFAULT 0.00,
  `currency` varchar(50) DEFAULT NULL,
  `aggregator` varchar(255) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `ggr_games`
--

INSERT INTO `ggr_games` (`id`, `user_id`, `provider`, `game`, `balance_bet`, `balance_win`, `currency`, `aggregator`, `type`, `created_at`, `updated_at`) VALUES
(27, 272, 'PGSOFT', 'fortune-tiger', 0.40, 0.64, 'BRL', 'wordslot', 'win', '2024-07-06 23:10:30', '2024-07-06 23:10:30'),
(28, 272, 'PGSOFT', 'fortune-tiger', 0.40, 400.00, 'BRL', 'wordslot', 'win', '2024-07-06 23:10:46', '2024-07-06 23:10:46'),
(29, 272, 'PGSOFT', 'fortune-tiger', 250.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:11:21', '2024-07-06 23:11:21'),
(30, 272, 'PGSOFT', 'fortune-tiger', 150.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:11:26', '2024-07-06 23:11:26'),
(31, 272, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:11:38', '2024-07-06 23:11:38'),
(32, 272, 'PGSOFT', 'fortune-tiger', 0.80, 0.48, 'BRL', 'wordslot', 'loss', '2024-07-06 23:11:39', '2024-07-06 23:11:39'),
(33, 272, 'PGSOFT', 'fortune-tiger', 0.40, 12.00, 'BRL', 'wordslot', 'win', '2024-07-06 23:11:50', '2024-07-06 23:11:50'),
(34, 272, 'PGSOFT', 'fortune-tiger', 0.40, 0.40, 'BRL', 'wordslot', 'loss', '2024-07-06 23:12:01', '2024-07-06 23:12:01'),
(35, 272, 'PGSOFT', 'fortune-tiger', 0.40, 40.00, 'BRL', 'wordslot', 'win', '2024-07-06 23:12:12', '2024-07-06 23:12:12'),
(36, 272, 'PGSOFT', 'fortune-tiger', 0.80, 0.48, 'BRL', 'wordslot', 'loss', '2024-07-06 23:12:25', '2024-07-06 23:12:25'),
(37, 272, 'PGSOFT', 'fortune-tiger', 1.20, 120.00, 'BRL', 'wordslot', 'win', '2024-07-06 23:12:39', '2024-07-06 23:12:39'),
(38, 273, 'PGSOFT', 'fortune-tiger', 0.40, 1.20, 'BRL', 'wordslot', 'win', '2024-07-06 23:39:42', '2024-07-06 23:39:42'),
(39, 273, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:39:58', '2024-07-06 23:39:58'),
(40, 273, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:40:04', '2024-07-06 23:40:04'),
(41, 273, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:40:09', '2024-07-06 23:40:09'),
(42, 273, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:40:14', '2024-07-06 23:40:14'),
(43, 273, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:40:20', '2024-07-06 23:40:20'),
(44, 273, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:40:24', '2024-07-06 23:40:24'),
(45, 273, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:42:15', '2024-07-06 23:42:15'),
(46, 273, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:42:25', '2024-07-06 23:42:25'),
(47, 273, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:42:27', '2024-07-06 23:42:27'),
(48, 273, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:42:30', '2024-07-06 23:42:30'),
(49, 273, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:42:33', '2024-07-06 23:42:33'),
(50, 273, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:42:35', '2024-07-06 23:42:35'),
(51, 273, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:42:38', '2024-07-06 23:42:38'),
(52, 273, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:42:45', '2024-07-06 23:42:45'),
(53, 273, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:42:49', '2024-07-06 23:42:49'),
(54, 273, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:42:51', '2024-07-06 23:42:51'),
(55, 273, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:43:45', '2024-07-06 23:43:45'),
(56, 273, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:43:49', '2024-07-06 23:43:49'),
(57, 273, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:43:52', '2024-07-06 23:43:52'),
(58, 273, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:43:55', '2024-07-06 23:43:55'),
(59, 273, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:44:01', '2024-07-06 23:44:01'),
(60, 273, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:44:59', '2024-07-06 23:44:59'),
(61, 273, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:45:04', '2024-07-06 23:45:04'),
(62, 273, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:45:09', '2024-07-06 23:45:09'),
(63, 273, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:45:12', '2024-07-06 23:45:12'),
(64, 273, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:45:15', '2024-07-06 23:45:15'),
(65, 273, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:45:20', '2024-07-06 23:45:20'),
(66, 273, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:45:24', '2024-07-06 23:45:24'),
(67, 273, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:45:28', '2024-07-06 23:45:28'),
(68, 273, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:46:16', '2024-07-06 23:46:16'),
(69, 274, 'PGSOFT', 'fortune-rabbit', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:51:27', '2024-07-06 23:51:27'),
(70, 274, 'PGSOFT', 'fortune-rabbit', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:51:29', '2024-07-06 23:51:29'),
(71, 274, 'PGSOFT', 'fortune-rabbit', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:51:32', '2024-07-06 23:51:32'),
(72, 274, 'PGSOFT', 'fortune-rabbit', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:51:34', '2024-07-06 23:51:34'),
(73, 274, 'PGSOFT', 'fortune-rabbit', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:51:37', '2024-07-06 23:51:37'),
(74, 274, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:53:34', '2024-07-06 23:53:34'),
(75, 274, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:53:37', '2024-07-06 23:53:37'),
(76, 274, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:53:39', '2024-07-06 23:53:39'),
(77, 274, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:53:41', '2024-07-06 23:53:41'),
(78, 274, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:53:42', '2024-07-06 23:53:42'),
(79, 274, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:53:43', '2024-07-06 23:53:43'),
(80, 274, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:53:48', '2024-07-06 23:53:48'),
(81, 274, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:53:49', '2024-07-06 23:53:49'),
(82, 274, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:53:50', '2024-07-06 23:53:50'),
(83, 274, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:53:51', '2024-07-06 23:53:51'),
(84, 274, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:53:52', '2024-07-06 23:53:52'),
(85, 274, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:53:54', '2024-07-06 23:53:54'),
(86, 274, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:53:55', '2024-07-06 23:53:55'),
(87, 274, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:53:57', '2024-07-06 23:53:57'),
(88, 274, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:53:58', '2024-07-06 23:53:58'),
(89, 274, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:53:59', '2024-07-06 23:53:59'),
(90, 274, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:54:00', '2024-07-06 23:54:00'),
(91, 274, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:54:01', '2024-07-06 23:54:01'),
(92, 274, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:54:02', '2024-07-06 23:54:02'),
(93, 274, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:54:03', '2024-07-06 23:54:03'),
(94, 274, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:54:04', '2024-07-06 23:54:04'),
(95, 274, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:54:05', '2024-07-06 23:54:05'),
(96, 274, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:54:06', '2024-07-06 23:54:06'),
(97, 274, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-06 23:54:08', '2024-07-06 23:54:08'),
(98, 275, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:18:34', '2024-07-07 01:18:34'),
(99, 275, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:18:39', '2024-07-07 01:18:39'),
(100, 275, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:18:46', '2024-07-07 01:18:46'),
(101, 275, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:18:53', '2024-07-07 01:18:53'),
(102, 275, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:19:01', '2024-07-07 01:19:01'),
(103, 275, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:19:10', '2024-07-07 01:19:10'),
(104, 275, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:19:16', '2024-07-07 01:19:16'),
(105, 275, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:19:22', '2024-07-07 01:19:22'),
(106, 275, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:19:32', '2024-07-07 01:19:32'),
(107, 275, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:19:51', '2024-07-07 01:19:51'),
(108, 275, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:19:58', '2024-07-07 01:19:58'),
(109, 275, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:20:10', '2024-07-07 01:20:10'),
(110, 275, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:20:16', '2024-07-07 01:20:16'),
(111, 275, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:20:21', '2024-07-07 01:20:21'),
(112, 275, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:20:29', '2024-07-07 01:20:29'),
(113, 275, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:20:40', '2024-07-07 01:20:40'),
(114, 275, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:20:50', '2024-07-07 01:20:50'),
(115, 275, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:20:56', '2024-07-07 01:20:56'),
(116, 275, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:21:00', '2024-07-07 01:21:00'),
(117, 275, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:21:04', '2024-07-07 01:21:04'),
(118, 275, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:21:10', '2024-07-07 01:21:10'),
(119, 275, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:21:15', '2024-07-07 01:21:15'),
(120, 275, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:21:21', '2024-07-07 01:21:21'),
(121, 275, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:21:26', '2024-07-07 01:21:26'),
(122, 275, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:21:32', '2024-07-07 01:21:32'),
(123, 275, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:21:40', '2024-07-07 01:21:40'),
(124, 275, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:21:44', '2024-07-07 01:21:44'),
(125, 275, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:21:47', '2024-07-07 01:21:47'),
(126, 275, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:21:49', '2024-07-07 01:21:49'),
(127, 275, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:21:52', '2024-07-07 01:21:52'),
(128, 275, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:21:55', '2024-07-07 01:21:55'),
(129, 276, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:54:32', '2024-07-07 01:54:32'),
(130, 276, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:54:33', '2024-07-07 01:54:33'),
(131, 276, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:54:34', '2024-07-07 01:54:34'),
(132, 276, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:54:36', '2024-07-07 01:54:36'),
(133, 276, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:54:37', '2024-07-07 01:54:37'),
(134, 276, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:54:39', '2024-07-07 01:54:39'),
(135, 276, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:54:40', '2024-07-07 01:54:40'),
(136, 276, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:54:42', '2024-07-07 01:54:42'),
(137, 276, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:54:43', '2024-07-07 01:54:43'),
(138, 276, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:54:44', '2024-07-07 01:54:44'),
(139, 276, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:54:46', '2024-07-07 01:54:46'),
(140, 276, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:54:47', '2024-07-07 01:54:47'),
(141, 276, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:54:49', '2024-07-07 01:54:49'),
(142, 276, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:54:51', '2024-07-07 01:54:51'),
(143, 276, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:54:53', '2024-07-07 01:54:53'),
(144, 276, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:54:54', '2024-07-07 01:54:54'),
(145, 276, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:54:57', '2024-07-07 01:54:57'),
(146, 276, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:55:01', '2024-07-07 01:55:01'),
(147, 276, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:55:02', '2024-07-07 01:55:02'),
(148, 276, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:55:03', '2024-07-07 01:55:03'),
(149, 276, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:55:05', '2024-07-07 01:55:05'),
(150, 276, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:55:06', '2024-07-07 01:55:06'),
(151, 276, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:55:07', '2024-07-07 01:55:07'),
(152, 276, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:55:09', '2024-07-07 01:55:09'),
(153, 276, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:55:10', '2024-07-07 01:55:10'),
(154, 276, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:55:14', '2024-07-07 01:55:14'),
(155, 276, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:55:15', '2024-07-07 01:55:15'),
(156, 276, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:55:18', '2024-07-07 01:55:18'),
(157, 276, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:55:19', '2024-07-07 01:55:19'),
(158, 276, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:55:21', '2024-07-07 01:55:21'),
(159, 276, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:55:25', '2024-07-07 01:55:25'),
(160, 276, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:55:27', '2024-07-07 01:55:27'),
(161, 276, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:55:28', '2024-07-07 01:55:28'),
(162, 276, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:55:30', '2024-07-07 01:55:30'),
(163, 276, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:55:32', '2024-07-07 01:55:32'),
(164, 276, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:55:34', '2024-07-07 01:55:34'),
(165, 276, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:55:35', '2024-07-07 01:55:35'),
(166, 276, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:55:37', '2024-07-07 01:55:37'),
(167, 276, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:55:38', '2024-07-07 01:55:38'),
(168, 276, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:55:39', '2024-07-07 01:55:39'),
(169, 276, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:55:41', '2024-07-07 01:55:41'),
(170, 276, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:55:42', '2024-07-07 01:55:42'),
(171, 276, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:55:44', '2024-07-07 01:55:44'),
(172, 276, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:55:45', '2024-07-07 01:55:45'),
(173, 276, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:55:46', '2024-07-07 01:55:46'),
(174, 276, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:55:50', '2024-07-07 01:55:50'),
(175, 276, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 01:55:53', '2024-07-07 01:55:53'),
(176, 272, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 08:57:07', '2024-07-07 08:57:07'),
(177, 272, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 08:57:08', '2024-07-07 08:57:08'),
(178, 272, 'PGSOFT', 'fortune-dragon', 0.80, 3.20, 'BRL', 'wordslot', 'win', '2024-07-07 08:57:10', '2024-07-07 08:57:10'),
(179, 272, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 08:57:14', '2024-07-07 08:57:14'),
(180, 272, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 08:57:14', '2024-07-07 08:57:14'),
(181, 272, 'PGSOFT', 'fortune-dragon', 0.00, 19.20, 'BRL', 'wordslot', 'win', '2024-07-07 08:57:23', '2024-07-07 08:57:23'),
(182, 272, 'PGSOFT', 'fortune-dragon', 0.00, 7.68, 'BRL', 'wordslot', 'win', '2024-07-07 08:57:31', '2024-07-07 08:57:31'),
(183, 272, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 08:57:38', '2024-07-07 08:57:38'),
(184, 272, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 08:57:40', '2024-07-07 08:57:40'),
(185, 272, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 08:57:43', '2024-07-07 08:57:43'),
(186, 272, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 08:57:45', '2024-07-07 08:57:45'),
(187, 272, 'PGSOFT', 'fortune-dragon', 0.00, 21.12, 'BRL', 'wordslot', 'win', '2024-07-07 08:57:47', '2024-07-07 08:57:47'),
(188, 272, 'PGSOFT', 'fortune-dragon', 4.00, 1.60, 'BRL', 'wordslot', 'loss', '2024-07-07 08:58:00', '2024-07-07 08:58:00'),
(189, 272, 'PGSOFT', 'fortune-dragon', 4.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 08:58:02', '2024-07-07 08:58:02'),
(190, 272, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 08:58:03', '2024-07-07 08:58:03'),
(191, 272, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 08:58:11', '2024-07-07 08:58:11'),
(192, 272, 'PGSOFT', 'fortune-dragon', 0.00, 160.00, 'BRL', 'wordslot', 'win', '2024-07-07 08:58:13', '2024-07-07 08:58:13'),
(193, 272, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 08:58:22', '2024-07-07 08:58:22'),
(194, 272, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 08:58:24', '2024-07-07 08:58:24'),
(195, 272, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 08:58:26', '2024-07-07 08:58:26'),
(196, 272, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 08:58:29', '2024-07-07 08:58:29'),
(197, 272, 'PGSOFT', 'fortune-dragon', 0.00, 160.00, 'BRL', 'wordslot', 'win', '2024-07-07 08:58:31', '2024-07-07 08:58:31'),
(198, 272, 'PGSOFT', 'fortune-dragon', 12.00, 31.20, 'BRL', 'wordslot', 'win', '2024-07-07 08:58:50', '2024-07-07 08:58:50'),
(199, 272, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 08:58:54', '2024-07-07 08:58:54'),
(200, 272, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 08:58:54', '2024-07-07 08:58:54'),
(201, 272, 'PGSOFT', 'fortune-dragon', 0.00, 32.00, 'BRL', 'wordslot', 'win', '2024-07-07 08:59:02', '2024-07-07 08:59:02'),
(202, 272, 'PGSOFT', 'fortune-dragon', 0.00, 16.80, 'BRL', 'wordslot', 'win', '2024-07-07 08:59:10', '2024-07-07 08:59:10'),
(203, 272, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 08:59:15', '2024-07-07 08:59:15'),
(204, 272, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 08:59:17', '2024-07-07 08:59:17'),
(205, 272, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 08:59:19', '2024-07-07 08:59:19'),
(206, 272, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 08:59:22', '2024-07-07 08:59:22'),
(207, 272, 'PGSOFT', 'fortune-dragon', 0.00, 38.40, 'BRL', 'wordslot', 'win', '2024-07-07 08:59:24', '2024-07-07 08:59:24'),
(208, 272, 'PGSOFT', 'fortune-dragon', 500.00, 200.00, 'BRL', 'wordslot', 'loss', '2024-07-07 08:59:51', '2024-07-07 08:59:51'),
(209, 272, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 08:59:56', '2024-07-07 08:59:56'),
(210, 272, 'PGSOFT', 'fortune-dragon', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 08:59:56', '2024-07-07 08:59:56'),
(211, 272, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 09:00:52', '2024-07-07 09:00:52'),
(212, 272, 'PGSOFT', 'fortune-ox', 1.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 09:00:55', '2024-07-07 09:00:55'),
(213, 272, 'PGSOFT', 'fortune-ox', 1.50, 45.00, 'BRL', 'wordslot', 'win', '2024-07-07 09:00:56', '2024-07-07 09:00:56'),
(214, 272, 'PGSOFT', 'fortune-ox', 5.00, 150.00, 'BRL', 'wordslot', 'win', '2024-07-07 09:01:17', '2024-07-07 09:01:17'),
(215, 272, 'PGSOFT', 'fortune-ox', 15.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 09:01:42', '2024-07-07 09:01:42'),
(216, 272, 'PGSOFT', 'fortune-ox', 5.00, 5.00, 'BRL', 'wordslot', 'loss', '2024-07-07 09:01:43', '2024-07-07 09:01:43'),
(217, 272, 'PGSOFT', 'fortune-ox', 15.00, 7500.00, 'BRL', 'wordslot', 'win', '2024-07-07 09:02:10', '2024-07-07 09:02:10'),
(218, 272, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 09:08:07', '2024-07-07 09:08:07'),
(219, 272, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 09:08:10', '2024-07-07 09:08:10'),
(220, 272, 'PGSOFT', 'fortune-ox', 1.50, 45.00, 'BRL', 'wordslot', 'win', '2024-07-07 09:08:12', '2024-07-07 09:08:12'),
(221, 272, 'PGSOFT', 'fortune-ox', 2.50, 125.00, 'BRL', 'wordslot', 'win', '2024-07-07 09:08:37', '2024-07-07 09:08:37'),
(222, 272, 'PGSOFT', 'fortune-ox', 5.00, 25.00, 'BRL', 'wordslot', 'win', '2024-07-07 09:09:00', '2024-07-07 09:09:00'),
(223, 272, 'PGSOFT', 'fortune-ox', 5.00, 250.00, 'BRL', 'wordslot', 'win', '2024-07-07 09:09:21', '2024-07-07 09:09:21'),
(224, 272, 'PGSOFT', 'fortune-ox', 5.00, 7.50, 'BRL', 'wordslot', 'win', '2024-07-07 09:09:53', '2024-07-07 09:09:53'),
(225, 272, 'PGSOFT', 'fortune-ox', 5.00, 250.00, 'BRL', 'wordslot', 'win', '2024-07-07 09:10:12', '2024-07-07 09:10:12'),
(226, 277, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 09:39:07', '2024-07-07 09:39:07'),
(227, 277, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 09:39:09', '2024-07-07 09:39:09'),
(228, 277, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 09:39:11', '2024-07-07 09:39:11'),
(229, 277, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 09:39:12', '2024-07-07 09:39:12'),
(230, 277, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 09:39:16', '2024-07-07 09:39:16'),
(231, 277, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 09:39:21', '2024-07-07 09:39:21'),
(232, 277, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 09:39:23', '2024-07-07 09:39:23'),
(233, 277, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 09:39:26', '2024-07-07 09:39:26'),
(234, 277, 'PGSOFT', 'fortune-rabbit', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 09:40:14', '2024-07-07 09:40:14'),
(235, 277, 'PGSOFT', 'fortune-rabbit', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 09:40:15', '2024-07-07 09:40:15'),
(236, 277, 'PGSOFT', 'fortune-rabbit', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 09:40:17', '2024-07-07 09:40:17'),
(237, 277, 'PGSOFT', 'fortune-rabbit', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 09:40:18', '2024-07-07 09:40:18'),
(238, 277, 'PGSOFT', 'fortune-rabbit', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 09:40:19', '2024-07-07 09:40:19'),
(239, 277, 'PGSOFT', 'fortune-rabbit', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 09:40:21', '2024-07-07 09:40:21'),
(240, 277, 'PGSOFT', 'fortune-rabbit', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 09:40:22', '2024-07-07 09:40:22'),
(241, 277, 'PGSOFT', 'fortune-rabbit', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 09:40:24', '2024-07-07 09:40:24'),
(242, 277, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 09:41:07', '2024-07-07 09:41:07'),
(243, 277, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 09:41:08', '2024-07-07 09:41:08'),
(244, 277, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 09:41:09', '2024-07-07 09:41:09'),
(245, 277, 'PGSOFT', 'fortune-ox', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 09:41:11', '2024-07-07 09:41:11'),
(246, 277, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 09:54:18', '2024-07-07 09:54:18'),
(247, 277, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 09:54:19', '2024-07-07 09:54:19'),
(248, 277, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 09:55:07', '2024-07-07 09:55:07'),
(249, 277, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 09:55:09', '2024-07-07 09:55:09'),
(250, 277, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 09:55:11', '2024-07-07 09:55:11'),
(251, 277, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 09:55:13', '2024-07-07 09:55:13'),
(252, 277, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 09:55:14', '2024-07-07 09:55:14'),
(253, 277, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 09:55:16', '2024-07-07 09:55:16'),
(254, 277, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 09:56:01', '2024-07-07 09:56:01'),
(255, 277, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 09:56:02', '2024-07-07 09:56:02'),
(256, 277, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 09:56:04', '2024-07-07 09:56:04'),
(257, 277, 'PGSOFT', 'fortune-rabbit', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 09:56:44', '2024-07-07 09:56:44'),
(258, 277, 'PGSOFT', 'fortune-rabbit', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 09:56:46', '2024-07-07 09:56:46'),
(259, 277, 'PGSOFT', 'fortune-rabbit', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 09:56:47', '2024-07-07 09:56:47'),
(260, 277, 'PGSOFT', 'fortune-rabbit', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 09:56:48', '2024-07-07 09:56:48'),
(261, 277, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 09:57:10', '2024-07-07 09:57:10'),
(262, 277, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 09:57:14', '2024-07-07 09:57:14'),
(263, 277, 'PGSOFT', 'fortune-dragon', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 09:57:19', '2024-07-07 09:57:19'),
(264, 277, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 09:57:22', '2024-07-07 09:57:22'),
(265, 277, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 09:57:25', '2024-07-07 09:57:25'),
(266, 277, 'PGSOFT', 'chicky-run', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 09:58:15', '2024-07-07 09:58:15'),
(267, 277, 'PGSOFT', 'chicky-run', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 09:58:41', '2024-07-07 09:58:41'),
(268, 277, 'PGSOFT', 'bikine-paradise', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 10:00:47', '2024-07-07 10:00:47'),
(269, 277, 'PGSOFT', 'bikine-paradise', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 10:00:50', '2024-07-07 10:00:50'),
(270, 277, 'PGSOFT', 'bikine-paradise', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 10:00:51', '2024-07-07 10:00:51'),
(271, 277, 'PGSOFT', 'fortune-rabbit', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 10:01:34', '2024-07-07 10:01:34'),
(272, 277, 'PGSOFT', 'fortune-rabbit', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 10:01:35', '2024-07-07 10:01:35'),
(273, 277, 'PGSOFT', 'fortune-rabbit', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 10:01:37', '2024-07-07 10:01:37'),
(274, 277, 'PGSOFT', 'fortune-rabbit', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 10:01:38', '2024-07-07 10:01:38'),
(275, 277, 'PGSOFT', 'fortune-rabbit', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 10:01:40', '2024-07-07 10:01:40'),
(276, 277, 'PGSOFT', 'fortune-rabbit', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 10:01:41', '2024-07-07 10:01:41'),
(277, 277, 'PGSOFT', 'fortune-rabbit', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 10:01:42', '2024-07-07 10:01:42'),
(278, 277, 'PGSOFT', 'fortune-rabbit', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 10:01:44', '2024-07-07 10:01:44'),
(279, 277, 'PGSOFT', 'fortune-rabbit', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 10:01:45', '2024-07-07 10:01:45'),
(280, 277, 'PGSOFT', 'fortune-rabbit', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 10:01:47', '2024-07-07 10:01:47'),
(281, 277, 'PGSOFT', 'fortune-rabbit', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 10:01:48', '2024-07-07 10:01:48'),
(282, 277, 'PGSOFT', 'fortune-rabbit', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 10:01:50', '2024-07-07 10:01:50'),
(283, 277, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 10:03:21', '2024-07-07 10:03:21'),
(284, 277, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 10:03:45', '2024-07-07 10:03:45'),
(285, 277, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 10:03:46', '2024-07-07 10:03:46'),
(286, 277, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 10:03:47', '2024-07-07 10:03:47'),
(287, 277, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 10:03:49', '2024-07-07 10:03:49'),
(288, 277, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 10:03:53', '2024-07-07 10:03:53'),
(289, 277, 'PGSOFT', 'fortune-tiger', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 10:03:59', '2024-07-07 10:03:59'),
(290, 277, 'PGSOFT', 'fortune-tiger', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 10:04:00', '2024-07-07 10:04:00'),
(291, 277, 'PGSOFT', 'fortune-tiger', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 10:04:01', '2024-07-07 10:04:01'),
(292, 277, 'PGSOFT', 'fortune-tiger', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 10:04:03', '2024-07-07 10:04:03'),
(293, 277, 'PGSOFT', 'fortune-tiger', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 10:04:08', '2024-07-07 10:04:08'),
(294, 278, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:44:27', '2024-07-07 12:44:27'),
(295, 278, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:44:30', '2024-07-07 12:44:30'),
(296, 278, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:44:32', '2024-07-07 12:44:32'),
(297, 278, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:44:34', '2024-07-07 12:44:34'),
(298, 278, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:44:36', '2024-07-07 12:44:36'),
(299, 278, 'PGSOFT', 'fortune-tiger', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:44:40', '2024-07-07 12:44:40'),
(300, 278, 'PGSOFT', 'fortune-tiger', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:44:42', '2024-07-07 12:44:42'),
(301, 278, 'PGSOFT', 'fortune-tiger', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:44:43', '2024-07-07 12:44:43'),
(302, 278, 'PGSOFT', 'fortune-tiger', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:44:47', '2024-07-07 12:44:47'),
(303, 278, 'PGSOFT', 'fortune-tiger', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:44:50', '2024-07-07 12:44:50'),
(304, 278, 'PGSOFT', 'fortune-tiger', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:44:51', '2024-07-07 12:44:51'),
(305, 278, 'PGSOFT', 'fortune-tiger', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:44:55', '2024-07-07 12:44:55'),
(306, 278, 'PGSOFT', 'fortune-tiger', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:44:56', '2024-07-07 12:44:56'),
(307, 278, 'PGSOFT', 'fortune-tiger', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:44:58', '2024-07-07 12:44:58'),
(308, 278, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:45:00', '2024-07-07 12:45:00'),
(309, 278, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:45:01', '2024-07-07 12:45:01'),
(310, 278, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:45:03', '2024-07-07 12:45:03'),
(311, 278, 'PGSOFT', 'fortune-tiger', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:45:08', '2024-07-07 12:45:08'),
(312, 278, 'PGSOFT', 'fortune-tiger', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:45:10', '2024-07-07 12:45:10'),
(313, 278, 'PGSOFT', 'fortune-tiger', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:45:12', '2024-07-07 12:45:12'),
(314, 278, 'PGSOFT', 'fortune-tiger', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:45:14', '2024-07-07 12:45:14'),
(315, 278, 'PGSOFT', 'fortune-tiger', 1.20, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:45:15', '2024-07-07 12:45:15'),
(316, 278, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:45:17', '2024-07-07 12:45:17'),
(317, 278, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:45:19', '2024-07-07 12:45:19'),
(318, 278, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:45:21', '2024-07-07 12:45:21'),
(319, 278, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:45:23', '2024-07-07 12:45:23'),
(320, 278, 'PGSOFT', 'fortune-tiger', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:45:24', '2024-07-07 12:45:24'),
(321, 278, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:51:52', '2024-07-07 12:51:52'),
(322, 278, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:51:54', '2024-07-07 12:51:54'),
(323, 278, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:51:57', '2024-07-07 12:51:57'),
(324, 278, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:51:59', '2024-07-07 12:51:59'),
(325, 278, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:52:04', '2024-07-07 12:52:04'),
(326, 278, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:52:05', '2024-07-07 12:52:05'),
(327, 278, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:52:07', '2024-07-07 12:52:07'),
(328, 278, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:52:09', '2024-07-07 12:52:09'),
(329, 278, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:52:10', '2024-07-07 12:52:10'),
(330, 278, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:52:11', '2024-07-07 12:52:11'),
(331, 278, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:52:13', '2024-07-07 12:52:13'),
(332, 278, 'PGSOFT', 'fortune-dragon', 0.80, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:52:15', '2024-07-07 12:52:15'),
(333, 278, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:53:52', '2024-07-07 12:53:52'),
(334, 278, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:53:55', '2024-07-07 12:53:55'),
(335, 278, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:53:57', '2024-07-07 12:53:57'),
(336, 278, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:53:58', '2024-07-07 12:53:58'),
(337, 278, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:54:00', '2024-07-07 12:54:00'),
(338, 278, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:54:01', '2024-07-07 12:54:01'),
(339, 278, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:54:03', '2024-07-07 12:54:03'),
(340, 278, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:54:05', '2024-07-07 12:54:05'),
(341, 278, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:54:06', '2024-07-07 12:54:06'),
(342, 278, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:54:07', '2024-07-07 12:54:07'),
(343, 278, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:54:09', '2024-07-07 12:54:09'),
(344, 278, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:54:11', '2024-07-07 12:54:11'),
(345, 278, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:54:13', '2024-07-07 12:54:13'),
(346, 278, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:54:14', '2024-07-07 12:54:14'),
(347, 278, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:54:16', '2024-07-07 12:54:16'),
(348, 278, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:54:17', '2024-07-07 12:54:17'),
(349, 278, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:54:18', '2024-07-07 12:54:18'),
(350, 278, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:54:20', '2024-07-07 12:54:20'),
(351, 278, 'PGSOFT', 'fortune-mouse', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 12:54:21', '2024-07-07 12:54:21'),
(352, 272, 'PGSOFT', 'fortune-tiger', 500.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 13:39:20', '2024-07-07 13:39:20'),
(353, 272, 'PGSOFT', 'fortune-tiger', 150.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 13:39:26', '2024-07-07 13:39:26'),
(354, 272, 'PGSOFT', 'fortune-tiger', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 13:39:32', '2024-07-07 13:39:32'),
(355, 272, 'PGSOFT', 'fortune-tiger', 2.00, 5.20, 'BRL', 'wordslot', 'win', '2024-07-07 13:39:33', '2024-07-07 13:39:33'),
(356, 272, 'PGSOFT', 'fortune-tiger', 2.00, 500.00, 'BRL', 'wordslot', 'win', '2024-07-07 13:39:46', '2024-07-07 13:39:46'),
(357, 272, 'PGSOFT', 'fortune-tiger', 12.00, 76.80, 'BRL', 'wordslot', 'win', '2024-07-07 18:23:54', '2024-07-07 18:23:54'),
(358, 272, 'PGSOFT', 'fortune-tiger', 4.00, 1000.00, 'BRL', 'wordslot', 'win', '2024-07-07 18:24:10', '2024-07-07 18:24:10'),
(359, 288, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 18:31:30', '2024-07-07 18:31:30'),
(360, 288, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 18:31:33', '2024-07-07 18:31:33'),
(361, 288, 'PGSOFT', 'fortune-tiger', 3.60, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 18:32:00', '2024-07-07 18:32:00'),
(362, 288, 'PGSOFT', 'fortune-tiger', 3.60, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 18:32:02', '2024-07-07 18:32:02'),
(363, 288, 'PGSOFT', 'fortune-tiger', 3.60, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-07 18:32:05', '2024-07-07 18:32:05'),
(364, 272, 'PGSOFT', 'fortune-mouse', 2.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-08 19:12:42', '2024-07-08 19:12:42'),
(365, 272, 'PGSOFT', 'fortune-mouse', 5.00, 100.00, 'BRL', 'wordslot', 'win', '2024-07-08 19:12:43', '2024-07-08 19:12:43'),
(366, 272, 'PGSOFT', 'fortune-mouse', 5.00, 75.00, 'BRL', 'wordslot', 'win', '2024-07-08 19:13:27', '2024-07-08 19:13:27'),
(367, 272, 'PGSOFT', 'fortune-mouse', 0.50, 0.30, 'BRL', 'wordslot', 'loss', '2024-07-08 19:13:36', '2024-07-08 19:13:36'),
(368, 272, 'PGSOFT', 'fortune-mouse', 0.50, 2.50, 'BRL', 'wordslot', 'win', '2024-07-08 19:14:05', '2024-07-08 19:14:05'),
(369, 272, 'PGSOFT', 'fortune-mouse', 15.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-08 19:14:16', '2024-07-08 19:14:16'),
(370, 272, 'PGSOFT', 'fortune-mouse', 15.00, 15.00, 'BRL', 'wordslot', 'loss', '2024-07-08 19:14:18', '2024-07-08 19:14:18'),
(371, 272, 'PGSOFT', 'fortune-mouse', 15.00, 750.00, 'BRL', 'wordslot', 'win', '2024-07-08 19:14:43', '2024-07-08 19:14:43'),
(372, 272, 'PGSOFT', 'fortune-mouse', 5.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-08 19:15:17', '2024-07-08 19:15:17'),
(373, 272, 'PGSOFT', 'fortune-mouse', 5.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-08 19:15:18', '2024-07-08 19:15:18'),
(374, 272, 'PGSOFT', 'fortune-mouse', 5.00, 36.00, 'BRL', 'wordslot', 'win', '2024-07-08 19:15:19', '2024-07-08 19:15:19'),
(375, 272, 'PGSOFT', 'fortune-mouse', 5.00, 25.00, 'BRL', 'wordslot', 'win', '2024-07-08 19:15:49', '2024-07-08 19:15:49'),
(376, 272, 'PGSOFT', 'fortune-mouse', 5.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-08 19:16:00', '2024-07-08 19:16:00'),
(377, 272, 'PGSOFT', 'fortune-mouse', 5.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-08 19:16:01', '2024-07-08 19:16:01'),
(378, 272, 'PGSOFT', 'fortune-mouse', 5.00, 30.00, 'BRL', 'wordslot', 'win', '2024-07-08 19:16:02', '2024-07-08 19:16:02'),
(379, 272, 'PGSOFT', 'fortune-mouse', 150.00, 450.00, 'BRL', 'wordslot', 'win', '2024-07-08 19:16:31', '2024-07-08 19:16:31'),
(380, 272, 'PGSOFT', 'fortune-mouse', 500.00, 10000.00, 'BRL', 'wordslot', 'win', '2024-07-08 19:26:01', '2024-07-08 19:26:01'),
(381, 272, 'PGSOFT', 'fortune-mouse', 1.50, 150.00, 'BRL', 'wordslot', 'win', '2024-07-08 19:47:39', '2024-07-08 19:47:39'),
(382, 272, 'PGSOFT', 'fortune-mouse', 5.00, 3.00, 'BRL', 'wordslot', 'loss', '2024-07-08 19:47:52', '2024-07-08 19:47:52'),
(383, 272, 'PGSOFT', 'fortune-mouse', 5.00, 15.00, 'BRL', 'wordslot', 'win', '2024-07-08 19:48:14', '2024-07-08 19:48:14'),
(384, 272, 'PGSOFT', 'fortune-mouse', 5.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-08 19:48:22', '2024-07-08 19:48:22'),
(385, 272, 'PGSOFT', 'fortune-mouse', 5.00, 100.00, 'BRL', 'wordslot', 'win', '2024-07-08 19:48:23', '2024-07-08 19:48:23'),
(386, 272, 'PGSOFT', 'fortune-mouse', 5.00, 25.00, 'BRL', 'wordslot', 'win', '2024-07-08 19:48:49', '2024-07-08 19:48:49'),
(387, 272, 'PGSOFT', 'fortune-mouse', 5.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-08 19:49:03', '2024-07-08 19:49:03'),
(388, 272, 'PGSOFT', 'fortune-mouse', 5.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-08 19:49:04', '2024-07-08 19:49:04'),
(389, 272, 'PGSOFT', 'fortune-mouse', 1.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-08 19:49:08', '2024-07-08 19:49:08'),
(390, 272, 'PGSOFT', 'fortune-mouse', 2.50, 1.50, 'BRL', 'wordslot', 'loss', '2024-07-08 19:49:09', '2024-07-08 19:49:09'),
(391, 272, 'PGSOFT', 'fortune-mouse', 5.00, 500.00, 'BRL', 'wordslot', 'win', '2024-07-08 19:49:32', '2024-07-08 19:49:32'),
(392, 272, 'PGSOFT', 'fortune-mouse', 5.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-08 19:54:10', '2024-07-08 19:54:10'),
(393, 272, 'PGSOFT', 'fortune-mouse', 2.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-08 19:54:13', '2024-07-08 19:54:13'),
(394, 272, 'PGSOFT', 'fortune-mouse', 2.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-08 19:54:13', '2024-07-08 19:54:13'),
(395, 272, 'PGSOFT', 'fortune-mouse', 2.50, 7.50, 'BRL', 'wordslot', 'win', '2024-07-08 19:54:14', '2024-07-08 19:54:14'),
(396, 272, 'PGSOFT', 'fortune-mouse', 5.00, 15.00, 'BRL', 'wordslot', 'win', '2024-07-08 19:54:57', '2024-07-08 19:54:57'),
(397, 272, 'PGSOFT', 'fortune-mouse', 5.00, 50.00, 'BRL', 'wordslot', 'win', '2024-07-08 19:55:04', '2024-07-08 19:55:04'),
(398, 272, 'PGSOFT', 'fortune-mouse', 5.00, 250.00, 'BRL', 'wordslot', 'win', '2024-07-08 19:55:29', '2024-07-08 19:55:29'),
(399, 272, 'PGSOFT', 'fortune-mouse', 5.00, 3.00, 'BRL', 'wordslot', 'loss', '2024-07-08 19:56:25', '2024-07-08 19:56:25'),
(400, 272, 'PGSOFT', 'fortune-mouse', 5.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-08 19:56:25', '2024-07-08 19:56:25'),
(401, 272, 'PGSOFT', 'fortune-mouse', 5.00, 75.00, 'BRL', 'wordslot', 'win', '2024-07-08 19:56:48', '2024-07-08 19:56:48'),
(402, 272, 'PGSOFT', 'fortune-mouse', 250.00, 250.00, 'BRL', 'wordslot', 'loss', '2024-07-08 19:56:58', '2024-07-08 19:56:58'),
(403, 272, 'PGSOFT', 'fortune-ox', 0.50, 10.00, 'BRL', 'wordslot', 'win', '2024-07-08 22:05:29', '2024-07-08 22:05:29'),
(404, 272, 'PGSOFT', 'fortune-ox', 5.00, 1000.00, 'BRL', 'wordslot', 'win', '2024-07-08 22:06:05', '2024-07-08 22:06:05'),
(405, 272, 'PGSOFT', 'fortune-ox', 400.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-08 22:12:46', '2024-07-08 22:12:46'),
(406, 272, 'PGSOFT', 'fortune-ox', 400.00, 4800.00, 'BRL', 'wordslot', 'win', '2024-07-08 22:12:50', '2024-07-08 22:12:50'),
(407, 272, 'PGSOFT', 'fortune-rabbit', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-08 22:15:23', '2024-07-08 22:15:23'),
(408, 272, 'PGSOFT', 'fortune-rabbit', 0.50, 0.45, 'BRL', 'wordslot', 'loss', '2024-07-08 22:15:24', '2024-07-08 22:15:24'),
(409, 272, 'PGSOFT', 'fortune-rabbit', 0.00, 3.13, 'BRL', 'wordslot', 'win', '2024-07-08 22:15:26', '2024-07-08 22:15:26'),
(410, 272, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-08 22:15:26', '2024-07-08 22:15:26'),
(411, 272, 'PGSOFT', 'fortune-rabbit', 0.00, 3.75, 'BRL', 'wordslot', 'win', '2024-07-08 22:15:40', '2024-07-08 22:15:40'),
(412, 272, 'PGSOFT', 'fortune-rabbit', 0.00, 2.00, 'BRL', 'wordslot', 'win', '2024-07-08 22:15:48', '2024-07-08 22:15:48'),
(413, 272, 'PGSOFT', 'fortune-rabbit', 0.00, 2.88, 'BRL', 'wordslot', 'win', '2024-07-08 22:15:55', '2024-07-08 22:15:55'),
(414, 272, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-08 22:16:02', '2024-07-08 22:16:02'),
(415, 272, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-08 22:16:06', '2024-07-08 22:16:06'),
(416, 272, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-08 22:16:11', '2024-07-08 22:16:11'),
(417, 272, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-08 22:16:15', '2024-07-08 22:16:15'),
(418, 272, 'PGSOFT', 'fortune-rabbit', 0.50, 2.50, 'BRL', 'wordslot', 'win', '2024-07-08 22:16:31', '2024-07-08 22:16:31'),
(419, 272, 'PGSOFT', 'fortune-rabbit', 0.00, 5.63, 'BRL', 'wordslot', 'win', '2024-07-08 22:16:36', '2024-07-08 22:16:36'),
(420, 272, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-08 22:16:36', '2024-07-08 22:16:36'),
(421, 272, 'PGSOFT', 'fortune-rabbit', 0.00, 39.00, 'BRL', 'wordslot', 'win', '2024-07-08 22:16:50', '2024-07-08 22:16:50'),
(422, 272, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-08 22:16:57', '2024-07-08 22:16:57'),
(423, 272, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-08 22:17:01', '2024-07-08 22:17:01'),
(424, 272, 'PGSOFT', 'fortune-rabbit', 0.00, 12.00, 'BRL', 'wordslot', 'win', '2024-07-08 22:17:05', '2024-07-08 22:17:05'),
(425, 272, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-08 22:17:12', '2024-07-08 22:17:12'),
(426, 272, 'PGSOFT', 'fortune-rabbit', 0.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-08 22:17:17', '2024-07-08 22:17:17'),
(427, 272, 'PGSOFT', 'fortune-rabbit', 0.00, 57.00, 'BRL', 'wordslot', 'win', '2024-07-08 22:17:21', '2024-07-08 22:17:21'),
(428, 272, 'PGSOFT', 'fortune-tiger', 75.00, 120.00, 'BRL', 'wordslot', 'win', '2024-07-08 22:19:08', '2024-07-08 22:19:08'),
(429, 272, 'PGSOFT', 'fortune-tiger', 75.00, 3750.00, 'BRL', 'wordslot', 'win', '2024-07-08 22:25:51', '2024-07-08 22:25:51'),
(430, 289, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 11:27:10', '2024-07-09 11:27:10'),
(431, 289, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 11:27:15', '2024-07-09 11:27:15'),
(432, 289, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 11:27:16', '2024-07-09 11:27:16'),
(433, 289, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 11:27:18', '2024-07-09 11:27:18'),
(434, 289, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 11:27:19', '2024-07-09 11:27:19');
INSERT INTO `ggr_games` (`id`, `user_id`, `provider`, `game`, `balance_bet`, `balance_win`, `currency`, `aggregator`, `type`, `created_at`, `updated_at`) VALUES
(435, 289, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 11:27:19', '2024-07-09 11:27:19'),
(436, 289, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 11:27:20', '2024-07-09 11:27:20'),
(437, 289, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 11:27:21', '2024-07-09 11:27:21'),
(438, 289, 'PGSOFT', 'fortune-tiger', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 11:27:32', '2024-07-09 11:27:32'),
(439, 289, 'PGSOFT', 'fortune-tiger', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 11:27:36', '2024-07-09 11:27:36'),
(440, 289, 'PGSOFT', 'fortune-tiger', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 11:27:37', '2024-07-09 11:27:37'),
(441, 289, 'PGSOFT', 'fortune-tiger', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 11:27:39', '2024-07-09 11:27:39'),
(442, 289, 'PGSOFT', 'fortune-tiger', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 11:27:40', '2024-07-09 11:27:40'),
(443, 289, 'PGSOFT', 'fortune-tiger', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 11:27:41', '2024-07-09 11:27:41'),
(444, 289, 'PGSOFT', 'fortune-tiger', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 11:27:42', '2024-07-09 11:27:42'),
(445, 289, 'PGSOFT', 'fortune-tiger', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 11:27:42', '2024-07-09 11:27:42'),
(446, 289, 'PGSOFT', 'fortune-tiger', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 11:27:44', '2024-07-09 11:27:44'),
(447, 289, 'PGSOFT', 'fortune-tiger', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 11:27:44', '2024-07-09 11:27:44'),
(448, 289, 'PGSOFT', 'fortune-tiger', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 11:27:45', '2024-07-09 11:27:45'),
(449, 289, 'PGSOFT', 'fortune-tiger', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 11:27:46', '2024-07-09 11:27:46'),
(450, 289, 'PGSOFT', 'fortune-tiger', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 11:27:47', '2024-07-09 11:27:47'),
(451, 289, 'PGSOFT', 'fortune-tiger', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 11:27:50', '2024-07-09 11:27:50'),
(452, 289, 'PGSOFT', 'fortune-tiger', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 11:28:39', '2024-07-09 11:28:39'),
(453, 289, 'PGSOFT', 'fortune-tiger', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 11:28:40', '2024-07-09 11:28:40'),
(454, 289, 'PGSOFT', 'fortune-tiger', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 11:28:41', '2024-07-09 11:28:41'),
(455, 289, 'PGSOFT', 'fortune-tiger', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 11:28:42', '2024-07-09 11:28:42'),
(456, 289, 'PGSOFT', 'fortune-tiger', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 11:28:43', '2024-07-09 11:28:43'),
(457, 289, 'PGSOFT', 'fortune-tiger', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 11:28:44', '2024-07-09 11:28:44'),
(458, 289, 'PGSOFT', 'fortune-tiger', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 11:28:44', '2024-07-09 11:28:44'),
(459, 289, 'PGSOFT', 'fortune-tiger', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 11:28:46', '2024-07-09 11:28:46'),
(460, 289, 'PGSOFT', 'fortune-tiger', 2.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 11:28:46', '2024-07-09 11:28:46'),
(461, 289, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 11:28:49', '2024-07-09 11:28:49'),
(462, 289, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 11:28:50', '2024-07-09 11:28:50'),
(463, 271, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 14:12:42', '2024-07-09 14:12:42'),
(464, 271, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 14:12:44', '2024-07-09 14:12:44'),
(465, 271, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 14:12:45', '2024-07-09 14:12:45'),
(466, 271, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 14:12:46', '2024-07-09 14:12:46'),
(467, 271, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 14:12:47', '2024-07-09 14:12:47'),
(468, 271, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 14:12:48', '2024-07-09 14:12:48'),
(469, 271, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 14:12:51', '2024-07-09 14:12:51'),
(470, 271, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 14:12:52', '2024-07-09 14:12:52'),
(471, 271, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 14:12:53', '2024-07-09 14:12:53'),
(472, 271, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 14:12:53', '2024-07-09 14:12:53'),
(473, 271, 'PGSOFT', 'fortune-dragon', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 14:12:54', '2024-07-09 14:12:54'),
(474, 271, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 14:35:55', '2024-07-09 14:35:55'),
(475, 271, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 14:35:57', '2024-07-09 14:35:57'),
(476, 271, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 14:35:59', '2024-07-09 14:35:59'),
(477, 271, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 14:36:02', '2024-07-09 14:36:02'),
(478, 271, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 14:36:03', '2024-07-09 14:36:03'),
(479, 271, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 14:36:04', '2024-07-09 14:36:04'),
(480, 271, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 14:36:05', '2024-07-09 14:36:05'),
(481, 271, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 14:36:06', '2024-07-09 14:36:06'),
(482, 271, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 14:36:09', '2024-07-09 14:36:09'),
(483, 271, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 14:36:10', '2024-07-09 14:36:10'),
(484, 271, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 14:36:11', '2024-07-09 14:36:11'),
(485, 271, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 14:36:11', '2024-07-09 14:36:11'),
(486, 271, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 14:36:12', '2024-07-09 14:36:12'),
(487, 271, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 14:36:13', '2024-07-09 14:36:13'),
(488, 271, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 14:36:16', '2024-07-09 14:36:16'),
(489, 271, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 14:36:17', '2024-07-09 14:36:17'),
(490, 271, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 14:36:18', '2024-07-09 14:36:18'),
(491, 271, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 14:36:19', '2024-07-09 14:36:19'),
(492, 271, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 14:36:20', '2024-07-09 14:36:20'),
(493, 271, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 14:37:28', '2024-07-09 14:37:28'),
(494, 271, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 14:37:30', '2024-07-09 14:37:30'),
(495, 271, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 14:37:34', '2024-07-09 14:37:34'),
(496, 271, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 14:37:35', '2024-07-09 14:37:35'),
(497, 271, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 14:37:36', '2024-07-09 14:37:36'),
(498, 271, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 14:37:39', '2024-07-09 14:37:39'),
(499, 271, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 14:37:40', '2024-07-09 14:37:40'),
(500, 271, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 14:37:41', '2024-07-09 14:37:41'),
(501, 271, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 14:37:42', '2024-07-09 14:37:42'),
(502, 271, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 14:37:42', '2024-07-09 14:37:42'),
(503, 271, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 14:38:57', '2024-07-09 14:38:57'),
(504, 271, 'PGSOFT', 'fortune-tiger', 0.40, 0.64, 'BRL', 'wordslot', 'win', '2024-07-09 14:39:00', '2024-07-09 14:39:00'),
(505, 271, 'PGSOFT', 'fortune-tiger', 0.40, 32.00, 'BRL', 'wordslot', 'win', '2024-07-09 14:39:11', '2024-07-09 14:39:11'),
(506, 272, 'PGSOFT', 'fortune-mouse', 5.00, 15.00, 'BRL', 'wordslot', 'win', '2024-07-09 22:24:30', '2024-07-09 22:24:30'),
(507, 272, 'PGSOFT', 'fortune-mouse', 2.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 22:24:40', '2024-07-09 22:24:40'),
(508, 272, 'PGSOFT', 'fortune-mouse', 5.00, 20.00, 'BRL', 'wordslot', 'win', '2024-07-09 22:24:42', '2024-07-09 22:24:42'),
(509, 272, 'PGSOFT', 'fortune-mouse', 15.00, 75.00, 'BRL', 'wordslot', 'win', '2024-07-09 22:25:10', '2024-07-09 22:25:10'),
(510, 272, 'PGSOFT', 'fortune-mouse', 15.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 22:25:18', '2024-07-09 22:25:18'),
(511, 272, 'PGSOFT', 'fortune-mouse', 15.00, 18.00, 'BRL', 'wordslot', 'win', '2024-07-09 22:25:19', '2024-07-09 22:25:19'),
(512, 272, 'PGSOFT', 'fortune-mouse', 25.00, 375.00, 'BRL', 'wordslot', 'win', '2024-07-09 22:25:45', '2024-07-09 22:25:45'),
(513, 272, 'PGSOFT', 'fortune-mouse', 15.00, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-09 22:25:54', '2024-07-09 22:25:54'),
(514, 272, 'PGSOFT', 'fortune-mouse', 15.00, 9.00, 'BRL', 'wordslot', 'loss', '2024-07-09 22:25:55', '2024-07-09 22:25:55'),
(515, 272, 'PGSOFT', 'fortune-mouse', 15.00, 450.00, 'BRL', 'wordslot', 'win', '2024-07-09 22:26:21', '2024-07-09 22:26:21'),
(516, 291, 'PGSOFT', 'fortune-tiger', 0.40, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-10 11:25:39', '2024-07-10 11:25:39'),
(517, 291, 'PGSOFT', 'chicky-run', 0.50, 0.00, 'BRL', 'wordslot', 'loss', '2024-07-10 11:26:21', '2024-07-10 11:26:21');

-- --------------------------------------------------------

--
-- Estrutura para tabela `ggr_games_world_slots`
--

CREATE TABLE `ggr_games_world_slots` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `provider` varchar(191) NOT NULL,
  `game` varchar(191) NOT NULL,
  `balance_bet` decimal(20,2) NOT NULL DEFAULT 0.00,
  `balance_win` decimal(20,2) NOT NULL DEFAULT 0.00,
  `currency` varchar(50) NOT NULL DEFAULT 'BRL',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `liked_user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Estrutura para tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0000_00_00_000000_create_websockets_statistics_entries_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(15, '2023_10_30_034921_create_settings_table', 6),
(7, '2023_11_03_205251_create_sport_categories_table', 1),
(8, '2023_11_03_205252_create_sports_table', 1),
(10, '2023_11_04_001342_create_sport_events_table', 2),
(11, '2023_11_04_213841_add_fields_to_users_table', 3),
(12, '2023_11_07_202919_create_currencies_table', 4),
(13, '2023_11_07_210310_create_wallets_table', 5),
(16, '2023_11_07_214236_create_withdrawals_table', 7),
(17, '2023_11_07_214240_create_deposits_table', 7),
(18, '2023_11_07_214244_create_orders_table', 7),
(19, '2023_11_07_214708_create_suit_pay_payments_table', 7),
(20, '2023_11_07_215204_create_notifications_table', 8),
(21, '2023_11_07_202919_create_currency_alloweds_table', 9),
(22, '2023_11_11_205824_create_casino_categories_table', 9),
(23, '2023_11_11_205834_create_casino_providers_table', 9),
(24, '2023_11_11_205938_create_casino_games_slotgrators_table', 9),
(25, '2023_11_11_210018_create_casino_games_kscinuses_table', 9),
(26, '2023_11_12_225424_create_transactions_table', 10),
(27, '2023_11_12_225431_create_affiliate_histories_table', 10),
(28, '2023_11_12_234643_add_field_to_wallet_table', 11),
(29, '2023_11_14_203632_create_likes_table', 12),
(30, '2023_09_27_214903_create_wallet_changes_table', 13),
(31, '2023_11_16_155140_create_permission_tables', 14),
(32, '2023_11_17_012533_add_language_to_users_table', 15),
(33, '2023_11_22_171616_create_football_leagues_table', 16),
(34, '2023_11_22_175530_create_football_venues_table', 17),
(35, '2023_11_22_175547_create_football_teams_table', 17),
(36, '2023_11_23_143637_create_football_events_table', 18),
(38, '2023_11_29_134520_create_sport_bets_table', 19),
(39, '2023_11_29_135451_create_sport_bets_odds_table', 19),
(40, '2023_11_30_195548_create_gateways_table', 20),
(41, '2023_11_30_195557_create_games_keys_table', 20),
(42, '2023_11_30_195609_create_setting_mails_table', 20),
(43, '2023_10_08_111755_add_fields_to_game_exclusives_table', 20),
(44, '2023_10_07_183921_create_game_exclusives_table', 21),
(45, '2023_10_11_144956_create_system_wallets_table', 22),
(46, '2023_12_18_172721_create_banners_table', 23),
(47, '2023_12_20_135908_create_casino_games_salsas_table', 24),
(48, '2023_12_23_224032_create_fivers_providers_table', 25),
(49, '2023_12_23_224105_create_fivers_games_table', 25),
(50, '2023_12_31_121453_create_custom_layouts_table', 26),
(51, '2024_01_01_193712_create_g_g_r_games_fivers_table', 27),
(52, '2024_01_14_155144_create_missions_table', 28),
(53, '2024_01_14_155150_create_mission_users_table', 28),
(54, '2024_01_19_120728_create_ka_gamings_table', 29),
(55, '2024_01_19_170650_create_categories_table', 30),
(56, '2024_01_19_170657_create_providers_table', 30),
(57, '2024_01_19_170658_create_games_table', 31),
(58, '2023_10_07_183920_create_categories_table', 32),
(59, '2023_10_07_183921_create_providers_table', 33),
(60, '2023_10_07_183922_create_games_table', 34),
(61, '2024_01_20_144529_create_category_games_table', 35),
(62, '2024_01_20_182155_add_vibra_to_games_keys_table', 36),
(63, '2024_01_21_173742_create_game_favorites_table', 37),
(64, '2024_01_21_173752_create_game_likes_table', 37),
(65, '2024_01_21_173803_create_game_reviews_table', 37),
(66, '2024_01_11_231932_create_vibra_casino_games_table', 38),
(69, '2024_01_28_194456_add_vip_to_wallet_table', 40),
(68, '2024_01_28_194645_create_vips_table', 39),
(70, '2024_01_28_231843_create_vip_users_table', 41),
(71, '2024_01_29_102939_add_paid_to_limits_table', 41),
(72, '2024_01_10_001705_create_sub_affiliates_table', 42),
(73, '2024_01_30_120547_create_affiliate_withdraws_table', 43),
(74, '2024_02_09_233936_add_worldslot_to_games_keys_table', 44),
(75, '2024_02_10_191215_add_disable_spin_to_settings_table', 45),
(76, '2024_02_17_210822_add_games2_to_games_keys_table', 46),
(78, '2024_02_20_004853_add_sub_to_settings_table', 47),
(79, '2024_02_24_121146_add_header_to_custom_layouts_table', 48),
(80, '2024_02_26_144235_create_ggr_games_world_slots_table', 49),
(81, '2024_03_01_172613_add_evergame_to_games_keys_table', 50),
(82, '2024_03_03_201700_add_venixkey_to_games_keys_table', 51),
(83, '2024_03_08_201557_add_play_gaming_to_games_keys_table', 52),
(84, '2024_03_21_154342_add_headerbody_to_custom_layouts_table', 53),
(85, '2024_03_21_154342_add_headerbody_to_custom_layouts_table', 54),
(86, '2024_03_21_223739_add_sharkpay_to_gateways_table', 55),
(87, '2024_03_21_230017_add_reference_to_transactions_table', 56),
(88, '2024_03_24_125025_add_rollver_protection_to_settings_table', 57),
(89, '2024_03_24_134101_add_accept_bonus_to_transactions_table', 58),
(90, '2024_03_24_172243_add_receita_to_affiliate_histories_table', 59),
(91, '2024_03_26_161932_add_baseline_column_to_settings_table', 60),
(92, '2024_03_26_234226_add_playigaming_column_to_games_key_table', 61),
(93, '2024_03_25_231103_add_mercado_pago_column_to_gateways_table', 62),
(94, '2024_03_30_215051_add_social_to_custom_layouts_table', 63),
(98, '2024_03_30_225900_create_digito_pay_payments_table', 66),
(96, '2024_03_30_225929_add_digitopay_to_gateways_table', 64),
(97, '2024_03_31_124211_add_digitopay_to_settings_table', 65),
(99, '2024_04_02_140932_add_default_gateway_to_settings_table', 67),
(100, '2024_03_08_201557_add_imperium_games_to_games_keys_table', 68),
(101, '2024_04_12_201402_add_hash_to_transactions_table', 69);

-- --------------------------------------------------------

--
-- Estrutura para tabela `missions`
--

CREATE TABLE `missions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `challenge_name` varchar(191) NOT NULL,
  `challenge_description` text NOT NULL,
  `challenge_rules` text NOT NULL,
  `challenge_type` varchar(20) NOT NULL DEFAULT 'game',
  `challenge_link` varchar(191) DEFAULT NULL,
  `challenge_start_date` datetime NOT NULL,
  `challenge_end_date` datetime NOT NULL,
  `challenge_bonus` decimal(20,2) NOT NULL DEFAULT 0.00,
  `challenge_total` bigint(20) NOT NULL DEFAULT 1,
  `challenge_currency` varchar(5) NOT NULL,
  `challenge_provider` varchar(50) DEFAULT NULL,
  `challenge_gameid` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `mission_users`
--

CREATE TABLE `mission_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `mission_id` int(10) UNSIGNED NOT NULL,
  `rounds` bigint(20) DEFAULT 0,
  `rewards` decimal(10,2) DEFAULT 0.00,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Estrutura para tabela `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estrutura para tabela `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Despejando dados para a tabela `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(191) NOT NULL,
  `notifiable_type` varchar(191) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `session_id` varchar(191) DEFAULT NULL,
  `transaction_id` varchar(191) DEFAULT NULL,
  `game` varchar(191) NOT NULL,
  `game_uuid` varchar(191) NOT NULL,
  `type` varchar(50) NOT NULL,
  `type_money` varchar(50) NOT NULL,
  `amount` decimal(20,2) NOT NULL DEFAULT 0.00,
  `providers` varchar(191) NOT NULL,
  `refunded` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `round_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `session_id`, `transaction_id`, `game`, `game_uuid`, `type`, `type_money`, `amount`, `providers`, `refunded`, `status`, `round_id`, `created_at`, `updated_at`) VALUES
(27, 272, '1720318230', 'a8a21c17-4b10-432e-b9b9-53a074fc9fa7', 'fortune-tiger', 'fortune-tiger', 'win', 'balance', 0.24, 'worldslot', 0, 0, '1', '2024-07-06 23:10:30', '2024-07-06 23:10:30'),
(28, 272, '1720318246', '3b20dbcf-d377-4747-9d98-7da42694faf0', 'fortune-tiger', 'fortune-tiger', 'win', 'balance', 399.60, 'worldslot', 0, 0, '1', '2024-07-06 23:10:46', '2024-07-06 23:10:46'),
(29, 272, '1720318281', 'eea19374-f571-44da-b160-b58f6471a157', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 250.00, 'worldslot', 0, 0, '1', '2024-07-06 23:11:21', '2024-07-06 23:11:21'),
(30, 272, '1720318286', 'c2dae96b-01a5-46fb-ad3e-c2222a650653', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 150.00, 'worldslot', 0, 0, '1', '2024-07-06 23:11:26', '2024-07-06 23:11:26'),
(31, 272, '1720318298', 'ca3b9046-7b7c-47c4-8e8e-40bd1d8893a3', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance', 0.80, 'worldslot', 0, 0, '1', '2024-07-06 23:11:38', '2024-07-06 23:11:38'),
(32, 272, '1720318299', '185e0319-3f14-44c6-a7aa-71679f9db1ad', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance', 0.32, 'worldslot', 0, 0, '1', '2024-07-06 23:11:39', '2024-07-06 23:11:39'),
(33, 272, '1720318310', 'da81ef8f-b774-484c-9a4b-27c2e61f2a8e', 'fortune-tiger', 'fortune-tiger', 'win', 'balance', 11.60, 'worldslot', 0, 0, '1', '2024-07-06 23:11:50', '2024-07-06 23:11:50'),
(34, 272, '1720318321', '5bf0bd85-3fb8-47ce-bfdc-1209d5a601f7', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance', 0.00, 'worldslot', 0, 0, '1', '2024-07-06 23:12:01', '2024-07-06 23:12:01'),
(35, 272, '1720318332', '0c43c238-b7d3-4feb-abbf-b3a9141bb417', 'fortune-tiger', 'fortune-tiger', 'win', 'balance', 39.60, 'worldslot', 0, 0, '1', '2024-07-06 23:12:12', '2024-07-06 23:12:12'),
(36, 272, '1720318345', 'ff4eeb71-858b-4178-aec6-4fcf2b1461d2', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance', 0.32, 'worldslot', 0, 0, '1', '2024-07-06 23:12:25', '2024-07-06 23:12:25'),
(37, 272, '1720318359', 'f2131d4f-5d17-42a9-b62f-d7b4d5d5df5b', 'fortune-tiger', 'fortune-tiger', 'win', 'balance', 118.80, 'worldslot', 0, 0, '1', '2024-07-06 23:12:39', '2024-07-06 23:12:39'),
(38, 273, '1720319982', '22e8db43-1820-40f7-8236-0b9ecb65b838', 'fortune-tiger', 'fortune-tiger', 'win', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-06 23:39:42', '2024-07-06 23:39:42'),
(39, 273, '1720319998', '45d04373-3d02-4df0-a2e1-b75918e7d753', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-06 23:39:58', '2024-07-06 23:39:58'),
(40, 273, '1720320004', '5115df62-9431-4c75-b20d-bdb2e2391d1a', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-06 23:40:04', '2024-07-06 23:40:04'),
(41, 273, '1720320009', 'b7960f11-2ae2-40e9-ba6d-da57c12ce985', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-06 23:40:09', '2024-07-06 23:40:09'),
(42, 273, '1720320014', 'b8df71ab-6b3f-476b-a4d9-24f7a3a1bd74', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-06 23:40:14', '2024-07-06 23:40:14'),
(43, 273, '1720320020', '95948887-06d7-407c-be21-48ce40122cff', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-06 23:40:20', '2024-07-06 23:40:20'),
(44, 273, '1720320024', '1171423b-2150-4111-8801-57e388c1a9e2', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-06 23:40:24', '2024-07-06 23:40:24'),
(45, 273, '1720320135', '92f74b1d-988a-4288-885e-7a7682adb261', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-06 23:42:15', '2024-07-06 23:42:15'),
(46, 273, '1720320145', 'e00d3da0-3194-46d8-8f6b-c960e4fe3b83', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-06 23:42:25', '2024-07-06 23:42:25'),
(47, 273, '1720320147', '4aa435e6-ab27-4606-86bb-01245d5138b5', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-06 23:42:27', '2024-07-06 23:42:27'),
(48, 273, '1720320150', '7908be46-6600-4289-a7ba-3f62fe9bf4fe', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-06 23:42:30', '2024-07-06 23:42:30'),
(49, 273, '1720320153', 'ae3acc52-4c87-49a8-8fac-b1c091eaa843', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-06 23:42:33', '2024-07-06 23:42:33'),
(50, 273, '1720320155', 'e71c2c51-0a42-4bac-a784-20854b7655d3', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-06 23:42:35', '2024-07-06 23:42:35'),
(51, 273, '1720320158', '637b976c-2eed-416c-863b-4eca69c4f386', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-06 23:42:38', '2024-07-06 23:42:38'),
(52, 273, '1720320165', '9b3ef476-2134-451b-805d-5e5c1ff9d664', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-06 23:42:45', '2024-07-06 23:42:45'),
(53, 273, '1720320169', '1df849bd-1e4d-41c3-8960-bd48ccda1bb6', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-06 23:42:49', '2024-07-06 23:42:49'),
(54, 273, '1720320171', '4369ac4e-32d1-46f0-bf7b-11ccff5c5df1', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-06 23:42:51', '2024-07-06 23:42:51'),
(55, 273, '1720320225', '17c44762-670a-4a1e-8bc2-5eea7bc3c6a3', 'fortune-ox', 'fortune-ox', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-06 23:43:45', '2024-07-06 23:43:45'),
(56, 273, '1720320229', '5fd7b57a-ef30-4000-9551-79ec941cb5de', 'fortune-ox', 'fortune-ox', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-06 23:43:49', '2024-07-06 23:43:49'),
(57, 273, '1720320232', 'b6fa4ffe-3dfe-4f8f-a8ca-945a6113bff2', 'fortune-ox', 'fortune-ox', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-06 23:43:52', '2024-07-06 23:43:52'),
(58, 273, '1720320235', '96634f2b-27a5-4a2b-b760-348f46f5eb11', 'fortune-ox', 'fortune-ox', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-06 23:43:55', '2024-07-06 23:43:55'),
(59, 273, '1720320241', 'f2fdb725-ba4b-4fe6-9f16-783e6c65436d', 'fortune-ox', 'fortune-ox', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-06 23:44:01', '2024-07-06 23:44:01'),
(60, 273, '1720320299', 'a28daf6f-67d1-431e-8e39-cdbf7abaaa01', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-06 23:44:59', '2024-07-06 23:44:59'),
(61, 273, '1720320304', '4cbee1a1-fd1e-4a5f-bcb7-5c9aec81245a', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-06 23:45:04', '2024-07-06 23:45:04'),
(62, 273, '1720320309', 'db019454-1cdc-4baa-b1d1-53fe43a608a6', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_bonus', 0.40, 'worldslot', 0, 0, '1', '2024-07-06 23:45:09', '2024-07-06 23:45:09'),
(63, 273, '1720320312', 'a8cf8035-dd03-4397-833a-d7adb27f660c', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_bonus', 0.40, 'worldslot', 0, 0, '1', '2024-07-06 23:45:12', '2024-07-06 23:45:12'),
(64, 273, '1720320315', '9e7ccbc5-ddb9-484a-827a-3a06ab6cb945', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_bonus', 0.40, 'worldslot', 0, 0, '1', '2024-07-06 23:45:15', '2024-07-06 23:45:15'),
(65, 273, '1720320320', 'eff3b537-4006-4246-81ac-11c606e20a0a', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_bonus', 0.40, 'worldslot', 0, 0, '1', '2024-07-06 23:45:20', '2024-07-06 23:45:20'),
(66, 273, '1720320324', '4cd75572-0aad-4827-ab0d-22b76431f9ce', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_bonus', 0.40, 'worldslot', 0, 0, '1', '2024-07-06 23:45:24', '2024-07-06 23:45:24'),
(67, 273, '1720320328', '39cb050a-726c-4cc1-8859-98dae615d9ce', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_bonus', 0.40, 'worldslot', 0, 0, '1', '2024-07-06 23:45:28', '2024-07-06 23:45:28'),
(68, 273, '1720320376', 'b422cebd-487b-48fe-8cb7-7e717b60ba67', 'fortune-dragon', 'fortune-dragon', 'loss', 'balance_bonus', 0.40, 'worldslot', 0, 0, '1', '2024-07-06 23:46:16', '2024-07-06 23:46:16'),
(69, 274, '1720320687', '5bbd75fa-5c66-4159-9f90-0e927c677be5', 'fortune-rabbit', 'fortune-rabbit', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-06 23:51:27', '2024-07-06 23:51:27'),
(70, 274, '1720320689', '774b2202-65af-4b94-911f-a95396fd8cda', 'fortune-rabbit', 'fortune-rabbit', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-06 23:51:29', '2024-07-06 23:51:29'),
(71, 274, '1720320692', '060f277e-3c04-4a21-9f65-477f5ee9adfd', 'fortune-rabbit', 'fortune-rabbit', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-06 23:51:32', '2024-07-06 23:51:32'),
(72, 274, '1720320694', '335f698f-1afb-4cdf-99f8-71800e8b6805', 'fortune-rabbit', 'fortune-rabbit', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-06 23:51:34', '2024-07-06 23:51:34'),
(73, 274, '1720320697', 'ac8cce83-672c-4697-ad10-76d0be34134a', 'fortune-rabbit', 'fortune-rabbit', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-06 23:51:37', '2024-07-06 23:51:37'),
(74, 274, '1720320814', 'ae71b320-d655-4ca6-b0c3-421bb7d67fe7', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-06 23:53:34', '2024-07-06 23:53:34'),
(75, 274, '1720320817', '3952a89a-7ca3-42fa-8df7-bbdc3fac5288', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-06 23:53:37', '2024-07-06 23:53:37'),
(76, 274, '1720320819', '0fea6377-e90f-4373-b537-7275a33a12a0', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-06 23:53:39', '2024-07-06 23:53:39'),
(77, 274, '1720320821', 'f1e1d2c5-433c-4e70-9f86-4f6f9c5072bf', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-06 23:53:41', '2024-07-06 23:53:41'),
(78, 274, '1720320822', '60433480-4449-49f7-8d52-682ddf547390', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-06 23:53:42', '2024-07-06 23:53:42'),
(79, 274, '1720320823', '9c78724e-c612-4255-aca3-c42fd0d6a96e', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-06 23:53:43', '2024-07-06 23:53:43'),
(80, 274, '1720320828', 'c80be217-1ae1-4079-be9a-2c400af17937', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-06 23:53:48', '2024-07-06 23:53:48'),
(81, 274, '1720320829', '98fe3a85-794d-48ad-8f63-ff87d0410b06', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-06 23:53:49', '2024-07-06 23:53:49'),
(82, 274, '1720320830', '06b622ad-3b89-438b-9251-c5aa48950169', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-06 23:53:50', '2024-07-06 23:53:50'),
(83, 274, '1720320831', 'a52cf2c0-6c1d-4c18-b1a5-893b0b9de631', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-06 23:53:51', '2024-07-06 23:53:51'),
(84, 274, '1720320832', '5ca0a16c-bc08-4a90-a14b-8f5303235b6b', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-06 23:53:52', '2024-07-06 23:53:52'),
(85, 274, '1720320834', '7d531f2e-c99d-40af-ae07-b4d94c9fc708', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-06 23:53:54', '2024-07-06 23:53:54'),
(86, 274, '1720320835', 'bc9c906e-6c04-4a4d-9f7b-6630eb55893e', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-06 23:53:55', '2024-07-06 23:53:55'),
(87, 274, '1720320837', '7889ed9a-8f8e-43e6-860a-76301d5ec62a', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-06 23:53:57', '2024-07-06 23:53:57'),
(88, 274, '1720320838', 'e7fb2e25-f2af-4eaa-8eb3-98e558bdb935', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-06 23:53:58', '2024-07-06 23:53:58'),
(89, 274, '1720320839', 'caa5377a-22b4-40c5-9d31-846b4d4e0b56', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-06 23:53:59', '2024-07-06 23:53:59'),
(90, 274, '1720320840', '6421b5db-6a4e-4a31-8004-2386495eb6e7', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-06 23:54:00', '2024-07-06 23:54:00'),
(91, 274, '1720320841', '4018ccd1-15d6-4430-b951-0db3e70c2c38', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-06 23:54:01', '2024-07-06 23:54:01'),
(92, 274, '1720320842', '53ebc1d0-3a6c-4fb7-b6f4-c91da367b09d', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_bonus', 0.40, 'worldslot', 0, 0, '1', '2024-07-06 23:54:02', '2024-07-06 23:54:02'),
(93, 274, '1720320843', 'cd931756-594d-46b0-b67d-534ba24c33db', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_bonus', 0.40, 'worldslot', 0, 0, '1', '2024-07-06 23:54:03', '2024-07-06 23:54:03'),
(94, 274, '1720320844', '58d238d1-991d-4b96-aae2-958c8398892e', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_bonus', 0.40, 'worldslot', 0, 0, '1', '2024-07-06 23:54:04', '2024-07-06 23:54:04'),
(95, 274, '1720320845', '20010548-0618-47cc-9f1b-c80cf1880923', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_bonus', 0.40, 'worldslot', 0, 0, '1', '2024-07-06 23:54:05', '2024-07-06 23:54:05'),
(96, 274, '1720320846', 'c3121e83-a32c-46ef-8454-5a2cfea9db9a', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_bonus', 0.40, 'worldslot', 0, 0, '1', '2024-07-06 23:54:06', '2024-07-06 23:54:06'),
(97, 274, '1720320848', '01e30214-4a68-4918-9358-e21e3cdd1647', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_bonus', 0.40, 'worldslot', 0, 0, '1', '2024-07-06 23:54:08', '2024-07-06 23:54:08'),
(98, 275, '1720325914', '0c072d57-f248-40f8-a322-00d21603de34', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 01:18:34', '2024-07-07 01:18:34'),
(99, 275, '1720325919', '143698c1-b3d9-4730-963f-1289f828d1e7', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 01:18:39', '2024-07-07 01:18:39'),
(100, 275, '1720325926', 'a7fc4205-c0df-4169-9532-5cbcc5783ab0', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 01:18:46', '2024-07-07 01:18:46'),
(101, 275, '1720325933', '94c598c7-ed11-4a21-9c4b-17b48b152093', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 01:18:53', '2024-07-07 01:18:53'),
(102, 275, '1720325941', '30ea7689-534b-4a34-8bbc-eb39b5eb7242', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 01:19:01', '2024-07-07 01:19:01'),
(103, 275, '1720325950', 'a733b99e-5f86-4c91-a712-94d96be979e3', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 01:19:10', '2024-07-07 01:19:10'),
(104, 275, '1720325956', '53e3c4c6-8f76-491d-9d63-ce23b686c1c8', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 01:19:16', '2024-07-07 01:19:16'),
(105, 275, '1720325962', '0e48eee9-8d6f-4386-8afb-2d3c245634d8', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 01:19:22', '2024-07-07 01:19:22'),
(106, 275, '1720325972', 'f9ca0b05-e418-4b65-8c96-117adbadcffb', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 01:19:32', '2024-07-07 01:19:32'),
(107, 275, '1720325991', '20bdf8b7-984d-430c-8bb5-01fb4e23eb17', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 01:19:51', '2024-07-07 01:19:51'),
(108, 275, '1720325998', '835c2492-10ff-4fdd-9802-a2331d4fdbf7', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 01:19:58', '2024-07-07 01:19:58'),
(109, 275, '1720326010', 'a92c6abc-7c52-4f9d-86b5-aa32068fd85f', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 01:20:10', '2024-07-07 01:20:10'),
(110, 275, '1720326016', '65116e9d-530a-4bc7-b8b8-bb44639a770a', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 01:20:16', '2024-07-07 01:20:16'),
(111, 275, '1720326021', '80f0894e-9181-4d6c-8c57-9b5086ed5981', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 01:20:21', '2024-07-07 01:20:21'),
(112, 275, '1720326029', '89c3b80a-8791-4c25-ae6f-5689cd2133f9', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 01:20:29', '2024-07-07 01:20:29'),
(113, 275, '1720326040', 'dfe31673-936c-49df-8728-3734ebc4123d', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 01:20:40', '2024-07-07 01:20:40'),
(114, 275, '1720326050', 'bed0de12-4544-4987-bd5c-4fa0474c44bb', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 01:20:50', '2024-07-07 01:20:50'),
(115, 275, '1720326056', '3d792d0b-cad4-4569-81b5-05e94af46553', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 01:20:56', '2024-07-07 01:20:56'),
(116, 275, '1720326060', 'f992f4ca-6f86-4304-b39c-9d1a3e0201ef', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 01:21:00', '2024-07-07 01:21:00'),
(117, 275, '1720326064', '45120269-f2b8-4fc4-9a88-a62fd91ca91b', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 01:21:04', '2024-07-07 01:21:04'),
(118, 275, '1720326070', 'fd156b14-a253-40dc-98d3-94bbbbc15b3b', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 01:21:10', '2024-07-07 01:21:10'),
(119, 275, '1720326075', '0dbe9520-ce8c-4e8d-97cd-5f37c37a3847', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 01:21:15', '2024-07-07 01:21:15'),
(120, 275, '1720326081', 'ff34bf74-bc0d-40c6-be98-a0d4ca36afc6', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 01:21:21', '2024-07-07 01:21:21'),
(121, 275, '1720326086', '27de5245-00c8-4877-b21a-d234b558b96d', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 01:21:26', '2024-07-07 01:21:26'),
(122, 275, '1720326092', 'b7be4971-0186-4ec2-9224-f90f2f9df430', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 01:21:32', '2024-07-07 01:21:32'),
(123, 275, '1720326100', '61687bbd-bb37-45fd-a93e-cbbf55f2fab2', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_bonus', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 01:21:40', '2024-07-07 01:21:40'),
(124, 275, '1720326104', '89aeec95-591a-450f-8a96-ee3d21754ebb', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_bonus', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 01:21:44', '2024-07-07 01:21:44'),
(125, 275, '1720326107', '59e0b454-1591-4f55-8f71-df10cb6e02f6', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_bonus', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 01:21:47', '2024-07-07 01:21:47'),
(126, 275, '1720326109', 'cad8fbef-efed-4ec9-9786-06f7ff68c680', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_bonus', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 01:21:49', '2024-07-07 01:21:49'),
(127, 275, '1720326112', '61f576dc-e976-4374-bf70-3ba7ffff46c5', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_bonus', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 01:21:52', '2024-07-07 01:21:52'),
(128, 275, '1720326115', '784d033d-758d-4e19-9211-522f014280f9', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_bonus', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 01:21:55', '2024-07-07 01:21:55'),
(129, 276, '1720328072', '68f4d90e-c324-49a0-831b-9875cc24b4ca', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 01:54:32', '2024-07-07 01:54:32'),
(130, 276, '1720328073', '77d071d4-884e-4d87-aa31-f11290d12ba4', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 01:54:33', '2024-07-07 01:54:33'),
(131, 276, '1720328074', '2e6bd423-5886-4216-a8d4-44e0494897b7', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 01:54:34', '2024-07-07 01:54:34'),
(132, 276, '1720328076', '58d61ed1-1821-4cf5-93ad-b329896b515d', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 01:54:36', '2024-07-07 01:54:36'),
(133, 276, '1720328077', 'f2b84455-2ddb-45a1-bdd1-daeae39659d7', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 01:54:37', '2024-07-07 01:54:37'),
(134, 276, '1720328079', '328308f4-6f1a-4840-b822-4f4d1184ffe8', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 01:54:39', '2024-07-07 01:54:39'),
(135, 276, '1720328080', '16d0d250-be51-45cf-9880-cdca201a9d51', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 01:54:40', '2024-07-07 01:54:40'),
(136, 276, '1720328082', 'af98d7f7-5149-4687-b932-387c3c88a815', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 01:54:42', '2024-07-07 01:54:42'),
(137, 276, '1720328083', '2f817444-26cf-443a-8899-a16599622d4b', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 01:54:43', '2024-07-07 01:54:43'),
(138, 276, '1720328084', '9fbf1896-e87d-4d9e-830c-314d332d2dcc', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 01:54:44', '2024-07-07 01:54:44'),
(139, 276, '1720328086', 'b5ceb520-085c-42d7-9378-3bb1f9447429', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 01:54:46', '2024-07-07 01:54:46'),
(140, 276, '1720328087', '90b5e9cb-77d4-4c54-8fa6-43147ade9085', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 01:54:47', '2024-07-07 01:54:47'),
(141, 276, '1720328089', 'c34a4aa6-fbad-4a0d-abfa-76c6d360c793', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 01:54:49', '2024-07-07 01:54:49'),
(142, 276, '1720328091', '491e290e-b4fd-4a95-96a6-ab3d3c698981', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 01:54:51', '2024-07-07 01:54:51'),
(143, 276, '1720328093', 'd26a8a3f-029f-4804-bbbe-8e5e36b2e7cd', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 01:54:53', '2024-07-07 01:54:53'),
(144, 276, '1720328094', '92bf278f-b4fa-4cd0-aca8-64d36a4790a5', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 01:54:54', '2024-07-07 01:54:54'),
(145, 276, '1720328097', 'ed063ead-ee96-403d-a178-e0c0b3e94d7f', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 01:54:57', '2024-07-07 01:54:57'),
(146, 276, '1720328101', 'd7eb3cb9-0e2c-45ee-9997-bfeccb8a2802', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 01:55:01', '2024-07-07 01:55:01'),
(147, 276, '1720328102', 'a9b00cab-1a95-4196-9aa6-de53cae729fe', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 01:55:02', '2024-07-07 01:55:02'),
(148, 276, '1720328103', '8df3d9ec-9b36-434e-8818-b356b63b4a39', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 01:55:03', '2024-07-07 01:55:03'),
(149, 276, '1720328105', '09c8c43a-b508-45f0-95fc-8bdc81162f2b', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 01:55:05', '2024-07-07 01:55:05'),
(150, 276, '1720328106', 'd1d1c589-402d-4895-b146-02dc7b26ebad', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 01:55:06', '2024-07-07 01:55:06'),
(151, 276, '1720328107', '6b8c1149-a507-44b0-a1d0-3c3fdc35c36e', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 01:55:07', '2024-07-07 01:55:07'),
(152, 276, '1720328109', '82fc65eb-520d-4efe-90ff-5ac01a684586', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 01:55:09', '2024-07-07 01:55:09'),
(153, 276, '1720328110', 'c4832db2-5d4e-4a42-9a3a-08efe381dc82', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 01:55:10', '2024-07-07 01:55:10'),
(154, 276, '1720328114', 'cfd70882-4172-4685-937d-d2937b757cfb', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 01:55:14', '2024-07-07 01:55:14'),
(155, 276, '1720328115', 'e0255289-a976-4ad5-8a59-360abfa8f679', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 01:55:15', '2024-07-07 01:55:15'),
(156, 276, '1720328118', '424ba502-5081-4724-a41f-61d9d9b5b11c', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 01:55:18', '2024-07-07 01:55:18'),
(157, 276, '1720328119', 'bed5e274-f4dd-43c8-a220-2b7bc772d9b8', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 01:55:19', '2024-07-07 01:55:19'),
(158, 276, '1720328121', '335684e4-eb3e-4fb7-bf94-f4275ac5e6e0', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 01:55:21', '2024-07-07 01:55:21'),
(159, 276, '1720328125', '5df061c8-cffc-406a-8da5-852f23e798bd', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 01:55:25', '2024-07-07 01:55:25'),
(160, 276, '1720328127', '27b8c43e-76bf-48bf-aa63-3fee449ff4c4', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 01:55:27', '2024-07-07 01:55:27'),
(161, 276, '1720328128', '29fc6d02-f063-4012-ab61-3298832989f6', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 01:55:28', '2024-07-07 01:55:28'),
(162, 276, '1720328130', 'c7049a69-f34b-476b-a76c-a26b76e62998', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 01:55:30', '2024-07-07 01:55:30'),
(163, 276, '1720328132', '130b49da-1cc2-4436-884c-0bee74adb23b', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 01:55:32', '2024-07-07 01:55:32'),
(164, 276, '1720328134', '8ffc768b-68a8-42a5-a326-9e2684990c85', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 01:55:34', '2024-07-07 01:55:34'),
(165, 276, '1720328135', '6bddb091-a831-4dab-8d99-314c85f610bd', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 01:55:35', '2024-07-07 01:55:35'),
(166, 276, '1720328137', '2bd2844c-2a3d-4e8e-92b4-23494addfbb7', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_bonus', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 01:55:37', '2024-07-07 01:55:37'),
(167, 276, '1720328138', 'cba07ea4-e624-4fb5-b918-ad20fc7d7bef', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_bonus', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 01:55:38', '2024-07-07 01:55:38'),
(168, 276, '1720328139', 'c377be01-4758-450b-9c7a-f995e6671155', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_bonus', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 01:55:39', '2024-07-07 01:55:39'),
(169, 276, '1720328141', 'adfb4ac9-04a7-41e9-bdf6-9df763793925', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_bonus', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 01:55:41', '2024-07-07 01:55:41'),
(170, 276, '1720328142', '20e362dc-3b80-4261-b072-c28c37a7c46c', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_bonus', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 01:55:42', '2024-07-07 01:55:42'),
(171, 276, '1720328144', 'b1efd122-ff0e-4885-8a53-b87f47904f80', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_bonus', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 01:55:44', '2024-07-07 01:55:44'),
(172, 276, '1720328145', 'a2c28141-6518-4243-b9c2-18b34aa2ee9a', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_bonus', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 01:55:45', '2024-07-07 01:55:45'),
(173, 276, '1720328146', '38f710eb-d428-47a8-9082-b45d14c97ef7', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_bonus', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 01:55:46', '2024-07-07 01:55:46'),
(174, 276, '1720328150', 'fd337f56-1f0b-4f84-a53f-c04a91f70b39', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_bonus', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 01:55:50', '2024-07-07 01:55:50'),
(175, 276, '1720328153', 'df2718c2-6481-415b-9b53-2a69bc20d67c', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_bonus', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 01:55:53', '2024-07-07 01:55:53'),
(176, 272, '1720353427', 'e013cfef-9884-40ad-a47a-a4f9889c29f4', 'fortune-dragon', 'fortune-dragon', 'loss', 'balance', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 08:57:07', '2024-07-07 08:57:07'),
(177, 272, '1720353428', '6f3a0e1c-d5dc-4889-a067-696cdab8d2cf', 'fortune-dragon', 'fortune-dragon', 'loss', 'balance', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 08:57:08', '2024-07-07 08:57:08'),
(178, 272, '1720353430', 'd4411f75-c79c-4f50-918f-1fe40c0ed919', 'fortune-dragon', 'fortune-dragon', 'win', 'balance', 2.40, 'worldslot', 0, 0, '1', '2024-07-07 08:57:10', '2024-07-07 08:57:10'),
(179, 272, '1720353434', '0b64bdee-2159-4fc2-8e8d-04fda459f0ba', 'fortune-dragon', 'fortune-dragon', 'loss', 'balance', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 08:57:14', '2024-07-07 08:57:14'),
(180, 272, '1720353434', '8a1a1afe-2162-413e-9f1b-2a912353bd3f', 'fortune-dragon', 'fortune-dragon', 'loss', 'balance', 0.00, 'worldslot', 0, 0, '1', '2024-07-07 08:57:14', '2024-07-07 08:57:14'),
(181, 272, '1720353443', '79b5fbb0-7afc-4415-9b10-97e49f137a11', 'fortune-dragon', 'fortune-dragon', 'win', 'balance', 19.20, 'worldslot', 0, 0, '1', '2024-07-07 08:57:23', '2024-07-07 08:57:23'),
(182, 272, '1720353451', '3faecb7e-7ef6-4a0c-a458-9e3eccb3b36b', 'fortune-dragon', 'fortune-dragon', 'win', 'balance', 7.68, 'worldslot', 0, 0, '1', '2024-07-07 08:57:31', '2024-07-07 08:57:31'),
(183, 272, '1720353458', '84caaa24-7c31-4370-8e4e-cf8f7bbf0078', 'fortune-dragon', 'fortune-dragon', 'loss', 'balance', 0.00, 'worldslot', 0, 0, '1', '2024-07-07 08:57:38', '2024-07-07 08:57:38'),
(184, 272, '1720353460', 'cb72aaaa-a326-4ef0-9123-c00348713c3f', 'fortune-dragon', 'fortune-dragon', 'loss', 'balance', 0.00, 'worldslot', 0, 0, '1', '2024-07-07 08:57:40', '2024-07-07 08:57:40'),
(185, 272, '1720353463', 'c2e2a776-14aa-4f2b-9606-d450046c1e85', 'fortune-dragon', 'fortune-dragon', 'loss', 'balance', 0.00, 'worldslot', 0, 0, '1', '2024-07-07 08:57:43', '2024-07-07 08:57:43'),
(186, 272, '1720353465', '656b6123-a63c-4cf6-9f64-c3e4e7ad8633', 'fortune-dragon', 'fortune-dragon', 'loss', 'balance', 0.00, 'worldslot', 0, 0, '1', '2024-07-07 08:57:45', '2024-07-07 08:57:45'),
(187, 272, '1720353467', '3d67213d-c3d3-4e23-a88c-6ba46698ca30', 'fortune-dragon', 'fortune-dragon', 'win', 'balance', 21.12, 'worldslot', 0, 0, '1', '2024-07-07 08:57:47', '2024-07-07 08:57:47'),
(188, 272, '1720353480', '6dd6b66c-48f0-40f1-9a50-edcb4ef1da79', 'fortune-dragon', 'fortune-dragon', 'loss', 'balance_withdrawal', 2.40, 'worldslot', 0, 0, '1', '2024-07-07 08:58:00', '2024-07-07 08:58:00'),
(189, 272, '1720353482', '17c848ef-2240-430a-bec7-0dbe2622e7ad', 'fortune-dragon', 'fortune-dragon', 'loss', 'balance_withdrawal', 4.00, 'worldslot', 0, 0, '1', '2024-07-07 08:58:02', '2024-07-07 08:58:02'),
(190, 272, '1720353483', '917c26f2-b943-449e-8999-0b091d3616b1', 'fortune-dragon', 'fortune-dragon', 'loss', 'balance', 0.00, 'worldslot', 0, 0, '1', '2024-07-07 08:58:03', '2024-07-07 08:58:03'),
(191, 272, '1720353491', '898d800a-f19e-4414-b580-e12804d0cedd', 'fortune-dragon', 'fortune-dragon', 'loss', 'balance', 0.00, 'worldslot', 0, 0, '1', '2024-07-07 08:58:11', '2024-07-07 08:58:11'),
(192, 272, '1720353493', '210cec0c-27ef-4e98-a123-c1c0b0665282', 'fortune-dragon', 'fortune-dragon', 'win', 'balance', 160.00, 'worldslot', 0, 0, '1', '2024-07-07 08:58:13', '2024-07-07 08:58:13'),
(193, 272, '1720353502', '829a89b1-8563-4893-964c-677eabc82b74', 'fortune-dragon', 'fortune-dragon', 'loss', 'balance', 0.00, 'worldslot', 0, 0, '1', '2024-07-07 08:58:22', '2024-07-07 08:58:22'),
(194, 272, '1720353504', 'bbd43187-0303-4c28-8f0c-44a0cf8007c5', 'fortune-dragon', 'fortune-dragon', 'loss', 'balance', 0.00, 'worldslot', 0, 0, '1', '2024-07-07 08:58:24', '2024-07-07 08:58:24'),
(195, 272, '1720353506', 'a1f0c6c4-8a56-4f2a-9b73-a6c815bfc1c9', 'fortune-dragon', 'fortune-dragon', 'loss', 'balance', 0.00, 'worldslot', 0, 0, '1', '2024-07-07 08:58:26', '2024-07-07 08:58:26'),
(196, 272, '1720353509', 'a6c1bcc1-19fd-452f-894a-356a2de70e1e', 'fortune-dragon', 'fortune-dragon', 'loss', 'balance', 0.00, 'worldslot', 0, 0, '1', '2024-07-07 08:58:29', '2024-07-07 08:58:29'),
(197, 272, '1720353511', '74fd42e0-b568-41b7-9c42-daa5d1e5d1cd', 'fortune-dragon', 'fortune-dragon', 'win', 'balance', 160.00, 'worldslot', 0, 0, '1', '2024-07-07 08:58:31', '2024-07-07 08:58:31'),
(198, 272, '1720353530', '6c0667a7-0cd5-47a1-b76e-9a7a1ba4b83a', 'fortune-dragon', 'fortune-dragon', 'win', 'balance_withdrawal', 19.20, 'worldslot', 0, 0, '1', '2024-07-07 08:58:50', '2024-07-07 08:58:50'),
(199, 272, '1720353534', '12c882d0-ea93-4b4a-b678-8ec6a4c7d663', 'fortune-dragon', 'fortune-dragon', 'loss', 'balance_withdrawal', 4.00, 'worldslot', 0, 0, '1', '2024-07-07 08:58:54', '2024-07-07 08:58:54'),
(200, 272, '1720353534', '5c8b994d-a4bd-4279-a0ab-20a9c0cdff77', 'fortune-dragon', 'fortune-dragon', 'loss', 'balance', 0.00, 'worldslot', 0, 0, '1', '2024-07-07 08:58:54', '2024-07-07 08:58:54'),
(201, 272, '1720353542', 'a1251771-41c5-4208-bd34-f0247ebd56b0', 'fortune-dragon', 'fortune-dragon', 'win', 'balance', 32.00, 'worldslot', 0, 0, '1', '2024-07-07 08:59:02', '2024-07-07 08:59:02'),
(202, 272, '1720353550', 'bb0b48e6-6299-44da-9a02-f5abc4d7d9bc', 'fortune-dragon', 'fortune-dragon', 'win', 'balance', 16.80, 'worldslot', 0, 0, '1', '2024-07-07 08:59:10', '2024-07-07 08:59:10'),
(203, 272, '1720353555', '22a4731e-9c5a-44d6-bde4-c75e7ee5c83f', 'fortune-dragon', 'fortune-dragon', 'loss', 'balance', 0.00, 'worldslot', 0, 0, '1', '2024-07-07 08:59:15', '2024-07-07 08:59:15'),
(204, 272, '1720353557', '37d3150e-2344-4d02-83ef-9a9c08987b3a', 'fortune-dragon', 'fortune-dragon', 'loss', 'balance', 0.00, 'worldslot', 0, 0, '1', '2024-07-07 08:59:17', '2024-07-07 08:59:17'),
(205, 272, '1720353559', '7f28b2e4-c8bb-4f91-afd5-c2e3d22566c8', 'fortune-dragon', 'fortune-dragon', 'loss', 'balance', 0.00, 'worldslot', 0, 0, '1', '2024-07-07 08:59:19', '2024-07-07 08:59:19'),
(206, 272, '1720353562', 'c694f888-2fc7-4154-95ca-c00c6a81b9f7', 'fortune-dragon', 'fortune-dragon', 'loss', 'balance', 0.00, 'worldslot', 0, 0, '1', '2024-07-07 08:59:22', '2024-07-07 08:59:22'),
(207, 272, '1720353564', '92895afa-6090-4848-a65e-d7f20a0901e5', 'fortune-dragon', 'fortune-dragon', 'win', 'balance', 38.40, 'worldslot', 0, 0, '1', '2024-07-07 08:59:24', '2024-07-07 08:59:24'),
(208, 272, '1720353591', '30d5fbf0-0111-461b-abc9-15afb00a805f', 'fortune-dragon', 'fortune-dragon', 'loss', 'balance_withdrawal', 300.00, 'worldslot', 0, 0, '1', '2024-07-07 08:59:51', '2024-07-07 08:59:51'),
(209, 272, '1720353596', 'd9dfcfb2-3d0e-4c08-a206-b190d9e458e9', 'fortune-dragon', 'fortune-dragon', 'loss', 'balance_withdrawal', 250.00, 'worldslot', 0, 0, '1', '2024-07-07 08:59:56', '2024-07-07 08:59:56'),
(210, 272, '1720353596', 'eece2d81-4c12-44d6-b286-8a2af4aea8e2', 'fortune-dragon', 'fortune-dragon', 'loss', 'balance', 0.00, 'worldslot', 0, 0, '1', '2024-07-07 08:59:56', '2024-07-07 08:59:56'),
(211, 272, '1720353652', '3fbdddc9-fd26-401d-9a4c-49060e74c058', 'fortune-ox', 'fortune-ox', 'loss', 'balance', 0.50, 'worldslot', 0, 0, '1', '2024-07-07 09:00:52', '2024-07-07 09:00:52'),
(212, 272, '1720353655', 'f104e067-9027-4ecd-9994-d7e2416eb1e3', 'fortune-ox', 'fortune-ox', 'loss', 'balance_withdrawal', 1.50, 'worldslot', 0, 0, '1', '2024-07-07 09:00:55', '2024-07-07 09:00:55'),
(213, 272, '1720353656', 'c6d3f2d5-e626-4824-81dd-c6b2afc55203', 'fortune-ox', 'fortune-ox', 'win', 'balance_withdrawal', 43.50, 'worldslot', 0, 0, '1', '2024-07-07 09:00:56', '2024-07-07 09:00:56'),
(214, 272, '1720353677', 'b865ed18-79fd-481f-8bb1-b35378837c08', 'fortune-ox', 'fortune-ox', 'win', 'balance_withdrawal', 145.00, 'worldslot', 0, 0, '1', '2024-07-07 09:01:17', '2024-07-07 09:01:17'),
(215, 272, '1720353702', 'f772f558-8053-4130-be6e-695fccf91146', 'fortune-ox', 'fortune-ox', 'loss', 'balance_withdrawal', 15.00, 'worldslot', 0, 0, '1', '2024-07-07 09:01:42', '2024-07-07 09:01:42'),
(216, 272, '1720353703', '87a87f0a-ee5c-4e85-b64e-a9c1fe26daf4', 'fortune-ox', 'fortune-ox', 'loss', 'balance_withdrawal', 0.00, 'worldslot', 0, 0, '1', '2024-07-07 09:01:43', '2024-07-07 09:01:43'),
(217, 272, '1720353730', 'ee2e2b80-0ada-4b31-8a59-5ce8d445d9f8', 'fortune-ox', 'fortune-ox', 'win', 'balance_withdrawal', 7485.00, 'worldslot', 0, 0, '1', '2024-07-07 09:02:10', '2024-07-07 09:02:10'),
(218, 272, '1720354087', 'e222b6ef-f782-4679-9397-3cf14166ed4f', 'fortune-ox', 'fortune-ox', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-07 09:08:07', '2024-07-07 09:08:07'),
(219, 272, '1720354090', 'dc10619d-8e7c-499b-bfe2-5358d2319e68', 'fortune-ox', 'fortune-ox', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-07 09:08:10', '2024-07-07 09:08:10'),
(220, 272, '1720354092', 'ff76c96f-70ff-483b-948a-c7b3e65553c9', 'fortune-ox', 'fortune-ox', 'win', 'balance_withdrawal', 43.50, 'worldslot', 0, 0, '1', '2024-07-07 09:08:12', '2024-07-07 09:08:12'),
(221, 272, '1720354117', '989bba54-195c-4697-bcbc-d651fcd6ed28', 'fortune-ox', 'fortune-ox', 'win', 'balance_withdrawal', 122.50, 'worldslot', 0, 0, '1', '2024-07-07 09:08:37', '2024-07-07 09:08:37'),
(222, 272, '1720354140', '3134800d-40fb-45f9-ac3a-4c00b5aca9b8', 'fortune-ox', 'fortune-ox', 'win', 'balance_withdrawal', 20.00, 'worldslot', 0, 0, '1', '2024-07-07 09:09:00', '2024-07-07 09:09:00'),
(223, 272, '1720354161', '16b0ffd3-05e6-4cd5-a428-c02037e567d9', 'fortune-ox', 'fortune-ox', 'win', 'balance_withdrawal', 245.00, 'worldslot', 0, 0, '1', '2024-07-07 09:09:21', '2024-07-07 09:09:21'),
(224, 272, '1720354193', '2130770d-c104-4c41-b069-c125f503a5cc', 'fortune-ox', 'fortune-ox', 'win', 'balance_withdrawal', 2.50, 'worldslot', 0, 0, '1', '2024-07-07 09:09:53', '2024-07-07 09:09:53'),
(225, 272, '1720354212', '9bc33321-6a5c-4d3f-924d-a201386333bf', 'fortune-ox', 'fortune-ox', 'win', 'balance_withdrawal', 245.00, 'worldslot', 0, 0, '1', '2024-07-07 09:10:12', '2024-07-07 09:10:12'),
(226, 277, '1720355947', 'caf03f09-c806-4333-bab2-5457c732c46d', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 09:39:07', '2024-07-07 09:39:07'),
(227, 277, '1720355949', '524b704f-92d2-443f-8995-23f4eaf81f1c', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 09:39:09', '2024-07-07 09:39:09'),
(228, 277, '1720355950', '109978f8-7331-4d16-b375-88e1de503334', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 09:39:10', '2024-07-07 09:39:11'),
(229, 277, '1720355952', 'cc68d213-9e11-40de-9368-0915217f1828', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 09:39:12', '2024-07-07 09:39:12'),
(230, 277, '1720355956', 'be7595e0-66de-4760-beff-3ab592ccd248', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 09:39:16', '2024-07-07 09:39:16'),
(231, 277, '1720355961', '851afd85-7923-40cc-8aea-856d15206e26', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 09:39:21', '2024-07-07 09:39:21'),
(232, 277, '1720355963', '33643e5f-919b-4dd5-bbfe-7f8a85a1acb8', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 09:39:23', '2024-07-07 09:39:23'),
(233, 277, '1720355966', 'e36c6ab2-6669-4dca-9fe3-53f90a45f65a', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 09:39:26', '2024-07-07 09:39:26'),
(234, 277, '1720356014', '76aab1bb-8446-4553-ad91-ab309724d783', 'fortune-rabbit', 'fortune-rabbit', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-07 09:40:14', '2024-07-07 09:40:14'),
(235, 277, '1720356015', '793067db-ad3b-4630-af3e-c3a4f372c6dd', 'fortune-rabbit', 'fortune-rabbit', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-07 09:40:15', '2024-07-07 09:40:15'),
(236, 277, '1720356017', 'b1fb269d-c4ed-4443-b453-cf24d423ed6e', 'fortune-rabbit', 'fortune-rabbit', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-07 09:40:17', '2024-07-07 09:40:17'),
(237, 277, '1720356018', '9dbbc44e-498e-43f6-b50d-961912e1c8de', 'fortune-rabbit', 'fortune-rabbit', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-07 09:40:18', '2024-07-07 09:40:18'),
(238, 277, '1720356019', '06bc64e9-710a-4123-87b0-480194bfb0d9', 'fortune-rabbit', 'fortune-rabbit', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-07 09:40:19', '2024-07-07 09:40:19'),
(239, 277, '1720356021', 'e6e61144-4fef-42b1-9f5d-e223140c2fad', 'fortune-rabbit', 'fortune-rabbit', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-07 09:40:21', '2024-07-07 09:40:21'),
(240, 277, '1720356022', '4419043f-14a5-476e-b472-6d6e63e31c0c', 'fortune-rabbit', 'fortune-rabbit', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-07 09:40:22', '2024-07-07 09:40:22'),
(241, 277, '1720356024', 'dd1798a5-730f-4a81-95cd-0b0ed7043d77', 'fortune-rabbit', 'fortune-rabbit', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-07 09:40:24', '2024-07-07 09:40:24'),
(242, 277, '1720356067', '9804348b-75cb-45be-ad50-6d155442d4fa', 'fortune-ox', 'fortune-ox', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-07 09:41:07', '2024-07-07 09:41:07'),
(243, 277, '1720356068', 'b4b70fd2-5829-47a7-8645-9815e163f13e', 'fortune-ox', 'fortune-ox', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-07 09:41:08', '2024-07-07 09:41:08'),
(244, 277, '1720356069', '6479c3eb-ccd8-4257-a27a-01f9fbeeac97', 'fortune-ox', 'fortune-ox', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-07 09:41:09', '2024-07-07 09:41:09'),
(245, 277, '1720356071', 'c165893d-4630-4ce7-9f7a-6f3e76de4754', 'fortune-ox', 'fortune-ox', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-07 09:41:11', '2024-07-07 09:41:11'),
(246, 277, '1720356858', '4ec4e209-7832-49c3-9589-4a7d0aa1fe4d', 'fortune-dragon', 'fortune-dragon', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 09:54:18', '2024-07-07 09:54:18'),
(247, 277, '1720356859', '9ee4b1a7-771c-4fa5-aec3-6c949cbcc13e', 'fortune-dragon', 'fortune-dragon', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 09:54:19', '2024-07-07 09:54:19'),
(248, 277, '1720356907', 'bdf95ecc-3ed3-44ce-9f4f-c77fb6d8c8d3', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 09:55:07', '2024-07-07 09:55:07'),
(249, 277, '1720356909', '601d3ff3-55e9-4268-8e8b-49e7f6d1b744', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 09:55:09', '2024-07-07 09:55:09'),
(250, 277, '1720356911', '976b6458-9eae-4975-92b5-b6ce9c767c02', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 09:55:11', '2024-07-07 09:55:11'),
(251, 277, '1720356913', '7159de0b-d4f0-4b2f-8ff9-36b9124a2987', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 09:55:13', '2024-07-07 09:55:13'),
(252, 277, '1720356914', '7a181de6-81bb-485d-a1f4-a4bf862abbf9', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 09:55:14', '2024-07-07 09:55:14'),
(253, 277, '1720356916', 'f594ace6-5ca5-4a20-a2db-35f329f7f5e4', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 09:55:16', '2024-07-07 09:55:16'),
(254, 277, '1720356961', '3ff61757-9556-4692-88d6-78f6e95c80e0', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 09:56:01', '2024-07-07 09:56:01'),
(255, 277, '1720356962', 'b88acf80-872c-4c00-a620-d7a96aba5f9d', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 09:56:02', '2024-07-07 09:56:02'),
(256, 277, '1720356964', '12000577-f937-4736-b14e-4efc9a0a7d75', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 09:56:04', '2024-07-07 09:56:04'),
(257, 277, '1720357004', '2416b077-eea9-447d-8244-a85d630d0ab9', 'fortune-rabbit', 'fortune-rabbit', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-07 09:56:44', '2024-07-07 09:56:44'),
(258, 277, '1720357006', '52e46b76-d05f-4bed-8c9a-76e3acbbb43b', 'fortune-rabbit', 'fortune-rabbit', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-07 09:56:46', '2024-07-07 09:56:46'),
(259, 277, '1720357007', '33d6bf71-5ee2-4ebd-9763-485ed12c518c', 'fortune-rabbit', 'fortune-rabbit', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-07 09:56:47', '2024-07-07 09:56:47'),
(260, 277, '1720357008', '3ddef2b2-4a22-4b74-b14b-23c9ef80a610', 'fortune-rabbit', 'fortune-rabbit', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-07 09:56:48', '2024-07-07 09:56:48'),
(261, 277, '1720357030', 'b6f773e5-7bbd-448d-b71c-266843667dbe', 'fortune-dragon', 'fortune-dragon', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 09:57:10', '2024-07-07 09:57:10'),
(262, 277, '1720357034', '9495d8eb-a070-45b8-ba5d-0ba213d227b5', 'fortune-dragon', 'fortune-dragon', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 09:57:14', '2024-07-07 09:57:14'),
(263, 277, '1720357039', '906a8da5-77b9-434c-8c47-312d6a91fa5b', 'fortune-dragon', 'fortune-dragon', 'loss', 'balance_withdrawal', 1.20, 'worldslot', 0, 0, '1', '2024-07-07 09:57:19', '2024-07-07 09:57:19'),
(264, 277, '1720357042', '8dd6e93a-3fd4-440f-90be-79a2f09a9313', 'fortune-dragon', 'fortune-dragon', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 09:57:22', '2024-07-07 09:57:22'),
(265, 277, '1720357045', '1cea4377-1a14-4310-ae16-49bf9bcaea3f', 'fortune-dragon', 'fortune-dragon', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 09:57:25', '2024-07-07 09:57:25'),
(266, 277, '1720357095', '268046e7-7811-4aee-839c-688d4c00c8dd', 'chicky-run', 'chicky-run', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-07 09:58:15', '2024-07-07 09:58:15'),
(267, 277, '1720357121', '1683310b-0fce-45bb-bf58-89868ecb15bb', 'chicky-run', 'chicky-run', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-07 09:58:41', '2024-07-07 09:58:41'),
(268, 277, '1720357247', 'f102e2f0-1678-4fe3-936e-504fbb85bca6', 'bikine-paradise', 'bikine-paradise', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-07 10:00:47', '2024-07-07 10:00:47'),
(269, 277, '1720357250', 'db8c34e9-450a-4ba8-ad6f-83306f762dd8', 'bikine-paradise', 'bikine-paradise', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-07 10:00:50', '2024-07-07 10:00:50'),
(270, 277, '1720357251', '0de954ab-af09-42cb-96f7-3e82b625aad6', 'bikine-paradise', 'bikine-paradise', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-07 10:00:51', '2024-07-07 10:00:51'),
(271, 277, '1720357294', '13515094-dc4f-4a61-9428-f99ff4b38059', 'fortune-rabbit', 'fortune-rabbit', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-07 10:01:34', '2024-07-07 10:01:34'),
(272, 277, '1720357295', '5f8bfdb9-ce04-4cf0-9889-3eaea9c3c019', 'fortune-rabbit', 'fortune-rabbit', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-07 10:01:35', '2024-07-07 10:01:35'),
(273, 277, '1720357297', '675a981e-2154-47bd-a540-07930dfb0279', 'fortune-rabbit', 'fortune-rabbit', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-07 10:01:37', '2024-07-07 10:01:37');
INSERT INTO `orders` (`id`, `user_id`, `session_id`, `transaction_id`, `game`, `game_uuid`, `type`, `type_money`, `amount`, `providers`, `refunded`, `status`, `round_id`, `created_at`, `updated_at`) VALUES
(274, 277, '1720357298', 'f6cb1fe5-07f7-480b-93a8-91ba49127068', 'fortune-rabbit', 'fortune-rabbit', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-07 10:01:38', '2024-07-07 10:01:38'),
(275, 277, '1720357300', 'e0468b95-833b-43bf-ac37-459d533a8234', 'fortune-rabbit', 'fortune-rabbit', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-07 10:01:40', '2024-07-07 10:01:40'),
(276, 277, '1720357301', '12122031-e2a7-4d50-980c-772edff36586', 'fortune-rabbit', 'fortune-rabbit', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-07 10:01:41', '2024-07-07 10:01:41'),
(277, 277, '1720357302', '193a0768-ddf6-45e6-a1b5-632d823edc5f', 'fortune-rabbit', 'fortune-rabbit', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-07 10:01:42', '2024-07-07 10:01:42'),
(278, 277, '1720357304', '703a0b08-7e1e-4578-99b0-dda9f3926818', 'fortune-rabbit', 'fortune-rabbit', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-07 10:01:44', '2024-07-07 10:01:44'),
(279, 277, '1720357305', 'a50bb547-e37e-450c-8422-625d490f12d8', 'fortune-rabbit', 'fortune-rabbit', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-07 10:01:45', '2024-07-07 10:01:45'),
(280, 277, '1720357307', 'df3d3d03-faaa-4676-8332-3bc9589581f3', 'fortune-rabbit', 'fortune-rabbit', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-07 10:01:47', '2024-07-07 10:01:47'),
(281, 277, '1720357308', '0088a0e3-c863-4fac-9846-d13173b642b4', 'fortune-rabbit', 'fortune-rabbit', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-07 10:01:48', '2024-07-07 10:01:48'),
(282, 277, '1720357310', 'b94589d3-e968-4b7d-81ef-2a0cea32310b', 'fortune-rabbit', 'fortune-rabbit', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-07 10:01:50', '2024-07-07 10:01:50'),
(283, 277, '1720357401', '742c7896-78e4-4f19-a1c8-3bc594fd6032', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 10:03:21', '2024-07-07 10:03:21'),
(284, 277, '1720357425', '08741fed-f79c-4bff-be97-e8df2c704fef', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 10:03:45', '2024-07-07 10:03:45'),
(285, 277, '1720357426', '9cea3986-a28b-40b0-aeee-fb113ae9c4b4', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 10:03:46', '2024-07-07 10:03:46'),
(286, 277, '1720357427', '651a1a0f-dc15-4911-a6cd-5f7d44978c63', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_bonus', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 10:03:47', '2024-07-07 10:03:47'),
(287, 277, '1720357429', 'f3a8f9a7-b97c-4dff-bdc2-746d884dc077', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_bonus', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 10:03:49', '2024-07-07 10:03:49'),
(288, 277, '1720357433', '4895b419-d6dd-4df5-b735-25352ac62e94', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_bonus', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 10:03:53', '2024-07-07 10:03:53'),
(289, 277, '1720357439', 'ae47d1bb-b8dd-4bb8-8f3b-3778d480044d', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_bonus', 1.20, 'worldslot', 0, 0, '1', '2024-07-07 10:03:59', '2024-07-07 10:03:59'),
(290, 277, '1720357440', 'fb803922-eeea-42d9-af03-72561aa5d7e1', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_bonus', 1.20, 'worldslot', 0, 0, '1', '2024-07-07 10:04:00', '2024-07-07 10:04:00'),
(291, 277, '1720357441', '71891aa5-6c54-41e9-940c-e997a6abfd4b', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_bonus', 1.20, 'worldslot', 0, 0, '1', '2024-07-07 10:04:01', '2024-07-07 10:04:01'),
(292, 277, '1720357443', '6e24cdd1-e111-40b1-ab2c-c5ab9d64752b', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_bonus', 1.20, 'worldslot', 0, 0, '1', '2024-07-07 10:04:03', '2024-07-07 10:04:03'),
(293, 277, '1720357448', 'd32db7a2-a7f6-4a36-9d5c-27becaca6716', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_bonus', 1.20, 'worldslot', 0, 0, '1', '2024-07-07 10:04:08', '2024-07-07 10:04:08'),
(294, 278, '1720367067', '90fc6a5b-6fbe-44e1-beb7-0f1cb275970e', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 12:44:27', '2024-07-07 12:44:27'),
(295, 278, '1720367070', '1279b301-943a-4cce-b3ab-8bea64221eae', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 12:44:30', '2024-07-07 12:44:30'),
(296, 278, '1720367072', 'fee62e8a-d7d1-4df8-a23f-eb390783c524', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 12:44:32', '2024-07-07 12:44:32'),
(297, 278, '1720367074', '0cd0a25b-a6ee-4bea-91c0-9c0930df28be', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 12:44:34', '2024-07-07 12:44:34'),
(298, 278, '1720367076', '2f9b06b7-8ea1-4d24-8e5b-a71dbcfea497', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 12:44:36', '2024-07-07 12:44:36'),
(299, 278, '1720367080', '5cc00a57-466b-472f-89b6-9e01bad9b6a2', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 1.20, 'worldslot', 0, 0, '1', '2024-07-07 12:44:40', '2024-07-07 12:44:40'),
(300, 278, '1720367082', '5e8c7038-5099-40da-8a23-57ba54cf7ad9', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 1.20, 'worldslot', 0, 0, '1', '2024-07-07 12:44:42', '2024-07-07 12:44:42'),
(301, 278, '1720367083', '450b7d25-957a-4fd6-abf5-e86e558f3fb9', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 1.20, 'worldslot', 0, 0, '1', '2024-07-07 12:44:43', '2024-07-07 12:44:43'),
(302, 278, '1720367087', 'ad81c035-3f8c-4d98-826a-172fd0ffcff5', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 1.20, 'worldslot', 0, 0, '1', '2024-07-07 12:44:47', '2024-07-07 12:44:47'),
(303, 278, '1720367090', '1f8a7fae-1056-4574-ad8f-9d74dcb07a0e', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 1.20, 'worldslot', 0, 0, '1', '2024-07-07 12:44:50', '2024-07-07 12:44:50'),
(304, 278, '1720367091', '40f43a9a-8f87-4637-be76-59274a333555', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 1.20, 'worldslot', 0, 0, '1', '2024-07-07 12:44:51', '2024-07-07 12:44:51'),
(305, 278, '1720367095', '6ba978bf-c1a1-42c5-a6e0-932b83ceef4d', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 1.20, 'worldslot', 0, 0, '1', '2024-07-07 12:44:55', '2024-07-07 12:44:55'),
(306, 278, '1720367096', '507fa621-93f5-45a5-9758-fc694f6693c7', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 1.20, 'worldslot', 0, 0, '1', '2024-07-07 12:44:56', '2024-07-07 12:44:56'),
(307, 278, '1720367098', '9277c3e1-cbb2-4af1-aded-1d77bf54a335', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 1.20, 'worldslot', 0, 0, '1', '2024-07-07 12:44:58', '2024-07-07 12:44:58'),
(308, 278, '1720367100', '35e39809-a67f-405f-b3ba-f129326eaba5', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 12:45:00', '2024-07-07 12:45:00'),
(309, 278, '1720367101', 'c96c7997-e615-4147-879d-6df1bed0fb65', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 12:45:01', '2024-07-07 12:45:01'),
(310, 278, '1720367103', '935630cd-3d71-47c1-a0d1-201eea1c4550', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 12:45:03', '2024-07-07 12:45:03'),
(311, 278, '1720367108', '14d206c5-9af0-4217-a5e4-864f16c38100', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 2.00, 'worldslot', 0, 0, '1', '2024-07-07 12:45:08', '2024-07-07 12:45:08'),
(312, 278, '1720367110', '73b661e9-389b-445d-aed5-9acb5c7bd2ff', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 2.00, 'worldslot', 0, 0, '1', '2024-07-07 12:45:10', '2024-07-07 12:45:10'),
(313, 278, '1720367112', '32ff1155-0b0d-430c-a78b-b73c72d2601a', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 2.00, 'worldslot', 0, 0, '1', '2024-07-07 12:45:12', '2024-07-07 12:45:12'),
(314, 278, '1720367114', 'd6789ef1-3ef3-4995-a99a-942095423902', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 1.20, 'worldslot', 0, 0, '1', '2024-07-07 12:45:14', '2024-07-07 12:45:14'),
(315, 278, '1720367115', '814fa44e-b6fd-407e-8216-5b292f8ed414', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 1.20, 'worldslot', 0, 0, '1', '2024-07-07 12:45:15', '2024-07-07 12:45:15'),
(316, 278, '1720367117', '0f6c8b28-0c98-4386-8086-7e396700efa2', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 12:45:17', '2024-07-07 12:45:17'),
(317, 278, '1720367119', '5fe163e2-1dd0-4744-a272-d98668f80de9', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 12:45:19', '2024-07-07 12:45:19'),
(318, 278, '1720367121', 'a6856b64-54ec-4930-954f-0685271c650d', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 12:45:21', '2024-07-07 12:45:21'),
(319, 278, '1720367123', '6da912c1-aef2-4ceb-b06e-c3d02ed501ed', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 12:45:23', '2024-07-07 12:45:23'),
(320, 278, '1720367124', 'a6fea296-1333-475e-8e0a-205e7ff655d8', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 12:45:24', '2024-07-07 12:45:24'),
(321, 278, '1720367512', '90f0ed3b-c387-4a8e-b029-8127a3f5dc8f', 'fortune-dragon', 'fortune-dragon', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 12:51:52', '2024-07-07 12:51:52'),
(322, 278, '1720367514', '795cc8b6-089b-4ce4-9bf3-3c73b68cdf78', 'fortune-dragon', 'fortune-dragon', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 12:51:54', '2024-07-07 12:51:54'),
(323, 278, '1720367517', '40dd2f16-61e2-4fb9-8560-6c70422678cf', 'fortune-dragon', 'fortune-dragon', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 12:51:57', '2024-07-07 12:51:57'),
(324, 278, '1720367519', 'e4e7e3d6-72b1-4ca0-80fe-05fa6a52031a', 'fortune-dragon', 'fortune-dragon', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 12:51:59', '2024-07-07 12:51:59'),
(325, 278, '1720367524', '0650c166-d1c4-4176-a46a-48055a16e712', 'fortune-dragon', 'fortune-dragon', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 12:52:04', '2024-07-07 12:52:04'),
(326, 278, '1720367525', '239ed859-46e8-4395-bf5d-312d9712d029', 'fortune-dragon', 'fortune-dragon', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 12:52:05', '2024-07-07 12:52:05'),
(327, 278, '1720367527', '988c9d13-30e1-4538-86b5-a9ab62d50097', 'fortune-dragon', 'fortune-dragon', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 12:52:07', '2024-07-07 12:52:07'),
(328, 278, '1720367529', '86a83797-7ac3-4891-94eb-923f80984d44', 'fortune-dragon', 'fortune-dragon', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 12:52:09', '2024-07-07 12:52:09'),
(329, 278, '1720367530', '0029af28-b36a-4d99-b4ba-4cefa6549920', 'fortune-dragon', 'fortune-dragon', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 12:52:10', '2024-07-07 12:52:10'),
(330, 278, '1720367531', 'd180d940-d68d-4a01-8178-932585650ebd', 'fortune-dragon', 'fortune-dragon', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 12:52:11', '2024-07-07 12:52:11'),
(331, 278, '1720367533', 'e734aa7d-6903-4e71-80c9-fa24b889fea4', 'fortune-dragon', 'fortune-dragon', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 12:52:13', '2024-07-07 12:52:13'),
(332, 278, '1720367535', 'd410926a-9e44-46fa-b06f-e29c873ffea1', 'fortune-dragon', 'fortune-dragon', 'loss', 'balance_withdrawal', 0.80, 'worldslot', 0, 0, '1', '2024-07-07 12:52:15', '2024-07-07 12:52:15'),
(333, 278, '1720367632', 'ce4db40e-42e3-42b4-a1d1-dc55dc31eaa2', 'fortune-mouse', 'fortune-mouse', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-07 12:53:52', '2024-07-07 12:53:52'),
(334, 278, '1720367635', '74fe402c-be61-43f2-8879-7e811763e36e', 'fortune-mouse', 'fortune-mouse', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-07 12:53:55', '2024-07-07 12:53:55'),
(335, 278, '1720367637', '97206f35-6469-44e1-b30b-b9a486f32b2d', 'fortune-mouse', 'fortune-mouse', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-07 12:53:57', '2024-07-07 12:53:57'),
(336, 278, '1720367638', '66ca31bd-5c60-4643-bbf8-b6932f9c73bc', 'fortune-mouse', 'fortune-mouse', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-07 12:53:58', '2024-07-07 12:53:58'),
(337, 278, '1720367640', '0adc5d18-0567-4154-8acc-2ec7ad301043', 'fortune-mouse', 'fortune-mouse', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-07 12:54:00', '2024-07-07 12:54:00'),
(338, 278, '1720367641', 'cf0b6b1e-928c-43a7-ab24-146e9d680dd2', 'fortune-mouse', 'fortune-mouse', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-07 12:54:01', '2024-07-07 12:54:01'),
(339, 278, '1720367643', '00a5ce67-7456-48fa-87c8-0ed070fd0c0a', 'fortune-mouse', 'fortune-mouse', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-07 12:54:03', '2024-07-07 12:54:03'),
(340, 278, '1720367645', '83bf49bd-cf84-4aa5-b50c-dbbab6dcde4e', 'fortune-mouse', 'fortune-mouse', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-07 12:54:05', '2024-07-07 12:54:05'),
(341, 278, '1720367646', '2e1be2e2-e7a6-4112-a0d1-bd798be71f91', 'fortune-mouse', 'fortune-mouse', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-07 12:54:06', '2024-07-07 12:54:06'),
(342, 278, '1720367647', '689b7c01-d634-497a-a36e-a54125a3eccb', 'fortune-mouse', 'fortune-mouse', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-07 12:54:07', '2024-07-07 12:54:07'),
(343, 278, '1720367649', '884415c7-cda6-4c55-8bad-ddc11f56b91f', 'fortune-mouse', 'fortune-mouse', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-07 12:54:09', '2024-07-07 12:54:09'),
(344, 278, '1720367651', 'af71e412-aede-42eb-a41e-bc8ef1c5af32', 'fortune-mouse', 'fortune-mouse', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-07 12:54:11', '2024-07-07 12:54:11'),
(345, 278, '1720367653', '735ad4e1-0cc5-4747-82d0-0e253bfc10dc', 'fortune-mouse', 'fortune-mouse', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-07 12:54:13', '2024-07-07 12:54:13'),
(346, 278, '1720367654', '022e43a4-293a-4235-b98a-b1f3b7f50bbc', 'fortune-mouse', 'fortune-mouse', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-07 12:54:14', '2024-07-07 12:54:14'),
(347, 278, '1720367656', '21a7edde-d36b-4090-b4ca-2656de188350', 'fortune-mouse', 'fortune-mouse', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-07 12:54:16', '2024-07-07 12:54:16'),
(348, 278, '1720367657', 'd389ab1a-398d-4586-b8c5-c25852e44eff', 'fortune-mouse', 'fortune-mouse', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-07 12:54:17', '2024-07-07 12:54:17'),
(349, 278, '1720367658', '44948fe5-7af0-470d-b4a8-561ab5bfb1c7', 'fortune-mouse', 'fortune-mouse', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-07 12:54:18', '2024-07-07 12:54:18'),
(350, 278, '1720367660', '4c4d35f7-85fc-4594-b6e4-25ab53f95a70', 'fortune-mouse', 'fortune-mouse', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-07 12:54:20', '2024-07-07 12:54:20'),
(351, 278, '1720367661', 'f906ab04-21cf-41a7-8d6a-d3a8c0ca05af', 'fortune-mouse', 'fortune-mouse', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-07 12:54:21', '2024-07-07 12:54:21'),
(352, 272, '1720370360', '8960a353-e9e9-44dc-bfaa-6231faf63d3f', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 500.00, 'worldslot', 0, 0, '1', '2024-07-07 13:39:20', '2024-07-07 13:39:20'),
(353, 272, '1720370366', '2e982168-ef7f-4c66-b1d4-ee06988b9ab1', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 150.00, 'worldslot', 0, 0, '1', '2024-07-07 13:39:26', '2024-07-07 13:39:26'),
(354, 272, '1720370372', '1d4ad8dc-e97e-49ed-aacd-4650d4713982', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 2.00, 'worldslot', 0, 0, '1', '2024-07-07 13:39:32', '2024-07-07 13:39:32'),
(355, 272, '1720370373', '9652f3ca-cde4-48a2-82d0-4cd31ce53aca', 'fortune-tiger', 'fortune-tiger', 'win', 'balance_withdrawal', 3.20, 'worldslot', 0, 0, '1', '2024-07-07 13:39:33', '2024-07-07 13:39:33'),
(356, 272, '1720370386', '656f07df-fe32-4ff6-bc4c-c4c10dfa0ff8', 'fortune-tiger', 'fortune-tiger', 'win', 'balance_withdrawal', 498.00, 'worldslot', 0, 0, '1', '2024-07-07 13:39:46', '2024-07-07 13:39:46'),
(357, 272, '1720387434', '8480ad21-79db-40e6-93b5-ad173b2a1344', 'fortune-tiger', 'fortune-tiger', 'win', 'balance_withdrawal', 64.80, 'worldslot', 0, 0, '1', '2024-07-07 18:23:54', '2024-07-07 18:23:54'),
(358, 272, '1720387450', '28704d69-8ace-4aeb-98b6-6a835ec68f15', 'fortune-tiger', 'fortune-tiger', 'win', 'balance_withdrawal', 996.00, 'worldslot', 0, 0, '1', '2024-07-07 18:24:10', '2024-07-07 18:24:10'),
(359, 288, '1720387890', 'a7b4e97a-34d1-4c50-acf6-ca8ce1db1a7b', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 18:31:30', '2024-07-07 18:31:30'),
(360, 288, '1720387893', '13ecc3cb-b619-4e6b-9b60-896d8543b4a3', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-07 18:31:33', '2024-07-07 18:31:33'),
(361, 288, '1720387920', '8c5bfc96-cd9e-4edc-b1f6-8579cd2979c0', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 3.60, 'worldslot', 0, 0, '1', '2024-07-07 18:32:00', '2024-07-07 18:32:00'),
(362, 288, '1720387922', 'ab29db82-b0cd-4e4d-9bda-86f1e5014854', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 3.60, 'worldslot', 0, 0, '1', '2024-07-07 18:32:02', '2024-07-07 18:32:02'),
(363, 288, '1720387925', '53e84f4a-1407-4cb0-a98f-ac7afc11761f', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 3.60, 'worldslot', 0, 0, '1', '2024-07-07 18:32:05', '2024-07-07 18:32:05'),
(364, 272, '1720476762', '230c2945-4b8d-428a-8054-1381bf8a9180', 'fortune-mouse', 'fortune-mouse', 'loss', 'balance_withdrawal', 2.50, 'worldslot', 0, 0, '1', '2024-07-08 19:12:42', '2024-07-08 19:12:42'),
(365, 272, '1720476763', '920425ba-9237-4656-983c-47cc93ff739a', 'fortune-mouse', 'fortune-mouse', 'win', 'balance_withdrawal', 95.00, 'worldslot', 0, 0, '1', '2024-07-08 19:12:43', '2024-07-08 19:12:43'),
(366, 272, '1720476807', 'c52bbd72-d655-4aba-bfa2-f076567d038c', 'fortune-mouse', 'fortune-mouse', 'win', 'balance_withdrawal', 70.00, 'worldslot', 0, 0, '1', '2024-07-08 19:13:27', '2024-07-08 19:13:27'),
(367, 272, '1720476816', '88edbff1-32f9-4473-b9d8-5aeb4a633c1b', 'fortune-mouse', 'fortune-mouse', 'loss', 'balance_withdrawal', 0.20, 'worldslot', 0, 0, '1', '2024-07-08 19:13:36', '2024-07-08 19:13:36'),
(368, 272, '1720476845', '12ca1ee2-5f7b-4c3d-b32a-cc9a65c4e684', 'fortune-mouse', 'fortune-mouse', 'win', 'balance_withdrawal', 2.00, 'worldslot', 0, 0, '1', '2024-07-08 19:14:05', '2024-07-08 19:14:05'),
(369, 272, '1720476856', '71d377bb-9ed4-422d-9f66-5c71ee5f6cec', 'fortune-mouse', 'fortune-mouse', 'loss', 'balance_withdrawal', 15.00, 'worldslot', 0, 0, '1', '2024-07-08 19:14:16', '2024-07-08 19:14:16'),
(370, 272, '1720476858', '30cf8435-faa6-4a4a-84a4-f82e80e379a5', 'fortune-mouse', 'fortune-mouse', 'loss', 'balance_withdrawal', 0.00, 'worldslot', 0, 0, '1', '2024-07-08 19:14:18', '2024-07-08 19:14:18'),
(371, 272, '1720476883', '0d8a1bb6-573c-4f72-8338-b4dac2683ffe', 'fortune-mouse', 'fortune-mouse', 'win', 'balance_withdrawal', 735.00, 'worldslot', 0, 0, '1', '2024-07-08 19:14:43', '2024-07-08 19:14:43'),
(372, 272, '1720476917', 'abad57dc-dac3-4c3a-aa90-720cf8c87322', 'fortune-mouse', 'fortune-mouse', 'loss', 'balance_withdrawal', 5.00, 'worldslot', 0, 0, '1', '2024-07-08 19:15:17', '2024-07-08 19:15:17'),
(373, 272, '1720476918', 'db746f3d-f9a2-472d-90bc-a01ed00dc4d2', 'fortune-mouse', 'fortune-mouse', 'loss', 'balance_withdrawal', 5.00, 'worldslot', 0, 0, '1', '2024-07-08 19:15:18', '2024-07-08 19:15:18'),
(374, 272, '1720476919', '5e2eb76d-3a87-478a-8a9a-999c8f032d0f', 'fortune-mouse', 'fortune-mouse', 'win', 'balance_withdrawal', 31.00, 'worldslot', 0, 0, '1', '2024-07-08 19:15:19', '2024-07-08 19:15:19'),
(375, 272, '1720476949', '8699cb55-3229-48fe-a7b0-41713536ee82', 'fortune-mouse', 'fortune-mouse', 'win', 'balance_withdrawal', 20.00, 'worldslot', 0, 0, '1', '2024-07-08 19:15:49', '2024-07-08 19:15:49'),
(376, 272, '1720476960', '9b0f9266-5e50-48e6-bb8f-096baab1a5d3', 'fortune-mouse', 'fortune-mouse', 'loss', 'balance_withdrawal', 5.00, 'worldslot', 0, 0, '1', '2024-07-08 19:16:00', '2024-07-08 19:16:00'),
(377, 272, '1720476961', 'ef0d6b30-98c4-4f64-8149-6476c229bcc8', 'fortune-mouse', 'fortune-mouse', 'loss', 'balance_withdrawal', 5.00, 'worldslot', 0, 0, '1', '2024-07-08 19:16:01', '2024-07-08 19:16:01'),
(378, 272, '1720476962', 'e6a0f6fb-c2ac-46bb-8bd5-e67b07d595b1', 'fortune-mouse', 'fortune-mouse', 'win', 'balance_withdrawal', 25.00, 'worldslot', 0, 0, '1', '2024-07-08 19:16:02', '2024-07-08 19:16:02'),
(379, 272, '1720476991', '7b67ac46-8d70-44f5-bfe0-f7ce2614a5a1', 'fortune-mouse', 'fortune-mouse', 'win', 'balance_withdrawal', 300.00, 'worldslot', 0, 0, '1', '2024-07-08 19:16:31', '2024-07-08 19:16:31'),
(380, 272, '1720477561', '5ad32e23-2087-4da1-9f4c-049030f0eada', 'fortune-mouse', 'fortune-mouse', 'win', 'balance_withdrawal', 9500.00, 'worldslot', 0, 0, '1', '2024-07-08 19:26:01', '2024-07-08 19:26:01'),
(381, 272, '1720478859', '572b9928-3112-418f-aa0a-cb4d0c858a76', 'fortune-mouse', 'fortune-mouse', 'win', 'balance_withdrawal', 148.50, 'worldslot', 0, 0, '1', '2024-07-08 19:47:39', '2024-07-08 19:47:39'),
(382, 272, '1720478872', '9d7312c4-50e6-4310-a2dc-4312671ccddf', 'fortune-mouse', 'fortune-mouse', 'loss', 'balance_withdrawal', 2.00, 'worldslot', 0, 0, '1', '2024-07-08 19:47:52', '2024-07-08 19:47:52'),
(383, 272, '1720478894', '8b34d11a-8007-489c-accf-1863cc271cd9', 'fortune-mouse', 'fortune-mouse', 'win', 'balance_withdrawal', 10.00, 'worldslot', 0, 0, '1', '2024-07-08 19:48:14', '2024-07-08 19:48:14'),
(384, 272, '1720478902', 'b695d328-8043-4757-b5c4-a999f1ad01a8', 'fortune-mouse', 'fortune-mouse', 'loss', 'balance_withdrawal', 5.00, 'worldslot', 0, 0, '1', '2024-07-08 19:48:22', '2024-07-08 19:48:22'),
(385, 272, '1720478903', '36793ef4-a4b3-4370-8f7c-5bb391950294', 'fortune-mouse', 'fortune-mouse', 'win', 'balance_withdrawal', 95.00, 'worldslot', 0, 0, '1', '2024-07-08 19:48:23', '2024-07-08 19:48:23'),
(386, 272, '1720478929', 'dbfa2930-a757-4309-b1d7-833806a2da5d', 'fortune-mouse', 'fortune-mouse', 'win', 'balance_withdrawal', 20.00, 'worldslot', 0, 0, '1', '2024-07-08 19:48:49', '2024-07-08 19:48:49'),
(387, 272, '1720478943', '324131c6-e93d-4322-980c-08d1d053637d', 'fortune-mouse', 'fortune-mouse', 'loss', 'balance_withdrawal', 5.00, 'worldslot', 0, 0, '1', '2024-07-08 19:49:03', '2024-07-08 19:49:03'),
(388, 272, '1720478944', '0831abd6-7227-4694-9948-6a886b3b5326', 'fortune-mouse', 'fortune-mouse', 'loss', 'balance_withdrawal', 5.00, 'worldslot', 0, 0, '1', '2024-07-08 19:49:04', '2024-07-08 19:49:04'),
(389, 272, '1720478948', 'd8467e9a-37a0-44dd-9e2f-dc7c1679a257', 'fortune-mouse', 'fortune-mouse', 'loss', 'balance_withdrawal', 1.50, 'worldslot', 0, 0, '1', '2024-07-08 19:49:08', '2024-07-08 19:49:08'),
(390, 272, '1720478949', 'ac31c185-0774-4dc3-be62-a9f368c67267', 'fortune-mouse', 'fortune-mouse', 'loss', 'balance_withdrawal', 1.00, 'worldslot', 0, 0, '1', '2024-07-08 19:49:09', '2024-07-08 19:49:09'),
(391, 272, '1720478972', '0eb25568-0bae-4f71-bcbf-9c0509d402b9', 'fortune-mouse', 'fortune-mouse', 'win', 'balance_withdrawal', 495.00, 'worldslot', 0, 0, '1', '2024-07-08 19:49:32', '2024-07-08 19:49:32'),
(392, 272, '1720479250', '123183fb-5b02-4d7e-824a-7c0cf5de5174', 'fortune-mouse', 'fortune-mouse', 'loss', 'balance_withdrawal', 5.00, 'worldslot', 0, 0, '1', '2024-07-08 19:54:10', '2024-07-08 19:54:10'),
(393, 272, '1720479253', '79d7e3a2-a610-4861-b462-911e822031ec', 'fortune-mouse', 'fortune-mouse', 'loss', 'balance_withdrawal', 2.50, 'worldslot', 0, 0, '1', '2024-07-08 19:54:13', '2024-07-08 19:54:13'),
(394, 272, '1720479253', 'fb3e8ec1-acac-4c56-89b0-5219424d7ce7', 'fortune-mouse', 'fortune-mouse', 'loss', 'balance_withdrawal', 2.50, 'worldslot', 0, 0, '1', '2024-07-08 19:54:13', '2024-07-08 19:54:13'),
(395, 272, '1720479254', '95b3a891-c39d-4c55-8608-d79341bdf827', 'fortune-mouse', 'fortune-mouse', 'win', 'balance_withdrawal', 5.00, 'worldslot', 0, 0, '1', '2024-07-08 19:54:14', '2024-07-08 19:54:14'),
(396, 272, '1720479297', '05787e2b-f00e-4f7c-bd5c-302468cbe111', 'fortune-mouse', 'fortune-mouse', 'win', 'balance_withdrawal', 10.00, 'worldslot', 0, 0, '1', '2024-07-08 19:54:57', '2024-07-08 19:54:57'),
(397, 272, '1720479304', '6aba7e3f-0624-4a8b-86ae-8857baa27934', 'fortune-mouse', 'fortune-mouse', 'win', 'balance_withdrawal', 45.00, 'worldslot', 0, 0, '1', '2024-07-08 19:55:04', '2024-07-08 19:55:04'),
(398, 272, '1720479329', '88962bf1-a258-45ec-bb4e-75c654461cd2', 'fortune-mouse', 'fortune-mouse', 'win', 'balance_withdrawal', 245.00, 'worldslot', 0, 0, '1', '2024-07-08 19:55:29', '2024-07-08 19:55:29'),
(399, 272, '1720479385', 'b4068ae8-4a4a-4cfe-9e71-929ee2503f39', 'fortune-mouse', 'fortune-mouse', 'loss', 'balance_withdrawal', 5.00, 'worldslot', 0, 0, '1', '2024-07-08 19:56:25', '2024-07-08 19:56:25'),
(400, 272, '1720479385', '01a676c8-28d3-4990-b52d-3e2427b9eeb7', 'fortune-mouse', 'fortune-mouse', 'loss', 'balance_withdrawal', 2.00, 'worldslot', 0, 0, '1', '2024-07-08 19:56:25', '2024-07-08 19:56:25'),
(401, 272, '1720479408', '62f29eaf-cc0f-4f26-ab63-bb475e63c835', 'fortune-mouse', 'fortune-mouse', 'win', 'balance_withdrawal', 70.00, 'worldslot', 0, 0, '1', '2024-07-08 19:56:48', '2024-07-08 19:56:48'),
(402, 272, '1720479418', 'e319c6a7-4811-4aaa-a73f-1707c2ff24e4', 'fortune-mouse', 'fortune-mouse', 'loss', 'balance_withdrawal', 0.00, 'worldslot', 0, 0, '1', '2024-07-08 19:56:58', '2024-07-08 19:56:58'),
(403, 272, '1720487129', 'e9bfe24f-20c4-4eb4-a50d-8f9b5640e135', 'fortune-ox', 'fortune-ox', 'win', 'balance_withdrawal', 9.50, 'worldslot', 0, 0, '1', '2024-07-08 22:05:29', '2024-07-08 22:05:29'),
(404, 272, '1720487165', 'd4f8c8df-191f-4124-bfc6-47bfaa0ab09e', 'fortune-ox', 'fortune-ox', 'win', 'balance_withdrawal', 995.00, 'worldslot', 0, 0, '1', '2024-07-08 22:06:05', '2024-07-08 22:06:05'),
(405, 272, '1720487566', '6c28bcbf-62a4-4bed-b465-e4f725e0a203', 'fortune-ox', 'fortune-ox', 'loss', 'balance_withdrawal', 400.00, 'worldslot', 0, 0, '1', '2024-07-08 22:12:46', '2024-07-08 22:12:46'),
(406, 272, '1720487570', 'b06242e0-598b-4d5b-9642-0de66b3f66f0', 'fortune-ox', 'fortune-ox', 'win', 'balance_withdrawal', 4400.00, 'worldslot', 0, 0, '1', '2024-07-08 22:12:50', '2024-07-08 22:12:50'),
(407, 272, '1720487723', '814058ac-ecd6-4588-bf47-4fe49580b22a', 'fortune-rabbit', 'fortune-rabbit', 'loss', 'balance_withdrawal', 0.50, 'worldslot', 0, 0, '1', '2024-07-08 22:15:23', '2024-07-08 22:15:23'),
(408, 272, '1720487724', '353cb2ca-b26f-45e8-b91c-a39637da2c8a', 'fortune-rabbit', 'fortune-rabbit', 'loss', 'balance_withdrawal', 0.05, 'worldslot', 0, 0, '1', '2024-07-08 22:15:24', '2024-07-08 22:15:24'),
(409, 272, '1720487726', '3195a974-edb3-4505-b440-bd52e19ae54f', 'fortune-rabbit', 'fortune-rabbit', 'win', 'balance_withdrawal', 2.63, 'worldslot', 0, 0, '1', '2024-07-08 22:15:26', '2024-07-08 22:15:26'),
(410, 272, '1720487726', '9c0c1714-f687-4e19-98c4-555f0c6630d0', 'fortune-rabbit', 'fortune-rabbit', 'win', 'balance', 3.13, 'worldslot', 0, 0, '1', '2024-07-08 22:15:26', '2024-07-08 22:15:26'),
(411, 272, '1720487740', '0e678d0f-f639-4927-add1-959d43c2ed7d', 'fortune-rabbit', 'fortune-rabbit', 'win', 'balance', 3.75, 'worldslot', 0, 0, '1', '2024-07-08 22:15:40', '2024-07-08 22:15:40'),
(412, 272, '1720487748', 'b1851cfe-7484-4566-b75e-f52bb9e39eba', 'fortune-rabbit', 'fortune-rabbit', 'win', 'balance', 2.00, 'worldslot', 0, 0, '1', '2024-07-08 22:15:48', '2024-07-08 22:15:48'),
(413, 272, '1720487755', 'f61d3549-be01-4b01-a692-dfa37b0607b3', 'fortune-rabbit', 'fortune-rabbit', 'win', 'balance', 2.88, 'worldslot', 0, 0, '1', '2024-07-08 22:15:55', '2024-07-08 22:15:55'),
(414, 272, '1720487762', '8c083e6a-347d-457d-95dc-a14c1ff1bdce', 'fortune-rabbit', 'fortune-rabbit', 'loss', 'balance', 0.00, 'worldslot', 0, 0, '1', '2024-07-08 22:16:02', '2024-07-08 22:16:02'),
(415, 272, '1720487766', 'fec13494-b4c9-4e6b-b49b-dde105303d4a', 'fortune-rabbit', 'fortune-rabbit', 'loss', 'balance', 0.00, 'worldslot', 0, 0, '1', '2024-07-08 22:16:06', '2024-07-08 22:16:06'),
(416, 272, '1720487771', '801354be-8606-4bb5-8cf1-2cc135ed2737', 'fortune-rabbit', 'fortune-rabbit', 'loss', 'balance', 0.00, 'worldslot', 0, 0, '1', '2024-07-08 22:16:11', '2024-07-08 22:16:11'),
(417, 272, '1720487775', '178d48d8-3258-41c8-8223-ad953cd8519d', 'fortune-rabbit', 'fortune-rabbit', 'loss', 'balance', 0.00, 'worldslot', 0, 0, '1', '2024-07-08 22:16:15', '2024-07-08 22:16:15'),
(418, 272, '1720487791', 'b90d52e1-ad6b-4e3f-a1f3-f3bdd610f7dd', 'fortune-rabbit', 'fortune-rabbit', 'win', 'balance_withdrawal', 2.00, 'worldslot', 0, 0, '1', '2024-07-08 22:16:31', '2024-07-08 22:16:31'),
(419, 272, '1720487796', '03d4d7d9-b4f9-471a-9bd6-bb2291420c44', 'fortune-rabbit', 'fortune-rabbit', 'win', 'balance_withdrawal', 4.13, 'worldslot', 0, 0, '1', '2024-07-08 22:16:36', '2024-07-08 22:16:36'),
(420, 272, '1720487796', 'a7305f75-8257-4af0-b5a2-c2ab8c55cc30', 'fortune-rabbit', 'fortune-rabbit', 'win', 'balance', 5.63, 'worldslot', 0, 0, '1', '2024-07-08 22:16:36', '2024-07-08 22:16:36'),
(421, 272, '1720487810', '625e25ff-a028-4d01-853f-b93b2a309c5f', 'fortune-rabbit', 'fortune-rabbit', 'win', 'balance', 39.00, 'worldslot', 0, 0, '1', '2024-07-08 22:16:50', '2024-07-08 22:16:50'),
(422, 272, '1720487817', '7dc5f284-3968-4a9d-b94d-3bf7d691e1b6', 'fortune-rabbit', 'fortune-rabbit', 'loss', 'balance', 0.00, 'worldslot', 0, 0, '1', '2024-07-08 22:16:57', '2024-07-08 22:16:57'),
(423, 272, '1720487821', '8d45b80e-f09a-451a-9d81-d429a855ed06', 'fortune-rabbit', 'fortune-rabbit', 'loss', 'balance', 0.00, 'worldslot', 0, 0, '1', '2024-07-08 22:17:01', '2024-07-08 22:17:01'),
(424, 272, '1720487825', 'dffa68c6-bc48-4723-967e-200fd40a3550', 'fortune-rabbit', 'fortune-rabbit', 'win', 'balance', 12.00, 'worldslot', 0, 0, '1', '2024-07-08 22:17:05', '2024-07-08 22:17:05'),
(425, 272, '1720487832', 'ccdd18b5-6889-4d1e-9c48-05d4cb32759f', 'fortune-rabbit', 'fortune-rabbit', 'loss', 'balance', 0.00, 'worldslot', 0, 0, '1', '2024-07-08 22:17:12', '2024-07-08 22:17:12'),
(426, 272, '1720487837', 'de191673-0ced-4050-9b16-f582fddf5a07', 'fortune-rabbit', 'fortune-rabbit', 'loss', 'balance', 0.00, 'worldslot', 0, 0, '1', '2024-07-08 22:17:17', '2024-07-08 22:17:17'),
(427, 272, '1720487841', '0efe8e31-59b5-4465-9208-922298b0eb8e', 'fortune-rabbit', 'fortune-rabbit', 'win', 'balance', 57.00, 'worldslot', 0, 0, '1', '2024-07-08 22:17:21', '2024-07-08 22:17:21'),
(428, 272, '1720487948', '3950d610-ab21-4fd0-b9a7-c216a85df9a8', 'fortune-tiger', 'fortune-tiger', 'win', 'balance_withdrawal', 45.00, 'worldslot', 0, 0, '1', '2024-07-08 22:19:08', '2024-07-08 22:19:08'),
(429, 272, '1720488351', '1c60b522-52fa-482b-ae2d-f35e9110c352', 'fortune-tiger', 'fortune-tiger', 'win', 'balance_withdrawal', 3675.00, 'worldslot', 0, 0, '1', '2024-07-08 22:25:51', '2024-07-08 22:25:51'),
(430, 289, '1720535230', '941ff882-7669-4811-b057-2cc8bf3017b5', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance', 0.40, 'worldslot', 0, 0, '1', '2024-07-09 11:27:10', '2024-07-09 11:27:10'),
(431, 289, '1720535235', '8113bb25-a2b8-40f6-8dbc-f69c3176b711', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance', 0.40, 'worldslot', 0, 0, '1', '2024-07-09 11:27:15', '2024-07-09 11:27:15'),
(432, 289, '1720535236', '9a098d47-3346-49e5-8af0-492c7a881dcf', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance', 0.40, 'worldslot', 0, 0, '1', '2024-07-09 11:27:16', '2024-07-09 11:27:16'),
(433, 289, '1720535238', 'e8f5800b-7043-4f86-a7f1-7d00b48ff658', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance', 0.40, 'worldslot', 0, 0, '1', '2024-07-09 11:27:18', '2024-07-09 11:27:18'),
(434, 289, '1720535239', 'f7f69d93-3031-48df-8999-643bacdbf707', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance', 0.40, 'worldslot', 0, 0, '1', '2024-07-09 11:27:19', '2024-07-09 11:27:19'),
(435, 289, '1720535239', '77f8b56d-efef-4989-aba3-47815a133a4f', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance', 0.40, 'worldslot', 0, 0, '1', '2024-07-09 11:27:19', '2024-07-09 11:27:19'),
(436, 289, '1720535240', 'edd8f937-3d52-4bab-8cdb-2afb0732edfa', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance', 0.40, 'worldslot', 0, 0, '1', '2024-07-09 11:27:20', '2024-07-09 11:27:20'),
(437, 289, '1720535241', 'a80bac52-310f-4876-a6d5-a0b6120c2687', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance', 0.40, 'worldslot', 0, 0, '1', '2024-07-09 11:27:21', '2024-07-09 11:27:21'),
(438, 289, '1720535252', '1468874b-cd64-4555-927f-fee05b5b2fef', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance', 2.00, 'worldslot', 0, 0, '1', '2024-07-09 11:27:32', '2024-07-09 11:27:32'),
(439, 289, '1720535256', '77abef1a-5ca2-4780-9994-80b3d760db90', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance', 2.00, 'worldslot', 0, 0, '1', '2024-07-09 11:27:36', '2024-07-09 11:27:36'),
(440, 289, '1720535257', '1c720cce-3ce6-4970-a7e9-21d213ced432', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance', 2.00, 'worldslot', 0, 0, '1', '2024-07-09 11:27:37', '2024-07-09 11:27:37'),
(441, 289, '1720535259', '6844b140-6333-4235-bd14-a13c5b81bf23', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance', 2.00, 'worldslot', 0, 0, '1', '2024-07-09 11:27:39', '2024-07-09 11:27:39'),
(442, 289, '1720535260', '7beca0bc-a046-493a-a2c2-9f94cdc0a250', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance', 2.00, 'worldslot', 0, 0, '1', '2024-07-09 11:27:40', '2024-07-09 11:27:40'),
(443, 289, '1720535261', '0d02f738-98f9-4388-8053-8f1c54535aa5', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance', 2.00, 'worldslot', 0, 0, '1', '2024-07-09 11:27:41', '2024-07-09 11:27:41'),
(444, 289, '1720535262', 'fe8fc523-ee64-4d67-aec5-0a77320baef5', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance', 2.00, 'worldslot', 0, 0, '1', '2024-07-09 11:27:42', '2024-07-09 11:27:42'),
(445, 289, '1720535262', '491e08be-cb08-4e53-9e00-b5020630e546', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance', 2.00, 'worldslot', 0, 0, '1', '2024-07-09 11:27:42', '2024-07-09 11:27:42'),
(446, 289, '1720535264', '556882fc-3576-422e-b3ba-f5b3e2a84b5c', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance', 2.00, 'worldslot', 0, 0, '1', '2024-07-09 11:27:44', '2024-07-09 11:27:44'),
(447, 289, '1720535264', '16916e40-7d36-4d33-bcf6-b454a5a46cc4', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance', 2.00, 'worldslot', 0, 0, '1', '2024-07-09 11:27:44', '2024-07-09 11:27:44'),
(448, 289, '1720535265', 'ce463622-8392-4e59-8b25-a8b850fc3ba7', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance', 2.00, 'worldslot', 0, 0, '1', '2024-07-09 11:27:45', '2024-07-09 11:27:45'),
(449, 289, '1720535266', 'e99b6467-b554-46c0-98f4-d6276f5f4539', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance', 2.00, 'worldslot', 0, 0, '1', '2024-07-09 11:27:46', '2024-07-09 11:27:46'),
(450, 289, '1720535267', '58e2ae30-b830-45e1-a128-cd95292285b4', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance', 2.00, 'worldslot', 0, 0, '1', '2024-07-09 11:27:47', '2024-07-09 11:27:47'),
(451, 289, '1720535270', 'c78c989f-e291-41ce-91d5-e06a7e47fd68', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance', 2.00, 'worldslot', 0, 0, '1', '2024-07-09 11:27:50', '2024-07-09 11:27:50'),
(452, 289, '1720535319', 'b5969576-8706-4858-83fe-43954945d796', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance', 2.00, 'worldslot', 0, 0, '1', '2024-07-09 11:28:39', '2024-07-09 11:28:39'),
(453, 289, '1720535320', '0e9f1a9b-d9b3-4776-9d0e-f563793ec584', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance', 2.00, 'worldslot', 0, 0, '1', '2024-07-09 11:28:40', '2024-07-09 11:28:40'),
(454, 289, '1720535321', '47cee7f0-cf3c-45ba-a098-7dedc096c2c8', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance', 2.00, 'worldslot', 0, 0, '1', '2024-07-09 11:28:41', '2024-07-09 11:28:41'),
(455, 289, '1720535322', '6eb9043c-81d1-492e-b061-c148f5ad4ba4', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance', 2.00, 'worldslot', 0, 0, '1', '2024-07-09 11:28:42', '2024-07-09 11:28:42'),
(456, 289, '1720535323', 'aa96e156-0171-4017-ae48-050b08a23eea', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance', 2.00, 'worldslot', 0, 0, '1', '2024-07-09 11:28:43', '2024-07-09 11:28:43'),
(457, 289, '1720535324', '8b6ff925-3109-42b9-b11f-0c741bddb26a', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance', 2.00, 'worldslot', 0, 0, '1', '2024-07-09 11:28:44', '2024-07-09 11:28:44'),
(458, 289, '1720535324', '73616c64-23d9-4a29-9ce2-f0dfe292527c', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance', 2.00, 'worldslot', 0, 0, '1', '2024-07-09 11:28:44', '2024-07-09 11:28:44'),
(459, 289, '1720535326', '8f9fb142-e4ce-4e31-bd49-29b21e90cf97', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance', 2.00, 'worldslot', 0, 0, '1', '2024-07-09 11:28:46', '2024-07-09 11:28:46'),
(460, 289, '1720535326', '77231c1d-87b4-4176-ba37-63408a394219', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance', 2.00, 'worldslot', 0, 0, '1', '2024-07-09 11:28:46', '2024-07-09 11:28:46'),
(461, 289, '1720535329', 'ea6fa085-fb9a-47f7-9080-1926610feeb0', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance', 0.40, 'worldslot', 0, 0, '1', '2024-07-09 11:28:49', '2024-07-09 11:28:49'),
(462, 289, '1720535330', 'ab302ef0-7255-484e-bc1d-8d5a00924a72', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance', 0.40, 'worldslot', 0, 0, '1', '2024-07-09 11:28:50', '2024-07-09 11:28:50'),
(463, 271, '1720545162', '2a3d8ef4-0656-4a08-b312-87e9fee1758c', 'fortune-dragon', 'fortune-dragon', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-09 14:12:42', '2024-07-09 14:12:42'),
(464, 271, '1720545164', '61b03fad-d43a-42ca-8e46-5a29a062e378', 'fortune-dragon', 'fortune-dragon', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-09 14:12:44', '2024-07-09 14:12:44'),
(465, 271, '1720545165', '0ec6c8fc-1cea-4271-880a-5c717aaa3907', 'fortune-dragon', 'fortune-dragon', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-09 14:12:45', '2024-07-09 14:12:45'),
(466, 271, '1720545166', 'a0f2e947-7ed9-4945-844d-79fb0620d748', 'fortune-dragon', 'fortune-dragon', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-09 14:12:46', '2024-07-09 14:12:46'),
(467, 271, '1720545167', 'c0a5f0fa-3b8d-48c7-acc2-979f793a67ab', 'fortune-dragon', 'fortune-dragon', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-09 14:12:47', '2024-07-09 14:12:47'),
(468, 271, '1720545168', '7aa0dfb3-8ef3-4ea7-8200-77783c75f1e1', 'fortune-dragon', 'fortune-dragon', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-09 14:12:48', '2024-07-09 14:12:48'),
(469, 271, '1720545171', '7dd2d54c-5693-4013-9545-b9dccc91fa66', 'fortune-dragon', 'fortune-dragon', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-09 14:12:51', '2024-07-09 14:12:51'),
(470, 271, '1720545172', '19fe0fdf-2b60-43ae-a7a0-e67670eaba7a', 'fortune-dragon', 'fortune-dragon', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-09 14:12:52', '2024-07-09 14:12:52'),
(471, 271, '1720545173', 'ac0fcf7a-e67d-47a6-b2e4-c6e1b9d1d951', 'fortune-dragon', 'fortune-dragon', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-09 14:12:53', '2024-07-09 14:12:53'),
(472, 271, '1720545173', '9ded071e-4e44-4a54-b757-a19159308d58', 'fortune-dragon', 'fortune-dragon', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-09 14:12:53', '2024-07-09 14:12:53'),
(473, 271, '1720545174', '2570091a-b010-4494-b5c8-ed6eeefa6006', 'fortune-dragon', 'fortune-dragon', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-09 14:12:54', '2024-07-09 14:12:54'),
(474, 271, '1720546555', 'e1606022-fbbb-4308-95aa-94f6c38defbf', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-09 14:35:55', '2024-07-09 14:35:55'),
(475, 271, '1720546557', 'acdb32d5-5faa-4cc3-a1b2-8c412c055499', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-09 14:35:57', '2024-07-09 14:35:57'),
(476, 271, '1720546559', 'eb4d8056-bbd8-4e8c-a1fd-31be17fd2d8d', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-09 14:35:59', '2024-07-09 14:35:59'),
(477, 271, '1720546562', '4a1d6701-ffd4-4c03-8bae-57efc8a28cc0', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-09 14:36:02', '2024-07-09 14:36:02'),
(478, 271, '1720546563', 'c400f280-1dae-4e45-b5d5-675f71eb108b', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-09 14:36:03', '2024-07-09 14:36:03'),
(479, 271, '1720546564', '24dbd2b9-416a-48b6-b627-09b22b0630c9', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-09 14:36:04', '2024-07-09 14:36:04'),
(480, 271, '1720546565', '120606cc-4148-44c8-be0d-47fb2be2d664', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-09 14:36:05', '2024-07-09 14:36:05'),
(481, 271, '1720546566', '09c5e9cd-9af2-4bac-bca3-aeb11e5fbabc', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-09 14:36:06', '2024-07-09 14:36:06'),
(482, 271, '1720546569', 'c2abc0a3-f983-4298-b773-c1dd87a1f682', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-09 14:36:09', '2024-07-09 14:36:09'),
(483, 271, '1720546570', '3a39ff7b-cf4d-468c-8549-a2ff18a925df', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-09 14:36:10', '2024-07-09 14:36:10'),
(484, 271, '1720546571', 'cc5e4672-0a3e-40f7-a691-cbdfa4f2143c', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-09 14:36:11', '2024-07-09 14:36:11'),
(485, 271, '1720546571', 'b3eb8634-4313-4499-9280-edd764221cf6', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-09 14:36:11', '2024-07-09 14:36:11'),
(486, 271, '1720546572', '5945cf20-c16a-43ee-a156-e567aeacf8c9', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-09 14:36:12', '2024-07-09 14:36:12'),
(487, 271, '1720546573', 'a8cd9ab0-b3aa-4f89-bf43-fe133fb7a00d', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-09 14:36:13', '2024-07-09 14:36:13'),
(488, 271, '1720546576', 'ace78a36-cb1b-458f-9932-3f0131ee4572', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-09 14:36:16', '2024-07-09 14:36:16'),
(489, 271, '1720546577', '51ac9c03-948d-43a2-877a-1a6fbbc09ea0', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-09 14:36:17', '2024-07-09 14:36:17'),
(490, 271, '1720546578', '7afe942a-bffb-4161-a8e3-2f0cf2329f6f', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-09 14:36:18', '2024-07-09 14:36:18'),
(491, 271, '1720546579', '9e00548a-b838-4d1e-a20f-f0008dd1a8e5', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-09 14:36:19', '2024-07-09 14:36:19'),
(492, 271, '1720546580', 'ab1321fe-0ef1-4816-8bbf-6c29a5dcfea6', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-09 14:36:20', '2024-07-09 14:36:20'),
(493, 271, '1720546648', '86bd5bb2-b31b-46fd-a5b1-6dadac45678d', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-09 14:37:28', '2024-07-09 14:37:28'),
(494, 271, '1720546650', '34614c56-0ce1-41b6-ab4a-eeb8357f9174', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-09 14:37:30', '2024-07-09 14:37:30'),
(495, 271, '1720546654', '91cdc111-9840-490c-ae09-fa0155c27d01', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-09 14:37:34', '2024-07-09 14:37:34'),
(496, 271, '1720546655', '67e2d428-b419-42c2-a87f-2f1d7cced35d', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-09 14:37:35', '2024-07-09 14:37:35'),
(497, 271, '1720546656', '0e89ea09-3e91-4e3e-906e-a63831c37d9a', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-09 14:37:36', '2024-07-09 14:37:36'),
(498, 271, '1720546659', 'e3d3078c-2dc5-46d6-bf46-4e8b675b393b', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-09 14:37:39', '2024-07-09 14:37:39'),
(499, 271, '1720546660', '4b8fc92c-e378-4ed0-89e2-26fbee870758', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-09 14:37:40', '2024-07-09 14:37:40'),
(500, 271, '1720546661', 'f55b241f-eae1-4567-af96-34d5c3145df7', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-09 14:37:41', '2024-07-09 14:37:41'),
(501, 271, '1720546662', 'e5e3d2dc-2167-4cb0-8d8f-0b5e72e41542', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-09 14:37:42', '2024-07-09 14:37:42'),
(502, 271, '1720546662', 'fb63ee62-4b87-4d9e-992a-75f3de35d100', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-09 14:37:42', '2024-07-09 14:37:42'),
(503, 271, '1720546737', '33030233-7f14-4421-9254-bb1c96ec1d95', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance_withdrawal', 0.40, 'worldslot', 0, 0, '1', '2024-07-09 14:38:57', '2024-07-09 14:38:57'),
(504, 271, '1720546740', '52b83d77-1e85-4349-9cb0-3d7310efd380', 'fortune-tiger', 'fortune-tiger', 'win', 'balance_withdrawal', 0.24, 'worldslot', 0, 0, '1', '2024-07-09 14:39:00', '2024-07-09 14:39:00'),
(505, 271, '1720546751', 'bc089d45-d28e-45e3-a6e0-b10f1467b243', 'fortune-tiger', 'fortune-tiger', 'win', 'balance_withdrawal', 31.60, 'worldslot', 0, 0, '1', '2024-07-09 14:39:11', '2024-07-09 14:39:11'),
(506, 272, '1720574670', 'c13514f5-9676-4815-a1b7-d1606966f3c2', 'fortune-mouse', 'fortune-mouse', 'win', 'balance_withdrawal', 10.00, 'worldslot', 0, 0, '1', '2024-07-09 22:24:30', '2024-07-09 22:24:30'),
(507, 272, '1720574680', '959492fa-5193-4519-910b-0d4db517340e', 'fortune-mouse', 'fortune-mouse', 'loss', 'balance_withdrawal', 2.50, 'worldslot', 0, 0, '1', '2024-07-09 22:24:40', '2024-07-09 22:24:40'),
(508, 272, '1720574682', '7cc51d08-dfed-49e3-bbb1-8874360a9e59', 'fortune-mouse', 'fortune-mouse', 'win', 'balance_withdrawal', 15.00, 'worldslot', 0, 0, '1', '2024-07-09 22:24:42', '2024-07-09 22:24:42'),
(509, 272, '1720574710', '7f06a7cd-3ff3-45d5-8f19-96f3d2856f1a', 'fortune-mouse', 'fortune-mouse', 'win', 'balance_withdrawal', 60.00, 'worldslot', 0, 0, '1', '2024-07-09 22:25:10', '2024-07-09 22:25:10'),
(510, 272, '1720574718', '46ac32a1-0b24-4ec3-a5dc-98ae15793fe3', 'fortune-mouse', 'fortune-mouse', 'loss', 'balance_withdrawal', 15.00, 'worldslot', 0, 0, '1', '2024-07-09 22:25:18', '2024-07-09 22:25:18'),
(511, 272, '1720574719', '18afc0a3-b13d-4b2c-abf8-4577bb779194', 'fortune-mouse', 'fortune-mouse', 'win', 'balance_withdrawal', 3.00, 'worldslot', 0, 0, '1', '2024-07-09 22:25:19', '2024-07-09 22:25:19'),
(512, 272, '1720574745', '8409679a-57d3-4ac9-92e7-4f1c6fa5bbde', 'fortune-mouse', 'fortune-mouse', 'win', 'balance_withdrawal', 350.00, 'worldslot', 0, 0, '1', '2024-07-09 22:25:45', '2024-07-09 22:25:45'),
(513, 272, '1720574754', '6216f69b-aa5e-46f6-b9a3-7b542d5bd372', 'fortune-mouse', 'fortune-mouse', 'loss', 'balance_withdrawal', 15.00, 'worldslot', 0, 0, '1', '2024-07-09 22:25:54', '2024-07-09 22:25:54'),
(514, 272, '1720574755', '228008d4-6bd4-4d32-848c-2f9826b16e47', 'fortune-mouse', 'fortune-mouse', 'loss', 'balance_withdrawal', 6.00, 'worldslot', 0, 0, '1', '2024-07-09 22:25:55', '2024-07-09 22:25:55'),
(515, 272, '1720574781', 'ecca8a21-21de-42e1-8456-71407be1bab1', 'fortune-mouse', 'fortune-mouse', 'win', 'balance_withdrawal', 435.00, 'worldslot', 0, 0, '1', '2024-07-09 22:26:21', '2024-07-09 22:26:21'),
(516, 291, '1720621539', '16d73b1b-4758-49f1-9db6-dd86647e7296', 'fortune-tiger', 'fortune-tiger', 'loss', 'balance', 0.40, 'worldslot', 0, 0, '1', '2024-07-10 11:25:39', '2024-07-10 11:25:39'),
(517, 291, '1720621581', '539da19d-d310-4d70-9cb5-78b1993234df', 'chicky-run', 'chicky-run', 'loss', 'balance', 0.50, 'worldslot', 0, 0, '1', '2024-07-10 11:26:21', '2024-07-10 11:26:21');

-- --------------------------------------------------------

--
-- Estrutura para tabela `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Despejando dados para a tabela `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'games-exclusive-edit', 'web', '2023-10-12 16:23:45', '2023-10-12 18:12:28'),
(2, 'games-exclusive-view', 'web', '2023-10-12 16:23:56', '2023-10-12 18:11:25'),
(3, 'games-exclusive-create', 'web', '2023-10-12 16:25:06', '2023-10-12 18:11:10'),
(4, 'admin-view', 'web', '2023-10-12 17:56:35', '2023-10-12 17:56:35'),
(5, 'admin-create', 'web', '2023-10-12 18:56:02', '2023-10-12 18:56:02'),
(6, 'admin-edit', 'web', '2023-10-12 18:56:27', '2023-10-12 18:56:27'),
(7, 'admin-delete', 'web', '2023-10-12 18:56:55', '2023-10-12 18:56:55'),
(8, 'category-view', 'web', '2023-10-12 19:01:31', '2023-10-12 19:01:31'),
(9, 'category-create', 'web', '2023-10-12 19:01:46', '2023-10-12 19:01:46'),
(10, 'category-edit', 'web', '2023-10-12 19:01:59', '2023-10-12 19:01:59'),
(11, 'category-delete', 'web', '2023-10-12 19:02:09', '2023-10-12 19:02:09'),
(12, 'game-view', 'web', '2023-10-12 19:02:27', '2023-10-12 19:02:27'),
(13, 'game-create', 'web', '2023-10-12 19:02:36', '2023-10-12 19:02:36'),
(14, 'game-edit', 'web', '2023-10-12 19:02:44', '2023-10-12 19:02:44'),
(15, 'game-delete', 'web', '2023-10-12 19:02:54', '2023-10-12 19:02:54'),
(16, 'wallet-view', 'web', '2023-10-12 19:05:49', '2023-10-12 19:05:49'),
(17, 'wallet-create', 'web', '2023-10-12 19:06:01', '2023-10-12 19:06:01'),
(18, 'wallet-edit', 'web', '2023-10-12 19:06:11', '2023-10-12 19:06:11'),
(19, 'wallet-delete', 'web', '2023-10-12 19:06:18', '2023-10-12 19:06:18'),
(20, 'deposit-view', 'web', '2023-10-12 19:06:44', '2023-10-12 19:06:44'),
(21, 'deposit-create', 'web', '2023-10-12 19:06:56', '2023-10-12 19:06:56'),
(22, 'deposit-edit', 'web', '2023-10-12 19:07:05', '2023-10-12 19:07:05'),
(23, 'deposit-update', 'web', '2023-10-12 19:08:00', '2023-10-12 19:08:00'),
(24, 'deposit-delete', 'web', '2023-10-12 19:08:11', '2023-10-12 19:08:11'),
(25, 'withdrawal-view', 'web', '2023-10-12 19:09:31', '2023-10-12 19:09:31'),
(26, 'withdrawal-create', 'web', '2023-10-12 19:09:40', '2023-10-12 19:09:40'),
(27, 'withdrawal-edit', 'web', '2023-10-12 19:09:51', '2023-10-12 19:09:51'),
(28, 'withdrawal-update', 'web', '2023-10-12 19:10:00', '2023-10-12 19:10:00'),
(29, 'withdrawal-delete', 'web', '2023-10-12 19:10:09', '2023-10-12 19:10:09'),
(30, 'order-view', 'web', '2023-10-12 19:12:36', '2023-10-12 19:12:36'),
(31, 'order-create', 'web', '2023-10-12 19:12:47', '2023-10-12 19:12:47'),
(32, 'order-edit', 'web', '2023-10-12 19:12:56', '2023-10-12 19:12:56'),
(33, 'order-update', 'web', '2023-10-12 19:13:06', '2023-10-12 19:13:06'),
(34, 'order-delete', 'web', '2023-10-12 19:13:19', '2023-10-12 19:13:19'),
(35, 'admin-menu-view', 'web', '2023-10-12 20:26:06', '2023-10-12 20:26:06'),
(36, 'setting-view', 'web', '2023-10-12 21:25:46', '2023-10-12 21:25:46'),
(37, 'setting-create', 'web', '2023-10-12 21:25:57', '2023-10-12 21:25:57'),
(38, 'setting-edit', 'web', '2023-10-12 21:26:06', '2023-10-12 21:26:06'),
(39, 'setting-update', 'web', '2023-10-12 21:26:19', '2023-10-12 21:26:19'),
(40, 'setting-delete', 'web', '2023-10-12 21:26:33', '2023-10-12 21:26:33');

-- --------------------------------------------------------

--
-- Estrutura para tabela `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `providers`
--

CREATE TABLE `providers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `rtp` bigint(20) DEFAULT 90,
  `views` bigint(20) DEFAULT 1,
  `distribution` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `providers`
--

INSERT INTO `providers` (`id`, `cover`, `code`, `name`, `status`, `rtp`, `views`, `distribution`, `created_at`, `updated_at`) VALUES
(162, NULL, 'MICROCASINO_GOLD', 'Micro Casino', 1, 90, 1, 'worldslot', '2024-04-27 11:29:22', '2024-04-27 11:29:22'),
(161, NULL, 'EZUGI_GOLD', 'Ezugi Casino', 1, 90, 1, 'worldslot', '2024-04-27 11:29:22', '2024-04-27 11:29:22'),
(160, NULL, 'DREAM_GOLD', 'Dream Casino', 1, 90, 1, 'worldslot', '2024-04-27 11:29:22', '2024-04-27 11:29:22'),
(159, NULL, 'BIGGAMING_GOLD', 'Big Casino', 1, 90, 1, 'worldslot', '2024-04-27 11:29:22', '2024-04-27 11:29:22'),
(158, NULL, 'EVOLUTION_GOLD', 'Evolution Casino', 1, 90, 1, 'worldslot', '2024-04-27 11:29:22', '2024-04-27 11:29:22'),
(157, NULL, 'GMW', 'GMW', 1, 90, 1, 'worldslot', '2024-04-27 11:29:19', '2024-04-27 11:29:19'),
(156, NULL, 'REDTIGER', 'RedTiger', 1, 90, 1, 'worldslot', '2024-04-27 11:29:19', '2024-04-27 11:29:19'),
(155, NULL, 'MICROGAMING', 'MicroGaming', 1, 90, 1, 'worldslot', '2024-04-27 11:29:19', '2024-04-27 11:29:19'),
(154, NULL, 'PGSOFT', 'PGSoft', 1, 90, 1, 'worldslot', '2024-04-27 11:29:19', '2024-04-27 11:29:19'),
(153, NULL, 'GENESIS', 'Genesis', 1, 90, 1, 'worldslot', '2024-04-27 11:29:19', '2024-04-27 11:29:19'),
(152, NULL, 'DREAMTECH', 'Dreamtech', 1, 90, 1, 'worldslot', '2024-04-27 11:29:19', '2024-04-27 11:29:19'),
(151, NULL, 'TOPTREND', 'Toptrend', 1, 90, 1, 'worldslot', '2024-04-27 11:29:19', '2024-04-27 11:29:19'),
(150, NULL, 'EVOPLAY', 'Evoplay', 1, 90, 1, 'worldslot', '2024-04-27 11:29:19', '2024-04-27 11:29:19'),
(149, NULL, 'CQ9', 'CQ9', 1, 90, 1, 'worldslot', '2024-04-27 11:29:19', '2024-04-27 11:29:19'),
(148, NULL, 'PLAYSON', 'Playson', 1, 90, 1, 'worldslot', '2024-04-27 11:29:19', '2024-04-27 11:29:19'),
(147, NULL, 'BOOONGO', 'Booongo', 1, 90, 1, 'worldslot', '2024-04-27 11:29:19', '2024-04-27 11:29:19'),
(146, NULL, 'HABANERO', 'Habanero', 1, 90, 1, 'worldslot', '2024-04-27 11:29:19', '2024-04-27 11:29:19'),
(145, NULL, 'REELKINGDOM', 'ReelKingdom', 1, 90, 1, 'worldslot', '2024-04-27 11:29:19', '2024-04-27 11:29:19'),
(144, NULL, 'PRAGMATIC', 'PragmaticPlay', 1, 90, 1, 'worldslot', '2024-04-27 11:29:19', '2024-04-27 11:29:19'),
(163, NULL, 'PRAGMATIC', 'Megaways', 1, 90, 1, 'worldslot', '2024-04-27 17:05:36', '2024-04-27 17:06:08'),
(164, NULL, 'PGSOFT', 'PGSoft Games', 1, 90, 1, 'evergame', '2024-05-09 16:28:22', '2024-05-13 13:54:02'),
(165, NULL, 'Ever_Mini', 'Jogos Crash', 1, 90, 1, 'evergame', '2024-05-13 19:09:03', '2024-05-13 19:09:03'),
(166, NULL, 'Evolution_Casino', 'Evolution Games', 1, 90, 1, 'evergame', '2024-06-10 15:59:29', '2024-06-10 16:03:25'),
(167, NULL, 'Dream_Casino', 'Dream', 1, 80, 1, 'evergame', '2024-06-26 17:53:51', '2024-06-26 17:53:51'),
(168, NULL, 'Ezugi_Casino', 'Ezugi', 1, 80, 1, 'evergame', '2024-06-26 17:53:51', '2024-06-26 17:53:51'),
(169, NULL, 'Micro_Casino', 'Micro', 1, 80, 1, 'evergame', '2024-06-26 17:53:51', '2024-06-26 17:53:51'),
(170, NULL, 'Live_Sport', 'Live', 1, 80, 1, 'evergame', '2024-06-26 17:53:51', '2024-06-26 17:53:51'),
(171, NULL, 'Booongo_Slot', 'Booongo', 1, 80, 1, 'evergame', '2024-06-26 17:53:51', '2024-06-26 17:53:51'),
(172, NULL, 'CQ9_Slot', 'CQ9', 1, 80, 1, 'evergame', '2024-06-26 17:53:51', '2024-06-26 17:53:51'),
(173, NULL, 'DreamTech_Slot', 'DreamTech', 1, 80, 1, 'evergame', '2024-06-26 17:53:51', '2024-06-26 17:53:51'),
(174, NULL, 'Playson_Slot', 'Playson', 1, 80, 1, 'evergame', '2024-06-26 17:53:51', '2024-06-26 17:53:51'),
(175, NULL, 'ReelKingDom_Slot', 'ReelKingDom', 1, 80, 1, 'evergame', '2024-06-26 17:53:51', '2024-06-26 17:53:51'),
(176, NULL, 'TopTrend_Slot', 'TopTrend', 1, 80, 1, 'evergame', '2024-06-26 17:53:51', '2024-06-26 17:53:51'),
(177, NULL, 'Habanero_Slot', 'Habanero', 1, 80, 1, 'evergame', '2024-06-26 17:53:51', '2024-06-26 17:53:51'),
(178, NULL, 'PGSoft_Slot', 'PGSoft', 1, 80, 1, 'evergame', '2024-06-26 17:53:51', '2024-06-26 17:53:51'),
(179, NULL, 'Pragmatic_Slot', 'Pragmatic', 1, 80, 1, 'evergame', '2024-06-26 17:53:51', '2024-06-26 17:53:51');

-- --------------------------------------------------------

--
-- Estrutura para tabela `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Despejando dados para a tabela `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2023-10-12 16:20:41', '2023-10-12 16:20:41'),
(2, 'afiliado', 'web', '2023-10-12 16:21:08', '2023-10-12 16:21:08');

-- --------------------------------------------------------

--
-- Estrutura para tabela `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estrutura para tabela `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `software_name` varchar(255) DEFAULT NULL,
  `software_description` varchar(255) DEFAULT NULL,
  `software_favicon` varchar(255) DEFAULT NULL,
  `software_logo_white` varchar(255) DEFAULT NULL,
  `software_logo_black` varchar(255) DEFAULT NULL,
  `software_background` varchar(255) DEFAULT NULL,
  `currency_code` varchar(191) NOT NULL DEFAULT 'BRL',
  `decimal_format` varchar(20) NOT NULL DEFAULT 'dot',
  `currency_position` varchar(20) NOT NULL DEFAULT 'left',
  `revshare_percentage` bigint(20) DEFAULT 20,
  `ngr_percent` bigint(20) DEFAULT 20,
  `soccer_percentage` bigint(20) DEFAULT 30,
  `prefix` varchar(191) NOT NULL DEFAULT 'R$',
  `storage` varchar(191) NOT NULL DEFAULT 'local',
  `initial_bonus` bigint(20) DEFAULT 0,
  `min_deposit` int(11) DEFAULT NULL,
  `max_deposit` int(11) DEFAULT NULL,
  `min_withdrawal` int(11) DEFAULT NULL,
  `max_withdrawal` int(11) DEFAULT NULL,
  `rollover` bigint(20) DEFAULT 10,
  `rollover_deposit` bigint(20) DEFAULT 1,
  `suitpay_is_enable` tinyint(4) DEFAULT 1,
  `stripe_is_enable` tinyint(4) DEFAULT 1,
  `bspay_is_enable` tinyint(4) DEFAULT 0,
  `sharkpay_is_enable` tinyint(4) DEFAULT 1,
  `turn_on_football` tinyint(4) DEFAULT 1,
  `revshare_reverse` tinyint(1) DEFAULT 1,
  `bonus_vip` bigint(20) DEFAULT 100,
  `activate_vip_bonus` tinyint(1) DEFAULT 1,
  `updated_at` timestamp NULL DEFAULT NULL,
  `maintenance_mode` tinyint(4) DEFAULT 0,
  `withdrawal_limit` bigint(20) DEFAULT NULL,
  `withdrawal_period` varchar(30) DEFAULT NULL,
  `disable_spin` tinyint(1) NOT NULL DEFAULT 0,
  `perc_sub_lv1` bigint(20) NOT NULL DEFAULT 4,
  `perc_sub_lv2` bigint(20) NOT NULL DEFAULT 2,
  `perc_sub_lv3` bigint(20) NOT NULL DEFAULT 3,
  `disable_rollover` tinyint(4) DEFAULT 0,
  `rollover_protection` bigint(20) NOT NULL DEFAULT 1,
  `cpa_baseline` decimal(10,2) DEFAULT NULL,
  `cpa_value` decimal(10,2) DEFAULT NULL,
  `cpa_percentage_baseline` decimal(10,2) DEFAULT NULL,
  `cpa_percentage` varchar(255) DEFAULT NULL,
  `mercadopago_is_enable` tinyint(4) DEFAULT 0,
  `digitopay_is_enable` tinyint(4) NOT NULL DEFAULT 0,
  `default_gateway` varchar(191) NOT NULL DEFAULT 'digitopay',
  `trunk_baseline` decimal(20,2) NOT NULL DEFAULT 20.00,
  `trunk_aposta` decimal(20,2) NOT NULL DEFAULT 20.00,
  `trunk_valor` decimal(20,2) NOT NULL DEFAULT 20.00
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `settings`
--

INSERT INTO `settings` (`id`, `software_name`, `software_description`, `software_favicon`, `software_logo_white`, `software_logo_black`, `software_background`, `currency_code`, `decimal_format`, `currency_position`, `revshare_percentage`, `ngr_percent`, `soccer_percentage`, `prefix`, `storage`, `initial_bonus`, `min_deposit`, `max_deposit`, `min_withdrawal`, `max_withdrawal`, `rollover`, `rollover_deposit`, `suitpay_is_enable`, `stripe_is_enable`, `bspay_is_enable`, `sharkpay_is_enable`, `turn_on_football`, `revshare_reverse`, `bonus_vip`, `activate_vip_bonus`, `updated_at`, `maintenance_mode`, `withdrawal_limit`, `withdrawal_period`, `disable_spin`, `perc_sub_lv1`, `perc_sub_lv2`, `perc_sub_lv3`, `disable_rollover`, `rollover_protection`, `cpa_baseline`, `cpa_value`, `cpa_percentage_baseline`, `cpa_percentage`, `mercadopago_is_enable`, `digitopay_is_enable`, `default_gateway`, `trunk_baseline`, `trunk_aposta`, `trunk_valor`) VALUES
(1, 'PG JOGOS', 'Os melhores jogos de cassino e slots com PIX automático.', 'uploads/AdBapNvuLzMpGKAQincfDAX4Qrm0zIaJvDl3rNAx.png', 'uploads/FQh4PiPsAqth2ciwROEpTr2KPvrqvBU0pQf15q0B.png', 'uploads/OdXGE49KIllFERwv0IIFP78R2wy43MH8jJT07q43.png', '[]', 'BRL', 'dot', 'left', 0, 0, 30, 'R$', 'local', 25, 10, 10000, 50, 2000, 10, 1, 1, 0, 1, 0, 0, 0, 1, 0, '2024-07-09 14:09:28', 0, 100, 'daily', 1, 10, 0, 0, 1, 5, 10.00, 10.00, 10.00, '50', 0, 0, 'suitpay', 50.00, 30.00, 50.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `setting_mails`
--

CREATE TABLE `setting_mails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `software_smtp_type` varchar(30) DEFAULT NULL,
  `software_smtp_mail_host` varchar(100) DEFAULT NULL,
  `software_smtp_mail_port` varchar(30) DEFAULT NULL,
  `software_smtp_mail_username` varchar(191) DEFAULT NULL,
  `software_smtp_mail_password` varchar(100) DEFAULT NULL,
  `software_smtp_mail_encryption` varchar(30) DEFAULT NULL,
  `software_smtp_mail_from_address` varchar(191) DEFAULT NULL,
  `software_smtp_mail_from_name` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sub_affiliates`
--

CREATE TABLE `sub_affiliates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `affiliate_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Estrutura para tabela `suit_pay_payments`
--

CREATE TABLE `suit_pay_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` varchar(191) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `withdrawal_id` bigint(20) UNSIGNED NOT NULL,
  `pix_key` varchar(191) DEFAULT NULL,
  `pix_type` varchar(50) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `observation` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `system_wallets`
--

CREATE TABLE `system_wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `label` char(32) NOT NULL,
  `balance` decimal(27,12) NOT NULL DEFAULT 0.000000000000,
  `balance_min` decimal(27,12) NOT NULL DEFAULT 10000.100000000000,
  `pay_upto_percentage` decimal(4,2) NOT NULL DEFAULT 45.00,
  `mode` enum('balance_min','percentage') NOT NULL DEFAULT 'percentage',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

--
-- Despejando dados para a tabela `system_wallets`
--

INSERT INTO `system_wallets` (`id`, `label`, `balance`, `balance_min`, `pay_upto_percentage`, `mode`, `created_at`, `updated_at`) VALUES
(1, 'system', 261.800000000000, 10000.100000000000, 45.00, 'percentage', '2023-10-11 16:11:15', '2023-10-16 18:42:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` varchar(100) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `payment_method` varchar(191) DEFAULT NULL,
  `price` decimal(20,2) NOT NULL DEFAULT 0.00,
  `currency` varchar(20) NOT NULL DEFAULT 'usd',
  `status` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `reference` varchar(191) DEFAULT NULL,
  `accept_bonus` tinyint(1) NOT NULL DEFAULT 1,
  `hash` varchar(191) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `transactions`
--

INSERT INTO `transactions` (`id`, `payment_id`, `user_id`, `payment_method`, `price`, `currency`, `status`, `created_at`, `updated_at`, `reference`, `accept_bonus`, `hash`) VALUES
(62, '9f9b0ca4-3352-4324-9342-01a11555cf1a', 273, 'pix', 10.00, 'BRL', 1, '2024-07-06 23:35:32', '2024-07-06 23:37:56', NULL, 1, ''),
(63, '9075c0d0-517c-4fbf-9ad7-511c8ab56860', 274, 'pix', 10.00, 'BRL', 1, '2024-07-06 23:49:21', '2024-07-06 23:50:10', NULL, 1, ''),
(64, '7b2cfc13-6c13-4e6e-a283-bb8394f8abd5', 275, 'pix', 10.00, 'BRL', 1, '2024-07-07 01:14:55', '2024-07-07 01:17:03', NULL, 1, ''),
(65, 'f40961db-21f9-424c-8c80-ec53363cf8aa', 276, 'pix', 30.00, 'BRL', 1, '2024-07-07 01:49:30', '2024-07-07 01:52:11', NULL, 1, ''),
(66, '6c5b6fe3-d9bc-465d-8d93-445d85c59692', 277, 'pix', 30.00, 'BRL', 1, '2024-07-07 09:35:27', '2024-07-07 09:36:11', NULL, 1, ''),
(67, 'cd9f9454-c455-42dc-a5e6-cc9bcc51a002', 278, 'pix', 50.00, 'BRL', 1, '2024-07-07 12:41:03', '2024-07-07 12:41:22', NULL, 1, ''),
(68, '1caff4fa-cd20-4c75-abf2-b93ace6ec517', 280, 'pix', 50.00, 'BRL', 1, '2024-07-07 16:02:27', '2024-07-07 16:02:27', NULL, 1, ''),
(70, 'a5942582-b1c4-44d6-bd31-e926c8a08dad', 281, 'pix', 50.00, 'BRL', 1, '2024-07-07 17:15:16', '2024-07-07 17:15:34', NULL, 1, ''),
(71, '7c9fd14f-7e4d-41c0-a8e8-a74aee91e66c', 282, 'pix', 50.00, 'BRL', 1, '2024-07-07 17:25:29', '2024-07-07 17:25:55', NULL, 1, ''),
(72, 'a35f8859-41ae-4193-a46a-62af996eaee6', 283, 'pix', 50.00, 'BRL', 1, '2024-07-07 17:30:08', '2024-07-07 17:30:27', NULL, 1, ''),
(73, '9fff863e-80d5-4fa1-b6de-f6c1aabaadcc', 284, 'pix', 50.00, 'BRL', 1, '2024-07-07 17:35:35', '2024-07-07 17:35:58', NULL, 1, ''),
(74, 'c9d2cab6-337e-4f3a-9964-25cbbf95e643', 285, 'pix', 50.00, 'BRL', 1, '2024-07-07 17:54:39', '2024-07-07 17:55:24', NULL, 1, ''),
(75, 'e96d2922-84b7-4e8f-8852-b9eb000078d4', 286, 'pix', 50.00, 'BRL', 1, '2024-07-07 17:58:10', '2024-07-07 17:58:34', NULL, 1, ''),
(76, '8a8eda9e-0292-41bb-a33b-452f7ab1c997', 287, 'pix', 50.00, 'BRL', 1, '2024-07-07 18:05:06', '2024-07-07 18:05:26', NULL, 1, ''),
(77, '71475e63-8873-4f3f-9e9e-a737db77e489', 288, 'pix', 50.00, 'BRL', 1, '2024-07-07 18:08:10', '2024-07-07 18:08:36', NULL, 1, ''),
(78, '91d84886-018c-4e0e-acbb-f4062726f073', 289, 'pix', 50.00, 'BRL', 0, '2024-07-09 11:19:23', '2024-07-09 11:19:23', NULL, 1, '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `oauth_id` varchar(191) DEFAULT NULL,
  `oauth_type` varchar(191) DEFAULT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `last_name` varchar(191) DEFAULT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `logged_in` tinyint(4) NOT NULL DEFAULT 0,
  `banned` tinyint(4) NOT NULL DEFAULT 0,
  `inviter` int(11) DEFAULT NULL,
  `inviter_code` varchar(25) DEFAULT NULL,
  `affiliate_revenue_share` bigint(20) NOT NULL DEFAULT 2,
  `affiliate_revenue_share_fake` bigint(20) DEFAULT NULL,
  `affiliate_cpa` decimal(20,2) NOT NULL DEFAULT 10.00,
  `affiliate_percentage_cpa` decimal(10,2) DEFAULT NULL,
  `affiliate_percentage_baseline` varchar(255) DEFAULT NULL,
  `affiliate_baseline` decimal(20,2) NOT NULL DEFAULT 40.00,
  `is_demo_agent` tinyint(4) NOT NULL DEFAULT 0,
  `status` varchar(50) NOT NULL DEFAULT 'active',
  `language` varchar(191) NOT NULL DEFAULT 'pt_BR',
  `role_id` int(11) DEFAULT 3,
  `affiliate_bau_baseline` decimal(20,2) NOT NULL DEFAULT 20.00,
  `affiliate_bau_value` decimal(20,2) NOT NULL DEFAULT 20.00,
  `affiliate_bau_aposta` decimal(20,2) NOT NULL DEFAULT 20.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `oauth_id`, `oauth_type`, `avatar`, `last_name`, `cpf`, `phone`, `logged_in`, `banned`, `inviter`, `inviter_code`, `affiliate_revenue_share`, `affiliate_revenue_share_fake`, `affiliate_cpa`, `affiliate_percentage_cpa`, `affiliate_percentage_baseline`, `affiliate_baseline`, `is_demo_agent`, `status`, `language`, `role_id`, `affiliate_bau_baseline`, `affiliate_bau_value`, `affiliate_bau_aposta`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$fZu6g5sAMrIa/zIz1dTprOstfmQTHd5qbCA1o8XS3afs/3MIDelHS', 'fw3lsRKMdjIKCmkRnCAWPQjG3OSvgbVhChPSeXB8KRGz73PbXctdxdX3kUUo', '2023-11-07 22:15:13', '2024-07-03 15:54:49', NULL, NULL, 'uploads/8lx3OeL0c6GX18GMIhbgf2Kj4JVew0NRmnTUYYSb.png', NULL, NULL, NULL, 0, 0, NULL, 'IL9O93HOCY', 20, NULL, 10.00, NULL, NULL, 40.00, 0, 'active', 'pt_BR', 1, 20.00, 20.00, 20.00),
(271, 'matheus', '74999025829@gmail.com', NULL, '$2y$10$fZu6g5sAMrIa/zIz1dTprOstfmQTHd5qbCA1o8XS3afs/3MIDelHS', NULL, '2024-07-03 14:00:51', '2024-07-03 14:00:51', NULL, NULL, NULL, NULL, NULL, '74999025829', 0, 0, NULL, '34694538', 0, NULL, 15.00, NULL, NULL, 20.00, 0, 'active', 'pt_BR', 3, 50.00, 50.00, 30.00),
(272, 'lziemann', '51981295939@gmail.com', NULL, '$2y$10$HfA5iCGFb1lUlj3TEz3hKe4LCujt3WtSKuJfWW.4yhYDsaUoRvqQG', NULL, '2024-07-06 20:20:50', '2024-07-08 11:52:46', NULL, NULL, NULL, NULL, NULL, '51981295939', 0, 0, NULL, '51562580', 0, NULL, 10.00, NULL, NULL, 20.00, 0, 'active', 'pt_BR', 3, 50.00, 10.00, 30.00),
(273, 'rq1', '51980431387@gmail.com', NULL, '$2y$10$oSS/7GcisdOER.5RJSDaF.eIMGHw.Xg1fqCu/IJ.Xt8Eg1qhCL4M2', NULL, '2024-07-06 23:35:09', '2024-07-06 23:35:09', NULL, NULL, NULL, NULL, NULL, '51980431387', 0, 0, 272, '55628339', 0, NULL, 10.00, NULL, NULL, 10.00, 0, 'active', 'pt_BR', 3, 50.00, 50.00, 30.00),
(274, 'Pati', '51998853309@gmail.com', NULL, '$2y$10$RNh6eKiTgXVrcil5WyQ6mOXYFjPaMSXOjS3TAFImA9ovS3oqDKbES', NULL, '2024-07-06 23:49:11', '2024-07-06 23:49:11', NULL, NULL, NULL, NULL, NULL, '51998853309', 0, 0, 272, '23347787', 0, NULL, 10.00, NULL, NULL, 10.00, 0, 'active', 'pt_BR', 3, 50.00, 50.00, 30.00),
(275, 'Gabriela', '51997627880@gmail.com', NULL, '$2y$10$5dhiMlQQ0NiZvC57ztqx2ueWj23JLXsTdhcUwbkRA/Hh4QmG6eslS', NULL, '2024-07-07 01:13:57', '2024-07-07 01:13:57', NULL, NULL, NULL, NULL, NULL, '51997627880', 0, 0, NULL, '14366872', 0, NULL, 10.00, NULL, NULL, 10.00, 0, 'active', 'pt_BR', 3, 50.00, 50.00, 30.00),
(276, 'Sheron', '51995016279@gmail.com', NULL, '$2y$10$m0z5PaSe31vS6gHc1vTuuOkZ/c8bgwkzYri6xVGsP6ZcMBfXfPjZC', NULL, '2024-07-07 01:48:56', '2024-07-07 01:48:56', NULL, NULL, NULL, NULL, NULL, '51995016279', 0, 0, 272, '92696817', 0, NULL, 10.00, NULL, NULL, 10.00, 0, 'active', 'pt_BR', 3, 50.00, 50.00, 30.00),
(277, 'esteticaisadoranascimento@gmail.com', '51997339633@gmail.com', NULL, '$2y$10$plZosgFdDcPow11XwAvCKeF.lq5UaIVzRHenBZjijVqZBoNQFYwf6', NULL, '2024-07-07 09:35:17', '2024-07-07 09:35:17', NULL, NULL, NULL, NULL, NULL, '51997339633', 0, 0, 272, '20262310', 0, NULL, 10.00, NULL, NULL, 10.00, 0, 'active', 'pt_BR', 3, 50.00, 50.00, 30.00),
(278, 'JaneteSantos', '51992435334@gmail.com', NULL, '$2y$10$Foyx6skmELOUTG5qW7Z9LOYKUDhX/X8gSxwPB999JGQduLd2lfKx.', NULL, '2024-07-07 12:39:24', '2024-07-07 12:39:24', NULL, NULL, NULL, NULL, NULL, '51992435334', 0, 0, 272, '16289815', 0, NULL, 10.00, NULL, NULL, 10.00, 0, 'active', 'pt_BR', 3, 50.00, 50.00, 30.00),
(279, 'afiliado1', '1140028922@gmail.com', NULL, '$2y$10$XBL11qfrefqQLcJEbG0JceNRicaM5/26SeJZzR1Y5RZDhiGttnFea', NULL, '2024-07-07 15:46:39', '2024-07-07 15:46:39', NULL, NULL, NULL, NULL, NULL, '1140028922', 0, 0, NULL, '37442800', 0, NULL, 10.00, NULL, NULL, 10.00, 0, 'active', 'pt_BR', 3, 50.00, 50.00, 30.00),
(280, 'afiliado2', '11940028922@gmail.com', NULL, '$2y$10$5z9wQHNsPlZLiRyEq5.zwuqsqs5YFHnfoMxa5qe2uUUtgbNAg5ilW', NULL, '2024-07-07 16:00:00', '2024-07-07 16:00:00', NULL, NULL, NULL, NULL, NULL, '11940028922', 0, 0, 279, '94808542', 0, NULL, 10.00, NULL, NULL, 10.00, 0, 'active', 'pt_BR', 3, 50.00, 50.00, 30.00),
(281, 'afiliado3', '1140028999@gmail.com', NULL, '$2y$10$NaCKGC.JAgoftkAQvFOo7OBzdn7To4ownTBtmeRUq.2tJAX9Izcl2', NULL, '2024-07-07 16:48:30', '2024-07-07 16:48:30', NULL, NULL, NULL, NULL, NULL, '1140028999', 0, 0, 279, '26251824', 0, NULL, 10.00, NULL, NULL, 10.00, 0, 'active', 'pt_BR', 3, 50.00, 50.00, 30.00),
(282, 'afiliado4', '1140098922@gmail.com', NULL, '$2y$10$x8E4ghVes5vAu0px9RwqVuv6p88Zj4HasxhJlHkVv9e5IaJdgtd92', NULL, '2024-07-07 17:25:18', '2024-07-07 17:25:18', NULL, NULL, NULL, NULL, NULL, '1140098922', 0, 0, 279, '05791896', 0, NULL, 10.00, NULL, NULL, 10.00, 0, 'active', 'pt_BR', 3, 50.00, 50.00, 30.00),
(283, 'afiliado4', '11400289224@gmail.com', NULL, '$2y$10$0nwSjL0ruEfDkstSm8iQLeVMowHviBAKoIbj4YqSdZzKST5cAAUHi', NULL, '2024-07-07 17:30:00', '2024-07-07 17:30:00', NULL, NULL, NULL, NULL, NULL, '11400289224', 0, 0, 279, '20797862', 0, NULL, 10.00, NULL, NULL, 10.00, 0, 'active', 'pt_BR', 3, 50.00, 50.00, 30.00),
(284, 'afiliado5', '1140023900@gmail.com', NULL, '$2y$10$E3MyhZiZAF3DepDmMc8S6.q1EeEWQKyyTLnBdYXkbzJTe5qEna3Xy', NULL, '2024-07-07 17:35:28', '2024-07-07 17:35:28', NULL, NULL, NULL, NULL, NULL, '1140023900', 0, 0, 279, '80959793', 0, NULL, 10.00, NULL, NULL, 10.00, 0, 'active', 'pt_BR', 3, 50.00, 50.00, 30.00),
(285, 'afiliado5', '1140090909@gmail.com', NULL, '$2y$10$cWblk4aN4aWPvslxs8shHeult539kKG5JX8Rmzg6OLLOzDRL9R72K', NULL, '2024-07-07 17:54:29', '2024-07-07 17:54:29', NULL, NULL, NULL, NULL, NULL, '1140090909', 0, 0, 279, '96339411', 0, NULL, 10.00, NULL, NULL, 10.00, 0, 'active', 'pt_BR', 3, 50.00, 50.00, 30.00),
(286, 'afiliado6', '11009090909@gmail.com', NULL, '$2y$10$L3kueEd6kk2CJqnathMXqOKiN1ubu9mhyS.Cr7qGmCjENIlM6CDCa', NULL, '2024-07-07 17:58:05', '2024-07-07 17:58:05', NULL, NULL, NULL, NULL, NULL, '11009090909', 0, 0, 279, '77338140', 0, NULL, 10.00, NULL, NULL, 10.00, 0, 'active', 'pt_BR', 3, 50.00, 50.00, 30.00),
(287, 'afiliado7', '11499090909@gmail.com', NULL, '$2y$10$OEH/z/ueRX57ksD9PF51YOhnAlTG9WzCKEU/1F8pKA5lzNklbtMa.', NULL, '2024-07-07 18:04:58', '2024-07-07 18:04:58', NULL, NULL, NULL, NULL, NULL, '11499090909', 0, 0, 279, '58277916', 0, NULL, 10.00, NULL, NULL, 10.00, 0, 'active', 'pt_BR', 3, 50.00, 50.00, 30.00),
(288, 'afiliado8', '1090909090@gmail.com', NULL, '$2y$10$rY0w/YN7WNYQ8YJPvL/7reMp9x2bDQgN1jHI6j8IslXTr9miQEbyS', NULL, '2024-07-07 18:08:03', '2024-07-07 18:08:03', NULL, NULL, NULL, NULL, NULL, '1090909090', 0, 0, 279, '41450355', 0, NULL, 10.00, NULL, NULL, 10.00, 0, 'active', 'pt_BR', 3, 50.00, 50.00, 30.00),
(289, 'matheusteste', '87988083857@gmail.com', NULL, '$2y$10$bJBBnlRmYjf5ZU9yFH/Txu1sd1PlUU.A1Qoj0C9zj/TgQrhpITTzm', NULL, '2024-07-09 11:14:33', '2024-07-09 11:14:33', NULL, NULL, NULL, NULL, NULL, '87988083857', 0, 0, 271, '25635842', 0, NULL, 10.00, NULL, NULL, 10.00, 0, 'active', 'pt_BR', 3, 50.00, 50.00, 30.00),
(290, 'Emanoeli', '51970236093@gmail.com', NULL, '$2y$10$kZhZVlbyV2cMtsfaqxPTzujQtcdvNro7hjkdj8zIb2nJqYK8Baxom', NULL, '2024-07-09 11:14:55', '2024-07-09 11:14:55', NULL, NULL, NULL, NULL, NULL, '51970236093', 0, 0, 272, '59948158', 0, NULL, 10.00, NULL, NULL, 10.00, 0, 'active', 'pt_BR', 3, 50.00, 50.00, 30.00),
(291, 'Teste2024', '123456789@gmail.com', NULL, '$2y$10$cI6WC74QhghxTxR2YQ3wLOxb8ktDwb8qdSU3F0wE8jDFS.gEYJROy', NULL, '2024-07-10 11:21:22', '2024-07-10 11:21:22', NULL, NULL, NULL, NULL, NULL, '123456789', 0, 0, NULL, '61785364', 0, NULL, 10.00, NULL, NULL, 10.00, 0, 'active', 'pt_BR', 3, 50.00, 50.00, 30.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `vips`
--

CREATE TABLE `vips` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bet_symbol` varchar(255) NOT NULL,
  `bet_level` bigint(20) NOT NULL DEFAULT 1,
  `bet_required` bigint(20) DEFAULT NULL,
  `bet_period` varchar(191) DEFAULT NULL,
  `bet_bonus` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `vip_users`
--

CREATE TABLE `vip_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `vip_id` int(10) UNSIGNED NOT NULL,
  `level` bigint(20) NOT NULL,
  `points` bigint(20) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wallets`
--

CREATE TABLE `wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `currency` varchar(20) NOT NULL,
  `symbol` varchar(5) NOT NULL,
  `balance` decimal(20,2) NOT NULL DEFAULT 0.00,
  `balance_bonus_rollover` decimal(10,2) DEFAULT 0.00,
  `balance_deposit_rollover` decimal(10,2) DEFAULT 0.00,
  `balance_withdrawal` decimal(10,2) DEFAULT 0.00,
  `balance_bonus` decimal(20,2) NOT NULL DEFAULT 0.00,
  `balance_cryptocurrency` decimal(20,8) NOT NULL DEFAULT 0.00000000,
  `balance_demo` decimal(20,8) DEFAULT 1000.00000000,
  `refer_rewards` decimal(20,2) NOT NULL DEFAULT 0.00,
  `hide_balance` tinyint(1) NOT NULL DEFAULT 0,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total_bet` decimal(20,2) NOT NULL DEFAULT 0.00,
  `total_won` bigint(20) NOT NULL DEFAULT 0,
  `total_lose` bigint(20) NOT NULL DEFAULT 0,
  `last_won` bigint(20) NOT NULL DEFAULT 0,
  `last_lose` bigint(20) NOT NULL DEFAULT 0,
  `vip_level` bigint(20) DEFAULT 0,
  `vip_points` bigint(20) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `wallets`
--

INSERT INTO `wallets` (`id`, `user_id`, `currency`, `symbol`, `balance`, `balance_bonus_rollover`, `balance_deposit_rollover`, `balance_withdrawal`, `balance_bonus`, `balance_cryptocurrency`, `balance_demo`, `refer_rewards`, `hide_balance`, `active`, `created_at`, `updated_at`, `total_bet`, `total_won`, `total_lose`, `last_won`, `last_lose`, `vip_level`, `vip_points`) VALUES
(1, 1, 'BRL', 'R$', 50.00, 0.00, 0.00, 0.00, 0.00, 0.00000000, 1000.00000000, 5900.00, 0, 1, '2023-11-07 22:15:13', '2024-06-26 15:15:59', 0.00, 0, 0, 0, 0, 1, 10000),
(271, 271, 'BRL', 'R$', 0.00, 0.00, 0.00, 1015.44, 0.00, 0.00000000, 1000.00000000, 0.00, 0, 1, '2024-07-03 14:00:51', '2024-07-09 14:39:11', 0.00, 0, 0, 0, 0, 0, 0),
(272, 272, 'BRL', 'R$', 0.00, 0.00, 0.00, 844.50, 0.00, 0.00000000, 1000.00000000, 0.00, 0, 1, '2024-07-06 20:20:50', '2024-07-09 22:26:21', 0.00, 0, 0, 0, 0, 0, 0),
(273, 273, 'BRL', 'R$', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00000000, 1000.00000000, 0.00, 0, 1, '2024-07-06 23:35:09', '2024-07-06 23:46:16', 0.00, 0, 0, 0, 0, 0, 0),
(274, 274, 'BRL', 'R$', 0.00, 0.00, 0.00, 0.00, 0.40, 0.00000000, 1000.00000000, 0.00, 0, 1, '2024-07-06 23:49:11', '2024-07-06 23:54:08', 0.00, 0, 0, 0, 0, 0, 0),
(275, 275, 'BRL', 'R$', 0.00, 0.00, 0.00, 0.00, 0.10, 0.00000000, 1000.00000000, 0.00, 0, 1, '2024-07-07 01:13:57', '2024-07-07 01:21:55', 0.00, 0, 0, 0, 0, 0, 0),
(276, 276, 'BRL', 'R$', 0.00, 0.00, 0.00, 0.00, 0.30, 0.00000000, 1000.00000000, 0.00, 0, 1, '2024-07-07 01:48:56', '2024-07-07 01:55:53', 0.00, 0, 0, 0, 0, 0, 0),
(277, 277, 'BRL', 'R$', 0.00, 0.00, 0.00, 0.00, 0.20, 0.00000000, 1000.00000000, 0.00, 0, 1, '2024-07-07 09:35:17', '2024-07-07 10:04:08', 0.00, 0, 0, 0, 0, 0, 0),
(278, 278, 'BRL', 'R$', 0.00, 0.00, 0.00, 2.50, 12.50, 0.00000000, 1000.00000000, 0.00, 0, 1, '2024-07-07 12:39:24', '2024-07-07 12:54:21', 0.00, 0, 0, 0, 0, 0, 0),
(279, 279, 'BRL', 'R$', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00000000, 1000.00000000, 110.00, 0, 1, '2024-07-07 15:46:39', '2024-07-07 18:09:34', 0.00, 0, 0, 0, 0, 0, 0),
(280, 280, 'BRL', 'R$', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00000000, 1000.00000000, 0.00, 0, 1, '2024-07-07 16:00:00', '2024-07-07 16:00:00', 0.00, 0, 0, 0, 0, 0, 0),
(281, 281, 'BRL', 'R$', 0.00, 0.00, 0.00, 50.05, 12.51, 0.00000000, 1000.00000000, 0.00, 0, 1, '2024-07-07 16:48:30', '2024-07-07 17:15:34', 0.00, 0, 0, 0, 0, 0, 0),
(282, 282, 'BRL', 'R$', 0.00, 0.00, 0.00, 50.00, 12.50, 0.00000000, 1000.00000000, 0.00, 0, 1, '2024-07-07 17:25:18', '2024-07-07 17:25:55', 0.00, 0, 0, 0, 0, 0, 0),
(283, 283, 'BRL', 'R$', 0.00, 0.00, 0.00, 50.00, 12.50, 0.00000000, 1000.00000000, 0.00, 0, 1, '2024-07-07 17:30:00', '2024-07-07 17:30:27', 0.00, 0, 0, 0, 0, 0, 0),
(284, 284, 'BRL', 'R$', 0.00, 0.00, 0.00, 50.00, 12.50, 0.00000000, 1000.00000000, 0.00, 0, 1, '2024-07-07 17:35:28', '2024-07-07 17:35:58', 0.00, 0, 0, 0, 0, 0, 0),
(285, 285, 'BRL', 'R$', 0.00, 0.00, 0.00, 50.00, 12.50, 0.00000000, 1000.00000000, 0.00, 0, 1, '2024-07-07 17:54:29', '2024-07-07 17:55:24', 0.00, 0, 0, 0, 0, 0, 0),
(286, 286, 'BRL', 'R$', 0.00, 0.00, 0.00, 50.00, 12.50, 0.00000000, 1000.00000000, 0.00, 0, 1, '2024-07-07 17:58:05', '2024-07-07 17:58:34', 0.00, 0, 0, 0, 0, 0, 0),
(287, 287, 'BRL', 'R$', 0.00, 0.00, 0.00, 50.00, 12.50, 0.00000000, 1000.00000000, 0.00, 0, 1, '2024-07-07 18:04:58', '2024-07-07 18:05:26', 0.00, 0, 0, 0, 0, 0, 0),
(288, 288, 'BRL', 'R$', 0.00, 0.00, 0.00, 38.40, 12.50, 0.00000000, 1000.00000000, 0.00, 0, 1, '2024-07-07 18:08:03', '2024-07-07 18:32:05', 0.00, 0, 0, 0, 0, 0, 0),
(289, 289, 'BRL', 'R$', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00000000, 1000.00000000, 0.00, 0, 1, '2024-07-09 11:14:33', '2024-07-09 11:28:50', 0.00, 0, 0, 0, 0, 0, 0),
(290, 290, 'BRL', 'R$', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00000000, 1000.00000000, 0.00, 0, 1, '2024-07-09 11:14:55', '2024-07-09 11:14:55', 0.00, 0, 0, 0, 0, 0, 0),
(291, 291, 'BRL', 'R$', 4999.10, 0.00, 0.00, 0.00, 0.00, 0.00000000, 1000.00000000, 0.00, 0, 1, '2024-07-10 11:21:22', '2024-07-10 11:26:21', 0.00, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wallet_changes`
--

CREATE TABLE `wallet_changes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `change` varchar(50) DEFAULT NULL,
  `value_bonus` decimal(20,2) NOT NULL DEFAULT 0.00,
  `value_total` decimal(20,2) NOT NULL DEFAULT 0.00,
  `value_roi` decimal(20,2) NOT NULL DEFAULT 0.00,
  `value_entry` decimal(20,2) NOT NULL DEFAULT 0.00,
  `refer_rewards` decimal(20,2) NOT NULL DEFAULT 0.00,
  `game` varchar(191) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `websockets_statistics_entries`
--

CREATE TABLE `websockets_statistics_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `app_id` varchar(191) NOT NULL,
  `peak_connection_count` int(11) NOT NULL,
  `websocket_message_count` int(11) NOT NULL,
  `api_message_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(20,2) NOT NULL DEFAULT 0.00,
  `type` varchar(191) DEFAULT NULL,
  `proof` varchar(191) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `pix_key` varchar(191) DEFAULT NULL,
  `pix_type` varchar(191) DEFAULT NULL,
  `bank_info` text DEFAULT NULL,
  `currency` varchar(50) DEFAULT NULL,
  `symbol` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `withdrawals`
--

INSERT INTO `withdrawals` (`id`, `payment_id`, `user_id`, `amount`, `type`, `proof`, `status`, `pix_key`, `pix_type`, `bank_info`, `currency`, `symbol`, `created_at`, `updated_at`) VALUES
(8, NULL, 271, 50.00, 'pix', NULL, 2, '11454171405', 'document', NULL, 'BRL', 'R$', '2024-07-09 11:31:47', '2024-07-09 12:34:50');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `affiliate_histories`
--
ALTER TABLE `affiliate_histories`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `affiliate_histories_user_id_index` (`user_id`) USING BTREE,
  ADD KEY `affiliate_histories_inviter_index` (`inviter`) USING BTREE;

--
-- Índices de tabela `affiliate_withdraws`
--
ALTER TABLE `affiliate_withdraws`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `affiliate_withdraws_user_id_foreign` (`user_id`) USING BTREE;

--
-- Índices de tabela `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `baus`
--
ALTER TABLE `baus`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `casino_categories_slug_unique` (`slug`) USING BTREE;

--
-- Índices de tabela `category_game`
--
ALTER TABLE `category_game`
  ADD KEY `category_games_category_id_foreign` (`category_id`) USING BTREE,
  ADD KEY `category_games_game_id_foreign` (`game_id`) USING BTREE;

--
-- Índices de tabela `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `currency_alloweds`
--
ALTER TABLE `currency_alloweds`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `currency_alloweds_currency_id_foreign` (`currency_id`) USING BTREE;

--
-- Índices de tabela `custom_layouts`
--
ALTER TABLE `custom_layouts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `deposits_user_id_foreign` (`user_id`) USING BTREE;

--
-- Índices de tabela `digito_pay_payments`
--
ALTER TABLE `digito_pay_payments`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `digito_pay_payments_user_id_index` (`user_id`) USING BTREE,
  ADD KEY `digito_pay_payments_withdrawal_id_index` (`withdrawal_id`) USING BTREE;

--
-- Índices de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`) USING BTREE;

--
-- Índices de tabela `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `games_provider_id_index` (`provider_id`) USING BTREE,
  ADD KEY `games_game_code_index` (`game_code`) USING BTREE;

--
-- Índices de tabela `games_keys`
--
ALTER TABLE `games_keys`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `game_favorites`
--
ALTER TABLE `game_favorites`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `game_favorites_user_id_game_id_unique` (`user_id`,`game_id`) USING BTREE,
  ADD KEY `game_favorites_game_id_foreign` (`game_id`) USING BTREE;

--
-- Índices de tabela `game_likes`
--
ALTER TABLE `game_likes`
  ADD UNIQUE KEY `game_likes_user_id_game_id_unique` (`user_id`,`game_id`) USING BTREE,
  ADD KEY `game_likes_game_id_foreign` (`game_id`) USING BTREE;

--
-- Índices de tabela `game_reviews`
--
ALTER TABLE `game_reviews`
  ADD UNIQUE KEY `game_reviews_user_id_game_id_unique` (`user_id`,`game_id`) USING BTREE,
  ADD KEY `game_reviews_game_id_foreign` (`game_id`) USING BTREE;

--
-- Índices de tabela `gateways`
--
ALTER TABLE `gateways`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `ggds_spin_config`
--
ALTER TABLE `ggds_spin_config`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `ggds_spin_runs`
--
ALTER TABLE `ggds_spin_runs`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `ggr_games`
--
ALTER TABLE `ggr_games`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `ggr_games_fivers_user_id_index` (`user_id`) USING BTREE;

--
-- Índices de tabela `ggr_games_world_slots`
--
ALTER TABLE `ggr_games_world_slots`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `ggr_games_world_slots_user_id_index` (`user_id`) USING BTREE;

--
-- Índices de tabela `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `likes_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `likes_liked_user_id_foreign` (`liked_user_id`) USING BTREE;

--
-- Índices de tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `missions`
--
ALTER TABLE `missions`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `mission_users`
--
ALTER TABLE `mission_users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `mission_users_user_id_index` (`user_id`) USING BTREE,
  ADD KEY `mission_users_mission_id_index` (`mission_id`) USING BTREE;

--
-- Índices de tabela `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`) USING BTREE,
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`) USING BTREE;

--
-- Índices de tabela `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`) USING BTREE,
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`) USING BTREE;

--
-- Índices de tabela `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`) USING BTREE;

--
-- Índices de tabela `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `orders_user_id_foreign` (`user_id`) USING BTREE;

--
-- Índices de tabela `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`) USING BTREE;

--
-- Índices de tabela `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`) USING BTREE;

--
-- Índices de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`) USING BTREE,
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`) USING BTREE;

--
-- Índices de tabela `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`) USING BTREE;

--
-- Índices de tabela `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`) USING BTREE,
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`) USING BTREE;

--
-- Índices de tabela `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `setting_mails`
--
ALTER TABLE `setting_mails`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `sub_affiliates`
--
ALTER TABLE `sub_affiliates`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `sub_affiliates_affiliate_id_index` (`affiliate_id`) USING BTREE,
  ADD KEY `sub_affiliates_user_id_index` (`user_id`) USING BTREE;

--
-- Índices de tabela `suit_pay_payments`
--
ALTER TABLE `suit_pay_payments`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `suit_pay_payments_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `suit_pay_payments_withdrawal_id_foreign` (`withdrawal_id`) USING BTREE;

--
-- Índices de tabela `system_wallets`
--
ALTER TABLE `system_wallets`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `transactions_user_id_index` (`user_id`) USING BTREE;

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `users_email_unique` (`email`) USING BTREE;

--
-- Índices de tabela `vips`
--
ALTER TABLE `vips`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `vip_users`
--
ALTER TABLE `vip_users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `vip_users_user_id_index` (`user_id`) USING BTREE,
  ADD KEY `vip_users_vip_id_index` (`vip_id`) USING BTREE;

--
-- Índices de tabela `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `wallets_user_id_index` (`user_id`) USING BTREE;

--
-- Índices de tabela `wallet_changes`
--
ALTER TABLE `wallet_changes`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `wallet_changes_user_id_foreign` (`user_id`) USING BTREE;

--
-- Índices de tabela `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `withdrawals_user_id_foreign` (`user_id`) USING BTREE;

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `affiliate_histories`
--
ALTER TABLE `affiliate_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT de tabela `affiliate_withdraws`
--
ALTER TABLE `affiliate_withdraws`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `baus`
--
ALTER TABLE `baus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de tabela `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT de tabela `currency_alloweds`
--
ALTER TABLE `currency_alloweds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `custom_layouts`
--
ALTER TABLE `custom_layouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT de tabela `digito_pay_payments`
--
ALTER TABLE `digito_pay_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `games`
--
ALTER TABLE `games`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `games_keys`
--
ALTER TABLE `games_keys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `game_favorites`
--
ALTER TABLE `game_favorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `gateways`
--
ALTER TABLE `gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `ggds_spin_config`
--
ALTER TABLE `ggds_spin_config`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `ggds_spin_runs`
--
ALTER TABLE `ggds_spin_runs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `ggr_games`
--
ALTER TABLE `ggr_games`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=518;

--
-- AUTO_INCREMENT de tabela `ggr_games_world_slots`
--
ALTER TABLE `ggr_games_world_slots`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT de tabela `missions`
--
ALTER TABLE `missions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `mission_users`
--
ALTER TABLE `mission_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=518;

--
-- AUTO_INCREMENT de tabela `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `providers`
--
ALTER TABLE `providers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT de tabela `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `setting_mails`
--
ALTER TABLE `setting_mails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `sub_affiliates`
--
ALTER TABLE `sub_affiliates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `suit_pay_payments`
--
ALTER TABLE `suit_pay_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `system_wallets`
--
ALTER TABLE `system_wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=292;

--
-- AUTO_INCREMENT de tabela `vips`
--
ALTER TABLE `vips`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `vip_users`
--
ALTER TABLE `vip_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=292;

--
-- AUTO_INCREMENT de tabela `wallet_changes`
--
ALTER TABLE `wallet_changes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
