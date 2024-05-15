-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 20 2024 г., 19:05
-- Версия сервера: 8.0.30
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `TaskManager`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Tasks`
--

CREATE TABLE `Tasks` (
  `Id` int NOT NULL,
  `Name` varchar(50) CHARACTER SET utf8mb4  DEFAULT NULL,
  `Priority` varchar(30) CHARACTER SET utf8mb4  DEFAULT NULL,
  `DateExecute` date DEFAULT NULL,
  `Comment` varchar(1000) CHARACTER SET utf8mb4  DEFAULT NULL,
  `Done` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

--
-- Дамп данных таблицы `Tasks`
--

INSERT INTO `Tasks` (`Id`, `Name`, `Priority`, `DateExecute`, `Comment`, `Done`) VALUES
(1, 'Test', 'Test', '2024-03-20', 'Test', 0),
(5, 'Testing', 'Tesing', '2024-03-21', 'Test', 1),
(6, 'Test 3', 'Test', '2024-03-20', 'Test', 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Tasks`
--
ALTER TABLE `Tasks`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Tasks`
--
ALTER TABLE `Tasks`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
