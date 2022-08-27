-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 15, 2022 at 05:55 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos-english`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Category` text COLLATE utf8_spanish_ci NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `Category`, `Date`) VALUES
(1, 'Drugs', '2021-12-02 19:55:45'),
(9, 'Cosmetics', '2021-12-02 18:53:03'),
(10, 'qewer', '2022-02-07 08:36:52');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_spanish_ci NOT NULL,
  `idDocument` int(11) NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `phone` text COLLATE utf8_spanish_ci NOT NULL,
  `address` text COLLATE utf8_spanish_ci NOT NULL,
  `birthdate` date NOT NULL,
  `purchases` int(11) DEFAULT NULL,
  `lastPurchase` datetime DEFAULT NULL,
  `registerDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `idDocument`, `email`, `phone`, `address`, `birthdate`, `purchases`, `lastPurchase`, `registerDate`) VALUES
(6, 'elll', 4, 'fsfd', '(344) 434-3434', 'gfdf 341', '2012-12-12', 3, '2022-02-07 03:35:22', '2022-02-07 08:35:22'),
(7, 'me', 4, 'sa', '(034) 324-2342', '2342', '2022-02-22', NULL, NULL, '2022-01-06 19:43:41'),
(8, 'ccc', 7, 'eliasibrahim789@gmail.com', '(223) 456-7890', 'unhmj,k', '2077-03-12', 4, '2022-02-13 13:25:27', '2022-02-13 18:25:27'),
(9, 'ed', 7, 'edomias88@gmial.com', '(123) 412-3434', 'eeee', '2011-08-05', NULL, NULL, '2022-02-13 18:23:43'),
(10, 'mikiyas', 3, 'edhbs', '(123) 456-7867', '345678', '2020-08-08', 3, '2022-02-15 08:53:57', '2022-02-15 13:53:57');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` text COLLATE utf8_spanish_ci NOT NULL,
  `description` text COLLATE utf8_spanish_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `buyingPrice` float NOT NULL,
  `sellingPrice` float NOT NULL,
  `expiry` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `sales` int(11) DEFAULT NULL,
  `idCategory` int(11) NOT NULL,
  `image` text COLLATE utf8_spanish_ci NOT NULL DEFAULT 'views/img/products/104/188.jpg',
  `unit` text COLLATE utf8_spanish_ci NOT NULL DEFAULT 'Amp',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `code`, `description`, `stock`, `buyingPrice`, `sellingPrice`, `expiry`, `date`, `sales`, `idCategory`, `image`, `unit`) VALUES
