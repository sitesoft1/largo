-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 18 2021 г., 10:54
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
(228, 3, 1, 'Sales'),
(227, 3, 3, 'Продажа'),
(213, 5, 1, 'Service'),
(210, 4, 1, 'Installation'),
(209, 4, 3, 'Монтаж'),
(208, 4, 2, 'Монтаж'),
(239, 9, 3, 'Отзывы'),
(212, 5, 3, 'Сервис'),
(211, 5, 2, 'Сервіс'),
(225, 6, 1, 'Contacts'),
(223, 6, 2, 'Контакти'),
(217, 7, 2, 'Компоненти'),
(234, 8, 1, 'Awards'),
(233, 8, 3, 'Награды'),
(232, 8, 2, 'Відзнаки'),
(218, 7, 3, 'Компоненты'),
(226, 3, 2, 'Продаж'),
(224, 6, 3, 'Контакты'),
(219, 7, 1, 'Components'),
(238, 9, 2, 'Відгуки'),
(240, 9, 1, 'Reviews'),
(241, 10, 2, 'Пропозиції'),
(242, 10, 3, 'Пропозиції'),
(243, 10, 1, 'Пропозиції'),
(244, 11, 2, 'Тест'),
(245, 11, 3, 'Тест'),
(246, 11, 1, 'Тест'),
(247, 12, 2, 'Test10'),
(248, 12, 3, 'Test10'),
(249, 12, 1, 'Test10');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
