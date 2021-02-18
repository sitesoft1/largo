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
(143, 3, 3, 'Категория Mac'),
(142, 3, 2, 'Категорія Mac'),
(146, 4, 3, 'Инфо О нас'),
(147, 4, 1, 'info About us'),
(144, 3, 1, 'Category Mac'),
(145, 4, 2, 'Інфо Про нас'),
(149, 5, 3, 'Произвольная ссылка'),
(148, 5, 2, 'Довільне посилання'),
(150, 5, 1, 'Custom url'),
(151, 6, 2, 'Гугл'),
(152, 6, 3, 'Гугл'),
(153, 6, 1, 'Google');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
