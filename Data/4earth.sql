-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2018 at 08:14 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `4earth`
--

-- --------------------------------------------------------

--
-- Table structure for table `actionrecords`
--

CREATE TABLE `actionrecords` (
  `actionID` bigint(20) NOT NULL,
  `points` int(11) NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `actions`
--

CREATE TABLE `actions` (
  `actionID` bigint(20) NOT NULL,
  `likesID` bigint(20) NOT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `points` int(11) NOT NULL DEFAULT '0',
  `brief` varchar(200) NOT NULL,
  `commentsID` bigint(20) NOT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `admin` tinyint(4) NOT NULL DEFAULT '0',
  `place` varchar(50) NOT NULL,
  `owner` varchar(40) NOT NULL,
  `participants` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `biography`
--

CREATE TABLE `biography` (
  `bio` varchar(500) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `studiesLevel` varchar(140) DEFAULT NULL,
  `hobbies` varchar(140) DEFAULT NULL,
  `principalPhoto` varchar(80) DEFAULT NULL,
  `backPhoto` varchar(80) DEFAULT NULL,
  `username` varchar(40) NOT NULL,
  `lifeNote` varchar(140) DEFAULT NULL,
  `urlWeb` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `commentID` bigint(20) NOT NULL,
  `comment` varchar(140) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ecolevels`
--

CREATE TABLE `ecolevels` (
  `username` varchar(40) NOT NULL,
  `points` int(11) NOT NULL DEFAULT '0',
  `recipesNumber` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `foodmarkets`
--

CREATE TABLE `foodmarkets` (
  `foodmarketID` bigint(20) NOT NULL,
  `opening` varchar(40) NOT NULL,
  `location` varchar(50) NOT NULL,
  `name` varchar(40) NOT NULL,
  `picture` varchar(80) NOT NULL,
  `urlWeb` varchar(80) NOT NULL,
  `coordinateX` float NOT NULL,
  `coordinateY` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `itemsID` bigint(20) NOT NULL,
  `price` int(11) NOT NULL,
  `brief` varchar(140) NOT NULL,
  `name` varchar(50) NOT NULL,
  `proyectRelated` bigint(20) NOT NULL,
  `points` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `likeID` bigint(20) NOT NULL,
  `username` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `content` varchar(500) NOT NULL,
  `sender` varchar(40) NOT NULL,
  `receiver` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `myactions`
--

CREATE TABLE `myactions` (
  `username` varchar(40) NOT NULL,
  `actionID` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mymarkets`
--

CREATE TABLE `mymarkets` (
  `marketID` bigint(20) NOT NULL,
  `username` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mynews`
--

CREATE TABLE `mynews` (
  `newID` bigint(20) NOT NULL,
  `username` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `myplaces`
--

CREATE TABLE `myplaces` (
  `placeID` bigint(20) NOT NULL,
  `username` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `myposts`
--

CREATE TABLE `myposts` (
  `username` varchar(40) NOT NULL,
  `postID` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `myrecipes`
--

CREATE TABLE `myrecipes` (
  `recipesID` bigint(20) NOT NULL,
  `username` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `myrestaurants`
--

CREATE TABLE `myrestaurants` (
  `restaurantID` bigint(20) NOT NULL,
  `username` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `myshops`
--

CREATE TABLE `myshops` (
  `shopID` bigint(20) NOT NULL,
  `username` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `newsID` bigint(20) NOT NULL,
  `brief` varchar(140) NOT NULL,
  `more` varchar(80) NOT NULL,
  `location` varchar(50) NOT NULL,
  `photo` varchar(80) NOT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `placesID` bigint(20) NOT NULL,
  `brief` varchar(140) NOT NULL,
  `photo1` varchar(80) NOT NULL,
  `photo2` varchar(80) DEFAULT NULL,
  `photo3` varchar(80) DEFAULT NULL,
  `photo4` varchar(80) DEFAULT NULL,
  `photo5` varchar(80) DEFAULT NULL,
  `photo6` varchar(80) DEFAULT NULL,
  `photo7` varchar(80) DEFAULT NULL,
  `photo8` varchar(80) DEFAULT NULL,
  `photo9` varchar(80) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `naturalSpace` tinyint(1) NOT NULL,
  `coordinateX` float NOT NULL,
  `coordinateY` float NOT NULL,
  `opening` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `likeID` bigint(20) NOT NULL,
  `commentID` bigint(20) NOT NULL,
  `video` varchar(80) NOT NULL,
  `photo` varchar(80) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `brief` varchar(140) NOT NULL,
  `owner` varchar(40) NOT NULL,
  `postID` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `recipesID` bigint(20) NOT NULL,
  `username` varchar(40) NOT NULL,
  `brief` varchar(2000) NOT NULL,
  `photo1` varchar(80) NOT NULL,
  `photo2` varchar(80) DEFAULT NULL,
  `photo3` varchar(80) DEFAULT NULL,
  `photo4` varchar(80) DEFAULT NULL,
  `photo5` varchar(80) DEFAULT NULL,
  `photo6` varchar(80) DEFAULT NULL,
  `photo7` varchar(80) DEFAULT NULL,
  `photo8` varchar(80) DEFAULT NULL,
  `photo9` varchar(80) DEFAULT NULL,
  `video` varchar(80) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `restaurantID` bigint(20) NOT NULL,
  `urlWeb` varchar(80) NOT NULL,
  `location` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `coordinateX` float NOT NULL,
  `coordinateY` float NOT NULL,
  `photo1` varchar(80) NOT NULL,
  `opening` varchar(40) NOT NULL,
  `photo2` varchar(80) DEFAULT NULL,
  `photo3` varchar(80) DEFAULT NULL,
  `photo4` varchar(80) DEFAULT NULL,
  `photo5` varchar(80) DEFAULT NULL,
  `photo6` varchar(80) DEFAULT NULL,
  `photo7` varchar(80) DEFAULT NULL,
  `photo8` varchar(80) DEFAULT NULL,
  `photo9` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `shopID` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `location` varchar(140) NOT NULL,
  `brief` varchar(140) NOT NULL,
  `picture` varchar(80) NOT NULL,
  `urlWeb` varchar(80) NOT NULL,
  `coordinateX` float NOT NULL,
  `coordinateY` float NOT NULL,
  `opening` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `taged`
--

CREATE TABLE `taged` (
  `postID` bigint(20) NOT NULL,
  `username` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(40) NOT NULL,
  `fullName` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `admin` tinyint(4) NOT NULL DEFAULT '0',
  `premium` tinyint(4) NOT NULL DEFAULT '0',
  `birthday` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cityCountry` varchar(50) NOT NULL,
  `email` varchar(80) NOT NULL,
  `phone` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='table for users of 4earth';

-- --------------------------------------------------------

--
-- Table structure for table `usersfriends`
--

CREATE TABLE `usersfriends` (
  `username1` varchar(40) NOT NULL,
  `username2` varchar(40) NOT NULL,
  `favourite` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='table for the friends relationship';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actionrecords`
--
ALTER TABLE `actionrecords`
  ADD PRIMARY KEY (`actionID`,`username`),
  ADD KEY `username` (`username`),
  ADD KEY `actionID` (`actionID`);

--
-- Indexes for table `actions`
--
ALTER TABLE `actions`
  ADD PRIMARY KEY (`actionID`),
  ADD UNIQUE KEY `actionID` (`actionID`),
  ADD KEY `likesID` (`likesID`),
  ADD KEY `commentsID` (`commentsID`),
  ADD KEY `owner` (`owner`);

--
-- Indexes for table `biography`
--
ALTER TABLE `biography`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`commentID`,`comment`),
  ADD KEY `commentID` (`commentID`) USING BTREE;

--
-- Indexes for table `ecolevels`
--
ALTER TABLE `ecolevels`
  ADD PRIMARY KEY (`username`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `foodmarkets`
--
ALTER TABLE `foodmarkets`
  ADD PRIMARY KEY (`foodmarketID`),
  ADD UNIQUE KEY `foodmarketID` (`foodmarketID`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`itemsID`),
  ADD KEY `proyectRelated` (`proyectRelated`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`likeID`),
  ADD KEY `username` (`username`),
  ADD KEY `likeID` (`likeID`) USING BTREE;

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`date`,`sender`,`receiver`),
  ADD KEY `sender` (`sender`),
  ADD KEY `receiver` (`receiver`);

--
-- Indexes for table `myactions`
--
ALTER TABLE `myactions`
  ADD PRIMARY KEY (`username`,`actionID`),
  ADD KEY `username` (`username`),
  ADD KEY `actionID` (`actionID`);

--
-- Indexes for table `mymarkets`
--
ALTER TABLE `mymarkets`
  ADD PRIMARY KEY (`marketID`,`username`),
  ADD UNIQUE KEY `marketID` (`marketID`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `mynews`
--
ALTER TABLE `mynews`
  ADD PRIMARY KEY (`newID`,`username`),
  ADD UNIQUE KEY `newID` (`newID`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `myplaces`
--
ALTER TABLE `myplaces`
  ADD PRIMARY KEY (`placeID`,`username`),
  ADD UNIQUE KEY `placeID` (`placeID`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `myposts`
--
ALTER TABLE `myposts`
  ADD PRIMARY KEY (`username`,`postID`),
  ADD KEY `username` (`username`),
  ADD KEY `postID` (`postID`);

--
-- Indexes for table `myrecipes`
--
ALTER TABLE `myrecipes`
  ADD PRIMARY KEY (`recipesID`,`username`),
  ADD KEY `recipesID` (`recipesID`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `myrestaurants`
--
ALTER TABLE `myrestaurants`
  ADD PRIMARY KEY (`restaurantID`,`username`),
  ADD UNIQUE KEY `restaurantID` (`restaurantID`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `myshops`
--
ALTER TABLE `myshops`
  ADD PRIMARY KEY (`shopID`,`username`),
  ADD UNIQUE KEY `shopID` (`shopID`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`newsID`),
  ADD UNIQUE KEY `newsID` (`newsID`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`placesID`),
  ADD UNIQUE KEY `placesID` (`placesID`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`postID`),
  ADD KEY `owner` (`owner`),
  ADD KEY `likeID` (`likeID`),
  ADD KEY `commentID` (`commentID`);

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`recipesID`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`restaurantID`),
  ADD UNIQUE KEY `resturantID` (`restaurantID`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`shopID`),
  ADD UNIQUE KEY `shopID` (`shopID`);

--
-- Indexes for table `taged`
--
ALTER TABLE `taged`
  ADD PRIMARY KEY (`postID`,`username`),
  ADD KEY `postID` (`postID`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `usersfriends`
--
ALTER TABLE `usersfriends`
  ADD PRIMARY KEY (`username1`,`username2`),
  ADD KEY `username2` (`username2`),
  ADD KEY `username1` (`username1`),
  ADD KEY `favourite` (`favourite`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actions`
--
ALTER TABLE `actions`
  MODIFY `actionID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `commentID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `itemsID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `likeID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `newsID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `placesID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `recipesID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `shopID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `actionrecords`
--
ALTER TABLE `actionrecords`
  ADD CONSTRAINT `actionrecords_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`),
  ADD CONSTRAINT `actionrecords_ibfk_2` FOREIGN KEY (`actionID`) REFERENCES `actions` (`actionID`);

--
-- Constraints for table `actions`
--
ALTER TABLE `actions`
  ADD CONSTRAINT `actions_ibfk_1` FOREIGN KEY (`owner`) REFERENCES `users` (`username`),
  ADD CONSTRAINT `actions_ibfk_2` FOREIGN KEY (`commentsID`) REFERENCES `comments` (`commentID`),
  ADD CONSTRAINT `actions_ibfk_3` FOREIGN KEY (`likesID`) REFERENCES `likes` (`likeID`);

--
-- Constraints for table `biography`
--
ALTER TABLE `biography`
  ADD CONSTRAINT `biography_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`);

--
-- Constraints for table `ecolevels`
--
ALTER TABLE `ecolevels`
  ADD CONSTRAINT `ecolevels_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`);

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`proyectRelated`) REFERENCES `actions` (`actionID`);

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`);

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`receiver`) REFERENCES `users` (`username`),
  ADD CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`sender`) REFERENCES `users` (`username`);

--
-- Constraints for table `myactions`
--
ALTER TABLE `myactions`
  ADD CONSTRAINT `myactions_ibfk_1` FOREIGN KEY (`actionID`) REFERENCES `actions` (`actionID`),
  ADD CONSTRAINT `myactions_ibfk_2` FOREIGN KEY (`username`) REFERENCES `users` (`username`);

--
-- Constraints for table `mymarkets`
--
ALTER TABLE `mymarkets`
  ADD CONSTRAINT `mymarkets_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`),
  ADD CONSTRAINT `mymarkets_ibfk_2` FOREIGN KEY (`marketID`) REFERENCES `foodmarkets` (`foodmarketID`);

--
-- Constraints for table `mynews`
--
ALTER TABLE `mynews`
  ADD CONSTRAINT `mynews_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`),
  ADD CONSTRAINT `mynews_ibfk_2` FOREIGN KEY (`newID`) REFERENCES `news` (`newsID`);

--
-- Constraints for table `myplaces`
--
ALTER TABLE `myplaces`
  ADD CONSTRAINT `myplaces_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`),
  ADD CONSTRAINT `myplaces_ibfk_2` FOREIGN KEY (`placeID`) REFERENCES `places` (`placesID`);

--
-- Constraints for table `myposts`
--
ALTER TABLE `myposts`
  ADD CONSTRAINT `myposts_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`),
  ADD CONSTRAINT `myposts_ibfk_2` FOREIGN KEY (`postID`) REFERENCES `posts` (`postID`);

--
-- Constraints for table `myrecipes`
--
ALTER TABLE `myrecipes`
  ADD CONSTRAINT `myrecipes_ibfk_1` FOREIGN KEY (`recipesID`) REFERENCES `recipes` (`recipesID`),
  ADD CONSTRAINT `myrecipes_ibfk_2` FOREIGN KEY (`username`) REFERENCES `users` (`username`);

--
-- Constraints for table `myrestaurants`
--
ALTER TABLE `myrestaurants`
  ADD CONSTRAINT `myrestaurants_ibfk_1` FOREIGN KEY (`restaurantID`) REFERENCES `restaurants` (`restaurantID`),
  ADD CONSTRAINT `myrestaurants_ibfk_2` FOREIGN KEY (`username`) REFERENCES `users` (`username`);

--
-- Constraints for table `myshops`
--
ALTER TABLE `myshops`
  ADD CONSTRAINT `myshops_ibfk_1` FOREIGN KEY (`shopID`) REFERENCES `shops` (`shopID`),
  ADD CONSTRAINT `myshops_ibfk_2` FOREIGN KEY (`username`) REFERENCES `users` (`username`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`commentID`) REFERENCES `comments` (`commentID`),
  ADD CONSTRAINT `posts_ibfk_2` FOREIGN KEY (`owner`) REFERENCES `users` (`username`),
  ADD CONSTRAINT `posts_ibfk_3` FOREIGN KEY (`likeID`) REFERENCES `likes` (`likeID`);

--
-- Constraints for table `taged`
--
ALTER TABLE `taged`
  ADD CONSTRAINT `taged_ibfk_1` FOREIGN KEY (`postID`) REFERENCES `posts` (`postID`),
  ADD CONSTRAINT `taged_ibfk_2` FOREIGN KEY (`username`) REFERENCES `users` (`username`);

--
-- Constraints for table `usersfriends`
--
ALTER TABLE `usersfriends`
  ADD CONSTRAINT `usersfriends_ibfk_1` FOREIGN KEY (`username1`) REFERENCES `users` (`username`),
  ADD CONSTRAINT `usersfriends_ibfk_2` FOREIGN KEY (`username2`) REFERENCES `users` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
