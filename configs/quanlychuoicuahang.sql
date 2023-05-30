-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2023 at 03:55 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quanlychuoicuahang`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(15) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gtinh` varchar(3) DEFAULT NULL,
  `user_admin` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `userName`, `password`, `email`, `address`, `phone`, `name`, `gtinh`, `user_admin`) VALUES
(8, 'ayloveyou', '123456756', '123@gmail.com', '123QN', '123456789', '1233333', 'nam', 0),
(9, 'ayloveyou123', 'ssssssss', 'ooooo@gmail.com', 'sài gòn', '0367039723', 'Nguyễn văn A', 'nam', 0),
(17, '12345667778', '123123123123', 'conggioi@gmail.com', '123Binhf dương', '0120302130', 'Nguyễn văn A', 'nam', 0),
(19, 'ádasdasdaaa', 'ssssssss', 'ddddwww@gmail.comn', 'goápopdopod', '01200231sdsd', 'sadassadsd', 'nữ', 0),
(22, 'aaaaaaaa', 'aaaaa', 'aaaaa@gmail.com', 'aaaaaa', '020203032', 'aaaaaaa', 'nam', 0),
(30, 'admin', 'admin', 'conggioi.pro264@gmail.com', 'không có', 'không có', 'Administrator', 'nam', 1),
(33, 'admin1234567', '12345678', 'admin1@gmail.com', 'óosossoso111', '03030443111', 'admin1231', 'nam', 0),
(36, 'admin12345678910', '123', 'Gioi.pro@gmail.com', 'quảng nam', '030494949', 'nguyễn công giới', 'nam', 0),
(43, '2154810057', '123', 'conggioi.pro264@gmail.com', '23321', '32123123', 'ssss', 'nam', 0),
(44, 'admindepzai', 'admin', 'nguyen@gmail.com', '00230000130', '021030123', 'Nguyễn Công Giới', 'nam', 0);

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `id` int(15) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `name`, `address`, `img`) VALUES
(1, 'đậu xanh', 'bình hải', '123.png'),
(4, 'Hamburger King', '108 Nguyễn Huệ, Quận 1, TP HCM', '123.png'),
(5, 'Chi Nhánh phụ 1', '23 Cộng Hòa, Q.Tân Bình, TPHCM', '123.png'),
(6, 'Chi Nhánh phụ 2', '23 Cộng Hòa, Q.Tân Bình, TPHCM', '123.png'),
(7, 'Chi Nhánh phụ 3', '23 Trường Chinh, Q.Tân Bình, TPHCM', '123.png'),
(8, 'Chi Nhánh phụ 4', '23 Hoàng Hoa Thám, Q.Tân Bình, TPHCM', '123.png'),
(9, 'Chi Nhánh phụ 5', '1 Nguyễn Huệ, Q.1, TPHCM', '123.png'),
(10, 'Chi Nhánh phụ 6', '200 Hoàng Sa, Q.Bình Thạnh, TPHCM', '123.png'),
(11, 'Chi Nhánh phụ 7', '54 Xô Viết Nghệ Tĩnh, Q.Bình Thạnh, TPHCM', '123.png'),
(12, 'Chi Nhánh phụ 8', '294 Paster, Q.3, TPHCM', '123.png'),
(13, 'Chi nhánh 9', '23 Nam Kỳ Khởi Nghĩa, Q.3, TP HCM', '123.png'),
(25, 'Chi nhánh 10', '102 Cộng Hòa, Q.Tân Bình, TP HCM', '123.png'),
(26, 'Chi nhánh 11', '83 Cộng Hòa, Q.Tân Bình, TP HCM', '123.png'),
(27, 'Chi nhánh 12', '61 Cộng Hòa, Q.Tân Bình, TP HCM', '123.png'),
(28, 'Chi nhánh 13', '205 Cộng Hòa, Q.Tân Bình, TP HCM', '123.png'),
(29, 'Chi nhánh 14', '193 Cộng Hòa, Q.Tân Bình, TP HCM', '123.png'),
(30, 'Chi nhánh 15', '100 Cộng Hòa, Q.Tân Bình, TP HCM', '123.png'),
(31, 'Chi nhánh 16', '70 Cộng Hòa, Q.Tân Bình, TP HCM', '123.png'),
(32, 'Chi nhánh 17', '201 Cộng Hòa, Q.Tân Bình, TP HCM', '123.png'),
(33, 'Chi nhánh 18', '147 Cộng Hòa, Q.Tân Bình, TP HCM', '123.png'),
(34, 'Chi nhánh 19', '80 Cộng Hòa, Q.Tân Bình, TP HCM', '123.png'),
(35, 'Chi nhánh 20', '111 Cộng Hòa, Q.Tân Bình, TP HCM', '123.png'),
(36, 'Chi nhánh 21', '66 Cộng Hòa, Q.Tân Bình, TP HCM', '123.png'),
(37, 'Chi nhánh 22', '147 Cộng Hòa, Q.Tân Bình, TP HCM', '123.png'),
(38, 'Chi nhánh 23', '88 Cộng Hòa, Q.Tân Bình, TP HCM', '123.png'),
(39, 'Chi nhánh 24', '149 Cộng Hòa, Q.Tân Bình, TP HCM', '123.png'),
(40, 'Chi nhánh 25', '232 Cộng Hòa, Q.Tân Bình, TP HCM', '123.png');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(15) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Bánh ngọt'),
(4, 'Hamburger thịt'),
(5, 'Nước uống');

