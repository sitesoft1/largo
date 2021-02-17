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
-- Структура таблицы `oc_slidemenu`
--

CREATE TABLE `oc_slidemenu` (
  `slidemenu_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `image` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `oc_slidemenu`
--

INSERT INTO `oc_slidemenu` (`slidemenu_id`, `type`, `source`, `sort_order`, `status`, `image`) VALUES
(3, 'custom_url', 'a:4:{s:10:\"custom_url\";s:4:\"acab\";s:8:\"blog_url\";s:0:\"\";s:15:\"information_url\";s:0:\"\";s:12:\"category_url\";s:0:\"\";}', 1, 1, 'catalog/slides/n3.png');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `oc_slidemenu`
--
ALTER TABLE `oc_slidemenu`
  ADD UNIQUE KEY `id` (`slidemenu_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `oc_slidemenu`
--
ALTER TABLE `oc_slidemenu`
  MODIFY `slidemenu_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
