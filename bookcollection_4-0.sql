-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 07. Jul 2020 um 19:02
-- Server-Version: 10.4.13-MariaDB
-- PHP-Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `bookcollection`
--
CREATE DATABASE IF NOT EXISTS `bookcollection` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bookcollection`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `autor`
--

CREATE TABLE `autor` (
  `autor_id` int(11) NOT NULL,
  `autor_first_name` varchar(55) DEFAULT NULL,
  `autor_last_name` varchar(55) DEFAULT NULL,
  `autor_DateOfBirth` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `autor`
--

INSERT INTO `autor` (`autor_id`, `autor_first_name`, `autor_last_name`, `autor_DateOfBirth`) VALUES
(1, 'Alexander', 'Dumas', '1795-07-08'),
(2, 'Mahatma', 'Gandhi', '1876-04-09'),
(3, 'Yuvraj', 'Singh', '1699-09-22'),
(4, 'William', 'Shakespeare', '1634-09-03'),
(5, 'Paulo', 'Coelho', '1934-03-06'),
(6, 'Charles', 'Seife', '1834-07-15'),
(7, 'Paul', 'Lockhart', '1756-11-25'),
(8, 'William', 'Sawyer', '1861-10-20'),
(9, 'Martin', 'Aigner', '1919-10-21'),
(11, 'Matt', 'Parker', '1921-08-24'),
(12, 'Eli', 'Maor', '1898-11-27'),
(13, 'Steven', 'Strogatz', '1880-01-30');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `book`
--

CREATE TABLE `book` (
  `book_id` int(11) NOT NULL,
  `book_title` varchar(55) DEFAULT NULL,
  `book_NumOfChapt` int(11) DEFAULT NULL,
  `book_start_read` date DEFAULT NULL,
  `book_end_read` date DEFAULT NULL,
  `book_status` enum('true','false') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `book`
--

INSERT INTO `book` (`book_id`, `book_title`, `book_NumOfChapt`, `book_start_read`, `book_end_read`, `book_status`) VALUES
(1, 'The Tree Musketeers', 13, '2013-10-16', '2013-11-10', 'true'),
(2, 'The Tree Musketeers', 13, '2013-10-16', '2013-11-10', 'true'),
(3, 'My Experiments with Truth', 15, '2015-02-05', '2015-03-10', 'true'),
(4, 'The test of my life', 19, '2016-06-08', '2016-08-13', 'true'),
(5, 'As you like it', 11, '2019-01-31', '0000-00-00', 'false'),
(6, 'The Alchimist', 7, '2009-04-16', '2010-11-27', 'true'),
(7, 'Makrub', 5, '2005-09-10', '2007-10-31', 'true'),
(8, 'Measurement', 20, '2002-02-09', '2003-03-09', 'true'),
(9, 'Prelude to mathematics', 15, '2001-08-03', '0000-00-00', 'false'),
(10, 'Proofs from THE BOOK', 10, '2014-04-26', '0000-00-00', 'false'),
(11, 'The Joy of X', 12, '2010-03-16', '2012-12-01', 'true'),
(12, 'Things To Mare and do in the fourth dimension', 13, '2016-12-29', '2019-01-23', 'true'),
(13, 'e:The story of a number', 17, '2017-09-08', '2018-03-15', 'true');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `boughtin`
--

CREATE TABLE `boughtin` (
  `boughtIn_id` int(11) NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `collection`
--

CREATE TABLE `collection` (
  `collection_id` int(11) NOT NULL,
  `Collection_NumOfBooks` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `collection`
--

INSERT INTO `collection` (`collection_id`, `Collection_NumOfBooks`) VALUES
(1, 33),
(2, 25),
(3, 33),
(4, 75),
(5, 61),
(6, 27),
(7, 84),
(8, 42),
(9, 21),
(10, 39),
(11, 54),
(12, 77),
(13, 69),
(14, 13),
(15, 7),
(16, 99),
(17, 101),
(18, 130),
(19, 156),
(20, 22),
(21, 131),
(22, 321),
(23, 199),
(24, 71),
(25, 77),
(26, 89),
(27, 399),
(28, 17),
(29, 514),
(30, 87),
(31, 106),
(32, 45),
(33, 123);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `genre`
--

CREATE TABLE `genre` (
  `genre_id` int(11) NOT NULL,
  `genre_type` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `genre`
--

INSERT INTO `genre` (`genre_id`, `genre_type`) VALUES
(1, 'Science Fic'),
(2, 'Drama'),
(3, 'Action'),
(4, 'Adventure'),
(5, 'Romance'),
(6, 'Horror'),
(7, 'Mystery'),
(8, 'Comic'),
(9, 'Fantasy'),
(10, 'Encyclopedi'),
(11, 'Dictionary'),
(12, 'Autobiograp'),
(13, 'Biography'),
(14, 'Traditional'),
(15, 'Legend'),
(16, 'Fable'),
(17, 'Information'),
(18, 'Crime'),
(19, 'Mythology'),
(20, 'Thriller'),
(21, 'Detective'),
(22, 'Sports'),
(23, 'Historical'),
(25, 'Drama'),
(26, 'Action'),
(27, 'Adventure'),
(28, 'Romance'),
(29, 'Horror'),
(30, 'Mystery'),
(31, 'Comic'),
(32, 'Fantasy'),
(33, 'Encyclopedi'),
(34, 'Dictionary'),
(35, 'Autobiograp'),
(36, 'Biography'),
(37, 'Traditional'),
(38, 'Legend'),
(39, 'Fable'),
(40, 'Information'),
(41, 'Crime'),
(42, 'Mythology'),
(43, 'Thriller'),
(44, 'Detective'),
(45, 'Sports'),
(46, 'Historical');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `have`
--

CREATE TABLE `have` (
  `have_id` int(11) NOT NULL,
  `collection_id` int(11) DEFAULT NULL,
  `genre_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `includes`
