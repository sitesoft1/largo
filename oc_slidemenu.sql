-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 18 2021 г., 06:54
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
(3, 'category_url', 'a:3:{s:10:\"custom_url\";a:2:{s:4:\"path\";s:20:\"https://ocstore.com/\";s:9:\"custom_id\";s:0:\"\";}s:15:\"information_url\";a:2:{s:4:\"path\";s:8:\"About Us\";s:14:\"information_id\";s:1:\"4\";}s:12:\"category_url\";a:2:{s:4:\"path\";s:23:\"Desktops  &gt;  Mac\";s:11:\"category_id\";s:2:\"27\";}}', 0, 1, 'catalog/slides/n3.png'),
(4, 'information_url', 'a:3:{s:10:\"custom_url\";a:2:{s:4:\"path\";s:0:\"\";s:9:\"custom_id\";s:0:\"\";}s:15:\"information_url\";a:2:{s:4:\"path\";s:8:\"About Us\";s:14:\"information_id\";s:1:\"4\";}s:12:\"category_url\";a:2:{s:4:\"path\";s:0:\"\";s:11:\"category_id\";s:0:\"\";}}', 1, 1, 'catalog/slides/n2.jpg'),
(5, 'custom_url', 'a:3:{s:10:\"custom_url\";a:2:{s:4:\"path\";s:25:\"https://www.opencart.com/\";s:9:\"custom_id\";s:0:\"\";}s:15:\"information_url\";a:2:{s:4:\"path\";s:0:\"\";s:14:\"information_id\";s:0:\"\";}s:12:\"category_url\";a:2:{s:4:\"path\";s:0:\"\";s:11:\"category_id\";s:0:\"\";}}', 2, 1, 'catalog/slides/n4.jpeg'),
(6, 'custom_url', 'a:3:{s:10:\"custom_url\";a:2:{s:4:\"path\";s:23:\"https://www.google.com/\";s:9:\"custom_id\";s:0:\"\";}s:15:\"information_url\";a:2:{s:4:\"path\";s:0:\"\";s:14:\"information_id\";s:0:\"\";}s:12:\"category_url\";a:2:{s:4:\"path\";s:0:\"\";s:11:\"category_id\";s:0:\"\";}}', 4, 0, 'catalog/slides/n1.jpg');

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
  MODIFY `slidemenu_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
