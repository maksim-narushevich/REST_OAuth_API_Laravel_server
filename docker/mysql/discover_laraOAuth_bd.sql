-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 31, 2019 at 11:02 PM
-- Server version: 5.6.39-cll-lve
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `discover_laraOAuth_bd`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No title',
  `detail` text COLLATE utf8mb4_unicode_ci,
  `category_id` int(11) DEFAULT '0',
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'none',
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `user_id`, `title`, `detail`, `category_id`, `author`, `date`, `publish_year`, `created_at`, `updated_at`) VALUES
(1, 1, 'Гроздья гнева', 'Interesting story about wild west period from American history', 1, 'Дж.Стейнбек', '2012', '1938', '2018-05-04 08:15:58', '2018-05-04 08:15:58'),
(2, 1, 'The girl with seven names', 'True story about one North Korean defector girl', 1, 'Hyeonseo Lee', '2018', '2015', '2018-05-04 08:17:51', '2018-05-04 08:17:51'),
(3, 1, 'Искусство любить', 'Good motivation book', 1, 'Эрих Фромм', '2018', '1978', '2018-05-04 08:18:40', '2018-05-04 08:18:40'),
(4, 1, 'Сёгун', 'One of the best book about Japanese emperor period', 1, 'Клавелл Джеймс', '2016', '1932', '2018-05-04 08:19:44', '2018-05-04 08:19:44'),
(5, 1, 'Чума', 'Historical book', 1, 'Альбер Камю', '2014', '1936', '2018-05-04 08:20:44', '2018-05-04 08:20:44'),
(6, 1, 'Граф Монте-Кристо', 'Classic west Eropean book. And book with a lot of adventures', 1, 'Александр Дюма', '2013', '1915', '2018-05-04 08:22:01', '2018-05-04 08:22:01'),
(7, 1, 'Парфюмер', 'Interesting book with unpredictable plot', 2, 'Патрик Зюскинд', '2013', '1953', '2018-05-04 08:23:17', '2018-05-04 08:23:17'),
(8, 1, 'Унесённые ветром', 'One of the best book about American civil war', 2, 'Маргарет Митчел', '2012', '1911', '2018-05-04 08:24:03', '2018-05-04 08:24:03'),
(9, 1, 'Ошибка Одинокого Бизона', 'Story with adventures about Indians on American continent', 2, 'Джеймс Шульц', '2013', '1911', '2018-05-04 08:25:42', '2018-05-04 08:25:42'),
(10, 1, 'Неукротимая Анжелика', 'One of the many interesting books about adventures of Angelique', 3, 'Анн и Серж Галон', '2013', '1911', '2018-05-04 08:26:46', '2018-05-04 08:26:46');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2018_04_19_170822_create_products_table', 2),
(9, '2018_04_20_211203_create_books_table', 3),
(10, '2018_04_20_212541_create_movies_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No title',
  `detail` text COLLATE utf8mb4_unicode_ci,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'none',
  `category_id` int(11) DEFAULT '0',
  `finished_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `movie_created_year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `user_id`, `title`, `detail`, `author`, `category_id`, `finished_date`, `movie_created_year`, `created_at`, `updated_at`) VALUES