--

CREATE TABLE `includes` (
  `includes_id` int(11) NOT NULL,
  `collection_id` int(11) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `own`
--

CREATE TABLE `own` (
  `own_id` int(11) NOT NULL,
  `person_id` int(11) DEFAULT NULL,
  `collection_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `person`
--

CREATE TABLE `person` (
  `person_id` int(11) NOT NULL,
  `person_first_name` varchar(55) DEFAULT NULL,
  `person_last_name` varchar(55) DEFAULT NULL,
  `person_DateOfBirth` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `person`
--

INSERT INTO `person` (`person_id`, `person_first_name`, `person_last_name`, `person_DateOfBirth`) VALUES
(2, 'Marko', 'Stancevic', '1995-06-10'),
(3, 'Novak', 'Djokovic', '1978-01-19'),
(4, 'Mladen', 'Markovic', '1988-08-14'),
(5, 'Franz', 'Lackinger', '1969-09-03'),
(6, 'Barbara', 'Prossinagg', '1968-07-23'),
(7, 'Franz', 'Kluwik', '1966-12-19'),
(8, 'Karin', 'Kurz', '1970-05-29'),
(9, 'Anastasija', 'Lakic', '1995-06-10'),
(10, 'Antonio', 'Banderas', '1969-09-09'),
(11, 'Rastko', 'Nemannjic', '1989-06-28'),
(12, 'Nikola', 'Tesla', '1977-01-07'),
(13, 'Rika', 'Usami', '1995-06-10'),
(14, 'Maria', 'Kronhelm', '1949-03-16'),
(15, 'Novak', 'Djokovic', '1978-01-19'),
(16, 'Mladen', 'Markovic', '1988-08-14'),
(17, 'Franz', 'Lackinger', '1969-09-03'),
(18, 'Barbara', 'Prossinagg', '1968-07-23'),
(19, 'Franz', 'Kluwik', '1966-12-19'),
(20, 'Karin', 'Kurz', '1970-05-29'),
(21, 'Anastasija', 'Lakic', '1995-06-10'),
(22, 'Antonio', 'Banderas', '1969-09-09'),
(23, 'Rastko', 'Nemannjic', '1989-06-28'),
(24, 'Nikola', 'Tesla', '1977-01-07'),
(25, 'Rika', 'Usami', '1995-06-10'),
(26, 'Maria', 'Kronhelm', '1949-03-16');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `possess`
--

CREATE TABLE `possess` (
  `possess_id` int(11) NOT NULL,
  `genre_id` int(11) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `store`
--

CREATE TABLE `store` (
  `store_id` int(11) NOT NULL,
  `store_name` varchar(55) DEFAULT NULL,
  `store_DateBought` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `visit`
--

CREATE TABLE `visit` (
  `visit_id` int(11) NOT NULL,
  `person_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `wrote`
--

CREATE TABLE `wrote` (
  `wrote_id` int(11) NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `autor_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`autor_id`);

--
-- Indizes für die Tabelle `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`);

--
-- Indizes für die Tabelle `boughtin`
--
ALTER TABLE `boughtin`
  ADD PRIMARY KEY (`boughtIn_id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indizes für die Tabelle `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`collection_id`);

--
-- Indizes für die Tabelle `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indizes für die Tabelle `have`
--
ALTER TABLE `have`
  ADD PRIMARY KEY (`have_id`),
  ADD KEY `collection_id` (`collection_id`),
  ADD KEY `genre_id` (`genre_id`);

--
-- Indizes für die Tabelle `includes`
--
ALTER TABLE `includes`
  ADD PRIMARY KEY (`includes_id`),
  ADD KEY `collection_id` (`collection_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indizes für die Tabelle `own`
--
ALTER TABLE `own`
  ADD PRIMARY KEY (`own_id`),
  ADD KEY `person_id` (`person_id`),
  ADD KEY `collection_id` (`collection_id`);

--
-- Indizes für die Tabelle `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`person_id`);

--
-- Indizes für die Tabelle `possess`
--
ALTER TABLE `possess`
  ADD PRIMARY KEY (`possess_id`),
  ADD KEY `genre_id` (`genre_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indizes für die Tabelle `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`store_id`);

--
-- Indizes für die Tabelle `visit`
--
ALTER TABLE `visit`
  ADD PRIMARY KEY (`visit_id`),
  ADD KEY `person_id` (`person_id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indizes für die Tabelle `wrote`
--
ALTER TABLE `wrote`
  ADD PRIMARY KEY (`wrote_id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `autor_id` (`autor_id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `autor`
--
ALTER TABLE `autor`
  MODIFY `autor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT für Tabelle `book`
--
ALTER TABLE `book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT für Tabelle `boughtin`
--
ALTER TABLE `boughtin`
  MODIFY `boughtIn_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `collection`
--
ALTER TABLE `collection`
  MODIFY `collection_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT für Tabelle `genre`
--
ALTER TABLE `genre`
  MODIFY `genre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT für Tabelle `have`
--
ALTER TABLE `have`
  MODIFY `have_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `includes`
--
ALTER TABLE `includes`
  MODIFY `includes_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `own`
--
ALTER TABLE `own`
  MODIFY `own_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `person`
--
ALTER TABLE `person`
  MODIFY `person_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT für Tabelle `possess`
--
ALTER TABLE `possess`
  MODIFY `possess_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `store`
--
ALTER TABLE `store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `visit`
--
ALTER TABLE `visit`
  MODIFY `visit_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `wrote`
--
ALTER TABLE `wrote`
  MODIFY `wrote_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `boughtin`
--
ALTER TABLE `boughtin`
  ADD CONSTRAINT `boughtin_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `boughtin_ibfk_2` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `have`
--
ALTER TABLE `have`
  ADD CONSTRAINT `have_ibfk_1` FOREIGN KEY (`collection_id`) REFERENCES `collection` (`collection_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `have_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`genre_id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `includes`
--
ALTER TABLE `includes`
  ADD CONSTRAINT `includes_ibfk_1` FOREIGN KEY (`collection_id`) REFERENCES `collection` (`collection_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `includes_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `own`
--
ALTER TABLE `own`
  ADD CONSTRAINT `own_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `own_ibfk_2` FOREIGN KEY (`collection_id`) REFERENCES `collection` (`collection_id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `possess`
--
ALTER TABLE `possess`
  ADD CONSTRAINT `possess_ibfk_1` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`genre_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `possess_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `visit`
--
ALTER TABLE `visit`
  ADD CONSTRAINT `visit_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `visit_ibfk_2` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `wrote`
--
ALTER TABLE `wrote`
  ADD CONSTRAINT `wrote_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wrote_ibfk_2` FOREIGN KEY (`autor_id`) REFERENCES `autor` (`autor_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
