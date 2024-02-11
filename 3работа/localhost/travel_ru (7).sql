-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 26 2023 г., 19:55
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
-- База данных: `travel.ru`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `name_cat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name_cat`, `description`, `status`) VALUES
(1, 'Познавательные туры', 'Познавательные туры являются одним из наиболее популярных видов туризма. Они представляют собой вариант отдыха, связанный с посещением туристами различных культурных и природных объектов. К их числу могут относиться разнообразные достопримечательности, известные исторические места или памятники архитектуры. Зачастую познавательные и экскурсионные туры организуются в страны с большим количеством музеев, картинных галерей и выставок.\r\n', 1),
(2, 'Экскурсии', 'Экскурсия - это поездка или прогулка с целью посещения достопримечательностей (природы или памятников истории и культуры)в сопровождении экскурсовода.\r\n', 1),
(3, 'Профессионально-деловые туры ', 'Поездки или командировки работников коммерческих организаций, фирм или компаний, преследующих при этом различные предпринимательские цели.\r\n', 1),
(4, 'Спортивные туры', 'Спортивность туризма заключается в преодолении естественных препятствий, в применении различной тактики и техники преодоления препятствий.\r\n', 1),
(5, 'Оздоровительные туры', 'Это возможность отдохнуть, пройти лечение под наблюдением врача, снизить вес и улучшить самочувствие. \r\n', 2),
(6, 'Религиозные туры', 'Предназначены прежде всего для образовательных целей и не предполагают участие в религиозных церемониях. Такой туризм - это посещение монастырей, храмов, святых мест для знакомства с их историей, архитектурой, культурным наследием, и востребован у путешественников независимо от их вероисповедания.\r\n', 1),
(7, 'Индивидуальные туры', 'Вид услуг, оказываемых туроператором одному человеку или группе туристов, который отличается от стандартных и обычных вариантов путешествия на отдых.\r\n', 1),
(8, 'Туры по горящим путевкам', 'Путевка, на которую туроператор значительно снижает цену, как правило, за 1-3 дня до вылета. Деньги туроператора, оплаченные за билеты на самолет, трансфер и номера в гостинице, в буквальном смысле сгорят, если желающие отдохнуть не найдутся в минимально короткие сроки.\r\n', 1),
(9, 'Туры на двоих', 'Романтическое путешествие', 1),
(10, 'Детские туры', 'Детский и молодежный отдых, расширят кругозор ваших детей, подарят им незабываемые впечатления от отдыха. \r\n', 1),
(11, 'Бесплатные', 'Такие экскурсии еще называют Free Walking Tours — это бесплатные туры и пешеходные маршруты, которые можно найти практически во всех столицах и крупных городах мира. Бесплатные туры — в первую очередь инициатива волонтеров и неравнодушных к своему городу жителей.\r\n', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `number_order` int UNSIGNED NOT NULL,
  `id_user` int NOT NULL,
  `id_prod` int NOT NULL,
  `status` int NOT NULL DEFAULT '3',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `number_order`, `id_user`, `id_prod`, `status`, `created_at`, `updated_at`) VALUES
