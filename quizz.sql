-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mer. 25 mai 2022 à 10:38
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `quizz`
--

-- --------------------------------------------------------

--
-- Structure de la table `GAME`
--

CREATE TABLE `GAME` (
  `ID` int(11) NOT NULL,
  `TYPE_ID` int(11) NOT NULL,
  `QUESTION_CATEGORY_ID` int(11) DEFAULT NULL,
  `DATE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `GAME`
--

INSERT INTO `GAME` (`ID`, `TYPE_ID`, `QUESTION_CATEGORY_ID`, `DATE`) VALUES
(1, 1, 2, '2022-05-19 14:30:05');

-- --------------------------------------------------------

--
-- Structure de la table `GAME_QUESTION`
--

CREATE TABLE `GAME_QUESTION` (
  `ID` int(11) NOT NULL,
  `GAME_ID` int(11) NOT NULL,
  `QUESTION_1_ID` int(11) NOT NULL,
  `QUESTION_2_ID` int(11) NOT NULL,
  `QUESTION_3_ID` int(11) NOT NULL,
  `QUESTION_4_ID` int(11) NOT NULL,
  `QUESTION_5_ID` int(11) NOT NULL,
  `QUESTION_6_ID` int(11) NOT NULL,
  `QUESTION_7_ID` int(11) NOT NULL,
  `QUESTION_8_ID` int(11) NOT NULL,
  `QUESTION_9_ID` int(11) NOT NULL,
  `QUESTION_10_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `GAME_TYPE`
--

CREATE TABLE `GAME_TYPE` (
  `ID` int(11) NOT NULL,
  `TEXT` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `GAME_TYPE`
--

INSERT INTO `GAME_TYPE` (`ID`, `TEXT`) VALUES
(1, 'SOLO'),
(2, 'TEMPS');

-- --------------------------------------------------------

--
-- Structure de la table `QUESTION`
--

CREATE TABLE `QUESTION` (
  `ID` int(11) NOT NULL,
  `TEXT` text NOT NULL,
  `CATEGORY` int(11) NOT NULL DEFAULT 6
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `QUESTION`
--

INSERT INTO `QUESTION` (`ID`, `TEXT`, `CATEGORY`) VALUES
(8, 'Comment appelle t on les soldats français de la PGM ?', 1),
(9, 'Ou se joue la prochaine cdm ?', 3),
(10, 'Quelle empereur français à fini sa vie sur l’île de st-Hélène ?', 1),
(11, 'En quelle année la révolution française a eu lieu ?', 1),
(12, 'Qui a assassine le roi Henri IV ?\r\n', 1),
(13, 'Qui est le ballon d’or 2021 ?', 3),
(14, 'Quel pays est le plus titré en cdm ?', 3),
(15, 'Par qui sont mener les troupes gauloise lors du siege d ‘alesia ?', 1),
(16, 'Quelle est la capital de la Gaule ?', 1),
(19, 'Quelle est le symbole des rois de france ?', 1),
(20, 'Qui est le dernier ballon d’or français ?', 3),
(21, 'Qui est le meilleur buteur sur une cdm', 3),
(22, 'Quand a eu lieu la bataille de waterloo ?', 1),
(23, 'Quand a eu lieu le debarquement ?\r\n', 1),
(24, 'Qui était le chef des armées française libre lors de la SGM ?', 1),
(25, 'Qui est le meilleur buteur des cdm ?', 3),
(26, 'Qui a un mis un but de la main en cdm surnommé la main de dieu ?', 3),
(27, 'Quand a été signe le traiter de Versaille ?', 1),
(28, 'Ou s ‘est joue la seule cdm en Afrique ?', 3),
(29, 'Qui a gagné la première cdm et en quelle année ?', 3),
(30, 'A quelle date fini la PGM (Armistice) ?', 1),
(31, 'Quelle traité de libre échange à été signé en 1957 ?', 1),
(32, 'Quand les femmes ont le droit de vote en france ?', 1),
(33, 'Combien de temps de à durée la guerre de cent ans ?', 1),
(34, 'Quel roi a été assassiné lors de la révolution ?', 1),
(35, 'Quel roi est surnommé le roi soleil ?', 1),
(36, 'Quelle traité a donné naissance à lunion europeenne ?', 1),
(37, 'Quelles sont les dates de la IV eme Republique ?', 1),
(38, 'Quelle est la capitale de la France ?', 2),
(39, 'Ou se situe le parlement europeen ?', 2),
(40, 'Ou se situe la commission europeen ?', 2),
(41, 'Quelle est la capitale de la Suisse ?', 2),
(42, 'Quelle est la capitale de Republique Tcheque ?\r\n', 2),
(43, 'Quelle est la capitale de la Hongrie ?', 2),
(44, 'La capitale du Canada ?', 2),
(45, 'La capitale de la Thailande ?', 2),
(46, 'Ou se situe le siege des nations unis ?', 2),
(47, 'Ou se touve le quebec ?', 2),
(48, '\r\nCombien y a t il de continent ?\r\n', 2),
(49, 'Quelle est la capitale de l’australie ?', 2),
(50, 'Dans quelle continent se trouve la nouvelle zelande ?', 2),
(51, 'Quelle est la capitale du Brésil ?', 2);

-- --------------------------------------------------------

--
-- Structure de la table `QUESTION_CATEGORY`
--

CREATE TABLE `QUESTION_CATEGORY` (
  `ID` int(11) NOT NULL,
  `TEXT` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `QUESTION_CATEGORY`
--

INSERT INTO `QUESTION_CATEGORY` (`ID`, `TEXT`) VALUES
(1, 'Histoire'),
(2, 'Géographie'),
(3, 'Football'),
(5, 'Musique'),
(6, 'Custom'),
(7, 'Test'),
(12, 'AYA'),
(13, 'luca');

-- --------------------------------------------------------

--
-- Structure de la table `QUESTION_CHOIX`
--

CREATE TABLE `QUESTION_CHOIX` (
  `ID` int(11) NOT NULL,
  `QUESTION_ID` int(11) NOT NULL,
  `REPONSE` varchar(50) NOT NULL,
  `BONNE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `QUESTION_CHOIX`
--

INSERT INTO `QUESTION_CHOIX` (`ID`, `QUESTION_ID`, `REPONSE`, `BONNE`) VALUES
(11, 8, 'les barbus', 0),
(12, 9, 'Brésil', 0),
(13, 8, 'les poilus', 1),
(14, 9, 'Russie', 0),
(15, 9, 'Qatar', 1),
(16, 8, 'les victorieux', 0),
(17, 9, 'Etats-Unis', 0),
(18, 10, 'Napoleon 1er', 1),
(19, 10, 'Napoleon II', 0),
(20, 10, 'Napoleon III', 0),
(21, 11, '1799', 0),
(22, 11, '1793', 0),
(23, 11, '1789', 1),
(24, 12, 'François Villon', 0),
(25, 12, 'Froiçois Ravaillac', 1),
(26, 12, 'son fils Louis XIII', 0),
(27, 13, 'Benzema', 0),
(28, 13, 'Messi', 1),
(29, 15, 'Jules César', 0),
(30, 13, 'Cristiano Ronaldo', 0),
(31, 15, 'Le roi d\'alesia', 0),
(32, 15, 'Vercingétorix', 1),
(33, 16, 'Lyon', 1),
(34, 16, 'Paris', 0),
(35, 16, 'Marseille', 0),
(36, 14, 'Brésil', 1),
(37, 14, 'Allemagne', 0),
(38, 14, 'Italie', 0),
(39, 14, 'Belgique', 0),
(40, 19, 'le drapeau tricolore', 0),
(41, 19, 'la couronne', 0),
(42, 19, 'la fleur de lys', 1),
(43, 20, 'Jean-Pierre Papin', 0),
(44, 22, '1820', 0),
(45, 22, '1815', 1),
(46, 20, 'Didier Deschmaps', 0),
(47, 20, 'Zidane', 1),
(48, 22, '1817', 0),
(49, 23, '8 mai 1945', 0),
(50, 23, '11 novembre 1944', 0),
(51, 23, '6 juin 1944', 1),
(52, 21, 'Ronaldo R9', 0),
(53, 21, 'Pélé', 0),
(54, 24, 'Jean Moulin', 0),
(55, 21, 'Maradona', 0),
(56, 21, 'Fontaine', 1),
(57, 24, 'Charles de Gaulles', 1),
(58, 24, 'Philippe Pétain', 0),
(59, 25, 'Fontaine', 0),
(60, 25, 'Maradonna', 0),
(61, 25, 'Klose', 1),
(62, 25, 'Cristiano Ronaldo', 0),
(63, 27, '1921', 0),
(64, 27, '1918', 0),
(65, 27, '1919', 1),
(66, 30, '11 novembre 1918', 1),
(67, 30, '1 novembre 1918', 0),
(68, 30, '8 novembre 1918', 0),
(69, 28, 'Maroc ', 0),
(70, 28, 'Egypte', 0),
(71, 31, 'Traité de Paris', 0),
(72, 31, 'Traité de Berlin', 0),
(73, 28, 'Afrique du Sud ', 1),
(74, 28, 'Nigéria', 0),
(75, 31, 'Traité de Rome', 1),
(76, 32, '1944', 1),
(77, 32, '1945', 0),
(78, 32, '1946', 0),
(79, 33, '100 ans', 0),
(80, 33, '111 ans', 0),
(81, 33, '116 ans', 1),
(82, 29, 'Argentine-1938', 0),
(83, 29, 'Uruguay-1930', 1),
(84, 34, 'Louis XIV', 0),
(85, 34, 'Louis XVI', 1),
(86, 34, 'Louis XV', 0),
(87, 35, 'Louis XIV', 1),
(88, 35, 'Louis XVI', 0),
(89, 35, 'Louis XIII', 0),
(90, 36, 'Traité de Nuremberg', 0),
(91, 36, 'Traité de Vienne', 0),
(92, 36, 'Traité de Maastricht', 1),
(93, 37, '1870-1940', 0),
(94, 37, '1936-1945', 0),
(95, 37, '1946-1948', 1),
(96, 38, 'Paris', 1),
(97, 38, 'Lyon', 0),
(98, 38, 'Marseille', 0),
(99, 38, 'Bordeaux', 0),
(100, 39, 'Bruxelles', 0),
(101, 39, 'Strasbourg', 1),
(102, 39, 'Francfort', 0),
(103, 40, 'Bruxelles', 1),
(104, 40, 'Strasbourg', 0),
(105, 40, 'Luxembourg', 0),
(106, 41, 'Genève', 0),
(107, 41, 'Berne', 1),
(108, 41, 'Zurich', 0),
(109, 42, 'Prague', 1),
(110, 42, 'Varsovie', 0),
(111, 42, 'Vienne', 0),
(112, 43, 'Budapest', 1),
(113, 43, 'Bellegrade', 0),
(114, 43, 'Bucarest', 0),
(115, 44, 'Toronto', 0),
(116, 44, 'Ottawa', 1),
(117, 44, 'Monréal', 0),
(118, 45, 'Bangkok', 1),
(119, 45, 'Pataya', 0),
(120, 45, 'Kuala Lumpur', 0),
(121, 46, 'New York', 1),
(122, 46, 'Paris', 0),
(123, 46, 'Londres', 0),
(124, 47, 'Canada', 1),
(125, 47, 'France', 0),
(126, 47, 'Miquelon', 0),
(127, 48, '5', 0),
(128, 48, '6', 1),
(129, 48, '8', 0),
(130, 49, 'Melbourne', 0),
(131, 49, 'Sidney', 0),
(132, 49, 'Canberra', 1),
(133, 50, 'Océanie', 1),
(134, 50, 'Afrique', 0),
(135, 50, 'Asie', 0),
(136, 51, 'Brasilia', 1),
(137, 51, 'Salvador', 0),
(138, 51, 'Sao Paulo', 0),
(139, 26, 'Messi', 0),
(140, 26, 'Zidane', 0),
(141, 26, 'Sergio ramos', 0),
(142, 26, 'Maradona', 1);

-- --------------------------------------------------------

--
-- Structure de la table `SCORE`
--

CREATE TABLE `SCORE` (
  `ID` int(11) NOT NULL,
  `SCORE_TOTAL` int(2) NOT NULL,
  `GAME_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `USER`
--

CREATE TABLE `USER` (
  `ID` int(11) NOT NULL,
  `MAIL` tinytext NOT NULL,
  `PASSWORD` char(124) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Table Utilisateur';

--
-- Déchargement des données de la table `USER`
--

INSERT INTO `USER` (`ID`, `MAIL`, `PASSWORD`) VALUES
(2, 'a@a.fr', '$2y$10$.tsG6HM3K9366nWG5XNNA.g4y.7VDWiUxT7.buMKNue2zi1it6hmS'),
(3, 'shar@shar.fr', '$2y$10$RPIY5paamtMNvzEaNvLVnuX6U3eTfAODmHwG/DVCDRihtMErTtqXu'),
(4, 'b@b.fr', '$2y$10$wfAUQXSLPNI/Wc/VexKeGOJAgpPVmle59Nj7eRzM30ONte.wCdlOy'),
(5, 'shar', '$2y$10$Nt8JNC1v..B4vHteqQpyr.BQBTHHNhmoUlu4WMh46aMYN4qiVm09G'),
(6, 'Apilash@gmail.com', '$2y$10$Gw9ZQqxJQiya5DrijFWNOuNvIfp0H9NFHXiAUqrHl.UMRDqqyFkeS'),
(7, 'maton', '$2y$10$tNms/.hCrP4sMIJgFpTShuhiuJYgPQIzMkhUdBzcySa.Y04RkiRn2'),
(8, 'luca', '$2y$10$B5Hx/eW2kmWqyF.5f8mS5O.RwM1e5twXxQUAro/5VCYLKHEjHlsou'),
(9, 'ShaR29', '$2y$10$gxfFsstiITPqWvB71/SKQeEHKt/ohr5hqiNGAFD2Z1CJu84BKHpNe'),
(10, 'c@c.fr', '$2y$10$nu0mQogFVNZo12DLhZGvOu1XpUzTxTu7IZmcbk1EH8jOCB/ct55z6'),
(11, 'hgcvfufvu', '$2y$10$rd1JnUjrJhB3.CM6RfR9iuFArt8aXWpRiE6NaWQDenS4G.GU.z7oa'),
(12, 'ninho@gmail.com', '$2y$10$wwFByJwkfFO1STY8XmYG..35QF28r0hyuOM5kzZJAJAR5mE/6/FcW'),
(13, 'brahim@gmail.fr', '$2y$10$b3PoVjFTwOJPubXh0uvNY.ttcMDBjHTo2Dl7C47Hl79TJMnf074Se'),
(14, 'ma', '$2y$10$6DNlwEi25uq3k8Ykoz6R0uIQ6yiGcHyvkwRfPhwlRJPmgawPMRAB.'),
(15, 'matondoluzolo', '$2y$10$CahV7LPAeIpVEc3KvmQV7Oqn08CHyekbucR8ckBxYZn4zg76oUbl6'),
(16, 'chgf', '$2y$10$94GVDS551IuNBEKRF3NZmOCt8YgJwOyL21zHP0GOr3b4nHQrayf6C');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `GAME_QUESTION`
--
ALTER TABLE `GAME_QUESTION`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `GAME_TYPE`
--
ALTER TABLE `GAME_TYPE`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `QUESTION`
--
ALTER TABLE `QUESTION`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CATEGORY` (`CATEGORY`);

--
-- Index pour la table `QUESTION_CATEGORY`
--
ALTER TABLE `QUESTION_CATEGORY`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `QUESTION_CHOIX`
--
ALTER TABLE `QUESTION_CHOIX`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `QUESTION_ID` (`QUESTION_ID`) USING BTREE;

--
-- Index pour la table `SCORE`
--
ALTER TABLE `SCORE`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `USER`
--
ALTER TABLE `USER`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `GAME_QUESTION`
--
ALTER TABLE `GAME_QUESTION`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `GAME_TYPE`
--
ALTER TABLE `GAME_TYPE`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `QUESTION`
--
ALTER TABLE `QUESTION`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT pour la table `QUESTION_CATEGORY`
--
ALTER TABLE `QUESTION_CATEGORY`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `QUESTION_CHOIX`
--
ALTER TABLE `QUESTION_CHOIX`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT pour la table `SCORE`
--
ALTER TABLE `SCORE`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `USER`
--
ALTER TABLE `USER`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `QUESTION`
--
ALTER TABLE `QUESTION`
  ADD CONSTRAINT `CATEGORY` FOREIGN KEY (`CATEGORY`) REFERENCES `QUESTION_CATEGORY` (`ID`);

--
-- Contraintes pour la table `QUESTION_CHOIX`
--
ALTER TABLE `QUESTION_CHOIX`
  ADD CONSTRAINT `QUESTION_ID` FOREIGN KEY (`QUESTION_ID`) REFERENCES `QUESTION` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