-- --------------------------------------------------------

--
-- Table structure for table `oder`
--

CREATE TABLE `oder` (
  `id` int(15) NOT NULL,
  `user_id` int(15) NOT NULL,
  `status` enum('pending','delivered','shipping','cancel') NOT NULL DEFAULT 'pending',
  `create_order` datetime DEFAULT NULL,
  `order_completion` datetime DEFAULT NULL,
  `price_total` int(10) NOT NULL,
  `id_branch` int(15) NOT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oder`
--

INSERT INTO `oder` (`id`, `user_id`, `status`, `create_order`, `order_completion`, `price_total`, `id_branch`, `address`) VALUES
(42, 30, 'cancel', '2023-05-26 01:29:03', NULL, 66000, 32, 'không có'),
(43, 30, 'cancel', '2023-05-26 01:31:42', NULL, 199000, 39, 'không có');

-- --------------------------------------------------------

--
-- Table structure for table `oder_item`
--

CREATE TABLE `oder_item` (
  `id` int(15) NOT NULL,
  `oder_id` int(15) NOT NULL,
  `product_id` int(15) NOT NULL,
  `quantity` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oder_item`
--

INSERT INTO `oder_item` (`id`, `oder_id`, `product_id`, `quantity`) VALUES
(28, 42, 40, 3),
(29, 43, 37, 1),
(30, 43, 44, 2),
(31, 43, 46, 2);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(15) NOT NULL,
  `oder_id` int(15) NOT NULL,
  `method` enum('cash','card') NOT NULL DEFAULT 'cash'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(15) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `category_id` int(15) NOT NULL,
  `branch_id` int(15) NOT NULL,
  `image` varchar(255) NOT NULL,
  `expried` tinyint(1) NOT NULL,
  `discount` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `price`, `category_id`, `branch_id`, `image`, `expried`, `discount`) VALUES
