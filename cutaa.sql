-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2018 at 12:43 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cutaa`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `ID` int(50) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `source_document_url` varchar(50) NOT NULL,
  `is_urgent` text NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `is_public` text NOT NULL,
  `date_created` date NOT NULL,
  `created_by` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` (`ID`, `title`, `description`, `source_document_url`, `is_urgent`, `start_date`, `end_date`, `is_public`, `date_created`, `created_by`) VALUES
(1, 'Welcoming Message', 'We welcome you to this platform, be free to share your ideas to improve it', '', 'Y', '2018-06-03', '2018-06-30', 'N', '2018-06-04', 'Ralph'),
(2, 'Homeland Prectice', 'Homeland Prectice at Harare Gardens', '', 'Y', '2018-06-03', '2018-06-30', 'N', '2018-06-04', 'Mthoko'),
(3, 'Wedding', 'There will be a wedding soon', '', 'Y', '2018-06-03', '2018-06-30', 'N', '2018-06-04', 'Mthoko');

-- --------------------------------------------------------

--
-- Table structure for table `churchmaterial`
--

CREATE TABLE `churchmaterial` (
  `ID` int(50) NOT NULL,
  `document_url` varchar(50) NOT NULL,
  `date_created` date NOT NULL,
  `created_by` int(50) NOT NULL,
  `views_count` int(50) NOT NULL,
  `material_category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `churchmaterialcategory`
--

CREATE TABLE `churchmaterialcategory` (
  `category_id` int(50) NOT NULL,
  `title` int(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `ID` varchar(50) NOT NULL,
  `event_title` text NOT NULL,
  `date_created` date NOT NULL,
  `event_decription` text NOT NULL,
  `created_by` text NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `is_public` int(50) NOT NULL,
  `views_count` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `ID` int(50) NOT NULL,
  `url` varchar(50) NOT NULL,
  `created_by` text NOT NULL,
  `title` text NOT NULL,
  `category_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gallerycategory`
--

CREATE TABLE `gallerycategory` (
  `category_id` int(50) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `group_id` int(11) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `group_active` int(11) NOT NULL DEFAULT '0',
  `group_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `ID` int(50) NOT NULL,
  `name` text NOT NULL,
  `status` int(11) NOT NULL,
  `phone` int(50) NOT NULL,
  `physical_address` varchar(50) NOT NULL,
  `city` varchar(100) NOT NULL,
  `current_church` varchar(50) NOT NULL,
  `email_address` varchar(50) NOT NULL,
  `image_url` varchar(50) NOT NULL,
  `gender` text NOT NULL,
  `marital_status` text NOT NULL,
  `year_of_graduation` date NOT NULL,
  `program` text NOT NULL,
  `is_employed` text NOT NULL,
  `comments` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`ID`, `name`, `status`, `phone`, `physical_address`, `city`, `current_church`, `email_address`, `image_url`, `gender`, `marital_status`, `year_of_graduation`, `program`, `is_employed`, `comments`, `user_id`) VALUES
(1, 'Calson Mpupuni', 1, 780023830, '45 Gret Road, Waren Park, Harare', '04', 'Warren Park Church', 'cmp@gmail.com', 'assests/images/members/4.jpg', '1', 'Single', '2016-06-29', 'BioTechnology', 'Yes', 'Highly participative', 1),
(2, 'Adrain Muchatibaya', 1, 8038393, '2356 Bristol Road, Newlands, Harare', '04', 'HCCC', 'adrainkudakwashe@gmail.com', 'assests/images/members/5.jpg', '1', 'Single', '2017-10-04', 'Information Technology', 'Yes', 'Active', 0),
(3, 'Tatenda Katsande', 1, 72903364, 'VTC, Chinhoyi', '06', 'Chinhoyi Central', 'tatskatsande@gmail.com', 'assests/images/members/3.png', '2', 'Single', '2016-10-05', 'Marketing', 'Yes', 'Active', 3),
(4, 'Alicia Matope', 1, 779397292, 'Marimba Park', '04', 'HCCC', 'alicia@gmail.com', 'assests/images/members/3.png', '2', 'Single', '2017-10-04', 'Accounting', 'Yes', 'Participates', 0),
(5, 'Ralph Makuyana', 1, 779095453, '7 Tatonga, Morning Side', '01', 'Mutare City Centre Church', 'ralph@gmail.com', 'assests/images/members/5.jpg', '1', 'Single', '2017-10-04', 'Information Technology', 'Yes', 'Active', 0),
(6, 'Julius ', 1, 279028292, 'Capetown', '00', 'Estlow Church', 'julius@gmail.com', 'assests/images/members/2.jpg', '1', 'Single', '2017-10-04', 'Information Technology', 'Yes', 'Active', 0),
(7, 'Laurret Mbiba', 0, 279028292, 'Capetown', '00', 'Estlow Church', 'lau@gmail.com', 'assests/images/members/1.jpg', '1', 'Single', '2017-10-04', 'Mechatronics', 'Yes', 'Active', 0),
(8, 'Beloved', 0, 96272282, 'Dubai', '00', 'Princerow Church', 'b@gmail.com', 'assests/images/members/3.png', '2', 'Single', '2017-10-04', 'Fashion & design', 'Yes', 'Active', 8);

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE `promotion` (
  `ID` int(50) NOT NULL,
  `date_created` date NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `document_url` varchar(50) NOT NULL,
  `image_url` varchar(50) NOT NULL,
  `views_count` int(50) NOT NULL,
  `created_by` text NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `category_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `promotion`
--

INSERT INTO `promotion` (`ID`, `date_created`, `title`, `description`, `document_url`, `image_url`, `views_count`, `created_by`, `start_date`, `end_date`, `category_id`) VALUES
(1, '2018-06-05', 'Church Building', 'Lets build', '', '', 6, 'Lenon', '2018-06-03', '2018-06-05', 12);

-- --------------------------------------------------------

--
-- Table structure for table `promotioncategory`
--

CREATE TABLE `promotioncategory` (
  `promotion_category` text NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `ID` int(50) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `source_document_url` varchar(50) NOT NULL,
  `created_by` text NOT NULL,
  `date_created` date NOT NULL,
  `views_count` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`ID`, `title`, `description`, `source_document_url`, `created_by`, `date_created`, `views_count`) VALUES
(1, 'Rusape Zunde Baptism ', '122 were baptised, praise God', '', 'Nyasha Tsotsoma', '2015-06-03', 47),
(2, 'Music Day at Crenbourne Chruch', 'As Homeland, we were blessed', '', 'Tatenda', '2018-06-10', 55);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`) VALUES
(1, 'admin', '123456', ''),
(2, 'tinashe', 'tinashetaguta', 'ttaguta89@gmail.com'),
(3, 'barnabus', 'muchabaya', 'muchabayab@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `promotion`
--
ALTER TABLE `promotion`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
