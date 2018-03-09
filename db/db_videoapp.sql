-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 09, 2018 at 12:54 PM
-- Server version: 5.6.38
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_videoapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_arating`
--

CREATE TABLE `tbl_arating` (
  `arating_id` tinyint(3) UNSIGNED NOT NULL,
  `arating_name` varchar(250) NOT NULL,
  `arating_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_arating`
--

INSERT INTO `tbl_arating` (`arating_id`, `arating_name`, `arating_desc`) VALUES
(1, 'G', 'G – General Audiences\r\nAll ages admitted. Nothing that would offend parents for viewing by children. '),
(2, 'PG', 'PG – Parental Guidance Suggested\r\nSome material may not be suitable for children. '),
(3, 'PG-13', 'PG-13 – Parents Strongly Cautioned\r\nSome material may be inappropriate for children under 13. Parents are urged to be cautious. '),
(4, 'R', 'R – Restricted\r\nUnder 17 requires accompanying parent or adult guardian. Contains some adult material. Parents are urged to learn more about the film before taking their young children with them. ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_arating_mov`
--

CREATE TABLE `tbl_arating_mov` (
  `arating_mov_id` tinyint(3) UNSIGNED NOT NULL,
  `movies_id` mediumint(9) NOT NULL,
  `arating_id` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_arating_mov`
--

INSERT INTO `tbl_arating_mov` (`arating_mov_id`, `movies_id`, `arating_id`) VALUES
(1, 1, 4),
(2, 2, 3),
(3, 3, 2),
(4, 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genre`
--

CREATE TABLE `tbl_genre` (
  `genre_id` tinyint(3) UNSIGNED NOT NULL,
  `genre_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_genre`
--

INSERT INTO `tbl_genre` (`genre_id`, `genre_name`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Comedy'),
(4, 'Crime'),
(5, 'Drama'),
(6, 'Historical'),
(7, 'Horror'),
(8, 'Musical'),
(9, 'Science Fiction'),
(10, 'War'),
(11, 'Western'),
(12, 'Animation'),
(13, 'Family'),
(14, 'Fantasy'),
(15, 'Romance'),
(16, 'Sport'),
(17, 'Thriller');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genre_mov`
--

CREATE TABLE `tbl_genre_mov` (
  `genre_mov_id` mediumint(8) UNSIGNED NOT NULL,
  `movies_id` tinyint(3) NOT NULL,
  `genre_id` tinyint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_genre_mov`
--

INSERT INTO `tbl_genre_mov` (`genre_mov_id`, `movies_id`, `genre_id`) VALUES
(1, 1, 4),
(2, 1, 5),
(3, 2, 5),
(4, 2, 15),
(5, 3, 1),
(6, 3, 2),
(7, 3, 14),
(8, 4, 7),
(9, 4, 17);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

CREATE TABLE `tbl_movies` (
  `movies_id` tinyint(3) UNSIGNED NOT NULL,
  `movies_cover` varchar(75) NOT NULL,
  `movies_title` varchar(200) NOT NULL,
  `movies_year` varchar(5) NOT NULL,
  `movies_duration` varchar(25) NOT NULL,
  `movies_plot` text NOT NULL,
  `movies_release` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movies_id`, `movies_cover`, `movies_title`, `movies_year`, `movies_duration`, `movies_plot`, `movies_release`) VALUES
(1, 'driveCover.jpg', 'Drive', '2011', '1h 40m', 'A mysterious Hollywood stuntman and mechanic moonlights as a getaway driver and finds himself in trouble when he helps out his neighbor. ', '16 September, 2011'),
(2, 'forrestGumpCover.jpg', 'Forrest Gump', '1994', '2h 22m', 'The presidencies of Kennedy and Johnson, Vietnam, Watergate, and other history unfold through the perspective of an Alabama man with an IQ of 75. ', '6 July, 1994'),
(3, 'starWarsIVCover.jpg', 'Star Wars: Episode IV - A New Hope', '1977', '2h 1m', 'Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a Wookiee and two droids to save the galaxy from the Empire\'s world-destroying battle-station while also attempting to rescue Princess Leia from the evil Darth Vader. ', '25 May, 1977'),
(4, 'psychoCover.jpg', 'Psycho', '1960', '1h 49m', 'A Phoenix secretary embezzles $40,000 from her employer\'s client, goes on the run, and checks into a remote motel run by a young man under the domination of his mother. ', '8 September 1960');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_arating`
--
ALTER TABLE `tbl_arating`
  ADD PRIMARY KEY (`arating_id`);

--
-- Indexes for table `tbl_arating_mov`
--
ALTER TABLE `tbl_arating_mov`
  ADD PRIMARY KEY (`arating_mov_id`);

--
-- Indexes for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `tbl_genre_mov`
--
ALTER TABLE `tbl_genre_mov`
  ADD PRIMARY KEY (`genre_mov_id`);

--
-- Indexes for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  ADD PRIMARY KEY (`movies_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_arating`
--
ALTER TABLE `tbl_arating`
  MODIFY `arating_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_arating_mov`
--
ALTER TABLE `tbl_arating_mov`
  MODIFY `arating_mov_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  MODIFY `genre_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_genre_mov`
--
ALTER TABLE `tbl_genre_mov`
  MODIFY `genre_mov_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  MODIFY `movies_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
