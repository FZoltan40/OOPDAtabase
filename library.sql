-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Sze 12. 10:59
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `library`
--
CREATE DATABASE IF NOT EXISTS `library` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `library`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(30) DEFAULT NULL,
  `author` varchar(20) DEFAULT NULL,
  `releaseDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- A tábla adatainak kiíratása `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `releaseDate`) VALUES
(1, 'Métisse (Café au Lait)', 'Syrett', '2025-07-06'),
(2, 'Night of the Ghouls', 'Akhurst', '2024-12-05'),
(3, 'Demon Wind', 'Pimlett', '2025-01-28'),
(4, 'Love You You', 'Yakobowitz', '2025-08-31'),
(5, 'Bill Hicks: Revelations', 'Glanester', '2025-02-25'),
(6, 'The Spiritual Boxer', 'Scholar', '2025-02-03'),
(7, '100 Bloody Acres', 'Hadley', '2025-02-20'),
(8, 'Love and Basketball', 'Lagen', '2025-08-05'),
(9, 'Crime of Father Amaro, The (Cr', 'Keitch', '2025-05-02'),
(10, 'Casa de mi Padre', 'Mityushin', '2025-04-21'),
(11, 'Teorema', 'Gallimore', '2024-12-29'),
(12, 'Living Desert, The', 'McMichael', '2025-09-01'),
(13, 'Pee-wee\'s Big Adventure', 'Wylam', '2025-07-23'),
(14, 'Flight of the Navigator', 'Tomlett', '2025-01-21'),
(15, 'Hide and Seek', 'Brittan', '2024-09-20'),
(16, 'Dorado, El', 'Jurasek', '2025-06-12'),
(17, 'Snow Dogs', 'Vaney', '2024-11-04'),
(18, 'So Evil, So Young', 'Farnin', '2024-11-27'),
(19, 'Ballad of Narayama, The (Naray', 'Tomkowicz', '2025-05-23'),
(20, 'Toward the Unknown', 'Murcott', '2024-11-18'),
(21, 'Strange Case of Dr. Jekyll and', 'McFaell', '2025-03-23'),
(22, 'Cry \'Havoc\'', 'Tyhurst', '2025-08-20'),
(23, 'Honkytonk Man', 'Wittrington', '2024-11-14'),
(24, 'Supermen of Malegaon', 'Pervew', '2025-04-24'),
(25, 'Bloody Pit of Horror (Il boia ', 'Raittie', '2024-10-08'),
(26, 'Club Sandwich', 'Torrent', '2024-11-03'),
(27, 'Bertsolari', 'Golsworthy', '2025-01-11'),
(28, 'Demonic', 'Ringham', '2025-02-23'),
(29, 'My Own Private Idaho', 'Sawter', '2025-04-15'),
(30, 'Come Sweet Death (Komm, süsser', 'Bernot', '2025-02-27'),
(31, 'Bulldog Drummond Escapes', 'Eckley', '2025-01-21'),
(32, 'Achilles and the Tortoise (Aki', 'Jahn', '2024-11-21'),
(33, 'Abbott and Costello Go to Mars', 'Beagin', '2025-09-08'),
(34, 'Sundome', 'Biagioni', '2024-12-06'),
(35, 'Promised Land', 'Mineghelli', '2025-05-12'),
(36, 'Guncrazy', 'Brunroth', '2025-04-30'),
(37, 'The Swedish Moment', 'Halgarth', '2025-01-13'),
(38, 'Persuasion', 'Croster', '2025-05-12'),
(39, 'Holiday for Drumsticks', 'Muge', '2025-08-18'),
(40, 'Human Stain, The', 'Britcher', '2025-08-22'),
(41, 'Stuck ', 'Cumo', '2024-10-13'),
(42, 'Pygmalion', 'Muddimer', '2025-03-21'),
(43, 'Souls for Sale', 'Clint', '2025-07-01'),
(44, 'Gymnast, The', 'Cornner', '2025-03-03'),
(45, 'Manta, Manta', 'Deakin', '2024-12-01'),
(46, 'I Belong (Som du ser meg)', 'Follacaro', '2025-05-15'),
(47, 'Riddle of the Sands, The', 'Wycherley', '2024-09-26'),
(48, 'Zombie High', 'Cesco', '2024-09-26'),
(49, 'Suspect, The', 'Tregaskis', '2024-11-19'),
(50, 'Young Victoria, The', 'Raft', '2025-04-09'),
(51, 'Bridge, The (Die Brücke)', 'McConnachie', '2025-02-21'),
(52, 'Green Lantern', 'Isaacson', '2025-03-01'),
(53, 'Get Thrashed: The Story of Thr', 'Laverack', '2025-07-04'),
(54, 'Boy Called Hate, A', 'Howler', '2025-01-15'),
(55, 'Second Chorus', 'Di Matteo', '2024-09-14'),
(56, 'London Boulevard', 'Diggin', '2024-11-12'),
(57, 'Coming Home (Gui lai)', 'Burkert', '2025-01-30'),
(58, 'Deep Red (Profondo rosso)', 'Phifer', '2025-08-13'),
(59, 'Love Letter, The', 'Bothie', '2025-06-10'),
(60, 'Revolt of the Zombies', 'Boynes', '2025-08-17'),
(61, 'White, Red and Verdone', 'Do', '2025-06-20'),
(62, 'Tales from the Crypt Presents:', 'Coultas', '2025-04-08'),
(63, 'Georgy Girl', 'Kolczynski', '2024-09-23'),
(64, 'Cube', 'Keeltagh', '2025-08-14'),
(65, 'Brute (Bandyta)', 'Dinley', '2025-03-13'),
(66, 'It\'s in the Water', 'Edmund', '2024-10-22'),
(67, 'Laws of Attraction', 'Vasyushkhin', '2025-08-05'),
(68, 'Cosas que nunca te dije (Thing', 'Dennerley', '2024-10-27'),
(69, 'Now, Voyager', 'Druhan', '2025-04-03'),
(70, 'Brothers Bloom, The', 'Farherty', '2025-08-02'),
(71, 'Above Us Only Sky', 'Flemyng', '2025-07-30'),
(72, 'Crippled Masters (Tian can di ', 'Ritchings', '2025-03-31'),
(73, 'Sleeper', 'McCaffery', '2025-07-31'),
(74, 'Joe Dirt', 'Sydall', '2024-12-15'),
(75, 'Poison Ivy II', 'Gookey', '2024-11-09'),
(76, 'Django, Kill... If You Live, S', 'Pucker', '2024-12-13'),
(77, 'How the West Was Won', 'Rycraft', '2025-01-27'),
(78, 'Deathstalker II', 'Binding', '2025-02-19'),
(79, 'Mansfield Park', 'Troy', '2025-04-01'),
(80, 'Blood of a Poet, The (Sang d\'u', 'McGee', '2025-01-25'),
(81, 'Getaway, The', 'Prall', '2025-01-25'),
(82, 'Kiki', 'Richen', '2025-03-30'),
(83, '3 Bad Men', 'Trathen', '2025-03-14'),
(84, 'Okie Noodling', 'Twidle', '2024-11-26'),
(85, 'Longtime Companion', 'Dessant', '2025-04-25'),
(86, 'Mishima: A Life in Four Chapte', 'Gifkins', '2025-04-04'),
(87, 'Fire Down Below', 'Erat', '2025-02-19'),
(88, 'Fubar', 'Agar', '2025-02-06'),
(89, 'Sarah Silverman: Jesus Is Magi', 'Ludlamme', '2025-01-26'),
(90, 'Dark Journey', 'De Brett', '2025-05-30'),
(91, 'Deathstalker II', 'Cadden', '2025-07-17'),
(92, 'General, The', 'Kienlein', '2024-10-21'),
(93, 'Borat: Cultural Learnings of A', 'Bessent', '2024-11-01'),
(94, 'Stars Fell on Henrietta, The', 'Puddan', '2025-09-01'),
(95, 'When the Cat\'s Away (Chacun ch', 'Zecchini', '2024-11-06'),
(96, 'Safety Not Guaranteed', 'Kopmann', '2025-03-09'),
(97, 'Angels Sing', 'Pybworth', '2025-06-10'),
(98, 'Inception', 'Southan', '2025-04-29'),
(99, 'Circus', 'McCurdy', '2025-01-26'),
(100, 'Fatherland', 'Lothlorien', '2024-10-06');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
