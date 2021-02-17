-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 17 2021 г., 09:21
-- Версия сервера: 5.6.47
-- Версия PHP: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `opencart3-ua`
--

-- --------------------------------------------------------

--
-- Структура таблицы `oc_slidemenu_description`
--

CREATE TABLE `oc_slidemenu_description` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slidemenu_id` bigint(20) NOT NULL,
  `language_id` int(11) NOT NULL,
  `slidemenu_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `oc_slidemenu_description`
--

INSERT INTO `oc_slidemenu_description` (`id`, `slidemenu_id`, `language_id`, `slidemenu_name`) VALUES
(78, 3, 1, 'Test item 5'),
(77, 3, 3, 'Тестовый пункт 5'),
(76, 3, 2, 'Тестовий пункт меню 5');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `oc_slidemenu_description`
--
ALTER TABLE `oc_slidemenu_description`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `oc_slidemenu_description`
--
ALTER TABLE `oc_slidemenu_description`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