(54, 897, 26, 7, 1, '2023-04-17 14:13:53', '2023-04-17 14:14:46'),
(55, 775, 26, 7, 1, '2023-04-17 14:15:02', '2023-04-17 14:19:30'),
(58, 31, 10, 9, 2, '2023-05-26 19:32:00', '2023-05-26 19:32:39'),
(59, 759, 29, 11, 2, '2023-05-26 19:52:32', '2023-05-26 19:53:27');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `article` int NOT NULL,
  `name_prod` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `qty` decimal(8,0) NOT NULL,
  `price` decimal(8,3) NOT NULL,
  `id_cat` int NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` int NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `article`, `name_prod`, `description`, `city`, `qty`, `price`, `id_cat`, `image`, `status`, `created_at`, `updated_at`) VALUES
(3, 234354, 'Японское море и Владивосток', 'Тур познакомит Вас с Владивостоком. \r\nОтправимся в путешествие по Приморскому краю с красивыми пляжами, панорамами и островами. За семь дней Вы увидим всю красоту края! Узнаем историю Владивостока и совершим морское путешествие.\r\n', 'Владивосток', '45', '32.000', 1, 'Владивосток.png', 1, '2023-02-25 14:32:03', '2023-02-25 14:32:03'),
(4, 453432, 'Экскурсионный тур по Владивостоку. Зимне-весенний отдых\r\n', 'В этом насыщенном недельном туре мы прогуляемся по улочкам удивительной столицы Приморья, проедемся по знаменитому мосту на остров Русский.\r\n', 'Владивосток', '30', '42.000', 2, 'отель_в_горах.png', 1, '2023-02-25 14:32:03', '2023-02-25 14:32:03'),
(7, 234355, 'Три дня с Петербургом', 'Мы предлагаем посетить Санкт-Петербург. Ведь Петербург не даром считают одним из самых прекрасных европейских городов. \r\n', 'Санкт-Петербург', '20', '8.850', 1, 'Питер.png', 1, '2023-03-11 11:24:47', '2023-03-11 11:24:47'),
(8, 453435, 'Экскурсия в Государственный Эрмитаж', 'Приглашаем вас на экскурсию в Государственный Эрмитаж – самый знаменитый музей Санкт-Петербурга! Его коллекция поражает воображение, а от интерьеров Зимнего Дворца, в котором находится музей, невольно захватывает дух.\r\n', 'Санкт-Петербург', '15', '12.300', 1, 'Эрмитаж.png', 1, '2023-03-11 11:24:47', '2023-03-11 11:24:47'),
(9, 234350, 'Байкал на полную громкость', 'В этом путешествии вы получите максимум впечатлений! Впереди романтика зимней сказки и уединение с природой, заснеженные просторы и прозрачный лёд, а ещё ясное звёздное небо, коньки, душевные люди и местные деликатесы. Впереди Байкал!\r\n', 'Иркутск', '100', '134.000', 7, 'Байкал.png', 1, '2023-03-11 11:28:32', '2023-03-11 11:28:32'),
(10, 453430, 'Камчатская зима', 'Приглашаем в недельный тур по снежной Камчатке! Почувствуем экзотику, купаясь в горячих источниках в окружении сугробов и станем настоящими каюрами, прокатившись на собачьих упряжках.\r\n', 'Камчатка', '54', '67.500', 4, 'Камчатка.png', 1, '2023-03-11 11:28:32', '2023-03-11 11:28:32'),
(11, 234351, 'Контрасты Камчатки. Путешествие к вулканам.', 'Очень насыщенное путешествие на Камчатку, в котором вы увидите неземные пейзажи районов активного вулканизма, кратерные кислотные озера, «дымящие» фумарольные поля, искупаетесь в целебных водах горячих источников и совершите увлекательный сплав.\r\n', 'Камчатка', '40', '115.000', 4, 'Вулкан.png', 1, '2023-03-11 11:30:21', '2023-03-11 11:30:21'),
(12, 234352, '\r\nЗимнее путешествие на Алтай', 'Зимой Алтай не засыпает. Он превращается в бело-голубую идиллию: из-под земли бьют холодные источники, в незамерзающих озерах отражается небо, а снежные шапки на елях и вершинах гор сияют белизной. \r\n', 'Горно-Алтайск', '45', '73.300', 4, 'Алтай.png', 1, '2023-03-11 11:31:45', '2023-03-11 11:31:45'),
(13, 234353, 'Экскурсия по солнечной Абхазии из Сочи', 'Приглашаем полюбоваться невероятной природой и уютными курортами Абхазии! Вы увидите могучие ущелья, сосновые леса и волшебные озера с прозрачной водой.\r\n', 'Сочи', '50', '10.800', 10, 'Сочи.png', 1, '2023-03-11 11:33:07', '2023-03-11 11:33:07');

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` int NOT NULL,
  `name_role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name_role`, `created_at`, `updated_at`) VALUES
(1, 'Администратор', '2023-02-25 11:25:55', '2023-02-25 11:25:55'),
(2, 'Модератор', '2023-02-25 11:25:55', '2023-02-25 11:25:55'),
(3, 'Пользователь', '2023-02-25 11:26:14', '2023-02-25 11:26:14');

-- --------------------------------------------------------

--
-- Структура таблицы `status_cat`
--

