-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql313.byetcluster.com
-- Generation Time: Nov 07, 2019 at 12:21 AM
-- Server version: 5.6.45-86.1
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_24433399_fearn89`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `aid` int(3) NOT NULL,
  `ahouse_nb` varchar(15) NOT NULL,
  `agroup` varchar(50) NOT NULL,
  `anvillage` varchar(50) NOT NULL,
  `aroad` varchar(50) NOT NULL,
  `adistrict` varchar(50) NOT NULL,
  `acanton` varchar(50) NOT NULL,
  `aprovince` varchar(50) NOT NULL,
  `apostal_code` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`aid`, `ahouse_nb`, `agroup`, `anvillage`, `aroad`, `adistrict`, `acanton`, `aprovince`, `apostal_code`) VALUES
(9, '11', '1', '-', '-', 'ปัว', 'ปัว', 'น่าน', '55120'),
(8, '111', '2', '-', 'aa', 'ปัว', 'ไชยวัฒนา', 'น่าน', '55120'),
(10, '1', '1', '2', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categoryid` char(4) NOT NULL,
  `categoryname` char(40) NOT NULL,
  `description` char(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categoryid`, `categoryname`, `description`) VALUES
('9802', 'noodle', 'food'),
('9801', 'pen', 'stationary'),
('9803', 'coke', 'drinks');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `cus` char(4) NOT NULL,
  `company` char(40) NOT NULL,
  `address` char(40) NOT NULL,
  `contact` char(40) NOT NULL,
  `phone` char(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`cus`, `company`, `address`, `contact`, `phone`) VALUES
('01', 'boy', 'chaimai', 'Thailand', '0987646992'),
('02', 'fon', 'nan', 'Thailand', '0882136548'),
('03', 'leo', 'bangkok', 'Thailand', '0654842546');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `empid` char(4) NOT NULL,
  `empname` char(40) NOT NULL,
  `empbd` char(40) NOT NULL,
  `empaddress` char(40) NOT NULL,
  `empphone` char(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`empid`, `empname`, `empbd`, `empaddress`, `empphone`) VALUES
('0003', 'apple', '12/08/1998', 'nan', '0862873917'),
('0002', 'kook', '29/10/1890', 'bangkok', '0984708228'),
('0001', 'non', '1/10/1990', 'lampang', '0987654321');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(2) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `pin` varchar(13) NOT NULL,
  `sex` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `user`, `pass`, `pin`, `sex`, `fname`, `phone`, `email`, `status`) VALUES
(9, 'fearn89', '123456', '1509966002999', 'หญิง', 'suwatjanee', '0987646992', 'fearn@hotmail.com', '2'),
(8, 'root', '123456', '1509966002999', 'หญิง', 'suwatjanee', '0987646992', 'Fearn-a27@hotmail.com', '1'),
(10, 'aaaa', '111111', '1509966002999', 'ชาย', 'fearnnn', '0987646992', 'fearn@hotmail.com', '1');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `orderid` char(5) NOT NULL,
  `productid` char(40) NOT NULL,
  `unitprice` char(40) NOT NULL,
  `quantity` char(40) NOT NULL,
  `discount` char(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`orderid`, `productid`, `unitprice`, `quantity`, `discount`) VALUES
('0101', '0013', '5', '100', '500'),
('0102', '0012', '6', '50', '300'),
('0103', '0011', '10', '10', '1000');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ordid` char(4) NOT NULL,
  `cusid` char(40) NOT NULL,
  `empid` char(40) NOT NULL,
  `orddate` char(40) NOT NULL,
  `ship` char(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`ordid`, `cusid`, `empid`, `orddate`, `ship`) VALUES
('0101', '01', '0002', '08/09/2019', 'kerry'),
('0102', '03', '0001', '15/09/2019', 'ninja'),
('0103', '02', '0003', '29/09/2019', 'j&t');

-- --------------------------------------------------------

--
-- Table structure for table `productstest`
--

CREATE TABLE `productstest` (
  `PID` char(4) NOT NULL,
  `Pname` char(40) NOT NULL,
  `SupID` char(40) NOT NULL,
  `QPU` char(40) NOT NULL,
  `UP` char(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productstest`
--

INSERT INTO `productstest` (`PID`, `Pname`, `SupID`, `QPU`, `UP`) VALUES
('0012', 'book', '9992', '5', '100'),
('0011', 'pen', '9991', '10', '59'),
('0013', 'noodle', '9993', '30', '3');

-- --------------------------------------------------------

--
-- Table structure for table `shippers`
--

CREATE TABLE `shippers` (
  `shid` char(4) NOT NULL,
  `comname` char(40) NOT NULL,
  `phone` char(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shippers`
--

INSERT INTO `shippers` (`shid`, `comname`, `phone`) VALUES
('7502', 'ninja', '0285749742'),
('7501', 'kerry', '0549872819'),
('7503', 'j&t', '0245473624');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `supid` char(4) NOT NULL,
  `comname` char(40) NOT NULL,
  `address` char(40) NOT NULL,
  `post` char(40) NOT NULL,
  `phone` char(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`supid`, `comname`, `address`, `post`, `phone`) VALUES
('8002', 'pang', 'nan', '55120', '0922380494'),
('8001', 'wan', 'bangkok', '10210', '0899876546'),
('8003', 'golf', 'pitsanuluk', '53220', '0931204394');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `aid` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
