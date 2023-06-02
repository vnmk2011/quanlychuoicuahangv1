-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2023 at 12:05 PM
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
(40, 'Chi nhánh 25', '232 Cộng Hòa, Q.Tân Bình, TP HCM', '123.png'),
(41, 'Chi nhánh 2', 'Địa chỉ 2', '123.png'),
(42, 'Chi nhánh 2', 'Địa chỉ 2', '123.png'),
(43, 'Chi nhánh 2', 'Địa chỉ 2', '123.png');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(15) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `image`) VALUES
(2, 'Khuyến mãi', '/public/images/29.png'),
(3, 'Cơm - Mỳ Ý', '/public/images/11.png'),
(4, 'Hamburger', '/public/images/4.png'),
(5, 'Thức uống', '/public/images/14.png'),
(6, 'Thức ăn nhẹ', '/public/images/12.png'),
(7, 'Gà ráng', '/public/images/6.png'),
(8, 'Combo thức ăn', '/public/images/10.png'),
(9, 'Món ăn kèm', '/public/images/27.png');

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
(67, 30, 'shipping', '2023-06-02 16:57:54', NULL, 110000, 31, 'không có');

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
(42, 67, 61, 1),
(43, 67, 62, 1);

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
(60, 'Bắp Cải Trộn (Vừa)', 'Bắp Cải Trộn (Vừa)', 25000.00, 9, 6, 'http://api.popeyes.vn/api/v1/files/08072022_045116_bpcitrn.jpg', 2, 30),
(61, 'Mì Ý', 'Mì Ý (M)', 45000.00, 3, 6, 'http://api.popeyes.vn/api/v1/files/08072022_051222_M.jpg', 2, NULL),
(62, 'Combo Mì Ý S2', 'Mì Ý +  1 Thức Uống', 65000.00, 3, 6, 'http://api.popeyes.vn/api/v1/files/08072022_073233_Miynuoc.jpeg', 2, NULL),
(63, 'Combo C1', 'Cơm BBQ + 1 Gà Giòn (Phần gà được phục vụ ngẫu nhiên)', 44000.00, 3, 6, 'http://api.popeyes.vn/api/v1/files/08072022_071102_cmBBQggin.jpg', 2, NULL),
(64, 'Popcorn BBQ', 'Popcorn BBQ', 29000.00, 9, 6, 'http://api.popeyes.vn/api/v1/files/28092022_032216_popcorn3.jpg', 2, NULL),
(65, 'Khoai tây Nghiền (Lớn)', 'Khoai tây Nghiền (Lớn)', 39000.00, 9, 6, 'http://api.popeyes.vn/api/v1/files/08072022_065600_Khoaitynghin.jpg', 2, NULL),
(66, 'Gà Và Hải Sản', 'Gà Và Hải Sản (Phần gà được phục vụ ngẫu nhiên)', 75000.00, 7, 6, 'http://api.popeyes.vn/api/v1/files/08072022_065744_2gkhngxng1ccajun.jpg', 2, NULL),
(67, '1 miếng Gà Kpop ', 'Gà KPop', 45000.00, 7, 6, 'http://api.popeyes.vn/api/v1/files/ComboKpopChicken1pc.jpg', 2, NULL),
(68, 'Cơm Trắng', 'Cơm Trắng', 10000.00, 9, 6, 'http://api.popeyes.vn/api/v1/files/08072022_065822_cmtrng.jpg', 2, NULL),
(69, 'Khoai tây Chiên (Vừa)', 'Khoai tây Chiên (Vừa)', 29000.00, 9, 6, 'http://api.popeyes.vn/api/v1/files/08072022_071220_khoaitychin.jpg', 2, NULL),
(70, 'Popcorn Sốt Phô Mai', 'Popcorn Sốt Phô Mai', 29000.00, 9, 6, 'http://api.popeyes.vn/api/v1/files/28092022_032306_popcorn2.jpg', 2, NULL),
(71, 'Donut Tôm', 'Donut Tôm', 29000.00, 9, 6, 'http://api.popeyes.vn/api/v1/files/08072022_063612_Donuttm.jpg', 2, NULL),
(72, '4 Miếng Snack Cá', '4 Miếng Snack Cá', 36000.00, 9, 6, 'http://api.popeyes.vn/api/v1/files/08072022_072046_snackc.jpg', 2, NULL),
(73, 'Combo C2', 'Cơm BBQ + Canh Soup + 2 Gà Không Xương', 44000.00, 3, 6, 'http://api.popeyes.vn/api/v1/files/08072022_074637_comgakhongxuongcanh.jpeg', 2, NULL),
(74, 'Snack Mực', 'Snack Mực', 45000.00, 9, 6, 'http://api.popeyes.vn/api/v1/files/08072022_072154_snackmc.jpg', 2, NULL),
(75, 'Combo C3', 'Cơm BBQ + Gà Giòn + Canh Soup (Phần gà được phục vụ ngẫu nhiên)', 54000.00, 3, 6, 'http://api.popeyes.vn/api/v1/files/ComboC3.png', 2, NULL),
(76, 'Gà Không Xương (5 Miếng)', 'Gà Không Xương (5 miếng) + 1 Sốt Tự Chọn ', 79000.00, 7, 6, 'http://api.popeyes.vn/api/v1/files/08072022_072318_gakhongxng5ming.jpg', 2, NULL),
(77, 'Khoai tây Chiên (Lớn)', 'Khoai tây Chiên (Lớn)', 39000.00, 9, 6, 'http://api.popeyes.vn/api/v1/files/08072022_071334_khoaitychin.jpg', 2, NULL),
(78, 'Combo C4', 'Cơm Trắng + Gà Tắm Nước Mắm + Canh Soup + Bắp Cải Trộn (Vừa) + 1 Thức Uống (Phần gà được phục vụ ngẫu nhiên)', 79000.00, 3, 6, 'http://api.popeyes.vn/api/v1/files/08072022_074837_comGTNMbapcaitroncanhnuoc.jpeg', 2, NULL),
(79, '1 Miếng Gà Giòn', '1 Miếng Gà Giòn (Phần gà được phục vụ ngẫu nhiên)', 38000.00, 7, 6, 'http://api.popeyes.vn/api/v1/files/08072022_072235_1ggin.jpg', 2, NULL),
(80, 'Gà Không Xương (3 Miếng)', 'Gà Không Xương 3 Miếng +  1 Sốt Chấm Tự Chọn', 59000.00, 7, 6, 'http://api.popeyes.vn/api/v1/files/11072022_050849_Gkhngxng3ming.jpg', 2, NULL),
(81, 'Canh Soup', 'Soup', 10000.00, 9, 6, 'http://api.popeyes.vn/api/v1/files/08072022_065719_soup.jpg', 2, NULL),
(82, 'Combo Mì Ý S3', 'Mì Ý + 1 Gà Giòn + 1 Thức Uống (Phần gà được phục vụ ngẫu nhiên)', 95000.00, 3, 6, 'http://api.popeyes.vn/api/v1/files/08072022_073036_Miygagionnuoc.jpeg', 2, NULL),
(83, '1 Miếng Gà Tắm Nước Mắm', '1 Miếng Gà Tắm Nước Mắm', 45000.00, 7, 6, 'http://api.popeyes.vn/api/v1/files/08072022_040934_1pcGTNM.jpg', 2, NULL),
(84, 'Bắp Cải Trộn (Lớn)', 'Bắp Cải Trộn (Lớn)', 39000.00, 9, 6, 'http://api.popeyes.vn/api/v1/files/08072022_045649_bpcitrn.jpg', 2, NULL),
(85, 'Khoai tây Nghiền (Vừa)', 'Khoai tây Nghiền (Vừa)', 19000.00, 9, 6, 'http://api.popeyes.vn/api/v1/files/08072022_071428_Khoaitynghin.jpg', 2, NULL),
(86, '1 Miếng Gà Tắm Nước Mắm', '1 Miếng Gà Tắm Nước Mắm', 45000.00, 7, 6, 'http://api.popeyes.vn/api/v1/files/08072022_040934_1pcGTNM.jpg', 2, NULL),
(87, 'Salad Sốt Chanh Dây', 'Salad Chanh Dây', 19000.00, 9, 6, 'http://api.popeyes.vn/api/v1/files/Passionfruitsalad.jpg', 2, NULL),
(88, 'Combo Mì Ý S4', 'Mì Ý + 1 Gà Giòn + 2 Gà Không Xương +1 Khoai Tây Nghiền (Vừa) + 2 Thức Uống (Phần gà được phục vụ ngẫu nhiên)', 145000.00, 3, 6, 'http://api.popeyes.vn/api/v1/files/08072022_072820_Miygagiongakhongxuongkhoaitaynghiennuoc.jpeg', 2, NULL),
(89, 'Popcorn ', 'Popcorn Rong Biển', 24000.00, 9, 6, 'http://api.popeyes.vn/api/v1/files/28092022_032044_popcorn1.jpg', 2, NULL),
(90, 'Pop Burger A', '1 Pop Burger + 1 Gà giòn + 1 Thức uống', 89000.00, 4, 6, 'http://api.popeyes.vn/api/v1/files/ComboPopBurgerA.jpg', 2, NULL),
(91, 'Kid Combo 4', '1 Mì Ý + 1 Milo + 1 Gà Không Xương', 65000.00, 8, 6, 'http://api.popeyes.vn/api/v1/files/08072022_072230_Kidcombo04.jpeg', 2, NULL),
(92, 'Burger Cá', 'Burger Cá', 54000.00, 4, 6, 'http://api.popeyes.vn/api/v1/files/08072022_073823_BurgerC.jpg', 2, NULL),
(93, 'Combo burger Gà', '1 Burger Gà Cajun + 1 Thức Uống ', 69000.00, 4, 6, 'http://api.popeyes.vn/api/v1/files/08072022_093821_burgergCoke.png', 2, NULL),
(94, 'Kid Combo 2', '2 Gà Không Xương + 2 Snack cá + 1 Milo', 49000.00, 8, 6, 'http://api.popeyes.vn/api/v1/files/08072022_071515_kidcombo02.jpg', 2, NULL),
(95, 'Kid Combo 3', '1 Gà Giòn + 1 Milo + 1 Khoai Tây Chiên (Vừa) (Phần gà được phục vụ ngẫu nhiên)', 55000.00, 8, 6, 'http://api.popeyes.vn/api/v1/files/08072022_071443_kidcombo03.jpg', 2, NULL),
(96, 'Dasani', 'Dasani', 25000.00, 5, 6, 'http://api.popeyes.vn/api/v1/files/08072022_071658_dasani.jpg', 2, NULL),
(97, 'Combo Burger Tôm', '1 Bơ Gơ Tôm + 1 Thức Uống ', 59000.00, 4, 6, 'http://api.popeyes.vn/api/v1/files/08072022_153509_burgertmCoke.png', 2, NULL),
(98, 'Combo Burger Cá', '1 Burger Cá  + 1 Thức Uống ', 64000.00, 4, 6, 'http://api.popeyes.vn/api/v1/files/08072022_152239_burgercCoke.png', 2, NULL),
(99, 'Coke Zero', 'Coke Zero', 25000.00, 5, 6, 'http://api.popeyes.vn/api/v1/files/06012023_081437_viber_image_20230106_151242830.jpg', 2, NULL),
(100, 'Fanta', 'Fanta TA', 25000.00, 5, 6, 'http://api.popeyes.vn/api/v1/files/08072022_065051_Fanta.jpg', 2, NULL),
(101, 'Milo', 'Milo', 27000.00, 5, 6, 'http://api.popeyes.vn/api/v1/files/08072022_071609_LyMilo.jpg', 2, NULL),
(102, 'Burger Tôm', 'Burger Tôm', 46000.00, 4, 6, 'http://api.popeyes.vn/api/v1/files/08072022_074929_BurgerTm.jpg', 2, NULL),
(103, 'Combo gia đình A', 'Family A', 281000.00, 8, 6, 'http://api.popeyes.vn/api/v1/files/ComboFamilyA.jpg', 2, NULL),
(104, 'Combo Kid Meal 1A', '1 Pop Burger + Milo 115ml', 49000.00, 8, 6, 'http://api.popeyes.vn/api/v1/files/combokid1.jpg', 2, NULL),
(105, 'Combo gia đình B', 'Family B', 369000.00, 8, 6, 'http://api.popeyes.vn/api/v1/files/ComboFamilyB.jpg', 2, NULL),
(106, 'Sprite', 'Sprite TA', 25000.00, 5, 6, 'http://api.popeyes.vn/api/v1/files/08072022_064309_Sprite.jpg', 2, NULL),
(107, 'Burger Gà', 'Burger Gà', 56000.00, 4, 6, 'http://api.popeyes.vn/api/v1/files/08072022_073759_BurgerG.jpg', 2, NULL),
(108, 'Kid Combo 1', '1 Burger Tôm + 1 Milo', 49000.00, 8, 6, 'http://api.popeyes.vn/api/v1/files/08072022_071610_Kidcombo01.jpg', 2, NULL),
(109, 'Combo gia đình C', 'Family C', 379000.00, 8, 6, 'http://api.popeyes.vn/api/v1/files/ComboFamilyC.jpg', 2, NULL),
(110, 'Kid Combo 2', '1 Popcorn rong biển/Số Phô mai/Sốt BBQ + 1 Khoai Tây Chiên (R) + 1 Milo', 55000.00, 8, 6, 'http://api.popeyes.vn/api/v1/files/10102022_100115_hinhcombokid2.jpg', 2, NULL),
(111, 'Combo Pop Burger B', '1 Pop Burger + 1 gà giòn + 1 khoai tây nghiền + 1 nước ngọt (Phần gà được phục vụ ngẫu nhiên)', 99000.00, 4, 6, 'http://api.popeyes.vn/api/v1/files/ComboPopBurgerB.jpg', 2, NULL),
(112, 'Coca Cola', 'Coca TA', 25000.00, 5, 6, 'http://api.popeyes.vn/api/v1/files/08072022_080645_coca.png', 2, NULL),
(113, 'Kid Combo 1', '1 Burger Tôm + 1 Milo', 49000.00, 8, 6, 'http://api.popeyes.vn/api/v1/files/08072022_071550_Kidcombo01.jpg', 2, NULL),
(115, 'Bia Tiger Bạc', 'Bia Tiger Bạc', 20000.00, 5, 34, 'https://quancathaibinh.vn/uploads/products/2222.png', 0, 10),
(116, 'Bia 333', 'Bia 333', 20000.00, 5, 33, 'https://nhahangmonhue.vn/wp-content/uploads/2020/11/15_6c8cddf235aa41199f6018bd05318db6_large.png', 0, 10);

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
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `oder`
--
ALTER TABLE `oder`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `oder_item`
--
ALTER TABLE `oder_item`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

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
