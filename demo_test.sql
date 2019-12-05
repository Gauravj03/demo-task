-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2019 at 08:25 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `abilities`
--

CREATE TABLE `abilities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `entity_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `only_owned` tinyint(1) NOT NULL DEFAULT '0',
  `options` text COLLATE utf8mb4_unicode_ci,
  `scope` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abilities`
--

INSERT INTO `abilities` (`id`, `name`, `title`, `entity_id`, `entity_type`, `only_owned`, `options`, `scope`, `created_at`, `updated_at`) VALUES
(1, '*', 'Manage customers', NULL, 'App\\Customers', 0, NULL, NULL, '2019-12-02 12:55:16', '2019-12-02 12:55:16'),
(2, '*', 'Manage products', NULL, 'App\\Products', 0, NULL, NULL, '2019-12-02 12:55:17', '2019-12-02 12:55:17'),
(3, '*', 'Manage orders', NULL, 'App\\Orders', 0, NULL, NULL, '2019-12-02 12:55:17', '2019-12-02 12:55:17'),
(4, '*', 'Manage order items', NULL, 'App\\OrderItems', 0, NULL, NULL, '2019-12-02 12:55:17', '2019-12-02 12:55:17'),
(5, 'customers', 'Customers customers', NULL, 'App\\Customers', 0, NULL, NULL, '2019-12-02 12:59:45', '2019-12-02 12:59:45'),
(6, 'products', 'Products products', NULL, 'App\\Products', 0, NULL, NULL, '2019-12-02 12:59:45', '2019-12-02 12:59:45'),
(7, 'orders', 'Orders orders', NULL, 'App\\Orders', 0, NULL, NULL, '2019-12-02 12:59:45', '2019-12-02 12:59:45'),
(8, 'order_items', 'Order items order items', NULL, 'App\\OrderItems', 0, NULL, NULL, '2019-12-02 12:59:45', '2019-12-02 12:59:45');

-- --------------------------------------------------------

--
-- Table structure for table `assigned_roles`
--

CREATE TABLE `assigned_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED NOT NULL,
  `entity_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restricted_to_id` int(10) UNSIGNED DEFAULT NULL,
  `restricted_to_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scope` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assigned_roles`
--

INSERT INTO `assigned_roles` (`id`, `role_id`, `entity_id`, `entity_type`, `restricted_to_id`, `restricted_to_type`, `scope`) VALUES
(1, 1, 1, 'App\\User', NULL, NULL, NULL),
(2, 2, 3, 'App\\User', NULL, NULL, NULL),
(3, 3, 4, 'App\\User', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Waylon Stamm', 'dawn18@senger.org', '2019-12-02 15:17:31', '2019-12-02 15:17:31'),
(2, 'Laney Wintheiser', 'charlotte95@yahoo.com', '2019-12-02 15:17:31', '2019-12-02 15:17:31'),
(3, 'Rhett Ward', 'yost.abbey@hotmail.com', '2019-12-02 15:17:31', '2019-12-02 15:17:31'),
(4, 'Duane Towne', 'shane.shanahan@gmail.com', '2019-12-02 15:17:31', '2019-12-02 15:17:31'),
(5, 'Henriette Simonis', 'wyman.roberts@stroman.net', '2019-12-02 15:17:31', '2019-12-02 15:17:31'),
(6, 'Ferne Hudson', 'cassandre85@gmail.com', '2019-12-02 15:17:31', '2019-12-02 15:17:31'),
(7, 'Maximillia Balistreri', 'ukshlerin@hotmail.com', '2019-12-02 15:17:31', '2019-12-02 15:17:31'),
(8, 'Arianna Gorczany', 'gottlieb.zora@hotmail.com', '2019-12-02 15:17:31', '2019-12-02 15:17:31'),
(9, 'Nathanael Turner', 'therese.kautzer@gmail.com', '2019-12-02 15:17:31', '2019-12-02 15:17:31'),
(10, 'Rosa Reilly', 'brussel@beer.com', '2019-12-02 15:17:31', '2019-12-02 15:17:31'),
(11, 'Santos Kessler', 'althea61@langworth.info', '2019-12-02 15:17:31', '2019-12-02 15:17:31'),
(12, 'Hattie Wilderman', 'dubuque.naomie@yahoo.com', '2019-12-02 15:17:32', '2019-12-02 15:17:32'),
(13, 'Domingo Murphy', 'bstark@lemke.net', '2019-12-02 15:17:32', '2019-12-02 15:17:32'),
(14, 'Milan Sanford', 'nat.muller@hotmail.com', '2019-12-02 15:17:32', '2019-12-02 15:17:32'),
(15, 'Enrique Lueilwitz', 'turcotte.oswald@gmail.com', '2019-12-02 15:17:32', '2019-12-02 15:17:32'),
(16, 'Jazmin O''Kon', 'nolan.boyer@klein.com', '2019-12-02 15:17:32', '2019-12-02 15:17:32'),
(17, 'Florian Waters', 'emie.botsford@yahoo.com', '2019-12-02 15:17:32', '2019-12-02 15:17:32'),
(18, 'Meredith Witting', 'bednar.holden@bogan.info', '2019-12-02 15:17:32', '2019-12-02 15:17:32'),
(19, 'Martin Will', 'daniella.hessel@ernser.com', '2019-12-02 15:17:32', '2019-12-02 15:17:32'),
(20, 'Noe Green', 'rgaylord@yahoo.com', '2019-12-02 15:17:32', '2019-12-02 15:17:32'),
(21, 'Katheryn Hermann', 'alvena33@hotmail.com', '2019-12-02 15:17:32', '2019-12-02 15:17:32'),
(22, 'Janiya Doyle', 'ursula.kuvalis@emard.net', '2019-12-02 15:17:32', '2019-12-02 15:17:32'),
(23, 'Amy Thompson', 'zdare@gmail.com', '2019-12-02 15:17:32', '2019-12-02 15:17:32'),
(24, 'Madelyn Beier', 'zackary.marquardt@hotmail.com', '2019-12-02 15:17:32', '2019-12-02 15:17:32'),
(25, 'Odie Bauch', 'hmuller@goodwin.com', '2019-12-02 15:17:32', '2019-12-02 15:17:32'),
(26, 'Shanon Dach', 'scummerata@schultz.com', '2019-12-02 15:17:32', '2019-12-02 15:17:32'),
(27, 'Americo Harvey', 'ritchie.constance@wilkinson.com', '2019-12-02 15:17:32', '2019-12-02 15:17:32'),
(28, 'Germaine Denesik', 'skuhn@koelpin.com', '2019-12-02 15:17:32', '2019-12-02 15:17:32'),
(29, 'Virgil Muller', 'lesch.pauline@kertzmann.com', '2019-12-02 15:17:32', '2019-12-02 15:17:32'),
(30, 'Adolphus Powlowski', 'ola70@yahoo.com', '2019-12-02 15:17:32', '2019-12-02 15:17:32'),
(31, 'Elinor Greenfelder', 'eichmann.jeremie@hudson.com', '2019-12-02 15:17:33', '2019-12-02 15:17:33'),
(32, 'Selmer Bednar', 'purdy.kendra@yahoo.com', '2019-12-02 15:17:33', '2019-12-02 15:17:33'),
(33, 'Juliana Waelchi', 'mylene09@yahoo.com', '2019-12-02 15:17:33', '2019-12-02 15:17:33'),
(34, 'Jammie Rempel', 'lschultz@gmail.com', '2019-12-02 15:17:33', '2019-12-02 15:17:33'),
(35, 'Precious Wilkinson', 'lynch.yvonne@weber.com', '2019-12-02 15:17:33', '2019-12-02 15:17:33'),
(36, 'Kameron Ebert', 'braxton08@hotmail.com', '2019-12-02 15:17:33', '2019-12-02 15:17:33'),
(37, 'Frances Mante', 'miller.berniece@hotmail.com', '2019-12-02 15:17:33', '2019-12-02 15:17:33'),
(38, 'Jalyn Stamm', 'nicole.okuneva@hotmail.com', '2019-12-02 15:17:33', '2019-12-02 15:17:33'),
(39, 'Zetta Rice', 'raynor.wilhelmine@doyle.com', '2019-12-02 15:17:33', '2019-12-02 15:17:33'),
(40, 'Drew Heidenreich', 'schuppe.gisselle@gerhold.org', '2019-12-02 15:17:33', '2019-12-02 15:17:33'),
(41, 'Millie Armstrong', 'zakary01@graham.info', '2019-12-02 15:17:33', '2019-12-02 15:17:33'),
(42, 'Ana Sanford', 'albertha98@hotmail.com', '2019-12-02 15:17:33', '2019-12-02 15:17:33'),
(43, 'Reggie Witting', 'roxane69@gmail.com', '2019-12-02 15:17:33', '2019-12-02 15:17:33'),
(44, 'Kaylin Lakin', 'adrien18@waters.com', '2019-12-02 15:17:33', '2019-12-02 15:17:33'),
(45, 'Bridgette Sporer', 'jayne77@hotmail.com', '2019-12-02 15:17:33', '2019-12-02 15:17:33'),
(46, 'Mariana Ullrich', 'paige.spinka@yahoo.com', '2019-12-02 15:17:33', '2019-12-02 15:17:33'),
(47, 'Herta Carter', 'lubowitz.shania@yahoo.com', '2019-12-02 15:17:33', '2019-12-02 15:17:33'),
(48, 'Vincenzo Franecki', 'jaclyn76@hotmail.com', '2019-12-02 15:17:33', '2019-12-02 15:17:33'),
(49, 'Kelton Mraz', 'dromaguera@wiegand.com', '2019-12-02 15:17:33', '2019-12-02 15:17:33'),
(50, 'Zechariah Abernathy', 'sid74@yahoo.com', '2019-12-02 15:17:34', '2019-12-02 15:17:34'),
(51, 'Gilda Brekke', 'franz75@smith.com', '2019-12-02 15:17:34', '2019-12-02 15:17:34'),
(52, 'Bo Becker', 'lschoen@nitzsche.com', '2019-12-02 15:17:34', '2019-12-02 15:17:34'),
(53, 'Edwardo Cartwright', 'considine.johanna@hotmail.com', '2019-12-02 15:17:34', '2019-12-02 15:17:34'),
(54, 'Sadye Mertz', 'nichole31@gmail.com', '2019-12-02 15:17:34', '2019-12-02 15:17:34'),
(55, 'Adriel Herzog', 'gabriella02@oreilly.org', '2019-12-02 15:17:34', '2019-12-02 15:17:34'),
(56, 'Alejandra Mayert', 'willms.geovany@aufderhar.com', '2019-12-02 15:17:34', '2019-12-02 15:17:34'),
(57, 'Trudie Wilkinson', 'jenkins.meagan@glover.com', '2019-12-02 15:17:34', '2019-12-02 15:17:34'),
(58, 'Theresa Weimann', 'schowalter.isabell@ritchie.com', '2019-12-02 15:17:34', '2019-12-02 15:17:34'),
(59, 'Chester Gusikowski', 'kris.kenyon@gmail.com', '2019-12-02 15:17:34', '2019-12-02 15:17:34'),
(60, 'Deangelo Cassin', 'melvina06@hotmail.com', '2019-12-02 15:17:34', '2019-12-02 15:17:34'),
(61, 'Lysanne Gulgowski', 'camryn.parker@beier.net', '2019-12-02 15:17:34', '2019-12-02 15:17:34'),
(62, 'Demario White', 'karelle01@lindgren.info', '2019-12-02 15:17:34', '2019-12-02 15:17:34'),
(63, 'Elfrieda Christiansen', 'schaden.einar@yahoo.com', '2019-12-02 15:17:34', '2019-12-02 15:17:34'),
(64, 'Milford Borer', 'bpfannerstill@zieme.com', '2019-12-02 15:17:34', '2019-12-02 15:17:34'),
(65, 'Kyle Leannon', 'sbotsford@metz.net', '2019-12-02 15:17:34', '2019-12-02 15:17:34'),
(66, 'Cathy Weimann', 'kirstin84@hotmail.com', '2019-12-02 15:17:34', '2019-12-02 15:17:34'),
(67, 'Mazie Kling', 'alene.herzog@gmail.com', '2019-12-02 15:17:34', '2019-12-02 15:17:34'),
(68, 'Simeon Thompson', 'ellen61@hotmail.com', '2019-12-02 15:17:34', '2019-12-02 15:17:34'),
(69, 'Hettie Friesen', 'estel31@gmail.com', '2019-12-02 15:17:34', '2019-12-02 15:17:34'),
(70, 'Abdul Barrows', 'steuber.mossie@hotmail.com', '2019-12-02 15:17:35', '2019-12-02 15:17:35'),
(71, 'Nova Nolan', 'terry.ramona@yahoo.com', '2019-12-02 15:17:35', '2019-12-02 15:17:35'),
(72, 'Alexa Bayer', 'ardith76@corkery.com', '2019-12-02 15:17:35', '2019-12-02 15:17:35'),
(73, 'Pearl Hilpert', 'max.powlowski@ullrich.com', '2019-12-02 15:17:35', '2019-12-02 15:17:35'),
(74, 'Don Howe', 'adrain.grady@swaniawski.org', '2019-12-02 15:17:35', '2019-12-02 15:17:35'),
(75, 'Alene Prosacco', 'jalyn04@yahoo.com', '2019-12-02 15:17:35', '2019-12-02 15:17:35'),
(76, 'Hermann Beier', 'anderson.ned@hotmail.com', '2019-12-02 15:17:35', '2019-12-02 15:17:35'),
(77, 'Darlene Daniel', 'miller.enrico@hotmail.com', '2019-12-02 15:17:35', '2019-12-02 15:17:35'),
(78, 'Dusty Hintz', 'griffin.smith@flatley.com', '2019-12-02 15:17:35', '2019-12-02 15:17:35'),
(79, 'Raymond Senger', 'lhill@hotmail.com', '2019-12-02 15:17:35', '2019-12-02 15:17:35'),
(80, 'Destiney Dooley', 'parisian.arely@yahoo.com', '2019-12-02 15:17:35', '2019-12-02 15:17:35'),
(81, 'Alayna Senger', 'ziemann.flo@bins.com', '2019-12-02 15:17:35', '2019-12-02 15:17:35'),
(82, 'Leland Murazik', 'lonzo52@hotmail.com', '2019-12-02 15:17:35', '2019-12-02 15:17:35'),
(83, 'Damien Lakin', 'rosemary18@gmail.com', '2019-12-02 15:17:35', '2019-12-02 15:17:35'),
(84, 'Burley Simonis', 'nhermiston@stamm.com', '2019-12-02 15:17:35', '2019-12-02 15:17:35'),
(85, 'Judson Doyle', 'diana.hoeger@padberg.net', '2019-12-02 15:17:35', '2019-12-02 15:17:35'),
(86, 'Conner Hickle', 'hauck.shayna@gmail.com', '2019-12-02 15:17:35', '2019-12-02 15:17:35'),
(87, 'Ethan Stoltenberg', 'yoshiko34@gmail.com', '2019-12-02 15:17:36', '2019-12-02 15:17:36'),
(88, 'Lavern Tromp', 'ibernier@dach.biz', '2019-12-02 15:17:36', '2019-12-02 15:17:36'),
(89, 'Karlee Runolfsdottir', 'freddie.fritsch@gmail.com', '2019-12-02 15:17:36', '2019-12-02 15:17:36'),
(90, 'Ova Moen', 'freddy83@gmail.com', '2019-12-02 15:17:36', '2019-12-02 15:17:36'),
(91, 'Maximilian Wolf', 'rosa39@gmail.com', '2019-12-02 15:17:36', '2019-12-02 15:17:36'),
(92, 'Isac Jacobs', 'ullrich.hattie@dach.com', '2019-12-02 15:17:36', '2019-12-02 15:17:36'),
(93, 'Bianka Schaefer', 'welch.vivien@gmail.com', '2019-12-02 15:17:36', '2019-12-02 15:17:36'),
(94, 'Angie McGlynn', 'johnny.kessler@herzog.info', '2019-12-02 15:17:36', '2019-12-02 15:17:36'),
(95, 'Daryl Vandervort', 'hegmann.elmo@yahoo.com', '2019-12-02 15:17:36', '2019-12-02 15:17:36'),
(96, 'Kayli Huels', 'ozella27@hermiston.com', '2019-12-02 15:17:36', '2019-12-02 15:17:36'),
(97, 'Nia Swift', 'kirlin.skyla@ward.com', '2019-12-02 15:17:36', '2019-12-02 15:17:36'),
(98, 'Emmalee Haley', 'lolita29@gmail.com', '2019-12-02 15:17:36', '2019-12-02 15:17:36'),
(99, 'Lesly Keeling', 'juana98@yahoo.com', '2019-12-02 15:17:36', '2019-12-02 15:17:36'),
(100, 'Samson Jacobi', 'hschiller@gmail.com', '2019-12-02 15:17:36', '2019-12-02 15:17:36'),
(101, 'Stone Davis', 'maci.leffler@hotmail.com', '2019-12-02 15:17:36', '2019-12-02 15:17:36'),
(102, 'Janessa Jakubowski', 'haskell.walsh@bartoletti.com', '2019-12-02 15:17:36', '2019-12-02 15:17:36'),
(103, 'Ryley Thompson', 'beahan.melisa@zemlak.info', '2019-12-02 15:17:36', '2019-12-02 15:17:36'),
(104, 'Timmy Stroman', 'walsh.iliana@towne.com', '2019-12-02 15:17:36', '2019-12-02 15:17:36'),
(105, 'Modesta Larson', 'halvorson.alexandro@hotmail.com', '2019-12-02 15:17:36', '2019-12-02 15:17:36'),
(106, 'Rosario Gutmann', 'cristobal39@towne.com', '2019-12-02 15:17:37', '2019-12-02 15:17:37'),
(107, 'Josefina Schamberger', 'kim.vandervort@reichel.biz', '2019-12-02 15:17:37', '2019-12-02 15:17:37'),
(108, 'Kennedi Aufderhar', 'zmurazik@yahoo.com', '2019-12-02 15:17:37', '2019-12-02 15:17:37'),
(109, 'Wilhelmine Pollich', 'sklocko@kohler.com', '2019-12-02 15:17:37', '2019-12-02 15:17:37'),
(110, 'Velva Hahn', 'qthiel@abshire.com', '2019-12-02 15:17:37', '2019-12-02 15:17:37'),
(111, 'Lesly Witting', 'xmraz@stehr.com', '2019-12-02 15:17:37', '2019-12-02 15:17:37'),
(112, 'Sid Casper', 'rita36@yahoo.com', '2019-12-02 15:17:37', '2019-12-02 15:17:37'),
(113, 'Dane Heller', 'ahintz@hotmail.com', '2019-12-02 15:17:37', '2019-12-02 15:17:37'),
(114, 'Noemy Morissette', 'simonis.darrin@yahoo.com', '2019-12-02 15:17:38', '2019-12-02 15:17:38'),
(115, 'Lydia Conn', 'harry50@gmail.com', '2019-12-02 15:17:38', '2019-12-02 15:17:38'),
(116, 'Terrance Frami', 'qrice@nader.com', '2019-12-02 15:17:38', '2019-12-02 15:17:38'),
(117, 'Bret Cremin', 'rosenbaum.nedra@hotmail.com', '2019-12-02 15:17:38', '2019-12-02 15:17:38'),
(118, 'Gregory Boyer', 'margaret13@kuhic.biz', '2019-12-02 15:17:38', '2019-12-02 15:17:38'),
(119, 'Elta Ward', 'ima57@mitchell.com', '2019-12-02 15:17:38', '2019-12-02 15:17:38'),
(120, 'Aurelie Hessel', 'schulist.malinda@yahoo.com', '2019-12-02 15:17:38', '2019-12-02 15:17:38'),
(121, 'Mollie Bradtke', 'lferry@weimann.com', '2019-12-02 15:17:38', '2019-12-02 15:17:38'),
(122, 'Estell Legros', 'grayson94@wyman.com', '2019-12-02 15:17:38', '2019-12-02 15:17:38'),
(123, 'Melany Terry', 'genevieve14@rath.com', '2019-12-02 15:17:38', '2019-12-02 15:17:38'),
(124, 'Pasquale Gerlach', 'hlabadie@robel.com', '2019-12-02 15:17:38', '2019-12-02 15:17:38'),
(125, 'Eldora Langosh', 'daron65@yahoo.com', '2019-12-02 15:17:38', '2019-12-02 15:17:38'),
(126, 'Alek Smith', 'ldickens@cartwright.net', '2019-12-02 15:17:38', '2019-12-02 15:17:38'),
(127, 'Burley Kutch', 'conn.avery@hammes.com', '2019-12-02 15:17:38', '2019-12-02 15:17:38'),
(128, 'Haleigh Hahn', 'rdavis@smitham.com', '2019-12-02 15:17:38', '2019-12-02 15:17:38'),
(129, 'Bertrand Mills', 'zkreiger@dietrich.com', '2019-12-02 15:17:38', '2019-12-02 15:17:38'),
(130, 'Jo O''Kon', 'egaylord@yahoo.com', '2019-12-02 15:17:38', '2019-12-02 15:17:38'),
(131, 'London Blanda', 'cruz21@graham.org', '2019-12-02 15:17:38', '2019-12-02 15:17:38'),
(132, 'Novella Schmeler', 'hagenes.marilou@hotmail.com', '2019-12-02 15:17:38', '2019-12-02 15:17:38'),
(133, 'Jaron Ritchie', 'nkautzer@gmail.com', '2019-12-02 15:17:39', '2019-12-02 15:17:39'),
(134, 'Milton Terry', 'ifarrell@mueller.org', '2019-12-02 15:17:39', '2019-12-02 15:17:39'),
(135, 'Colin Gibson', 'roberts.willard@yahoo.com', '2019-12-02 15:17:39', '2019-12-02 15:17:39'),
(136, 'Ericka Fadel', 'sipes.edwardo@ziemann.com', '2019-12-02 15:17:39', '2019-12-02 15:17:39'),
(137, 'Pearline Gorczany', 'reilly.maximilian@koss.com', '2019-12-02 15:17:39', '2019-12-02 15:17:39'),
(138, 'Una Franecki', 'yasmin26@runte.org', '2019-12-02 15:17:39', '2019-12-02 15:17:39'),
(139, 'Coleman Marquardt', 'friedrich42@yahoo.com', '2019-12-02 15:17:39', '2019-12-02 15:17:39'),
(140, 'Aida Cummings', 'sherzog@pagac.com', '2019-12-02 15:17:39', '2019-12-02 15:17:39'),
(141, 'Darrel Douglas', 'aletha.friesen@erdman.info', '2019-12-02 15:17:39', '2019-12-02 15:17:39'),
(142, 'Freddie Kirlin', 'tremblay.giuseppe@senger.com', '2019-12-02 15:17:39', '2019-12-02 15:17:39'),
(143, 'Bernice Zemlak', 'thettinger@hotmail.com', '2019-12-02 15:17:39', '2019-12-02 15:17:39'),
(144, 'Lavon Mitchell', 'josiane.heller@yahoo.com', '2019-12-02 15:17:39', '2019-12-02 15:17:39'),
(145, 'Einar Wilderman', 'hegmann.madisen@hotmail.com', '2019-12-02 15:17:39', '2019-12-02 15:17:39'),
(146, 'Samir Bahringer', 'xlynch@gmail.com', '2019-12-02 15:17:39', '2019-12-02 15:17:39'),
(147, 'Nicola Kulas', 'audra.rosenbaum@denesik.com', '2019-12-02 15:17:39', '2019-12-02 15:17:39'),
(148, 'Freddie Keebler', 'lambert32@hotmail.com', '2019-12-02 15:17:39', '2019-12-02 15:17:39'),
(149, 'Alexandro Glover', 'dayton69@stamm.com', '2019-12-02 15:17:39', '2019-12-02 15:17:39'),
(150, 'Nettie Swift', 'dustin.ratke@hotmail.com', '2019-12-02 15:17:39', '2019-12-02 15:17:39'),
(151, 'Aaron Mitchell', 'jerald.blanda@yahoo.com', '2019-12-02 15:17:39', '2019-12-02 15:17:39'),
(152, 'Vickie Kunde', 'blanda.laverna@rippin.com', '2019-12-02 15:17:39', '2019-12-02 15:17:39'),
(153, 'Cloyd Hauck', 'aschaefer@hotmail.com', '2019-12-02 15:17:39', '2019-12-02 15:17:39'),
(154, 'Rowan Pouros', 'frieda10@hartmann.com', '2019-12-02 15:17:39', '2019-12-02 15:17:39'),
(155, 'Ervin Predovic', 'kiehn.rudy@donnelly.org', '2019-12-02 15:17:39', '2019-12-02 15:17:39'),
(156, 'Meaghan Heller', 'tdavis@connelly.com', '2019-12-02 15:17:39', '2019-12-02 15:17:39'),
(157, 'Ursula Kulas', 'gottlieb.spencer@corkery.com', '2019-12-02 15:17:39', '2019-12-02 15:17:39'),
(158, 'Ismael Crist', 'woodrow24@hotmail.com', '2019-12-02 15:17:39', '2019-12-02 15:17:39'),
(159, 'Marcos O''Connell', 'vdooley@klocko.com', '2019-12-02 15:17:39', '2019-12-02 15:17:39'),
(160, 'Reuben Kiehn', 'emelie.bahringer@prohaska.com', '2019-12-02 15:17:39', '2019-12-02 15:17:39'),
(161, 'Bernie Lowe', 'waylon92@brown.org', '2019-12-02 15:17:39', '2019-12-02 15:17:39'),
(162, 'Gregoria Deckow', 'mauricio.walsh@yahoo.com', '2019-12-02 15:17:39', '2019-12-02 15:17:39'),
(163, 'Bernadette Kulas', 'quincy.kuphal@gmail.com', '2019-12-02 15:17:40', '2019-12-02 15:17:40'),
(164, 'Helene Price', 'cristian86@schowalter.com', '2019-12-02 15:17:40', '2019-12-02 15:17:40'),
(165, 'Lexus O''Reilly', 'ernser.domenico@gmail.com', '2019-12-02 15:17:40', '2019-12-02 15:17:40'),
(166, 'Demond Kessler', 'colton.emmerich@little.net', '2019-12-02 15:17:40', '2019-12-02 15:17:40'),
(167, 'Madilyn Pollich', 'rice.miguel@heathcote.com', '2019-12-02 15:17:40', '2019-12-02 15:17:40'),
(168, 'Sonya Carter', 'rippin.myron@gmail.com', '2019-12-02 15:17:40', '2019-12-02 15:17:40'),
(169, 'Odell Brown', 'nryan@yahoo.com', '2019-12-02 15:17:40', '2019-12-02 15:17:40'),
(170, 'Nash Bailey', 'casimer04@yahoo.com', '2019-12-02 15:17:40', '2019-12-02 15:17:40'),
(171, 'Simone Runolfsson', 'wkirlin@yahoo.com', '2019-12-02 15:17:40', '2019-12-02 15:17:40'),
(172, 'Adelle Kemmer', 'alycia18@dooley.net', '2019-12-02 15:17:40', '2019-12-02 15:17:40'),
(173, 'Estel Stiedemann', 'charley.schaden@block.info', '2019-12-02 15:17:40', '2019-12-02 15:17:40'),
(174, 'Vallie Hagenes', 'justice.waelchi@gmail.com', '2019-12-02 15:17:40', '2019-12-02 15:17:40'),
(175, 'Mia Wiza', 'hintz.lauryn@west.com', '2019-12-02 15:17:40', '2019-12-02 15:17:40'),
(176, 'Carrie Yost', 'angelo68@hotmail.com', '2019-12-02 15:17:40', '2019-12-02 15:17:40'),
(177, 'Yoshiko Schaden', 'osatterfield@hotmail.com', '2019-12-02 15:17:40', '2019-12-02 15:17:40'),
(178, 'Valentin Brekke', 'reinger.austyn@durgan.com', '2019-12-02 15:17:40', '2019-12-02 15:17:40'),
(179, 'Karson Ankunding', 'elisha.carroll@yahoo.com', '2019-12-02 15:17:40', '2019-12-02 15:17:40'),
(180, 'Mayra Kuhic', 'cecile.dickinson@hotmail.com', '2019-12-02 15:17:40', '2019-12-02 15:17:40'),
(181, 'Jeanne Mosciski', 'trenton52@gmail.com', '2019-12-02 15:17:40', '2019-12-02 15:17:40'),
(182, 'Tyrel Schimmel', 'mschinner@yahoo.com', '2019-12-02 15:17:40', '2019-12-02 15:17:40'),
(183, 'Melody Cormier', 'ryan.senger@reichel.org', '2019-12-02 15:17:40', '2019-12-02 15:17:40'),
(184, 'Dewayne Osinski', 'schimmel.kiera@hotmail.com', '2019-12-02 15:17:41', '2019-12-02 15:17:41'),
(185, 'Lucius Von', 'wschuster@murphy.com', '2019-12-02 15:17:41', '2019-12-02 15:17:41'),
(186, 'Lee Nitzsche', 'feest.percival@hotmail.com', '2019-12-02 15:17:41', '2019-12-02 15:17:41'),
(187, 'Kailee Rippin', 'aufderhar.juvenal@mertz.com', '2019-12-02 15:17:41', '2019-12-02 15:17:41'),
(188, 'Ryleigh Anderson', 'misael72@hotmail.com', '2019-12-02 15:17:41', '2019-12-02 15:17:41'),
(189, 'Madie Klocko', 'fernando74@hotmail.com', '2019-12-02 15:17:41', '2019-12-02 15:17:41'),
(190, 'Kylie Dickens', 'zola49@rolfson.com', '2019-12-02 15:17:41', '2019-12-02 15:17:41'),
(191, 'Jamar Jacobi', 'darlene11@hotmail.com', '2019-12-02 15:17:41', '2019-12-02 15:17:41'),
(192, 'Kyleigh Bode', 'von.elvie@gmail.com', '2019-12-02 15:17:41', '2019-12-02 15:17:41'),
(193, 'Americo Botsford', 'katrine79@hotmail.com', '2019-12-02 15:17:41', '2019-12-02 15:17:41'),
(194, 'Coy Schinner', 'dooley.scottie@parker.info', '2019-12-02 15:17:41', '2019-12-02 15:17:41'),
(195, 'Freida Erdman', 'xwilliamson@schimmel.com', '2019-12-02 15:17:41', '2019-12-02 15:17:41'),
(196, 'Thurman Ankunding', 'gframi@hotmail.com', '2019-12-02 15:17:41', '2019-12-02 15:17:41'),
(197, 'Morton Kunze', 'tanya73@ebert.com', '2019-12-02 15:17:41', '2019-12-02 15:17:41'),
(198, 'Lauryn Swift', 'kstark@cummerata.biz', '2019-12-02 15:17:41', '2019-12-02 15:17:41'),
(199, 'Elissa Kuvalis', 'casimer50@batz.biz', '2019-12-02 15:17:41', '2019-12-02 15:17:41'),
(200, 'Felton Grant', 'elyse.hagenes@effertz.com', '2019-12-02 15:17:41', '2019-12-02 15:17:41');

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
(3, '2019_12_01_155950_create_bouncer_tables', 2),
(4, '2019_12_02_173219_create_customers_table', 3),
(5, '2019_12_02_173320_create_orders_table', 3),
(6, '2019_12_02_173355_create_products_table', 3),
(7, '2019_12_02_173432_create_order_items_table', 4),
(8, '2019_12_02_205039_add_customer_id_to_orders_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_amount` decimal(8,2) NOT NULL,
  `status` enum('new','processed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `customer_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `ability_id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `entity_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forbidden` tinyint(1) NOT NULL DEFAULT '0',
  `scope` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `ability_id`, `entity_id`, `entity_type`, `forbidden`, `scope`) VALUES
