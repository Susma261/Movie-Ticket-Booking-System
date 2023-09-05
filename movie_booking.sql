-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2023 at 01:27 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movie_booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `showtime_id` int(11) DEFAULT NULL,
  `seat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `d5496ff6_ac6b_41ae_a075_3080227dba65`
--

CREATE TABLE `d5496ff6_ac6b_41ae_a075_3080227dba65` (
  `movie_name` varchar(49) NOT NULL,
  `theatre_name` varchar(21) DEFAULT NULL,
  `theatre_location` varchar(16) DEFAULT NULL,
  `release_date` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `d5496ff6_ac6b_41ae_a075_3080227dba65`
--

INSERT INTO `d5496ff6_ac6b_41ae_a075_3080227dba65` (`movie_name`, `theatre_name`, `theatre_location`, `release_date`) VALUES
('Avatar 2', 'BlueSky Theatres', 'Bayside', '16-12-2022'),
('Avengers: Age of Ultron', 'Cineplex Central', 'Metropolis', '01-05-2015'),
('Avengers: Endgame', 'Cineplex Central', 'Metropolis', '26-04-2019'),
('Back to the Future', 'Hill Valley Cinemas', 'Green Hills', '03-07-1985'),
('Black Panther', 'Uptown Screens', 'Metropolis', '16-02-2018'),
('Deadpool', 'RedFox Theatres', 'Westwood', '12-02-2016'),
('Doctor Strange', 'Dimension Theatres', 'Downtown', '04-11-2016'),
('E.T. the Extra-Terrestrial', 'Starry Nights Cinema', 'Moonville', '11-06-1982'),
('E.T. the Extra-Terrestrial (Re-release)', 'Starry Nights Cinema', 'Moonville', '22-03-2002'),
('Finding Dory', 'Galaxy Theatres', 'Westwood', '17-06-2016'),
('Finding Nemo', 'Galaxy Theatres', 'Westwood', '30-05-2003'),
('Finding Nemo 3D', 'Galaxy Theatres', 'Westwood', '14-09-2012'),
('Forrest Gump', 'Maplewood Cinema', 'Westwood', '06-07-1994'),
('Frozen', 'Crystalplex', 'Midtown', '27-11-2013'),
('Guardians of the Galaxy', 'Stellar Screens', 'Orion City', '01-08-2014'),
('Inception', 'Starlight Cinemas', 'Downtown', '16-07-2010'),
('Incredibles 2', 'MetroView Multiplex', 'Metropolis', '15-06-2018'),
('Interstellar', 'Stellar Cinemas', 'Orion City', '07-11-2014'),
('Jaws', 'Riviera Cinema', 'Coastal City', '20-06-1975'),
('Jurassic Park 3D', 'Millennium Screens', 'Green Hills', '05-04-2013'),
('Jurassic World', 'Rex Theatre', 'Coastal City', '12-06-2015'),
('Mad Max: Fury Road', 'Desert Oasis Theatres', 'Sandtown', '15-05-2015'),
('movie_name', 'theatre_name', 'theatre_location', 'release_date'),
('Pulp Fiction', 'Grove Movies', 'Westwood', '14-10-1994'),
('Spider-Man: No Way Home', 'CineWorld Valleyview', 'Valleyview', '17-12-2021'),
('Star Wars: The Force Awakens', 'Galactic Cinema', 'Fantasyville', '18-12-2015'),
('The Avengers', 'Superplex Downtown', 'Downtown', '04-05-2012'),
('The Dark Knight', 'Riverfront Movies', 'Downtown', '18-07-2008'),
('The Dark Knight Rises', 'Riverfront Movies', 'Downtown', '20-07-2012'),
('The Godfather', 'Corleone Pictures', 'Little Italy', '24-03-1972'),
('The Lego Movie', 'BrickHouse Cinema', 'Sunnyvale', '07-02-2014'),
('The Lion King', 'Royal Theatres', 'Valleyview', '19-07-2019'),
('The Lion King (2019)', 'Royal Theatres', 'Valleyview', '19-07-2019'),
('The Lord of the Rings: The Fellowship of the Ring', 'Mystic Theatres', 'Fantasyville', '19-12-2001'),
('The Martian', 'Red Planet Cinemas', 'Sandtown', '02-10-2015'),
('The Matrix', 'NeoCine Pinnacle', 'Downtown', '31-03-1999'),
('The Shawshank Redemption', 'Gateway Cinemas', 'Midtown', '23-09-1994'),
('The Sound of Music', 'Sunset Classics', 'Downtown', '02-03-1965'),
('Titanic', 'Oceanview Theatres', 'Coastal City', '19-12-1997'),
('Toy Story', 'Sunrise Cinemas', 'Sunnyvale', '22-11-1995'),
('Toy Story 4', 'Sunnyvale Cinemas', 'Sunnyvale', '21-06-2019'),
('Wonder Woman', 'Amazon Theatres', 'Metropolis', '02-06-2017');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`) VALUES
(1, 'Avatar 2'),
(2, 'Deadpool');

-- --------------------------------------------------------

--
-- Table structure for table `pricing`
--

CREATE TABLE `pricing` (
  `id` int(11) NOT NULL,
  `showtime_id` int(11) DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `seats`
--

CREATE TABLE `seats` (
  `id` int(11) NOT NULL,
  `showtime_id` int(11) DEFAULT NULL,
  `seat_number` int(11) DEFAULT NULL,
  `is_booked` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `showtimes`
--

CREATE TABLE `showtimes` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `showtime` datetime DEFAULT NULL,
  `theatre_location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `showtime_id` (`showtime_id`),
  ADD KEY `seat_id` (`seat_id`);

--
-- Indexes for table `d5496ff6_ac6b_41ae_a075_3080227dba65`
--
ALTER TABLE `d5496ff6_ac6b_41ae_a075_3080227dba65`
  ADD PRIMARY KEY (`movie_name`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pricing`
--
ALTER TABLE `pricing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `showtime_id` (`showtime_id`);

--
-- Indexes for table `seats`
--
ALTER TABLE `seats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `showtime_id` (`showtime_id`);

--
-- Indexes for table `showtimes`
--
ALTER TABLE `showtimes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pricing`
--
ALTER TABLE `pricing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seats`
--
ALTER TABLE `seats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `showtimes`
--
ALTER TABLE `showtimes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`showtime_id`) REFERENCES `showtimes` (`id`),
  ADD CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`seat_id`) REFERENCES `seats` (`id`);

--
-- Constraints for table `pricing`
--
ALTER TABLE `pricing`
  ADD CONSTRAINT `pricing_ibfk_1` FOREIGN KEY (`showtime_id`) REFERENCES `showtimes` (`id`);

--
-- Constraints for table `seats`
--
ALTER TABLE `seats`
  ADD CONSTRAINT `seats_ibfk_1` FOREIGN KEY (`showtime_id`) REFERENCES `showtimes` (`id`);

--
-- Constraints for table `showtimes`
--
ALTER TABLE `showtimes`
  ADD CONSTRAINT `showtimes_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
