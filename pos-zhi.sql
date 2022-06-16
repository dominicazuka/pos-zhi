-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2022 at 12:31 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos-zhi`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `date`) VALUES
(1, 'Wine', '2022-04-25 15:19:40'),
(2, 'spirits', '2022-04-25 15:19:46'),
(3, 'Beer', '2022-04-25 15:19:51');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `idDocument` int(11) NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `address` text NOT NULL,
  `birthdate` date NOT NULL,
  `purchases` int(11) NOT NULL,
  `lastPurchase` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `registerDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `idDocument`, `email`, `phone`, `address`, `birthdate`, `purchases`, `lastPurchase`, `registerDate`) VALUES
(3, 'Ali', 102, 'ali@gmail.com', '(803) 214-6321', 'kaduna', '2010-02-20', 4, '2022-05-01 15:56:28', '2022-05-01 15:56:28'),
(4, 'Ike', 12, 'ike@gmail.com', '(803) 214-6321', 'Wukari', '1998-04-02', 4, '2022-05-16 14:03:10', '2022-05-16 20:03:10'),
(5, 'Stephen', 103, 'stephen@gmail.com', '(803) 214-6321', 'Wukari', '1998-10-01', 16, '2022-05-06 04:58:37', '2022-05-06 10:58:37'),
(6, 'Jennifer', 104, 'jen@gmail.com', '(803) 214-6321', 'Wukari', '1998-09-23', 6, '2022-05-26 10:31:31', '2022-05-26 16:31:31'),
(7, 'Sapa', 203, 'sapa@gmail.com', '(803) 214-6321', 'wukari', '1998-03-04', 2, '2022-05-01 15:57:40', '2022-05-01 15:57:40'),
(8, 'Man', 9, 'man@gmail.com', '(803) 214-6321', 'wukari', '1998-04-02', 0, '2022-05-01 15:57:48', '2022-05-01 15:57:48'),
(9, 'OpenSource', 202, 'open@gmail.com', '(803) 214-6321', 'wukari', '2010-09-09', 0, '2022-05-01 15:59:11', '2022-05-01 15:59:11');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `idCategory` int(11) NOT NULL,
  `code` text NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `stock` int(11) NOT NULL,
  `buyingPrice` float NOT NULL,
  `sellingPrice` float NOT NULL,
  `sales` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `idCategory`, `code`, `description`, `image`, `stock`, `buyingPrice`, `sellingPrice`, `sales`, `date`) VALUES
