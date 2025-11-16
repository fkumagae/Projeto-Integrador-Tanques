-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15/11/2025 às 00:46
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `scom`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `commands`
--

CREATE TABLE `commands` (
  `id` int(11) NOT NULL,
  `command_name` varchar(100) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `status` enum('pending','sent') NOT NULL DEFAULT 'pending',
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `commands`
--

INSERT INTO `commands` (`id`, `command_name`, `value`, `status`, `user_id`, `created_at`) VALUES
(16, 'setpoint', '30', 'sent', 5, '2025-11-13 12:37:58'),
(17, 'setpoint', '28', 'sent', 5, '2025-11-13 13:28:34'),
(18, 'setpoint', '21', 'sent', 5, '2025-11-13 16:08:44'),
(19, 'setpoint', '10', 'sent', 5, '2025-11-13 16:30:43'),
(20, 'setpoint', '25', 'sent', 5, '2025-11-13 16:40:56'),
(21, 'setpoint', '25', 'sent', 5, '2025-11-13 16:45:39'),
(22, 'setpoint', '25.5', 'sent', 5, '2025-11-13 17:18:08'),
(23, 'setpoint', '25.5', 'pending', 5, '2025-11-14 23:26:33');

-- --------------------------------------------------------

--
-- Estrutura para tabela `eventos`
--

CREATE TABLE `eventos` (
  `id` bigint(20) NOT NULL,
  `tipo` varchar(30) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `ts` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `logs`
--

CREATE TABLE `logs` (
  `id` bigint(20) NOT NULL,
  `event_type` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `ip_address` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `logs`
--

INSERT INTO `logs` (`id`, `event_type`, `description`, `ip_address`, `user_id`, `created_at`) VALUES
(1, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 01:56:09'),
(2, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 01:56:12'),
(3, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 01:56:30'),
(4, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 01:56:33'),
(5, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 01:56:51'),
(6, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 01:56:54'),
(7, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 01:57:12'),
(8, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 01:57:15'),
(9, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 01:57:33'),
(10, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 01:57:36'),
(11, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 01:58:57'),
(12, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 01:59:00'),
(13, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 01:59:18'),
(14, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 01:59:21'),
(15, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 01:59:39'),
(16, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 01:59:42'),
(17, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 02:00:00'),
(18, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 02:00:03'),
(19, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 02:00:21'),
(20, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 02:00:24'),
(21, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 02:01:12'),
(22, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 02:01:15'),
(23, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 02:01:33'),
(24, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 02:01:36'),
(25, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 02:01:54'),
(26, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 02:01:57'),
(27, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 02:02:15'),
(28, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 02:02:18'),
(29, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 02:02:36'),
(30, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 02:02:39'),
(31, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 02:11:24'),
(32, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 02:11:27'),
(33, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 02:11:45'),
(34, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 02:11:48'),
(35, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 02:12:06'),
(36, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 02:12:09'),
(37, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 02:12:27'),
(38, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 02:12:30'),
(39, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 02:12:48'),
(40, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 02:12:51'),
(41, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 02:20:56'),
(42, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 02:21:00'),
(43, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 02:21:18'),
(44, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 02:21:21'),
(45, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 02:21:39'),
(46, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 02:21:42'),
(47, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 02:22:00'),
(48, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 02:22:03'),
(49, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 02:22:21'),
(50, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 02:22:24'),
(51, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 02:25:37'),
(52, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 02:25:40'),
(53, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 02:25:58'),
(54, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 02:26:01'),
(55, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 02:26:20'),
(56, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 02:26:23'),
(57, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 02:26:41'),
(58, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 02:26:44'),
(59, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 02:27:02'),
(60, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 02:27:05'),
(61, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 02:28:01'),
(62, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 02:28:04'),
(63, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 02:28:23'),
(64, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 02:28:26'),
(65, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 02:28:44'),
(66, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 02:28:47'),
(67, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 02:29:05'),
(68, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 02:29:08'),
(69, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 02:29:26'),
(70, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 02:29:29'),
(71, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 03:46:31'),
(72, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 03:46:34'),
(73, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 03:46:52'),
(74, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 03:46:55'),
(75, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 03:47:13'),
(76, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 03:47:16'),
(77, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 03:47:34'),
(78, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 03:47:39'),
(79, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 03:47:55'),
(80, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 03:47:58'),
(81, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 03:49:42'),
(82, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 03:49:45'),
(83, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 03:50:03'),
(84, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 03:50:06'),
(85, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 03:50:24'),
(86, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 03:50:27'),
(87, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 03:50:45'),
(88, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 03:50:48'),
(89, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 03:51:06'),
(90, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 03:51:09'),
(91, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 03:51:38'),
(92, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 03:51:41'),
(93, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 03:51:59'),
(94, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 03:52:02'),
(95, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 03:52:20'),
(96, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 03:52:23'),
(97, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 03:52:41'),
(98, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 03:52:44'),
(99, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 03:53:02'),
(100, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 03:53:05'),
(101, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 03:53:33'),
(102, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 03:53:36'),
(103, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 03:53:54'),
(104, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 03:53:57'),
(105, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 03:54:15'),
(106, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 03:54:18'),
(107, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 03:54:36'),
(108, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 03:54:39'),
(109, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 03:54:57'),
(110, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 03:55:00'),
(111, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:11:14'),
(112, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:11:17'),
(113, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:11:35'),
(114, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:11:38'),
(115, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:11:56'),
(116, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:11:59'),
(117, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:12:18'),
(118, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:12:21'),
(119, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:12:39'),
(120, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:12:42'),
(121, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:14:17'),
(122, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:14:20'),
(123, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:14:38'),
(124, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:14:41'),
(125, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:14:59'),
(126, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:15:02'),
(127, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:15:20'),
(128, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:15:24'),
(129, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:15:42'),
(130, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:15:45'),
(131, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:21:46'),
(132, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:21:49'),
(133, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:21:52'),
(134, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:21:55'),
(135, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:21:58'),
(136, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:22:01'),
(137, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:22:04'),
(138, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:22:07'),
(139, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:22:10'),
(140, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:22:13'),
(141, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:27:22'),
(142, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:27:26'),
(143, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:27:29'),
(144, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:27:32'),
(145, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:27:35'),
(146, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:27:38'),
(147, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:27:41'),
(148, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:27:44'),
(149, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:27:47'),
(150, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:27:50'),
(151, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:30:21'),
(152, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:30:24'),
(153, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:30:27'),
(154, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:30:30'),
(155, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:30:33'),
(156, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:30:36'),
(157, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:30:39'),
(158, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:30:42'),
(159, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:30:45'),
(160, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:30:48'),
(161, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:33:55'),
(162, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:33:58'),
(163, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:34:01'),
(164, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:34:04'),
(165, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:34:07'),
(166, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:34:10'),
(167, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:34:13'),
(168, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:34:16'),
(169, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:34:19'),
(170, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-09 04:34:22'),
(171, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 01:51:34'),
(172, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 01:51:37'),
(173, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 01:51:40'),
(174, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 01:51:44'),
(175, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 01:51:47'),
(176, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 01:51:50'),
(177, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 01:51:53'),
(178, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 01:51:56'),
(179, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 01:51:59'),
(180, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 01:52:02'),
(181, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 02:20:57'),
(182, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 02:21:00'),
(183, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 02:21:03'),
(184, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 02:21:06'),
(185, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 02:21:09'),
(186, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 02:21:12'),
(187, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 02:21:15'),
(188, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 02:21:18'),
(189, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 02:21:21'),
(190, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 02:21:24'),
(191, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 02:24:36'),
(192, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 02:24:39'),
(193, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 02:24:42'),
(194, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 02:24:45'),
(195, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 02:24:48'),
(196, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 02:24:51'),
(197, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 02:24:55'),
(198, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 02:24:58'),
(199, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 02:25:01'),
(200, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 02:25:04'),
(201, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 02:55:04'),
(202, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 02:55:07'),
(203, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 02:55:10'),
(204, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 02:55:13'),
(205, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 02:55:17'),
(206, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 02:55:20'),
(207, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 02:55:23'),
(208, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 02:55:26'),
(209, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 02:55:29'),
(210, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 02:55:32'),
(211, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:02:08'),
(212, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:02:11'),
(213, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:02:14'),
(214, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:02:17'),
(215, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:02:20'),
(216, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:02:23'),
(217, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:02:26'),
(218, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:02:29'),
(219, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:02:32'),
(220, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:02:35'),
(221, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:02:52'),
(222, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:02:55'),
(223, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:02:58'),
(224, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:03:01'),
(225, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:03:04'),
(226, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:03:07'),
(227, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:03:10'),
(228, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:03:13'),
(229, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:03:16'),
(230, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:03:19'),
(231, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:10:12'),
(232, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:10:15'),
(233, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:10:18'),
(234, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:10:21'),
(235, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:10:24'),
(236, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:10:27'),
(237, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:10:30'),
(238, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:10:33'),
(239, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:10:36'),
(240, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:10:39'),
(241, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:11:32'),
(242, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:11:35'),
(243, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:11:38'),
(244, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:11:41'),
(245, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:11:44'),
(246, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:11:47'),
(247, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:11:50'),
(248, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:11:53'),
(249, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:11:56'),
(250, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:11:59'),
(251, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:19:03'),
(252, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:19:06'),
(253, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:19:09'),
(254, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:19:12'),
(255, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:19:15'),
(256, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:19:18'),
(257, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:19:21'),
(258, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:19:25'),
(259, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:19:28'),
(260, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:19:31'),
(261, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:31:21'),
(262, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:31:24'),
(263, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:31:27'),
(264, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:31:30'),
(265, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:31:33'),
(266, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:31:36'),
(267, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:31:39'),
(268, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:31:42'),
(269, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:31:45'),
(270, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 03:31:48'),
(271, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 16:46:35'),
(272, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 16:46:38'),
(273, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 16:46:41'),
(274, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 16:46:44'),
(275, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 16:46:47'),
(276, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 16:46:50'),
(277, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 16:46:54'),
(278, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 16:46:57'),
(279, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 16:47:00'),
(280, 'INFO', 'Recebimento de dados do ESP OK.', '127.0.0.1', NULL, '2025-11-11 16:47:03'),
(281, 'INFO', 'Login bem-sucedido do usuário \"gui\".', '127.0.0.1', NULL, '2025-11-13 15:52:08'),
(282, 'ERRO', 'Falha ao cadastrar usuário: motivo desconhecido', '127.0.0.1', NULL, '2025-11-13 15:52:42'),
(283, 'INFO', 'Admin \"gui\" cadastrou novo usuário \"bia\" com perfil \"admin\".', '127.0.0.1', NULL, '2025-11-13 15:52:42'),
(284, 'INFO', 'Login bem-sucedido do usuário \"gui\".', '127.0.0.1', NULL, '2025-11-13 16:08:26'),
(285, 'INFO', 'Usuário \"gui\" enviou setpoint = (sem valor).', '127.0.0.1', NULL, '2025-11-13 16:08:44'),
(286, 'ERRO', 'Falha ao cadastrar usuário: motivo desconhecido', '127.0.0.1', NULL, '2025-11-13 16:09:18'),
(287, 'INFO', 'Admin \"gui\" cadastrou novo usuário \"pri\" com perfil \"user\".', '127.0.0.1', NULL, '2025-11-13 16:09:18'),
(288, 'ERRO', 'Tentativa de login falhou para o usuário \"gui\".', '127.0.0.1', NULL, '2025-11-13 16:10:34'),
(289, 'INFO', 'Login bem-sucedido do usuário \"gui\".', '127.0.0.1', NULL, '2025-11-13 16:10:41'),
(290, 'INFO', 'Login bem-sucedido do usuário \"gui\".', '127.0.0.1', NULL, '2025-11-13 16:23:26'),
(291, 'ERRO', 'Falha ao cadastrar usuário: motivo desconhecido', '127.0.0.1', NULL, '2025-11-13 16:23:44'),
(292, 'INFO', 'Admin \"gui\" cadastrou novo usuário \"bia1\" com perfil \"user\".', '127.0.0.1', NULL, '2025-11-13 16:23:44'),
(293, 'INFO', 'Login bem-sucedido do usuário \"gui\".', '127.0.0.1', NULL, '2025-11-13 16:24:56'),
(294, 'INFO', 'Admin \"gui\" cadastrou novo usuário \"bia3\" com perfil \"admin\".', '127.0.0.1', NULL, '2025-11-13 16:25:11'),
(295, 'INFO', 'Usuário \"gui\" enviou setpoint = (sem valor).', '127.0.0.1', NULL, '2025-11-13 16:30:43'),
(296, 'INFO', 'Usuário \"desconhecido\" enviou setpoint = (sem valor).', '127.0.0.1', NULL, '2025-11-13 16:40:56'),
(297, 'INFO', 'Usuário \"gui\" enviou setpoint = (sem valor).', '127.0.0.1', NULL, '2025-11-13 16:45:39'),
(298, 'INFO', 'Login bem-sucedido do usuário \"gui\".', '127.0.0.1', NULL, '2025-11-13 16:53:11'),
(299, 'INFO', 'Login bem-sucedido do usuário \"teste2\".', '127.0.0.1', NULL, '2025-11-13 16:55:45'),
(300, 'INFO', 'Login bem-sucedido do usuário \"gui\".', '127.0.0.1', NULL, '2025-11-13 17:08:45'),
(301, 'INFO', 'Login bem-sucedido do usuário \"gui\".', '127.0.0.1', NULL, '2025-11-13 17:11:22'),
(302, 'INFO', 'Login bem-sucedido do usuário \"gui\".', '127.0.0.1', NULL, '2025-11-13 17:13:52'),
(303, 'INFO', 'Login bem-sucedido do usuário \"gui\".', '127.0.0.1', NULL, '2025-11-13 17:15:57'),
(304, 'INFO', 'Usuário \"gui\" enviou setpoint = (sem valor).', '127.0.0.1', NULL, '2025-11-13 17:18:08'),
(305, 'INFO', 'Login bem-sucedido do usuário \"gui\".', '127.0.0.1', NULL, '2025-11-13 17:46:15'),
(306, 'INFO', 'Login bem-sucedido do usuário \"gui\".', '127.0.0.1', NULL, '2025-11-13 18:02:50'),
(307, 'INFO', 'Login bem-sucedido do usuário \"gui\".', '127.0.0.1', NULL, '2025-11-13 21:02:35'),
(308, 'INFO', 'Login bem-sucedido do usuário \"gui\".', '127.0.0.1', NULL, '2025-11-13 22:08:31'),
(309, 'INFO', 'Admin \"gui\" cadastrou novo usuário \"biaaa\" com perfil \"user\".', '127.0.0.1', NULL, '2025-11-13 22:23:07'),
(310, 'INFO', 'Admin \"gui\" cadastrou novo usuário \"bia2\" com perfil \"user\".', '127.0.0.1', NULL, '2025-11-13 23:35:22'),
(311, 'INFO', 'Login bem-sucedido do usuário \"gui\".', '127.0.0.1', NULL, '2025-11-14 00:42:49'),
(312, 'INFO', 'Login bem-sucedido do usuário \"teste2\".', '127.0.0.1', NULL, '2025-11-14 00:46:43'),
(313, 'INFO', 'Login bem-sucedido do usuário \"gui\".', '127.0.0.1', NULL, '2025-11-14 00:46:51'),
(314, 'INFO', 'Login bem-sucedido do usuário \"gui\".', '127.0.0.1', NULL, '2025-11-14 01:24:38'),
(315, 'ERRO', 'Tentativa de login falhou para o usuário \"gui\".', '127.0.0.1', NULL, '2025-11-14 22:38:57'),
(316, 'INFO', 'Login bem-sucedido do usuário \"gui\".', '127.0.0.1', NULL, '2025-11-14 23:03:09'),
(317, 'INFO', 'Usuário \"gui\" enviou setpoint = 25.5.', '127.0.0.1', NULL, '2025-11-14 23:26:33');

-- --------------------------------------------------------

--
-- Estrutura para tabela `medicoes`
--

CREATE TABLE `medicoes` (
  `id` bigint(20) NOT NULL,
  `tanque_id` int(11) NOT NULL,
  `device_id` varchar(100) DEFAULT NULL,
  `value_encrypted` varchar(255) NOT NULL,
  `ts` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `medicoes`
--

INSERT INTO `medicoes` (`id`, `tanque_id`, `device_id`, `value_encrypted`, `ts`, `created_at`) VALUES
(181, 1, NULL, 'U2FsdGVkX19uHLHiqch4bgzV70bYYClouXmMIhSA5Q0=', '2025-11-11 00:11:33', '2025-11-11 03:11:35'),
(182, 2, NULL, 'U2FsdGVkX1/EOG3fo5KEFEz0zKkcUK6fFAzdmPB5UIQ=', '2025-11-11 00:11:33', '2025-11-11 03:11:35'),
(183, 3, NULL, 'U2FsdGVkX1+eCz6u0Wbz+/GRaJkRDlw1FykmpwFGwTo=', '2025-11-11 00:11:33', '2025-11-11 03:11:35'),
(184, 1, NULL, 'U2FsdGVkX18s0NgGVcYGYtKA3nG400Kk6SFqdv64pjE=', '2025-11-11 00:11:39', '2025-11-11 03:11:41'),
(185, 2, NULL, 'U2FsdGVkX181hGglxUbXnOnZmqQagTltjF5QUG9aa5o=', '2025-11-11 00:11:39', '2025-11-11 03:11:41'),
(186, 3, NULL, 'U2FsdGVkX1/G4yY9tlmvjGecfORJGVO1QEQkGX0mUeg=', '2025-11-11 00:11:39', '2025-11-11 03:11:41'),
(187, 1, NULL, 'U2FsdGVkX1/DFvYWt5tcZOAu/UzM74GAkvDOHnFlqa8=', '2025-11-11 00:11:45', '2025-11-11 03:11:47'),
(188, 2, NULL, 'U2FsdGVkX1+RZiCgMpeeIAk6E1sqSLQJOBIpwVuQNYI=', '2025-11-11 00:11:45', '2025-11-11 03:11:47'),
(189, 3, NULL, 'U2FsdGVkX19tU8hZaBXrRdzlVFEav6L3dP2fpEJ/9UE=', '2025-11-11 00:11:45', '2025-11-11 03:11:47'),
(190, 1, NULL, 'U2FsdGVkX1+l+7KCnCIr0J0tHKvUnkYUZNP5kTYwBM4=', '2025-11-11 00:11:51', '2025-11-11 03:11:53'),
(191, 2, NULL, 'U2FsdGVkX1/DeeLnokbsBO6Kf59NTpr5mpBrhC1K23U=', '2025-11-11 00:11:51', '2025-11-11 03:11:53'),
(192, 3, NULL, 'U2FsdGVkX19icacGQz6DfHYyOfkN0SVQuxq+X1kaHa0=', '2025-11-11 00:11:51', '2025-11-11 03:11:53'),
(193, 1, NULL, 'U2FsdGVkX1+9Q4bqzOkfkXeHg0WKZzdRVFl30zELyDc=', '2025-11-11 00:11:57', '2025-11-11 03:11:59'),
(194, 2, NULL, 'U2FsdGVkX1+4BJBmbeDrxbqAeLyGmN3D/6hqc3a30+Y=', '2025-11-11 00:11:57', '2025-11-11 03:11:59'),
(195, 3, NULL, 'U2FsdGVkX1+jYgBws0ccoUEJWV4lEZJHTqMtarkrnbc=', '2025-11-11 00:11:57', '2025-11-11 03:11:59'),
(196, 1, NULL, 'U2FsdGVkX1843Xmcu9pmtgtOzWZoOSM53nSp10uG4kc=', '2025-11-11 00:19:04', '2025-11-11 03:19:06'),
(197, 2, NULL, 'U2FsdGVkX1+4SW8OsoFytJ6sdjtl08FfN9RPdlLoRx0=', '2025-11-11 00:19:04', '2025-11-11 03:19:06'),
(198, 3, NULL, 'U2FsdGVkX19Uj0b8PIZdo/KypNxTbj/40PgZ1HI5eqs=', '2025-11-11 00:19:04', '2025-11-11 03:19:06'),
(199, 1, NULL, 'U2FsdGVkX18/BFBhT2yr9W2gBvfs8gMZE2OwNe6y7Wk=', '2025-11-11 00:19:10', '2025-11-11 03:19:12'),
(200, 2, NULL, 'U2FsdGVkX187SboUwgc8MQKB+vumIraQm8jgs89xNUQ=', '2025-11-11 00:19:10', '2025-11-11 03:19:12'),
(201, 3, NULL, 'U2FsdGVkX19wt+agqfk6RROR5qEXQAuDYyTM0GIkSKA=', '2025-11-11 00:19:10', '2025-11-11 03:19:12'),
(202, 1, NULL, 'U2FsdGVkX19IV8E4LcRdJsB86M8YITKdIiAxqr3QWWw=', '2025-11-11 00:19:16', '2025-11-11 03:19:18'),
(203, 2, NULL, 'U2FsdGVkX19hu533wy8hRjQzVAhCUZlwMbIezZ/jRK8=', '2025-11-11 00:19:16', '2025-11-11 03:19:18'),
(204, 3, NULL, 'U2FsdGVkX1/HBXQ2Mp7zsAXSrsa2SNwNBqbKbdGXce4=', '2025-11-11 00:19:16', '2025-11-11 03:19:18'),
(205, 1, NULL, 'U2FsdGVkX180CIR5Zn9M6RPhBgC3pKqKiStDRoCQYv8=', '2025-11-11 00:19:22', '2025-11-11 03:19:25'),
(206, 2, NULL, 'U2FsdGVkX188b98Rr5uI/Dd+Buq9Ulb1Vy0HmgdnC44=', '2025-11-11 00:19:22', '2025-11-11 03:19:25'),
(207, 3, NULL, 'U2FsdGVkX18tTxoyZ5VcxH0TPejHZz43HCV8DFbYytA=', '2025-11-11 00:19:22', '2025-11-11 03:19:25'),
(208, 1, NULL, 'U2FsdGVkX19Sc1kJxoT5z+IKwTISdb/GPjTVyh8ckZw=', '2025-11-11 00:19:29', '2025-11-11 03:19:31'),
(209, 2, NULL, 'U2FsdGVkX19lXZ1kz70Z04ZOptM0Z32q36OiBu+ATT0=', '2025-11-11 00:19:29', '2025-11-11 03:19:31'),
(210, 3, NULL, 'U2FsdGVkX1+zhxl3O0F3/nGpl/wVqhDbAOCSLc3HKx0=', '2025-11-11 00:19:29', '2025-11-11 03:19:31'),
(211, 1, NULL, 'U2FsdGVkX1+f3uYgPI7EEg0CHlPX+l9Z8upo+jZr4EA=', '2025-11-11 00:31:22', '2025-11-11 03:31:24'),
(212, 2, NULL, 'U2FsdGVkX1+x9Tb6UU9D98s/5WenUIme6O4rv20AQeo=', '2025-11-11 00:31:22', '2025-11-11 03:31:24'),
(213, 3, NULL, 'U2FsdGVkX19rM7Oynazg6uEZwEpOU4g4mX3ACLqHzU8=', '2025-11-11 00:31:22', '2025-11-11 03:31:24'),
(214, 1, NULL, 'U2FsdGVkX1+jdyzUZ7L9ltEoh3rsDjCHABD4k57OkKo=', '2025-11-11 00:31:28', '2025-11-11 03:31:30'),
(215, 2, NULL, 'U2FsdGVkX186vAiHUCqGYN+WeLA7lrZyt0FeG0f2Xsc=', '2025-11-11 00:31:28', '2025-11-11 03:31:30'),
(216, 3, NULL, 'U2FsdGVkX19CDfcBw7pY7NqsGWEIhTzH4DPF0mym474=', '2025-11-11 00:31:28', '2025-11-11 03:31:30'),
(217, 1, NULL, 'U2FsdGVkX19QMb1jToiIF2Pr31CE/NTQ1FCIS24dJXQ=', '2025-11-11 00:31:34', '2025-11-11 03:31:36'),
(218, 2, NULL, 'U2FsdGVkX19bCx2rYDvhU82VvEeIBY0+ji1hP99XQfo=', '2025-11-11 00:31:34', '2025-11-11 03:31:36'),
(219, 3, NULL, 'U2FsdGVkX18sku0Zl/5HuEBfe0zexC/8g5vOBayrnBc=', '2025-11-11 00:31:34', '2025-11-11 03:31:36'),
(220, 1, NULL, 'U2FsdGVkX1/Glr/RuijEu18sb6eSpYAaJxyP6y1NNCk=', '2025-11-11 00:31:40', '2025-11-11 03:31:42'),
(221, 2, NULL, 'U2FsdGVkX19FGWoVR5qnopjx231F6f3s0AgUBqeGGGs=', '2025-11-11 00:31:40', '2025-11-11 03:31:42'),
(222, 3, NULL, 'U2FsdGVkX1+f7OmqtYrxvLjWhX/W0qOa8uEC4vUSuMA=', '2025-11-11 00:31:40', '2025-11-11 03:31:42'),
(223, 1, NULL, 'U2FsdGVkX19Q4eStbkZR/hTdVJjuo+YRqenwwbvQ7ys=', '2025-11-11 00:31:46', '2025-11-11 03:31:48'),
(224, 2, NULL, 'U2FsdGVkX19OZAolPe0bGRZlL1SfPrMd1qVCBvHVci4=', '2025-11-11 00:31:46', '2025-11-11 03:31:48'),
(225, 3, NULL, 'U2FsdGVkX1/PNciaWeE+r/BBXyA+egANN733sJPORfQ=', '2025-11-11 00:31:46', '2025-11-11 03:31:48'),
(226, 1, NULL, 'U2FsdGVkX1+Ut18jpzGxxt9sUViF0asGQdXA94ojSMk=', '2025-11-11 13:46:36', '2025-11-11 16:46:38'),
(227, 2, NULL, 'U2FsdGVkX1/NOs10pls7zBFtMMswdHjA7xlR38qYBss=', '2025-11-11 13:46:36', '2025-11-11 16:46:38'),
(228, 3, NULL, 'U2FsdGVkX1+yo2c1ok2SE8CSzO0QY3GJnqMmusqBxao=', '2025-11-11 13:46:36', '2025-11-11 16:46:38'),
(229, 1, NULL, 'U2FsdGVkX1+qOKRuykzyAvCgpgaDVQuOZVFi2as0JSo=', '2025-11-11 13:46:42', '2025-11-11 16:46:44'),
(230, 2, NULL, 'U2FsdGVkX19AJYHeO/vLVWDIzsAf/r1kxEgbc3jqu3M=', '2025-11-11 13:46:42', '2025-11-11 16:46:44'),
(231, 3, NULL, 'U2FsdGVkX19DaMNlnKw1vwe/64fMd38kHViPebmeCc0=', '2025-11-11 13:46:42', '2025-11-11 16:46:44'),
(232, 1, NULL, 'U2FsdGVkX1/HIik8pcofuo56kAbEFKELZEkuVVxO5p8=', '2025-11-11 13:46:48', '2025-11-11 16:46:50'),
(233, 2, NULL, 'U2FsdGVkX1/Ngj6KP912JbDaDxEb+bZ3c7B8rFI+LkY=', '2025-11-11 13:46:48', '2025-11-11 16:46:50'),
(234, 3, NULL, 'U2FsdGVkX180sZi7b+woGlsQsqIiLMK4uUfy9RMH/yo=', '2025-11-11 13:46:48', '2025-11-11 16:46:50'),
(235, 1, NULL, 'U2FsdGVkX19guls+OM6UG9tfHSO0Pdf+SoKHP/d62rE=', '2025-11-11 13:46:55', '2025-11-11 16:46:57'),
(236, 2, NULL, 'U2FsdGVkX1/CtCkmoMK/ToQaWepqDY6O1+UCbpKQJIg=', '2025-11-11 13:46:55', '2025-11-11 16:46:57'),
(237, 3, NULL, 'U2FsdGVkX19YFrR+Q4X9w3iRH2Li0kFzEHLqjfpJquU=', '2025-11-11 13:46:55', '2025-11-11 16:46:57'),
(238, 1, NULL, 'U2FsdGVkX19q85vBq3GQZxN2qmODzJ7cjjtOxz95/F0=', '2025-11-11 13:47:01', '2025-11-11 16:47:03'),
(239, 2, NULL, 'U2FsdGVkX1+ou1ZyOBnUcI7IQl1lVS4cCcKHXrAeHdg=', '2025-11-11 13:47:01', '2025-11-11 16:47:03'),
(240, 3, NULL, 'U2FsdGVkX19VOwLTVFEEykmw3d+70rNiM/7lhwAI06k=', '2025-11-11 13:47:01', '2025-11-11 16:47:03'),
(241, 1, NULL, '$2a$10$ELbhYE9M7gqyXnqT5Jn7xuRNVvH.6y9tTxKk2qQSqqVqClnkr9Oa6', '2025-11-13 10:28:59', '2025-11-13 13:29:02'),
(242, 2, NULL, '$2a$10$GZE7sOEY.h6UVKVWzlJhn.8iOgZEcmFgIiPSo/cvbs4t34x9RC/Ky', '2025-11-13 10:28:59', '2025-11-13 13:29:02'),
(243, 3, NULL, '$2a$10$4bggSeeQpo1XkADC8aGaBeZX0cBpyG5sxWFk8OaPGRKjGWTA9Z8KG', '2025-11-13 10:28:59', '2025-11-13 13:29:02'),
(244, 1, NULL, '$2a$10$98NGUcHRPmFPxBXgsl20n.6a0ozqlwJqLEcIjTCXQouLb3NceGcRO', '2025-11-13 10:29:06', '2025-11-13 13:29:09'),
(245, 2, NULL, '$2a$10$DiQK0hrmANtBY2WPDBh8kuZYSNpWfXsrL/MaN9zwo6dWZLnA7pIhS', '2025-11-13 10:29:06', '2025-11-13 13:29:09'),
(246, 3, NULL, '$2a$10$Ab/.r73T/MNnC7NUq3TdDu3/KZvK95eT4tXzs1mv/PGXD2RpuayIO', '2025-11-13 10:29:06', '2025-11-13 13:29:09'),
(247, 1, NULL, '$2a$10$xjxBOFvP7bWNhgVYERo0Oe6Mef.kH3sZDa2LnF2o2BlPema/PqEXu', '2025-11-13 10:29:13', '2025-11-13 13:29:16'),
(248, 2, NULL, '$2a$10$8iN.J1cRQpotgMZvbsU5JuTj1ZUatTfD7ilNggfa90qBCPCXXpdWG', '2025-11-13 10:29:13', '2025-11-13 13:29:16'),
(249, 3, NULL, '$2a$10$V9aubvhsdzqGLjhX9yO6quCnPcqkNSbRMAErzpchfnNzNU1onBrki', '2025-11-13 10:29:13', '2025-11-13 13:29:16'),
(250, 1, NULL, '$2a$10$XyPiqKh7fMvhswFOJiieGelkUUUfRAcElmUz45WExq2onvng9o6Z2', '2025-11-13 10:29:20', '2025-11-13 13:29:23'),
(251, 2, NULL, '$2a$10$Sn45lBbEgDZxqfCVIDY.LOl3mbBZ4ZJ2Ps25kIkMJBFYpbIaSmQqO', '2025-11-13 10:29:20', '2025-11-13 13:29:23'),
(252, 3, NULL, '$2a$10$HAd87O.IeBMftXgJu/FiDeUr8dS9447q0w0k88UdfPB1O8xsCdYai', '2025-11-13 10:29:20', '2025-11-13 13:29:23'),
(253, 1, NULL, '$2a$10$MkcaJHt4AiwOby4MlsIceeNlbTxPhnSDzIesWUkDQ5fn98wHc37W.', '2025-11-13 10:29:27', '2025-11-13 13:29:30'),
(254, 2, NULL, '$2a$10$6c8B/yE3lPq7AhonQEorDOmBJRdkQU3tBNdfBZWgmNUOb33gfRoFi', '2025-11-13 10:29:27', '2025-11-13 13:29:30'),
(255, 3, NULL, '$2a$10$KHqYZwXdWjDgEpz.V6aR/exL28gvw3YwQDQUo13N9ZuCsHB7DwalS', '2025-11-13 10:29:27', '2025-11-13 13:29:30'),
(256, 1, NULL, '$2a$10$lIa4StJDaS13f4jnbwlZvuMGqMblh1v8PEHQzuOUVvb1Np8NzvoNy', '2025-11-13 13:29:15', '2025-11-13 16:29:17'),
(257, 3, NULL, '$2a$10$dubi2miNWpmi89/dd5AeZ.JypSGfKS.V1XOzNceiW.0BtiGJnOHrK', '2025-11-13 13:29:15', '2025-11-13 16:29:17'),
(258, 2, NULL, '$2a$10$D7rBHs5MjPmg0tQ/5rPxTOYZa2M0PnLJP.m.AICVNqDkBxulzwnsm', '2025-11-13 13:29:15', '2025-11-13 16:29:17'),
(259, 1, NULL, '$2a$10$fRy0uNvI5P8tD8/MwdrbFe7oXn/06y.Zsn5xZEmAnQ8cZh0VvBzTK', '2025-11-13 13:29:21', '2025-11-13 16:29:24'),
(260, 2, NULL, '$2a$10$le8Qdl2DmDtVe55pq1lm9ObKbLPGBg11A0jUppMVsyL4pO4cha9pW', '2025-11-13 13:29:21', '2025-11-13 16:29:24'),
(261, 3, NULL, '$2a$10$Xp3we3QBHSL3.YK1csnImeg6ZfBjG9WB.5Fz3daYpSFRCU4BVLTo2', '2025-11-13 13:29:21', '2025-11-13 16:29:24'),
(262, 1, NULL, '$2a$10$IJM/Aq5Z7/2wwzktYWs2ReX7LWEvANAyYVeaTH.q4HJAGh6y242M.', '2025-11-13 13:29:28', '2025-11-13 16:29:30'),
(263, 2, NULL, '$2a$10$PlQLQqw2WVnMno0MxvhgJO17/NYN050ccpcLI6H3hiVRHlvlU52ae', '2025-11-13 13:29:28', '2025-11-13 16:29:30'),
(264, 3, NULL, '$2a$10$53PhaFKIC6h2a9vFVSl0XunM.M7gKBC.xY88gi6r0b8s3Qg3kSAXC', '2025-11-13 13:29:28', '2025-11-13 16:29:30'),
(265, 1, NULL, '$2a$10$M1UQqTdL3PugZwLYbySM4.AJ99t1T9rJ/cN69iTh0H5R1XCpxbcUi', '2025-11-13 13:29:34', '2025-11-13 16:29:37'),
(266, 2, NULL, '$2a$10$SYIWm/DNH0V/Z.Pgvsviru3mxZ.RFE1YW7/heoOUlc2.YKwj1DTFe', '2025-11-13 13:29:34', '2025-11-13 16:29:37'),
(267, 3, NULL, '$2a$10$RU5gNsZZhTeDKer0J.jdW.y1CAA5dMf1YIaNep50F4oAsUqwCyJ0C', '2025-11-13 13:29:34', '2025-11-13 16:29:37'),
(268, 1, NULL, '$2a$10$8pjfjHjpDwC2NU/NVADA1OCDQfIObRIX8bSaVg2.rlO3mczF42zHW', '2025-11-13 13:29:41', '2025-11-13 16:29:43'),
(269, 2, NULL, '$2a$10$j06pUmOqtJXTNhwPVLkF3eWg8m5D6gEEW364PIH7jr/v3O.GiUOb.', '2025-11-13 13:29:41', '2025-11-13 16:29:43'),
(270, 3, NULL, '$2a$10$prCuHdcgshw.UsMnxlrl3.OQb/qD7Q.D0Yh6ycSdHVVMhTzZ0JziW', '2025-11-13 13:29:41', '2025-11-13 16:29:43'),
(271, 1, NULL, 'U2FsdGVkX1+3FpRgayFdFW6vpu64fKFQRf8BBdtH4N0=', '2025-11-13 14:18:30', '2025-11-13 17:18:32'),
(272, 2, NULL, 'U2FsdGVkX18wVrtGsgX9GBBBis7pCvhVVbnoSFQLgdk=', '2025-11-13 14:18:30', '2025-11-13 17:18:32'),
(273, 3, NULL, 'U2FsdGVkX184OpI7U4YYn126P87cBWjm6HHd8bLUlZw=', '2025-11-13 14:18:30', '2025-11-13 17:18:32'),
(274, 1, NULL, 'U2FsdGVkX187ksnyl26w1zAZgV2ZTsf4gxmjC+QziA0=', '2025-11-13 14:18:36', '2025-11-13 17:18:38'),
(275, 2, NULL, 'U2FsdGVkX19qm1zcq/rbClpeWPtI6xEClJly3tw2BSs=', '2025-11-13 14:18:36', '2025-11-13 17:18:38'),
(276, 3, NULL, 'U2FsdGVkX19nqJStaIznJJs35MBxmCD4Ie3hntv29Fo=', '2025-11-13 14:18:36', '2025-11-13 17:18:38'),
(277, 1, NULL, 'U2FsdGVkX1+rfctSoqRkPQ4L4ZvlrqQ+cZZhu0Aq/PU=', '2025-11-13 14:18:42', '2025-11-13 17:18:44'),
(278, 2, NULL, 'U2FsdGVkX19RSen/l8L/wcVC0zD5cEduwNqbc8hF+PA=', '2025-11-13 14:18:42', '2025-11-13 17:18:44'),
(279, 3, NULL, 'U2FsdGVkX1/IGWZaUlfQ6TYVCEaLXdbvk9jd5Wp3XAw=', '2025-11-13 14:18:42', '2025-11-13 17:18:44'),
(280, 1, NULL, 'U2FsdGVkX19XioToMhMpGQ7YfbZIPlLjdrzt2coAslo=', '2025-11-13 14:18:48', '2025-11-13 17:18:50'),
(281, 2, NULL, 'U2FsdGVkX1+l6vFnUVL0PQQ7yV1K6L2N+4HIJbeoliQ=', '2025-11-13 14:18:48', '2025-11-13 17:18:50'),
(282, 3, NULL, 'U2FsdGVkX19fHO3IaAFaE5Y9PqWpWw8PgN+VpL13Us0=', '2025-11-13 14:18:48', '2025-11-13 17:18:50'),
(283, 1, NULL, 'U2FsdGVkX1/BA9XN0QcVoGt6Y+b2nroP/MWzlq81EDA=', '2025-11-13 14:18:54', '2025-11-13 17:18:56'),
(284, 2, NULL, 'U2FsdGVkX1/B/J0yy2C/klNl1XpIofXw18gbqmr+ga4=', '2025-11-13 14:18:54', '2025-11-13 17:18:56'),
(285, 3, NULL, 'U2FsdGVkX19UbPEnri5tJgZckD24n0SnzYFkCaPk6SQ=', '2025-11-13 14:18:54', '2025-11-13 17:18:56');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tanques`
--

CREATE TABLE `tanques` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tanques`
--

INSERT INTO `tanques` (`id`, `nome`, `descricao`, `created_at`) VALUES
(1, 'Tanque 1', 'Tanque de controle principal', '2025-11-08 14:28:07'),
(2, 'Tanque 2', 'Tanque intermediário', '2025-11-08 14:28:07'),
(3, 'Tanque 3', 'Tanque auxiliar', '2025-11-08 14:28:07');

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `username`, `password_hash`, `role`, `created_at`) VALUES
(5, 'gui', '$2a$10$l2AhGYCdmnatorCZ/zki0.IMINS2azQoAzJqYSeS6k8GQtJHbHzEu', 'admin', '2025-11-11 18:35:24'),
(6, 'teste', 'e10adc3949ba59abbe56e057f20f883e', 'user', '2025-11-12 19:48:57'),
(9, 'biaa', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '2025-11-12 19:52:08'),
(16, 'teste2', '$2a$10$qiI4PeTRCc0eICGGxIllB.MsfHisrMUUA5c9mrv0AHFYDV.h6HVdG', 'user', '2025-11-13 01:54:31'),
(17, 'bia', '$2a$10$Unb8ttmaHVArFwwbqrS8PO1tAXqVdQA7cEZfKaTOwI6100BcbieZq', 'admin', '2025-11-13 15:52:42'),
(18, 'pri', '$2a$10$fS8Sj1yuj6oQedofvz4nEucfwOATnoo/n2j..ygeYmHJxGVPCm0YO', 'user', '2025-11-13 16:09:18'),
(19, 'bia1', '$2a$10$n4GgCjIEBdHiTKqj9RkcM.H2GUEZBWHSj8klm.tGO4HycVXg62TFy', 'user', '2025-11-13 16:23:44'),
(20, 'bia3', '$2a$10$o4mzEe4uXp4FxCSNg2hPv.bxhauAdZ4fUpfa.brOPAy9N4DEhMvf6', 'admin', '2025-11-13 16:25:11'),
(21, 'biaaa', '$2a$10$tgeNlx/6Xi9i1QbfgcA6CuvnxoPCArRNamtyGMzQ2mpT2S9xgvTga', 'user', '2025-11-13 22:23:07'),
(22, 'bia2', '$2a$10$GFaOLns0iSMQBkR4Leq.fODTuCZ0gAgly/3xNFmYela.6VTJv9iK2', 'user', '2025-11-13 23:35:22');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `commands`
--
ALTER TABLE `commands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Índices de tabela `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `medicoes`
--
ALTER TABLE `medicoes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tanque_ts` (`tanque_id`,`ts`);

--
-- Índices de tabela `tanques`
--
ALTER TABLE `tanques`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `commands`
--
ALTER TABLE `commands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de tabela `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `logs`
--
ALTER TABLE `logs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=318;

--
-- AUTO_INCREMENT de tabela `medicoes`
--
ALTER TABLE `medicoes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=286;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `commands`
--
ALTER TABLE `commands`
  ADD CONSTRAINT `commands_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Restrições para tabelas `medicoes`
--
ALTER TABLE `medicoes`
  ADD CONSTRAINT `medicoes_ibfk_1` FOREIGN KEY (`tanque_id`) REFERENCES `tanques` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
