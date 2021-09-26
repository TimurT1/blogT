-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 23, 2021 at 04:29 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogt`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenu` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_creation` datetime NOT NULL,
  `auteur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categorie_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `titre`, `contenu`, `image`, `date_creation`, `auteur`, `categorie_id`) VALUES
(1, 'Mig-21', 'Le Mikoyan-Gourevitch MiG-21 (en russe : Микояна и Гуревича МиГ-21) est un avion de combat soviétique, également connu sous le code OTAN Fishbed. C\'est l\'avion de combat supersonique le plus produit de tous les temps, avec presque 14 000 exemplaires1,2. Entré en service en 1960, il restait le 5e avion de combat le plus utilisé dans le monde en 2012 avec, selon une estimation, 793 appareils en activité, soit 5 % de la flotte mondiale d\'avions de combat3. Très performant et agile, le MiG-21 est cependant peu pourvu en aides électroniques au combat et à la navigation, ce qui en fait un « avion de pilote », dont les résultats au combat dépendent grandement des compétences de celui-ci. Malgré ses faiblesses, il est très populaire, car son coût relativement bas a permis à de nombreuses forces aériennes de disposer de leur premier chasseur supersonique.', 'https://www.super-hobby.fr/zdjecia/9/4/8/280_rd.jpg', '2021-09-22 09:46:47', 'U', 1),
(2, 'Mig-21', 'Le Mikoyan-Gourevitch MiG-21 (en russe : Микояна и Гуревича МиГ-21) est un avion de combat soviétique, également connu sous le code OTAN Fishbed. C\'est l\'avion de combat supersonique le plus produit de tous les temps, avec presque 14 000 exemplaires1,2. Entré en service en 1960, il restait le 5e avion de combat le plus utilisé dans le monde en 2012 avec, selon une estimation, 793 appareils en activité, soit 5 % de la flotte mondiale d\'avions de combat3.\r\n\r\nTrès performant et agile, le MiG-21 est cependant peu pourvu en aides électroniques au combat et à la navigation, ce qui en fait un « avion de pilote », dont les résultats au combat dépendent grandement des compétences de celui-ci. Malgré ses faiblesses, il est très populaire, car son coût relativement bas a permis à de nombreuses forces aériennes de disposer de leur premier chasseur supersonique.', 'https://www.super-hobby.fr/zdjecia/9/4/8/280_rd.jpg', '2021-09-21 00:00:00', 'U', 1),
(5, 'Mig29', 'Le Mikoyan-Gourevitch MiG-29 (Code OTAN Fulcrum) est un avion de chasse de suprématie aérienne soviétique développé au début des années 1970, et dont le premier vol eut lieu le 6 octobre 1977. Il est entré en service dans l\'armée soviétique en 1983, mais n\'est plus commandé aujourd\'hui par l\'armée de l\'air russe (il devrait être théoriquement remplacé à partir de fin 2018 par une version modernisée, le MiG-35 Fulcrum-E). Il est toutefois encore utilisé et commandé par de nombreux autres pays. Plus de 1 100 exemplaires ont jusqu\'à présent été construits. Il est le 5e avion de combat le plus utilisé dans le monde en 2020 avec, selon une estimation, 817 appareils en activité, soit 6 % de la flotte mondiale d\'avions de combat.\r\nEn 1970, à la fin de la Guerre du Vietnam, l\'US Air Force lance les programmes F-15 et F-16, alors que dans le même temps, les avions soviétiques MiG-21, Soukhoï Su-15 et Soukhoï Su-17 sont en fin de service. L\'URSS décide donc de lancer le programme du Su-27 pour contrer le F-15 et le F-14. Cependant, le prix de cet appareil étant trop élevé pour qu\'il puisse servir en grand nombre, le programme du MiG-29 est alors lancé pour équiper l\'armée de l\'air soviétique (VVS) avec un chasseur léger de supériorité aérienne de la nouvelle génération, mais plus rustique, conçu par Ivan Mikoyan (en)2,3. Le premier prototype, désigné 9.01, effectue son premier vol le 6 octobre 1977. Il est suivi d\'une vingtaine d\'appareils de présérie avant que ne débute son assemblage. Les premiers appareils quittent les chaînes de montage en 1982.\r\n\r\nLes États-Unis apprirent l\'existence de cet appareil grâce à l\'un de leurs satellites espions qui passait au-dessus du centre d\'essais soviétique Ramenskoye (dans les faubourgs de Moscou) ; ils donnèrent au MiG-29 la dénomination « RAM-L », qui deviendra par la suite « Fulcrum ». Ce n\'est qu\'en juillet 1986 que l\'Occident a pu apercevoir de plus près cet appareil, au cours d\'une visite faite par une escadrille de MiG-29 soviétiques en Finlande. C\'est à ce moment que l\'USAF connut véritablement le MiG-29 et put le différencier des autres modèles de Mikoyan-Gourevitch ou de Soukhoï. Il était considéré comme si dangereux par les États-Unis que ceux-ci achetèrent en 1997 21 MiG-29 qui devaient être vendus à l\'Iran par la Moldavie, car ils pensaient qu\'ils pouvaient embarquer une bombe nucléaire.', 'https://www.avionslegendaires.net/wp-content/uploads/2016/12/MiG-29.Russie_KeyPublishing.jpg', '2021-09-22 09:26:16', 'Wiki', 1),
(19, 'SU-27', 'Le Soukhoï Su-27 (Code OTAN Flanker) est un avion de chasse monoplace russe conçu par le bureau d\'études Soukhoï (SDB) conduit par l\'ingénieur Mikhaïl Simonov et son dirigeant historique Pavel Soukhoï. Il a donné naissance à de nombreuses variantes dont certaines ont reçu une nouvelle désignation : Su-30, Su-33, Su-35, Su-37.\r\n\r\nEn 2009, l\'avion est en service dans les pays de l\'ex-URSS et dans plusieurs autres pays, notamment en Afrique et en Asie (en particulier la République populaire de Chine sous la dénomination Shenyang J-11 et l\'Inde). Le prix à l\'exportation est d\'environ 35 millions de dollars américains par avion, ou 70 millions de dollars avec un crédit de dix ans.', 'https://su27flankerfamily.files.wordpress.com/2015/11/su-27-117.jpg', '2021-09-23 13:19:48', 'T', 1),
(20, 'Mirage 2000', 'Le Mirage 2000 est un avion de chasse conçu par la société française Dassault Aviation, à la fin des années 1970. Bien que la formule à aile delta fasse penser au Mirage III des années 1960 et que le Mirage 2000 soit de taille comparable, il s\'agit en fait d\'un avion entièrement nouveau, avec une surface alaire plus importante, naturellement instable pour améliorer sa manœuvrabilité et équipé de commandes de vol électriques. Mis en service en 1984, le Mirage 2000 est principalement utilisé par l\'Armée de l\'air française qui en a reçu 315 exemplaires, tandis que 286 autres ont été exportés vers huit pays différents.', 'https://www.avionslegendaires.net/wp-content/uploads/2017/05/Dassault-Mirage-2000C_AdlA.jpg', '2021-09-23 13:22:09', 'T', 1),
(21, 'F-15 Eagle', 'Le McDonnell Douglas F-15 Eagle est un avion de chasse tout temps dit de supériorité aérienneNote 1, conçu par l\'avionneur américain McDonnell Douglas dans les années 1970. Produit à plus de mille exemplaires, il est utilisé principalement par l\'armée de l\'air américaine (USAF), mais il a également été exporté vers quelques pays, dont Israël et le Japon, ce dernier l\'ayant même construit sous licence. Une version spécialisée dans l\'attaque au sol a également été mise au point, le F-15E Strike Eagle.', 'http://psk.blog.24heures.ch/media/01/01/3538291624.png', '2021-09-23 13:24:14', 'T', 1),
(22, 'F-14 Tomcat', 'Le Grumman F-14 Tomcat est un avion de chasse embarqué, dont la particularité était de posséder des ailes à géométrie variable. Destiné à protéger la flotte d\'attaques aériennes, il fut le premier chasseur conçu aux États-Unis à intégrer les leçons de la guerre du Viêt Nam. Il est devenu mondialement célèbre en 1986, grâce au film Top Gun, avec Tom Cruise.\r\n\r\nEntré en service en 1974, il a été retiré du service de l\'US Navy en 2006.', 'https://www.naval-technology.com/wp-content/uploads/sites/5/2017/09/tomcat4.jpg', '2021-09-23 13:43:01', 'W', 1),
(23, 'Tu-160', 'Le Tu-160 (en russe Белый Лебедь, soit « cygne blanc », code OTAN Blackjack) est un bombardier lourd supersonique soviétique construit par le bureau d\'étude Tupolev pendant la guerre froide pour l\'arsenal nucléaire soviétique dont la Russie a hérité. Ses ailes sont à géométrie variable ; sa masse maximale au décollage en fait le plus gros avion supersonique au monde et le plus lourd avion de combat au monde.', 'https://upload.wikimedia.org/wikipedia/commons/b/b4/Air-to-air_with_a_Tupolev_Tu-160.jpg', '2021-09-23 13:46:10', 'W', 2),
(24, 'Boeing B-52H Stratofortress', 'Le Boeing B-52 Stratofortress est un bombardier stratégique américain à réaction subsonique à longue portée . Le B-52 a été conçu et construit par Boeing , qui a continué à fournir un soutien et des mises à niveau. Il est exploité par l\' US Air Force (USAF) depuis les années 1950. Le bombardier est capable de transporter jusqu\'à 70 000 livres (32 000 kg) d\'armes, [2] et a une portée de combat typique de plus de 8 800 miles (14 080 km) sans ravitaillement en vol.', 'https://upload.wikimedia.org//wikipedia/commons/thumb/1/16/B-52_Stratofortress_assigned_to_the_307th_Bomb_Wing_(cropped).jpg/1280px-B-52_Stratofortress_assigned_to_the_307th_Bomb_Wing_(cropped).jpg', '2021-09-23 13:49:51', 'W', 2);