(1, 1, 1, 'roles', 0, NULL),
(2, 2, 1, 'roles', 0, NULL),
(3, 3, 1, 'roles', 0, NULL),
(4, 4, 1, 'roles', 0, NULL),
(5, 5, 2, 'roles', 0, NULL),
(6, 6, 2, 'roles', 0, NULL),
(7, 7, 2, 'roles', 0, NULL),
(8, 8, 2, 'roles', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `stock` enum('in','out') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'in',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `price`, `stock`, `created_at`, `updated_at`) VALUES
(1, 'product-Dudley', '1387.21', 'in', '2019-12-05 01:29:02', '2019-12-05 01:29:02'),
(2, 'product-Amalia', '3694.11', 'in', '2019-12-05 01:29:02', '2019-12-05 01:29:02'),
(3, 'product-Hubert', '8593.83', 'out', '2019-12-05 01:29:21', '2019-12-05 01:29:21'),
(4, 'product-Natalie', '7438.06', 'out', '2019-12-05 01:29:21', '2019-12-05 01:29:21'),
(5, 'product-Erin', '6143.18', 'in', '2019-12-05 01:29:22', '2019-12-05 01:29:22'),
(6, 'product-Luis', '5619.56', 'out', '2019-12-05 01:29:22', '2019-12-05 01:29:22'),
(7, 'product-Dexter', '8119.25', 'in', '2019-12-05 01:29:22', '2019-12-05 01:29:22'),
(8, 'product-Jalon', '1704.33', 'out', '2019-12-05 01:29:22', '2019-12-05 01:29:22'),
(9, 'product-Nicolette', '1551.65', 'in', '2019-12-05 01:29:22', '2019-12-05 01:29:22'),
(10, 'product-Karelle', '8725.96', 'out', '2019-12-05 01:29:22', '2019-12-05 01:29:22'),
(11, 'product-Kendall', '4715.94', 'out', '2019-12-05 01:29:22', '2019-12-05 01:29:22'),
(12, 'product-Abel', '9606.98', 'out', '2019-12-05 01:29:22', '2019-12-05 01:29:22'),
(13, 'product-Camille', '4796.40', 'out', '2019-12-05 01:29:22', '2019-12-05 01:29:22'),
(14, 'product-Bud', '7461.74', 'out', '2019-12-05 01:29:22', '2019-12-05 01:29:22'),
(15, 'product-Darrick', '9233.18', 'out', '2019-12-05 01:29:22', '2019-12-05 01:29:22'),
(16, 'product-Percy', '6955.46', 'in', '2019-12-05 01:29:22', '2019-12-05 01:29:22'),
(17, 'product-Chanelle', '2557.53', 'out', '2019-12-05 01:29:22', '2019-12-05 01:29:22'),
(18, 'product-Dexter', '9376.22', 'out', '2019-12-05 01:29:22', '2019-12-05 01:29:22'),
(19, 'product-Lavada', '611.88', 'out', '2019-12-05 01:29:22', '2019-12-05 01:29:22'),
(20, 'product-Billie', '9850.44', 'in', '2019-12-05 01:29:22', '2019-12-05 01:29:22'),
(21, 'product-Abigail', '4335.54', 'out', '2019-12-05 01:29:22', '2019-12-05 01:29:22'),
(22, 'product-Florine', '410.51', 'in', '2019-12-05 01:29:22', '2019-12-05 01:29:22'),
(23, 'product-Sid', '4404.95', 'out', '2019-12-05 01:29:22', '2019-12-05 01:29:22'),
(24, 'product-Lora', '883.94', 'out', '2019-12-05 01:29:22', '2019-12-05 01:29:22'),
(25, 'product-Dalton', '2140.14', 'out', '2019-12-05 01:29:22', '2019-12-05 01:29:22'),
(26, 'product-Okey', '7469.23', 'out', '2019-12-05 01:29:22', '2019-12-05 01:29:22'),
(27, 'product-Madyson', '1821.60', 'out', '2019-12-05 01:29:22', '2019-12-05 01:29:22'),
(28, 'product-Marlen', '34.88', 'in', '2019-12-05 01:29:22', '2019-12-05 01:29:22'),
(29, 'product-Stella', '9420.13', 'in', '2019-12-05 01:29:22', '2019-12-05 01:29:22'),
(30, 'product-Collin', '4594.29', 'out', '2019-12-05 01:29:22', '2019-12-05 01:29:22'),
(31, 'product-Shawn', '9335.89', 'out', '2019-12-05 01:29:22', '2019-12-05 01:29:22'),
(32, 'product-Elwin', '980.24', 'out', '2019-12-05 01:29:22', '2019-12-05 01:29:22'),
(33, 'product-Waino', '5147.61', 'out', '2019-12-05 01:29:22', '2019-12-05 01:29:22'),
(34, 'product-Shany', '8186.93', 'in', '2019-12-05 01:29:22', '2019-12-05 01:29:22'),
(35, 'product-Bill', '3104.08', 'out', '2019-12-05 01:29:22', '2019-12-05 01:29:22'),
(36, 'product-Norberto', '9975.15', 'out', '2019-12-05 01:29:22', '2019-12-05 01:29:22'),
(37, 'product-Shyanne', '6074.67', 'out', '2019-12-05 01:29:22', '2019-12-05 01:29:22'),
(38, 'product-Rebeca', '5372.75', 'in', '2019-12-05 01:29:22', '2019-12-05 01:29:22'),
(39, 'product-Sylvia', '8895.85', 'out', '2019-12-05 01:29:22', '2019-12-05 01:29:22'),
(40, 'product-Narciso', '5833.84', 'in', '2019-12-05 01:29:23', '2019-12-05 01:29:23'),
(41, 'product-Madonna', '1097.03', 'out', '2019-12-05 01:29:23', '2019-12-05 01:29:23'),
(42, 'product-Vincent', '4679.57', 'out', '2019-12-05 01:29:23', '2019-12-05 01:29:23'),
(43, 'product-Adrianna', '6028.46', 'in', '2019-12-05 01:29:23', '2019-12-05 01:29:23'),
(44, 'product-Delores', '6351.53', 'out', '2019-12-05 01:29:23', '2019-12-05 01:29:23'),
(45, 'product-Molly', '1000.27', 'out', '2019-12-05 01:29:23', '2019-12-05 01:29:23'),
(46, 'product-Chase', '9676.95', 'out', '2019-12-05 01:29:23', '2019-12-05 01:29:23'),
(47, 'product-Elroy', '1423.79', 'out', '2019-12-05 01:29:23', '2019-12-05 01:29:23'),
(48, 'product-Ressie', '8702.45', 'out', '2019-12-05 01:29:23', '2019-12-05 01:29:23'),
(49, 'product-Kenyon', '6258.15', 'in', '2019-12-05 01:29:23', '2019-12-05 01:29:23'),
(50, 'product-Austen', '8151.63', 'in', '2019-12-05 01:29:23', '2019-12-05 01:29:23'),
(51, 'product-Deron', '9599.22', 'in', '2019-12-05 01:29:23', '2019-12-05 01:29:23'),
(52, 'product-Nya', '7076.59', 'out', '2019-12-05 01:29:23', '2019-12-05 01:29:23'),
(53, 'product-Ezekiel', '905.88', 'out', '2019-12-05 01:29:23', '2019-12-05 01:29:23'),
(54, 'product-George', '8996.63', 'out', '2019-12-05 01:29:23', '2019-12-05 01:29:23'),
(55, 'product-Marshall', '2288.48', 'out', '2019-12-05 01:29:23', '2019-12-05 01:29:23'),
(56, 'product-Estevan', '6854.88', 'out', '2019-12-05 01:29:23', '2019-12-05 01:29:23'),
(57, 'product-Carolina', '6679.93', 'out', '2019-12-05 01:29:23', '2019-12-05 01:29:23'),
(58, 'product-Gerda', '8123.54', 'out', '2019-12-05 01:29:23', '2019-12-05 01:29:23'),
(59, 'product-Golden', '773.28', 'out', '2019-12-05 01:29:23', '2019-12-05 01:29:23'),
(60, 'product-Magdalena', '8227.46', 'out', '2019-12-05 01:29:23', '2019-12-05 01:29:23'),
(61, 'product-Alta', '5485.83', 'in', '2019-12-05 01:29:23', '2019-12-05 01:29:23'),
(62, 'product-Lizeth', '2707.91', 'out', '2019-12-05 01:29:23', '2019-12-05 01:29:23'),
(63, 'product-Vada', '6900.78', 'out', '2019-12-05 01:29:23', '2019-12-05 01:29:23'),
(64, 'product-Priscilla', '4450.44', 'in', '2019-12-05 01:29:23', '2019-12-05 01:29:23'),
(65, 'product-Pearlie', '6974.97', 'in', '2019-12-05 01:29:24', '2019-12-05 01:29:24'),
(66, 'product-Veda', '5264.21', 'out', '2019-12-05 01:29:24', '2019-12-05 01:29:24'),
(67, 'product-Amiya', '9937.71', 'in', '2019-12-05 01:29:24', '2019-12-05 01:29:24'),
(68, 'product-Deron', '4067.79', 'out', '2019-12-05 01:29:24', '2019-12-05 01:29:24'),
(69, 'product-Brianne', '2224.81', 'out', '2019-12-05 01:29:24', '2019-12-05 01:29:24'),
(70, 'product-Violet', '6972.48', 'out', '2019-12-05 01:29:24', '2019-12-05 01:29:24'),
(71, 'product-Brayan', '4504.67', 'out', '2019-12-05 01:29:24', '2019-12-05 01:29:24'),
(72, 'product-Ricky', '385.48', 'out', '2019-12-05 01:29:24', '2019-12-05 01:29:24'),
(73, 'product-Colby', '709.40', 'out', '2019-12-05 01:29:24', '2019-12-05 01:29:24'),
(74, 'product-Cecil', '1641.86', 'in', '2019-12-05 01:29:24', '2019-12-05 01:29:24'),
(75, 'product-Nicholas', '1963.17', 'out', '2019-12-05 01:29:24', '2019-12-05 01:29:24'),
(76, 'product-Oleta', '6437.97', 'in', '2019-12-05 01:29:24', '2019-12-05 01:29:24'),
(77, 'product-Lelah', '4069.22', 'in', '2019-12-05 01:29:24', '2019-12-05 01:29:24'),
(78, 'product-Jovany', '7656.45', 'out', '2019-12-05 01:29:24', '2019-12-05 01:29:24'),
(79, 'product-Roslyn', '5642.41', 'out', '2019-12-05 01:29:24', '2019-12-05 01:29:24'),
(80, 'product-Ebony', '8586.85', 'out', '2019-12-05 01:29:24', '2019-12-05 01:29:24'),
(81, 'product-Haleigh', '1232.69', 'in', '2019-12-05 01:29:24', '2019-12-05 01:29:24'),
(82, 'product-Brandi', '9986.74', 'in', '2019-12-05 01:29:24', '2019-12-05 01:29:24'),
(83, 'product-Bernadette', '6397.18', 'in', '2019-12-05 01:29:24', '2019-12-05 01:29:24'),
(84, 'product-Collin', '6568.15', 'in', '2019-12-05 01:29:24', '2019-12-05 01:29:24'),
(85, 'product-Russ', '5461.75', 'out', '2019-12-05 01:29:24', '2019-12-05 01:29:24'),
(86, 'product-Dayana', '2313.13', 'out', '2019-12-05 01:29:24', '2019-12-05 01:29:24'),
(87, 'product-Doug', '1204.63', 'out', '2019-12-05 01:29:24', '2019-12-05 01:29:24'),
(88, 'product-Sherman', '8830.90', 'out', '2019-12-05 01:29:24', '2019-12-05 01:29:24'),
(89, 'product-London', '1648.45', 'out', '2019-12-05 01:29:24', '2019-12-05 01:29:24'),
(90, 'product-Lonny', '768.49', 'in', '2019-12-05 01:29:24', '2019-12-05 01:29:24'),
(91, 'product-Jailyn', '9664.79', 'out', '2019-12-05 01:29:24', '2019-12-05 01:29:24'),
(92, 'product-Khalil', '2892.37', 'in', '2019-12-05 01:29:24', '2019-12-05 01:29:24'),
(93, 'product-Alia', '3339.14', 'in', '2019-12-05 01:29:24', '2019-12-05 01:29:24'),
(94, 'product-Wendell', '2513.46', 'out', '2019-12-05 01:29:24', '2019-12-05 01:29:24'),
(95, 'product-Rex', '8076.33', 'out', '2019-12-05 01:29:24', '2019-12-05 01:29:24'),
(96, 'product-Damien', '2072.56', 'out', '2019-12-05 01:29:25', '2019-12-05 01:29:25'),
(97, 'product-Edd', '6384.46', 'in', '2019-12-05 01:29:25', '2019-12-05 01:29:25'),
(98, 'product-Alexandrea', '7815.26', 'out', '2019-12-05 01:29:25', '2019-12-05 01:29:25'),
(99, 'product-Cleve', '2502.57', 'out', '2019-12-05 01:29:25', '2019-12-05 01:29:25'),
(100, 'product-Destiney', '3847.75', 'out', '2019-12-05 01:29:25', '2019-12-05 01:29:25'),
(101, 'product-Trisha', '6294.54', 'in', '2019-12-05 01:29:25', '2019-12-05 01:29:25'),
(102, 'product-Charles', '4003.71', 'in', '2019-12-05 01:29:25', '2019-12-05 01:29:25');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` int(10) UNSIGNED DEFAULT NULL,
  `scope` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `title`, `level`, `scope`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', NULL, NULL, '2019-12-02 12:55:17', '2019-12-02 12:55:17'),
(2, 'user_manager', 'User manager', NULL, NULL, '2019-12-02 12:59:45', '2019-12-02 12:59:45'),
(3, 'shop_manager', 'Shop manager', NULL, NULL, '2019-12-02 12:59:46', '2019-12-02 12:59:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@mailinator.com', '$2y$10$ZM9NOR98iaJEt1nM./loaOnlLzZiSIom3A66I/d3KtTXSxt8y21UG', 'JV6kPfTK2MrYzYvVYQ2fS8CRS7PPOGaW7qbEZJgfe0wmMf03HK9gHovqLcdC', '2019-12-02 12:55:18', '2019-12-02 12:55:18'),
(3, 'User Manager', 'usermanager@mailinator.com', '$2y$10$ZB5QPiRiHXZU9dMACVeV.eMImZO3tEojlF1Ght/Fxbz.w7aXA0OQm', '65xapt4p4g', '2019-12-02 12:59:45', '2019-12-02 12:59:45'),
(4, 'Shop Manger', 'shopmanager@mailinator.com', '$2y$10$c3rdtwznQvGF9hf79QuqoOGFEqIsvhvAVEHXonUjANt4O6E/c/ONK', 'QN3FI2o7Iv', '2019-12-02 12:59:46', '2019-12-02 12:59:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abilities`
--
ALTER TABLE `abilities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `abilities_scope_index` (`scope`);

--
-- Indexes for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assigned_roles_entity_index` (`entity_id`,`entity_type`,`scope`),
  ADD KEY `assigned_roles_role_id_index` (`role_id`),
  ADD KEY `assigned_roles_scope_index` (`scope`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_entity_index` (`entity_id`,`entity_type`,`scope`),
  ADD KEY `permissions_ability_id_index` (`ability_id`),
  ADD KEY `permissions_scope_index` (`scope`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`,`scope`),
  ADD KEY `roles_scope_index` (`scope`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abilities`
--
ALTER TABLE `abilities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
  ADD CONSTRAINT `assigned_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_ability_id_foreign` FOREIGN KEY (`ability_id`) REFERENCES `abilities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