(4, 3, '301', ' Goldberg', 'views/img/products/301/922.jpg', 57, 200, 280, 4, '2022-04-30 08:54:03'),
(5, 3, '302', 'Gulder', 'views/img/products/302/208.png', 63, 190, 266, 2, '2022-04-30 08:54:07'),
(42, 3, '303', 'Trophy stout', 'views/img/products/303/104.jpg', 30, 300, 420, 0, '2022-04-30 12:09:29'),
(43, 3, '304', 'Heneiken', 'views/img/products/304/877.jpg', 39, 250, 350, 1, '2022-05-26 16:31:31'),
(44, 3, '305', 'Sminorf Ice', 'views/img/products/305/728.jpg', 40, 300, 420, 0, '2022-04-30 12:11:53'),
(45, 3, '306', 'Budweiser', 'views/img/products/306/541.jpg', 15, 300, 420, 0, '2022-04-30 12:13:10'),
(46, 3, '307', 'Big legend', 'views/img/products/307/143.png', 30, 260, 364, 0, '2022-04-30 12:14:05'),
(47, 3, '308', 'Black bullet', 'views/img/products/308/598.jpg', 30, 300, 420, 0, '2022-04-30 12:15:12'),
(48, 3, '309', 'Sminorf Ice Double Black', 'views/img/products/309/683.jpg', 5, 300, 420, 0, '2022-04-30 12:17:02'),
(49, 3, '310', 'Big star', 'views/img/products/310/237.jpg', 18, 300, 420, 1, '2022-04-30 12:42:03'),
(50, 1, '101', 'Baron de valls', 'views/img/products/101/935.jpg', 8, 1500, 2100, 0, '2022-04-30 12:19:56'),
(51, 1, '102', 'Eva wine', 'views/img/products/102/428.jpg', 8, 1900, 2660, 1, '2022-04-30 12:42:57'),
(52, 1, '103', 'Andre', 'views/img/products/103/451.png', 7, 2000, 2800, 0, '2022-04-30 12:24:02'),
(53, 1, '104', 'Azul', 'views/img/products/104/896.jpg', 3, 3000, 4200, 0, '2022-04-30 12:24:59'),
(54, 1, '105', 'Luc Bellaire Rose', 'views/img/products/105/817.jpg', 4, 15000, 21000, 0, '2022-04-30 12:26:29'),
(55, 1, '106', 'Laurent Perrier Brut', 'views/img/products/106/236.jpg', 7, 16000, 22400, 1, '2022-04-30 12:42:03'),
(56, 1, '107', 'Hennessy', 'views/img/products/107/635.jpg', 49, 19000, 26600, 1, '2022-05-16 20:03:09'),
(57, 2, '201', 'Sminorf Ice X1', 'views/img/products/201/417.png', 4, 4000, 5600, 1, '2022-04-30 12:48:51'),
(58, 2, '202', 'MC Dowells', 'views/img/products/202/286.png', 8, 13000, 18200, 1, '2022-04-30 12:46:19'),
(59, 2, '203', 'Imperial Blue', 'views/img/products/203/566.jpg', 0, 4000, 5600, 9, '2022-05-06 10:58:37'),
(60, 2, '204', 'Calypso', 'views/img/products/204/332.jpg', 8, 5000, 7000, 5, '2022-05-26 16:31:30'),
(61, 2, '205', 'Best Cream', 'views/img/products/205/564.jpg', 6, 5000, 7000, 11, '2022-05-26 16:31:29');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `idCustomer` int(11) NOT NULL,
  `idSeller` int(11) NOT NULL,
  `products` text NOT NULL,
  `tax` int(11) NOT NULL,
  `netPrice` float NOT NULL,
  `totalPrice` float NOT NULL,
  `paymentMethod` text NOT NULL,
  `saledate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `code`, `idCustomer`, `idSeller`, `products`, `tax`, `netPrice`, `totalPrice`, `paymentMethod`, `saledate`) VALUES
(9, 10001, 3, 1, '[{\"id\":\"61\",\"description\":\"Best Cream\",\"quantity\":\"1\",\"stock\":\"16\",\"price\":\"7000\",\"totalPrice\":\"7000\"},{\"id\":\"55\",\"description\":\"Laurent Perrier Brut\",\"quantity\":\"1\",\"stock\":\"7\",\"price\":\"22400\",\"totalPrice\":\"22400\"},{\"id\":\"49\",\"description\":\"Big star\",\"quantity\":\"1\",\"stock\":\"18\",\"price\":\"420\",\"totalPrice\":\"420\"}]', 0, 29820, 29820, 'cash', '2021-04-30 12:42:03'),
(10, 10002, 4, 1, '[{\"id\":\"61\",\"description\":\"Best Cream\",\"quantity\":\"1\",\"stock\":\"15\",\"price\":\"7000\",\"totalPrice\":\"7000\"}]', 0, 7000, 7000, 'DC-1002', '2022-04-30 12:42:31'),
(11, 10003, 5, 1, '[{\"id\":\"51\",\"description\":\"Eva wine\",\"quantity\":\"1\",\"stock\":\"8\",\"price\":\"2660\",\"totalPrice\":\"2660\"}]', 0, 2660, 2660, 'transfer-2002', '2010-04-30 12:42:57'),
(12, 10004, 6, 1, '[{\"id\":\"60\",\"description\":\"Calypso\",\"quantity\":\"1\",\"stock\":\"12\",\"price\":\"7000\",\"totalPrice\":\"7000\"}]', 70, 7000, 7070, 'cash', '2020-04-30 12:43:23'),
(13, 10005, 6, 1, '[{\"id\":\"60\",\"description\":\"Calypso\",\"quantity\":\"1\",\"stock\":\"11\",\"price\":\"7000\",\"totalPrice\":\"7000\"},{\"id\":\"58\",\"description\":\"MC Dowells\",\"quantity\":\"1\",\"stock\":\"8\",\"price\":\"18200\",\"totalPrice\":\"18200\"}]', 0, 25200, 25200, 'cash', '2022-04-30 12:46:19'),
(14, 10006, 7, 1, '[{\"id\":\"59\",\"description\":\"Imperial Blue\",\"quantity\":\"1\",\"stock\":\"8\",\"price\":\"5600\",\"totalPrice\":\"5600\"},{\"id\":\"61\",\"description\":\"Best Cream\",\"quantity\":\"1\",\"stock\":\"14\",\"price\":\"7000\",\"totalPrice\":\"7000\"}]', 0, 12600, 12600, 'cash', '2022-04-30 12:48:00'),
(15, 10007, 5, 1, '[{\"id\":\"57\",\"description\":\"Sminorf Ice X1\",\"quantity\":\"1\",\"stock\":\"4\",\"price\":\"5600\",\"totalPrice\":\"5600\"}]', 0, 5600, 5600, 'cash', '2020-01-30 12:48:51'),
(16, 10008, 3, 1, '[{\"id\":\"60\",\"description\":\"Calypso\",\"quantity\":\"1\",\"stock\":\"10\",\"price\":\"7000\",\"totalPrice\":\"7000\"}]', 0, 7000, 7000, 'transfer-098', '2022-04-30 12:49:14'),
(17, 10009, 5, 3, '[{\"id\":\"61\",\"description\":\"Best Cream\",\"quantity\":\"6\",\"stock\":\"8\",\"price\":\"7000\",\"totalPrice\":\"42000\"},{\"id\":\"59\",\"description\":\"Imperial Blue\",\"quantity\":\"8\",\"stock\":\"0\",\"price\":\"5600\",\"totalPrice\":\"44800\"}]', 0, 47600, 47600, 'cash', '2022-05-06 10:58:37'),
(18, 10010, 4, 1, '[{\"id\":\"56\",\"description\":\"Hennessy\",\"quantity\":\"1\",\"stock\":\"49\",\"price\":\"26600\",\"totalPrice\":\"26600\"},{\"id\":\"61\",\"description\":\"Best Cream\",\"quantity\":\"1\",\"stock\":\"7\",\"price\":\"7000\",\"totalPrice\":\"7000\"},{\"id\":\"60\",\"description\":\"Calypso\",\"quantity\":\"1\",\"stock\":\"9\",\"price\":\"7000\",\"totalPrice\":\"7000\"}]', 0, 40600, 40600, 'cash', '2022-05-16 20:03:10'),
(19, 10011, 6, 1, '[{\"id\":\"61\",\"description\":\"Best Cream\",\"quantity\":\"1\",\"stock\":\"6\",\"price\":\"7000\",\"totalPrice\":\"7000\"},{\"id\":\"60\",\"description\":\"Calypso\",\"quantity\":\"1\",\"stock\":\"8\",\"price\":\"7000\",\"totalPrice\":\"7000\"},{\"id\":\"43\",\"description\":\"Heneiken\",\"quantity\":\"1\",\"stock\":\"39\",\"price\":\"350\",\"totalPrice\":\"350\"}]', 0, 14350, 14350, 'cash', '2022-05-26 16:31:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `user` text NOT NULL,
  `password` text NOT NULL,
  `profile` text NOT NULL,
  `photo` text NOT NULL,
  `status` int(11) NOT NULL,
  `lastLogin` datetime NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `user`, `password`, `profile`, `photo`, `status`, `lastLogin`, `date`) VALUES
(1, 'Administrator', 'admin', '$2a$07$asxx54ahjppf45sd87a5auJRR6foEJ7ynpjisKtbiKJbvJsoQ8VPS', 'Administrator', 'views/img/users/admin/948.jpg', 1, '2022-06-16 05:29:16', '2022-06-16 10:29:16'),
(3, 'Shedrack Yerima', 'shadrack', '$2a$07$asxx54ahjppf45sd87a5auJRR6foEJ7ynpjisKtbiKJbvJsoQ8VPS', 'Bar-Manager', 'views/img/users/shadrack/781.png', 1, '2022-05-26 11:33:08', '2022-05-26 16:33:08'),
(4, 'Ottah Stephen', 'ottah', '$2a$07$asxx54ahjppf45sd87a5auRajNP0zeqOkB9Qda.dSiTb2/n.wAC/2', 'Account-Officer', 'views/img/users/ottah/628.jpg', 1, '2022-05-26 11:34:33', '2022-05-26 16:34:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
