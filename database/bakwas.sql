-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Dec 08, 2015 at 09:53 AM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `restaurant_finder`
--

-- --------------------------------------------------------

--
-- Table structure for table `credit_cards`
--

CREATE TABLE `credit_cards` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `label` varchar(45) DEFAULT NULL,
  `cardnumber` int(16) DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `cvv` int(11) DEFAULT NULL,
  `name_on_the_card` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `credit_cards`
--

INSERT INTO `credit_cards` (`id`, `user_id`, `label`, `cardnumber`, `expiry_date`, `cvv`, `name_on_the_card`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 10, 'citi', 2147483647, '0000-00-00', 678, 'John doe', '2015-12-08 09:11:47', '2015-12-08 09:11:47', NULL),
(2, 10, 'citi', 2147483647, '0000-00-00', 678, 'John doe', '2015-12-08 09:11:47', '2015-12-08 09:11:47', NULL),
(3, 13, 'citi', 2147483647, '0000-00-00', 456, 'John doe', '2015-12-08 14:15:04', '2015-12-08 14:15:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `delivery_address`
--

CREATE TABLE `delivery_address` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `line1` varchar(45) DEFAULT NULL,
  `line2` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `zipcode` int(11) DEFAULT NULL,
  `phone` int(12) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `delivery_address`
--

INSERT INTO `delivery_address` (`id`, `user_id`, `line1`, `line2`, `city`, `state`, `zipcode`, `phone`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 10, 'line1', 'B2', 'jersey city', 'NJ', 7307, 2147483647, NULL, NULL, NULL),
(2, 10, 'line1', 'B2', 'jersey city', 'NJ', 7307, 2147483647, '2015-12-08 09:05:28', '2015-12-08 09:05:28', NULL),
(3, 10, 'line1', 'B2', 'jersey city', 'NJ', 7307, 2147483647, '2015-12-08 09:05:28', '2015-12-08 09:05:28', NULL),
(4, 13, 'line1', 'B2', 'jersey city', 'NJ', 7307, 2147483647, '2015-12-08 14:14:47', '2015-12-08 14:14:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `restaurant_id` int(11) DEFAULT NULL,
  `item` varchar(45) DEFAULT NULL,
  `detail` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `restaurant_id`, `item`, `detail`, `image`, `price`, `created_at`, `updated_at`, `deleted_at`) VALUES
(8, 4, 'laksdl', 'llk', '/assets/images/uploads/menu_4_xk1633cnfvclymuue80t81fd9pl7hffx.jpg', 10, '2015-12-05 23:48:26', '2015-12-06 02:22:45', NULL),
(15, 10, 'iterm', 'tesss', '/assets/images/uploads/menu_10_06d9rf9q5z8i3dpazsy769eb9rrf1222.jpg', 5.89, '2015-12-06 00:21:31', '2015-12-06 00:21:31', NULL),
(16, 11, 'iterm', 'desc', '/assets/images/uploads/menu_11_mo5h2fn7oaqdvu19bp0ac9jukfqeu06c.jpg', 3.56, '2015-12-06 00:22:20', '2015-12-06 00:22:20', NULL),
(17, 4, 'Healthy Pancakes All Day Breakfast', 'Oat, white egg, almond milk blueberry, banana and strawberry with honey or maple syrup.', '/assets/images/uploads/menu_4_0k0ai1dmshiugclaxxejwwsm0p5yyvc4.jpg', 60, '2015-12-06 00:25:00', '2015-12-06 02:20:44', NULL),
(21, 4, 'ITEM NAME', 'description', '/assets/images/uploads/menu_4_xob38p1zp6k82rhbnvym61sg627ie0pq.jpg', 4.5, '2015-12-06 02:23:07', '2015-12-06 02:23:07', NULL),
(22, 2, 'iterm', 'desc', '/assets/images/uploads/menu_2_qnmfo68k62c3diiz91bchj3fj7axtfty.jpg', 34, '2015-12-06 11:34:05', '2015-12-06 11:34:05', '2015-12-06 11:34:48'),
(23, 2, 'Healthy Pancakes All Day Breakfast', 'Oat, white egg, almond milk blueberry, banana and strawberry with honey or maple syrup.', '/assets/images/uploads/menu_2_phpiovxpi51rdme5ll93peqcn2l7ua8p.jpg', 34, '2015-12-06 11:36:30', '2015-12-06 11:36:30', '2015-12-06 11:38:33'),
(24, 2, 'Healthy Pancakes All Day Breakfast', 'Oat, white egg, almond milk blueberry, banana and strawberry with honey or maple syrup.', '/assets/images/uploads/menu_2_qdu6kaz5s9eugn8tz3vcyohxquspi1lu.jpg', 34, '2015-12-06 11:38:41', '2015-12-06 11:38:41', '2015-12-06 11:38:45'),
(25, 2, 'Healthy Pancakes All Day Breakfast', 'Oat, white egg, almond milk blueberry, banana and strawberry with honey or maple syrup.', '/assets/images/uploads/menu_2_pz7qimqjhe6jqhqoyv2vjjhd51ujyw5i.jpg', 80, '2015-12-08 04:32:13', '2015-12-08 04:32:13', '2015-12-08 04:32:48'),
(26, 2, 'Healthy Pancakes All Day Breakfast', 'Oat, white egg, almond milk blueberry, banana and strawberry with honey or maple syrup.', '/assets/images/uploads/menu_2_36pw7s2cr74trtzrxzzes6thkjrxv41r.jpg', 20, '2015-12-08 04:32:33', '2015-12-08 04:32:46', NULL),
(27, 2, 'iterm', 'tesss', '/assets/images/uploads/menu_2_qa20q1c0fgzt623o71if52wdkm7483hj.jpg', 2, '2015-12-08 05:06:57', '2015-12-08 05:06:57', NULL),
(28, 13, 'Healthy Pancakes All Day Breakfast', 'Oat, white egg, almond milk blueberry, banana and strawberry with honey or maple syrup.', '/assets/images/uploads/menu_13_28wjcsj3q0th0jl51zr78kmnk7e2tlw2.jpg', 20, '2015-12-08 14:11:20', '2015-12-08 14:12:43', '2015-12-08 14:12:45'),
(29, 13, 'Empanada de Pollo o Carne', 'A crescent-shaped pastry turnover filled with chicken or beef`', '/assets/images/uploads/menu_13_lpfbk7bat9sb1djdngn0tqyzmumvudz1.jpg', 2.7, '2015-12-08 14:12:14', '2015-12-08 14:12:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `restaurant_id` int(11) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `card_id` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `user_id`, `restaurant_id`, `total`, `card_id`, `address_id`, `created_at`, `status`, `updated_at`, `deleted_at`) VALUES
(20, 10, 2, 72, 2, 3, '2015-12-08 07:48:24', 5, '2015-12-08 07:48:24', NULL),
(21, 10, 4, 90, 1, 1, '2015-12-08 10:51:26', 6, '2015-12-08 10:51:26', NULL),
(22, 13, 13, 14, NULL, NULL, '2015-12-08 14:14:06', 1, '2015-12-08 14:14:06', NULL),
(23, 13, 13, 12, 3, 4, '2015-12-08 14:14:24', 6, '2015-12-08 14:14:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_menu`
--

CREATE TABLE `order_menu` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_menu`
--

INSERT INTO `order_menu` (`id`, `order_id`, `menu_id`, `quantity`, `price`, `created_at`, `updated_at`, `deleted_at`) VALUES
(15, 20, 26, 3, 20, '2015-12-08 07:48:24', '2015-12-08 07:48:24', NULL),
(16, 20, 27, 6, 2, '2015-12-08 07:48:24', '2015-12-08 07:48:24', NULL),
(17, 21, 8, 3, 10, '2015-12-08 10:51:26', '2015-12-08 10:51:26', NULL),
(18, 21, 17, 1, 60, '2015-12-08 10:51:26', '2015-12-08 10:51:26', NULL),
(19, 22, 29, 7, 2, '2015-12-08 14:14:06', '2015-12-08 14:14:06', NULL),
(20, 23, 29, 6, 2, '2015-12-08 14:14:24', '2015-12-08 14:14:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address1` varchar(45) DEFAULT NULL,
  `address2` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `zipcode` int(11) DEFAULT NULL,
  `phone` int(12) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `open_time` time DEFAULT NULL,
  `close_time` time DEFAULT NULL,
  `pos_lat` varchar(45) DEFAULT NULL,
  `pos_lon` varchar(45) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `review_count` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`id`, `owner_id`, `name`, `address1`, `address2`, `city`, `state`, `zipcode`, `phone`, `image`, `open_time`, `close_time`, `pos_lat`, `pos_lon`, `rating`, `review_count`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 11, 'test1', 'add1', 'add2', 'city', 'state', 7307, 2147483647, '/assets/images/uploads/wenalit9fwb9k7zb8j6rrq1qyn4508eh.png', '04:00:00', '10:00:00', '40.747644', '-74.0514218', 0, 0, 1, '2015-12-05 00:44:25', '2015-12-06 11:41:35', NULL),
(4, 11, 'restaurant name goes here', 'add1', 'add2', 'city', 'state', 7307, 2147483647, '/assets/images/uploads/it!kztzslii6sw8xk3u54ygiyn0gk7xw.jpg', '13:00:00', '10:00:00', '40.747644', '-74.0514218', 5, 1, 1, '2015-12-05 00:45:26', '2015-12-05 00:45:26', NULL),
(6, 8, 'new name', 'add1', 'add2', 'city', 'state', 7307, 2147483647, '/assets/images/uploads/0onqiqm7xm5kf86u2?b4?mjo$5yz?tvi.jpg', '04:00:00', '10:00:00', '40.747644', '-74.0514218', 0, 0, 1, '2015-12-05 00:54:08', '2015-12-05 00:54:08', NULL),
(10, 11, 'Ajay Kumar Ganesh', '55 lincoln street', 'B2', 'Jersey City', 'Uttar Pradesh', 7307, 2147483647, '/assets/images/uploads/!ptjd6eaz$ldrjo65ivqa1eh7w4c!d!n.jpg', '04:00:00', '10:00:00', '40.747644', '-74.0514218', 0, 0, 2, '2015-12-05 00:56:52', '2015-12-05 00:56:52', NULL),
(11, 11, 'aaa', '55 lincoln street', 'B2', 'jersey city', 'NJ', 7307, 2147483647, '/assets/images/uploads/4gav8li92pi62?h!qc4rkxkfh979fono.jpg', '14:58:00', '23:58:00', '40.747644', '-74.0514218', 0, 0, 2, '2015-12-05 09:53:02', '2015-12-05 09:53:02', '2015-12-06 11:48:01'),
(12, 11, 'tes', 'sdfsdf', 'sdfsdfs', 'dfsdfsdf', 'sdfsdfsdf', 234234, 234234235, 'sdgsdf', '04:26:41', '19:38:17', '34', '34', 234, 234, 2, '2015-12-06 16:42:26', '2015-12-06 16:42:26', '2015-12-06 11:48:02'),
(13, 12, 'Fiore Deli of Hoboken', '307 ', 'Grand St', 'hoboken', 'NJ', 7030, 2147483647, '/assets/images/uploads/tdnw83dkwbkgnsr78txh79s0wu8bwwba.jpg', '08:00:00', '21:00:00', '40.747644', '-74.0514218', 7, 2, 2, '2015-12-08 14:03:48', '2015-12-08 14:04:32', NULL),
(14, 12, 'Vitoâ€™s Italian Deli', '55 lincoln street', 'B2', 'jersey city', 'NJ', 7307, 2147483647, '/assets/images/uploads/p3iib9xl9dx3nvce50rbxfq6n2f60ab6.jpg', '11:58:00', '23:59:00', '40.747644', '-74.0514218', 0, 0, 1, '2015-12-08 14:06:16', '2015-12-08 14:06:16', '2015-12-08 14:06:31'),
(15, 12, 'Vitoâ€™s Italian Deli234', '55 lincoln street', 'B2', 'jersey city', 'NJ', 7307, 2147483647, '/assets/images/uploads/g5rwp9tz5slzvbkwofogs7a9hlng1ea1.jpg', '11:57:00', '14:58:00', '40.747644', '-74.0514218', 0, 0, 2, '2015-12-08 14:06:55', '2015-12-08 14:06:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `restaurant_id` int(11) DEFAULT NULL,
  `content` text,
  `rating` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `user_id`, `restaurant_id`, `content`, `rating`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 4, 'content', 4, '2015-12-06 16:42:26', '2015-12-06 16:42:26', NULL),
(2, 4, 4, 'content', 4, '2015-12-06 16:42:26', '2015-12-06 16:42:26', NULL),
(3, NULL, NULL, NULL, NULL, '2015-12-08 11:27:38', '2015-12-08 11:27:38', NULL),
(4, NULL, NULL, NULL, NULL, '2015-12-08 11:28:02', '2015-12-08 11:28:02', NULL),
(5, 10, 4, 'test', 5, '2015-12-08 11:28:32', '2015-12-08 11:28:32', NULL),
(6, 10, 4, 'test', 5, '2015-12-08 11:28:55', '2015-12-08 11:28:55', NULL),
(7, 10, 4, 'test', 5, '2015-12-08 11:29:17', '2015-12-08 11:29:17', NULL),
(8, 10, 4, 'test', 5, '2015-12-08 11:29:47', '2015-12-08 11:29:47', NULL),
(9, 13, 13, 'sldfjnskjd fnskjd fkljad flkjabsdsldfjnskjd fnskjd fkljad flkjabsdsldfjnskjd fnskjd fkljad flkjabsdsldfjnskjd fnskjd fkljad flkjabsdsldfjnskjd fnskjd fkljad flkjabsdsldfjnskjd fnskjd fkljad flkjabsdsldfjnskjd fnskjd fkljad flkjabsd', 9, '2015-12-08 14:17:10', '2015-12-08 14:17:10', NULL),
(10, 10, 13, 'askdjlfhsdkjf  adjlfhks kdjfh  lad;hf jlh askdjlfhsdkjf  adjlfhks kdjfh  lad;hf jlh askdjlfhsdkjf  adjlfhks kdjfh  lad;hf jlh askdjlfhsdkjf  adjlfhks kdjfh  lad;hf jlh askdjlfhsdkjf  adjlfhks kdjfh  lad;hf jlh askdjlfhsdkjf  adjlfhks kdjfh  lad;hf jlh ', 5, '2015-12-08 14:18:02', '2015-12-08 14:18:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `type` enum('user','restaurant_owner','admin') DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `first_name`, `last_name`, `phone`, `type`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin@stevens.edu', '$2y$10$ZJ4uWVlquRnJWRpAwnwh5eLkTHzUoG23Ih5YfrN7ddNlnBm0Obg.y', 'name1', 'Ganesh', 2147483647, 'admin', 1, '2015-12-04 20:17:04', '2015-12-04 20:17:04', NULL),
(4, 'shingle2@stevens.edu', '', 'name2', 'Ganesh', 2147483647, 'user', 1, '2015-12-04 20:22:15', '2015-12-04 20:22:15', NULL),
(8, 'ajay23romu@gmail.com', '$2y$10$Y26ff9tTGP8TIuwQy/QFc.MZTMr/JZnxYjEEj1IUSpQQGaW0Wbk3m', 'Ajay Kumar', 'Ganesh', 2147483647, 'user', 1, '2015-12-04 20:27:18', '2015-12-04 20:27:18', NULL),
(9, 'ajay23romu1@gmail.com', '$2y$10$T4TVpDVy2Pn3OxKuLgMDJOIJFJP8nTzJ99E2ZBX94wIDLGzlbr3Sq', 'Ajay Kumar', 'Ganesh', 2147483647, 'user', 1, '2015-12-04 20:27:58', '2015-12-04 20:27:58', NULL),
(10, 'godgeta.saiyan@gmail.com', '$2y$10$ZJ4uWVlquRnJWRpAwnwh5eLkTHzUoG23Ih5YfrN7ddNlnBm0Obg.y', 'Ajay Kumar', 'Ganesh', 2147483647, 'user', 1, '2015-12-04 20:28:51', '2015-12-04 20:28:51', NULL),
(11, 'aganesh1@stevens.edu', '$2y$10$q5fbNxQSwSrZUJLnLm8qOOEOc/AWZBIyyk.3u.JWM/D5YNuA20GTm', 'Ajay Kumar', 'Ganesh', 2147483647, 'restaurant_owner', 1, '2015-12-04 20:42:07', '2015-12-04 20:42:07', NULL),
(12, 'k@stevens.edu', '$2y$10$GENKyc2GjijlILmbV2p0F.H3nTHfOlt588AG30I9igUALsHzjO33q', 'keerthini', 'mahesh', 2147483647, 'restaurant_owner', 1, '2015-12-08 14:01:31', '2015-12-08 14:01:31', NULL),
(13, 'sagar@stevens.edu', '$2y$10$.N0duLzKoK3StV17oGCfxOQa9ckLmuPWWf.MIsJMTYsJGul05SQ4e', 'sagar', 'shah', 2147483647, 'user', 1, '2015-12-08 14:10:17', '2015-12-08 14:10:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_meta`
--

CREATE TABLE `users_meta` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `value` varchar(45) DEFAULT NULL,
  `option` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `credit_cards`
--
ALTER TABLE `credit_cards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_idx` (`user_id`);

--
-- Indexes for table `delivery_address`
--
ALTER TABLE `delivery_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_idx` (`user_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restaurant_id_idx` (`restaurant_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_idx` (`user_id`),
  ADD KEY `restaurant_id_idx` (`restaurant_id`),
  ADD KEY `card_id_idx` (`card_id`),
  ADD KEY `address_id` (`address_id`);

--
-- Indexes for table `order_menu`
--
ALTER TABLE `order_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id_idx` (`order_id`),
  ADD KEY `menu_id_idx` (`menu_id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owner_id_idx` (`owner_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_idx` (`user_id`),
  ADD KEY `restaurant_id_idx` (`restaurant_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`);

--
-- Indexes for table `users_meta`
--
ALTER TABLE `users_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_idx` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `credit_cards`
--
ALTER TABLE `credit_cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `delivery_address`
--
ALTER TABLE `delivery_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `order_menu`
--
ALTER TABLE `order_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `credit_cards`
--
ALTER TABLE `credit_cards`
  ADD CONSTRAINT `credit_card_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `delivery_address`
--
ALTER TABLE `delivery_address`
  ADD CONSTRAINT `delivery_address_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `restaurant_id` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_address_id` FOREIGN KEY (`address_id`) REFERENCES `delivery_address` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `order_card_id` FOREIGN KEY (`card_id`) REFERENCES `credit_cards` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `order_restaurant_id` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `order_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `order_menu`
--
ALTER TABLE `order_menu`
  ADD CONSTRAINT `order_menu_menu_id` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `order_menu_order_id` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD CONSTRAINT `owner_id` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_restaurant_id` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `review_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `users_meta`
--
ALTER TABLE `users_meta`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
