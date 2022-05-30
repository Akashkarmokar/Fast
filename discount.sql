-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2022 at 02:24 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `discount`
--

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `recever_id` int(11) NOT NULL,
  `inbox_key` char(36) CHARACTER SET latin1 NOT NULL,
  `msg` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL,
  `files` text CHARACTER SET latin1 DEFAULT NULL,
  `meta_data` text DEFAULT NULL,
  `is_seen` int(11) NOT NULL DEFAULT 0,
  `is_deleted` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`id`, `user_id`, `recever_id`, `inbox_key`, `msg`, `files`, `meta_data`, `is_seen`, `is_deleted`, `created_at`, `updated_at`) VALUES
(26, 22305, 22308, '2230522308', 'Hello Bipro', NULL, NULL, 1, 0, '2022-03-29 08:36:02', '2022-02-26 11:55:48'),
(27, 22305, 22308, '2230522308', 'Hello Bipro', NULL, NULL, 1, 0, '2022-03-29 08:36:02', '2022-02-26 11:56:47'),
(28, 22308, 22305, '2230522308', 'Hello Bake', NULL, NULL, 1, 0, '2022-03-29 08:36:02', '2022-02-26 11:57:37'),
(29, 22308, 22305, '2230522308', 'How are you Bake', NULL, NULL, 1, 0, '2022-03-29 08:36:02', '2022-02-26 11:58:06'),
(30, 22305, 22308, '2230522308', 'I am Fine. How are you Bipro?', NULL, NULL, 1, 0, '2022-03-29 08:36:02', '2022-02-26 11:58:55'),
(31, 22305, 22308, '2230522308', 'Bipro', NULL, NULL, 1, 0, '2022-03-29 08:36:02', '2022-02-26 12:00:37'),
(32, 22305, 22308, '2230522308', 'Hello Bipro', NULL, NULL, 1, 0, '2022-03-29 08:36:02', '2022-02-26 12:01:37'),
(33, 22305, 22308, '2230522308', 'hi', NULL, NULL, 1, 0, '2022-03-29 08:36:02', '2022-02-26 12:02:00'),
(34, 22305, 22308, '2230522308', '1', NULL, NULL, 1, 0, '2022-03-29 08:36:02', '2022-02-26 12:05:14'),
(35, 22305, 22308, '2230522308', '2', NULL, NULL, 1, 0, '2022-03-29 08:36:02', '2022-02-26 12:05:37'),
(36, 22308, 22305, '2230522308', 'A', NULL, NULL, 1, 0, '2022-03-29 08:36:02', '2022-02-26 12:06:12'),
(37, 22305, 22308, '2230522308', 'Hi Bipro', NULL, NULL, 1, 0, '2022-03-29 08:36:02', '2022-02-26 12:07:11'),
(38, 22305, 22308, '2230522308', 'Hi Bipro', NULL, NULL, 1, 0, '2022-03-29 08:36:02', '2022-02-26 12:08:55'),
(39, 22305, 22308, '2230522308', 'Hello', NULL, NULL, 1, 0, '2022-03-29 08:36:02', '2022-02-26 12:09:17'),
(40, 22305, 22308, '2230522308', 'Bipro Hi', NULL, NULL, 1, 0, '2022-03-29 08:36:02', '2022-02-26 12:17:15'),
(41, 22305, 22308, '2230522308', 'hello', NULL, NULL, 1, 0, '2022-03-29 08:36:02', '2022-02-26 12:17:30'),
(42, 22308, 22305, '2230522308', 'From Bipro', NULL, NULL, 1, 0, '2022-03-29 08:36:02', '2022-02-27 04:26:01'),
(43, 22308, 22305, '2230522308', 'From Bipro', NULL, NULL, 1, 0, '2022-03-29 08:36:02', '2022-02-27 04:27:42'),
(44, 22308, 22305, '2230522308', 'B', NULL, NULL, 1, 0, '2022-03-29 08:36:02', '2022-02-27 04:28:09'),
(45, 22305, 22308, '2230522308', 'I am Bake', NULL, NULL, 1, 0, '2022-03-29 08:36:02', '2022-02-27 04:28:38'),
(46, 22308, 22305, '2230522308', 'Bake', NULL, NULL, 1, 0, '2022-03-29 08:36:02', '2022-02-27 04:50:48'),
(47, 22305, 22308, '2230522308', 'kkkkkkkk', NULL, NULL, 1, 0, '2022-03-29 08:36:02', '2022-02-27 05:06:41'),
(48, 22305, 22308, '2230522308', 'hello', NULL, NULL, 1, 0, '2022-03-29 08:36:02', '2022-02-27 05:45:39'),
(49, 22305, 22308, '2230522308', 'eghdggfdghdghdf', NULL, NULL, 1, 0, '2022-03-29 08:36:02', '2022-02-27 05:48:58'),
(50, 22308, 22305, '2230522308', 'hdfghdghf', NULL, NULL, 1, 0, '2022-03-29 08:36:02', '2022-02-27 05:49:04'),
(51, 22308, 22305, '2230522308', 'Hello BLake', NULL, NULL, 1, 0, '2022-03-29 08:36:02', '2022-02-27 09:08:07'),
(52, 22305, 22308, '2230522308', 'Hi Bipro', NULL, NULL, 1, 0, '2022-03-29 08:36:02', '2022-02-27 09:08:45'),
(53, 22305, 22308, '2230522308', 'Hi Bipor', NULL, NULL, 1, 0, '2022-03-29 08:36:02', '2022-02-27 09:09:52'),
(54, 22308, 22305, '2230522308', 'How are you??', NULL, NULL, 1, 0, '2022-03-29 08:36:02', '2022-02-27 09:10:15'),
(55, 22305, 22308, '2230522308', 'hello', NULL, NULL, 1, 0, '2022-03-29 08:36:02', '2022-02-27 09:11:46'),
(56, 22305, 22308, '2230522308', 'hii', NULL, NULL, 1, 0, '2022-03-29 08:36:02', '2022-02-27 09:12:03'),
(57, 22308, 22305, '2230522308', 'Hiii', NULL, NULL, 1, 0, '2022-03-29 08:36:02', '2022-02-27 09:12:08'),
(58, 22308, 22305, '2230522308', 'Hello Bake. The real-time conversation is working perfectly.....', NULL, NULL, 1, 0, '2022-03-29 08:36:02', '2022-02-27 12:39:15'),
(59, 22305, 22308, '2230522308', 'Hello', NULL, NULL, 1, 0, '2022-03-29 08:36:02', '2022-02-27 12:39:45'),
(60, 22305, 22308, '2230522308', 'hi', NULL, NULL, 1, 0, '2022-03-29 08:36:02', '2022-02-27 12:40:52'),
(61, 22308, 22305, '2230522308', 'Hello', NULL, NULL, 1, 0, '2022-03-29 08:36:02', '2022-02-27 12:41:15'),
(62, 22308, 22305, '2230522308', 'hello', NULL, NULL, 1, 0, '2022-03-29 08:36:02', '2022-02-27 12:41:43'),
(63, 22308, 22305, '2230522308', 'Hello Blake', NULL, NULL, 1, 0, '2022-03-29 08:36:02', '2022-02-28 04:51:02'),
(64, 22305, 22308, '2230522308', 'Hello', NULL, NULL, 1, 0, '2022-03-29 08:36:02', '2022-02-28 04:51:15'),
(65, 22305, 22308, '2230522308', 'Hello', NULL, NULL, 0, 0, '2022-03-29 08:36:02', '2022-02-28 17:27:44'),
(66, 22305, 22311, '2230522311', 'hi', NULL, NULL, 0, 0, '2022-05-12 09:45:38', '2022-05-12 09:45:38'),
(67, 22305, 22340, '2230522340', 'hello', NULL, NULL, 0, 0, '2022-05-12 09:45:47', '2022-05-12 09:45:47'),
(68, 22305, 22341, '2230522341', 'hello', NULL, NULL, 0, 0, '2022-05-14 09:45:35', '2022-05-14 09:45:35'),
(69, 22305, 22341, '2230522341', 'hi', NULL, NULL, 0, 0, '2022-05-14 10:06:46', '2022-05-14 10:06:46'),
(70, 22349, 22341, '2234122349', 'ddddddddddddddddddddddddddddddddddddddddddddddddddd', NULL, NULL, 0, 0, '2022-05-21 12:12:31', '2022-05-21 12:12:31'),
(71, 22349, 22341, '2234122349', 'ddddd', NULL, NULL, 0, 0, '2022-05-21 12:12:35', '2022-05-21 12:12:35'),
(72, 22305, 22353, '2230522353', 'jjjjjjj', NULL, NULL, 0, 0, '2022-05-26 10:38:34', '2022-05-26 10:38:34'),
(73, 22353, 22305, '2230522353', 'userOne to admin', NULL, NULL, 1, 0, '2022-05-29 08:30:46', '2022-05-26 10:38:34'),
(76, 22305, 22354, '2230522354', '28th May', NULL, NULL, 0, 0, '2022-05-29 06:45:06', '2022-05-29 06:45:06'),
(77, 22305, 22354, '2230522354', 'jkldsfa', NULL, NULL, 0, 0, '2022-05-29 06:53:46', '2022-05-29 06:53:46'),
(78, 22305, 22354, '2230522354', 'aaaaaa', NULL, NULL, 0, 0, '2022-05-29 07:11:20', '2022-05-29 07:11:20'),
(79, 22305, 22354, '2230522354', 'afaf\nafaf\nafaf', NULL, NULL, 0, 0, '2022-05-29 07:25:03', '2022-05-29 07:25:03'),
(80, 22305, 22354, '2230522354', 'adfafaf\naH\nHello World', NULL, NULL, 0, 0, '2022-05-29 07:25:46', '2022-05-29 07:25:46'),
(81, 22305, 22354, '2230522354', 'adafa\nafaf', NULL, NULL, 0, 0, '2022-05-29 07:40:13', '2022-05-29 07:40:13'),
(82, 22305, 22354, '2230522354', 'dddd', NULL, NULL, 0, 0, '2022-05-29 07:42:46', '2022-05-29 07:42:46'),
(83, 22305, 22354, '2230522354', 'jjjjjj\nkkkk\nkkkk\nlll', NULL, NULL, 0, 0, '2022-05-29 08:27:56', '2022-05-29 08:27:56'),
(84, 22305, 22354, '2230522354', 'juihuo', NULL, NULL, 0, 0, '2022-05-29 08:28:13', '2022-05-29 08:28:13'),
(85, 22305, 22354, '2230522354', 'lll', NULL, NULL, 0, 0, '2022-05-29 09:32:55', '2022-05-29 09:32:55'),
(86, 22305, 22353, '2230522353', '33333', NULL, NULL, 0, 0, '2022-05-30 05:05:02', '2022-05-30 05:05:02'),
(87, 22305, 22341, '2230522341', 'kkk', NULL, NULL, 0, 0, '2022-05-30 06:14:14', '2022-05-30 06:14:14'),
(88, 22305, 22353, '2230522353', '222', NULL, NULL, 0, 0, '2022-05-30 06:29:08', '2022-05-30 06:29:08'),
(89, 22305, 22354, '2230522354', '55555', NULL, NULL, 0, 0, '2022-05-30 10:00:25', '2022-05-30 10:00:25'),
(90, 22305, 22353, '2230522353', '5555', NULL, NULL, 0, 0, '2022-05-30 10:00:31', '2022-05-30 10:00:31'),
(91, 22305, 22354, '2230522354', '555', NULL, NULL, 0, 0, '2022-05-30 10:04:33', '2022-05-30 10:04:33'),
(92, 22305, 22354, '2230522354', '1111', NULL, NULL, 0, 0, '2022-05-30 10:06:37', '2022-05-30 10:06:37'),
(93, 22305, 22354, '2230522354', '111', NULL, NULL, 0, 0, '2022-05-30 10:12:20', '2022-05-30 10:12:20'),
(94, 22305, 22354, '2230522354', '4444', NULL, NULL, 0, 0, '2022-05-30 10:19:38', '2022-05-30 10:19:38'),
(95, 22305, 22353, '2230522353', '111111', NULL, NULL, 0, 0, '2022-05-30 10:20:03', '2022-05-30 10:20:03'),
(96, 22305, 22354, '2230522354', '22222', NULL, NULL, 0, 0, '2022-05-30 10:38:07', '2022-05-30 10:38:07'),
(97, 22305, 22354, '2230522354', 'aaaaa', NULL, NULL, 0, 0, '2022-05-30 10:38:45', '2022-05-30 10:38:45'),
(98, 22305, 22354, '2230522354', 'bbbb', NULL, NULL, 0, 0, '2022-05-30 10:40:17', '2022-05-30 10:40:17'),
(99, 22305, 22354, '2230522354', '333', NULL, NULL, 0, 0, '2022-05-30 10:41:26', '2022-05-30 10:41:26'),
(100, 22305, 22353, '2230522353', 'aaaaa', NULL, NULL, 0, 0, '2022-05-30 10:41:50', '2022-05-30 10:41:50'),
(101, 22305, 0, 'NaN22305', 'bbbbb', NULL, NULL, 0, 0, '2022-05-30 10:42:46', '2022-05-30 10:42:46'),
(102, 22305, 22354, '2230522354', 'bbbb', NULL, NULL, 0, 0, '2022-05-30 10:43:53', '2022-05-30 10:43:53'),
(103, 22305, 22354, '2230522354', 'afaf', NULL, NULL, 0, 0, '2022-05-30 10:44:48', '2022-05-30 10:44:48'),
(104, 22305, 22354, '2230522354', 'afafaff', NULL, NULL, 0, 0, '2022-05-30 10:45:15', '2022-05-30 10:45:15'),
(105, 22305, 22354, '2230522354', 'adsfaff', NULL, NULL, 0, 0, '2022-05-30 10:45:48', '2022-05-30 10:45:48'),
(106, 22305, 22354, '2230522354', 'xxxxxxxx', NULL, NULL, 0, 0, '2022-05-30 10:47:42', '2022-05-30 10:47:42'),
(107, 22305, 22354, '2230522354', 'bbbb', NULL, NULL, 0, 0, '2022-05-30 10:49:15', '2022-05-30 10:49:15'),
(108, 22305, 22353, '2230522353', 'fffff', NULL, NULL, 0, 0, '2022-05-30 10:49:30', '2022-05-30 10:49:30'),
(109, 22305, 22349, '2230522349', 'from admin', NULL, NULL, 0, 0, '2022-05-30 10:43:53', '2022-05-30 10:43:53'),
(110, 22349, 22305, '2230522349', 'to admin', NULL, NULL, 1, 0, '2022-05-30 10:55:54', '2022-05-30 10:43:53'),
(111, 22305, 22353, '2230522353', '123456', NULL, NULL, 0, 0, '2022-05-30 10:56:46', '2022-05-30 10:56:46'),
(112, 22305, 22341, '2230522341', 'uuuuuuu', NULL, NULL, 0, 0, '2022-05-30 10:59:07', '2022-05-30 10:59:07'),
(113, 22305, 22308, '2230522308', '123', NULL, NULL, 0, 0, '2022-05-30 11:08:44', '2022-05-30 11:08:44'),
(114, 22305, 22354, '2230522354', '333', NULL, NULL, 0, 0, '2022-05-30 11:09:28', '2022-05-30 11:09:28'),
(115, 22305, 22354, '2230522354', '3333333', NULL, NULL, 0, 0, '2022-05-30 11:09:39', '2022-05-30 11:09:39'),
(116, 22305, 22354, '2230522354', '33', NULL, NULL, 0, 0, '2022-05-30 11:09:42', '2022-05-30 11:09:42'),
(117, 22305, 22353, '2230522353', 'ccccc', NULL, NULL, 0, 0, '2022-05-30 11:11:09', '2022-05-30 11:11:09'),
(118, 22305, 22341, '2230522341', 'bb', NULL, NULL, 0, 0, '2022-05-30 11:11:20', '2022-05-30 11:11:20'),
(119, 22305, 22341, '2230522341', '3333', NULL, NULL, 0, 0, '2022-05-30 11:16:53', '2022-05-30 11:16:53'),
(120, 22305, 22353, '2230522353', 'llllll', NULL, NULL, 0, 0, '2022-05-30 11:17:00', '2022-05-30 11:17:00');

