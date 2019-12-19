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
-- Baza danych: `chat`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` bigint(20) UNSIGNED NOT NULL,
  `contact` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `contacts`
--

INSERT INTO `contacts` (`id`, `username`, `contact`, `created_at`, `updated_at`) VALUES
(1, 1, 3, '2019-03-31 22:00:00', '2019-03-31 22:00:00'),
(2, 3, 1, '2019-03-31 22:00:00', '2019-03-31 22:00:00'),
(3, 1, 4, '2019-04-30 22:00:00', '2019-04-30 22:00:00'),
(4, 4, 1, '2019-04-30 22:00:00', '2019-04-30 22:00:00'),
(5, 1, 5, '2019-08-13 15:23:33', '2019-08-13 15:23:33'),
(6, 5, 1, '2019-08-13 15:23:33', '2019-08-13 15:23:33');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `invitations`
--

CREATE TABLE `invitations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` bigint(20) UNSIGNED NOT NULL,
  `contact` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `invitations`
--

INSERT INTO `invitations` (`id`, `username`, `contact`, `created_at`, `updated_at`) VALUES
(1, 1, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_username` bigint(20) UNSIGNED NOT NULL,
  `to_username` bigint(20) UNSIGNED NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_read` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `messages`
--

INSERT INTO `messages` (`id`, `from_username`, `to_username`, `message`, `to_read`, `date`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'abc', 1, '2019-02-25 04:00:00', NULL, NULL),
(2, 3, 1, 'cba', 1, '2019-02-25 00:00:00', NULL, NULL),
(3, 1, 3, 'widomosc', 1, '2019-07-22 21:08:49', '2019-07-22 19:08:49', '2019-07-22 19:08:49'),
(4, 1, 3, 'data', 1, '2019-07-31 18:34:04', '2019-07-31 16:34:04', '2019-07-31 16:34:04'),
(5, 1, 3, 'a', 1, '2019-07-31 18:59:28', '2019-07-31 16:59:28', '2019-07-31 16:59:28'),
(6, 1, 3, 'aa', 1, '2019-07-31 18:59:41', '2019-07-31 16:59:41', '2019-07-31 16:59:41'),
(7, 1, 3, 'a', 1, '2019-07-31 19:00:11', '2019-07-31 17:00:11', '2019-07-31 17:00:11'),
(8, 1, 3, 'g', 1, '2019-08-06 17:14:30', '2019-08-06 15:14:30', '2019-08-06 15:14:30'),
(9, 1, 3, 'g', 1, '2019-08-06 17:14:40', '2019-08-06 15:14:40', '2019-08-06 15:14:40'),
(10, 1, 3, 'g', 1, '2019-08-06 17:14:51', '2019-08-06 15:14:51', '2019-08-06 15:14:51'),
(11, 1, 3, 'g', 1, '2019-08-06 17:14:55', '2019-08-06 15:14:55', '2019-08-06 15:14:55'),
(12, 1, 3, 'f', 1, '2019-08-06 17:16:02', '2019-08-06 15:16:02', '2019-08-06 15:16:02'),
(13, 1, 3, 'abc', 1, '2019-08-13 10:48:15', '2019-08-13 08:48:15', '2019-08-13 08:48:15'),
(14, 1, 3, 'wiadomosc', 1, '2019-08-13 14:21:53', '2019-08-13 12:21:53', '2019-08-13 12:21:53'),
(15, 1, 3, 'test', 1, '2019-08-13 21:24:13', '2019-08-13 19:24:13', '2019-08-13 19:24:13'),
(16, 1, 5, 'test', 1, '2019-08-13 21:31:27', '2019-08-13 19:31:28', '2019-08-13 19:31:28'),
(17, 1, 5, 'tt', 1, '2019-08-13 22:25:48', '2019-08-13 20:25:48', '2019-08-13 20:25:48'),
(18, 1, 5, 'a', 1, '2019-08-13 22:27:29', '2019-08-13 20:27:29', '2019-08-13 20:27:29'),
(19, 1, 5, 'z', 1, '2019-08-13 22:36:30', '2019-08-13 20:36:30', '2019-08-13 20:36:30'),
(20, 5, 1, 'a', 1, '2019-08-14 07:07:40', '2019-08-14 05:07:40', '2019-08-14 05:07:40'),
(21, 5, 1, 'a', 1, '2019-08-14 07:08:55', '2019-08-14 05:08:55', '2019-08-14 05:08:55'),
(22, 5, 1, 'c', 1, '2019-08-14 07:09:38', '2019-08-14 05:09:38', '2019-08-14 05:09:38'),
(23, 5, 1, 'test', 1, '2019-08-14 07:12:14', '2019-08-14 05:12:14', '2019-08-14 05:12:14'),
(24, 5, 1, 'tes', 1, '2019-08-14 07:17:36', '2019-08-14 05:17:36', '2019-08-14 05:17:36');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(3, '2014_10_12_000000_create_users_table', 1),
(13, '2019_04_14_120216_create_messages_table', 2),
(14, '2019_04_14_120230_create_invitations_table', 2),
(15, '2019_04_14_120241_create_contacts_table', 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `e_mail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `function` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `remember_token` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `e_mail`, `name`, `surname`, `avatar`, `function`, `active`, `remember_token`, `email_verified_at`, `created_at`, `updated_at`) VALUES
(1, 'username', '$2y$10$oGtW09o1zt4GoYU3dUG3suPgJ5hAjbbEjVANg3dVjVFOk641C4ewK', 'user4@user.com', 'Imie', 'Nazwisko', 'click.png', '1', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3Q6ODAwMFwvYXBpXC9hdXRoXC9sb2dpbiIsImlhdCI6MTU2NTc3NzUxNiwiZXhwIjoxNTY1NzgxMTE2LCJuYmYiOjE1NjU3Nzc1MTYsImp0aSI6IjdDejlSOEdWUGhrQVhRcWEiLCJzdWIiOjEsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.svdC2ckHkd-qbK2g69_rJ5qVJDJyfQd7so5a6d12xcI', NULL, '2019-04-11 19:10:42', '2019-08-12 09:24:42'),
(3, 'username2', '$2y$10$XdAfuf78mEmMO8kmK6ykxe0t2KPDfgb.Zp6p9ZRkanyDJ/saPciGC', 'user2@user.com', 'Namee', 'Surnamee', 'assets/img/avatars/avatar.png', '1', 1, NULL, NULL, '2019-04-14 11:38:04', '2019-04-14 11:38:04'),
(4, 'username3', '$2y$10$7GTj9dVurJ02XKX1WBJUaO1rW5nk7/ujCB1w7vxXhAARNyH8q6Tiq', 'use3r@user.com', 'Nameee', 'Surnameee', 'after.png', '1', 1, NULL, NULL, '2019-05-20 16:28:40', '2019-05-20 16:28:40'),
(5, 'user10', '$2y$10$.aYceZ5TlLZJM/Pg7LVwWOj8lGx582m6pJdJ4/MnMBBqKxXPszz.a', 'user10@user.pl', 'Nameeeee', 'Surnameeee', 'after.png', '1', 1, NULL, NULL, '2019-08-12 05:20:09', '2019-08-12 05:20:09');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_username_foreign` (`username`),
  ADD KEY `contacts_contact_foreign` (`contact`);

--
-- Indeksy dla tabeli `invitations`
--
ALTER TABLE `invitations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invitations_username_foreign` (`username`),
  ADD KEY `invitations_contact_foreign` (`contact`);

--
-- Indeksy dla tabeli `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_from_username_foreign` (`from_username`),
  ADD KEY `messages_to_username_foreign` (`to_username`);

--
-- Indeksy dla tabeli `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_e_mail_unique` (`e_mail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `invitations`
--
ALTER TABLE `invitations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT dla tabeli `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_contact_foreign` FOREIGN KEY (`contact`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `contacts_username_foreign` FOREIGN KEY (`username`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `invitations`
--
ALTER TABLE `invitations`
  ADD CONSTRAINT `invitations_contact_foreign` FOREIGN KEY (`contact`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `invitations_username_foreign` FOREIGN KEY (`username`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_from_username_foreign` FOREIGN KEY (`from_username`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `messages_to_username_foreign` FOREIGN KEY (`to_username`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