(1, 3, 'Avengers: Infinity War', 'An unprecedented cinematic journey ten years in the making and spanning the entire Marvel Cinematic Universe, Marvel Studios\' \"Avengers: Infinity War\" brings to the screen the ultimate, deadliest showdown of all time. The Avengers and their Super Hero allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos before his blitz of devastation and ruin puts an end to the universe.', 'Anthony Russo', 2, '2018', '2018', '2018-05-06 10:00:39', '2018-05-06 10:00:39'),
(2, 1, 'Rampage', 'Primatologist Davis Okoye (Johnson), a man who keeps people at a distance, shares an unshakable bond with George, the extraordinarily intelligent, silverback gorilla who has been in his care since birth. But a rogue genetic experiment gone awry mutates this gentle ape into a raging creature of enormous size. To make matters worse, it\'s soon discovered there are other similarly altered animals. As these newly created alpha predators tear across North America, destroying everything in their path, Okoye teams with a discredited genetic engineer to secure an antidote, fighting his way through an ever-changing battlefield, not only to halt a global catastrophe but to save the fearsome creature that was once his friend.', 'Brad Peyton', 1, '2018', '2018', '2018-05-06 10:02:21', '2018-05-06 10:02:21'),
(3, 3, 'Traffic', 'In the action packed thriller, Traffik, Brea (Paula Patton) and John (Omar Epps) are off for a romantic weekend in the mountains. Isolated at a remote estate, the couple is surprised by the arrival of two friends, Darren (Laz Alonso) and Malia (Roselyn Sanchez). Just when the weekend starts to get back on track, a violent biker gang turns up and begins to torment them. The foursome are forced to fight for their lives against the gang who will stop at nothing to protect their secrets. The film is written and directed by Deon Taylor, and produced by Roxanne Avent, Paula Patton and Taylor. Codeblack Films, a division of Lionsgate will release the film wide on April 20, 2018.', 'Deon Taylor', 1, '2018', '2018', '2018-05-06 10:05:03', '2018-05-06 10:05:03'),
(4, 2, 'I Can Only Imagine', 'The inspiring and unknown true story behind MercyMe\'s beloved, chart topping song that brings ultimate hope to so many is a gripping reminder of the power of true forgiveness', 'Jon Erwin', 2, '2018', '2018', '2018-05-06 10:06:19', '2018-05-06 10:06:19'),
(5, 3, 'The Miracle Season', 'Based on the inspiring true story of West High School girls\' volleyball team. After the loss of the school\'s star player, Caroline \"Line\" Found, in an accident, the remaining team players must band together under the guidance of their tough-love coach in hope of winning the state championship', 'Sean McNamara', 3, '2018', '2017', '2018-05-06 10:07:34', '2018-05-06 10:07:34'),
(6, 3, 'Pacific Rim Uprising', 'John Boyega (Star Wars: The Force Awakens) stars as the rebellious Jake Pentecost, a once-promising Jaeger pilot whose legendary father gave his life to secure humanity\'s victory against the monstrous \"Kaiju.\" Jake has since abandoned his training only to become caught up in a criminal underworld. But when an even more unstoppable threat is unleashed to tear through our cities and bring the world to its knees, he is given one last chance to live up to his father\'s legacy by his estranged sister, Mako Mori (Rinko Kikuchi)-who is leading a brave new generation of pilots that have grown up in the shadow of war. As they seek justice for the fallen, their only hope is to unite together in a global uprising against the forces of extinction. Jake is joined by gifted rival pilot Lambert (The Fate of the Furious\' Scott Eastwood) and 15-year-old Jaeger hacker Amara (newcomer Cailee Spaeny), as the heroes of the PPDC become the only family he has left. Rising up to become the most powerful defense force to ever walk the earth, they will set course for a spectacular all-new adventure on a towering scale. Pacific Rim Uprising is directed by Steven S. DeKnight (Netflix\'s Daredevil, STARZ\'s Spartacus) and also stars Jing Tian, Burn Gorman, Adria Arjona and Charlie Day', 'Steven S. DeKnight', 1, '2018', '2017', '2018-05-06 10:09:45', '2018-05-06 10:09:45'),
(7, 3, 'Captain America: Civil War', 'Political involvement in the Avengers\' activities causes a rift between Captain America and Iron Man.', 'Anthony Russo', 1, '2016', '2016', '2018-05-06 10:11:26', '2018-05-06 10:11:26'),
(8, 3, 'Dark Crimes', 'A murder investigation of a slain business man turns to clues found in an author\'s book about an eerily similar crime. Based on the 2008 article \"True Crimes - A postmodern murder mystery\" by David Grann', 'Alexandros Avranas', 1, '2017', '2016', '2018-05-06 10:12:24', '2018-05-06 10:12:24'),
(9, 1, 'X-Men: Apocalypse', 'After the re-emergence of the world\'s first mutant, world-destroyer Apocalypse, the X-Men must unite to defeat his extinction level plan', 'Bryan Singer', 2, '2018', '2016', '2018-05-06 10:13:16', '2018-05-06 10:13:16'),
(10, 3, '13 Hours', 'During an attack on a U.S. compound in Libya, a security team struggles to make sense out of the chaos', 'Michael Bay', 3, '2017', '2016', '2018-05-06 10:14:40', '2018-05-06 10:14:40'),
(11, 4, 'Hacksaw Ridge', 'WWII American Army Medic Desmond T. Doss, who served during the Battle of Okinawa, refuses to kill people, and becomes the first man in American history to receive the Medal of Honor without firing a shot', 'Mel Gibson', 2, '2017', '2016', '2018-05-06 10:20:13', '2018-05-06 10:20:13');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0502c876f03ae09d678e701af46ac453005b747829f587214f228db1f6ccbc030fe0ae33c750f518', 1, 2, NULL, '[]', 0, '2018-10-05 17:39:10', '2018-10-05 17:39:10', '2019-10-05 20:39:10'),
('05cfe30ad4200423dfdff110469551c4483c3f1b279b1e441f1408e4cff3c1e1f9fc34b381eed5ea', 3, 1, 'MyApp', '[]', 0, '2018-05-01 14:42:15', '2018-05-01 14:42:15', '2019-05-01 17:42:15'),
('063f81aedee780dd5411335bf4b3df4327d3702b863dbcb4e73ab37a48f9323e9531bb3edc53bc63', 3, 2, NULL, '[]', 0, '2018-04-19 17:39:25', '2018-04-19 17:39:25', '2019-04-19 20:39:25'),
('1895eeb72a21906f8718ec5375e52c51016e0b9f4caef8927b2126d7dd5ac3a9e8c89f8c250f727d', 1, 2, NULL, '[]', 0, '2018-05-04 07:59:30', '2018-05-04 07:59:30', '2019-05-04 10:59:30'),
('18f5a7e9da24668c7e4408a2863a626f912a3425ff7f3ce9faea604a186b264edda640bd0f8c29c1', NULL, 4, NULL, '[]', 0, '2018-04-19 16:56:08', '2018-04-19 16:56:08', '2019-04-19 19:56:08'),
('198436f26c717cf1c441af5e190c689795e484a28a0cc1e92c27e0ef72ad1ae553b1419b2e1b4eb7', NULL, 4, NULL, '[]', 0, '2018-04-19 16:47:57', '2018-04-19 16:47:57', '2019-04-19 19:47:57'),
('1bc568feb523d27e4347f86c5f0c9b7bd7ec983d96295bfade5d5742fc1e3284081d555a30fb0744', 1, 2, NULL, '[]', 0, '2018-04-29 08:32:52', '2018-04-29 08:32:52', '2019-04-29 11:32:52'),
('1cc7a089c31653c5767eb945d0bcb7283309a45d7547ba18a6c3c9b16ad7af590a577daccf5103c9', 1, 2, NULL, '[]', 0, '2018-05-03 15:19:07', '2018-05-03 15:19:07', '2019-05-03 18:19:07'),
('1e3cf11c41f638a798335a5991853a619891bcff8f991925824cc0f66936b87bc10595c03e026e2c', 3, 2, NULL, '[]', 0, '2018-04-19 17:33:58', '2018-04-19 17:33:58', '2019-04-19 20:33:58'),
('1f91a90a8376ad488346eac28ea200e1325f4f5d35f972b317015bad16471203e421c2170391c27b', 3, 2, NULL, '[]', 0, '2018-05-01 14:42:15', '2018-05-01 14:42:15', '2019-05-01 17:42:15'),
('209bbe06701a46ea2bd97275365b3801e43223d5b9b08d8cd920028789cfe4cb5918d301905269b6', 4, 2, NULL, '[]', 0, '2018-04-19 17:56:25', '2018-04-19 17:56:25', '2019-04-19 20:56:25'),
('2b793167957d3ede764a3cfc8bf7eeb668b8f517da86fcfecb0c3e474f2fad7efd24d307b4870c27', NULL, 4, NULL, '[]', 0, '2018-04-19 16:27:42', '2018-04-19 16:27:42', '2019-04-19 19:27:42'),
('319b96909d0b170006bba47d68ec349af0058aecd0ff8820ef9e07309f021f62c4c4b663c1b8a3fa', NULL, 4, NULL, '[]', 0, '2018-04-19 16:59:31', '2018-04-19 16:59:31', '2019-04-19 19:59:31'),
('324dc7c2a6187cb0631633c1785bce922303eee1d28d47c60626302e3365a9a36980b2e8618e61c5', 3, 2, NULL, '[]', 0, '2018-04-22 13:52:55', '2018-04-22 13:52:55', '2019-04-22 16:52:55'),
('330faa9af52ca794088e4b7efd48ff946e7dea388284f38c18b9765247155bec937d2f34eb18c383', 1, 2, NULL, '[]', 0, '2018-05-02 16:50:18', '2018-05-02 16:50:18', '2019-05-02 19:50:18'),
('3acd65b862495aff7a1d3b33bdfb2d62a59f596c0e56086d8817d13289c3ee253ea6eb7e88d110ac', 1, 2, NULL, '[]', 0, '2018-05-01 14:32:27', '2018-05-01 14:32:27', '2019-05-01 17:32:27'),
('3af0bc8581545d1bc92f1e6482ced788ff9e4a69dc8ee307f8a0cbe69e033308670f11ecb5971518', 1, 2, NULL, '[]', 0, '2018-05-01 14:16:51', '2018-05-01 14:16:51', '2019-05-01 17:16:51'),
('3c9de8e192ff1326241d98f059d63852f1bb9e642512763625a60ef7f52464f8597dcb04ff40e3ae', 3, 2, NULL, '[]', 0, '2018-04-22 14:03:32', '2018-04-22 14:03:32', '2019-04-22 17:03:32'),
('3fafa7a11a6d693cf689bccd08402a99fbf414065fc3d90f9d3fc0b0ba7c455703cbfc9ab3514eb1', 4, 1, 'MyApp', '[]', 0, '2018-04-19 17:49:06', '2018-04-19 17:49:06', '2019-04-19 20:49:06'),
('43e23deaa0e7f54e0e914d67900d933d9a5d8bf0c1e07472ace625f20b1e2ce74646ade16b65771c', 3, 2, NULL, '[]', 0, '2018-04-19 16:07:19', '2018-04-19 16:07:19', '2019-04-19 19:07:19'),
('445cb35f0d11d126840efd1725c2ed1c049791d02201fcaa7aa4789d54101165ea2bc669ed10d16c', 1, 2, NULL, '[]', 0, '2018-04-29 08:43:33', '2018-04-29 08:43:33', '2019-04-29 11:43:33'),
('4ba61b5c0a834050c1edc6626fb9d0893d80bb2cf3686a29561b61474acda965f40850473ad9cc05', NULL, 4, NULL, '[]', 0, '2018-04-19 16:56:26', '2018-04-19 16:56:26', '2019-04-19 19:56:26'),
('4e5e5a836005d1fd8c6d1a4ef966c544fd2a43040aa10007b010412dce67802625711e4f3d5e0f93', 1, 2, NULL, '[]', 0, '2018-05-04 08:04:34', '2018-05-04 08:04:34', '2019-05-04 11:04:34'),
('5538d7890d59d85ed5e933a12f47c13742b47f2f727d939c8a4daacbc3bd0c6d258a8b64d38f9b3c', 1, 2, NULL, '[]', 0, '2018-04-19 14:48:52', '2018-04-19 14:48:52', '2019-04-19 17:48:52'),
('55f7f82162dd101d69158dd5ac706d1d3cd1c3f6364c9e1bd3f4dbe612dc76fff04f702829da6bb2', NULL, 4, NULL, '[]', 0, '2018-04-19 16:48:49', '2018-04-19 16:48:49', '2019-04-19 19:48:49'),
('5b92c0cff8fb70de73a6faabd9f6041ef9aad012325ca73afc67a61ad753162f2b9db99ef2a62546', 1, 2, NULL, '[]', 0, '2018-05-04 08:12:53', '2018-05-04 08:12:53', '2019-05-04 11:12:53'),
('5bfd73d07466f5d786676518b40b4b7bbe5c975f8bc5163d1b4a1a55b488f6a9af6110c9496ecf3a', 1, 2, NULL, '[]', 0, '2018-05-02 16:58:23', '2018-05-02 16:58:23', '2019-05-02 19:58:23'),
('617fc0b4dcfc7f0173cd2c098a23b80aaf233f97b635ecba42a0eef4832ec2cd093c535959f15f87', 3, 2, NULL, '[]', 0, '2018-04-22 14:21:06', '2018-04-22 14:21:06', '2019-04-22 17:21:06'),
('649e3a6b37675e314c8f0b3ce27a7412b63374d7965f79ee6642240a0f3cd05677aed8e2e3ab93c8', 1, 2, NULL, '[]', 0, '2018-05-04 17:16:13', '2018-05-04 17:16:13', '2019-05-04 20:16:13'),
('689c0415411dbfd7434c7b944e929f4a5b49db0d3fee079c5e8d34d67e2aa307fccf1aaeeea4292d', NULL, 4, NULL, '[]', 0, '2018-04-19 16:43:21', '2018-04-19 16:43:21', '2019-04-19 19:43:21'),
('68c0367be2b91e99293df3f5abcd9359cf980fc410076519c25959df75b2cf01e5957fab09141e97', 3, 2, NULL, '[]', 0, '2018-04-22 13:57:00', '2018-04-22 13:57:00', '2019-04-22 16:57:00'),
('72ee0e15482dc25c8987f2d55f4ecf3ccb78af891bad4575bc532aa74b1f605d48f5ec4f933924e7', 1, 2, NULL, '[]', 0, '2018-10-05 17:38:27', '2018-10-05 17:38:27', '2019-10-05 20:38:27'),
('73632d8ea3e64f0e11c7ea1b4ba18d77f5b4b875e1eeafed6f214fba426b7863af0c2d186b4822d5', 1, 2, NULL, '[]', 0, '2018-05-01 07:41:00', '2018-05-01 07:41:00', '2019-05-01 10:41:00'),
('73891da7d616b8a318159abc9b5f095a3a8a491475fefa710e2e77aa33429e69adc731a5e1b90545', 3, 2, NULL, '[]', 0, '2018-04-19 17:33:42', '2018-04-19 17:33:42', '2019-04-19 20:33:42'),
('740be556b7cd00afffc5b1c6aa4deb9d94d67d43cec76c3615e46d2b5f97201527588586fe840a2c', 3, 1, 'MyApp', '[]', 0, '2018-04-19 16:06:44', '2018-04-19 16:06:44', '2019-04-19 19:06:44'),
('785edf55cc3b757fbc5c40ac669599dd5c4ea4743f07bb82bdf26a746eed70f1a30f8a3c7017adb2', 1, 2, NULL, '[]', 0, '2018-09-01 10:39:54', '2018-09-01 10:39:54', '2019-09-01 13:39:54'),
('7e9d6b21aaa2414ef5ade199492278fdb695e8285905cb39b999fac94d4a8ede0375938f9ce7a7cd', 1, 2, NULL, '[]', 0, '2018-05-03 14:28:56', '2018-05-03 14:28:56', '2019-05-03 17:28:56'),
('81ce16534f7c367ef161ad239e3be2591b60cb400e5089eb42aac2a79be4ab90b53633de10b27dad', NULL, 4, NULL, '[]', 0, '2018-04-19 16:50:45', '2018-04-19 16:50:45', '2019-04-19 19:50:45'),
('83f28f94f267cc07f101cbb4fb5d82a55af67b663d3ac612d66c972c2bb21a06a3e0caf9d393e9b6', 3, 2, NULL, '[]', 0, '2018-04-22 13:57:47', '2018-04-22 13:57:47', '2019-04-22 16:57:47'),
('89d5b6998aeb15d0cd57e5853d55b1738671afc7d6373d1ba5ec742081f0e86e428132f56b0152ea', 3, 2, NULL, '[]', 0, '2018-04-19 17:35:28', '2018-04-19 17:35:28', '2019-04-19 20:35:28'),
('8db01fdcb5cfcb4b163623524ece495b4d6dc330f9c3e3c4051e3e5333350529c813f438a4f6c608', 1, 2, NULL, '[]', 0, '2018-10-05 17:24:17', '2018-10-05 17:24:17', '2019-10-05 20:24:17'),
('9093f9f28fc9ae668f74e6887a523d04d90e21daf426929ade54139d8b814c3ed0f94a34484dd19e', 3, 2, NULL, '[]', 0, '2018-05-06 09:21:22', '2018-05-06 09:21:22', '2019-05-06 12:21:22'),
('9149c5ec82c059d18832fcf136dffeed5089fb87cf98ae4ed03d9e11deba55b80949aaf8ac629d8d', 5, 1, 'MyApp', '[]', 0, '2018-04-22 14:09:19', '2018-04-22 14:09:19', '2019-04-22 17:09:19'),
('93e3f981b961095d45b42cb5ef8d159b2da9f6272bdc07edc868ca9094b1210974e970c9227d83a0', 3, 2, NULL, '[]', 0, '2018-04-22 14:06:41', '2018-04-22 14:06:41', '2019-04-22 17:06:41'),
('944c116823d47c35d620815a011ac4cee5512005f3e2b2e1ba26e4153c12844bd6876c75bd4ff820', 4, 1, 'MyApp', '[]', 0, '2018-05-06 10:19:03', '2018-05-06 10:19:03', '2019-05-06 13:19:03'),
('98dbb4bf8c3a16c368217cff5106b876f3904e10c4bdb8b8557edda767274c5bb9818fb31d350fcb', 1, 2, NULL, '[]', 0, '2018-05-03 15:23:47', '2018-05-03 15:23:47', '2019-05-03 18:23:47'),
('9aed8fc72fb5f918b9f476fc166c3662bb3c165663450fec403d992a10d1d364970f8ade19162103', 1, 1, 'MyApp', '[]', 0, '2018-04-19 14:16:29', '2018-04-19 14:16:29', '2019-04-19 17:16:29'),
('9d7234482e3261e630f7d14dd2f573d4a73e233118456cda79816ae77cf2217f25635b4c851d3fb4', 1, 2, NULL, '[]', 0, '2018-05-04 16:55:18', '2018-05-04 16:55:18', '2019-05-04 19:55:18'),
('9e2cfbe23604a681a4abb2eef2364566aad7168848d025260dd2380ccfe9e2aef2b2e5fb441f354e', 4, 2, NULL, '[]', 0, '2018-05-06 10:19:04', '2018-05-06 10:19:04', '2019-05-06 13:19:04'),
('a029f05e306655d89c38eb0e1a38bc880278d31c0e084337dd22b8916205022cd9e233dd7f234dcf', 3, 2, NULL, '[]', 0, '2018-04-22 13:52:34', '2018-04-22 13:52:34', '2019-04-22 16:52:34'),
('a1fd430047c2be5edd288543b2eb6b795f3414bf22b9df02aecf04fd5f3d1bacdedd9c541281254f', NULL, 4, NULL, '[]', 0, '2018-04-19 16:29:50', '2018-04-19 16:29:50', '2019-04-19 19:29:50'),
('aa3155581b470ae92a880674273e5d76e56af18fce7c0e4765336bda8034e4e4bb5d5a660c2a3f6a', NULL, 4, NULL, '[]', 0, '2018-04-19 16:43:47', '2018-04-19 16:43:47', '2019-04-19 19:43:47'),
('abed8447b9389ccf9286aea75dc09a8efb25f0d7caaf34c142ab75b2a52fb8667ab4edc1514057a6', 3, 2, NULL, '[]', 0, '2018-04-22 14:00:41', '2018-04-22 14:00:41', '2019-04-22 17:00:41'),
('ac0859ac12bb60f30d0ebc99f36ea22ca4382b71bda9f6c2c8acdcac9aa850b6272c3684ee0f6fbd', 5, 2, NULL, '[]', 0, '2018-05-07 01:06:53', '2018-05-07 01:06:53', '2019-05-07 04:06:53'),
('aecdb3d1dc36dac1867c46712fc3004e754f57c4a9d17b1153e398c42506acc07a7c05eacf56fcdf', 3, 2, NULL, '[]', 0, '2018-04-22 13:44:45', '2018-04-22 13:44:45', '2019-04-22 16:44:45'),
('b11625242195665f58e5452dc5af8d16f0d01a559c86d3644d5c98593e9a81354227b0b29337e4eb', 4, 2, NULL, '[]', 0, '2018-04-19 17:49:12', '2018-04-19 17:49:12', '2019-04-19 20:49:12'),
('b3b6e62f21f360b1e79fab0af3f2a525e0e89202eb92cee147d8c483e22381eecaedfaa94b04b506', NULL, 4, NULL, '[]', 0, '2018-04-19 16:28:11', '2018-04-19 16:28:11', '2019-04-19 19:28:11'),
('b8e09c3a6f613c51c609196a10cf26f510f01796913a24f724075ea4203cd76c31dafd855c59fe82', 1, 2, NULL, '[]', 0, '2018-05-01 14:27:35', '2018-05-01 14:27:35', '2019-05-01 17:27:35'),
('b9d091aea4f74ca287fd690829828bd6f38d1a60fcd7cd065b7f89c28df204164fc7eb28114cd3b4', 1, 2, NULL, '[]', 0, '2018-05-01 14:24:16', '2018-05-01 14:24:16', '2019-05-01 17:24:16'),
('c08c9925908fb233d70f723f96c0668417a16b3da8818872cf1c9ff0f105af8eb77efeca6e1a0878', 1, 2, NULL, '[]', 0, '2018-04-29 06:57:40', '2018-04-29 06:57:40', '2019-04-29 09:57:40'),
('c597fa5915f095df5972d9bcc919587fba8a8a9562e23eb24f0fd42d0454957803449f135e78db7b', 3, 2, NULL, '[]', 0, '2018-04-22 14:01:17', '2018-04-22 14:01:17', '2019-04-22 17:01:17'),
('d01b0bd5f070e473937e8a0ab1ab7f412719063dbcc9f5b16f7a5df370e87da090413eae783cf9e1', 4, 2, NULL, '[]', 0, '2018-04-19 17:58:13', '2018-04-19 17:58:13', '2019-04-19 20:58:13'),
('d02ce4cd1d50180a063883f83a3afb806544ae8da1367e68112a42f80f4d869c809d528e6aa1d8d7', 3, 2, NULL, '[]', 0, '2018-04-22 13:41:38', '2018-04-22 13:41:38', '2019-04-22 16:41:38'),
('d0ba0fc890bd8411e8f7c9c435cf5b27320837a409d04ceb555023d77dfb0eb60c39a38b9623c798', 3, 2, NULL, '[]', 0, '2018-04-19 17:37:25', '2018-04-19 17:37:25', '2019-04-19 20:37:25'),
('d3fd37cfa197e07c4c624bbf4d7a8f27b6f96ea236413e906c252f340383466f6fd67c7672e50bf8', 1, 4, NULL, '[]', 0, '2018-04-19 17:21:14', '2018-04-19 17:21:14', '2019-04-19 20:21:14'),
('d6fba81df25f6d6d05ee42837076acdbc000fb7445adc2d32f5ff18e76a51ec5750823b70080e148', 3, 2, NULL, '[]', 0, '2018-04-29 08:36:31', '2018-04-29 08:36:31', '2019-04-29 11:36:31'),
('d9f8b7658098909521246c56af3938c4a011dd290069c59a9d93cd31c6553b5306d7186532365dae', 1, 4, NULL, '[]', 1, '2018-04-19 15:31:54', '2018-04-19 15:31:54', '2019-04-19 18:31:54'),
('de95e0adba334e1adb6b62116b6290085ee51865ebcfee7674872215184b3bfad40820c213c22ea0', 3, 2, NULL, '[]', 0, '2018-05-06 09:18:04', '2018-05-06 09:18:04', '2019-05-06 12:18:04'),
('e0182fcf6a469475c75be6f4767cc2f3f1dc3e85b5e8f31ad708b7983fd51d3b510e57920a7d8f40', 3, 2, NULL, '[]', 0, '2018-04-22 13:48:47', '2018-04-22 13:48:47', '2019-04-22 16:48:47'),
('e1bc127e99348dd07c4735bb9ed176421e50050353b9bad0d6ba8ed9517668f3bebf5bf2e58ae92f', 5, 2, NULL, '[]', 0, '2018-05-07 01:04:44', '2018-05-07 01:04:44', '2019-05-07 04:04:44'),
('e6b8b2a12734abd7b4ca2bb2062e614d783b48a5ebce74b6526afbea29fa29a14cb582a0fab95656', 3, 2, NULL, '[]', 0, '2018-04-20 18:23:02', '2018-04-20 18:23:02', '2019-04-20 21:23:02'),
('eaaa06e8d6dea83f3fb95b976b4f8887c735c22afcb9498891be09f5b642515e43043418862f3515', 3, 2, NULL, '[]', 0, '2018-04-22 13:53:29', '2018-04-22 13:53:29', '2019-04-22 16:53:29'),
('edde1aca5c3d66c7491b2a018eff6820df6f75b4e3c16e3cd099a914688475265a6111e158b2b14a', 1, 2, NULL, '[]', 0, '2018-05-01 14:53:13', '2018-05-01 14:53:13', '2019-05-01 17:53:13'),
('f0508e8033d29a244447d2649427a2769e8bc81af4ff9fc62d1a641cc6db9020957d972614a1f23a', 4, 2, NULL, '[]', 0, '2018-04-29 08:38:49', '2018-04-29 08:38:49', '2019-04-29 11:38:49'),
('f0667330ea231b18a2afd3bf3e65f4ae4337ecd1ad836fc6549ba95e7f7dd1a0b912ad23aa252282', NULL, 4, NULL, '[]', 0, '2018-04-19 16:47:22', '2018-04-19 16:47:22', '2019-04-19 19:47:22'),
('f09211c92bfea1c6505b0f3e0b780e12b3cf7f714fdc10e0ee2a13ce40b0a06b07b06f5bfd2333c5', 3, 2, NULL, '[]', 0, '2018-04-22 14:07:29', '2018-04-22 14:07:29', '2019-04-22 17:07:29'),
('f4eb13ffaaacae697d32d7044fb684f3d4eb7b03f7f3f0678ad79194356ac50234f079a8f5d063ac', 3, 2, NULL, '[]', 0, '2018-04-22 13:19:48', '2018-04-22 13:19:48', '2019-04-22 16:19:48'),
('f7c9e49dc829c21f6bac9ce95e8f551e4fd09182d32ea8bbf441e32378ca2e924cbfbc8e453212df', 2, 1, 'MyApp', '[]', 0, '2018-05-01 14:41:37', '2018-05-01 14:41:37', '2019-05-01 17:41:37'),
('f80ac135d83c98610fcb33b545fa674278ef936db236e8437bbbe766bb2bc0fa47441d58a27ffaa1', 5, 1, 'MyApp', '[]', 0, '2018-05-07 01:04:44', '2018-05-07 01:04:44', '2019-05-07 04:04:44');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_auth_codes`
--

INSERT INTO `oauth_auth_codes` (`id`, `user_id`, `client_id`, `scopes`, `revoked`, `expires_at`) VALUES
('068359ec5f7c099faeee1b4fc080ca25bdc3efcfa8aacd3a272f1a40a96732e54449a97b8b6bbec4', 1, 4, '[]', 1, '2018-04-19 18:39:18'),
('24dcff7fd154edfc6a3e5e24cb61fbc6ce090456cf7c4a776783f49abaaa164c356a488cbca06634', 1, 4, '[]', 1, '2018-04-19 20:29:13'),
('48ba7586d9f7b59e4bbb789ce4f4e4d304c1a93e3fde139b13fb11c18eddd3742542786747133ab4', 1, 4, '[]', 0, '2018-04-19 19:20:09'),
('a3b0091581360fc14fe57bf34c8f8a070ab96e774cda28deb6b86bf8ad2ac1762833fd88295c2724', 1, 4, '[]', 0, '2018-04-19 18:44:06'),
('cb2b81d066adafc45cf98dcbec9f000f3594a6144fd833ea7f3adbf44774982073135be099d01f13', 1, 4, '[]', 0, '2018-04-19 18:42:46'),
('d1b929b90a40d8682d25cf621007f3a1d0eb7b4772d057eeb1327fa1a5fa942b80177ae9fdc1fc25', 1, 4, '[]', 0, '2018-04-19 19:18:33');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'hSksCdpCqE1GRl06ILv4HCHaFNWnmIklvYzVeK6r', 'http://localhost', 1, 0, 0, '2018-04-19 14:05:47', '2018-04-19 14:05:47'),
(2, NULL, 'Laravel Password Grant Client', 'rIGU7NLzDUCzXcUHqhZctGVwP2d9Jc0hwtW2BWDT', 'http://localhost', 0, 1, 0, '2018-04-19 14:05:47', '2018-04-19 14:05:47'),
(3, 1, 'Maksim', 'aTwBaoK5fyvTAlgCnSaezLQNSGxfHHd2CdzfDoFv', 'http://testpassport.local/callback', 0, 0, 0, '2018-04-19 14:28:39', '2018-04-19 14:28:39'),
(4, 1, 'Lara_oauth_tes', 'qO2LMzkdcZy0ETVb7pRl9Gy8DLyXhtDA8nIu6gjg', 'http://laraoauth.local/callback', 0, 0, 0, '2018-04-19 15:26:20', '2018-04-19 15:26:20');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-04-19 14:05:47', '2018-04-19 14:05:47');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('000acbccd9fc4a7e6cc89671ce2a2161c70dbbd60218d8ca10958271b2750b30d9c98aeee1795298', '83f28f94f267cc07f101cbb4fb5d82a55af67b663d3ac612d66c972c2bb21a06a3e0caf9d393e9b6', 0, '2019-04-22 16:57:47'),
('0be686099a7323a3385ab7d52745e6a9bd2f4efaff082cf080ffa5f8434563773383649a3ca6d889', 'abed8447b9389ccf9286aea75dc09a8efb25f0d7caaf34c142ab75b2a52fb8667ab4edc1514057a6', 0, '2019-04-22 17:00:41'),
('0c855af60dd8375c5457585c764349147330a608f18a1c0b6baeec49dea3736dc28bd258bca1b0b5', 'd9f8b7658098909521246c56af3938c4a011dd290069c59a9d93cd31c6553b5306d7186532365dae', 0, '2019-04-19 18:31:54'),
('14c21ef5e99470321ee942b95d1cdb86fa0ac9df36cd5fc29559badde619a84753433237867fe7a2', '3acd65b862495aff7a1d3b33bdfb2d62a59f596c0e56086d8817d13289c3ee253ea6eb7e88d110ac', 0, '2019-05-01 17:32:27'),
('1afffc56f99fceece3b6fd3d5856f8292cb5683212cbbc778f97fe447e000c0b0aaa7906932385ac', 'ac0859ac12bb60f30d0ebc99f36ea22ca4382b71bda9f6c2c8acdcac9aa850b6272c3684ee0f6fbd', 0, '2019-05-07 04:06:53'),
('1bcab65912f0783d23796eef2fdf6e356d10c225ff22bccb6b0b28d0e56744fa202c14e0ba5e4fbd', '89d5b6998aeb15d0cd57e5853d55b1738671afc7d6373d1ba5ec742081f0e86e428132f56b0152ea', 0, '2019-04-19 20:35:28'),
('1e0f5c899d13f1b4e65ccf90b8ea22742d1b37c9f315096f5e9f53166c8cc5772bbcf4aa20acb026', '4e5e5a836005d1fd8c6d1a4ef966c544fd2a43040aa10007b010412dce67802625711e4f3d5e0f93', 0, '2019-05-04 11:04:34'),
('223eda1e2febb2a513ee7b7ecd195ab09adf35ae8be795b18bf18748d11a06353e45641cada3017c', '0502c876f03ae09d678e701af46ac453005b747829f587214f228db1f6ccbc030fe0ae33c750f518', 0, '2019-10-05 20:39:10'),
('274e8526a8d2832a66c7cfa745fb0cec98494e9eb28d01e71dc34a4d1da8889140837b338dc8a48a', '649e3a6b37675e314c8f0b3ce27a7412b63374d7965f79ee6642240a0f3cd05677aed8e2e3ab93c8', 0, '2019-05-04 20:16:13'),
('2ba9f7b19850ae18c47b6e34e09db3ab4209f985b59dfab464751c51ddd586493671a3996613a6a8', 'e1bc127e99348dd07c4735bb9ed176421e50050353b9bad0d6ba8ed9517668f3bebf5bf2e58ae92f', 0, '2019-05-07 04:04:44'),
('2c966a90bdba0f9e477236bf2e40f20c9e4eb7a50c6832a19e40768e82b75be7ec9281559013d0a6', '73632d8ea3e64f0e11c7ea1b4ba18d77f5b4b875e1eeafed6f214fba426b7863af0c2d186b4822d5', 0, '2019-05-01 10:41:01'),
('2e3c1c9837185768b24504c6e99bfe9729a582d1a28570b3f4318e4b3cc7f4deb024870d0dd551e4', '1895eeb72a21906f8718ec5375e52c51016e0b9f4caef8927b2126d7dd5ac3a9e8c89f8c250f727d', 0, '2019-05-04 10:59:30'),
('2e68fe695f13867e0699c4f708c78c548805ed4e56701a1294a9fe038b21d1e6b2098a38ba54c312', '330faa9af52ca794088e4b7efd48ff946e7dea388284f38c18b9765247155bec937d2f34eb18c383', 0, '2019-05-02 19:50:19'),
('36e689613c26addb8c396dbf62473a95553a510b2772bcc70d778556d6986a9c26ffe3ac6f9de186', 'f0508e8033d29a244447d2649427a2769e8bc81af4ff9fc62d1a641cc6db9020957d972614a1f23a', 0, '2019-04-29 11:38:49'),
('39456456626707e2ca0cf624e08069ae12cd0aaf2134bb521d92d85835b87a52bbbc796ad6d00526', '43e23deaa0e7f54e0e914d67900d933d9a5d8bf0c1e07472ace625f20b1e2ce74646ade16b65771c', 0, '2019-04-19 19:07:19'),
('3e18838bbfc665f32aab677963de17da07f60cfdf5133f6a84119c91916dbd55a630d71b842c6a6c', 'e6b8b2a12734abd7b4ca2bb2062e614d783b48a5ebce74b6526afbea29fa29a14cb582a0fab95656', 0, '2019-04-20 21:23:02'),
('3e940ffeda5ed90eafb5d6bab707f811b3941a41f6d4ac07cebe2a9844e569116b1520c0a30d6d9b', 'd02ce4cd1d50180a063883f83a3afb806544ae8da1367e68112a42f80f4d869c809d528e6aa1d8d7', 0, '2019-04-22 16:41:38'),
('474779e59976ad3597c2daf3d2a8ab51ea9c136f0a7d41f37d69fa6c18f9b6c8a696c1caa6731214', 'e0182fcf6a469475c75be6f4767cc2f3f1dc3e85b5e8f31ad708b7983fd51d3b510e57920a7d8f40', 0, '2019-04-22 16:48:47'),
('4755c05a1892542148fbd4a417bad580c12c3c2f40382e1f3a84df3030c1404b7626b6a311e1d733', '8db01fdcb5cfcb4b163623524ece495b4d6dc330f9c3e3c4051e3e5333350529c813f438a4f6c608', 0, '2019-10-05 20:24:17'),
('4945ae1d1e5038395338c77fecbfdabc37168a2ac5ca2f560e0054a71956b33d3bc9be80f2487463', '209bbe06701a46ea2bd97275365b3801e43223d5b9b08d8cd920028789cfe4cb5918d301905269b6', 0, '2019-04-19 20:56:25'),
('4b3f1738e5dde9c516d3604221b4119eeada0f3d7f2ae38ab24bffe772c6eb7f8745e52b9d8e726f', 'c597fa5915f095df5972d9bcc919587fba8a8a9562e23eb24f0fd42d0454957803449f135e78db7b', 0, '2019-04-22 17:01:17'),
('4c86188fc28ac6933c86d89059499023319615bc95a321f2c31cde6692434bb1b383e91398e73409', 'edde1aca5c3d66c7491b2a018eff6820df6f75b4e3c16e3cd099a914688475265a6111e158b2b14a', 0, '2019-05-01 17:53:13'),
('4d94ceea162fba7c5e988e8d7daac52ecf925ca6e0dc84f8c9c7ad2462ade6da0559f65006a92572', '5b92c0cff8fb70de73a6faabd9f6041ef9aad012325ca73afc67a61ad753162f2b9db99ef2a62546', 0, '2019-05-04 11:12:53'),
('503717c794c232e8743fa36c615c89a350dd2b01161e275e22cff414f8cf5bb6fefc9c00ca7b2b94', '063f81aedee780dd5411335bf4b3df4327d3702b863dbcb4e73ab37a48f9323e9531bb3edc53bc63', 0, '2019-04-19 20:39:25'),
('5043aa38e37e967a3fc622f9ba8ef555e03cc0e8bd281ec920679c0e17d976b08b51bbb242bf556b', 'b11625242195665f58e5452dc5af8d16f0d01a559c86d3644d5c98593e9a81354227b0b29337e4eb', 0, '2019-04-19 20:49:12'),
('57201f16b5eccc9ddde216bbcab644b09b35be5eb3abba0f9300964cb83b339a442907871847f2f7', 'b9d091aea4f74ca287fd690829828bd6f38d1a60fcd7cd065b7f89c28df204164fc7eb28114cd3b4', 0, '2019-05-01 17:24:16'),
('63d3738a0aac1887103f739825becc9424beb4d99d4f66780c467d3a7912c3e34004d31536f29b93', '3c9de8e192ff1326241d98f059d63852f1bb9e642512763625a60ef7f52464f8597dcb04ff40e3ae', 0, '2019-04-22 17:03:32'),
('65d93cfc49d7ae60d76553a43648da8550b3f1d0af7e73d094335b04242cd20b8dcfd00f32f053a6', '72ee0e15482dc25c8987f2d55f4ecf3ccb78af891bad4575bc532aa74b1f605d48f5ec4f933924e7', 0, '2019-10-05 20:38:27'),
('68dbb387df19885fb3e4a0cd809d0810ef9b54817351c8b04c1e7ee121a047db7dbc3a79b8415efc', '9d7234482e3261e630f7d14dd2f573d4a73e233118456cda79816ae77cf2217f25635b4c851d3fb4', 0, '2019-05-04 19:55:18'),
('6ca156990b54ad34a2bfa2249fa6571e3abcb7d2f504f15935274f9be749b7118637098779e07ded', 'd01b0bd5f070e473937e8a0ab1ab7f412719063dbcc9f5b16f7a5df370e87da090413eae783cf9e1', 0, '2019-04-19 20:58:13'),
('6e9ff31a55cffba83213c491b6180f5ac2f3811f1c0184dbfcc7702d3b75d395882b251cfb6be344', 'de95e0adba334e1adb6b62116b6290085ee51865ebcfee7674872215184b3bfad40820c213c22ea0', 0, '2019-05-06 12:18:04'),
('7379a1637e0c89d49c4cfe4abc160321f477cf6b3751d3543375f4ddc0d0337f2b5e8969120e13f1', 'aecdb3d1dc36dac1867c46712fc3004e754f57c4a9d17b1153e398c42506acc07a7c05eacf56fcdf', 0, '2019-04-22 16:44:45'),
('74d38f3db3d6cd6d0c2769f82429fa70d5c3f49390f2eaf25a7f6292c22bdccafee95b8ae9003a5a', '98dbb4bf8c3a16c368217cff5106b876f3904e10c4bdb8b8557edda767274c5bb9818fb31d350fcb', 0, '2019-05-03 18:23:47'),
('87ced5eebd0a714daa245266ae4437418df1a71e1eeeb64a18df602045b6b2c396948b9e650d94f2', 'd6fba81df25f6d6d05ee42837076acdbc000fb7445adc2d32f5ff18e76a51ec5750823b70080e148', 0, '2019-04-29 11:36:31'),
('a03aaf92d515cf6b73fd8cacae6ca65bfb796d56f35c8af7d1febcdcf736dd235e8d1a417e584bb0', '445cb35f0d11d126840efd1725c2ed1c049791d02201fcaa7aa4789d54101165ea2bc669ed10d16c', 0, '2019-04-29 11:43:33'),
('a13650eaa4f091277a8d92509f4d36a9aa81969d668b217c347c6a27348db0185488d79a3fc9b098', '3af0bc8581545d1bc92f1e6482ced788ff9e4a69dc8ee307f8a0cbe69e033308670f11ecb5971518', 0, '2019-05-01 17:16:51'),
('a181cf79b9b74b78c4d5a717e1387286ed7f06cdd4eb4f8945fddd26f85b8603d934b23dad5ea969', '9093f9f28fc9ae668f74e6887a523d04d90e21daf426929ade54139d8b814c3ed0f94a34484dd19e', 0, '2019-05-06 12:21:22'),
('a190761a8c2aeefc00e3893994d0c89e6569bcecdc1cacce43aeef9a5342817cca40148a4975223b', '617fc0b4dcfc7f0173cd2c098a23b80aaf233f97b635ecba42a0eef4832ec2cd093c535959f15f87', 0, '2019-04-22 17:21:06'),
('a24c1ca10167f306d7020c939b7601a96a354027463b932d976e738f09496f1ea837094a6ab89248', 'f4eb13ffaaacae697d32d7044fb684f3d4eb7b03f7f3f0678ad79194356ac50234f079a8f5d063ac', 0, '2019-04-22 16:19:48'),
('a418ea63f07a0afeea43b87cac9f3f01e49fbd31bfe9945e083c3507906eaba210327eb7ebe60621', '324dc7c2a6187cb0631633c1785bce922303eee1d28d47c60626302e3365a9a36980b2e8618e61c5', 0, '2019-04-22 16:52:55'),
('aa57d86760e5da5b4a8c86b6d76421fc529055a9a94c3259377c7c632621a673d9d130e574db86eb', '73891da7d616b8a318159abc9b5f095a3a8a491475fefa710e2e77aa33429e69adc731a5e1b90545', 0, '2019-04-19 20:33:42'),
('aee8e26fef0e809c46313d616daebdd74ee13dd532413843a8fbabe38d4d07740c564f5b6f3af386', 'f09211c92bfea1c6505b0f3e0b780e12b3cf7f714fdc10e0ee2a13ce40b0a06b07b06f5bfd2333c5', 0, '2019-04-22 17:07:29'),
('b78951774297fd2e7265791d316b5781b48550e5aaa10cbbac68bc416487a6b6ca4b0a15c00fec39', '1f91a90a8376ad488346eac28ea200e1325f4f5d35f972b317015bad16471203e421c2170391c27b', 0, '2019-05-01 17:42:15'),
('ba3ab797196fa44029e76395afa48c915d1e994ecddc845216aab56737ecfd803ff027e45f4f7dc5', '68c0367be2b91e99293df3f5abcd9359cf980fc410076519c25959df75b2cf01e5957fab09141e97', 0, '2019-04-22 16:57:00'),
('bd9da5b6ff470f6bbeebf0f4a04fec95a9e550820f15013a7f7e9ffb8cf01f17df4c8d265186d46f', '7e9d6b21aaa2414ef5ade199492278fdb695e8285905cb39b999fac94d4a8ede0375938f9ce7a7cd', 0, '2019-05-03 17:28:56'),
('c05ce29015bac28ea17b154b4eefc8b0306abe41eb345820601d235fcf009d72912061521e776c49', '5bfd73d07466f5d786676518b40b4b7bbe5c975f8bc5163d1b4a1a55b488f6a9af6110c9496ecf3a', 0, '2019-05-02 19:58:23'),
('c379346d9bd7c47b92b6e463070b0a82e590c4ecc01caad7a9d06eb86883bd13c805a949f084c8ab', 'd0ba0fc890bd8411e8f7c9c435cf5b27320837a409d04ceb555023d77dfb0eb60c39a38b9623c798', 0, '2019-04-19 20:37:25'),
('c4841ea8626f530063444ccb93d06bb3a697ddb2de99cdecc152af2693f3e0910ee44bfdcb1f23c3', 'd3fd37cfa197e07c4c624bbf4d7a8f27b6f96ea236413e906c252f340383466f6fd67c7672e50bf8', 0, '2019-04-19 20:21:14'),
('cdabf7dc9aeb7084c8692e376e94585a5fe73fb24a505ea76db5a5892c8d5cc0d23fb8d10f0d2464', 'a029f05e306655d89c38eb0e1a38bc880278d31c0e084337dd22b8916205022cd9e233dd7f234dcf', 0, '2019-04-22 16:52:34'),
('dbb36941406af24bc02a32aaa02f84bbf230515f428886e5f608870a47862431e69ef382982b5426', '93e3f981b961095d45b42cb5ef8d159b2da9f6272bdc07edc868ca9094b1210974e970c9227d83a0', 0, '2019-04-22 17:06:41'),
('e07ca3321163a30227b24466a2d36083bcba89d884ea6e751278f00a32f04555e97a6b1f0712572e', 'c08c9925908fb233d70f723f96c0668417a16b3da8818872cf1c9ff0f105af8eb77efeca6e1a0878', 0, '2019-04-29 09:57:40'),
('e62d7cf5e2fc4d53dddaca779f904a3c77934167fb3479202d1748fd39e6af20ac16a02fa2240e22', '785edf55cc3b757fbc5c40ac669599dd5c4ea4743f07bb82bdf26a746eed70f1a30f8a3c7017adb2', 0, '2019-09-01 13:39:54'),
('ec08156964befa4521a0dfc4ae33b713e3a95e2829b123ea0e1f212601b0d04a3feafecaa78f10f3', '1e3cf11c41f638a798335a5991853a619891bcff8f991925824cc0f66936b87bc10595c03e026e2c', 0, '2019-04-19 20:33:58'),
('ef6f2c68969c866dab73c8431c23c940349ceea517092ee169c2cddc17e1ee4075b3fa40df2b05cd', 'eaaa06e8d6dea83f3fb95b976b4f8887c735c22afcb9498891be09f5b642515e43043418862f3515', 0, '2019-04-22 16:53:29'),
('f684546d735fa62f4ee936f820fb013eda0414dda19e0e2a8388cfb4ec39a8211eccd10fab58123e', 'b8e09c3a6f613c51c609196a10cf26f510f01796913a24f724075ea4203cd76c31dafd855c59fe82', 0, '2019-05-01 17:27:35'),
('fcd32c95a61edb2c5aa731a1928084554cfdb6af2ccfbb13ed952777f8551e139b6c80ccc6212f8c', '1cc7a089c31653c5767eb945d0bcb7283309a45d7547ba18a6c3c9b16ad7af590a577daccf5103c9', 0, '2019-05-03 18:19:07'),
('fcdb98a9654f91f9d1bb9b01e35498b1b405fb2a79e2511620aec85963d68231546683dd67fbb5da', '1bc568feb523d27e4347f86c5f0c9b7bd7ec983d96295bfade5d5742fc1e3284081d555a30fb0744', 0, '2019-04-29 11:32:52'),
('fd877dd2a0869b0e3d30f0e539bb4736e9d3461d9155ca4bc1d95477d649f3ddbacb8923b3dc673f', '5538d7890d59d85ed5e933a12f47c13742b47f2f727d939c8a4daacbc3bd0c6d258a8b64d38f9b3c', 0, '2019-04-19 17:48:53'),
('fff08895ecb998a448006a11f02ba59c3828b0c4373ddb2ee0febf4a6e833b1c7d43ad1df20cefe7', '9e2cfbe23604a681a4abb2eef2364566aad7168848d025260dd2380ccfe9e2aef2b2e5fb441f354e', 0, '2019-05-06 13:19:04');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `detail`, `created_at`, `updated_at`) VALUES
(1, 'Product 1', 'Test description 1', '2018-05-06 10:16:39', '2018-05-06 10:16:39'),
(2, 'Product 2', 'Test description 2', '2018-05-06 10:16:49', '2018-05-06 10:16:49'),
(3, 'Product 3', 'Test description 3', '2018-05-06 10:16:57', '2018-05-06 10:16:57'),
(4, 'Product 4', 'Test description 4', '2018-05-06 10:17:06', '2018-05-06 10:17:06'),
(5, 'Product 5', 'Test description 5', '2018-05-06 10:17:15', '2018-05-06 10:17:15'),
(6, 'Product 6', 'Test description 6', '2018-05-06 10:17:24', '2018-05-06 10:17:24'),
(7, 'Product 7', 'Test description 7', '2018-05-06 10:17:32', '2018-05-06 10:17:32'),
(8, 'Product 8', 'Test description 8', '2018-05-06 10:17:40', '2018-05-06 10:17:40'),
(9, 'Product 9', 'Test description 9', '2018-05-06 10:17:47', '2018-05-06 10:17:47'),
(10, 'Product 10', 'Test description 10', '2018-05-06 10:17:56', '2018-05-06 10:17:56'),
(11, 'Product 11', 'Test description 11', '2018-05-06 10:18:03', '2018-05-06 10:18:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Maksim', 'maksim@gmail.com', '$2y$10$W3owUQ8VmvoPudYIsowGG.5i4sQ9kvS7qc1b22hpl26Ane8JhJuSK', NULL, '2018-04-19 14:16:29', '2018-04-29 08:44:44'),
(2, 'nathan', 'nathan@gmail.com', '$2y$10$IIAOLas08P5SZQ.nkMDpgutnchpeCrRV7f2XZ5pLNRDe1SluQkvii', NULL, '2018-05-01 14:41:37', '2018-05-01 14:41:37'),
(3, 'Alla', 'alla@gmail.com', '$2y$10$6Fq5XK/Et.EF/9/XAgo0guLL1AgFFuZGf1awtwT84fUBtorD2pLw6', NULL, '2018-05-01 14:42:15', '2018-05-01 14:42:15'),
(4, 'John', 'john@gmail.com', '$2y$10$2c9ph.Q0qZy5G4Yu9CKhleMyZSCYp7O41CK3CmQn8majMxm08CMkq', NULL, '2018-05-06 10:19:03', '2018-05-06 10:19:03'),
(5, 'Liudm', 'itinerary@mail.ru', '$2y$10$5Z/E0jmh3uDMYKBBJ/Z2ven5D81QyLW2kM9uASyrbpPVZU3eGggAm', NULL, '2018-05-07 01:04:43', '2018-05-07 01:04:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
