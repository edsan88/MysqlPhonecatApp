-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 05, 2016 at 02:15 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phone`
--

-- --------------------------------------------------------

--
-- Table structure for table `android`
--

CREATE TABLE `android` (
  `android_id` int(11) NOT NULL,
  `phone_id` int(11) NOT NULL,
  `os` varchar(100) NOT NULL,
  `ui` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `android`
--

INSERT INTO `android` (`android_id`, `phone_id`, `os`, `ui`) VALUES
(1, 1, 'Android 3.0', 'Honeycomb'),
(2, 2, 'Android 3.0', 'Android'),
(3, 3, 'Android 2.2', 'MOTOBLUR');

-- --------------------------------------------------------

--
-- Table structure for table `availability`
--

CREATE TABLE `availability` (
  `availability_id` int(11) NOT NULL,
  `phone_id` int(11) NOT NULL,
  `list` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `availability`
--

INSERT INTO `availability` (`availability_id`, `phone_id`, `list`) VALUES
(1, 1, ''),
(2, 2, 'Verizon'),
(3, 3, 'AT&T');

-- --------------------------------------------------------

--
-- Table structure for table `battery`
--

CREATE TABLE `battery` (
  `battery_id` int(11) NOT NULL,
  `phone_id` int(11) NOT NULL,
  `standbyTime` varchar(200) NOT NULL,
  `talkTime` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `battery`
--

INSERT INTO `battery` (`battery_id`, `phone_id`, `standbyTime`, `talkTime`, `type`) VALUES
(1, 1, '336 hours', '24 hours', 'Other ( mAH)'),
(2, 2, '336 hours', '24 hours', 'Other (3250 mAH)'),
(3, 3, '400 hours', '5 hours', 'Lithium Ion (Li-Ion) (1930 mAH)');

-- --------------------------------------------------------

--
-- Table structure for table `camera`
--

CREATE TABLE `camera` (
  `camera_id` int(11) NOT NULL,
  `features` varchar(200) NOT NULL,
  `primary` varchar(200) NOT NULL,
  `phone_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `camera`
--