-- --------------------------------------------------------

--
-- Table structure for table `client_chats`
--

CREATE TABLE `client_chats` (
  `id` int(11) NOT NULL,
  `people_id` int(10) UNSIGNED NOT NULL,
  `inbox_key` varchar(191) DEFAULT NULL,
  `msg` text DEFAULT NULL,
  `status` varchar(191) DEFAULT NULL,
  `message_data` text DEFAULT NULL,
  `is_reply` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client_chats`
--

INSERT INTO `client_chats` (`id`, `people_id`, `inbox_key`, `msg`, `status`, `message_data`, `is_reply`, `created_at`, `updated_at`) VALUES
(28, 4, '+8801571373460', '{\"body\":\"Hello\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+8801571373460\",\"dateUpdated\":\"2022-02-23T11:50:44.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM899ecd461c914005b78cd515aaab15db.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SM899ecd461c914005b78cd515aaab15db\",\"dateSent\":null,\"dateCreated\":\"2022-02-23T11:50:44.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM899ecd461c914005b78cd515aaab15db/Media.json\"}}', 'DELEVERED', 'Hello', 0, '2022-02-23 11:50:44', '2022-02-23 11:50:44'),
(29, 4, '+18554751693', '{\"body\":\"Test Number\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+18554751693\",\"dateUpdated\":\"2022-02-23T12:00:48.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM48fa1efa3d554aed90da3d52f1ab7df0.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SM48fa1efa3d554aed90da3d52f1ab7df0\",\"dateSent\":null,\"dateCreated\":\"2022-02-23T12:00:48.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM48fa1efa3d554aed90da3d52f1ab7df0/Media.json\"}}', 'DELEVERED', 'Test Number', 0, '2022-02-23 12:00:47', '2022-02-23 12:00:47'),
(30, 4, '+18554751693', '{\"ToCountry\":\"US\",\"ToState\":null,\"SmsMessageSid\":\"SMde824f1cb536c3cf157191f2785a01ff\",\"NumMedia\":\"0\",\"ToCity\":null,\"FromZip\":null,\"SmsSid\":\"SMde824f1cb536c3cf157191f2785a01ff\",\"FromState\":null,\"SmsStatus\":\"received\",\"FromCity\":null,\"Body\":\"hello world\",\"FromCountry\":\"US\",\"To\":\"+18557111782\",\"ToZip\":null,\"NumSegments\":\"1\",\"MessageSid\":\"SMde824f1cb536c3cf157191f2785a01ff\",\"AccountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"From\":\"+18554751693\",\"ApiVersion\":\"2010-04-01\"}', 'received', 'hello world', 1, '2022-02-23 12:50:41', '2022-02-23 12:50:41'),
(31, 4, '+8801766221374', '{\"body\":\"jhjkjhjk\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+8801766221374\",\"dateUpdated\":\"2022-02-23T12:56:33.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM12ededde213a4167bd2042e1ec607468.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SM12ededde213a4167bd2042e1ec607468\",\"dateSent\":null,\"dateCreated\":\"2022-02-23T12:56:33.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM12ededde213a4167bd2042e1ec607468/Media.json\"}}', 'DELEVERED', 'jhjkjhjk', 0, '2022-02-23 12:56:32', '2022-02-23 12:56:32'),
(32, 4, '+18554751693', '{\"ToCountry\":\"US\",\"ToState\":null,\"SmsMessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"NumMedia\":\"0\",\"ToCity\":null,\"FromZip\":null,\"SmsSid\":\"SM04813374f86183b211c128e0e8768893\",\"FromState\":null,\"SmsStatus\":\"received\",\"FromCity\":null,\"Body\":\"Yes it is working\",\"FromCountry\":\"US\",\"To\":\"+18557111782\",\"ToZip\":null,\"NumSegments\":\"1\",\"MessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"AccountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"From\":\"+18554751693\",\"ApiVersion\":\"2010-04-01\"}', 'received', 'Yes it is working', 1, '2022-02-24 07:03:34', '2022-02-24 07:03:34'),
(33, 4, '+18554751693', '{\"ToCountry\":\"US\",\"ToState\":null,\"SmsMessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"NumMedia\":\"0\",\"ToCity\":null,\"FromZip\":null,\"SmsSid\":\"SM04813374f86183b211c128e0e8768893\",\"FromState\":null,\"SmsStatus\":\"received\",\"FromCity\":null,\"Body\":\"Yes it is working\",\"FromCountry\":\"US\",\"To\":\"+18557111782\",\"ToZip\":null,\"NumSegments\":\"1\",\"MessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"AccountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"From\":\"+18554751693\",\"ApiVersion\":\"2010-04-01\"}', 'received', 'Yes it is working', 1, '2022-02-24 07:04:32', '2022-02-24 07:04:32'),
(34, 4, '+18554751693', '{\"ToCountry\":\"US\",\"ToState\":null,\"SmsMessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"NumMedia\":\"0\",\"ToCity\":null,\"FromZip\":null,\"SmsSid\":\"SM04813374f86183b211c128e0e8768893\",\"FromState\":null,\"SmsStatus\":\"received\",\"FromCity\":null,\"Body\":\"Yes it is working\",\"FromCountry\":\"US\",\"To\":\"+18557111782\",\"ToZip\":null,\"NumSegments\":\"1\",\"MessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"AccountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"From\":\"+18554751693\",\"ApiVersion\":\"2010-04-01\"}', 'received', 'Yes it is working', 1, '2022-02-24 07:05:24', '2022-02-24 07:05:24'),
(35, 4, '+18554751693', '{\"ToCountry\":\"US\",\"ToState\":null,\"SmsMessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"NumMedia\":\"0\",\"ToCity\":null,\"FromZip\":null,\"SmsSid\":\"SM04813374f86183b211c128e0e8768893\",\"FromState\":null,\"SmsStatus\":\"received\",\"FromCity\":null,\"Body\":\"Hello Bro\",\"FromCountry\":\"US\",\"To\":\"+18557111782\",\"ToZip\":null,\"NumSegments\":\"1\",\"MessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"AccountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"From\":\"+18554751693\",\"ApiVersion\":\"2010-04-01\"}', 'received', 'Hello Bro', 1, '2022-02-24 07:05:57', '2022-02-24 07:05:57'),
(36, 4, '+18554751693', '{\"ToCountry\":\"US\",\"ToState\":null,\"SmsMessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"NumMedia\":\"0\",\"ToCity\":null,\"FromZip\":null,\"SmsSid\":\"SM04813374f86183b211c128e0e8768893\",\"FromState\":null,\"SmsStatus\":\"received\",\"FromCity\":null,\"Body\":\"Hello Bro\",\"FromCountry\":\"US\",\"To\":\"+18557111782\",\"ToZip\":null,\"NumSegments\":\"1\",\"MessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"AccountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"From\":\"+18554751693\",\"ApiVersion\":\"2010-04-01\"}', 'received', 'Hello Bro', 1, '2022-02-24 07:14:25', '2022-02-24 07:14:25'),
(37, 4, '+18554751693', '{\"ToCountry\":\"US\",\"ToState\":null,\"SmsMessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"NumMedia\":\"0\",\"ToCity\":null,\"FromZip\":null,\"SmsSid\":\"SM04813374f86183b211c128e0e8768893\",\"FromState\":null,\"SmsStatus\":\"received\",\"FromCity\":null,\"Body\":\"Hello Bro\",\"FromCountry\":\"US\",\"To\":\"+18557111782\",\"ToZip\":null,\"NumSegments\":\"1\",\"MessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"AccountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"From\":\"+18554751693\",\"ApiVersion\":\"2010-04-01\"}', 'received', 'Hello Bro', 1, '2022-02-24 07:15:44', '2022-02-24 07:15:44'),
(38, 4, '+18554751693', '{\"ToCountry\":\"US\",\"ToState\":null,\"SmsMessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"NumMedia\":\"0\",\"ToCity\":null,\"FromZip\":null,\"SmsSid\":\"SM04813374f86183b211c128e0e8768893\",\"FromState\":null,\"SmsStatus\":\"received\",\"FromCity\":null,\"Body\":\"Hello Bro\",\"FromCountry\":\"US\",\"To\":\"+18557111782\",\"ToZip\":null,\"NumSegments\":\"1\",\"MessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"AccountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"From\":\"+18554751693\",\"ApiVersion\":\"2010-04-01\"}', 'received', 'Hello Bro', 1, '2022-02-24 08:54:23', '2022-02-24 08:54:23'),
(39, 4, '+18554751693', '{\"ToCountry\":\"US\",\"ToState\":null,\"SmsMessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"NumMedia\":\"0\",\"ToCity\":null,\"FromZip\":null,\"SmsSid\":\"SM04813374f86183b211c128e0e8768893\",\"FromState\":null,\"SmsStatus\":\"received\",\"FromCity\":null,\"Body\":\"Hello Bro I am here\",\"FromCountry\":\"US\",\"To\":\"+18557111782\",\"ToZip\":null,\"NumSegments\":\"1\",\"MessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"AccountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"From\":\"+18554751693\",\"ApiVersion\":\"2010-04-01\"}', 'received', 'Hello Bro I am here', 1, '2022-02-24 08:54:40', '2022-02-24 08:54:40'),
(40, 4, '+18554751693', '{\"ToCountry\":\"US\",\"ToState\":null,\"SmsMessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"NumMedia\":\"0\",\"ToCity\":null,\"FromZip\":null,\"SmsSid\":\"SM04813374f86183b211c128e0e8768893\",\"FromState\":null,\"SmsStatus\":\"received\",\"FromCity\":null,\"Body\":\"What are you looking for??\",\"FromCountry\":\"US\",\"To\":\"+18557111782\",\"ToZip\":null,\"NumSegments\":\"1\",\"MessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"AccountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"From\":\"+18554751693\",\"ApiVersion\":\"2010-04-01\"}', 'received', 'What are you looking for??', 1, '2022-02-24 08:55:06', '2022-02-24 08:55:06'),
(41, 4, '+18554751693', '{\"ToCountry\":\"US\",\"ToState\":null,\"SmsMessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"NumMedia\":\"0\",\"ToCity\":null,\"FromZip\":null,\"SmsSid\":\"SM04813374f86183b211c128e0e8768893\",\"FromState\":null,\"SmsStatus\":\"received\",\"FromCity\":null,\"Body\":\"What are you looking for??\",\"FromCountry\":\"US\",\"To\":\"+18557111782\",\"ToZip\":null,\"NumSegments\":\"1\",\"MessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"AccountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"From\":\"+18554751693\",\"ApiVersion\":\"2010-04-01\"}', 'received', 'What are you looking for??', 1, '2022-02-24 08:55:53', '2022-02-24 08:55:53'),
(42, 4, '+18554751693', '{\"ToCountry\":\"US\",\"ToState\":null,\"SmsMessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"NumMedia\":\"0\",\"ToCity\":null,\"FromZip\":null,\"SmsSid\":\"SM04813374f86183b211c128e0e8768893\",\"FromState\":null,\"SmsStatus\":\"received\",\"FromCity\":null,\"Body\":\"What are you looking for??\",\"FromCountry\":\"US\",\"To\":\"+18557111782\",\"ToZip\":null,\"NumSegments\":\"1\",\"MessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"AccountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"From\":\"+18554751693\",\"ApiVersion\":\"2010-04-01\"}', 'received', 'What are you looking for??', 1, '2022-02-24 08:57:39', '2022-02-24 08:57:39'),
(43, 4, '+18554751693', '{\"ToCountry\":\"US\",\"ToState\":null,\"SmsMessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"NumMedia\":\"0\",\"ToCity\":null,\"FromZip\":null,\"SmsSid\":\"SM04813374f86183b211c128e0e8768893\",\"FromState\":null,\"SmsStatus\":\"received\",\"FromCity\":null,\"Body\":\"What are you looking for??\",\"FromCountry\":\"US\",\"To\":\"+18557111782\",\"ToZip\":null,\"NumSegments\":\"1\",\"MessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"AccountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"From\":\"+18554751693\",\"ApiVersion\":\"2010-04-01\"}', 'received', 'What are you looking for??', 1, '2022-02-24 08:58:12', '2022-02-24 08:58:12'),
(44, 4, '+18554751693', '{\"ToCountry\":\"US\",\"ToState\":null,\"SmsMessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"NumMedia\":\"0\",\"ToCity\":null,\"FromZip\":null,\"SmsSid\":\"SM04813374f86183b211c128e0e8768893\",\"FromState\":null,\"SmsStatus\":\"received\",\"FromCity\":null,\"Body\":\"What are you looking for??\",\"FromCountry\":\"US\",\"To\":\"+18557111782\",\"ToZip\":null,\"NumSegments\":\"1\",\"MessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"AccountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"From\":\"+18554751693\",\"ApiVersion\":\"2010-04-01\"}', 'received', 'What are you looking for??', 1, '2022-02-24 08:59:16', '2022-02-24 08:59:16'),
(45, 4, '+18554751693', '{\"ToCountry\":\"US\",\"ToState\":null,\"SmsMessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"NumMedia\":\"0\",\"ToCity\":null,\"FromZip\":null,\"SmsSid\":\"SM04813374f86183b211c128e0e8768893\",\"FromState\":null,\"SmsStatus\":\"received\",\"FromCity\":null,\"Body\":\"What are you looking for??\",\"FromCountry\":\"US\",\"To\":\"+18557111782\",\"ToZip\":null,\"NumSegments\":\"1\",\"MessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"AccountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"From\":\"+18554751693\",\"ApiVersion\":\"2010-04-01\"}', 'received', 'What are you looking for??', 1, '2022-02-24 09:00:00', '2022-02-24 09:00:00'),
(46, 4, '+18554751693', '{\"ToCountry\":\"US\",\"ToState\":null,\"SmsMessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"NumMedia\":\"0\",\"ToCity\":null,\"FromZip\":null,\"SmsSid\":\"SM04813374f86183b211c128e0e8768893\",\"FromState\":null,\"SmsStatus\":\"received\",\"FromCity\":null,\"Body\":\"What are you looking for??\",\"FromCountry\":\"US\",\"To\":\"+18557111782\",\"ToZip\":null,\"NumSegments\":\"1\",\"MessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"AccountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"From\":\"+18554751693\",\"ApiVersion\":\"2010-04-01\"}', 'received', 'What are you looking for??', 1, '2022-02-24 09:00:20', '2022-02-24 09:00:20'),
(47, 4, '+18554751693', '{\"ToCountry\":\"US\",\"ToState\":null,\"SmsMessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"NumMedia\":\"0\",\"ToCity\":null,\"FromZip\":null,\"SmsSid\":\"SM04813374f86183b211c128e0e8768893\",\"FromState\":null,\"SmsStatus\":\"received\",\"FromCity\":null,\"Body\":\"What are you looking for??\",\"FromCountry\":\"US\",\"To\":\"+18557111782\",\"ToZip\":null,\"NumSegments\":\"1\",\"MessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"AccountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"From\":\"+18554751693\",\"ApiVersion\":\"2010-04-01\"}', 'received', 'What are you looking for??', 1, '2022-02-24 09:00:22', '2022-02-24 09:00:22'),
(48, 4, '+18554751693', '{\"ToCountry\":\"US\",\"ToState\":null,\"SmsMessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"NumMedia\":\"0\",\"ToCity\":null,\"FromZip\":null,\"SmsSid\":\"SM04813374f86183b211c128e0e8768893\",\"FromState\":null,\"SmsStatus\":\"received\",\"FromCity\":null,\"Body\":\"What are you looking for??\",\"FromCountry\":\"US\",\"To\":\"+18557111782\",\"ToZip\":null,\"NumSegments\":\"1\",\"MessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"AccountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"From\":\"+18554751693\",\"ApiVersion\":\"2010-04-01\"}', 'received', 'What are you looking for??', 1, '2022-02-24 09:00:23', '2022-02-24 09:00:23'),
(49, 4, '+18554751693', '{\"ToCountry\":\"US\",\"ToState\":null,\"SmsMessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"NumMedia\":\"0\",\"ToCity\":null,\"FromZip\":null,\"SmsSid\":\"SM04813374f86183b211c128e0e8768893\",\"FromState\":null,\"SmsStatus\":\"received\",\"FromCity\":null,\"Body\":\"What are you looking for??\",\"FromCountry\":\"US\",\"To\":\"+18557111782\",\"ToZip\":null,\"NumSegments\":\"1\",\"MessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"AccountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"From\":\"+18554751693\",\"ApiVersion\":\"2010-04-01\"}', 'received', 'What are you looking for??', 1, '2022-02-24 09:00:24', '2022-02-24 09:00:24'),
(50, 4, '+18554751693', '{\"ToCountry\":\"US\",\"ToState\":null,\"SmsMessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"NumMedia\":\"0\",\"ToCity\":null,\"FromZip\":null,\"SmsSid\":\"SM04813374f86183b211c128e0e8768893\",\"FromState\":null,\"SmsStatus\":\"received\",\"FromCity\":null,\"Body\":\"What are you looking for??\",\"FromCountry\":\"US\",\"To\":\"+18557111782\",\"ToZip\":null,\"NumSegments\":\"1\",\"MessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"AccountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"From\":\"+18554751693\",\"ApiVersion\":\"2010-04-01\"}', 'received', 'What are you looking for??', 1, '2022-02-24 09:00:24', '2022-02-24 09:00:24'),
(51, 4, '+18554751693', '{\"ToCountry\":\"US\",\"ToState\":null,\"SmsMessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"NumMedia\":\"0\",\"ToCity\":null,\"FromZip\":null,\"SmsSid\":\"SM04813374f86183b211c128e0e8768893\",\"FromState\":null,\"SmsStatus\":\"received\",\"FromCity\":null,\"Body\":\"What are you looking for??\",\"FromCountry\":\"US\",\"To\":\"+18557111782\",\"ToZip\":null,\"NumSegments\":\"1\",\"MessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"AccountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"From\":\"+18554751693\",\"ApiVersion\":\"2010-04-01\"}', 'received', 'What are you looking for??', 1, '2022-02-24 09:00:26', '2022-02-24 09:00:26'),
(52, 4, '+18554751693', '{\"ToCountry\":\"US\",\"ToState\":null,\"SmsMessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"NumMedia\":\"0\",\"ToCity\":null,\"FromZip\":null,\"SmsSid\":\"SM04813374f86183b211c128e0e8768893\",\"FromState\":null,\"SmsStatus\":\"received\",\"FromCity\":null,\"Body\":\"What are you looking for??\",\"FromCountry\":\"US\",\"To\":\"+18557111782\",\"ToZip\":null,\"NumSegments\":\"1\",\"MessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"AccountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"From\":\"+18554751693\",\"ApiVersion\":\"2010-04-01\"}', 'received', 'What are you looking for??', 1, '2022-02-24 09:04:17', '2022-02-24 09:04:17'),
(53, 4, '+18554751693', '{\"ToCountry\":\"US\",\"ToState\":null,\"SmsMessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"NumMedia\":\"0\",\"ToCity\":null,\"FromZip\":null,\"SmsSid\":\"SM04813374f86183b211c128e0e8768893\",\"FromState\":null,\"SmsStatus\":\"received\",\"FromCity\":null,\"Body\":\"123What are you looking for??\",\"FromCountry\":\"US\",\"To\":\"+18557111782\",\"ToZip\":null,\"NumSegments\":\"1\",\"MessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"AccountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"From\":\"+18554751693\",\"ApiVersion\":\"2010-04-01\"}', 'received', '123What are you looking for??', 1, '2022-02-24 09:09:48', '2022-02-24 09:09:48'),
(54, 4, '+18554751693', '{\"ToCountry\":\"US\",\"ToState\":null,\"SmsMessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"NumMedia\":\"0\",\"ToCity\":null,\"FromZip\":null,\"SmsSid\":\"SM04813374f86183b211c128e0e8768893\",\"FromState\":null,\"SmsStatus\":\"received\",\"FromCity\":null,\"Body\":\"123What are you looking for??\",\"FromCountry\":\"US\",\"To\":\"+18557111782\",\"ToZip\":null,\"NumSegments\":\"1\",\"MessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"AccountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"From\":\"+18554751693\",\"ApiVersion\":\"2010-04-01\"}', 'received', '123What are you looking for??', 1, '2022-02-24 10:17:11', '2022-02-24 10:17:11'),
(55, 4, '+18554751693', '{\"ToCountry\":\"US\",\"ToState\":null,\"SmsMessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"NumMedia\":\"0\",\"ToCity\":null,\"FromZip\":null,\"SmsSid\":\"SM04813374f86183b211c128e0e8768893\",\"FromState\":null,\"SmsStatus\":\"received\",\"FromCity\":null,\"Body\":\"123What are you looking for??\",\"FromCountry\":\"US\",\"To\":\"+18557111782\",\"ToZip\":null,\"NumSegments\":\"1\",\"MessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"AccountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"From\":\"+18554751693\",\"ApiVersion\":\"2010-04-01\"}', 'received', '123What are you looking for??', 1, '2022-02-24 10:17:22', '2022-02-24 10:17:22'),
(56, 4, '+18554751693', '{\"ToCountry\":\"US\",\"ToState\":null,\"SmsMessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"NumMedia\":\"0\",\"ToCity\":null,\"FromZip\":null,\"SmsSid\":\"SM04813374f86183b211c128e0e8768893\",\"FromState\":null,\"SmsStatus\":\"received\",\"FromCity\":null,\"Body\":\"123What are you looking for??\",\"FromCountry\":\"US\",\"To\":\"+18557111782\",\"ToZip\":null,\"NumSegments\":\"1\",\"MessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"AccountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"From\":\"+18554751693\",\"ApiVersion\":\"2010-04-01\"}', 'received', '123What are you looking for??', 1, '2022-02-24 10:38:57', '2022-02-24 10:38:57'),
(57, 4, '+18554751693', '{\"ToCountry\":\"US\",\"ToState\":null,\"SmsMessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"NumMedia\":\"0\",\"ToCity\":null,\"FromZip\":null,\"SmsSid\":\"SM04813374f86183b211c128e0e8768893\",\"FromState\":null,\"SmsStatus\":\"received\",\"FromCity\":null,\"Body\":\"123What are you looking for??\",\"FromCountry\":\"US\",\"To\":\"+18557111782\",\"ToZip\":null,\"NumSegments\":\"1\",\"MessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"AccountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"From\":\"+18554751693\",\"ApiVersion\":\"2010-04-01\"}', 'received', '123What are you looking for??', 1, '2022-02-24 10:39:44', '2022-02-24 10:39:44'),
(58, 4, '+18554751693', '{\"ToCountry\":\"US\",\"ToState\":null,\"SmsMessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"NumMedia\":\"0\",\"ToCity\":null,\"FromZip\":null,\"SmsSid\":\"SM04813374f86183b211c128e0e8768893\",\"FromState\":null,\"SmsStatus\":\"received\",\"FromCity\":null,\"Body\":\"123What are you looking for??\",\"FromCountry\":\"US\",\"To\":\"+18557111782\",\"ToZip\":null,\"NumSegments\":\"1\",\"MessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"AccountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"From\":\"+18554751693\",\"ApiVersion\":\"2010-04-01\"}', 'received', '123What are you looking for??', 1, '2022-02-24 10:40:12', '2022-02-24 10:40:12'),
(59, 4, '+18554751693', '{\"ToCountry\":\"US\",\"ToState\":null,\"SmsMessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"NumMedia\":\"0\",\"ToCity\":null,\"FromZip\":null,\"SmsSid\":\"SM04813374f86183b211c128e0e8768893\",\"FromState\":null,\"SmsStatus\":\"received\",\"FromCity\":null,\"Body\":\"123What are you looking for??\",\"FromCountry\":\"US\",\"To\":\"+18557111782\",\"ToZip\":null,\"NumSegments\":\"1\",\"MessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"AccountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"From\":\"+18554751693\",\"ApiVersion\":\"2010-04-01\"}', 'received', '123What are you looking for??', 1, '2022-02-24 10:42:51', '2022-02-24 10:42:51'),
(60, 4, '+18554751693', '{\"ToCountry\":\"US\",\"ToState\":null,\"SmsMessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"NumMedia\":\"0\",\"ToCity\":null,\"FromZip\":null,\"SmsSid\":\"SM04813374f86183b211c128e0e8768893\",\"FromState\":null,\"SmsStatus\":\"received\",\"FromCity\":null,\"Body\":\"123What are you looking for??\",\"FromCountry\":\"US\",\"To\":\"+18557111782\",\"ToZip\":null,\"NumSegments\":\"1\",\"MessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"AccountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"From\":\"+18554751693\",\"ApiVersion\":\"2010-04-01\"}', 'received', '123What are you looking for??', 1, '2022-02-24 10:45:51', '2022-02-24 10:45:51'),
(61, 4, '+18554751693', '{\"ToCountry\":\"US\",\"ToState\":null,\"SmsMessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"NumMedia\":\"0\",\"ToCity\":null,\"FromZip\":null,\"SmsSid\":\"SM04813374f86183b211c128e0e8768893\",\"FromState\":null,\"SmsStatus\":\"received\",\"FromCity\":null,\"Body\":\"How are you??\",\"FromCountry\":\"US\",\"To\":\"+18557111782\",\"ToZip\":null,\"NumSegments\":\"1\",\"MessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"AccountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"From\":\"+18554751693\",\"ApiVersion\":\"2010-04-01\"}', 'received', 'How are you??', 1, '2022-02-24 11:03:51', '2022-02-24 11:03:51'),
(62, 4, '+18554751693', '{\"ToCountry\":\"US\",\"ToState\":null,\"SmsMessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"NumMedia\":\"0\",\"ToCity\":null,\"FromZip\":null,\"SmsSid\":\"SM04813374f86183b211c128e0e8768893\",\"FromState\":null,\"SmsStatus\":\"received\",\"FromCity\":null,\"Body\":\"How are you??\",\"FromCountry\":\"US\",\"To\":\"+18557111782\",\"ToZip\":null,\"NumSegments\":\"1\",\"MessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"AccountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"From\":\"+18554751693\",\"ApiVersion\":\"2010-04-01\"}', 'received', 'How are you??', 1, '2022-02-24 11:04:00', '2022-02-24 11:04:00'),
(63, 4, '+18554751693', '{\"ToCountry\":\"US\",\"ToState\":null,\"SmsMessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"NumMedia\":\"0\",\"ToCity\":null,\"FromZip\":null,\"SmsSid\":\"SM04813374f86183b211c128e0e8768893\",\"FromState\":null,\"SmsStatus\":\"received\",\"FromCity\":null,\"Body\":\"How are you??\",\"FromCountry\":\"US\",\"To\":\"+18557111782\",\"ToZip\":null,\"NumSegments\":\"1\",\"MessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"AccountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"From\":\"+18554751693\",\"ApiVersion\":\"2010-04-01\"}', 'received', 'How are you??', 1, '2022-02-24 11:15:54', '2022-02-24 11:15:54'),
(64, 4, '+18554751693', '{\"ToCountry\":\"US\",\"ToState\":null,\"SmsMessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"NumMedia\":\"0\",\"ToCity\":null,\"FromZip\":null,\"SmsSid\":\"SM04813374f86183b211c128e0e8768893\",\"FromState\":null,\"SmsStatus\":\"received\",\"FromCity\":null,\"Body\":\"How are you??\",\"FromCountry\":\"US\",\"To\":\"+18557111782\",\"ToZip\":null,\"NumSegments\":\"1\",\"MessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"AccountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"From\":\"+18554751693\",\"ApiVersion\":\"2010-04-01\"}', 'received', 'How are you??', 1, '2022-02-24 11:16:32', '2022-02-24 11:16:32'),
(65, 4, '+18554751693', '{\"ToCountry\":\"US\",\"ToState\":null,\"SmsMessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"NumMedia\":\"0\",\"ToCity\":null,\"FromZip\":null,\"SmsSid\":\"SM04813374f86183b211c128e0e8768893\",\"FromState\":null,\"SmsStatus\":\"received\",\"FromCity\":null,\"Body\":\"How are you??\",\"FromCountry\":\"US\",\"To\":\"+18557111782\",\"ToZip\":null,\"NumSegments\":\"1\",\"MessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"AccountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"From\":\"+18554751693\",\"ApiVersion\":\"2010-04-01\"}', 'received', 'How are you??', 1, '2022-02-24 11:17:11', '2022-02-24 11:17:11'),
(66, 4, '+18554751693', '{\"ToCountry\":\"US\",\"ToState\":null,\"SmsMessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"NumMedia\":\"0\",\"ToCity\":null,\"FromZip\":null,\"SmsSid\":\"SM04813374f86183b211c128e0e8768893\",\"FromState\":null,\"SmsStatus\":\"received\",\"FromCity\":null,\"Body\":\"How are you??\",\"FromCountry\":\"US\",\"To\":\"+18557111782\",\"ToZip\":null,\"NumSegments\":\"1\",\"MessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"AccountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"From\":\"+18554751693\",\"ApiVersion\":\"2010-04-01\"}', 'received', 'How are you??', 1, '2022-02-24 11:19:52', '2022-02-24 11:19:52'),
(67, 4, '+18554751693', '{\"ToCountry\":\"US\",\"ToState\":null,\"SmsMessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"NumMedia\":\"0\",\"ToCity\":null,\"FromZip\":null,\"SmsSid\":\"SM04813374f86183b211c128e0e8768893\",\"FromState\":null,\"SmsStatus\":\"received\",\"FromCity\":null,\"Body\":\"How are you??\",\"FromCountry\":\"US\",\"To\":\"+18557111782\",\"ToZip\":null,\"NumSegments\":\"1\",\"MessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"AccountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"From\":\"+18554751693\",\"ApiVersion\":\"2010-04-01\"}', 'received', 'How are you??', 1, '2022-02-24 11:21:23', '2022-02-24 11:21:23'),
(68, 4, '+18554751693', '{\"ToCountry\":\"US\",\"ToState\":null,\"SmsMessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"NumMedia\":\"0\",\"ToCity\":null,\"FromZip\":null,\"SmsSid\":\"SM04813374f86183b211c128e0e8768893\",\"FromState\":null,\"SmsStatus\":\"received\",\"FromCity\":null,\"Body\":\"How are you??\",\"FromCountry\":\"US\",\"To\":\"+18557111782\",\"ToZip\":null,\"NumSegments\":\"1\",\"MessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"AccountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"From\":\"+18554751693\",\"ApiVersion\":\"2010-04-01\"}', 'received', 'How are you??', 1, '2022-02-24 11:22:13', '2022-02-24 11:22:13'),
(69, 4, '+18554751693', '{\"ToCountry\":\"US\",\"ToState\":null,\"SmsMessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"NumMedia\":\"0\",\"ToCity\":null,\"FromZip\":null,\"SmsSid\":\"SM04813374f86183b211c128e0e8768893\",\"FromState\":null,\"SmsStatus\":\"received\",\"FromCity\":null,\"Body\":\"How are you??\",\"FromCountry\":\"US\",\"To\":\"+18557111782\",\"ToZip\":null,\"NumSegments\":\"1\",\"MessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"AccountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"From\":\"+18554751693\",\"ApiVersion\":\"2010-04-01\"}', 'received', 'How are you??', 1, '2022-02-24 11:25:57', '2022-02-24 11:25:57'),
(70, 4, '+18554751693', '{\"ToCountry\":\"US\",\"ToState\":null,\"SmsMessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"NumMedia\":\"0\",\"ToCity\":null,\"FromZip\":null,\"SmsSid\":\"SM04813374f86183b211c128e0e8768893\",\"FromState\":null,\"SmsStatus\":\"received\",\"FromCity\":null,\"Body\":\"How are you??\",\"FromCountry\":\"US\",\"To\":\"+18557111782\",\"ToZip\":null,\"NumSegments\":\"1\",\"MessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"AccountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"From\":\"+18554751693\",\"ApiVersion\":\"2010-04-01\"}', 'received', 'How are you??', 1, '2022-02-24 11:26:17', '2022-02-24 11:26:17'),
(71, 4, '+18554751693', '{\"ToCountry\":\"US\",\"ToState\":null,\"SmsMessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"NumMedia\":\"0\",\"ToCity\":null,\"FromZip\":null,\"SmsSid\":\"SM04813374f86183b211c128e0e8768893\",\"FromState\":null,\"SmsStatus\":\"received\",\"FromCity\":null,\"Body\":\"How are you??\",\"FromCountry\":\"US\",\"To\":\"+18557111782\",\"ToZip\":null,\"NumSegments\":\"1\",\"MessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"AccountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"From\":\"+18554751693\",\"ApiVersion\":\"2010-04-01\"}', 'received', 'How are you??', 1, '2022-02-24 11:26:18', '2022-02-24 11:26:18'),
(72, 4, '+18554751693', '{\"ToCountry\":\"US\",\"ToState\":null,\"SmsMessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"NumMedia\":\"0\",\"ToCity\":null,\"FromZip\":null,\"SmsSid\":\"SM04813374f86183b211c128e0e8768893\",\"FromState\":null,\"SmsStatus\":\"received\",\"FromCity\":null,\"Body\":\"How are you??\",\"FromCountry\":\"US\",\"To\":\"+18557111782\",\"ToZip\":null,\"NumSegments\":\"1\",\"MessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"AccountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"From\":\"+18554751693\",\"ApiVersion\":\"2010-04-01\"}', 'received', 'How are you??', 1, '2022-02-24 11:31:03', '2022-02-24 11:31:03'),
(73, 4, '+18554751693', '{\"ToCountry\":\"US\",\"ToState\":null,\"SmsMessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"NumMedia\":\"0\",\"ToCity\":null,\"FromZip\":null,\"SmsSid\":\"SM04813374f86183b211c128e0e8768893\",\"FromState\":null,\"SmsStatus\":\"received\",\"FromCity\":null,\"Body\":\"How are you??\",\"FromCountry\":\"US\",\"To\":\"+18557111782\",\"ToZip\":null,\"NumSegments\":\"1\",\"MessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"AccountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"From\":\"+18554751693\",\"ApiVersion\":\"2010-04-01\"}', 'received', 'How are you??', 1, '2022-02-24 11:31:46', '2022-02-24 11:31:46'),
(74, 4, '+8801766221372', '{\"body\":\"Hello\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+8801766221372\",\"dateUpdated\":\"2022-02-26T09:51:50.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM0ff92ada4e83460d84e6f6998ab8e356.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SM0ff92ada4e83460d84e6f6998ab8e356\",\"dateSent\":null,\"dateCreated\":\"2022-02-26T09:51:50.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM0ff92ada4e83460d84e6f6998ab8e356/Media.json\"}}', 'DELEVERED', 'Hello', 0, '2022-02-26 09:51:49', '2022-02-26 09:51:49'),
(75, 4, '+18554751693', '{\"ToCountry\":\"US\",\"ToState\":null,\"SmsMessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"NumMedia\":\"0\",\"ToCity\":null,\"FromZip\":null,\"SmsSid\":\"SM04813374f86183b211c128e0e8768893\",\"FromState\":null,\"SmsStatus\":\"received\",\"FromCity\":null,\"Body\":\"How are you??\",\"FromCountry\":\"US\",\"To\":\"+18557111782\",\"ToZip\":null,\"NumSegments\":\"1\",\"MessageSid\":\"SM04813374f86183b211c128e0e8768893\",\"AccountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"From\":\"+18554751693\",\"ApiVersion\":\"2010-04-01\"}', 'received', 'How are you??', 1, '2022-02-26 09:57:54', '2022-02-26 09:57:54'),
(76, 4, '+18554751693', '{\"body\":\"hello\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+18554751693\",\"dateUpdated\":\"2022-02-26T09:58:38.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SMf38022387aa74e5fba0ecf7f7d910078.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SMf38022387aa74e5fba0ecf7f7d910078\",\"dateSent\":null,\"dateCreated\":\"2022-02-26T09:58:38.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SMf38022387aa74e5fba0ecf7f7d910078/Media.json\"}}', 'DELEVERED', 'hello', 0, '2022-02-26 09:58:38', '2022-02-26 09:58:38'),
(77, 4, '+18554751693', '{\"body\":\"Yes\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+18554751693\",\"dateUpdated\":\"2022-02-26T10:03:30.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM82057fe8def14c1f881bd39558b3e5d3.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SM82057fe8def14c1f881bd39558b3e5d3\",\"dateSent\":null,\"dateCreated\":\"2022-02-26T10:03:30.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM82057fe8def14c1f881bd39558b3e5d3/Media.json\"}}', 'DELEVERED', 'Yes', 0, '2022-02-26 10:03:30', '2022-02-26 10:03:30'),
(78, 4, '+18554751693', '{\"body\":\"Hi\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+18554751693\",\"dateUpdated\":\"2022-02-26T10:04:46.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM85ece36b3562492fa7c042160e4fe1d4.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SM85ece36b3562492fa7c042160e4fe1d4\",\"dateSent\":null,\"dateCreated\":\"2022-02-26T10:04:46.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM85ece36b3562492fa7c042160e4fe1d4/Media.json\"}}', 'DELEVERED', 'Hi', 0, '2022-02-26 10:04:45', '2022-02-26 10:04:45'),
(79, 4, '+8801766221374', '{\"body\":\"ehjhjehjk\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+8801766221374\",\"dateUpdated\":\"2022-02-27T05:48:44.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SMd0fa7e8661314fbe9ac5922721d8aeea.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SMd0fa7e8661314fbe9ac5922721d8aeea\",\"dateSent\":null,\"dateCreated\":\"2022-02-27T05:48:44.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SMd0fa7e8661314fbe9ac5922721d8aeea/Media.json\"}}', 'DELEVERED', 'ehjhjehjk', 0, '2022-02-27 05:48:44', '2022-02-27 05:48:44'),
(80, 4, '+8801766221373', '{\"body\":\"hello\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+8801766221373\",\"dateUpdated\":\"2022-02-27T07:59:14.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM7344f9c1ebba49b5b801ad67079854ee.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SM7344f9c1ebba49b5b801ad67079854ee\",\"dateSent\":null,\"dateCreated\":\"2022-02-27T07:59:14.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM7344f9c1ebba49b5b801ad67079854ee/Media.json\"}}', 'DELEVERED', 'hello', 0, '2022-02-27 07:59:14', '2022-02-27 07:59:14'),
(81, 4, '+8801766221373', '{\"body\":\"hello\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+8801766221373\",\"dateUpdated\":\"2022-02-27T08:40:41.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SMff26cfcdea1a4252b8e68e2336e1726c.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SMff26cfcdea1a4252b8e68e2336e1726c\",\"dateSent\":null,\"dateCreated\":\"2022-02-27T08:40:41.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SMff26cfcdea1a4252b8e68e2336e1726c/Media.json\"}}', 'DELEVERED', 'hello', 0, '2022-02-27 08:40:42', '2022-02-27 08:40:42'),
(82, 4, '+8801766221373', '{\"body\":\"hello\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+8801766221373\",\"dateUpdated\":\"2022-02-27T08:43:06.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM7d9bf279743a4b8382fbb28a33cabd4b.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SM7d9bf279743a4b8382fbb28a33cabd4b\",\"dateSent\":null,\"dateCreated\":\"2022-02-27T08:43:06.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM7d9bf279743a4b8382fbb28a33cabd4b/Media.json\"}}', 'DELEVERED', 'hello', 0, '2022-02-27 08:43:06', '2022-02-27 08:43:06'),
(83, 4, '+8801766221373', '{\"body\":\"hello\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+8801766221373\",\"dateUpdated\":\"2022-02-27T08:44:34.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SMede88dde785843fa85c30bfb6488f206.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SMede88dde785843fa85c30bfb6488f206\",\"dateSent\":null,\"dateCreated\":\"2022-02-27T08:44:34.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SMede88dde785843fa85c30bfb6488f206/Media.json\"}}', 'DELEVERED', 'hello', 0, '2022-02-27 08:44:34', '2022-02-27 08:44:34'),
(84, 4, '+8801766221373', '{\"body\":\"hello\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+8801766221373\",\"dateUpdated\":\"2022-02-27T08:45:36.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SMec65863048ac4936ba46fc177514ae45.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SMec65863048ac4936ba46fc177514ae45\",\"dateSent\":null,\"dateCreated\":\"2022-02-27T08:45:36.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SMec65863048ac4936ba46fc177514ae45/Media.json\"}}', 'DELEVERED', 'hello', 0, '2022-02-27 08:45:36', '2022-02-27 08:45:36'),
(85, 4, '+8801766221373', '{\"body\":\"Hi There\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+8801766221373\",\"dateUpdated\":\"2022-02-27T08:46:08.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM8332dd316f884172a2cc1a15bb11d576.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SM8332dd316f884172a2cc1a15bb11d576\",\"dateSent\":null,\"dateCreated\":\"2022-02-27T08:46:08.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM8332dd316f884172a2cc1a15bb11d576/Media.json\"}}', 'DELEVERED', 'Hi There', 0, '2022-02-27 08:46:08', '2022-02-27 08:46:08'),
(86, 4, '+8801766221373', '{\"body\":\"hi\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+8801766221373\",\"dateUpdated\":\"2022-02-27T08:46:59.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM9cefdfa0e3074fc1bd1afacb848cb046.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SM9cefdfa0e3074fc1bd1afacb848cb046\",\"dateSent\":null,\"dateCreated\":\"2022-02-27T08:46:59.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM9cefdfa0e3074fc1bd1afacb848cb046/Media.json\"}}', 'DELEVERED', 'hi', 0, '2022-02-27 08:46:59', '2022-02-27 08:46:59'),
(87, 4, '+8801766221373', '{\"body\":\"hi\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+8801766221373\",\"dateUpdated\":\"2022-02-27T08:51:01.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM08fb51a0c3e548b9a876aad67aad2f0a.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SM08fb51a0c3e548b9a876aad67aad2f0a\",\"dateSent\":null,\"dateCreated\":\"2022-02-27T08:51:01.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM08fb51a0c3e548b9a876aad67aad2f0a/Media.json\"}}', 'DELEVERED', 'hi', 0, '2022-02-27 08:51:01', '2022-02-27 08:51:01'),
(88, 4, '+8801766221372', '{\"body\":\"hay\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+8801766221372\",\"dateUpdated\":\"2022-02-28T05:07:40.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM38555b3d41164e13bf1d9563e783de7f.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SM38555b3d41164e13bf1d9563e783de7f\",\"dateSent\":null,\"dateCreated\":\"2022-02-28T05:07:40.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM38555b3d41164e13bf1d9563e783de7f/Media.json\"}}', 'DELEVERED', 'hay', 0, '2022-02-28 05:07:40', '2022-02-28 05:07:40'),
(89, 4, '+8801766221374', '{\"body\":\"ok\\nhmmm\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+8801766221374\",\"dateUpdated\":\"2022-02-28T05:10:50.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SMbf77f5141dfc4acba7aca7fcf1333d1b.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SMbf77f5141dfc4acba7aca7fcf1333d1b\",\"dateSent\":null,\"dateCreated\":\"2022-02-28T05:10:50.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SMbf77f5141dfc4acba7aca7fcf1333d1b/Media.json\"}}', 'DELEVERED', 'ok\nhmmm', 0, '2022-02-28 05:10:50', '2022-02-28 05:10:50'),
(90, 4, '+8801766221374', '{\"body\":\"1\\n2\\n3\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+8801766221374\",\"dateUpdated\":\"2022-02-28T05:11:00.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM80743ab69f2b4b708f52f7f46d2a46c0.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SM80743ab69f2b4b708f52f7f46d2a46c0\",\"dateSent\":null,\"dateCreated\":\"2022-02-28T05:11:00.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM80743ab69f2b4b708f52f7f46d2a46c0/Media.json\"}}', 'DELEVERED', '1\n2\n3', 0, '2022-02-28 05:11:00', '2022-02-28 05:11:00'),
(91, 4, '+8801766221374', '{\"body\":\"vf\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+8801766221374\",\"dateUpdated\":\"2022-02-28T05:12:24.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM7042e2592af44d7588f44154d7b89585.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SM7042e2592af44d7588f44154d7b89585\",\"dateSent\":null,\"dateCreated\":\"2022-02-28T05:12:24.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM7042e2592af44d7588f44154d7b89585/Media.json\"}}', 'DELEVERED', 'vf', 0, '2022-02-28 05:12:24', '2022-02-28 05:12:24'),
(92, 4, '+8801766221374', '{\"body\":\"1\\n2\\n3\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+8801766221374\",\"dateUpdated\":\"2022-02-28T05:13:08.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SMb2b32436c877464ab3623ae6a46731d9.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SMb2b32436c877464ab3623ae6a46731d9\",\"dateSent\":null,\"dateCreated\":\"2022-02-28T05:13:08.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SMb2b32436c877464ab3623ae6a46731d9/Media.json\"}}', 'DELEVERED', '1\n2\n3', 0, '2022-02-28 05:13:08', '2022-02-28 05:13:08'),
(93, 4, '+8801766221374', '{\"body\":\"hui\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+8801766221374\",\"dateUpdated\":\"2022-02-28T05:16:44.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM71ff14fb23d8470fb0157ba385ee4892.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SM71ff14fb23d8470fb0157ba385ee4892\",\"dateSent\":null,\"dateCreated\":\"2022-02-28T05:16:44.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM71ff14fb23d8470fb0157ba385ee4892/Media.json\"}}', 'DELEVERED', 'hui', 0, '2022-02-28 05:16:44', '2022-02-28 05:16:44'),
(94, 4, '+8801766221374', '{\"body\":\"ggfh\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+8801766221374\",\"dateUpdated\":\"2022-02-28T05:17:18.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM0cadbb87aff4400d9899adff71e29735.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SM0cadbb87aff4400d9899adff71e29735\",\"dateSent\":null,\"dateCreated\":\"2022-02-28T05:17:18.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM0cadbb87aff4400d9899adff71e29735/Media.json\"}}', 'DELEVERED', 'ggfh', 0, '2022-02-28 05:17:18', '2022-02-28 05:17:18');
INSERT INTO `client_chats` (`id`, `people_id`, `inbox_key`, `msg`, `status`, `message_data`, `is_reply`, `created_at`, `updated_at`) VALUES
(95, 4, '+8801766221374', '{\"body\":\"xcvc\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+8801766221374\",\"dateUpdated\":\"2022-02-28T05:18:02.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM0dadeed2f3324de3987b057da4936a2e.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SM0dadeed2f3324de3987b057da4936a2e\",\"dateSent\":null,\"dateCreated\":\"2022-02-28T05:18:02.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM0dadeed2f3324de3987b057da4936a2e/Media.json\"}}', 'DELEVERED', 'xcvc', 0, '2022-02-28 05:18:02', '2022-02-28 05:18:02'),
(96, 4, '+8801571373460', '{\"body\":\"1123456\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+8801571373460\",\"dateUpdated\":\"2022-02-28T05:26:39.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM4e4d6cf9a5334977b66a97176633b1d8.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SM4e4d6cf9a5334977b66a97176633b1d8\",\"dateSent\":null,\"dateCreated\":\"2022-02-28T05:26:39.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM4e4d6cf9a5334977b66a97176633b1d8/Media.json\"}}', 'DELEVERED', '1123456', 0, '2022-02-28 05:26:39', '2022-02-28 05:26:39'),
(97, 4, '+8801766221374', '{\"body\":\"hay\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+8801766221374\",\"dateUpdated\":\"2022-02-28T05:31:14.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM032ed37810484d3f81226f427ca85054.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SM032ed37810484d3f81226f427ca85054\",\"dateSent\":null,\"dateCreated\":\"2022-02-28T05:31:14.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM032ed37810484d3f81226f427ca85054/Media.json\"}}', 'DELEVERED', 'hay', 0, '2022-02-28 05:31:14', '2022-02-28 05:31:14'),
(98, 4, '+8801766221374', '{\"body\":\"ok\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+8801766221374\",\"dateUpdated\":\"2022-02-28T05:31:23.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SMd3c7ff46e27a46938246f3e457b88f8d.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SMd3c7ff46e27a46938246f3e457b88f8d\",\"dateSent\":null,\"dateCreated\":\"2022-02-28T05:31:23.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SMd3c7ff46e27a46938246f3e457b88f8d/Media.json\"}}', 'DELEVERED', 'ok', 0, '2022-02-28 05:31:23', '2022-02-28 05:31:23'),
(99, 4, '+8801766221374', '{\"body\":\"Hello\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+8801766221374\",\"dateUpdated\":\"2022-02-28T05:31:51.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SMb1999c1ed6134a8cac9c5c5239db1d6d.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SMb1999c1ed6134a8cac9c5c5239db1d6d\",\"dateSent\":null,\"dateCreated\":\"2022-02-28T05:31:51.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SMb1999c1ed6134a8cac9c5c5239db1d6d/Media.json\"}}', 'DELEVERED', 'Hello', 0, '2022-02-28 05:31:51', '2022-02-28 05:31:51'),
(100, 4, '+8801766221373', '{\"body\":\"In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is available\",\"numSegments\":\"2\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+8801766221373\",\"dateUpdated\":\"2022-02-28T05:34:58.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM5093691282ca470299f67d4aa9ee20da.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SM5093691282ca470299f67d4aa9ee20da\",\"dateSent\":null,\"dateCreated\":\"2022-02-28T05:34:58.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM5093691282ca470299f67d4aa9ee20da/Media.json\"}}', 'DELEVERED', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is available', 0, '2022-02-28 05:34:58', '2022-02-28 05:34:58'),
(101, 4, '+8801766221373', '{\"body\":\"In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is available 123456789\",\"numSegments\":\"2\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+8801766221373\",\"dateUpdated\":\"2022-02-28T05:35:16.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM6bcfab05c28742af964dd72f7f2629dd.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SM6bcfab05c28742af964dd72f7f2629dd\",\"dateSent\":null,\"dateCreated\":\"2022-02-28T05:35:16.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM6bcfab05c28742af964dd72f7f2629dd/Media.json\"}}', 'DELEVERED', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is available 123456789', 0, '2022-02-28 05:35:16', '2022-02-28 05:35:16'),
(102, 4, '+8801766221373', '{\"body\":\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\",\"numSegments\":\"2\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+8801766221373\",\"dateUpdated\":\"2022-02-28T05:36:39.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SMd60874d0f07e48b1a7d038026878ced5.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SMd60874d0f07e48b1a7d038026878ced5\",\"dateSent\":null,\"dateCreated\":\"2022-02-28T05:36:39.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SMd60874d0f07e48b1a7d038026878ced5/Media.json\"}}', 'DELEVERED', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 0, '2022-02-28 05:36:39', '2022-02-28 05:36:39'),
(103, 4, '+8801571373460', '{\"body\":\"hi\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+8801571373460\",\"dateUpdated\":\"2022-02-28T06:33:25.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM1c290a8e9c814609a0084de99a86c447.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SM1c290a8e9c814609a0084de99a86c447\",\"dateSent\":null,\"dateCreated\":\"2022-02-28T06:33:25.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM1c290a8e9c814609a0084de99a86c447/Media.json\"}}', 'DELEVERED', 'hi', 0, '2022-02-28 06:33:25', '2022-02-28 06:33:25'),
(104, 4, '+8801571373460', '{\"body\":\"1\\n2\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+8801571373460\",\"dateUpdated\":\"2022-02-28T06:33:56.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM8255e1e7b5944951a5af373cd9f47717.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SM8255e1e7b5944951a5af373cd9f47717\",\"dateSent\":null,\"dateCreated\":\"2022-02-28T06:33:56.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM8255e1e7b5944951a5af373cd9f47717/Media.json\"}}', 'DELEVERED', '1\n2', 0, '2022-02-28 06:33:56', '2022-02-28 06:33:56'),
(105, 4, '+8801766221374', '{\"body\":\"ok\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+8801766221374\",\"dateUpdated\":\"2022-02-28T06:34:29.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SMb2b467c8ce634f6192159e1a3ca8761f.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SMb2b467c8ce634f6192159e1a3ca8761f\",\"dateSent\":null,\"dateCreated\":\"2022-02-28T06:34:29.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SMb2b467c8ce634f6192159e1a3ca8761f/Media.json\"}}', 'DELEVERED', 'ok', 0, '2022-02-28 06:34:30', '2022-02-28 06:34:30'),
(106, 4, '+8801571373460', '{\"body\":\"hay\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+8801571373460\",\"dateUpdated\":\"2022-02-28T06:34:48.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM3fe2082d05b543d3abdb99d6f28ee5e7.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SM3fe2082d05b543d3abdb99d6f28ee5e7\",\"dateSent\":null,\"dateCreated\":\"2022-02-28T06:34:48.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM3fe2082d05b543d3abdb99d6f28ee5e7/Media.json\"}}', 'DELEVERED', 'hay', 0, '2022-02-28 06:34:48', '2022-02-28 06:34:48'),
(107, 4, '+8801571373460', '{\"body\":\"1111\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+8801571373460\",\"dateUpdated\":\"2022-02-28T06:35:05.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SMcadf7f91f7d641708f7018c412dbe510.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SMcadf7f91f7d641708f7018c412dbe510\",\"dateSent\":null,\"dateCreated\":\"2022-02-28T06:35:05.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SMcadf7f91f7d641708f7018c412dbe510/Media.json\"}}', 'DELEVERED', '1111', 0, '2022-02-28 06:35:05', '2022-02-28 06:35:05'),
(108, 4, '+8801571373460', '{\"body\":\"hmm\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+8801571373460\",\"dateUpdated\":\"2022-02-28T06:37:58.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM6292398465034979a0f00ed529afbf6d.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SM6292398465034979a0f00ed529afbf6d\",\"dateSent\":null,\"dateCreated\":\"2022-02-28T06:37:58.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM6292398465034979a0f00ed529afbf6d/Media.json\"}}', 'DELEVERED', 'hmm', 0, '2022-02-28 06:37:58', '2022-02-28 06:37:58'),
(109, 4, '+8801571373460', '{\"body\":\"ok\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+8801571373460\",\"dateUpdated\":\"2022-02-28T06:38:55.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SMbf3f5c03519e426d931025d07a48e657.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SMbf3f5c03519e426d931025d07a48e657\",\"dateSent\":null,\"dateCreated\":\"2022-02-28T06:38:55.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SMbf3f5c03519e426d931025d07a48e657/Media.json\"}}', 'DELEVERED', 'ok', 0, '2022-02-28 06:38:55', '2022-02-28 06:38:55'),
(110, 4, '+8801571373460', '{\"body\":\"gfh\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+8801571373460\",\"dateUpdated\":\"2022-02-28T06:39:00.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM8e67aa14a20c4a2bb6e85ab63676270f.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SM8e67aa14a20c4a2bb6e85ab63676270f\",\"dateSent\":null,\"dateCreated\":\"2022-02-28T06:39:00.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM8e67aa14a20c4a2bb6e85ab63676270f/Media.json\"}}', 'DELEVERED', 'gfh', 0, '2022-02-28 06:39:00', '2022-02-28 06:39:00'),
(111, 4, '+8801571373460', '{\"body\":\"1. eat\\n2. sleep\\n3. repeat\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+8801571373460\",\"dateUpdated\":\"2022-02-28T06:45:04.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM0ba45ab2f65043ab892adb79c2187463.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SM0ba45ab2f65043ab892adb79c2187463\",\"dateSent\":null,\"dateCreated\":\"2022-02-28T06:45:04.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM0ba45ab2f65043ab892adb79c2187463/Media.json\"}}', 'DELEVERED', '1. eat\n2. sleep\n3. repeat', 0, '2022-02-28 06:45:04', '2022-02-28 06:45:04'),
(112, 4, '+8801571373460', '{\"body\":\"hyh\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+8801571373460\",\"dateUpdated\":\"2022-02-28T07:14:29.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM926392dac5b049119b35a354d1497816.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SM926392dac5b049119b35a354d1497816\",\"dateSent\":null,\"dateCreated\":\"2022-02-28T07:14:29.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM926392dac5b049119b35a354d1497816/Media.json\"}}', 'DELEVERED', 'hyh', 0, '2022-02-28 07:14:29', '2022-02-28 07:14:29'),
(113, 4, '+8801571373460', '{\"body\":\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+8801571373460\",\"dateUpdated\":\"2022-02-28T10:02:37.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM26b332023d41405ab027fc7110c2d12f.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SM26b332023d41405ab027fc7110c2d12f\",\"dateSent\":null,\"dateCreated\":\"2022-02-28T10:02:37.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM26b332023d41405ab027fc7110c2d12f/Media.json\"}}', 'DELEVERED', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 0, '2022-02-28 10:02:37', '2022-02-28 10:02:37'),
(114, 4, '+8801766221373', '{\"body\":\"Hello Test\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+8801766221373\",\"dateUpdated\":\"2022-02-28T12:22:58.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SMd3ac6852f8fa455eb8905246c33df822.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SMd3ac6852f8fa455eb8905246c33df822\",\"dateSent\":null,\"dateCreated\":\"2022-02-28T12:22:58.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SMd3ac6852f8fa455eb8905246c33df822/Media.json\"}}', 'DELEVERED', 'Hello Test', 0, '2022-02-28 12:22:58', '2022-02-28 12:22:58'),
(115, 4, '+8801766221374', '{\"body\":\"Hello Bipro\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+8801766221374\",\"dateUpdated\":\"2022-02-28T12:23:16.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SMc826fba737ca4326a7d29e8ba1a1ea35.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SMc826fba737ca4326a7d29e8ba1a1ea35\",\"dateSent\":null,\"dateCreated\":\"2022-02-28T12:23:16.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SMc826fba737ca4326a7d29e8ba1a1ea35/Media.json\"}}', 'DELEVERED', 'Hello Bipro', 0, '2022-02-28 12:23:16', '2022-02-28 12:23:16'),
(116, 4, '+18554751693', '{\"body\":\"Test\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+18554751693\",\"dateUpdated\":\"2022-02-28T17:26:47.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SMb7a2475fa59f49f08c96b20c8fc11ea8.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SMb7a2475fa59f49f08c96b20c8fc11ea8\",\"dateSent\":null,\"dateCreated\":\"2022-02-28T17:26:47.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SMb7a2475fa59f49f08c96b20c8fc11ea8/Media.json\"}}', 'DELEVERED', 'Test', 0, '2022-02-28 17:26:47', '2022-02-28 17:26:47'),
(117, 4, '+8801766221374', '{\"body\":\"hay\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+8801766221374\",\"dateUpdated\":\"2022-03-01T04:24:46.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM505b8a09d05e4efca875240e7145ce78.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SM505b8a09d05e4efca875240e7145ce78\",\"dateSent\":null,\"dateCreated\":\"2022-03-01T04:24:46.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM505b8a09d05e4efca875240e7145ce78/Media.json\"}}', 'DELEVERED', 'hay', 0, '2022-03-01 04:24:46', '2022-03-01 04:24:46'),
(118, 4, '+8801766221373', '{\"body\":\"hi\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+8801766221373\",\"dateUpdated\":\"2022-03-01T04:25:16.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM7fe3bcc1abda4134a4a666fa701c3adf.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SM7fe3bcc1abda4134a4a666fa701c3adf\",\"dateSent\":null,\"dateCreated\":\"2022-03-01T04:25:16.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM7fe3bcc1abda4134a4a666fa701c3adf/Media.json\"}}', 'DELEVERED', 'hi', 0, '2022-03-01 04:25:16', '2022-03-01 04:25:16'),
(119, 4, '+8801571373460', '{\"body\":\"hm\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+8801571373460\",\"dateUpdated\":\"2022-03-01T04:25:35.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM51d245d09a984862a277bdeee75c0cd5.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SM51d245d09a984862a277bdeee75c0cd5\",\"dateSent\":null,\"dateCreated\":\"2022-03-01T04:25:35.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM51d245d09a984862a277bdeee75c0cd5/Media.json\"}}', 'DELEVERED', 'hm', 0, '2022-03-01 04:25:36', '2022-03-01 04:25:36'),
(120, 4, '+8801766221374', '{\"body\":\"ok\\nok2\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+8801766221374\",\"dateUpdated\":\"2022-03-01T04:27:17.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM87a7352705bc4474859b2940f59cc588.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SM87a7352705bc4474859b2940f59cc588\",\"dateSent\":null,\"dateCreated\":\"2022-03-01T04:27:17.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM87a7352705bc4474859b2940f59cc588/Media.json\"}}', 'DELEVERED', 'ok\nok2', 0, '2022-03-01 04:27:17', '2022-03-01 04:27:17'),
(121, 4, '+8801571373460', '{\"body\":\"123456\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+8801571373460\",\"dateUpdated\":\"2022-03-01T04:27:50.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SMe16f33c97a5a4453b88e819e4707d822.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SMe16f33c97a5a4453b88e819e4707d822\",\"dateSent\":null,\"dateCreated\":\"2022-03-01T04:27:50.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SMe16f33c97a5a4453b88e819e4707d822/Media.json\"}}', 'DELEVERED', '123456', 0, '2022-03-01 04:27:50', '2022-03-01 04:27:50'),
(122, 4, '+8801766221374', '{\"body\":\"111\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+8801766221374\",\"dateUpdated\":\"2022-03-01T04:28:20.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SMf9bbebe89e9e40f2b949a832de708476.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SMf9bbebe89e9e40f2b949a832de708476\",\"dateSent\":null,\"dateCreated\":\"2022-03-01T04:28:20.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SMf9bbebe89e9e40f2b949a832de708476/Media.json\"}}', 'DELEVERED', '111', 0, '2022-03-01 04:28:20', '2022-03-01 04:28:20'),
(123, 4, '+8801766221374', '{\"body\":\"222\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+8801766221374\",\"dateUpdated\":\"2022-03-01T04:28:39.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM6c709b69918548f99657530c0f8c80c6.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SM6c709b69918548f99657530c0f8c80c6\",\"dateSent\":null,\"dateCreated\":\"2022-03-01T04:28:39.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM6c709b69918548f99657530c0f8c80c6/Media.json\"}}', 'DELEVERED', '222', 0, '2022-03-01 04:28:40', '2022-03-01 04:28:40'),
(124, 4, '+8801571373460', '{\"body\":\"ppppp\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+8801571373460\",\"dateUpdated\":\"2022-03-01T04:29:08.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM2d9252695e4d4b8f993db51642a5327d.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SM2d9252695e4d4b8f993db51642a5327d\",\"dateSent\":null,\"dateCreated\":\"2022-03-01T04:29:08.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM2d9252695e4d4b8f993db51642a5327d/Media.json\"}}', 'DELEVERED', 'ppppp', 0, '2022-03-01 04:29:08', '2022-03-01 04:29:08'),
(125, 4, '+8801571373460', '{\"body\":\"okkk\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+8801571373460\",\"dateUpdated\":\"2022-03-01T04:29:25.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM694cc71bd2014757bda9c295f8139362.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SM694cc71bd2014757bda9c295f8139362\",\"dateSent\":null,\"dateCreated\":\"2022-03-01T04:29:25.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM694cc71bd2014757bda9c295f8139362/Media.json\"}}', 'DELEVERED', 'okkk', 0, '2022-03-01 04:29:25', '2022-03-01 04:29:25'),
(126, 4, '+8801571373460', '{\"body\":\"oppp\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+8801571373460\",\"dateUpdated\":\"2022-03-01T04:29:47.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM5cc6c03e3d4141c195f3b625dab75628.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SM5cc6c03e3d4141c195f3b625dab75628\",\"dateSent\":null,\"dateCreated\":\"2022-03-01T04:29:47.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM5cc6c03e3d4141c195f3b625dab75628/Media.json\"}}', 'DELEVERED', 'oppp', 0, '2022-03-01 04:29:47', '2022-03-01 04:29:47'),
(127, 4, '+8801766221374', '{\"body\":\"okk\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+8801766221374\",\"dateUpdated\":\"2022-03-01T04:32:54.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SMa9fc598a614d4ec9838de4920fb95e2a.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SMa9fc598a614d4ec9838de4920fb95e2a\",\"dateSent\":null,\"dateCreated\":\"2022-03-01T04:32:54.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SMa9fc598a614d4ec9838de4920fb95e2a/Media.json\"}}', 'DELEVERED', 'okk', 0, '2022-03-01 04:32:54', '2022-03-01 04:32:54'),
(128, 4, '+18554751693', '{\"body\":\"Hello\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+18554751693\",\"dateUpdated\":\"2022-03-15T22:34:01.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM39bb13316078490e9798293e0a28ba17.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SM39bb13316078490e9798293e0a28ba17\",\"dateSent\":null,\"dateCreated\":\"2022-03-15T22:34:01.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM39bb13316078490e9798293e0a28ba17/Media.json\"}}', 'DELEVERED', 'Hello', 0, '2022-03-15 22:34:01', '2022-03-15 22:34:01'),
(129, 4, '+8801766221374', '{\"body\":\"sob dynamic\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+8801766221374\",\"dateUpdated\":\"2022-05-12T07:11:03.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM42f0da3ba89c4e7c806853a844eb56c5.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SM42f0da3ba89c4e7c806853a844eb56c5\",\"dateSent\":null,\"dateCreated\":\"2022-05-12T07:11:03.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM42f0da3ba89c4e7c806853a844eb56c5/Media.json\"}}', 'DELEVERED', 'sob dynamic', 0, '2022-05-12 07:11:18', '2022-05-12 07:11:18'),
(130, 0, '231387878787', '{\"body\":\"hello\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+8801766221374\",\"dateUpdated\":\"2022-05-14T09:43:58.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM01cf46e2daab479592f1207fe8f70ead.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SM01cf46e2daab479592f1207fe8f70ead\",\"dateSent\":null,\"dateCreated\":\"2022-05-14T09:43:58.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM01cf46e2daab479592f1207fe8f70ead/Media.json\"}}', 'DELEVERED', 'hello', 0, '2022-05-14 09:43:58', '2022-05-14 09:43:58'),
(131, 0, '+8801571731870', '{\"body\":\"kreltm\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+8801571731870\",\"dateUpdated\":\"2022-05-14T10:09:35.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM6b8019b4eb764251802f414b0f7a06c3.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SM6b8019b4eb764251802f414b0f7a06c3\",\"dateSent\":null,\"dateCreated\":\"2022-05-14T10:09:35.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM6b8019b4eb764251802f414b0f7a06c3/Media.json\"}}', 'DELEVERED', 'kreltm\n', 0, '2022-05-14 10:09:35', '2022-05-14 10:09:35'),
(132, 0, '+8801571731870', '{\"body\":\"hoi\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+8801571731870\",\"dateUpdated\":\"2022-05-14T10:11:05.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM5fa60d8082f545ac9d7d53e6b4cccb83.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SM5fa60d8082f545ac9d7d53e6b4cccb83\",\"dateSent\":null,\"dateCreated\":\"2022-05-14T10:11:05.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SM5fa60d8082f545ac9d7d53e6b4cccb83/Media.json\"}}', 'DELEVERED', 'hoi', 0, '2022-05-14 10:11:05', '2022-05-14 10:11:05'),
(133, 4, '+8801571731870', '{\"body\":\"hi\",\"numSegments\":\"1\",\"direction\":\"outbound-api\",\"from\":\"+18557111782\",\"to\":\"+8801571731870\",\"dateUpdated\":\"2022-05-14T12:26:10.000Z\",\"price\":null,\"errorMessage\":null,\"uri\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SMb6eba0545f504b26aa5b980bc9000469.json\",\"accountSid\":\"AC4495374d9c9a6153f5c291a2cd3d95be\",\"numMedia\":\"0\",\"status\":\"queued\",\"messagingServiceSid\":null,\"sid\":\"SMb6eba0545f504b26aa5b980bc9000469\",\"dateSent\":null,\"dateCreated\":\"2022-05-14T12:26:10.000Z\",\"errorCode\":null,\"priceUnit\":\"USD\",\"apiVersion\":\"2010-04-01\",\"subresourceUris\":{\"media\":\"/2010-04-01/Accounts/AC4495374d9c9a6153f5c291a2cd3d95be/Messages/SMb6eba0545f504b26aa5b980bc9000469/Media.json\"}}', 'DELEVERED', 'hi', 0, '2022-05-14 12:26:11', '2022-05-14 12:26:11');

-- --------------------------------------------------------

--
-- Table structure for table `client_notes`
--

CREATE TABLE `client_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) NOT NULL,
  `people_id` int(10) UNSIGNED NOT NULL,
  `note` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client_notes`
--

INSERT INTO `client_notes` (`id`, `user_id`, `people_id`, `note`, `created_at`, `updated_at`) VALUES
(1, 22305, 4, 'this is note 1', '2022-05-14 06:22:55', '2022-05-14 06:22:55'),
(2, 22305, 4, 'this is note 2', '2022-05-14 06:23:08', '2022-05-14 06:23:08'),
(3, 22305, 4, 'this is note 3', '2022-05-14 06:23:16', '2022-05-14 06:23:16'),
(4, 0, 1, 'sdg', '2022-05-14 09:02:42', '2022-05-14 09:02:42'),
(5, 0, 1, 'dghh', '2022-05-14 09:03:46', '2022-05-14 09:03:46'),
(6, 0, 1, 'ewr', '2022-05-14 09:04:52', '2022-05-14 09:04:52'),
(7, 0, 6, 'wee', '2022-05-14 09:06:54', '2022-05-14 09:06:54'),
(8, 0, 4, 'first', '2022-05-18 12:30:25', '2022-05-18 12:30:25'),
(9, 0, 4, '2nd', '2022-05-18 12:30:30', '2022-05-18 12:30:30');

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` int(11) NOT NULL,
  `people_id` int(11) DEFAULT NULL,
  `from_id` int(11) DEFAULT NULL,
  `inbox_key` varchar(191) DEFAULT NULL,
  `unread_message` int(11) NOT NULL DEFAULT 0,
  `is_close` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 is not closed, 1 is closed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`id`, `people_id`, `from_id`, `inbox_key`, `unread_message`, `is_close`, `created_at`, `updated_at`) VALUES