(37, 'Bánh mì thịt chả', 'Bánh mì thịt chả', 25000.00, 1, 26, '/img/product/banh_mi_thit_cha.png', 0, 20),
(38, 'Bánh mì kẹp trứng', 'Bánh mì kẹp trứng', 25000.00, 1, 38, 'banh-mi-kep-trung.png', 0, NULL),
(39, 'Donut dâu', 'Donut dâu', 22000.00, 4, 6, 'donut_dau.png', 0, 10),
(40, 'Donut socola', '', 22000.00, 4, 6, 'Donut_socola.png', 0, 10),
(41, 'Gà xốt cay', 'Donut dâu', 37000.00, 4, 6, 'ga_xot_cay.png', 0, 15),
(42, 'Hamburger gà', 'Donut dâu', 40000.00, 4, 6, 'hbg_ga.png', 0, NULL),
(43, 'Hamburger thịt', 'Donut dâu', 45000.00, 4, 6, 'hbg_thit.png', 0, NULL),
(44, 'Hamburger trứng gà CN', 'Donut dâu', 22000.00, 4, 6, 'hbg_trung.png', 0, 15),
(45, 'Salad Trái cây sốt mayonnaise', 'Donut dâu', 22000.00, 4, 6, 'salad-trai-cay-sot-mayonnaise-13.png', 0, 10),
(46, 'Pizza hải sản ', 'Donut dâu', 65000.00, 4, 6, 'pz_hai_san.png', 0, 15),
(47, 'Pizza phomai', 'Donut dâu', 45000.00, 4, 6, 'pz_pho_mai.png', 0, NULL),
(48, 'Donut dâu', 'Donut dâu', 22000.00, 4, 6, 'donut_dau.png', 0, 10),
(49, 'Xúc xích', 'Donut dâu', 10000.00, 4, 6, 'xuc_xich.png', 0, 99),
(50, 'Bánh cuộn', '', 22000.00, 4, 6, 'kebab.png', 0, 10),
(51, 'Khoai tây chiên', 'Donut dâu', 37000.00, 4, 6, 'khoai_tay_chien.png', 0, NULL),
(52, 'Hamburger gà', 'Donut dâu', 40000.00, 4, 6, 'Kimbap.png', 0, NULL),
(53, 'Hamburger thịt', 'Donut dâu', 45000.00, 4, 6, 'hbg_thit.png', 0, NULL),
(54, 'Kim bắp chiên', 'Donut dâu', 30000.00, 4, 6, 'kimbap-chien.png', 0, 15),
(55, 'Mì hảo hảo trộn', 'Donut dâu', 10000.00, 4, 6, 'mi_tron.png', 0, NULL),
(56, 'Pizza hải sản ', 'Donut dâu', 65000.00, 4, 6, 'pz_hai_san.png', 0, NULL),
(57, 'Pizza phomai', 'Donut dâu', 45000.00, 4, 6, 'pz_pho_mai.png', 0, NULL),
(58, 'Donut dâu', 'Donut dâu', 22000.00, 4, 6, 'donut_dau.png', 0, NULL),
(59, 'Mì ý sốt bò bằm', 'Donut dâu', 10000.00, 4, 6, 'mi_y_sot_bo.png', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(15) NOT NULL,
  `user_id` int(15) NOT NULL,
  `product_id` int(15) NOT NULL,
  `rating` int(1) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userName` (`userName`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oder`
--
ALTER TABLE `oder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_oder_user` (`user_id`),
  ADD KEY `fk_branch_id` (`id_branch`);

--
-- Indexes for table `oder_item`
--
ALTER TABLE `oder_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_oder_item_oder` (`oder_id`),
  ADD KEY `fk_oder_item_product` (`product_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_payment_oder` (`oder_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_product_category` (`category_id`),
  ADD KEY `fk_product_branch` (`branch_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_review_user` (`user_id`),
  ADD KEY `fk_review_product` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `oder`
--
ALTER TABLE `oder`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `oder_item`
--
ALTER TABLE `oder_item`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `oder`
--
ALTER TABLE `oder`
  ADD CONSTRAINT `fk_branch_id` FOREIGN KEY (`id_branch`) REFERENCES `branch` (`id`),
  ADD CONSTRAINT `fk_oder_user` FOREIGN KEY (`user_id`) REFERENCES `account` (`id`);

--
-- Constraints for table `oder_item`
--
ALTER TABLE `oder_item`
  ADD CONSTRAINT `fk_oder_item_oder` FOREIGN KEY (`oder_id`) REFERENCES `oder` (`id`),
  ADD CONSTRAINT `fk_oder_item_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `fk_payment_oder` FOREIGN KEY (`oder_id`) REFERENCES `oder` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_product_branch` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`),
  ADD CONSTRAINT `fk_product_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `fk_review_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `fk_review_user` FOREIGN KEY (`user_id`) REFERENCES `account` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
