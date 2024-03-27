-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2023 at 03:21 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cbsphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking_list`
--

CREATE TABLE `booking_list` (
  `id` int(30) NOT NULL,
  `ref_code` varchar(100) NOT NULL,
  `client_id` int(30) NOT NULL,
  `cab_id` int(30) NOT NULL,
  `pickup_zone` text NOT NULL,
  `drop_zone` text NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 0 COMMENT '0 = Pending,\r\n1 = Driver has Confirmed,\r\n2 = Pickup,\r\n3 = drop-off,\r\n4 = cancelled',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_list`
--

INSERT INTO `booking_list` (`id`, `ref_code`, `client_id`, `cab_id`, `pickup_zone`, `drop_zone`, `status`, `date_created`, `date_updated`) VALUES
(28, '202309-00017', 18, 31, '', '', 4, '2023-09-30 14:50:02', '2023-09-30 14:50:14'),
(29, '202309-00017', 18, 31, '', '', 4, '2023-09-30 14:50:26', '2023-09-30 14:50:36'),
(30, '202309-00018', 18, 33, '', '', 4, '2023-09-30 16:16:01', '2023-09-30 16:16:15');

-- --------------------------------------------------------

--
-- Table structure for table `cab_list`
--

CREATE TABLE `cab_list` (
  `id` int(30) NOT NULL,
  `reg_code` varchar(100) NOT NULL,
  `category_id` int(30) NOT NULL,
  `cab_reg_no` varchar(200) NOT NULL,
  `body_no` varchar(100) NOT NULL,
  `cab_model` text NOT NULL,
  `cab_driver` text NOT NULL,
  `driver_contact` text NOT NULL,
  `driver_address` text NOT NULL,
  `password` text NOT NULL,
  `image_path` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `car_model_image_path` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cab_list`
--

INSERT INTO `cab_list` (`id`, `reg_code`, `category_id`, `cab_reg_no`, `body_no`, `cab_model`, `cab_driver`, `driver_contact`, `driver_address`, `password`, `image_path`, `status`, `delete_flag`, `date_created`, `date_updated`, `car_model_image_path`, `price`) VALUES
(31, '202309-00001', 1, 'KCM-001', '180', 'MAZDA Demio', 'kris', '0798876545', 'Nairobi', 'acdc4651af2bdb6ccc9e4dad6b8753dc', NULL, 1, 0, '2023-09-30 13:24:31', '2023-09-30 14:14:24', 'assets/img/demio.jpg', NULL),
(32, '202309-00002', 1, 'KDB-002', '160', 'NISSAN NOTE', 'tom', '075356744', 'Donholm', 'fe926ad1b60d65d961962982db2f70a7', NULL, 1, 0, '2023-09-30 13:26:32', '2023-09-30 14:15:40', 'assets/img/note.jpg', NULL),
(33, '202309-00003', 2, 'KCK-007', '164', 'TOYOTA RACTIS', 'Eric', '0789954', 'tassia', 'c242f17acea8e5bab81b899dcb04ff10', NULL, 1, 0, '2023-09-30 13:30:57', '2023-09-30 14:16:11', 'assets/img/ractis.jpg', NULL),
(34, '202309-00004', 3, 'KDC-897', '218', 'TOYOTA NOAH', 'Shem', '07864311', 'buruburu', '0162bdba0bbb2a43bc3ce5994d419c0d', NULL, 1, 0, '2023-09-30 13:33:48', '2023-09-30 14:16:59', 'assets/img/noah.jpg', NULL),
(35, '202309-00005', 1, 'KCP-334', '146', 'TOYOTA BELTA', 'Mark', '07898433', 'pipeline', '2cde03b2291bfd69af40f343bb43a9fe', NULL, 1, 0, '2023-09-30 13:36:54', '2023-09-30 14:17:32', 'assets/img/belta.jpg', NULL),
(36, '202309-00006', 1, 'KDC-765', '187', 'TOYOTA PREMIO', 'Chris', '07890654', 'cbd', 'd61835a4aec76eb06412429b5c6d9580', NULL, 1, 0, '2023-09-30 13:39:33', '2023-09-30 14:20:04', 'assets/img/premio.jpeg', NULL),
(37, '202309-00007', 1, 'KDC-812', '145', 'SUZUKI SWIFT', 'Sharon', '078953211', 'taj', 'ed179414e974ca5e1e0c2eb3e7e6824a', NULL, 1, 0, '2023-09-30 13:44:32', '2023-09-30 14:21:02', 'assets/img/swift.jpg', NULL),
(38, '202309-00008', 3, 'KCM-754', '124', 'PASSO', 'Drake', '0753226', 'luke', '2c80763766bd10bb85cba5e5da51758a', NULL, 1, 0, '2023-09-30 13:48:42', '2023-09-30 14:21:41', 'assets/img/passo.jpg', NULL),
(39, '202309-00009', 1, 'KDE-987', '265', 'MAZDA CX5', 'Ben', '07853234', 'nairobi', 'be5acdabf3d0ffa6da148b2b07d4322c', NULL, 1, 0, '2023-09-30 13:52:13', '2023-09-30 14:22:28', 'assets/img/cx5.jpg', NULL),
(40, '202309-00010', 2, 'KDG-096', '324', 'MERCEDES C250', 'Elly', '07896543', 'imara', 'd14193431c3be5fb70f5e6cea25536ee', NULL, 1, 0, '2023-09-30 13:54:15', '2023-09-30 14:24:31', 'assets/img/mercedes.jpg', NULL),
(41, '202309-00011', 2, 'KJF-875', '147', 'HONDA FIT', 'Gabu', '0789644', 'savannah', '776ceab9cbee1eea7663b8d2838a18f3', 'assets/img/honda.jpg', 1, 0, '2023-09-30 13:56:19', '2023-09-30 14:26:43', 'assets/img/honda.png', NULL),
(42, '202309-00012', 2, 'KGR-974', '189', 'MAZDA AXELA', 'Tarry', '0789954', 'Tena', '2d9c4c3be1859f43b2f52b0bcc4f294a', NULL, 1, 0, '2023-09-30 13:58:26', '2023-09-30 14:28:10', 'assets/img/axela.jpeg', NULL),
(43, '202309-00013', 3, 'KJD-765', '$207', 'TOYOTA WISH', 'Paul', '07123232', 'kayole', 'd1f3e4352f22a576309f4b5c0eb44e3e', NULL, 1, 0, '2023-09-30 14:00:34', '2023-09-30 14:49:42', 'assets/img/wish.jpg', NULL),
(44, '202309-00014', 3, 'KRT-871', '289', 'TOYOTA SIENTA', 'peter', '07952463', 'Embakasi', 'ace265bd8549267be91ecfcf81906e52', NULL, 1, 0, '2023-09-30 14:03:07', '2023-09-30 14:30:45', 'assets/img/sienta.png', NULL),
(45, '202309-00015', 3, 'KLM-653', '306', 'NISSAN SERENA', 'Saly', '078111232', 'kibra', 'fbd6c29ae69015e81268264fc79af338', NULL, 1, 0, '2023-09-30 14:07:36', '2023-09-30 14:31:51', 'assets/img/serena.jpg', NULL),
(46, '202309-00016', 3, 'KTD', '367', 'TOYOTA ALPHARD', 'Ian', '086322222', 'langatta', '400683122cdf67f9a6ac660325f5a033', NULL, 1, 0, '2023-09-30 14:33:50', '2023-09-30 14:34:16', 'assets/img/alphard.jpg', NULL),
(47, '202309-00017', 3, 'KJT-856', '$565', 'mazda vc', 'manan', '776666665', 'JITY', 'be5acdabf3d0ffa6da148b2b07d4322c', NULL, 1, 0, '2023-09-30 14:53:19', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_list`
--

CREATE TABLE `category_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category_list`
--

INSERT INTO `category_list` (`id`, `name`, `description`, `delete_flag`, `status`, `date_created`, `date_updated`) VALUES
(1, '5 Seater', 'A 4-door passenger car with a trunk that is separate from the passengers with a three-box body: the engine, the area for passengers, and the trunk.', 0, 1, '2022-03-01 10:03:54', '2022-03-02 13:03:14'),
(2, '6 Seater', 'Quisque iaculis ipsum egestas nisi pharetra, ac laoreet felis tincidunt. Cras id gravida justo. Nulla non gravida risus, vel finibus leo. Phasellus vel eros ligula. Fusce a erat sed quam vehicula convallis.', 0, 1, '2022-03-01 10:08:10', '2022-03-27 14:45:51'),
(3, '7 Seater', 'Flexible, allowing you to switch between lots of seats or lots of boot space. The biggest manage to do both - comfortably taking six passengers and their stuff.', 0, 1, '2022-03-03 12:59:29', '2022-03-27 14:45:56');

-- --------------------------------------------------------

--
-- Table structure for table `client_list`
--

CREATE TABLE `client_list` (
  `id` int(30) NOT NULL,
  `firstname` text NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` text NOT NULL,
  `gender` text NOT NULL,
  `contact` text NOT NULL,
  `address` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `image_path` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_added` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client_list`
--

INSERT INTO `client_list` (`id`, `firstname`, `middlename`, `lastname`, `gender`, `contact`, `address`, `email`, `password`, `image_path`, `status`, `delete_flag`, `date_created`, `date_added`) VALUES
(1, 'Elizabeth', 'J.', 'Watson', 'Female', '1478555560', '85 Sycamore Lake Road', 'elizabeth@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'uploads/clients/1.png?v=1644995661', 1, 0, '2022-02-27 13:06:42', '2022-03-27 21:10:54'),
(2, 'Christine', 'M.', 'Moore', 'Female', '7412589666', '12 Bleck Street, PA', 'christine@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'uploads/clients/2.png?v=1648043485', 1, 0, '2022-03-01 19:36:24', '2022-03-27 21:10:40'),
(3, 'Luciano', 'B.', 'Fridley', 'Male', '7896585555', '372 Saint Marys Avenue', 'lsmith@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, 1, 0, '2022-03-01 13:13:38', '2022-03-27 21:11:06'),
(4, 'Matt', 'P.', 'Melton', 'Male', '4589658888', '870 School House Road', 'mattb@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, 1, 0, '2022-03-01 13:34:09', '2022-03-27 21:11:16'),
(5, 'James', 'P.', 'Luis', 'Male', '7850000010', '49 Poco Mas Drive', 'jamesp@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, 1, 0, '2022-03-01 13:39:25', '2022-03-27 21:11:28'),
(6, 'Timothy', 'E.', 'Maurer', 'Male', '1458965555', '75 Brannon Avenue', 'timothye@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, 1, 0, '2022-03-01 13:41:16', '2022-03-27 21:11:37'),
(7, 'Ebony', 'S.', 'Coulter', 'Female', '7850002145', '35 Simpson Street', 'ebonys@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, 1, 0, '2022-03-01 13:54:26', '2022-03-27 21:11:52'),
(8, 'Jason', 'F.', 'Billingsley', 'Male', '1458965555', '90 Jadewood Farms', 'jasonk@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, 1, 0, '2022-03-01 13:56:19', '2022-03-27 21:12:06'),
(9, 'Daniel', 'J.', 'Amos', 'Male', '4565550010', '77 Driftwood Road', 'daniel@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, 1, 0, '2022-03-01 13:59:54', '2022-03-27 21:12:17'),
(10, 'Edith', 'D.', 'Collins', 'Male', '1458965555', '90 Glory Road', 'edith@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, 1, 0, '2022-03-01 14:09:00', '2022-03-27 21:12:31'),
(11, 'Gina', 'J.', 'Bernard', 'Female', '1456854100', '41 Coulter Lane', 'ginac@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, 1, 0, '2022-03-01 14:14:37', '2022-03-27 21:12:47'),
(12, 'Thomas', 'J.', 'Greenwood', 'Male', '4569000010', '70 Elk Avenue', 'thomas@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'uploads/clients/12.png?v=1648370087', 1, 0, '2022-03-01 14:19:47', '2022-03-27 21:12:59'),
(13, 'Peter', 'J.', 'Fidley', 'Male', '1456985555', '42 Ridge Road', 'peter@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, 1, 0, '2022-03-27 21:10:14', NULL),
(14, 'John', 'H.', 'Hampton', 'Male', '4789652210', '50 Pooh Bear Lane', 'johnhm@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, 1, 0, '2022-03-27 22:20:32', NULL),
(15, 'Maria', 'J.', 'Connors', 'Female', '1478523655', '76 Richland Avenue', 'mariaj@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, 1, 0, '2022-03-27 22:21:08', NULL),
(16, 'Karen', 'M.', 'Brewer', 'Female', '1458888888', '591 Leisure Lane', 'karenb@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, 1, 0, '2022-03-27 22:21:53', NULL),
(17, 'Norma', 'K.', 'Gravelle', 'Female', '1458965555', '66 Blane Street', 'normak@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, 1, 0, '2022-03-27 22:24:54', NULL),
(18, 'Chris', 'Peter', 'Aloo', 'Male', '76664545353', '00100', 'chris@gmail.com', '1ce3cdf816a3a4ccdb35fa55de0e8057', NULL, 1, 0, '2023-09-20 17:24:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Cab Booking System'),
(6, 'short_name', 'CBS - PHP'),
(11, 'logo', 'uploads/1648050060_cbslg.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/1695379440_wall.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Liam', 'admin', 'd00f5d5217896fb7fd601412cb890830', 'uploads/1624000_adminicn.png', NULL, 1, '2022-01-19 14:02:37', '2022-03-27 21:51:35'),
(8, 'Martha', 'Heath', 'martha', '3003051F6D158F6687B8A820C46BFA80', 'uploads/avatar-8.png?v=1648396920', NULL, 2, '2022-03-01 16:14:00', '2022-03-27 21:47:00'),
(9, 'Andrew', 'Stokes', 'andrew', '5f4dcc3b5aa765d61d8327deb882cf99', 'uploads/avatar-9.png?v=1648396901', NULL, 2, '2022-03-27 21:46:41', '2022-03-27 21:46:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking_list`
--
ALTER TABLE `booking_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cab_id` (`cab_id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `cab_list`
--
ALTER TABLE `cab_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `category_list`
--
ALTER TABLE `category_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_list`
--
ALTER TABLE `client_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
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
-- AUTO_INCREMENT for table `booking_list`
--
ALTER TABLE `booking_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `cab_list`
--
ALTER TABLE `cab_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `category_list`
--
ALTER TABLE `category_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `client_list`
--
ALTER TABLE `client_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking_list`
--
ALTER TABLE `booking_list`
  ADD CONSTRAINT `booking_list_ibfk_1` FOREIGN KEY (`cab_id`) REFERENCES `cab_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `booking_list_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `client_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cab_list`
--
ALTER TABLE `cab_list`
  ADD CONSTRAINT `cab_list_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category_list` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
