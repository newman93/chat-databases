-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Czas generowania: 25 Sie 2019, 14:03
-- Wersja serwera: 10.1.37-MariaDB
-- Wersja PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `chat-gallery`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `contacts`
--

INSERT INTO `contacts` (`id`, `username`, `contact`) VALUES
(5, 'user', 'user1'),
(6, 'user1', 'user'),
(7, 'user', 'user2'),
(8, 'user2', 'user');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `invitations`
--

CREATE TABLE `invitations` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `from_username` varchar(30) NOT NULL,
  `to_username` varchar(30) NOT NULL,
  `message` text NOT NULL,
  `to_read` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `messages`
--

INSERT INTO `messages` (`id`, `from_username`, `to_username`, `message`, `to_read`, `date`) VALUES
(33, 'user1', 'user', 'a', 0, '2019-02-27 21:52:36'),
(34, 'user1', 'user', 'b', 0, '2019-02-27 21:53:04'),
(35, 'user1', 'user', 'b', 0, '2019-02-27 21:53:36'),
(36, 'user1', 'user', 'a', 0, '2019-02-27 21:54:45'),
(37, 'user1', 'user', 'a', 0, '2019-02-27 21:57:37'),
(38, 'user', 'user1', 'b', 0, '2019-02-27 21:58:01'),
(39, 'user1', 'user', 'a', 0, '2019-02-27 21:59:30'),
(40, 'user1', 'user', 'b', 0, '2019-02-27 21:59:38'),
(41, 'user', 'user1', 'c', 0, '2019-02-27 22:00:01'),
(42, 'user1', 'user', 'f', 0, '2019-02-27 22:00:23'),
(43, 'user', 'user1', 'abc', 0, '2019-02-27 22:03:15'),
(44, 'user', 'user1', 'abc', 0, '2019-02-27 22:26:52');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(150) NOT NULL,
  `e_mail` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL,
  `surname` varchar(30) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `function` int(11) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `e_mail`, `name`, `surname`, `avatar`, `function`, `active`) VALUES
(4, 'user', '5f4dcc3b5aa765d61d8327deb882cf99', 'user@user.com', 'Name', 'Surname', 'img/avatars/user/1-3,4,5,6.png', 1, 1),
(5, 'user1', '5f4dcc3b5aa765d61d8327deb882cf99', 'user1@user1.pl', 'Name1', 'Surname1', 'img/avatars/avatar.png', 1, 0),
(6, 'user2', '5f4dcc3b5aa765d61d8327deb882cf99', 'user2@user.pl', 'Name2', 'Surname2', 'img/avatars/avatar.png', 1, 0),
(7, 'user3', '5f4dcc3b5aa765d61d8327deb882cf99', 'user3@user.com', 'Name3', 'Surname3', 'img/avatars/avatar.png', 1, 1);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `invitations`
--
ALTER TABLE `invitations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- Indeksy dla tabeli `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `e_mail` (`e_mail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `invitations`
--
ALTER TABLE `invitations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
