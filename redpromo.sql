-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 11 2021 г., 13:38
-- Версия сервера: 8.0.19
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `redpromo`
--

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1631273545),
('m210408_130233_create_users_table', 1631293144),
('m210409_080837_create_news_table', 1631293144);

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `img` varchar(100) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `name`, `description`, `img`, `city`) VALUES
(1, 'Учёные разработали 100-процентную защиту от вирусов-шифровальщиков для SSD', 'Команда южнокорейских и американских исследователей разработала систему защиты данных на SSD, спасающую от атак программ-шифровальщиков и позволяющую немедленно восстанавливать данные. Система SSD-Insider++ позволяет «отменять» неожиданные попытки шифрования в течение считанных секунд.\r\n\r\nПо мнению исследователей, сама технология NAND-памяти позволяет легко восстановить данные благодаря её природе «отложенного удаления» информации. Концепция SSD-Insider++ предусматривает оценку моделей активности накопителей в случае атак программ-шифровальщиков, используемых злоумышленниками для вымогательства средств в обмен на ключ для дешифровки данных. Вместо защиты программными средствами система полагается непосредственно на само устройство — защита осуществляется ещё на уровне контроллера с помощью специальной прошивки. По словам исследователей, идея защиты на уровне прошивки пришла потому, что большинство пользователей не заботятся об установке ПО для борьбы с программами-вымогателями. Таким образом, SSD буквально займутся самообороной.\r\n\r\nКак только зарегистрирована активность программы-вымогателя, приостанавливается ввод/вывод данных и в это время пользователь может отменить процесс шифрования. При этом уже зашифрованные данные восстанавливаются в течение нескольких секунд.\r\n\r\nВ результате тестов технология справилась со 100 % лабораторных и реальных образцов программ-вымогателей, а информация восстанавливалась в течение максимум 10 секунд с момента начала шифрования. Цена такой функциональности — рост задержек работы на 12,8-17,3 %, что с лихвой компенсируется высоким уровнем безопасности.\r\n\r\nГлавной отличительной чертой технологии является именно её использование на уровне прошивки — другими словами, соответствующую функциональность в теории можно добавить даже уже использующимся SSD без модификации самого железа. Впрочем, для некоторых дополнительных функций потребуется больше вычислительных мощностей.\r\n\r\nПри этом идея надёжной защиты от программ-вымогателей за счёт сравнительно небольшого снижения производительности не вызвала восторга у вендоров. По данным учёных, предложения были сделаны нескольким компаниям в Южной Корее, но ни одна из них не выразила готовности применять технологию.\r\n\r\nХотя SSD-Insider++ разрабатывалась специально для SSD, потенциально её вариации можно использовать и для накопителей других типов, за исключением традиционных HDD. При этом возможно использование с относительно новыми HDD c записью SMR-типа (Shingled Magnetic Recording).', '1.jpg', NULL),
(2, 'Китай совсем скоро испытает ядерный реактор на ториевом топливе.', '«Если бы мне разрешили, я бы полетел туда первым самолетом, — заявил Саймон Миддлбург (Simon Middleburgh), специалист по ядерным материалам из Университета Бангора в Великобритании. — Мы узнаем очень много нового».\r\n\r\nА интересоваться есть чем. Хотя китайский проект, судя по словам специалистов, повторяет экспериментальный жидкосолевой ядерный реактор из 60-х годов американской Ок-Риджской национальной лаборатории, впоследствии закрытый, китайцы привнесли в разработку очень и очень много нового. Фактически проект возрождён на совершенно новом уровне, хотя вопросов вряд ли стало меньше.\r\n\r\nОпытный жидкосолевой китайский реактор будет вырабатывать всего 2 МВт тепловой энергии (а электрической ещё меньше), но он станет испытательной площадкой для изучения материалов, сред и радиоактивности на всех этапах работы реактора. Это будет обкатка технологий, которые, в случае успеха, значительно продвинут Китай в сторону энергетической независимости и углеродной нейтральности.\r\n\r\nТория намного больше на Земле, чем урана. Лет через 100–150 урана на Земле почти не останется, а тория будет всё ещё очень много. Для эксплуатации нового вида топлива заниматься им надо начинать уже сейчас. К тому же, торий в Китае сегодня вырабатывается в значительных объёмах как отходы производства при добыче редкоземельных материалов.\r\n\r\nЭкспериментальный ториевый реактор построен в Вувее, на окраине пустыни Гоби, как отрапортовало правительство провинции Ганьсу, где всё это происходит. Этот тип реактора не использует воду в качестве основного теплоносителя и идеален для расположения в пустынных районах. Реактор сдан в эксплуатацию несколько недель назад и готовится к запуску в ближайшие недели или даже дни.\r\n\r\n', '2.jpg', ''),
(3, 'Xiaomi начала блокировать смартфоны.', 'Xiaomi не присутствует официально на рынках некоторых стран или регионов, включая США. Тем не менее, это не мешает импортировать туда её устройства. Смартфоны Xiaomi способны совершенно нормально работать в любом регионе мира при условии, что они поддерживают диапазоны, с которыми работают местные операторы связи. Так было до недавнего времени, но теперь ситуация изменилась и появились некоторые ограничения.\r\n\r\nХотя экспортная политика Xiaomi запрещает продажу смартфонов в некоторых странах и регионах, компания прежне не препятствовала активации и использованию устройств на их территории. Теперь политика Xiaomi изменилась. За последние месяцы пользователи Reddit и Facebook несколько раз сообщали о блокировках смартфонов Xiaomi в том или ином регионе, но с прошлой недели число блокировок значительно выросло.\r\n\r\nПользователи, которые столкнулись с ограничениями, сообщают, что устройства выводят на экран сообщение: «Политика Xiaomi не разрешает продажу продукта на территории, где вы попытались его активировать. За дополнительной информацией обращайтесь напрямую к продавцу».\r\n\r\nНа данный момент нет полного списка стран и регионов, в которых возникают проблемы с использованием устройств Xiaomi. Известно лишь, что проблемы возникают у пользователей на Кубе, в Сирии, Иране, Северной Корее и Судане, а также в Крыму.', '3.jpg', NULL),
(4, 'Запуск гражданской миссии SpaceX Inspiration4 отложен на сутки.', 'Первая полностью гражданская миссия SpaceX под названием Inspiration4 будет запущена как минимум на день позже, чем планировалось изначально. Трёхдневная миссия отправится на орбиту с Космического центра NASA Кеннеди на мысе Канаверал не ранее 3:00 16 сентября из-за сочетания погодных условий и технических требований.\r\n\r\nInspiration4 — это частная миссия на околоземную орбиту, профинансированная миллиардером, основателем компании Shift4 Payments, работающей в сфере цифровых платежей, Джаредом Исаакманом (Jared Isaacman). В полёте к нему присоединятся Хейли Арсено (Hayley Arceneaux), Сиан Проктор (Sian Proctor) и Крис Семброски (Chris Sembroski).\r\n\r\nРуководители миссии встретились в четверг, 9 сентября, чтобы провести стандартную проверку готовности к полёту перед запуском, а также получить предварительную информацию о погоде. Решение о переносе полёта было принято после изучения погодных условий на стартовой площадке, в зоне взлёта и посадки, а также готовности ракеты Falcon 9, космического корабля Dragon, наземных систем и других ключевых элементов системы управления полётами SpaceX.\r\n\r\nПеренос запуска на новую дату, как сообщается, даст дополнительное время для окончательной подготовки, проверки оборудования и анализа данных. Руководство полётом сузит окно запуска до пяти часов примерно за три дня до запуска миссии.\r\n\r\nВ информации об Inspiration4 указано, что предстоит дальнейшая работа над космическим кораблём Crew Dragon, который всё ещё является довольно новым транспортным средством. Его первый полёт с экипажем состоялся в 2020 году.\r\n\r\nИспользуемый Crew Dragon под именем Resilience ранее летал к МКС. В этот раз он взлетит выше, а затем приземлится в Тихом океане. Гражданский экипаж прошёл шестимесячное обучение после объявления его состава в марте этого года.', '4.jpg', NULL),
(5, 'В Воронежской области появится Центр поддержки проектов на базе искусственного интеллекта.', 'Правительство Воронежской области договорилось о создании регионального Центра поддержки общественно значимых проектов в сфере применения искусственного интеллекта. Власти региона подписали соглашение с АНО «Лаборатории цифровой трансформации» на Областном фестивале интернет-технологий «РИФ» в пятницу, 10 сентября.\r\n\r\n– Развитие проектов и технологий на базе искусственного интеллекта четко ложится в задачи, которые транслирует президент. У нас есть отдельная стратегия развития искусственного интеллекта в ключевых отраслях. И есть определенные инициативы, мероприятия, которые предполагают использование технологий искусственного интеллекта. Область это новая, дополнительные компетенции нам будут очень нужны, – подчеркнул заместитель председателя правительства Воронежской области Артем Верховцев.\r\n\r\nКроме того, на «РИФе» Воронежская область присоединилась к открытому соглашению о взаимодействии при реализации проекта «Наше будущее. Новые лица». Цель проекта – популяризация успехов незаметных в общем медийном поле чемпионов олимпиад по математике, физике, программированию, шахматам и другим видам спорта, молодых ученых, предпринимателей и общественных активистов. К соглашению также присоединились Тамбовская область и Ханты-Мансийск.\r\n\r\nАртем Верховцев отметил, что межрегиональное взаимодействие, обмен опытом будут способствовать быстрому и качественному внедрению технологий:\r\n\r\n– Идею возникновения проекта «Наше будущее. Новые лица» поддержали лидеры цифровой трансформации регионов, федерального центра. Это – в продолжение Петербургского экономического форума, лицом которого был выбран молодежный лидер, что вызвало неоднозначную реакцию. У коллег родилась идея продвигать наших молодых ребят – победителей олимпиад по химии и физике, математике, шахматам, чтобы оказывать какое-то менторство по дальнейшему развитию их талантов.', '5.jpg', 'Voronezh'),
(6, 'В Москве создали технопарк для развития стартапов в сфере здравоохранения', '292\r\nВ Москве в ближайшее время начнет работу медицинский технопарк для помощи стартапам в сфере здравоохранения. Об этом сообщил руководитель АНО «Московский центр инновационных технологий в здравоохранении» Вячеслав Шуленин, передает ТАСС.\r\n\r\nРезиденты технопарка получат бесплатный доступ к базам данных, которые есть в московском здравоохранении. «Максимально будем стараться все эти ресурсы, которые сейчас есть в московском здравоохранении, объединять в единую базу, и на базе нашего медицинского технопарка, который будет находиться на проспекте Вернадского, 96, реализовывать», — отметил Шуленин.\r\n\r\nКроме этого, АНО вместе с ГК «Медси» запустили акселератор по отбору проектов в сфере искусственного интеллекта и больших данных, которые будут пилотироваться в московских учреждениях и клиниках группы компаний.', '6.jpg', 'Moscow'),
(7, 'Московская EdTech-платформа EdYes будет составлять рейтинг онлайн-школ', 'яд предпринимателей запустили в Москве EdTech-проект EdYes — онлайн-платформу с рейтингом школ и учебных программ. Рейтинг основывается на мнениях экспертов рынка, отзывах выпускников и данных от создателей образовательных продуктов.\r\n\r\nВ числе основателей проекта предприниматель Александра Дорф, сооснователь Rentmania Людмила Булавкина и другие. В общей сложности в проект было инвестировано около 10 млн руб. В дальнейшем компания планирует привлекать средства инвесторов на масштабирование.\r\n\r\nПо словам Дорф, «технология, лежащая в основе рейтинга EdYes — математическая экспертная скоринговая модель оценки учебных заведений по качеству предоставляемых ими услуг, разрабатываемая совместно с «Национальным центром управления рисками».', '7.jpg', 'Moscow'),
(8, 'В Москве на базе Боткинской больницы появится первый в России 5G-полигон', '320\r\nВ Москве развернут первый в России индустриальный полигон с инфраструктурой 5G для пилотирования технологий в здравоохранении. Соглашение об этом сегодня подписали Московский центр инновационных технологий в здравоохранении, Городская клиническая больница имени С.П.Боткина, ДИТ Москвы и «Ростелеком» в рамках IV Форума социальных инноваций регионов.\r\n\r\nНа базе 5G-полигона будут проводиться прикладные исследования, испытания прототипов и опытных образцов решений, цифровых сервисов и услуг. В частности, там планируется протестировать VR-тренажеры для обучения медиков, AR-решения для помощи врачам при проведении операций, дистанционный мониторинг за состоянием пациентов в режиме реального времени и др. По итогам эксперимента будут определены сценарии применения сетей 5G в здравоохранении.\r\n\r\nПоиском, отбором и тестирований медицинских сервисов будет заниматься Московский центр инновационных технологий в здравоохранении. «Ростелеком» предоставит 5G-инфраструктуру, Боткинская больница — клиническую инфраструктуру для проведения исследований. Координировать работу будет ДИТ Москвы.', '8.jpg', 'Moscow');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `login` varchar(100) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `favorites` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `pass`, `favorites`) VALUES
(2, 'Egor993', '7c4a8d09ca3762af61e59520943dc26494f8941b', '№1,');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