INSERT INTO `camera` (`camera_id`, `features`, `primary`, `phone_id`) VALUES
(1, 'Flash,Video', '5.0 megapixels', 1),
(2, 'Flash,Video', '5.0 megapixels', 2),
(3, '', '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `connectivity`
--

CREATE TABLE `connectivity` (
  `connectivity_id` int(11) NOT NULL,
  `phone_id` int(11) NOT NULL,
  `bluetooth` varchar(200) NOT NULL,
  `cell` varchar(200) NOT NULL,
  `gps` varchar(100) NOT NULL,
  `infrared` varchar(100) NOT NULL,
  `wifi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `connectivity`
--

INSERT INTO `connectivity` (`connectivity_id`, `phone_id`, `bluetooth`, `cell`, `gps`, `infrared`, `wifi`) VALUES
(1, 1, 'Bluetooth 2.1', '', 'true', 'false', '802.11 b/g/n'),
(2, 2, 'Bluetooth 2.1', 'CDMA 800 /1900 LTE 700, Rx diversity in all bands', 'true', 'false', '802.11 a/b/g/n'),
(3, 3, 'Bluetooth 2.1', 'WCDMA 850/1900/2100, GSM 850/900/1800/1900, HSDPA 14Mbps (Category 10) Edge Class 12, GPRS Class 12, eCompass, AGPS', 'true', 'false', '802.11 a/b/g/n');

-- --------------------------------------------------------

--
-- Table structure for table `display`
--

CREATE TABLE `display` (
  `display_id` int(11) NOT NULL,
  `screenResolution` varchar(200) NOT NULL,
  `screenSize` varchar(200) NOT NULL,
  `touchScreen` varchar(200) NOT NULL,
  `phone_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `display`
--

INSERT INTO `display` (`display_id`, `screenResolution`, `screenSize`, `touchScreen`, `phone_id`) VALUES
(1, 'WXGA (1200 x 800)', '10.1 inches', 'true', 1),
(2, 'WXGA (1200 x 800)', '10.1 inches', 'true', 2),
(5, 'QHD (960 x 540)', '4.0 inches', 'true', 3);

-- --------------------------------------------------------

--
-- Table structure for table `hardware`
--

CREATE TABLE `hardware` (
  `hardware_id` int(11) NOT NULL,
  `phone_id` int(11) NOT NULL,
  `accelerometer` varchar(200) NOT NULL,
  `audioJack` varchar(200) NOT NULL,
  `cpu` varchar(200) NOT NULL,
  `fmRadio` varchar(200) NOT NULL,
  `physicalKeyboard` varchar(200) NOT NULL,
  `usb` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hardware`
--

INSERT INTO `hardware` (`hardware_id`, `phone_id`, `accelerometer`, `audioJack`, `cpu`, `fmRadio`, `physicalKeyboard`, `usb`) VALUES
(1, 1, 'true', '3.5mm', '1 GHz Dual Core Tegra 2', 'false', 'false', 'USB 2.0'),
(2, 2, 'true', '3.5mm', '1 GHz Dual Core Tegra 2', 'false', 'false', 'USB 2.0'),
(3, 3, 'true', '3.5mm', '1 GHz Dual Core', 'false', 'false', 'USB 2.0');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `images_id` int(11) NOT NULL,
  `phone_id` int(11) NOT NULL,
  `list` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`images_id`, `phone_id`, `list`) VALUES
(1, 1, 'img/phones/motorola-xoom-with-wi-fi.0.jpg,img/phones/motorola-xoom-with-wi-fi.1.jpg,img/phones/motorola-xoom-with-wi-fi.2.jpg,img/phones/motorola-xoom-with-wi-fi.3.jpg,img/phones/motorola-xoom-with-wi-fi.4.jpg,img/phones/motorola-xoom-with-wi-fi.5.jpg'),
(2, 2, 'img/phones/motorola-xoom.0.jpg,img/phones/motorola-xoom.1.jpg,img/phones/motorola-xoom.2.jpg'),
(3, 3, 'img/phones/motorola-atrix-4g.0.jpg,img/phones/motorola-atrix-4g.1.jpg,img/phones/motorola-atrix-4g.2.jpg,img/phones/motorola-atrix-4g.3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `phone`
--

CREATE TABLE `phone` (
  `phone_id` int(11) NOT NULL,
  `id` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `name` varchar(200) NOT NULL,
  `additionalFeatures` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phone`
--

INSERT INTO `phone` (`phone_id`, `id`, `description`, `name`, `additionalFeatures`) VALUES
(1, 'motorola-xoom-with-wi-fi', 'Motorola XOOM with Wi-Fi has a super-powerful dual-core processor and Android\\u2122 3.0 (Honeycomb) \\u2014 the Android platform designed specifically for tablets. With its 10.1-inch HD widescreen display, you\\u2019ll enjoy HD video in a thin, light, powerful and upgradeable tablet.', 'Motorola XOOM\\u2122 with Wi-Fi', 'Sensors: proximity, ambient light, barometer, gyroscope'),
(2, 'motorola-xoom', 'MOTOROLA XOOM has a super-powerful dual-core processor and Android\\u2122 3.0 (Honeycomb) \\u2014 the Android platform designed specifically for tablets. With its 10.1-inch HD widescreen display, you\\u2019ll enjoy HD video in a thin, light, powerful and upgradeable tablet.', 'MOTOROLA XOOM\\u2122', 'Front-facing camera. Sensors: proximity, ambient light, barometer, gyroscope.'),
(3, 'motorola-atrix-4g', 'MOTOROLA ATRIX 4G gives you dual-core processing power and the revolutionary webtop application. With webtop and a compatible Motorola docking station, sold separately, you can surf the Internet with a full Firefox browser, create and edit docs, or access multimedia on a large screen almost anywhere.', 'MOTOROLA ATRIX\\u2122 4G', '');

-- --------------------------------------------------------

--
-- Table structure for table `phone_list`
--

CREATE TABLE `phone_list` (
  `phone_list_id` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `imageUrl` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `snippet` varchar(300) NOT NULL,
  `id` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phone_list`
--

INSERT INTO `phone_list` (`phone_list_id`, `age`, `imageUrl`, `name`, `snippet`, `id`) VALUES
(1, 0, 'img/phones/motorola-xoom-with-wi-fi.0.jpg', 'Motorola XOOM\\u2122 with Wi-Fi', 'The Next, Next Generation\\r\\n\\r\\nExperience the future with Motorola XOOM with Wi-Fi, the world''s first tablet powered by Android 3.0 (Honeycomb).', 'motorola-xoom-with-wi-fi'),
(2, 1, 'img/phones/motorola-xoom.0.jpg', 'MOTOROLA XOOM\\u2122', 'The Next, Next Generation\\n\\nExperience the future with MOTOROLA XOOM, the world''s first tablet powered by Android 3.0 (Honeycomb).', 'motorola-xoom'),
(3, 2, 'img/phones/motorola-atrix-4g.0.jpg', 'MOTOROLA ATRIX 4G', 'MOTOROLA ATRIX 4G the world''s most powerful smartphone.', 'motorola-atrix-4g');

-- --------------------------------------------------------

--
-- Table structure for table `size_weight`
--

CREATE TABLE `size_weight` (
  `size_weight_id` int(11) NOT NULL,
  `phone_id` int(11) NOT NULL,
  `dimensions` text NOT NULL,
  `weight` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `size_weight`
--

INSERT INTO `size_weight` (`size_weight_id`, `phone_id`, `dimensions`, `weight`) VALUES
(1, 1, '249.1 mm (w),167.8 mm (h),12.9 mm (d)', '708.0 grams'),
(2, 2, '249.0 mm (w),168.0 mm (h),12.7 mm (d)', '726.0 grams');

-- --------------------------------------------------------

--
-- Table structure for table `storage`
--

CREATE TABLE `storage` (
  `storage_id` int(11) NOT NULL,
  `phone_id` int(11) NOT NULL,
  `flash` varchar(100) NOT NULL,
  `ram` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage`
--

INSERT INTO `storage` (`storage_id`, `phone_id`, `flash`, `ram`) VALUES
(1, 1, '2000MB', '1000MB'),
(2, 2, '32000MB', '1000MB');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `android`
--
ALTER TABLE `android`
  ADD PRIMARY KEY (`android_id`);

--
-- Indexes for table `availability`
--
ALTER TABLE `availability`
  ADD PRIMARY KEY (`availability_id`);

--
-- Indexes for table `battery`
--
ALTER TABLE `battery`
  ADD PRIMARY KEY (`battery_id`);

--
-- Indexes for table `camera`
--
ALTER TABLE `camera`
  ADD PRIMARY KEY (`camera_id`);

--
-- Indexes for table `connectivity`
--
ALTER TABLE `connectivity`
  ADD PRIMARY KEY (`connectivity_id`);

--
-- Indexes for table `display`
--
ALTER TABLE `display`
  ADD PRIMARY KEY (`display_id`);

--
-- Indexes for table `hardware`
--
ALTER TABLE `hardware`
  ADD PRIMARY KEY (`hardware_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`images_id`);

--
-- Indexes for table `phone`
--
ALTER TABLE `phone`
  ADD PRIMARY KEY (`phone_id`);

--
-- Indexes for table `phone_list`
--
ALTER TABLE `phone_list`
  ADD PRIMARY KEY (`phone_list_id`);

--
-- Indexes for table `size_weight`
--
ALTER TABLE `size_weight`
  ADD PRIMARY KEY (`size_weight_id`);

--
-- Indexes for table `storage`
--
ALTER TABLE `storage`
  ADD PRIMARY KEY (`storage_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `android`
--
ALTER TABLE `android`
  MODIFY `android_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `availability`
--
ALTER TABLE `availability`
  MODIFY `availability_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `battery`
--
ALTER TABLE `battery`
  MODIFY `battery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `camera`
--
ALTER TABLE `camera`
  MODIFY `camera_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `connectivity`
--
ALTER TABLE `connectivity`
  MODIFY `connectivity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `display`
--
ALTER TABLE `display`
  MODIFY `display_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `hardware`
--
ALTER TABLE `hardware`
  MODIFY `hardware_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `images_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `phone`
--
ALTER TABLE `phone`
  MODIFY `phone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `phone_list`
--
ALTER TABLE `phone_list`
  MODIFY `phone_list_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `size_weight`
--
ALTER TABLE `size_weight`
  MODIFY `size_weight_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `storage`
--
ALTER TABLE `storage`
  MODIFY `storage_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
