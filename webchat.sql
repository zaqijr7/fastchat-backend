-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2021 at 08:52 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webchat`
--

-- --------------------------------------------------------

--
-- Table structure for table `chathistory`
--

CREATE TABLE `chathistory` (
  `id_chat` int(11) NOT NULL,
  `senderId` int(11) NOT NULL,
  `receipentId` int(11) NOT NULL,
  `message` text NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chathistory`
--

INSERT INTO `chathistory` (`id_chat`, `senderId`, `receipentId`, `message`, `createdAt`, `updatedAt`) VALUES
(3, 2, 2, 'bales atuhh', '2021-05-17 05:33:22', '2021-05-17 05:33:22'),
(4, 5, 2, 'woy urg fahmi', '2021-05-17 06:02:08', '2021-05-17 06:02:08'),
(48, 2, 5, 'coba', '2021-05-17 08:41:37', '2021-05-17 08:41:37'),
(49, 2, 5, 'lagi', '2021-05-17 08:41:44', '2021-05-17 08:41:44'),
(50, 2, 5, 'lagi', '2021-05-17 08:41:44', '2021-05-17 08:41:44'),
(51, 2, 5, 'lagi', '2021-05-17 08:41:45', '2021-05-17 08:41:45'),
(52, 2, 5, 'lagi', '2021-05-17 08:41:46', '2021-05-17 08:41:46'),
(53, 2, 5, 'lagi', '2021-05-17 08:41:48', '2021-05-17 08:41:48'),
(54, 2, 5, 'lagi', '2021-05-17 08:42:55', '2021-05-17 08:42:55'),
(55, 2, 5, 'lagi', '2021-05-17 08:42:56', '2021-05-17 08:42:56'),
(56, 2, 5, 'va', '2021-05-17 08:43:04', '2021-05-17 08:43:04'),
(57, 2, 5, 'asd', '2021-05-17 08:44:40', '2021-05-17 08:44:40'),
(58, 2, 5, 'asdasd', '2021-05-17 08:44:54', '2021-05-17 08:44:54'),
(59, 2, 5, 'coba', '2021-05-17 08:45:58', '2021-05-17 08:45:58'),
(60, 2, 5, 'coba', '2021-05-17 08:48:04', '2021-05-17 08:48:04'),
(61, 2, 5, 'lagi', '2021-05-17 08:48:09', '2021-05-17 08:48:09'),
(62, 2, 5, 'as', '2021-05-17 08:51:15', '2021-05-17 08:51:15'),
(63, 2, 5, 'asdhaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaal', '2021-05-17 08:51:27', '2021-05-17 08:51:27'),
(64, 2, 5, 'as', '2021-05-17 08:53:32', '2021-05-17 08:53:32'),
(65, 2, 5, 'asda', '2021-05-17 08:56:28', '2021-05-17 08:56:28'),
(66, 2, 5, 'asda', '2021-05-17 08:59:38', '2021-05-17 08:59:38'),
(67, 2, 5, 'asd', '2021-05-17 09:00:04', '2021-05-17 09:00:04'),
(68, 2, 5, 'as', '2021-05-17 09:00:36', '2021-05-17 09:00:36'),
(69, 2, 5, 'asdasd', '2021-05-17 09:00:41', '2021-05-17 09:00:41'),
(70, 2, 5, 'ad', '2021-05-17 09:00:47', '2021-05-17 09:00:47'),
(71, 2, 5, 'asd', '2021-05-17 09:01:51', '2021-05-17 09:01:51'),
(72, 2, 5, 'd', '2021-05-17 09:03:28', '2021-05-17 09:03:28'),
(73, 2, 5, 'd', '2021-05-17 09:03:37', '2021-05-17 09:03:37'),
(74, 2, 5, 'asd', '2021-05-17 09:06:16', '2021-05-17 09:06:16'),
(75, 2, 5, 'opopopopopo', '2021-05-17 09:06:23', '2021-05-17 09:06:23'),
(76, 2, 5, 'dffddfgdfgvdssfrhgbdsfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffg', '2021-05-17 09:06:59', '2021-05-17 09:06:59'),
(77, 2, 5, 'asd', '2021-05-17 09:13:20', '2021-05-17 09:13:20'),
(78, 2, 5, 'asd', '2021-05-17 09:13:24', '2021-05-17 09:13:24'),
(79, 2, 5, 'ssdf', '2021-05-17 09:13:59', '2021-05-17 09:13:59'),
(80, 2, 5, 'asdasd', '2021-05-17 09:14:02', '2021-05-17 09:14:02'),
(81, 2, 5, 'dsf', '2021-05-17 09:20:58', '2021-05-17 09:20:58'),
(82, 2, 5, 'd', '2021-05-17 09:21:03', '2021-05-17 09:21:03'),
(83, 2, 5, 'sd', '2021-05-17 09:39:35', '2021-05-17 09:39:35'),
(84, 2, 5, 'asdasd', '2021-05-17 10:04:13', '2021-05-17 10:04:13'),
(85, 6, 2, 'hy sayang', '2021-05-17 10:31:13', '2021-05-17 10:31:13'),
(86, 2, 6, 'sdf', '2021-05-17 10:31:54', '2021-05-17 10:31:54'),
(87, 6, 2, 'hy sayang', '2021-05-17 10:32:22', '2021-05-17 10:32:22'),
(88, 6, 2, 'hy sayang', '2021-05-17 11:03:23', '2021-05-17 11:03:23'),
(89, 6, 2, 'hy sayang', '2021-05-17 11:03:27', '2021-05-17 11:03:27'),
(90, 2, 6, 'x', '2021-05-17 11:03:32', '2021-05-17 11:03:32'),
(91, 6, 2, 'hy sayang', '2021-05-17 11:03:42', '2021-05-17 11:03:42'),
(92, 6, 2, 'hy sayang', '2021-05-17 11:03:43', '2021-05-17 11:03:43'),
(93, 6, 2, 'hy sayang', '2021-05-17 11:04:10', '2021-05-17 11:04:10'),
(94, 2, 6, 'asdasd', '2021-05-17 11:04:13', '2021-05-17 11:04:13'),
(95, 6, 2, 'hy sayang', '2021-05-17 11:04:24', '2021-05-17 11:04:24'),
(96, 2, 6, 'as', '2021-05-17 11:05:15', '2021-05-17 11:05:15'),
(97, 2, 6, '\'', '2021-05-17 11:05:38', '2021-05-17 11:05:38'),
(98, 2, 6, 'kujlabsnfdjklabsdkjlasbdkujlabsnfdjklabsdkjlasbdkujlabsnfdjklabsdkjlasbdkujlabsnfdjklabsdkjlasbdkujlabsnfdjklabsdkjlasbdkujlabsnfdjklabsdkjlasbdkujlabsnfdjklabsdkjlasbdkujlabsnfdjklabsdkjlasbdkujlabsnfdjklabsdkjlasbdkujlabsnfdjklabsdkjlasbdkujlabsnfdjklabsdkjlasbdkujlabsnfdjklabsdkjlasbdkujlabsnfdjklabsdkjlasbdkujlabsnfdjklabsdkjlasbdkujlabsnfdjklabsdkjlasbdkujlabsnfdjklabsdkjlasbdkujlabsnfdjklabsdkjlasbdkujlabsnfdjklabsdkjlasbdkujlabsnfdjklabsdkjlasbdkujlabsnfdjklabsdkjlasbdkujlabsnfdjklabsdkjlasbdkujlabsnfdjklabsdkjlasbdkujlabsnfdjklabsdkjlasbd', '2021-05-17 11:05:56', '2021-05-17 11:05:56'),
(99, 2, 5, 'zdxc', '2021-05-17 11:13:53', '2021-05-17 11:13:53'),
(100, 6, 2, 'hy sayang', '2021-05-17 11:13:59', '2021-05-17 11:13:59'),
(101, 2, 4, 'uy', '2021-05-17 12:41:06', '2021-05-17 12:41:06'),
(102, 2, 6, 'sda', '2021-05-17 12:42:54', '2021-05-17 12:42:54'),
(103, 2, 3, 'uy', '2021-05-17 12:44:00', '2021-05-17 12:44:00'),
(104, 2, 6, 'hy', '2021-05-17 12:45:42', '2021-05-17 12:45:42'),
(105, 2, 6, 'zxc', '2021-05-17 12:47:09', '2021-05-17 12:47:09'),
(106, 2, 3, 'as', '2021-05-17 12:48:14', '2021-05-17 12:48:14'),
(107, 2, 4, 'asd', '2021-05-17 12:49:21', '2021-05-17 12:49:21'),
(108, 2, 3, 'dfg', '2021-05-17 12:50:04', '2021-05-17 12:50:04'),
(109, 2, 6, 'd', '2021-05-17 12:51:45', '2021-05-17 12:51:45'),
(110, 2, 4, 'a', '2021-05-17 12:53:24', '2021-05-17 12:53:24'),
(111, 2, 6, 'x', '2021-05-17 12:54:55', '2021-05-17 12:54:55'),
(112, 2, 5, 's', '2021-05-17 12:58:03', '2021-05-17 12:58:03'),
(113, 2, 5, 'as', '2021-05-17 12:59:52', '2021-05-17 12:59:52'),
(114, 2, 5, 's', '2021-05-17 12:59:56', '2021-05-17 12:59:56'),
(115, 2, 3, 'as', '2021-05-17 13:00:04', '2021-05-17 13:00:04'),
(116, 2, 3, 'asd', '2021-05-17 13:00:08', '2021-05-17 13:00:08'),
(117, 2, 3, 'asd', '2021-05-17 13:00:10', '2021-05-17 13:00:10'),
(118, 2, 3, 'asd', '2021-05-17 13:00:13', '2021-05-17 13:00:13'),
(119, 2, 3, 's', '2021-05-17 13:06:02', '2021-05-17 13:06:02'),
(120, 2, 6, 'asd', '2021-05-17 16:57:48', '2021-05-17 16:57:48'),
(121, 5, 2, 'halooo', '2021-05-17 18:32:15', '2021-05-17 18:32:15'),
(122, 5, 2, 'hii', '2021-05-17 18:32:26', '2021-05-17 18:32:26'),
(123, 5, 2, 'aa', '2021-05-17 18:32:38', '2021-05-17 18:32:38'),
(124, 5, 2, 'aa', '2021-05-17 18:33:05', '2021-05-17 18:33:05'),
(125, 5, 2, 's', '2021-05-17 18:33:10', '2021-05-17 18:33:10'),
(126, 5, 2, 'aaa', '2021-05-17 18:33:27', '2021-05-17 18:33:27'),
(127, 5, 2, 'fa', '2021-05-17 18:33:34', '2021-05-17 18:33:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `email` varchar(300) NOT NULL,
  `pin` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  `photo` varchar(350) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `email`, `pin`, `name`, `photo`, `createdAt`, `updatedAt`) VALUES