(6, 22311, 22305, '+8801571373460', 0, 1, '2022-02-23 11:50:42', '2022-03-01 04:29:47'),
(7, 22341, 22305, '+18554751693', 0, 1, '2022-02-23 12:00:46', '2022-03-15 22:34:01'),
(8, 22308, 22305, '+8801766221374', 0, 0, '2022-02-23 12:56:30', '2022-05-14 09:43:57'),
(14, 22340, 22305, '+8801766221373', 0, 1, '2022-02-27 08:51:00', '2022-03-01 04:25:17'),
(15, 22305, 22305, '+8801766221372', 0, 1, '2022-02-28 05:07:40', '2022-02-28 05:07:40'),
(16, 22346, 22305, '32423423423', 0, 0, '2022-05-12 07:14:40', '2022-05-12 07:17:42'),
(17, 4, 22305, '+8801571731870', 0, 0, '2022-05-14 10:08:22', '2022-05-14 12:26:09');

-- --------------------------------------------------------

--
-- Table structure for table `counter_live_rates`
--

CREATE TABLE `counter_live_rates` (
  `id` int(11) NOT NULL,
  `counter` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `update_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `counter_live_rates`
--

INSERT INTO `counter_live_rates` (`id`, `counter`, `created_at`, `update_at`) VALUES
(1, 1732, '2022-02-03 11:48:11', '2022-02-03 11:48:11');

-- --------------------------------------------------------

--
-- Table structure for table `inboxes`
--

CREATE TABLE `inboxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `buddy_id` int(10) UNSIGNED NOT NULL,
  `inbox_key` char(36) DEFAULT NULL,
  `is_group` tinyint(1) DEFAULT 0,
  `group_name` varchar(255) DEFAULT NULL,
  `group_logo` varchar(255) DEFAULT NULL,
  `is_seen` tinyint(4) DEFAULT 0 COMMENT '0 mean not seen 1 mean seen',
  `is_deleted` tinyint(4) DEFAULT 0,
  `meta_data` tinytext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inboxes`
--

INSERT INTO `inboxes` (`id`, `user_id`, `buddy_id`, `inbox_key`, `is_group`, `group_name`, `group_logo`, `is_seen`, `is_deleted`, `meta_data`, `created_at`, `updated_at`) VALUES
(7, 22305, 22308, '2230522308', 0, NULL, NULL, 0, 0, NULL, '2022-02-26 11:55:48', '2022-02-26 11:55:48'),
(8, 22305, 22311, '2230522311', 0, NULL, NULL, 0, 0, NULL, '2022-05-12 09:45:38', '2022-05-12 09:45:38'),
(9, 22305, 22340, '2230522340', 0, NULL, NULL, 0, 0, NULL, '2022-05-12 09:45:47', '2022-05-12 09:45:47'),
(10, 22305, 22341, '2230522341', 0, NULL, NULL, 0, 0, NULL, '2022-05-14 09:45:35', '2022-05-14 09:45:35'),
(11, 22349, 22341, '2234122349', 0, NULL, NULL, 0, 0, NULL, '2022-05-21 12:12:31', '2022-05-21 12:12:31'),
(12, 22305, 22353, '2230522353', 0, NULL, NULL, 0, 0, NULL, '2022-05-26 10:38:34', '2022-05-26 10:38:34'),
(13, 22305, 0, 'NaN22305', 0, NULL, NULL, 0, 0, NULL, '2022-05-29 06:43:29', '2022-05-29 06:43:29'),
(14, 22305, 22354, '2230522354', 0, NULL, NULL, 0, 0, NULL, '2022-05-29 06:45:06', '2022-05-29 06:45:06');

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE `people` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `loan_purpose` varchar(255) DEFAULT NULL,
  `lead_id` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`id`, `user_id`, `first_name`, `last_name`, `email`, `contact`, `birthday`, `loan_purpose`, `lead_id`, `created_at`, `updated_at`) VALUES
(4, 22305, 'Nasuha', 'Akhter', 'nasuhaakhter52@gmail.com', '+8801571731870', '2022-02-01', 'Purchase', 0, '2022-02-21 05:03:34', '2022-02-21 05:03:34'),
(6, 0, '231', '123', '12312@gmail.com', '231387878787', '', 'Refinance', 0, '2022-05-14 06:16:16', '2022-05-14 06:16:16'),
(8, 0, 'this is ', 'new', 'sfdnskj@gmail.com', '979899892232', '', 'Refinance', 0, '2022-05-14 06:20:59', '2022-05-14 06:20:59');

-- --------------------------------------------------------

--
-- Table structure for table `reactions`
--

CREATE TABLE `reactions` (
  `id` int(11) NOT NULL,
  `msg_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reaction` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(191) DEFAULT NULL,
  `last_name` varchar(191) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `access` tinyint(4) NOT NULL DEFAULT 0,
  `user_type` varchar(191) NOT NULL DEFAULT 'USER',
  `forgot_code` varchar(10) DEFAULT NULL,
  `is_online` varchar(191) NOT NULL DEFAULT 'offline' COMMENT 'offline / online',
  `job_title` varchar(191) DEFAULT NULL,
  `branch_location` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `state` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `birth_place` varchar(191) DEFAULT NULL,
  `profile_pic` varchar(191) DEFAULT NULL,
  `gender` enum('MALE','FEMALE','OTHER') DEFAULT NULL,
  `social_accounts` text DEFAULT NULL COMMENT 'Facebook, Twitter, Instagram and Discord accounts links',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `password`, `access`, `user_type`, `forgot_code`, `is_online`, `job_title`, `branch_location`, `country`, `state`, `city`, `date_of_birth`, `birth_place`, `profile_pic`, `gender`, `social_accounts`, `created_at`, `updated_at`) VALUES
(22305, 'Blake', 'Bianchi', '+8801766221372', 'admin@gmail.com', '$bcrypt$v=98$r=10$ozxy+YMoX/X/iPJswwEBdg$kxz/nLt8+zdmOywZgtF9C6UBY+4eHQ8', 1, 'ADMIN', '839509', 'online', 'Web Developer', 'Sylhet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22308, 'Agent', 'Bhowmik', '+880\n1731870', 'agent@gmail.com', '$bcrypt$v=98$r=10$ozxy+YMoX/X/iPJswwEBdg$kxz/nLt8+zdmOywZgtF9C6UBY+4eHQ8', 1, 'AGENT', NULL, 'online', 'Web Developer', 'Sylhet', NULL, NULL, NULL, NULL, NULL, '/img/profile.png', NULL, NULL, NULL, NULL),
(22341, 'USA', 'Number', '+18554751693\\', 'usa@gmail.com', '$bcrypt$v=98$r=10$ozxy+YMoX/X/iPJswwEBdg$kxz/nLt8+zdmOywZgtF9C6UBY+4eHQ8', 1, 'USER', NULL, 'offline', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-23 05:00:44', '2022-02-23 09:00:29'),
(22349, 'Client', 'Bhowmik', '+880\r\n1731870', 'client@gmail.com', '$bcrypt$v=98$r=10$ozxy+YMoX/X/iPJswwEBdg$kxz/nLt8+zdmOywZgtF9C6UBY+4eHQ8', 1, 'CLIENT', NULL, 'online', 'Web Developer', 'Sylhet', NULL, NULL, NULL, NULL, NULL, '/img/profile.png', NULL, NULL, NULL, NULL),
(22353, 'user', 'one', '+18554751695\\', 'userone@gmail.com', '$bcrypt$v=98$r=10$ozxy+YMoX/X/iPJswwEBdg$kxz/nLt8+zdmOywZgtF9C6UBY+4eHQ8', 1, 'USER', NULL, 'offline', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-23 05:00:44', '2022-02-23 09:00:29'),
(22354, 'user', 'two', '+18554751696\\', 'usertwo@gmail.com', '$bcrypt$v=98$r=10$ozxy+YMoX/X/iPJswwEBdg$kxz/nLt8+zdmOywZgtF9C6UBY+4eHQ8', 1, 'USER', NULL, 'offline', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-23 05:00:44', '2022-02-23 09:00:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chats_inbox_key_index` (`inbox_key`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `client_chats`
--
ALTER TABLE `client_chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_notes`
--
ALTER TABLE `client_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counter_live_rates`
--
ALTER TABLE `counter_live_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inboxes`
--
ALTER TABLE `inboxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inboxes_inbox_key_index` (`inbox_key`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `buddy_id` (`buddy_id`);

--
-- Indexes for table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reactions`
--
ALTER TABLE `reactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `client_chats`
--
ALTER TABLE `client_chats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `client_notes`
--
ALTER TABLE `client_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `counter_live_rates`
--
ALTER TABLE `counter_live_rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inboxes`
--
ALTER TABLE `inboxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `people`
--
ALTER TABLE `people`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `reactions`
--
ALTER TABLE `reactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22355;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