(1, '1', 'Almunium hydroxide+Magnisium Hydroxide(chewable) tab of10', 1, 10, 44, '09-07-2019', '2021-12-02 19:54:30', 0, 1, 'views/img/products/104/188.jpg', 'Amp'),
(2, '2', 'Alumunium Hydroxyde+Magnesium trisilicate+simeticone', 60, 10, 13.5, '08-31-2019', '2021-12-02 19:54:30', 0, 1, 'views/img/products/104/188.jpg', 'Amp'),
(3, '3', 'Bisacodyl 5mg tab ', 125, 44, 59.4, '01-31-2020', '2021-12-02 19:54:30', 0, 1, 'views/img/products/104/188.jpg', 'Amp'),
(4, '4', 'Cimetidine 200mg/ml in 2ml', 143, 596.12, 804.759, '01-01-2022', '2021-12-02 19:54:30', 0, 1, 'views/img/products/104/188.jpg', 'Amp'),
(5, '5', 'Dimenhydrinate 50mg tablet of 10', 80, 463.43, 625.629, '09-30-2023', '2021-12-02 19:54:30', 0, 1, 'views/img/products/104/188.jpg', 'Amp'),
(7, '7', 'Hyocine butylbromide 20mg/ml', 171, 871.17, 1176.07, '03-31-2021', '2021-12-02 19:54:30', 0, 1, 'views/img/products/104/188.jpg', 'Amp'),
(8, '8', 'Hyocine butylbromide 20mg/ml', 0, 871.17, 1176.07, '04-30-2021', '2021-12-02 19:54:30', 0, 1, 'views/img/products/104/188.jpg', 'Amp'),
(9, '9', 'laxomg', 10, 10, 13.5, '08-04-2022', '2021-12-02 19:54:30', 0, 1, 'views/img/products/104/188.jpg', 'Amp'),
(11, '11', 'Metocloprimide hydrochloride 5mg/5ml syrup', 40, 442, 596.7, '06-30-2021', '2021-12-02 19:54:30', 0, 1, 'views/img/products/104/188.jpg', 'Amp'),
(12, '12', 'Metocloprimide hydrochloride 4mg/ml drop', 5, 272.38, 367.708, '10-31-2022', '2021-12-02 19:54:30', 0, 1, 'views/img/products/104/188.jpg', 'Amp'),
(13, '13', 'Metocloprimide hydrochloride 2mg/ml drop', 14, 904.75, 1221.41, '06-30-2021', '2021-12-02 19:54:30', 0, 1, 'views/img/products/104/188.jpg', 'Amp'),
(14, '14', 'metoclopramide 10mg 10*10', 100, 900, 1215, '01-31-2023', '2021-12-02 19:54:30', 0, 1, 'views/img/products/104/188.jpg', 'Amp'),
(15, '15', 'metoclopramide 10mg 10*10', 100, 100, 135, '10-01-2023', '2021-12-02 19:54:30', 0, 1, 'views/img/products/104/188.jpg', 'Amp'),
(16, '16', 'metoclopramide 10mg 10*10', 100, 100, 135, '06-01-2023', '2021-12-02 19:54:30', 0, 1, 'views/img/products/104/188.jpg', 'Amp'),
(17, '17', 'Magesium sulfate 50% 5mg in 10ml', 139, 45, 60.75, '02-28-2021', '2021-12-02 19:54:30', 0, 1, 'views/img/products/104/188.jpg', 'Amp'),
(19, '19', 'metoclopramid 10 mg', 98, 95, 128.25, '08-31-2020', '2021-12-02 19:54:30', 0, 1, 'views/img/products/104/188.jpg', 'Amp'),
(20, '20', 'metoclopramid 10 mg', 70, 70, 94.5, '08-04-2020', '2021-12-02 19:54:30', 0, 1, 'views/img/products/104/188.jpg', 'Amp'),
(25, '25', 'Pantoprazol 40mg iv', 9, 0, 0, '01-31-2021', '2021-12-02 19:54:30', 0, 1, 'views/img/products/104/188.jpg', 'Amp'),
(29, '29', 'metsil fort', 29, 540, 772.2, '01-31-2023', '2022-01-01 19:58:54', 1, 1, 'views/img/products/104/188.jpg', 'Amp'),
(32, '32', 'Amoxacillin 500mg capsule of 10', 100, 765, 1032.75, '12-31-2023', '2021-12-02 19:54:30', 0, 1, 'views/img/products/104/188.jpg', 'Amp'),
(35, '35', 'amoxilin 125 mg', 0, 65, 87.75, '06-30-2020', '2021-12-02 19:54:30', 0, 1, 'views/img/products/104/188.jpg', 'Amp'),
(36, '36', 'amoxilin 125 mg', 63, 65, 87.75, '07-04-2021', '2021-12-02 19:54:30', 2, 1, 'views/img/products/104/188.jpg', 'Amp'),
(42, '42', 'Amoxacilin250mg/5ml', 523, 667, 967.15, '04-24-2021', '2022-02-07 08:35:22', 1, 1, 'views/img/products/104/188.jpg', 'Amp'),
(44, '44', 'azitromycin-500mg', 249, 45, 60.75, '08-31-2022', '2021-12-02 19:54:30', 0, 1, 'views/img/products/104/188.jpg', 'Amp'),
(46, '46', 'AZITHROMYCIN 200MG/5ML', 19, 33, 44.55, '01-31-2021', '2022-02-15 13:53:56', 1, 1, 'views/img/products/104/188.jpg', 'Amp'),
(50, '50', 'AMOXACILLIN  250MG', 0, 335.28, 452.629, '09-30-2022', '2021-12-02 19:54:30', 0, 1, 'views/img/products/104/188.jpg', 'Amp'),
(54, '54', 'AMOXACILIN =CLAVULINIC ACID 312mg', 46, 23, 32.43, '01-31-2022', '2022-02-13 18:25:27', -2, 1, 'views/img/products/104/188.jpg', 'vial'),
(57, '57', 'pest', 8, 11, 16.39, '2022-02-12', '2022-02-13 18:25:27', 3, 1, 'views/img/products/default/anonymous.png', 'bottle');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
CREATE TABLE IF NOT EXISTS `sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` int(11) NOT NULL,
  `idCustomer` int(11) NOT NULL,
  `idSeller` int(11) NOT NULL,
  `products` text COLLATE utf8_spanish_ci NOT NULL,
  `tax` int(11) NOT NULL,
  `netPrice` float NOT NULL,
  `totalPrice` float NOT NULL,
  `paymentMethod` text COLLATE utf8_spanish_ci NOT NULL,
  `saledate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `code`, `idCustomer`, `idSeller`, `products`, `tax`, `netPrice`, `totalPrice`, `paymentMethod`, `saledate`) VALUES
(8, 10001, 1, 1, '[{\"id\":\"29\",\"description\":\"metsil fort\",\"quantity\":\"1\",\"stock\":\"29\",\"price\":\"772.2\",\"totalPrice\":\"772.2\"}]', 0, 772.2, 772.2, 'CC-4', '2022-01-01 19:58:54'),
(9, 10002, 2, 1, '[{\"id\":\"54\",\"description\":\"AMOXACILIN =CLAVULINIC ACID 312mg\",\"quantity\":\"1\",\"stock\":\"36\",\"price\":\"32.43\",\"totalPrice\":\"32.43\"}]', 0, 32.43, 32.43, 'cash', '2021-12-09 20:32:58'),
(13, 10003, 3, 1, '[{\"id\":\"44\",\"description\":\"azitromycin-500mg\",\"quantity\":\"1\",\"stock\":\"250\",\"price\":\"60.75\",\"totalPrice\":\"60.75\"}]', 0, 60.75, 60.75, 'For 2021-12-25 // 43645354', '2021-12-07 19:55:52'),
(14, 10004, 2, 1, '[{\"id\":\"54\",\"description\":\"AMOXACILIN =CLAVULINIC ACID 312mg\",\"quantity\":\"1\",\"stock\":\"43\",\"price\":\"32.43\",\"totalPrice\":\"32.43\"},{\"id\":\"46\",\"description\":\"AZITHROMYCIN 200MG/5ML\",\"quantity\":\"1\",\"stock\":\"24\",\"price\":\"44.55\",\"totalPrice\":\"44.55\"},{\"id\":\"44\",\"description\":\"azitromycin-500mg\",\"quantity\":\"1\",\"stock\":\"249\",\"price\":\"60.75\",\"totalPrice\":\"60.75\"},{\"id\":\"36\",\"description\":\"amoxilin 125 mg\",\"quantity\":\"1\",\"stock\":\"63\",\"price\":\"87.75\",\"totalPrice\":\"87.75\"}]', 0, 225.48, 225.48, 'For 2021-12-31 // 5647554', '2021-12-07 22:45:08'),
(15, 10005, 5, 1, '[{\"id\":\"46\",\"description\":\"AZITHROMYCIN 200MG/5ML\",\"quantity\":\"1\",\"stock\":\"23\",\"price\":\"44.55\",\"totalPrice\":\"44.55\"}]', 0, 44.55, 44.55, 'cash', '2021-12-08 21:49:41'),
(16, 10006, 6, 1, '[{\"id\":\"54\",\"description\":\"AMOXACILIN =CLAVULINIC ACID 312mg\",\"quantity\":\"1\",\"stock\":\"47\",\"price\":\"32.43\",\"totalPrice\":\"32.43\"},{\"id\":\"46\",\"description\":\"AZITHROMYCIN 200MG/5ML\",\"quantity\":\"1\",\"stock\":\"22\",\"price\":\"44.55\",\"totalPrice\":\"44.55\"},{\"id\":\"42\",\"description\":\"Amoxacilin250mg/5ml\",\"quantity\":\"1\",\"stock\":\"523\",\"price\":\"967.15\",\"totalPrice\":\"967.15\"}]', 355, 1044.13, 1399.13, 'CC-23', '2022-02-07 08:35:22'),
(17, 10007, 8, 1, '[{\"id\":\"57\",\"description\":\"pest\",\"quantity\":\"3\",\"stock\":\"8\",\"price\":\"16.39\",\"totalPrice\":\"49.17\"},{\"id\":\"54\",\"description\":\"AMOXACILIN =CLAVULINIC ACID 312mg\",\"quantity\":\"1\",\"stock\":\"46\",\"price\":\"32.43\",\"totalPrice\":\"32.43\"}]', 12, 81.6, 93.6, 'cash', '2022-02-13 18:25:27'),
(18, 10008, 10, 1, '[{\"id\":\"46\",\"description\":\"AZITHROMYCIN 200MG/5ML\",\"quantity\":\"3\",\"stock\":\"19\",\"price\":\"44.55\",\"totalPrice\":\"133.65\"}]', 7, 133.65, 140.65, 'cash', '2022-02-15 13:53:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_spanish_ci NOT NULL,
  `user` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `profile` text COLLATE utf8_spanish_ci NOT NULL,
  `photo` text COLLATE utf8_spanish_ci NOT NULL DEFAULT 'views/img/products/104/188.jpg',
  `status` int(1) NOT NULL DEFAULT 1,
  `lastLogin` datetime NOT NULL DEFAULT '2021-12-10 13:59:06',
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `user`, `password`, `profile`, `photo`, `status`, `lastLogin`, `date`) VALUES
(1, 'User admin', 'admin', '$2a$07$asxx54ahjppf45sd87a5auXBm1Vr2M1NV5t/zNQtGHGpS5fFirrbG', 'administrator', 'views/img/users/admin/636.jpg', 1, '2022-02-15 12:54:30', '2022-02-15 17:54:30'),
(5, 'Elias', 'elias', '$2a$07$asxx54ahjppf45sd87a5auJFChLW8C/LrMbSKBfPVijWbrrMCO8GC', 'seller', 'views/img/products/104/188.jpg', 1, '2021-12-10 13:59:06', '2022-02-13 20:28:42');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
