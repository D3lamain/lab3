-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Час створення: Чрв 28 2022 р., 20:05
-- Версія сервера: 10.4.24-MariaDB
-- Версія PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `shop`
--

-- --------------------------------------------------------

--
-- Структура таблиці `categories`
--

CREATE TABLE `categories` (
  `ID_Categories` int(10) NOT NULL,
  `name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `categories`
--

INSERT INTO `categories` (`ID_Categories`, `name`) VALUES
(2, 'chocolate'),
(3, 'drink'),
(4, 'butter'),
(5, 'sweets');

-- --------------------------------------------------------

--
-- Структура таблиці `items`
--

CREATE TABLE `items` (
  `ID_Items` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `quality` int(1) NOT NULL,
  `FID_Vender` int(10) NOT NULL,
  `FID_Category` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `items`
--

INSERT INTO `items` (`ID_Items`, `name`, `price`, `quantity`, `quality`, `FID_Vender`, `FID_Category`) VALUES
(57, 'Fanta orange', 20, 1200, 3, 3, 3),
(58, 'pepsi 0 sugar', 21, 800, 5, 2, 3),
(59, 'Lubimow', 100, 280, 4, 5, 2),
(60, 'Rachky', 80, 100, 2, 5, 5),
(61, 'Nuts', 18, 450, 5, 5, 2),
(62, 'Ljodjanyky', 60, 70, 1, 1, 5),
(63, 'Nashe maslo', 50, 600, 4, 4, 4),
(64, 'molochna ferma', 67, 700, 5, 4, 4);

-- --------------------------------------------------------

--
-- Структура таблиці `vendors`
--

CREATE TABLE `vendors` (
  `ID_Vendors` int(10) NOT NULL,
  `name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `vendors`
--

INSERT INTO `vendors` (`ID_Vendors`, `name`) VALUES
(1, 'nestle'),
(2, 'pepsi'),
(3, 'fanta'),
(4, 'selyansyke'),
(5, 'roshen');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`ID_Categories`);

--
-- Індекси таблиці `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`ID_Items`),
  ADD KEY `FID_Vender` (`FID_Vender`),
  ADD KEY `FID_Category` (`FID_Category`);

--
-- Індекси таблиці `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`ID_Vendors`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `categories`
--
ALTER TABLE `categories`
  MODIFY `ID_Categories` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблиці `items`
--
ALTER TABLE `items`
  MODIFY `ID_Items` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT для таблиці `vendors`
--
ALTER TABLE `vendors`
  MODIFY `ID_Vendors` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Обмеження зовнішнього ключа збережених таблиць
--

--
-- Обмеження зовнішнього ключа таблиці `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`FID_Vender`) REFERENCES `vendors` (`ID_Vendors`),
  ADD CONSTRAINT `items_ibfk_2` FOREIGN KEY (`FID_Category`) REFERENCES `categories` (`ID_Categories`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
