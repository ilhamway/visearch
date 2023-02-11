-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 21, 2022 at 02:42 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_products`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `price`) VALUES
(0, 'Jeans Denim', '150000'),
(1, 'Jeans Denim 2', '200000'),
(2, 'Jeans Denim 3', '130000'),
(3, 'Jeans Denim 4', '140000'),
(4, 'Jeans Denim 5', '150000'),
(5, 'Jeans Denim 6', '220000'),
(6, 'Jeans Denim 7', '210000'),
(7, 'Jeans Denim 8', '200000'),
(8, 'Jeans Denim 9', '180000'),
(9, 'Jeans Denim 10', '190000'),
(10, 'Jeans Denim 11', '170000'),
(11, 'Jeans Denim 12', '160000'),
(12, 'Jeans Denim 13', '150000'),
(13, 'Jeans Denim 14', '140000'),
(14, 'Jeans Denim 15', '190000'),
(15, 'Jeans Denim 16', '165000'),
(16, 'Jeans Denim 17', '180000'),
(17, 'Jeans Denim 18', '125000'),
(18, 'Jeans Denim 19', '175000'),
(19, 'Jeans Denim 20', '200000'),
(20, 'Motive Pants', '90000'),
(21, 'Motive Pants 2', '85000'),
(22, 'Motive Pants 3', '95000'),
(23, 'Motive Pants 4', '75000'),
(24, 'Motive Pants 5', '100000'),
(25, 'Motive Pants 6', '75000'),
(26, 'Motive Pants 7', '105000'),
(27, 'Motive Pants 8', '95000'),
(28, 'Motive Pants 9', '95000'),
(29, 'Motive Pants 10', '95000'),
(30, 'Motive Pants 11', '65000'),
(31, 'Motive Pants 12', '85000'),
(32, 'Motive Pants 13', '90000'),
(33, 'Motive Pants 14', '70000'),
(34, 'Motive Pants 15', '60000'),
(35, 'Motive Pants 16', '70000'),
(36, 'Motive Pants 17', '55000'),
(37, 'Motive Pants 18', '75000'),
(38, 'Motive Pants 19', '85000'),
(39, 'Motive Pants 20', '90000'),
(40, 'Red Jacket', '210000'),
(41, 'Red Jacket 2', '280000'),
(42, 'Red Jacket 3', '215000'),
(43, 'Red Jacket 4', '285000'),
(44, 'Red Jacket 5', '230000'),
(45, 'Red Jacket 6', '280000'),
(46, 'Red Jacket 7', '250000'),
(47, 'Red Jacket 8', '290000'),
(48, 'Red Jacket 9', '240000'),
(49, 'Red Jacket 10', '290000'),
(50, 'Red Jacket 11', '270000'),
(51, 'Red Jacket 12', '260000'),
(52, 'Red Jacket 13', '215000'),
(53, 'Red Jacket 14', '295000'),
(54, 'Red Jacket 15', '265000'),
(55, 'Red Jacket 16', '295000'),
(56, 'Red Jacket 17', '220000'),
(57, 'Red Jacket 18', '230000'),
(58, 'Red Jacket 19', '240000'),
(59, 'Red Jacket 20', '280000'),
(60, 'Shirt Color', '150000'),
(61, 'Shirt Color 2', '180000'),
(62, 'Shirt Color 3', '135000'),
(63, 'Shirt Color 4', '170000'),
(64, 'Shirt Color 5', '145000'),
(65, 'Shirt Color 6', '175000'),
(66, 'Shirt Color 7', '130000'),
(67, 'Shirt Color 8', '195000'),
(68, 'Shirt Color 9', '135000'),
(69, 'Shirt Color 10', '180000'),
(70, 'Shirt Color 11', '140000'),
(71, 'Shirt Color 12', '150000'),
(72, 'Shirt Color 13', '140000'),
(73, 'Shirt Color 14', '185000'),
(74, 'Shirt Color 15', '160000'),
(75, 'Shirt Color 16', '160000'),
(76, 'Shirt Color 17', '175000'),
(77, 'Shirt Color 18', '170000'),
(78, 'Shirt Color 19', '140000'),
(79, 'Shirt Color 20', '160000'),
(80, 'Square Shirt', '188000'),
(81, 'Square Shirt 2', '189000'),
(82, 'Square Shirt 3', '187000'),
(83, 'Square Shirt 4', '190000'),
(84, 'Square Shirt 5', '198000'),
(85, 'Square Shirt 6', '195000'),
(86, 'Square Shirt 7', '184000'),
(87, 'Square Shirt 8', '192000'),
(88, 'Square Shirt 9', '178000'),
(89, 'Square Shirt 10', '183000'),
(90, 'Square Shirt 11', '182000'),
(91, 'Square Shirt 12', '184000'),
(92, 'Square Shirt 13', '189000'),
(93, 'Square Shirt 14', '191000'),
(94, 'Square Shirt 15', '193000'),
(95, 'Square Shirt 16', '194000'),
(96, 'Square Shirt 17', '188000'),
(97, 'Square Shirt 18', '191000'),
(98, 'Square Shirt 19', '193000'),
(99, 'Square Shirt 20', '194000'),
(100, 'Tank Color', '60000'),
(101, 'Tank Color 2', '70000'),
(102, 'Tank Color 3', '85000'),
(103, 'Tank Color 4', '75000'),
(104, 'Tank Color 5', '88000'),
(105, 'Tank Color 6', '77000'),
(106, 'Tank Color 7', '75000'),
(107, 'Tank Color 8', '85000'),
(108, 'Tank Color 9', '84000'),
(109, 'Tank Color 10', '79000'),
(110, 'Tank Color 11', '83000'),
(111, 'Tank Color 12', '76000'),
(112, 'Tank Color 13', '78000'),
(113, 'Tank Color 14', '79000'),
(114, 'Tank Color 15', '79000'),
(115, 'Tank Color 16', '78000'),
(116, 'Tank Color 17', '81000'),
(117, 'Tank Color 18', '78000'),
(118, 'Tank Color 19', '81000'),
(119, 'Tank Color 20', '83000');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