(2, 'zaqijr7@gmail.com', '$2b$10$F0/vC9o7x.RW17ju3mG/ZOgMuRsW/x0i/Be3tfg9zzbUNsg0m0RHq', 'zaqii', 'uploads/1621277190612-Untitled-1.png', '2021-05-17 01:10:01', '2021-05-17 18:46:30'),
(3, 'asdasd@gmail.com', '$2b$10$90RCuo5ekChBz/iQFQ0yJ.4Sw09VcvAfBxVBXojPhRMRmLS2E/FWS', 'Epul', NULL, '2021-05-17 02:27:57', '2021-05-17 12:36:25'),
(4, 'zaqijr', '$2b$10$vPAOlNbEmqXcN3Udn32sEu2CqNj3vvULo8Yj6bOa/vtMJkq9pkPkC', 'Ahmad', NULL, '2021-05-17 03:55:47', '2021-05-17 12:36:30'),
(5, 'emzetgroup45@gmail.com', '$2b$10$xWnXhXzzTQoJmOJr.KQ2L.wlkYk4CAtnvWA6T4kzv6KphCeA9KtwK', 'Pink', 'uploads/1621276288335-2faa00db1eadd32f9c32b5e4af56e61b.jpg', '2021-05-17 06:00:10', '2021-05-17 18:31:28'),
(6, 'kangojoltampan@gmail.com', '$2b$10$4PqReB6/QkdxZfY5lJaD9.UoC476m5HjxRZYguwVfATIKJkypW7ty', 'TIna', NULL, '2021-05-17 10:19:31', '2021-05-17 10:31:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chathistory`
--
ALTER TABLE `chathistory`
  ADD PRIMARY KEY (`id_chat`),
  ADD KEY `senderId` (`senderId`),
  ADD KEY `receipentId` (`receipentId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chathistory`
--
ALTER TABLE `chathistory`
  MODIFY `id_chat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chathistory`
--
ALTER TABLE `chathistory`
  ADD CONSTRAINT `chathistory_ibfk_1` FOREIGN KEY (`senderId`) REFERENCES `users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chathistory_ibfk_2` FOREIGN KEY (`receipentId`) REFERENCES `users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
