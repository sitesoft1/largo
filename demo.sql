-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 18 2021 г., 15:14
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

CREATE TABLE IF NOT EXISTS `oc_slidemenu` (
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
(4, 'information_url', 'a:3:{s:10:\"custom_url\";a:2:{s:4:\"path\";s:0:\"\";s:9:\"custom_id\";s:0:\"\";}s:15:\"information_url\";a:2:{s:4:\"path\";s:8:\"About Us\";s:14:\"information_id\";s:1:\"4\";}s:12:\"category_url\";a:2:{s:4:\"path\";s:0:\"\";s:11:\"category_id\";s:0:\"\";}}', 1, 1, 'catalog/demo/banners/MacBookAir.jpg'),
(5, 'custom_url', 'a:3:{s:10:\"custom_url\";a:2:{s:4:\"path\";s:25:\"https://www.opencart.com/\";s:9:\"custom_id\";s:0:\"\";}s:15:\"information_url\";a:2:{s:4:\"path\";s:0:\"\";s:14:\"information_id\";s:0:\"\";}s:12:\"category_url\";a:2:{s:4:\"path\";s:0:\"\";s:11:\"category_id\";s:0:\"\";}}', 2, 1, 'catalog/slides/default.png'),
(6, 'custom_url', 'a:3:{s:10:\"custom_url\";a:2:{s:4:\"path\";s:23:\"https://www.google.com/\";s:9:\"custom_id\";s:0:\"\";}s:15:\"information_url\";a:2:{s:4:\"path\";s:0:\"\";s:14:\"information_id\";s:0:\"\";}s:12:\"category_url\";a:2:{s:4:\"path\";s:0:\"\";s:11:\"category_id\";s:0:\"\";}}', 3, 1, 'catalog/slides/n4.jpeg'),
(7, 'category_url', 'a:3:{s:10:\"custom_url\";a:2:{s:4:\"path\";s:0:\"\";s:9:\"custom_id\";s:0:\"\";}s:15:\"information_url\";a:2:{s:4:\"path\";s:0:\"\";s:14:\"information_id\";s:0:\"\";}s:12:\"category_url\";a:2:{s:4:\"path\";s:10:\"Components\";s:11:\"category_id\";s:2:\"25\";}}', 0, 1, 'catalog/demo/banners/iPhone1.jpg'),
(8, 'category_url', 'a:3:{s:10:\"custom_url\";a:2:{s:4:\"path\";s:0:\"\";s:9:\"custom_id\";s:0:\"\";}s:15:\"information_url\";a:2:{s:4:\"path\";s:0:\"\";s:14:\"information_id\";s:0:\"\";}s:12:\"category_url\";a:2:{s:4:\"path\";s:11:\"MP3 Players\";s:11:\"category_id\";s:2:\"34\";}}', 5, 1, 'catalog/demo/banners/iPhone6.jpg'),
(13, 'information_url', 'a:3:{s:10:\"custom_url\";a:2:{s:4:\"path\";s:0:\"\";s:9:\"custom_id\";s:0:\"\";}s:15:\"information_url\";a:2:{s:4:\"path\";s:20:\"Delivery Information\";s:14:\"information_id\";s:1:\"6\";}s:12:\"category_url\";a:2:{s:4:\"path\";s:0:\"\";s:11:\"category_id\";s:0:\"\";}}', 11, 1, 'catalog/slides/n1.jpg'),
(9, 'custom_url', 'a:3:{s:10:\"custom_url\";a:2:{s:4:\"path\";s:1:\"#\";s:9:\"custom_id\";s:0:\"\";}s:15:\"information_url\";a:2:{s:4:\"path\";s:0:\"\";s:14:\"information_id\";s:0:\"\";}s:12:\"category_url\";a:2:{s:4:\"path\";s:0:\"\";s:11:\"category_id\";s:0:\"\";}}', 6, 1, 'catalog/demo/banners/iPhone7.jpg'),
(10, 'custom_url', 'a:3:{s:10:\"custom_url\";a:2:{s:4:\"path\";s:1:\"#\";s:9:\"custom_id\";s:0:\"\";}s:15:\"information_url\";a:2:{s:4:\"path\";s:0:\"\";s:14:\"information_id\";s:0:\"\";}s:12:\"category_url\";a:2:{s:4:\"path\";s:0:\"\";s:11:\"category_id\";s:0:\"\";}}', 8, 1, 'catalog/demo/banners/iPhone8.jpg'),
(11, 'custom_url', 'a:3:{s:10:\"custom_url\";a:2:{s:4:\"path\";s:1:\"#\";s:9:\"custom_id\";s:0:\"\";}s:15:\"information_url\";a:2:{s:4:\"path\";s:0:\"\";s:14:\"information_id\";s:0:\"\";}s:12:\"category_url\";a:2:{s:4:\"path\";s:0:\"\";s:11:\"category_id\";s:0:\"\";}}', 9, 1, 'catalog/slides/n3.png'),
(12, 'category_url', 'a:3:{s:10:\"custom_url\";a:2:{s:4:\"path\";s:1:\"#\";s:9:\"custom_id\";s:0:\"\";}s:15:\"information_url\";a:2:{s:4:\"path\";s:0:\"\";s:14:\"information_id\";s:0:\"\";}s:12:\"category_url\";a:2:{s:4:\"path\";s:11:\"MP3 Players\";s:11:\"category_id\";s:2:\"34\";}}', 10, 1, 'catalog/slides/n2.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_slidemenu_description`
--

CREATE TABLE IF NOT EXISTS `oc_slidemenu_description` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slidemenu_id` bigint(20) NOT NULL,
  `language_id` int(11) NOT NULL,
  `slidemenu_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `oc_slidemenu_description`
--

INSERT INTO `oc_slidemenu_description` (`id`, `slidemenu_id`, `language_id`, `slidemenu_name`) VALUES
(279, 13, 1, 'Тест 11'),
(278, 13, 3, 'Тест 11'),
(273, 4, 1, 'Installation'),
(272, 4, 3, 'Монтаж'),
(271, 4, 2, 'Монтаж'),
(239, 9, 3, 'Отзывы'),
(259, 6, 2, 'Контакти'),
(270, 5, 1, 'Service'),
(268, 5, 2, 'Сервіс'),
(269, 5, 3, 'Сервис'),
(261, 6, 1, 'Contacts'),
(263, 7, 3, 'Компоненты'),
(264, 7, 1, 'Components'),
(234, 8, 1, 'Awards'),
(233, 8, 3, 'Награды'),
(232, 8, 2, 'Відзнаки'),
(277, 13, 2, 'Тест 11'),
(260, 6, 3, 'Контакты'),
(262, 7, 2, 'Компоненти'),
(238, 9, 2, 'Відгуки'),
(240, 9, 1, 'Reviews'),
(241, 10, 2, 'Пропозиції'),
(242, 10, 3, 'Пропозиції'),
(243, 10, 1, 'Пропозиції'),
(255, 11, 1, 'Тест'),
(254, 11, 3, 'Тест'),
(253, 11, 2, 'Тест'),
(258, 12, 1, 'Test10'),
(257, 12, 3, 'Test10'),
(256, 12, 2, 'Test10');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `oc_slidemenu`
--
ALTER TABLE `oc_slidemenu`
  ADD UNIQUE KEY `id` (`slidemenu_id`);

--
-- Индексы таблицы `oc_slidemenu_description`
--
ALTER TABLE `oc_slidemenu_description`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `oc_slidemenu`
--
ALTER TABLE `oc_slidemenu`
  MODIFY `slidemenu_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `oc_slidemenu_description`
--
ALTER TABLE `oc_slidemenu_description`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=280;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
