-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июл 17 2022 г., 10:14
-- Версия сервера: 10.4.21-MariaDB
-- Версия PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `iteh2lb1var0`
--

-- --------------------------------------------------------

--
-- Структура таблицы `authors`
--

CREATE TABLE `authors` (
  `ID_Authors` int(10) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `authors`
--

INSERT INTO `authors` (`ID_Authors`, `name`) VALUES
(1, 'Автор №1'),
(2, 'Автор №2'),
(3, 'Автор №3'),
(4, 'Автор №4');

-- --------------------------------------------------------

--
-- Структура таблицы `book_authors`
--

CREATE TABLE `book_authors` (
  `FID_book` int(10) NOT NULL,
  `FID_Authors` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `book_authors`
--

INSERT INTO `book_authors` (`FID_book`, `FID_Authors`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 3),
(5, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `literature`
--

CREATE TABLE `literature` (
  `ID_Book` int(10) NOT NULL,
  `title` text DEFAULT NULL,
  `quantity` int(10) DEFAULT NULL,
  `ISBN` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `number` text DEFAULT NULL,
  `publisher` text DEFAULT NULL,
  `literate` enum('Book','Journal','Newspaper') NOT NULL,
  `Fid_resourse` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `literature`
--

INSERT INTO `literature` (`ID_Book`, `title`, `quantity`, `ISBN`, `date`, `year`, `number`, `publisher`, `literate`, `Fid_resourse`) VALUES
(1, 'Книга 1', 250, 'ISBN №1', NULL, 2005, NULL, 'Издательство №1', 'Book', 1),
(2, 'Журнал 1', 15, ' ISBN №2', '2008-12-12', NULL, '1', 'Издательство №2', 'Journal', 1),
(3, 'Книга 2', 400, ' ISBN №3', NULL, 2009, NULL, 'Издательство №1', 'Book', 1),
(4, 'Книга 3', 350, ' ISBN №4', NULL, 2003, NULL, 'Издательство №1', 'Book', 2),
(5, 'Газета 1', 20, ' ISBN №5', '2008-12-12', NULL, NULL, 'Издательство №3', 'Newspaper', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `resourse`
--

CREATE TABLE `resourse` (
  `id_resourse` int(10) NOT NULL,
  `title_resourse` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `resourse`
--

INSERT INTO `resourse` (`id_resourse`, `title_resourse`) VALUES
(1, 'Веб-сайт'),
(2, 'Печатный'),
(3, 'Аудио');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`ID_Authors`);

--
-- Индексы таблицы `literature`
--
ALTER TABLE `literature`
  ADD PRIMARY KEY (`ID_Book`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
