-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Апр 15 2021 г., 17:51
-- Версия сервера: 5.5.68-MariaDB
-- Версия PHP: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `admin_strongest`
--

-- --------------------------------------------------------

--
-- Структура таблицы `views`
--

CREATE TABLE `views` (
  `id` int(11) NOT NULL,
  `ip_address` varbinary(16) DEFAULT NULL,
  `user_agent` varchar(1024) NOT NULL DEFAULT '',
  `user_agent_hash` varchar(32) NOT NULL DEFAULT '',
  `view_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `page_url` varchar(255) NOT NULL DEFAULT '',
  `views_count` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `views`
--

INSERT INTO `views` (`id`, `ip_address`, `user_agent`, `user_agent_hash`, `view_date`, `page_url`, `views_count`) VALUES
(1, 0xb0091a39, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:87.0) Gecko/20100101 Firefox/87.0', '874ace717fcaeb9e272fb47ab13d4d35', '2021-04-15 17:47:13', 'http://strongest.com.ua/task/index1.html', 3),
(2, 0xb0091a39, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:87.0) Gecko/20100101 Firefox/87.0', '874ace717fcaeb9e272fb47ab13d4d35', '2021-04-15 17:46:33', 'http://strongest.com.ua/task/index2.html', 2);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ip_address` (`ip_address`,`user_agent_hash`,`page_url`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `views`
--
ALTER TABLE `views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