-- --------------------------------------------------------

--
-- Table structure for table `article_mot_cles`
--

CREATE TABLE `article_mot_cles` (
  `article_id` int(11) NOT NULL,
  `mot_cles_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `article_mot_cles`
--

INSERT INTO `article_mot_cles` (`article_id`, `mot_cles_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(5, 1),
(19, 3),
(20, 7),
(21, 5),
(22, 5),
(23, 4),
(24, 6);

-- --------------------------------------------------------

--
-- Table structure for table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `nom_categorie` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_categorie` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categorie`
--

INSERT INTO `categorie` (`id`, `nom_categorie`, `description_categorie`) VALUES
(1, 'Avion de chasse', NULL),
(2, 'Bombardier', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20210921153038', '2021-09-21 15:31:33', 63),
('DoctrineMigrations\\Version20210921153723', '2021-09-21 15:37:30', 83),
('DoctrineMigrations\\Version20210922113946', '2021-09-22 11:39:57', 202),
('DoctrineMigrations\\Version20210922115407', '2021-09-22 11:56:44', 132);

-- --------------------------------------------------------

--
-- Table structure for table `mot_cles`
--

CREATE TABLE `mot_cles` (
  `id` int(11) NOT NULL,
  `nom_mot_cles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mot_cles`
--

INSERT INTO `mot_cles` (`id`, `nom_mot_cles`) VALUES
(1, 'Mig'),
(2, 'Mig-21'),
(3, 'Su'),
(4, 'Tu'),
(5, 'F'),
(6, 'Boeing'),
(7, 'Mirage');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_23A0E66BCF5E72D` (`categorie_id`);

--
-- Indexes for table `article_mot_cles`
--
ALTER TABLE `article_mot_cles`
  ADD PRIMARY KEY (`article_id`,`mot_cles_id`),
  ADD KEY `IDX_95F260647294869C` (`article_id`),
  ADD KEY `IDX_95F26064855234A9` (`mot_cles_id`);

--
-- Indexes for table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `mot_cles`
--
ALTER TABLE `mot_cles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mot_cles`
--
ALTER TABLE `mot_cles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `FK_23A0E66BCF5E72D` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`id`);

--
-- Constraints for table `article_mot_cles`
--
ALTER TABLE `article_mot_cles`
  ADD CONSTRAINT `FK_95F260647294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_95F26064855234A9` FOREIGN KEY (`mot_cles_id`) REFERENCES `mot_cles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