CREATE TABLE `status_cat` (
  `id` int NOT NULL,
  `name_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `status_cat`
--

INSERT INTO `status_cat` (`id`, `name_status`, `created_at`, `updated_at`) VALUES
(1, 'Есть в наличии', '2023-02-25 13:43:04', '2023-02-25 13:43:04'),
(2, 'Нет в наличии', '2023-02-25 13:43:04', '2023-02-25 13:43:04');

-- --------------------------------------------------------

--
-- Структура таблицы `status_prod`
--

CREATE TABLE `status_prod` (
  `id` int NOT NULL,
  `name_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `status_prod`
--

INSERT INTO `status_prod` (`id`, `name_status`, `created_at`, `updated_at`) VALUES
(1, 'Есть в наличии', '2023-02-25 14:39:56', '2023-02-25 14:39:56'),
(2, 'Нет в наличии', '2023-02-25 14:39:56', '2023-02-25 14:39:56');

-- --------------------------------------------------------

--
-- Структура таблицы `status_user`
--

CREATE TABLE `status_user` (
  `id` int NOT NULL,
  `name_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `status_user`
--

INSERT INTO `status_user` (`id`, `name_status`, `created_at`, `updated_at`) VALUES
(1, 'Активен', '2023-02-25 11:22:03', '2023-02-25 11:22:03'),
(2, 'Не активен', '2023-02-25 11:22:03', '2023-02-25 11:22:03');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `login` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `surname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `l_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `role` int NOT NULL DEFAULT '3',
  `status` int NOT NULL DEFAULT '1',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `pass`, `surname`, `name`, `l_name`, `email`, `city`, `role`, `status`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 'user', 'user', 'Иванов', 'Максим', 'Леонидович', '1@mveu.ru', 'Ижевск', 3, 2, 'ава.jpg', '2023-02-25 11:39:23', '2023-02-25 11:39:23'),
(2, 'moder', 'moder', 'Петрова', 'Мария', 'Сергеевна', '2@mveu.ru', 'Ижевск', 2, 1, 'аватарка.jpg', '2023-02-25 11:39:23', '2023-02-25 11:39:23'),
(3, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Кузнецов', 'Владислав', 'Сергеевич ', '3@mveu.ru', 'Ижевск', 1, 2, 'администратор.jpg', '2023-02-25 11:42:59', '2023-02-25 11:42:59'),
(10, '1', '1', '1', '1', '1', '1', '1', 1, 1, 'шары (2)_122.jpg', '2023-03-22 23:34:38', '2023-04-04 15:06:21'),
(26, 'e', 'e', 'e', 'e', 'e', 'e', 'e', 3, 1, 'администратор_127.jpg', '2023-04-10 09:33:20', '2023-04-10 09:33:20'),
(27, 'qwertyuiop', 'qwertyuiop', 'Екимова', 'Ева', 'Станиславовна', '@gmail.com', 'Ижевск', 3, 1, 'администратор_738.jpg', '2023-04-10 10:44:42', '2023-04-10 10:46:00'),
(28, '14', '14', '14', '14', '14', '14', '14', 1, 1, '14', '2023-04-14 19:53:21', '2023-04-14 19:53:21'),
(29, '26', '26', '26', '26', '26', '26', '26', 3, 1, 'финал_252.jpg', '2023-05-26 19:52:21', '2023-05-26 19:52:21');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_prod` (`id_prod`),
  ADD KEY `status` (`status`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `article` (`article`),
  ADD KEY `id_cat` (`id_cat`),
  ADD KEY `status` (`status`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `status_cat`
--
ALTER TABLE `status_cat`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `status_prod`
--
ALTER TABLE `status_prod`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `status_user`
--
ALTER TABLE `status_user`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`),
  ADD UNIQUE KEY `emall` (`email`),
  ADD KEY `role` (`role`),
  ADD KEY `status` (`status`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `status_cat`
--
ALTER TABLE `status_cat`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `status_prod`
--
ALTER TABLE `status_prod`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `status_user`
--
ALTER TABLE `status_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_ibfk_1` FOREIGN KEY (`status`) REFERENCES `status_cat` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`id_prod`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_cat`) REFERENCES `category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`status`) REFERENCES `status_prod` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role`) REFERENCES `roles` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`status`) REFERENCES `status_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
