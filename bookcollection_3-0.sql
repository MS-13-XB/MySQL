-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 07. Jul 2020 um 14:39
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

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `book`
--

CREATE TABLE `book` (
  `book_id` int(11) NOT NULL,
  `book_autor` varchar(55) DEFAULT NULL,
  `book_title` varchar(55) DEFAULT NULL,
  `book_NumOfChapt` int(11) DEFAULT NULL,
  `book_start_read` date DEFAULT NULL,
  `book_end_read` date DEFAULT NULL,
  `book_status` enum('true','false') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `genre`
--

CREATE TABLE `genre` (
  `genre_id` int(11) NOT NULL,
  `genre_type` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  MODIFY `autor_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `book`
--
ALTER TABLE `book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `boughtin`
--
ALTER TABLE `boughtin`
  MODIFY `boughtIn_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `collection`
--
ALTER TABLE `collection`
  MODIFY `collection_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `genre`
--
ALTER TABLE `genre`
  MODIFY `genre_id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `person_id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `wrote_id` int(11) NOT NULL AUTO_INCREMENT;

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
