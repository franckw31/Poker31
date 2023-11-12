-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : db5011397709.hosting-data.io
-- Généré le : dim. 12 nov. 2023 à 07:20
-- Version du serveur : 5.7.42-log
-- Version de PHP : 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `dbs9616600`
--

-- --------------------------------------------------------

--
-- Structure de la table `activite`
--

CREATE TABLE `activite` (
  `id-activite` int(11) NOT NULL,
  `id-structure-buyin` int(11) DEFAULT NULL,
  `id-membre` int(11) NOT NULL,
  `titre-activite` varchar(64) NOT NULL DEFAULT '-',
  `date_depart` date DEFAULT NULL,
  `heure_depart` time NOT NULL,
  `ville` varchar(64) NOT NULL DEFAULT '?',
  `rue` varchar(64) DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `lat` float DEFAULT NULL,
  `icon` varchar(255) NOT NULL,
  `ico-siz` float NOT NULL,
  `photo` varchar(255) NOT NULL,
  `lien` varchar(255) NOT NULL DEFAULT '<a href="/panel/voir-activite.php?uid=	',
  `lien-id` varchar(64) NOT NULL,
  `lien-texte` varchar(255) NOT NULL DEFAULT '"><img src="https://poker31.org/panel/images/',
  `lien-texte-fin` varchar(1024) NOT NULL DEFAULT '" width="175" height="175" align="center">Cliquer Pour Infos',
  `places` int(11) NOT NULL DEFAULT '8',
  `reserves` int(11) DEFAULT NULL,
  `options` int(11) NOT NULL DEFAULT '0',
  `libre` int(11) DEFAULT NULL,
  `commentaire` varchar(128) NOT NULL DEFAULT 'Aucun',
  `buyin` int(11) DEFAULT '25',
  `rake` int(11) DEFAULT '5',
  `bounty` int(11) NOT NULL DEFAULT '0',
  `jetons` int(11) NOT NULL DEFAULT '40000',
  `recave` int(11) NOT NULL DEFAULT '1',
  `addon` int(11) NOT NULL DEFAULT '0',
  `ante` varchar(16) NOT NULL DEFAULT '0',
  `bonus` int(11) DEFAULT NULL,
  `nb-tables` int(11) NOT NULL DEFAULT '1',
  `taille-table1` int(11) NOT NULL DEFAULT '8',
  `id-table1` int(11) NOT NULL,
  `taille-table2` int(11) NOT NULL DEFAULT '0',
  `id-table2` int(11) NOT NULL,
  `taille-table3` int(11) NOT NULL DEFAULT '0',
  `id-table3` int(11) NOT NULL,
  `taille-table4` int(11) NOT NULL DEFAULT '0',
  `id-table4` int(11) NOT NULL,
  `taille-table5` int(11) NOT NULL DEFAULT '0',
  `id-table5` int(11) NOT NULL,
  `taille-table6` int(11) NOT NULL DEFAULT '0',
  `id-table6` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `activite`
--

INSERT INTO `activite` (`id-activite`, `id-structure-buyin`, `id-membre`, `titre-activite`, `date_depart`, `heure_depart`, `ville`, `rue`, `lng`, `lat`, `icon`, `ico-siz`, `photo`, `lien`, `lien-id`, `lien-texte`, `lien-texte-fin`, `places`, `reserves`, `options`, `libre`, `commentaire`, `buyin`, `rake`, `bounty`, `jetons`, `recave`, `addon`, `ante`, `bonus`, `nb-tables`, `taille-table1`, `id-table1`, `taille-table2`, `id-table2`, `taille-table3`, `id-table3`, `taille-table4`, `id-table4`, `taille-table5`, `id-table5`, `taille-table6`, `id-table6`) VALUES
(30, 2, 2, 'Tournoi de Franck', '2023-11-01', '20:00:00', 'Toulouse -  Balma', NULL, 43.608325, 1.47957, 'poker-ico', 0, 'IMG_7906.jpeg', '<a href=\"https://poker31.org/panel/voir-activite.php?uid=', '30', '\"><img src=\"https://poker31.org/panel/images/	', '\" width=\"175\" height=\"175\" align=\"center\">', 12, NULL, 0, NULL, '', 20, 0, 0, 0, 0, 0, '', 0, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(32, 1, 34, 'Challenge Olivier', '2023-11-15', '20:30:00', 'Tournefeuille', '10 rue toulouse Lautrec', 43.58873059, 1.35041, 'poker-ico', 0.33, 'highlander.jpg', '<a href=\"https://poker31.org/panel/voir-activite.php?uid=', '32', '\"><img src=\"https://poker31.org/panel/images/', '\" width=\"175\" height=\"175\" align=\"center\">Cliquer Pour Infos', 24, 6, 0, 0, '', 10, 10, 0, 25000, 0, 0, 'NoN', 0, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36, 1, 102, 'Cashgame Medhi', '2023-11-14', '18:00:00', 'Colomiers', '7 place de l Ormeau', 43.617000579833984, 1.32916, 'poker-ico', 0.33, 'medhi.png', '<a href=\"https://poker31.org/panel/voir-activite.php?uid=', '36', '\"><img src=\"https://poker31.org/panel/images/', '\" width=\"175\" height=\"175\" align=\"center\">Cliquer Pour Infos', 8, 0, 0, 0, '', 20, 0, 0, 0, 0, 0, 'NoN', 0, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(55, 1, 104, 'Tournoi de Manu', '2023-11-07', '00:00:00', 'Toulouse', NULL, 43.6353, 1.45455, 'poker-ico', 0, 'IMG_8210.jpeg', '<a href=\"https://poker31.org/panel/voir-activite.php?uid=', '', '\"><img src=\"https://poker31.org/panel/images/	', '\" width=\"175\" height=\"175\" align=\"center\">Cliquer Pour Infos															', 16, NULL, 0, NULL, '', 20, 0, 0, 0, 0, 0, '', 0, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56, 1, 106, 'Tournoi de Koum', '2023-11-03', '19:30:00', 'Plaisance du touch', '8 Impasse Edmond Rostand', 43.5682, 1.30806, 'poker-ico', 0, 'crepes.jpeg', '<a href=\"https://poker31.org/panel/voir-activite.php?uid=', '', '\"><img src=\"https://poker31.org/panel/images/	', '\" width=\"175\" height=\"175\" align=\"center\">Cliquer Pour Infos																', 16, 2, 0, 0, '', 10, 5, 5, 30000, 2, 0, 'BB', 5000, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(57, 1, 57, 'Tournoi de Didier', '2023-11-01', '19:00:00', 'Toulouse - Cartoucherie', '2 ure Marie Gineste', 43.6017, 1.40872, 'poker-ico', 0, 'IMG_8192.jpeg', '<a href=\"https://poker31.org/panel/voir-activite.php?uid=', '', '\"><img src=\"https://poker31.org/panel/images/	', '\" width=\"175\" height=\"175\" align=\"center\">Cliquer Pour Infos															', 6, 2, 0, 0, '', 5, 5, 0, 30000, 99, 0, 'NoN', 0, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(58, 1, 73, 'Tournoi Jay', '2023-11-20', '10:38:00', 'Pechabou', '8 rue du Lobit', 43.5011, 1.50959, 'poker-ico', 0, 'IMG_8192.jpeg', '<a href=\"https://poker31.org/panel/voir-activite.php?uid=', '', '\"><img src=\"https://poker31.org/panel/images/	', '\" width=\"175\" height=\"175\" align=\"center\">Cliquer Pour Infos																', 8, 2, 1, 0, '', 20, 5, 0, 30000, 1, 0, 'NoN', 5000, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(59, 1, 258, 'Tournoi Patrice', '2023-11-20', '10:38:00', 'Saint Clar', '2 chemin des peyrous', 43.4641, 1.21563, 'poker-ico', 0, 'IMG_8206.jpeg', '<a href=\"https://poker31.org/panel/voir-activite.php?uid=', '', '\"><img src=\"https://poker31.org/panel/images/	', '\" width=\"175\" height=\"175\" align=\"center\">Cliquer Pour Infos															', 8, 2, 1, 0, '', 20, 5, 0, 30000, 1, 0, 'NoN', 5000, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(60, 1, 175, 'Tournoi Charles', '2023-11-20', '10:38:00', 'Seysses', '983 chemin de fourtane', 43.502871, 1.28712, 'poker-ico', 0, 'IMG_8197.jpeg', '<a href=\"https://poker31.org/panel/voir-activite.php?uid=', '', '\"><img src=\"https://poker31.org/panel/images/	', '\" width=\"175\" height=\"175\" align=\"center\">Cliquer Pour Infos															', 8, 2, 1, 0, '', 20, 5, 0, 30000, 1, 0, 'NoN', 5000, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(61, 1, 104, 'Tournoi Sylvain', '2023-11-20', '10:38:00', 'Saint jean', '4 clos sesquiere', 43.6634, 1.49765, 'poker-ico', 0, 'IMG_8195.jpeg', '<a href=\"https://poker31.org/panel/voir-activite.php?uid=', '', '\"><img src=\"https://poker31.org/panel/images/	', '\" width=\"175\" height=\"175\" align=\"center\">Cliquer Pour Infos															', 8, 2, 1, 0, 'Tournoi Sylvain', 20, 5, 0, 30000, 1, 0, 'NoN', 5000, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(62, 1, 4, 'Tournoi Anais', '2023-11-20', '10:38:00', 'Longages', '', 43.3556, 1.23998, 'poker-ico', 0, 'IMG_8226.jpeg', '<a href=\"https://poker31.org/panel/voir-activite.php?uid=', '', '\"><img src=\"https://poker31.org/panel/images/	', '\" width=\"175\" height=\"175\" align=\"center\">Cliquer Pour Infos																', 8, 2, 1, 0, '', 20, 5, 0, 30000, 1, 0, 'NoN', 5000, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(63, 1, 104, 'Tournoi Antoine', '2023-11-20', '10:38:00', 'Saint sulpice sur leze', '', 43.3283, 1.32041, 'poker-ico', 0, 'IMG_8201.jpeg', '<a href=\"https://poker31.org/panel/voir-activite.php?uid=', '', '\"><img src=\"https://poker31.org/panel/images/', '\" width=\"175\" height=\"175\" align=\"center\">Cliquer Pour Infos															', 8, 2, 1, 0, 'Tournoi Antoine', 20, 5, 0, 30000, 1, 0, 'NoN', 5000, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(64, 1, 1028, 'Tournoi de Luc', '2023-11-20', '10:38:00', 'Muret', '73 chemin de lacombe', 43.4545, 1.36285, 'poker-ico', 0, 'IMG_8225.jpeg', '<a href=\"https://poker31.org/panel/voir-activite.php?uid=', '', '\"><img src=\"https://poker31.org/panel/images/', '\" width=\"175\" height=\"175\" align=\"center\">Cliquer Pour Infos															', 8, 2, 1, 0, '', 20, 5, 0, 30000, 1, 0, 'NoN', 5000, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(65, 1, 104, 'Tournoi Lim', '2023-11-20', '10:38:00', 'Aucamville', '12 Av de lacourtensourt', 43.6701, 1.42519, 'poker-ico', 0, 'IMG_8194.jpeg', '<a href=\"https://poker31.org/panel/voir-activite.php?uid=', '', '\"><img src=\"https://poker31.org/panel/images/	', '\" width=\"175\" height=\"175\" align=\"center\">Cliquer Pour Infos															', 8, 2, 1, 0, 'Tournoi Lim', 20, 5, 0, 30000, 1, 0, 'NoN', 5000, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(66, 1, 253, 'Tournoi Celinette', '2023-11-20', '10:38:00', 'Pechbonnieu', '3 chemin de turtelle', 43.7028, 1.46362, 'poker-ico', 0, 'IMG_8183.jpeg', '<a href=\"https://poker31.org/panel/voir-activite.php?uid=', '', '\"><img src=\"https://poker31.org/panel/images/	', '\" width=\"175\" height=\"175\" align=\"center\">Cliquer Pour Infos															', 8, 2, 1, 0, '', 20, 5, 0, 30000, 1, 0, 'NoN', 5000, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(67, 1, 104, 'Tournoi Dede', '2023-11-20', '10:38:00', 'La salvetat saint gilles', '', 43.5766, 1.26808, 'poker-ico', 0, 'IMG_8198.jpeg', '<a href=\"https://poker31.org/panel/voir-activite.php?uid=', '', '\"><img src=\"https://poker31.org/panel/images/', '\" width=\"175\" height=\"175\" align=\"center\">Cliquer Pour Infos															', 8, 2, 1, 0, 'Tournoi Dede', 20, 5, 0, 30000, 1, 0, 'NoN', 5000, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(131, 1, 242, 'Tournoi de David', '2023-11-04', '15:00:00', 'Colomiers', '', 43.6126, 1.32855, 'poker-ico', 0.33, 'IMG_8204.jpeg', '<a href=\"https://poker31.org/panel/voir-activite.php?uid=', '36', '\"><img src=\"https://poker31.org/panel/images/', '\" width=\"175\" height=\"175\" align=\"center\">Cliquer Pour Infos', 24, 0, 0, 0, '', 20, 0, 0, 35000, 1, 0, 'NoN', 5000, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `activite-29oct`
--

CREATE TABLE `activite-29oct` (
  `id-activite` int(11) NOT NULL,
  `id-structure-buyin` int(11) DEFAULT NULL,
  `id-membre` int(11) NOT NULL,
  `titre-activite` varchar(64) NOT NULL DEFAULT '-',
  `date_depart` date DEFAULT '2022-12-31',
  `heure_depart` time NOT NULL,
  `ville` varchar(64) NOT NULL DEFAULT '?',
  `rue` varchar(64) DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `lat` float DEFAULT NULL,
  `icon` varchar(255) NOT NULL,
  `ico-siz` float NOT NULL,
  `photo` varchar(255) NOT NULL,
  `lien` varchar(255) NOT NULL DEFAULT '<a href="/panel/voir-activite.php?uid=	',
  `lien-id` varchar(64) NOT NULL,
  `lien-texte` varchar(255) NOT NULL DEFAULT '">',
  `lien-texte-fin` varchar(255) NOT NULL DEFAULT 'Cliquer Pour Infos',
  `places` int(11) NOT NULL DEFAULT '8',
  `reserves` int(11) DEFAULT NULL,
  `options` int(11) NOT NULL DEFAULT '0',
  `libre` int(11) DEFAULT NULL,
  `commentaire` varchar(128) NOT NULL DEFAULT 'Aucun',
  `buyin` int(11) DEFAULT '25',
  `rake` int(11) DEFAULT '5',
  `bounty` int(11) NOT NULL DEFAULT '0',
  `jetons` int(11) NOT NULL DEFAULT '40000',
  `recave` int(11) NOT NULL DEFAULT '1',
  `addon` int(11) NOT NULL DEFAULT '0',
  `ante` varchar(16) NOT NULL DEFAULT '0',
  `bonus` int(11) DEFAULT NULL,
  `nb-tables` int(11) NOT NULL DEFAULT '1',
  `taille-table1` int(11) NOT NULL DEFAULT '8',
  `id-table1` int(11) NOT NULL,
  `taille-table2` int(11) NOT NULL DEFAULT '0',
  `id-table2` int(11) NOT NULL,
  `taille-table3` int(11) NOT NULL DEFAULT '0',
  `id-table3` int(11) NOT NULL,
  `taille-table4` int(11) NOT NULL DEFAULT '0',
  `id-table4` int(11) NOT NULL,
  `taille-table5` int(11) NOT NULL DEFAULT '0',
  `id-table5` int(11) NOT NULL,
  `taille-table6` int(11) NOT NULL DEFAULT '0',
  `id-table6` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `activite-29oct`
--

INSERT INTO `activite-29oct` (`id-activite`, `id-structure-buyin`, `id-membre`, `titre-activite`, `date_depart`, `heure_depart`, `ville`, `rue`, `lng`, `lat`, `icon`, `ico-siz`, `photo`, `lien`, `lien-id`, `lien-texte`, `lien-texte-fin`, `places`, `reserves`, `options`, `libre`, `commentaire`, `buyin`, `rake`, `bounty`, `jetons`, `recave`, `addon`, `ante`, `bonus`, `nb-tables`, `taille-table1`, `id-table1`, `taille-table2`, `id-table2`, `taille-table3`, `id-table3`, `taille-table4`, `id-table4`, `taille-table5`, `id-table5`, `taille-table6`, `id-table6`) VALUES
(30, 1, 104, 'demanu', '0000-00-00', '00:00:00', '', NULL, NULL, NULL, 'poker-ico', 0, 'url(https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgG6ynV-vS_mfAfqV9dzAtw1S9FKGS9PuZvQ&usqp=CAU)', '<a href=\"https://poker31.org/panel/voir-activite.php?uid=', '30', '\"><img src=\"https://poker31.org/panel/images/tables.jpg\" width=\"175\" height=\"175\">	', 'Cliquer Pour Infos																', 0, NULL, 0, NULL, '', 0, 0, 0, 0, 0, 0, '', 0, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(32, 1, 2, 'Challenge Olivier', '2023-10-27', '12:00:00', 'Tournefeuille', '10 rue toulouse Lautrec', 43.58873059, 1.35041, 'poker-ico', 0.33, 'url(https://gist.plex.tv/wp-content/uploads/2021/06/HIGHLANDER_QUAD_FINAL-1200x675-1-1024x576.jpg)', '<a href=\"https://poker31.org/panel/voir-activite.php?uid=', '32', '\"><img src=\"https://poker31.org/panel/images/highlander.jpg\" width=\"175\" height=\"175\">', 'Cliquer Pour Infos', 24, 6, 3, 0, '', 10, 10, 0, 25000, 0, 0, 'NoN', 0, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36, 1, 1, 'Cashgame Medhi', '2023-11-14', '18:00:00', 'Colomier', '7 place de l Ormeau', 43.617000579833984, 1.32916, 'poker-ico', 0.33, 'url(https://poker31.org/photos/medhi.jpg)', '<a href=\"https://poker31.org/panel/voir-activite.php?uid=', '36', '\"><img src=\"https://poker31.org/panel/images/mehdi.png\" width=\"175\" height=\"175\">', 'Cliquer Pour Infos', 8, 0, 0, 0, '$choix[\"pseudo\"]', 10, 0, 0, 0, 0, 0, 'NoN', 0, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(55, 1, 104, 'manu', '0000-00-00', '00:00:00', '', NULL, NULL, NULL, 'poker-ico', 0, 'url(https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgG6ynV-vS_mfAfqV9dzAtw1S9FKGS9PuZvQ&usqp=CAU)', '<a href=\"https://poker31.org/panel/voir-activite.php?uid=', '', '\"><img src=\"https://ppoker31.org/panel/images/tables.jpg\" width=\"175\" height=\"175\">	', 'Cliquer Pour Infos																', 0, NULL, 0, NULL, '', 0, 0, 0, 0, 0, 0, '', 0, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56, 1, 104, 'Tournoi Koum', '2023-11-20', '10:38:00', 'Plaisance du touch', '8 Impasse Edmond Rostand', 43.5682, 1.30806, 'poker-ico', 0, 'url(https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgG6ynV-vS_mfAfqV9dzAtw1S9FKGS9PuZvQ&usqp=CAU)', '<a href=\"https://poker31.org/panel/voir-activite.php?uid=', '', '\"><img src=\"https://ppoker31.org/panel/images/tables.jpg\" width=\"175\" height=\"175\">	', 'Cliquer Pour Infos																', 16, 2, 4, 0, '1', 9, 5, 5, 30000, 2, 0, 'BB', 5000, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(57, 1, 104, 'Tournoi Didier', '2023-11-20', '10:38:00', 'Toulouse', '2 ure Marie Gineste', 43.6017, 1.40872, 'poker-ico', 0, 'url(https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgG6ynV-vS_mfAfqV9dzAtw1S9FKGS9PuZvQ&usqp=CAU)', '<a href=\"https://poker31.org/panel/voir-activite.php?uid=', '', '\"><img src=\"https://ppoker31.org/panel/images/tables.jpg\" width=\"175\" height=\"175\">	', 'Cliquer Pour Infos																', 8, 2, 1, 0, 'Tournoi Didier', 20, 5, 0, 30000, 1, 0, 'NoN', 5000, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(58, 1, 104, 'Tournoi Jay', '2023-11-20', '10:38:00', 'Pechabou', '8 rue du Lobit', 43.5011, 1.50959, 'poker-ico', 0, 'url(https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgG6ynV-vS_mfAfqV9dzAtw1S9FKGS9PuZvQ&usqp=CAU)', '<a href=\"https://poker31.org/panel/voir-activite.php?uid=', '', '\"><img src=\"https://ppoker31.org/panel/images/tables.jpg\" width=\"175\" height=\"175\">	', 'Cliquer Pour Infos																', 8, 2, 1, 0, 'Tournoi Jay', 20, 5, 0, 30000, 1, 0, 'NoN', 5000, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(59, 1, 104, 'Tournoi Patrice', '2023-11-20', '10:38:00', 'Saint Clar', '2 chemin des peyrous', 43.4641, 1.21563, 'poker-ico', 0, 'url(https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgG6ynV-vS_mfAfqV9dzAtw1S9FKGS9PuZvQ&usqp=CAU)', '<a href=\"https://poker31.org/panel/voir-activite.php?uid=', '', '\"><img src=\"https://ppoker31.org/panel/images/tables.jpg\" width=\"175\" height=\"175\">	', 'Cliquer Pour Infos																', 8, 2, 1, 0, 'Tournoi Patrice', 20, 5, 0, 30000, 1, 0, 'NoN', 5000, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(60, 1, 104, 'Tournoi Charles', '2023-11-20', '10:38:00', 'Seysses', '983 chemin de fourtane', 43.502871, 1.28712, 'poker-ico', 0, 'url(https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgG6ynV-vS_mfAfqV9dzAtw1S9FKGS9PuZvQ&usqp=CAU)', '<a href=\"https://poker31.org/panel/voir-activite.php?uid=', '', '\"><img src=\"https://ppoker31.org/panel/images/tables.jpg\" width=\"175\" height=\"175\">	', 'Cliquer Pour Infos																', 8, 2, 1, 0, 'Tournoi Charles', 20, 5, 0, 30000, 1, 0, 'NoN', 5000, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(61, 1, 104, 'Tournoi Sylvain', '2023-11-20', '10:38:00', 'Saint jean', '4 clos sesquiere', 43.6634, 1.49765, 'poker-ico', 0, 'url(https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgG6ynV-vS_mfAfqV9dzAtw1S9FKGS9PuZvQ&usqp=CAU)', '<a href=\"https://poker31.org/panel/voir-activite.php?uid=', '', '\"><img src=\"https://ppoker31.org/panel/images/tables.jpg\" width=\"175\" height=\"175\">	', 'Cliquer Pour Infos																', 8, 2, 1, 0, 'Tournoi Sylvain', 20, 5, 0, 30000, 1, 0, 'NoN', 5000, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(62, 1, 104, 'Tournoi Anais', '2023-11-20', '10:38:00', 'Longages', '', 43.3556, 1.23998, 'poker-ico', 0, 'url(https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgG6ynV-vS_mfAfqV9dzAtw1S9FKGS9PuZvQ&usqp=CAU)', '<a href=\"https://poker31.org/panel/voir-activite.php?uid=', '', '\"><img src=\"https://ppoker31.org/panel/images/tables.jpg\" width=\"175\" height=\"175\">	', 'Cliquer Pour Infos																', 8, 2, 1, 0, 'Tournoi Anais', 20, 5, 0, 30000, 1, 0, 'NoN', 5000, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(63, 1, 104, 'Tournoi Antoine', '2023-11-20', '10:38:00', 'Saint sulpice sur leze', '', 43.3283, 1.32041, 'poker-ico', 0, 'url(https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgG6ynV-vS_mfAfqV9dzAtw1S9FKGS9PuZvQ&usqp=CAU)', '<a href=\"https://poker31.org/panel/voir-activite.php?uid=', '', '\"><img src=\"https://ppoker31.org/panel/images/tables.jpg\" width=\"175\" height=\"175\">	', 'Cliquer Pour Infos																', 8, 2, 1, 0, 'Tournoi Antoine', 20, 5, 0, 30000, 1, 0, 'NoN', 5000, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(64, 1, 104, 'Tournoi Luc', '2023-11-20', '10:38:00', 'Muret', '73 chemin de lacombe', 43.4545, 1.36285, 'poker-ico', 0, 'url(https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgG6ynV-vS_mfAfqV9dzAtw1S9FKGS9PuZvQ&usqp=CAU)', '<a href=\"https://poker31.org/panel/voir-activite.php?uid=', '', '\"><img src=\"https://ppoker31.org/panel/images/tables.jpg\" width=\"175\" height=\"175\">	', 'Cliquer Pour Infos																', 8, 2, 1, 0, 'Tournoi Luc', 20, 5, 0, 30000, 1, 0, 'NoN', 5000, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(65, 1, 104, 'Tournoi Lim', '2023-11-20', '10:38:00', 'Aucamville', '12 Av de lacourtensourt', 43.6701, 1.42519, 'poker-ico', 0, 'url(https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgG6ynV-vS_mfAfqV9dzAtw1S9FKGS9PuZvQ&usqp=CAU)', '<a href=\"https://poker31.org/panel/voir-activite.php?uid=', '', '\"><img src=\"https://ppoker31.org/panel/images/tables.jpg\" width=\"175\" height=\"175\">	', 'Cliquer Pour Infos																', 8, 2, 1, 0, 'Tournoi Lim', 20, 5, 0, 30000, 1, 0, 'NoN', 5000, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(66, 1, 104, 'Tournoi Celine', '2023-11-20', '10:38:00', 'Pechbonnieu', '3 chemin de turtelle', 43.7028, 1.46362, 'poker-ico', 0, 'url(https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgG6ynV-vS_mfAfqV9dzAtw1S9FKGS9PuZvQ&usqp=CAU)', '<a href=\"https://poker31.org/panel/voir-activite.php?uid=', '', '\"><img src=\"https://ppoker31.org/panel/images/tables.jpg\" width=\"175\" height=\"175\">	', 'Cliquer Pour Infos																', 8, 2, 1, 0, 'Tournoi Celine', 20, 5, 0, 30000, 1, 0, 'NoN', 5000, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(67, 1, 104, 'Tournoi Dede', '2023-11-20', '10:38:00', 'La salvetat saint gilles', '', 43.5766, 1.26808, 'poker-ico', 0, 'url(https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgG6ynV-vS_mfAfqV9dzAtw1S9FKGS9PuZvQ&usqp=CAU)', '<a href=\"https://poker31.org/panel/voir-activite.php?uid=', '', '\"><img src=\"https://ppoker31.org/panel/images/tables.jpg\" width=\"175\" height=\"175\">	', 'Cliquer Pour Infos																', 8, 2, 1, 0, 'Tournoi Dede', 20, 5, 0, 30000, 1, 0, 'NoN', 5000, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(130, 1, 104, 'titre', '2023-10-03', '13:00:01', '77', '[value-8]', 1, 43, '[value-11]', 1, '[value-13]', '[value-14]', '[value-15]', '[value-16]', '[value-17]', 10, 2, 30, 4, '', 50, 60, 70, 80, 90, 100, '105', 110, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24);

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL DEFAULT '0000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'ad', 'Test@12345');

-- --------------------------------------------------------

--
-- Structure de la table `admincar`
--

CREATE TABLE `admincar` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `admincar`
--

INSERT INTO `admincar` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '5c428d8875d2948607f3e3fe134d71b4', '2017-06-18 10:22:38');

-- --------------------------------------------------------

--
-- Structure de la table `admindoc`
--

CREATE TABLE `admindoc` (
  `id` int(11) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `admindoc`
--

INSERT INTO `admindoc` (`id`, `Username`, `Password`, `updationDate`) VALUES
(1, 'admin', 'Test@12345', '30-10-2022 11:42:05 AM'),
(2, 'admin2', '5c428d8875d2948607f3e3fe134d71b4\r\n\r\n', '');

-- --------------------------------------------------------

--
-- Structure de la table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(1, 'ENT', 1, 1, 500, '2022-11-10', '12:45 PM', '2022-11-06 12:21:48', 1, 0, '2022-11-06 12:23:35'),
(2, 'ENT', 1, 2, 500, '2022-11-17', '7:00 PM', '2022-11-06 13:16:18', 1, 1, NULL),
(3, 'ENT', 1, 1, 500, '2023-09-26', '12:15 PM', '2023-09-20 10:10:01', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `blindes`
--

CREATE TABLE `blindes` (
  `id` int(11) NOT NULL,
  `nom1` varchar(64) NOT NULL,
  `duree1` time NOT NULL,
  `fin1` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `blindes`
--

INSERT INTO `blindes` (`id`, `nom1`, `duree1`, `fin1`) VALUES
(1, 'Blinde 1', '00:00:00', '2023-11-11 19:34:00');

-- --------------------------------------------------------

--
-- Structure de la table `challenge`
--

CREATE TABLE `challenge` (
  `chal_id` int(11) NOT NULL,
  `chal_nom` varchar(64) NOT NULL,
  `chal_com` varchar(128) NOT NULL,
  `chal_deb` date NOT NULL,
  `chal_fin` date NOT NULL,
  `chal_org` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `challenge`
--

INSERT INTO `challenge` (`chal_id`, `chal_nom`, `chal_com`, `chal_deb`, `chal_fin`, `chal_org`) VALUES
(1, 'Highlander 2', 'test com h2', '2023-09-01', '2023-09-30', 265),
(6, 'Highlander 3', 'test com h3', '2023-12-01', '2023-12-30', 1);

-- --------------------------------------------------------

--
-- Structure de la table `challenge-partie`
--

CREATE TABLE `challenge-partie` (
  `chapar_id` int(11) NOT NULL,
  `chapar_id_chal` int(11) NOT NULL,
  `chapar_id_part` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `challenge-partie`
--

INSERT INTO `challenge-partie` (`chapar_id`, `chapar_id_chal`, `chapar_id_part`) VALUES
(1, 1, 30),
(6, 6, 36);

-- --------------------------------------------------------

--
-- Structure de la table `competences`
--

CREATE TABLE `competences` (
  `id` int(8) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `commentaire` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `competences`
--

INSERT INTO `competences` (`id`, `nom`, `commentaire`) VALUES
(1, 'Informatichien', 'Devellopeur (euse) WEB'),
(2, 'Peintre', 'Artiste'),
(3, 'Traducteur', 'Francais - Mandarin'),
(4, 'Multiservices', 'Particuliers'),
(11, 'Equitation', 'Cavalier Pro'),
(12, 'Peintre BTP', NULL),
(13, 'Électricien', NULL),
(14, 'Maçon', NULL),
(15, 'Paysagiste', NULL),
(24, 'Plombier', 'Artisan'),
(25, 'Commercial', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `competences-individu`
--

CREATE TABLE `competences-individu` (
  `id` int(8) NOT NULL,
  `id-comp` int(8) NOT NULL,
  `id-indiv` int(8) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `co` varchar(255) NOT NULL DEFAULT 'Inconnu'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `competences-individu`
--

INSERT INTO `competences-individu` (`id`, `id-comp`, `id-indiv`, `date`, `co`) VALUES
(59, 1, 1, '2023-09-24 07:39:21', 'Inconnu'),
(71, 2, 242, '2023-10-03 07:49:50', 'Inconnu'),
(72, 1, 265, '2023-10-04 07:01:56', 'Inconnu'),
(73, 4, 265, '2023-10-11 07:32:49', 'Inconnu'),
(89, 3, 1, '2023-10-18 07:09:26', 'Inconnu'),
(91, 4, 1, '2023-10-18 07:13:17', 'Inconnu'),
(92, 1, 2, '2023-10-19 14:09:59', 'Inconnu'),
(93, 2, 1, '2023-10-23 08:08:20', 'Inconnu'),
(94, 2, 1, '2023-10-23 08:15:38', 'Inconnu'),
(95, 2, 1, '2023-10-23 08:27:07', 'Inconnu'),
(96, 2, 1, '2023-10-23 08:27:13', 'Inconnu'),
(97, 2, 1, '2023-10-23 08:27:22', 'Inconnu'),
(98, 2, 1, '2023-10-23 08:27:39', 'Inconnu'),
(99, 2, 1, '2023-10-23 08:27:50', 'Inconnu'),
(100, 2, 1, '2023-10-23 08:37:48', 'Inconnu'),
(101, 2, 1, '2023-10-23 08:39:38', 'Inconnu'),
(102, 2, 1, '2023-10-23 08:40:33', 'Inconnu'),
(103, 2, 1, '2023-10-23 08:40:55', 'Inconnu'),
(104, 2, 1, '2023-10-23 08:41:44', 'Inconnu'),
(105, 2, 1, '2023-10-23 08:42:45', 'Inconnu'),
(106, 2, 1, '2023-10-23 08:46:38', 'Inconnu'),
(107, 2, 1, '2023-10-23 08:58:56', 'Inconnu'),
(108, 2, 1, '2023-10-23 09:04:11', 'Inconnu'),
(109, 2, 1, '2023-10-23 09:10:03', 'Inconnu'),
(110, 2, 1, '2023-10-23 09:15:52', 'Inconnu'),
(111, 2, 1, '2023-10-23 09:16:43', 'Inconnu'),
(112, 2, 1, '2023-10-23 09:17:08', 'Inconnu'),
(113, 2, 1, '2023-10-23 09:18:24', 'Inconnu'),
(114, 2, 1, '2023-10-23 09:18:29', 'Inconnu'),
(115, 2, 1, '2023-10-23 09:19:16', 'Inconnu'),
(116, 2, 1, '2023-10-23 09:20:35', 'Inconnu'),
(117, 2, 1, '2023-10-23 09:25:32', 'Inconnu'),
(118, 2, 1, '2023-10-23 09:26:00', 'Inconnu'),
(119, 2, 1, '2023-10-23 09:26:31', 'Inconnu'),
(120, 2, 1, '2023-10-23 09:27:30', 'Inconnu'),
(121, 2, 1, '2023-10-23 09:29:07', 'Inconnu'),
(122, 2, 1, '2023-10-23 09:34:07', 'Inconnu'),
(123, 14, 0, '2023-10-23 12:00:14', 'Inconnu'),
(124, 1, 265, '2023-10-23 12:33:21', 'Inconnu'),
(125, 24, 241, '2023-10-23 15:30:55', 'Inconnu'),
(126, 1, 0, '2023-10-24 12:51:31', 'Inconnu'),
(127, 1, 1021, '2023-10-24 14:14:13', 'Inconnu'),
(128, 2, 1021, '2023-10-24 14:16:13', 'Inconnu'),
(129, 3, 1021, '2023-10-24 14:19:36', 'Inconnu'),
(130, 2, 67, '2023-10-26 13:39:36', 'Inconnu'),
(131, 3, 67, '2023-10-26 13:40:16', 'Inconnu'),
(133, 1, 215, '2023-10-27 14:48:36', 'Inconnu');

-- --------------------------------------------------------

--
-- Structure de la table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'ENT', 'Anuj kumar', 'A 123 XYZ Apartment Raj Nagar Ext Ghaziabad', '500', 142536250, 'anujk123@test.com', 'f925916e2754e5e03f75dd58a5733251', '2022-10-30 18:16:52', '2022-11-06 13:20:17'),
(2, 'Endocrinologists', 'Charu Dua', 'X 1212 ABC Apartment Laxmi Nagar New Delhi ', '800', 1231231230, 'charudua12@test.com', 'f925916e2754e5e03f75dd58a5733251', '2022-11-04 01:06:41', NULL),
(4, 'Neurologists', 'Wenger', 'Mercy Hospital', '100', 786527853, 'wenger.franck@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2023-09-20 09:59:59', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(20, NULL, 'gfdgdf', 0x3a3a3100000000000000000000000000, '2022-11-04 01:02:16', NULL, 0),
(21, 2, 'charudua12@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06 11:59:40', '06-11-2022 05:35:18 PM', 1),
(22, 2, 'charudua12@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06 12:06:37', '06-11-2022 05:36:40 PM', 1),
(23, 2, 'charudua12@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06 12:08:56', '06-11-2022 05:42:53 PM', 1),
(24, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06 12:23:18', '06-11-2022 05:53:40 PM', 1),
(25, 2, 'charudua12@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06 13:16:53', '06-11-2022 06:47:07 PM', 1),
(26, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06 13:17:33', '06-11-2022 06:50:28 PM', 1),
(27, NULL, 'wenger.franck@gmail.com', 0x326130343a636563303a313930313a34, '2023-09-20 10:04:32', NULL, 0),
(28, NULL, 'wenger.franck@gmail.com', 0x326130343a636563303a313930313a34, '2023-09-20 10:04:58', NULL, 0),
(29, 4, 'wenger.franck@gmail.com', 0x326130343a636563303a313930313a34, '2023-09-20 10:06:04', '20-09-2023 03:36:43 PM', 1),
(30, NULL, 'anujk123@test.com', 0x326130343a636563303a313930313a34, '2023-09-20 10:07:13', NULL, 0),
(31, 1, 'anujk123@test.com', 0x326130343a636563303a313930313a34, '2023-09-20 10:07:41', '20-09-2023 03:38:14 PM', 1),
(32, 1, 'anujk123@test.com', 0x326130343a636563303a313930313a34, '2023-09-20 10:16:06', NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Orthopedics', '2022-10-30 18:09:46', NULL),
(2, 'Internal Medicine', '2022-10-30 18:09:57', NULL),
(3, 'Obstetrics and Gynecology', '2022-10-30 18:10:18', NULL),
(4, 'Dermatology', '2022-10-30 18:10:28', NULL),
(5, 'Pediatrics', '2022-10-30 18:10:37', NULL),
(6, 'Radiology', '2022-10-30 18:10:46', NULL),
(7, 'General Surgery', '2022-10-30 18:10:56', NULL),
(8, 'Ophthalmology', '2022-10-30 18:11:03', NULL),
(9, 'Anesthesia', '2022-10-30 18:11:15', NULL),
(10, 'Pathology', '2022-10-30 18:11:22', NULL),
(11, 'ENT', '2022-10-30 18:11:30', NULL),
(12, 'Dental Care', '2022-10-30 18:11:39', NULL),
(13, 'Dermatologists', '2022-10-30 18:12:02', NULL),
(14, 'Endocrinologists', '2022-10-30 18:12:10', NULL),
(15, 'Neurologists', '2022-10-30 18:12:30', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `name` char(60) NOT NULL DEFAULT 'Poker',
  `description` char(255) NOT NULL,
  `icon` varchar(255) NOT NULL DEFAULT 'poker',
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `t1` varchar(64) NOT NULL,
  `t2` varchar(255) NOT NULL,
  `lien` varchar(255) NOT NULL DEFAULT '<a href="/panel/voir-partie.php?uid=',
  `lien-id` varchar(64) NOT NULL,
  `lien-texte` varchar(255) NOT NULL DEFAULT '">',
  `lien-texte-fin` varchar(255) NOT NULL DEFAULT 'Partie N°',
  `icon-size` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `events`
--

INSERT INTO `events` (`id`, `name`, `description`, `icon`, `lat`, `lng`, `t1`, `t2`, `lien`, `lien-id`, `lien-texte`, `lien-texte-fin`, `icon-size`) VALUES
(5, '-> Infos Tournoi <-', 'Franck', 'poker', 1.4795739650726318, 43.60832595825195, 'poker', 'url(https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgG6ynV-vS_mfAfqV9dzAtw1S9FKGS9PuZvQ&usqp=CAU)', '<a href=\"https://poker31.org/panel/voir-activite.php?uid=', '30', '\">', 'Franck N°', 0.33),
(6, '<- Infos Highlander ->', 'Olivier', 'poker', 1.350311040878296, 43.58866882324219, 'poker', 'url(https://gist.plex.tv/wp-content/uploads/2021/06/HIGHLANDER_QUAD_FINAL-1200x675-1-1024x576.jpg)', '<a href=\"/panel/voir-partie.php?uid=', '32', '\">', 'Olivier N°', 1),
(10, '-> Infos Cashgame ->', 'Mehdi', 'poker', 1.3291590213775635, 43.61700439453125, 'poker', 'url(https://scmedia.itsfogo.com/$-$/f02834dbb45142bfa725c72839fd0aff.jpg)', '<a href=\"/panel/voir-partie.php?uid=', '36', '\">', 'Mehdi N°', 1),
(12, 'frw', '', 'poker', 1.4795739650726318, 43.60832595825195, '', '', '<a href=\"/panel/voir-partie.php?uid=', '', '\">', 'Partie N°', 0),
(13, 'koom', '', 'poker', 1.3080600500106812, 43.568233489990234, '', '', '<a href=\"/panel/voir-partie.php?uid=', '', '\">', 'Partie N°', 0),
(15, 'manu f', '', 'poker', 1.4545539617538452, 43.63530349731445, '', '', '<a href=\"/panel/voir-partie.php?uid=', '', '\">', 'Partie N°', 0),
(16, 'didier', '', 'poker', 1.4087239503860474, 43.60169219970703, '', '', '<a href=\"/panel/voir-partie.php?uid=', '', '\">', 'Partie N°', 0),
(17, 'jay', '', 'poker', 1.5095880031585693, 43.50111389160156, '', '', '<a href=\"/panel/voir-partie.php?uid=', '', '\">', 'Partie N°', 0),
(18, 'patrice', '', 'poker', 1.215628981590271, 43.46412658691406, '', '', '<a href=\"/panel/voir-partie.php?uid=', '', '\">', 'Partie N°', 0),
(19, 'charles', '', 'poker', 1.3115110397338867, 43.49829864501953, '', '', '<a href=\"/panel/voir-partie.php?uid=', '', '\">', 'Partie N°', 0),
(20, 'sylvain', '', 'poker', 1.4976530075073242, 43.6634407043457, '', '', '<a href=\"/panel/voir-partie.php?uid=', '', '\">', 'Partie N°', 0),
(21, 'anais', '', 'poker', 1.2399770021438599, 43.35557556152344, '', '', '<a href=\"/panel/voir-partie.php?uid=', '', '\">', 'Partie N°', 0),
(22, 'antoine', '', 'poker', 1.320412039756775, 43.32830047607422, '', '', '<a href=\"/panel/voir-partie.php?uid=', '', '\">', 'Partie N°', 0),
(23, 'luc', '', 'poker', 1.3628469705581665, 43.454463958740234, '', '', '<a href=\"/panel/voir-partie.php?uid=', '', '\">', 'Partie N°', 0),
(24, 'lim', '', 'poker', 1.4251869916915894, 43.670074462890625, '', '', '<a href=\"/panel/voir-partie.php?uid=', '', '\">', 'Partie N°', 0),
(25, 'celine', '', 'poker', 1.463623046875, 43.70283126831055, '', '', '<a href=\"/panel/voir-partie.php?uid=', '', '\">', 'Partie N°', 0),
(26, 'dede', '', 'poker', 1.2680779695510864, 43.576576232910156, '', '', '<a href=\"/panel/voir-partie.php?uid=', '', '\">', 'Partie N°', 0),
(27, 'franck', 'test', 'poker', 1.4795739650726318, 43.60832595825195, '', '', '<a href=\"/panel/voir-partie.php?uid=', '', '\">', 'Partie N°', 0),
(28, 'david', '', 'poker', 1.3285479545593262, 43.61262130737305, '', '', '<a href=\"/panel/voir-partie.php?uid=', '', '\">', 'Partie N°', 0),
(29, 'david', '6 place leo lagrange colomiers', 'poker', 1.3285479545593262, 43.61262130737305, '', '', '<a href=\"/panel/voir-partie.php?uid=', '', '\">', 'Partie N°', 0),
(30, 'David Precis', '6 place leo lagrange colomiers', 'poker', 1.328548, 43.61262, '', '', '<a href=\"/panel/voir-partie.php?uid=', '', '\">', 'Partie N°', 0);

-- --------------------------------------------------------

--
-- Structure de la table `joueurs`
--

CREATE TABLE `joueurs` (
  `id` int(11) NOT NULL,
  `nom` varchar(30) DEFAULT NULL,
  `droits` varchar(11) NOT NULL DEFAULT '0',
  `lname` varchar(255) DEFAULT NULL,
  `prenom` varchar(30) DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `contactno` varchar(255) NOT NULL DEFAULT '0600000000',
  `posting_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastip` varchar(20) DEFAULT NULL,
  `nbpart` int(11) DEFAULT NULL,
  `nbpart1` int(11) DEFAULT NULL,
  `nbpart2` int(11) DEFAULT NULL,
  `nbpart3` int(11) DEFAULT NULL,
  `nbpart4` int(11) DEFAULT NULL,
  `nbpoints` int(11) DEFAULT '-1',
  `derniere` int(11) DEFAULT NULL,
  `mdp` varchar(30) DEFAULT '1234',
  `password` varchar(255) CHARACTER SET ascii DEFAULT '1234',
  `CodeV` varchar(64) NOT NULL,
  `verification` tinyint(4) NOT NULL DEFAULT '0',
  `tel` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `co` varchar(255) NOT NULL DEFAULT 'Aucun',
  `photo` varchar(200) NOT NULL,
  `Highlander_Insc` varchar(8) NOT NULL DEFAULT '0',
  `Highlander_Nbpart` int(11) NOT NULL DEFAULT '0',
  `Highlander_NbQual` varchar(8) NOT NULL DEFAULT '0',
  `comp1` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `joueurs`
--

INSERT INTO `joueurs` (`id`, `nom`, `droits`, `lname`, `prenom`, `fname`, `contactno`, `posting_date`, `lastip`, `nbpart`, `nbpart1`, `nbpart2`, `nbpart3`, `nbpart4`, `nbpoints`, `derniere`, `mdp`, `password`, `CodeV`, `verification`, `tel`, `email`, `co`, `photo`, `Highlander_Insc`, `Highlander_Nbpart`, `Highlander_NbQual`, `comp1`) VALUES
(1, NULL, '1', 'Anonymouspre', '-Anonyme-a', 'Anonymousnom', '01234567890', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '123456', '', 0, NULL, 'anonymous@poker31.org', 'Aucun', 't4.jpg', 'NoN', 0, '0', NULL),
(2, NULL, '1', 'Wenger', 'Franck.W', 'Franck', '0786527853', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1334', '123456', '', 1, NULL, 'wenger.franck@gmail.com', 'Aucun', '4hzaMlqZPJNvTInjX3Q5og9mOB2Gef.gif', 'NoN', 1, '1', NULL),
(3, NULL, '1', NULL, 'Ahmed', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(4, NULL, '1', NULL, 'Anais.S', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(5, NULL, '1', NULL, 'Annie.S', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 130, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'Oui', 0, '0', NULL),
(6, NULL, '1', NULL, 'Eric.L', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(7, NULL, '1', NULL, 'Gerard', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(8, NULL, '1', NULL, 'rnfloy', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(9, NULL, '1', NULL, 'Jean-Michel', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(10, NULL, '1', '', 'Michael', '', '', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(11, NULL, '1', NULL, 'Nicolas.B', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(12, NULL, '1', NULL, 'Niko', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(13, NULL, '1', NULL, 'Isabelle.A', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(14, NULL, '1', NULL, 'Alain', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(15, NULL, '1', NULL, 'Paul', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(17, NULL, '1', NULL, 'Badr.E', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(18, NULL, '1', NULL, 'Cathi', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(19, NULL, '1', NULL, 'Karl-Eddy', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(20, NULL, '1', NULL, 'Cedric.M', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(21, NULL, '1', NULL, 'Cris', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(22, NULL, '1', NULL, 'Damien.N', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(23, NULL, '1', NULL, 'Daniel', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(24, NULL, '1', NULL, 'David', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 94, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'Oui', 0, '0', NULL),
(25, NULL, '1', NULL, 'Didier.P', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(26, NULL, '1', NULL, 'Djamel', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(27, NULL, '1', NULL, 'Etienne', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(28, NULL, '1', NULL, 'Fabrice.M', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(29, NULL, '1', NULL, 'Guillaume.L', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(30, NULL, '1', NULL, 'Haythem', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(31, NULL, '1', NULL, 'Jeanmicoco', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(32, NULL, '1', NULL, 'Jerome', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(33, NULL, '1', NULL, 'Nima', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(34, NULL, '1', NULL, 'Olivier.M', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(35, NULL, '1', NULL, 'Patrick.R', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(36, NULL, '1', NULL, 'Pauline', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(38, NULL, '1', NULL, 'Stephane', NULL, '0600000000', '2023-09-16 06:07:14', '79.89.151.13', NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(39, NULL, '1', NULL, 'Stephen', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(40, NULL, '1', NULL, 'Sylvain', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(41, NULL, '1', NULL, 'Sylvia', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(42, NULL, '1', NULL, 'Thaya', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(43, NULL, '1', NULL, 'TityPunch', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(44, NULL, '1', NULL, 'Tom', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(45, NULL, '1', NULL, 'Turvy', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(46, NULL, '1', NULL, 'Vanessa', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(47, NULL, '1', NULL, 'Zach', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(48, NULL, '1', NULL, 'Nicolas.T', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(49, NULL, '1', NULL, 'Pierrik', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(50, NULL, '1', NULL, 'Benjamin', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(51, NULL, '1', NULL, 'Antoine', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 93, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'Oui', 0, '0', NULL),
(52, NULL, '1', NULL, 'Bertrand', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(53, NULL, '1', NULL, 'Christophe', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 124, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'Oui', 0, '0', NULL),
(54, NULL, '1', NULL, 'Cedric.Ru', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Ruiz', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(55, NULL, '1', NULL, 'Cristiano', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(56, NULL, '1', NULL, 'Damien.C', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(57, NULL, '1', NULL, 'Didier.F', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(58, NULL, '1', NULL, 'Emilie', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(59, NULL, '1', NULL, 'Ismael', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(60, NULL, '1', NULL, 'Kristi', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(61, NULL, '1', NULL, 'Nicko', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(62, NULL, '1', NULL, 'Nicolas.S', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(63, NULL, '1', NULL, 'Youssef', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(64, NULL, '1', NULL, 'Vincent', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(65, NULL, '1', NULL, 'Taki', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(66, NULL, '1', NULL, 'Eric.T', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(67, NULL, '1', NULL, 'Adrien', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(68, NULL, '1', NULL, 'Eric.E', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(70, NULL, '1', NULL, 'Yves', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(71, NULL, '1', NULL, 'Bertrand.G', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(72, NULL, '1', NULL, 'Yvesno', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(73, NULL, '1', NULL, 'Jay', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(74, NULL, '1', NULL, 'Tony', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(75, NULL, '1', NULL, 'Nathan', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(76, NULL, '1', NULL, 'Thomas', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(77, NULL, '1', NULL, 'Florence.G', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(78, NULL, '1', NULL, 'Lucas', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(79, NULL, '1', NULL, 'Clement', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(80, NULL, '1', NULL, 'Jp', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(81, NULL, '1', NULL, 'Tonton-JC', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(82, NULL, '1', NULL, 'Arnaud', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(83, NULL, '1', NULL, 'Antho', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(84, NULL, '1', NULL, 'Mendez', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(85, NULL, '1', NULL, 'Hassen', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(86, NULL, '1', NULL, 'Arthur', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(87, NULL, '1', NULL, 'Alexis', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(88, NULL, '1', NULL, 'Cyril', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(89, NULL, '1', NULL, 'William', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(90, NULL, '1', NULL, 'Cedric', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(91, NULL, '1', NULL, 'Lassana', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(92, NULL, '1', NULL, 'Charif', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(93, NULL, '1', NULL, 'Eddy', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(94, NULL, '1', NULL, 'Thierry', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(95, NULL, '1', NULL, 'Nolan', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(96, NULL, '1', NULL, 'Jibee', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(97, NULL, '1', NULL, 'Yohan', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(98, NULL, '1', NULL, 'Fredo', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(99, NULL, '1', NULL, 'Oulnes', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(100, NULL, '1', NULL, 'drAAgon', NULL, '0600000000', '2023-09-16 06:07:14', '37.165.186.152', NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(101, NULL, '1', NULL, 'Liam.B', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(102, NULL, '1', NULL, 'Medhi', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(103, NULL, '1', NULL, 'Bastien.F', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(104, NULL, '1', NULL, 'Manu.S', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(105, NULL, '1', NULL, 'Test', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'test', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(106, NULL, '1', NULL, 'Koum', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(107, NULL, '1', NULL, 'Sandrine', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(108, NULL, '1', NULL, 'Marlene', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(109, NULL, '1', NULL, 'Sandra', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(110, NULL, '1', NULL, 'Frizou', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(111, NULL, '1', NULL, 'Philou', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(112, NULL, '1', NULL, 'Pascal', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(113, NULL, '1', NULL, 'Faly', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(114, NULL, '1', NULL, 'Alexandre.P', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(115, NULL, '1', 'O', 'Alan.O', 'Alan', '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(116, NULL, '1', NULL, 'Ken', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(117, NULL, '1', NULL, 'Said', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(118, NULL, '1', NULL, 'Nabil', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(119, NULL, '1', NULL, 'Guy', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(120, NULL, '1', NULL, 'Lim', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(121, NULL, '1', NULL, 'Rudy', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(122, NULL, '1', NULL, 'Joss', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(123, NULL, '1', NULL, 'Harry', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(124, NULL, '1', NULL, 'Steffy', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(125, NULL, '1', NULL, 'Jesus', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(126, NULL, '1', NULL, 'Ced', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(127, NULL, '1', NULL, 'Sergio', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(128, NULL, '1', NULL, 'Sherif', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(129, NULL, '1', NULL, 'Armand', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(130, NULL, '1', NULL, 'Guillaume.B', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(132, NULL, '1', NULL, 'Grizzly', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(133, NULL, '1', NULL, 'Jonathan', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(134, NULL, '1', NULL, 'Isendrin', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(135, NULL, '1', NULL, 'Philippe', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(136, NULL, '1', NULL, 'Rino', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(137, NULL, '1', NULL, 'Walid', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(138, NULL, '1', NULL, 'Veron', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(139, NULL, '1', NULL, 'Tiken', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(140, NULL, '1', NULL, 'Fakker', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(141, NULL, '1', NULL, 'Riri', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(142, NULL, '1', NULL, 'Josiane', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(143, NULL, '1', NULL, 'Kayser', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(144, NULL, '1', NULL, 'David.B', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(145, NULL, '1', NULL, 'Esther', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(146, NULL, '1', NULL, 'Lololebeaugosse', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(147, NULL, '1', NULL, 'Selim', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(148, NULL, '1', NULL, 'Chanh', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(149, NULL, '1', NULL, 'Flo-I', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(150, NULL, '1', NULL, 'Jean-baptiste', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(151, NULL, '1', NULL, 'Jimmy', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(152, NULL, '1', NULL, 'Mooaamiiiiiie', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(153, NULL, '1', NULL, 'Sandy', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(154, NULL, '1', NULL, 'Jean-Noel', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(155, NULL, '1', NULL, 'ShimabuKuro', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(156, NULL, '1', NULL, 'Robin', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(157, NULL, '1', NULL, 'Victoria', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(158, NULL, '1', NULL, 'Vasco', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(159, NULL, '1', NULL, 'Thierry.D', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(160, NULL, '1', NULL, 'Pierre.R', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(161, NULL, '1', NULL, 'Georges.M', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(162, NULL, '1', NULL, 'Maxime.AS', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 76, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'Oui', 0, '0', NULL),
(163, NULL, '1', NULL, 'Romin.B', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(164, NULL, '1', NULL, 'Khalif', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(165, NULL, '1', NULL, 'Amine', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(166, NULL, '1', NULL, 'Francis.G', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(167, NULL, '1', NULL, 'Stephane.S', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(168, NULL, '1', NULL, 'Oliv', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(169, NULL, '1', NULL, 'Pierre-Angel', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(170, NULL, '1', NULL, 'Geoffrey', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(171, NULL, '1', NULL, 'Jean-claude.V', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(172, NULL, '1', NULL, 'Marco', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(173, NULL, '1', NULL, 'Sofian', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(174, NULL, '1', NULL, 'Jean-francois.M', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(175, NULL, '1', NULL, 'Charles.P', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(176, NULL, '1', NULL, 'Sami', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(177, NULL, '1', NULL, 'Laura.B', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(178, NULL, '1', NULL, 'Gabriel', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(179, NULL, '1', NULL, 'Colombo', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 118, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'Oui', 0, '0', NULL),
(184, NULL, '1', NULL, 'Tito', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(185, NULL, '1', NULL, 'Samantha', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(186, NULL, '1', NULL, 'Anthony', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(187, NULL, '1', NULL, 'Lulu', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(188, NULL, '1', NULL, 'Herve.L', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(189, NULL, '1', NULL, 'Herve.M', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(190, NULL, '1', NULL, 'Yann.C', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(191, NULL, '1', NULL, 'Julien.G', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(192, NULL, '1', NULL, 'Oualid.M', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(193, NULL, '1', NULL, 'Roselyne', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(194, NULL, '1', NULL, 'Stef.M', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(195, NULL, '1', NULL, 'Nicolas.G', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(196, NULL, '1', NULL, 'Jorge.B', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(197, NULL, '1', NULL, 'Lahamami', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(198, NULL, '1', NULL, 'Nicklaos', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(199, NULL, '1', NULL, 'Ingrid.S', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(200, NULL, '1', NULL, 'Manu.M', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(201, NULL, '1', NULL, 'Jerem.G', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(202, NULL, '1', NULL, 'Dimitri', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(203, NULL, '1', NULL, 'Cedric.Rou', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(204, NULL, '1', NULL, 'Lucas.G', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(206, NULL, '1', NULL, 'Bastien.D', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 74, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'Oui', 0, '0', NULL),
(208, NULL, '1', NULL, 'Joss', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(209, NULL, '1', NULL, 'Kevin', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(210, NULL, '1', NULL, 'Jacques ', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(211, NULL, '1', NULL, 'Mike', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(212, NULL, '1', NULL, 'Sebastien', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(213, NULL, '1', NULL, 'Vong', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(214, NULL, '1', NULL, 'Annie.FM', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(215, NULL, '1', NULL, 'Carole', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(216, NULL, '1', NULL, 'Cecile', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(217, NULL, '1', NULL, 'Eric.B', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(218, NULL, '1', NULL, 'Fernando', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(219, NULL, '1', NULL, 'Guylaine', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(220, NULL, '1', NULL, 'Laure', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(221, NULL, '1', NULL, 'Ludivine', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(222, NULL, '1', NULL, 'Marina', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(223, NULL, '1', NULL, 'Michel', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(224, NULL, '1', NULL, 'Tiki', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(225, NULL, '1', NULL, 'Raza', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(226, NULL, '1', NULL, 'Wiwi', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(227, NULL, '1', NULL, 'Denis', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(228, NULL, '1', NULL, 'FabK2', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(229, NULL, '1', NULL, 'Marc', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(230, NULL, '1', NULL, 'Moustafa', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(231, NULL, '1', NULL, 'Victor', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(232, NULL, '1', NULL, 'Eric.A', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(233, NULL, '1', NULL, 'Florian.A', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(234, NULL, '1', NULL, 'Mickael.G', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(235, NULL, '1', NULL, 'Billy', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(236, NULL, '1', NULL, 'GuiGui', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(237, NULL, '1', NULL, 'Fabien', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(238, NULL, '1', NULL, 'Arnaud.fm', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(239, NULL, '1', NULL, 'Annie.ger', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(240, NULL, '1', NULL, 'Cecile.fm', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(241, NULL, '1', 'Clover', '4LClover', '4L', '0600000005', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '7777', '', 0, NULL, '4LClover@poker31.org', 'Aucun', 'IMG_7632.jpeg', '', 0, '0', NULL),
(242, NULL, '2', 'Davidofff', 'Davidofff', 'Davidofff', '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '12345678', '', 1, NULL, 'davidhaik777@gmail.com', 'Aucun', 'IMG_8099.jpeg', 'NoN', 0, '0', NULL),
(243, NULL, '1', NULL, 'Isa.fm', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(244, NULL, '1', NULL, 'Bruno', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(245, NULL, '1', NULL, 'Coralie', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 103, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'Oui', 0, '0', NULL),
(246, NULL, '1', NULL, 'Pepitto', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(247, NULL, '1', NULL, 'Alex.Bel', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(248, NULL, '1', NULL, 'Alex31', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(249, NULL, '1', NULL, 'GbPok', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(250, NULL, '1', NULL, 'Annie31', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL);
INSERT INTO `joueurs` (`id`, `nom`, `droits`, `lname`, `prenom`, `fname`, `contactno`, `posting_date`, `lastip`, `nbpart`, `nbpart1`, `nbpart2`, `nbpart3`, `nbpart4`, `nbpoints`, `derniere`, `mdp`, `password`, `CodeV`, `verification`, `tel`, `email`, `co`, `photo`, `Highlander_Insc`, `Highlander_Nbpart`, `Highlander_NbQual`, `comp1`) VALUES
(251, NULL, '1', NULL, 'Nono', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(252, NULL, '1', NULL, 'Richard', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(253, NULL, '1', NULL, 'Celinette', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(254, NULL, '1', NULL, 'Bruno.S', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(255, NULL, '1', NULL, 'Eric.fm', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(256, NULL, '1', NULL, 'Jean-Michel.fm', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(257, NULL, '1', NULL, 'Romain.fm', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'NoN', 0, '0', NULL),
(258, NULL, '3', NULL, 'Patrice', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 137, NULL, '123456', '123456', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'Oui', 0, '0', NULL),
(259, NULL, '1', NULL, 'Nino', NULL, '0600000000', '2023-09-16 06:07:14', NULL, NULL, NULL, NULL, NULL, NULL, 117, NULL, '1234', '0000', '', 0, NULL, NULL, 'Aucun', '/photos/photo.jpg', 'Oui', 0, '0', NULL),
(262, NULL, '1', 'rty', 'aze', 'aze', '1234567890', '2023-09-17 06:53:20', NULL, NULL, NULL, NULL, NULL, NULL, -1, NULL, '1234', 'Kookies7*', '', 0, NULL, 'aze@rty.com', 'Aucun', '/photos/photo.jpg', '0', 0, '0', NULL),
(264, NULL, '1', 'Gland', 'Dugland', 'Du', '1234567890', '2023-09-17 07:06:03', NULL, NULL, NULL, NULL, NULL, NULL, -1, NULL, '1234', 'Kookies7*', '', 0, NULL, 'dugland@poker31.org', 'Aucun', '/photos/photo.jpg', '0', 0, '0', NULL),
(265, NULL, '2', 'Admin', 'Admin', 'Admin', '0786527853', '2023-09-17 07:16:03', NULL, NULL, NULL, NULL, NULL, NULL, -1, NULL, '1234', '123456', '', 1, NULL, 'admin@poker31.org', 'Aucun', 't1.jpg', '0', 0, '0', NULL),
(267, NULL, '1', 'Oh', 'Dieux', 'MonDieux', '0786527853', '2023-09-17 12:14:29', NULL, NULL, NULL, NULL, NULL, NULL, -1, NULL, '1234', 'test', '', 0, NULL, 'test@test.com', 'Aucun', '/photos/photo.jpg', '0', 0, '0', NULL),
(268, NULL, '1', 'Oh', 'Dieux', 'MonDieux', '', '2023-09-17 12:16:58', NULL, NULL, NULL, NULL, NULL, NULL, -1, NULL, '1234', 'test', '', 0, NULL, 'test@test.com', 'Aucun', '/photos/photo.jpg', '0', 0, '0', NULL),
(269, NULL, '1', 'speu', 'ps', 'do', '987654', '2023-09-17 12:17:20', NULL, NULL, NULL, NULL, NULL, NULL, -1, NULL, '1234', '123', '', 0, NULL, 'ti', 'Aucun', '/photos/photo.jpg', '0', 0, '0', NULL),
(271, NULL, '1', '', 'bibi', '', '', '2023-09-17 12:31:58', NULL, NULL, NULL, NULL, NULL, NULL, -1, NULL, '1234', '', '', 0, NULL, '', 'Aucun', '/photos/photo.jpg', '0', 0, '0', NULL),
(273, NULL, '1', 'pre', 'Elf', 'nom', '0123456789', '2023-09-18 08:17:29', NULL, NULL, NULL, NULL, NULL, NULL, -1, NULL, '123456', '123456', '', 0, NULL, 'elf@poker31.org', 'Aucun', '/photos/photo.jpg', '0', 0, '0', NULL),
(275, NULL, '0', NULL, 'docpseudo', NULL, '0600000000', '2023-09-21 16:26:41', NULL, NULL, NULL, NULL, NULL, NULL, -1, NULL, '1234', '1234', '', 0, NULL, NULL, 'Aucun', '', '0', 0, '0', NULL),
(276, NULL, '0', NULL, 'docpseudo2', NULL, '0600000000', '2023-09-21 16:28:20', NULL, NULL, NULL, NULL, NULL, NULL, -1, NULL, '1234', '1234', '', 0, NULL, NULL, 'Aucun', '', '0', 0, '0', NULL),
(277, NULL, '0', NULL, 'docpseudo2', NULL, '0600000000', '2023-09-21 16:28:45', NULL, NULL, NULL, NULL, NULL, NULL, -1, NULL, '1234', '1234', '', 0, NULL, NULL, 'Aucun', '', '0', 0, '0', NULL),
(278, NULL, '0', 'nom', 'docpseudo3', 'prenom', '1234567890', '2023-09-21 16:30:45', NULL, NULL, NULL, NULL, NULL, NULL, -1, NULL, '1234', '123456', '', 0, NULL, 'test@test.com', 'Aucun', '', '0', 0, '0', NULL),
(279, NULL, '0', 'nom1', 'pseudo1', 'prenom1', '1234567890', '2023-09-21 16:34:06', NULL, NULL, NULL, NULL, NULL, NULL, -1, NULL, '1234', '123456', '', 0, NULL, 'test@test.com', 'Aucun', '', '0', 0, '0', 'Traducteur'),
(280, NULL, '0', NULL, 'toto', NULL, '0600000000', '2023-10-16 08:28:40', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'toto', '1234', '', 0, NULL, NULL, 'Aucun', '', '0', 0, '0', NULL),
(281, NULL, '0', 'pierrot', 'pierrot', 'pierrot', '1234567890', '2023-10-16 13:13:49', NULL, NULL, NULL, NULL, NULL, NULL, -1, NULL, '1234', '123456', '', 0, NULL, 'pierrot@poker31.org', 'Aucun', '', '0', 0, '0', NULL),
(282, NULL, '0', 'pierrot2', 'pierrot2', 'pierrot2', '1234567890', '2023-10-16 13:21:01', NULL, NULL, NULL, NULL, NULL, NULL, -1, NULL, '1234', '123456', '', 0, NULL, 'pierrot2@poker31.org', 'Aucun', '', '0', 0, '0', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `lestables`
--

CREATE TABLE `lestables` (
  `id-table` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `taillemax` int(64) NOT NULL DEFAULT '8',
  `lieu` varchar(255) DEFAULT NULL,
  `id-siege1` int(11) NOT NULL,
  `id-siege2` int(11) NOT NULL,
  `id-siege3` int(11) NOT NULL,
  `id-siege4` int(11) NOT NULL,
  `id-siege5` int(11) NOT NULL,
  `id-siege6` int(11) NOT NULL,
  `id-siege7` int(11) NOT NULL,
  `id-siege8` int(11) NOT NULL,
  `id-siege9` int(11) NOT NULL,
  `id-siege10` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `loisirs`
--

CREATE TABLE `loisirs` (
  `id` int(8) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `commentaire` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `loisirs`
--

INSERT INTO `loisirs` (`id`, `nom`, `commentaire`) VALUES
(1, 'Informatichien', 'Devellopeur WEB'),
(27, 'Pokemon', 'Collectionneur'),
(28, 'Galeriste', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `loisirs-individu`
--

CREATE TABLE `loisirs-individu` (
  `id` int(8) NOT NULL,
  `id-lois` int(8) NOT NULL,
  `id-indiv` int(8) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `co` varchar(255) NOT NULL DEFAULT 'Inconnu'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `loisirs-individu`
--

INSERT INTO `loisirs-individu` (`id`, `id-lois`, `id-indiv`, `date`, `co`) VALUES
(73, 28, 242, '2023-10-04 06:37:45', 'Inconnu'),
(74, 28, 265, '2023-10-16 13:26:29', 'Inconnu'),
(77, 28, 1, '2023-10-17 17:46:13', 'Inconnu'),
(82, 1, 1, '2023-10-18 10:41:49', 'Inconnu'),
(87, 27, 1, '2023-10-18 10:58:12', 'Inconnu'),
(91, 27, 2, '2023-10-21 06:31:10', 'Inconnu'),
(92, 28, 241, '2023-10-23 15:31:04', 'Inconnu'),
(93, 27, 0, '2023-10-24 12:51:41', 'Inconnu'),
(94, 6, 56, '2023-10-31 16:53:51', 'Inconnu'),
(95, 6, 56, '2023-10-31 16:54:06', 'Inconnu'),
(96, 6, 56, '2023-10-31 16:54:12', 'Inconnu'),
(97, 6, 56, '2023-10-31 16:55:12', 'Inconnu'),
(98, 6, 56, '2023-10-31 17:01:47', 'Inconnu'),
(99, 3, 56, '2023-10-31 17:02:15', 'Inconnu'),
(100, 3, 56, '2023-10-31 17:05:31', 'Inconnu'),
(101, 3, 56, '2023-10-31 17:08:08', 'Inconnu'),
(102, 3, 56, '2023-10-31 17:09:54', 'Inconnu'),
(103, 3, 56, '2023-10-31 17:11:40', 'Inconnu'),
(104, 3, 56, '2023-10-31 17:14:21', 'Inconnu'),
(105, 3, 56, '2023-10-31 17:16:54', 'Inconnu'),
(106, 0, 56, '2023-10-31 17:17:23', 'Inconnu'),
(107, 3, 56, '2023-10-31 17:17:29', 'Inconnu'),
(108, 3, 56, '2023-10-31 17:20:08', 'Inconnu'),
(109, 3, 56, '2023-10-31 17:20:23', 'Inconnu'),
(110, 3, 56, '2023-10-31 17:20:29', 'Inconnu'),
(111, 3, 56, '2023-10-31 17:20:45', 'Inconnu'),
(112, 3, 56, '2023-10-31 17:21:06', 'Inconnu'),
(113, 3, 56, '2023-10-31 17:21:10', 'Inconnu'),
(114, 3, 56, '2023-10-31 17:21:31', 'Inconnu'),
(115, 3, 56, '2023-10-31 17:21:48', 'Inconnu'),
(116, 3, 56, '2023-10-31 17:22:58', 'Inconnu'),
(117, 3, 56, '2023-10-31 17:23:24', 'Inconnu'),
(118, 3, 56, '2023-10-31 17:24:27', 'Inconnu'),
(119, 3, 56, '2023-10-31 17:25:41', 'Inconnu'),
(120, 3, 56, '2023-10-31 17:27:33', 'Inconnu'),
(121, 3, 56, '2023-10-31 17:30:05', 'Inconnu'),
(122, 3, 56, '2023-10-31 17:30:58', 'Inconnu'),
(123, 3, 56, '2023-10-31 17:31:43', 'Inconnu'),
(124, 3, 56, '2023-10-31 17:32:01', 'Inconnu'),
(125, 3, 56, '2023-10-31 17:32:26', 'Inconnu'),
(126, 3, 56, '2023-10-31 17:33:55', 'Inconnu'),
(127, 3, 56, '2023-10-31 17:34:02', 'Inconnu'),
(128, 3, 56, '2023-10-31 17:34:30', 'Inconnu'),
(129, 3, 56, '2023-10-31 17:36:14', 'Inconnu'),
(130, 3, 56, '2023-10-31 17:38:05', 'Inconnu'),
(131, 3, 56, '2023-10-31 17:48:44', 'Inconnu'),
(132, 3, 56, '2023-10-31 17:49:44', 'Inconnu'),
(133, 3, 56, '2023-10-31 17:50:01', 'Inconnu'),
(134, 3, 56, '2023-10-31 17:50:38', 'Inconnu'),
(135, 3, 56, '2023-10-31 17:50:40', 'Inconnu'),
(136, 3, 56, '2023-10-31 17:56:51', 'Inconnu'),
(137, 3, 56, '2023-10-31 17:57:23', 'Inconnu'),
(138, 1026, 32, '2023-10-31 18:18:06', 'Inconnu'),
(139, 1026, 56, '2023-10-31 18:20:11', 'Inconnu'),
(140, 0, 131, '2023-10-31 21:42:51', 'Inconnu'),
(141, 1026, 131, '2023-10-31 21:43:00', 'Inconnu'),
(142, 70, 58, '2023-11-01 05:16:18', 'Inconnu'),
(143, 70, 58, '2023-11-01 05:17:01', 'Inconnu');

-- --------------------------------------------------------

--
-- Structure de la table `membres`
--

CREATE TABLE `membres` (
  `id-membre` int(11) NOT NULL,
  `pseudo` varchar(30) DEFAULT NULL,
  `droits` varchar(11) NOT NULL DEFAULT '1',
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `posting_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `association_date` date NOT NULL,
  `lastip` varchar(20) DEFAULT NULL,
  `nbpoints` int(11) DEFAULT '-1',
  `password` varchar(255) CHARACTER SET ascii DEFAULT '1234',
  `naissance_date` date NOT NULL,
  `CodeV` varchar(64) NOT NULL,
  `verification` tinyint(4) NOT NULL DEFAULT '0',
  `telephone` varchar(255) NOT NULL DEFAULT '0600000000',
  `email` varchar(30) DEFAULT NULL,
  `photo` varchar(200) NOT NULL DEFAULT 't1.jpg',
  `photo-map` varchar(255) NOT NULL DEFAULT 'url(https://poker31.org/panel/images/',
  `commentaire` int(255) NOT NULL,
  `rue` char(255) NOT NULL,
  `ville` char(255) NOT NULL,
  `longitude` double NOT NULL,
  `latitude` double NOT NULL,
  `icon` varchar(255) NOT NULL DEFAULT 'user',
  `ico-siz` float NOT NULL,
  `lien` varchar(255) NOT NULL DEFAULT '<a href="/panel/voir-membre.php?uid=',
  `lien-id` varchar(64) NOT NULL,
  `lien-texte` varchar(255) NOT NULL DEFAULT '">',
  `lien-texte-fin` varchar(255) NOT NULL DEFAULT 'Cliquer Pour Infos'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `membres`
--

INSERT INTO `membres` (`id-membre`, `pseudo`, `droits`, `fname`, `lname`, `posting_date`, `association_date`, `lastip`, `nbpoints`, `password`, `naissance_date`, `CodeV`, `verification`, `telephone`, `email`, `photo`, `photo-map`, `commentaire`, `rue`, `ville`, `longitude`, `latitude`, `icon`, `ico-siz`, `lien`, `lien-id`, `lien-texte`, `lien-texte-fin`) VALUES
(1, 'Pseudo Anonyme', '1', 'Nom Anonyme', 'Prénom Anonyme', '2023-09-16 06:07:14', '2023-12-31', NULL, 0, '123456', '1990-01-01', '', 0, '0612345678', 'anonymous@poker31.org', 't2.jpg', 'url(https://poker31.org/panel/images/t2.jpg)', 0, '8 rue de paris', 'Toulouse', 0, 0, 'user', 0, '<a href=\"/panel/voir-membre.php?id=', '', '\"><img src=\"/panel/images/t2.jpg\" width=\"150\" height=\"150\">	', 'Cliquer Pour Infos'),
(2, 'Franck.W', '1', 'Franck', 'Wenger', '2023-09-16 06:07:14', '2023-12-31', NULL, 0, '123456', '1968-06-07', '62f510c5e78676f42cea11ab193f023d', 1, '0786527853', 'wenger.franck@gmail.com', '4hzaMlqZPJNvTInjX3Q5og9mOB2Gef.gif', 'url(https://poker31.org/panel/images/4hzaMlqZPJNvTInjX3Q5og9mOB2Gef.gif)', 0, '8 Rue de la solidarité', 'Toulouse', 43.595, 1.49, 'user', 0, '<a href=\"/panel/voir-membre.php?id=', '265', '\"><img src=\"https://poker31.org/panel/images/4hzaMlqZPJNvTInjX3Q5og9mOB2Gef.gif\" width=\"175\" height=\"175\">', 'Cliquer Pour Infos'),
(3, 'Ahmed', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(4, 'Anais.S', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, 'IMG_8208.jpeg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(5, 'Annie.S', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 130, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(6, 'Eric.L', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(7, 'Gerard', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(8, 'rnfloy', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(9, 'Jean-Michel', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(10, 'Michael', '1', '', '', '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(11, 'Nicolas.B', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(12, 'Niko', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(13, 'Isabelle.A', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(14, 'Alain', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(15, 'Paul', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(17, 'Badr.E', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(18, 'Catly', '1', 'Cathy ', 'G', '2023-09-16 06:07:14', '2023-12-31', NULL, 0, '0000', '1980-01-01', '', 0, '0600000000', '', 'incoming-36165E0F-2651-4844-8809-DD4B07F81857.jpeg', '', 0, '', 'Seysses', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(19, 'Karl-Eddy', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(20, 'Cedric.M', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(21, 'Cris', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(22, 'Damien.N', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(23, 'Daniel', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(24, 'David', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 94, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(25, 'Didier.P', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(26, 'Djamel', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(27, 'Etienne', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(28, 'Fabrice.M', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(29, 'Guillaume.L', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(30, 'Haythem', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, 'highlander.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(31, 'Jeanmicoco', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(32, 'Jerome', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(33, 'Nima', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(34, 'Olivier.M', '1', 'Olivier', '', '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '1234', '1980-01-01', '', 1, '0612345678', 'olivier.m@poker31.org', 'IMG_8214.jpeg', '', 0, '', 'Tournefeuille', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(35, 'Patrick.R', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(36, 'Pauline', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(38, 'Stephane', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', '79.89.151.13', 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(39, 'Stephen', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(40, 'Sylvain', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(41, 'Sylvia', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(42, 'Thaya', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(43, 'TityPunch', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(44, 'Tom', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(45, 'Turvy', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(46, 'Vanessa', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(47, 'Zach', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(48, 'Nicolas.T', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(49, 'Pierrik', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(50, 'Benjamin', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(51, 'Antoine', '1', 'Antoine ', '', '2023-09-16 06:07:14', '0000-00-00', NULL, 93, '0000', '0000-00-00', '', 0, '0617082051', '', 'IMG_8203.jpeg', '', 0, '', 'Lézat sur lèze', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(52, 'Bertrand', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(53, 'Christophe', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 124, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(54, 'Cedric.Ru', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(55, 'Cristiano', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(56, 'Damien.C', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(57, 'Didier', '1', 'Didier', '', '2023-09-16 06:07:14', '2023-12-31', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', '', 'IMG_8185.jpeg', '', 0, '', 'Toulouse', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(58, 'Emilie', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(59, 'Ismael', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(60, 'Kristi', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(61, 'Nicko', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(62, 'Nicolas.S', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(63, 'Youssef', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(64, 'Vincent', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(65, 'Taki', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(66, 'Eric.T', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(67, 'Adrien', '1', 'Adrien', 'X', '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0611111111', '', '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(68, 'Eric.E', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(70, 'Yves', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(71, 'Bertrand.G', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(72, 'Yvesno', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(73, 'Jay', '1', 'Jay', '', '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '1234', '0000-00-00', '', 0, '0600000000', 'Jay.c@poker31.org', 'IMG_8218.jpeg', '', 0, '', 'Pechabou', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(74, 'Tony', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(75, 'Nathan', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(76, 'Thomas', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(77, 'Florence.G', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(78, 'Lucas', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(79, 'Clement', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(80, 'Jp', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(81, 'Tonton-JC', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(82, 'Arnaud', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(83, 'Antho', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(84, 'Mendez', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(85, 'Hassen', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(86, 'Arthur', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(87, 'Alexis', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(88, 'Cyril', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(89, 'William', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(90, 'Cedric', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(91, 'Lassana', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(92, 'Charif', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(93, 'Eddy', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(94, 'Thierry', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(95, 'Nolan', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(96, 'Jibee', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(97, 'Yohan', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(98, 'Fredo', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(99, 'Oulnes', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(100, 'drAAgon', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', '37.165.186.152', 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(101, 'Liam.B', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(102, 'Medhi', '1', 'Medhi', 'Azelout', '2023-09-16 06:07:14', '2023-12-31', NULL, 0, '1234', '1980-01-01', '', 1, '0600000001', 'medhi@poker31.org', 'IMG_8169.jpeg', '', 0, '', 'Colomiers', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(103, 'Bastien.F', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(104, 'Manu.S', '1', 'Manu', '', '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', '', 'IMG_8209.jpeg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(105, 'Test', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(106, 'Koum', '1', '', '', '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', '', 'crepes.jpeg', '', 0, '', 'Plaisance', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(107, 'Sandrine', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(108, 'Marlene', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(109, 'Sandra', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(110, 'Frizou', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(111, 'Philou', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(112, 'Pascal', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(113, 'Faly', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(114, 'Alexandre.P', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(115, 'Alan.O', '1', 'Alan', 'O', '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(116, 'Ken', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(117, 'Said', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(118, 'Nabil', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(119, 'Guy', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(120, 'Lim', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(121, 'Rudy', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(122, 'Joss', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(123, 'Harry', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(124, 'Steffy', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(125, 'Jesus', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(126, 'Ced', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(127, 'Sergio', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(128, 'Sherif', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(129, 'Armand', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(130, 'Guillaume.B', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(132, 'Grizzly', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(133, 'Jonathan', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(134, 'Isendrin', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(135, 'Philippe', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(136, 'Rino', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(137, 'Walid', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(138, 'Veron', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(139, 'Tiken', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(140, 'Fakker', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(141, 'Riri', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(142, 'Josiane', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(143, 'Kayser', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(144, 'David.B', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(145, 'Esther', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(146, 'Lololebeaugosse', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(147, 'Selim', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(148, 'Chanh', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(149, 'Flo-I', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(150, 'Jean-baptiste', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(151, 'Jimmy', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(152, 'Mooaamiiiiiie', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(153, 'Sandy', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(154, 'Jean-Noel', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(155, 'ShimabuKuro', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(156, 'Robin', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(157, 'Victoria', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(158, 'Vasco', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(159, 'Thierry.D', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(160, 'Pierre.R', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(161, 'Georges.M', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(162, 'Maxime.AS', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 76, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(163, 'Romin.B', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(164, 'Khalif', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(165, 'Amine', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(166, 'Francis.G', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(167, 'Stephane.S', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(168, 'Oliv', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(169, 'Pierre-Angel', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(170, 'Geoffrey', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(171, 'Jean-claude.V', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(172, 'Marco', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(173, 'Sofian', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(174, 'Jean-francois.M', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(175, 'Charles.P', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, 'IMG_8196.jpeg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(176, 'Sami', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(177, 'Laura.B', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(178, 'Gabriel', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(179, 'Colombo', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 118, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(184, 'Tito', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(185, 'Samantha', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(186, 'Anthony', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(187, 'Lulu', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(188, 'Herve.L', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(189, 'Herve.M', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(190, 'Yann.C', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(191, 'Julien.G', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(192, 'Oualid.M', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(193, 'Roselyne', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(194, 'Stef.M', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(195, 'Nicolas.G', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(196, 'Jorge.B', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(197, 'Lahamami', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(198, 'Nicklaos', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos');
INSERT INTO `membres` (`id-membre`, `pseudo`, `droits`, `fname`, `lname`, `posting_date`, `association_date`, `lastip`, `nbpoints`, `password`, `naissance_date`, `CodeV`, `verification`, `telephone`, `email`, `photo`, `photo-map`, `commentaire`, `rue`, `ville`, `longitude`, `latitude`, `icon`, `ico-siz`, `lien`, `lien-id`, `lien-texte`, `lien-texte-fin`) VALUES
(199, 'Ingrid.S', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(200, 'Manu.M', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(202, 'Dimitri', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(203, 'Cedric.Rou', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(204, 'Lucas.G', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(206, 'Bastien.D', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 74, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(208, 'Joss', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(209, 'Kevin', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(210, 'Jacques ', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(211, 'Mike', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(212, 'Sebastien', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(213, 'Vong', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(214, 'Annie.FM', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(215, 'Carole', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(216, 'Cecile', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(217, 'Eric.B', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(218, 'Fernando', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(219, 'Guylaine', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(220, 'Laure', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(221, 'Ludivine', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(222, 'Marina', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(223, 'Michel', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(224, 'Tiki', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(225, 'Raza', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(226, 'Wiwi', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(227, 'Denis', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(228, 'FabK2', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(229, 'Marc', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(230, 'Moustafa', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(231, 'Victor', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(232, 'Eric.A', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(233, 'Florian.A', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(234, 'Mickael.G', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(235, 'Billy', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(236, 'GuiGui', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(237, 'Fabien', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(238, 'Arnaud.fm', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(239, 'Annie.ger', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(240, 'Cecile.fm', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(241, '4LClover', '1', '4L', 'Clover', '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '7777', '0000-00-00', '', 0, '0600000005', '4LClover@poker31.org', 'IMG_7632.jpeg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(242, 'Davidofff', '2', 'David', 'Haik', '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '654321', '0000-00-00', '', 1, '0684747251', 'davidhaik777@gmail.com', 'IMG_8098.jpeg', '', 0, '', 'Colomiers', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(243, 'Isa.fm', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(244, 'Bruno', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(245, 'Coralie', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 103, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(246, 'Pepitto', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(247, 'Alex.Bel', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(248, 'Alex31', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(249, 'GbPok', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(250, 'Annie31', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(251, 'Nono', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(252, 'Richard', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(253, 'Celinette', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(254, 'Bruno.S', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(255, 'Eric.fm', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(256, 'Jean-Michel.fm', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(257, 'Romain.fm', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 0, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(258, 'Patrice', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 137, '123456', '0000-00-00', '', 0, '0600000000', NULL, 'IMG_8206.jpeg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(259, 'Nino', '1', NULL, NULL, '2023-09-16 06:07:14', '0000-00-00', NULL, 117, '0000', '0000-00-00', '', 0, '0600000000', NULL, '/photos/photo.jpg', '', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-activite.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(265, 'Administrateur', '2', 'prénom admin', 'nom admin', '2023-10-19 22:00:01', '2099-12-31', NULL, -1, '123456', '1980-01-01', '7fd5d45b221625a16997885b2eef4149', 1, '0712345678', 'admin@poker31.org', 't4.jpg', 'url(https://poker31.org/panel/images/t1.jpg)', 0, '8 Rue de la solidarité', 'Toulouse', 0, 0, 'user', 1.5, '<a href=\"/panel/voir-membre.php?id=', '', '\"><img src=\"/panel/images/t1.jpg\" width=\"175\" height=\"175\" text-align=\"center\">', 'Cliquer Pour Infos'),
(999, '-', '1', '', '', '1989-12-31 23:00:00', '1990-01-01', NULL, 0, '123456', '1990-01-01', '', 0, '', '', 'perso.png', 'url(https://poker31.org/panel/images/perso.png)', 0, '', '', 0, 0, 'user', 0, '<a href=\"/panel/voir-membre.php?id=', '', '\"><img src=\"/panel/images/t2.jpg\" width=\"150\" height=\"150\">	', 'Cliquer Pour Infos'),
(1012, 'test', '0', 'test', 'testn', '2023-10-24 13:34:48', '1990-01-01', NULL, 0, '123456', '1990-01-01', '', 0, '', '', 'perso.png', 'url(https://poker31.org/panel/images/', 0, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-membre.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(1013, 'Emmy', '0', 'prenom', 'nom', '2023-10-24 13:35:56', '1990-01-01', NULL, 0, '123456', '1990-01-01', '', 0, '0786123456', 'test@test.com', 'perso.png', 'url(https://poker31.org/panel/images/', 254, '', 'TOULOUSE', 0, 0, 'poker', 0, '<a href=\"/panel/voir-membre.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(1014, 'Lilou.W', '0', 'li', 'lou', '2023-10-24 13:38:38', '1990-01-01', NULL, 0, '123456', '1990-01-01', '', 0, '', '', 'perso.png', 'url(https://poker31.org/panel/images/', 254, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-membre.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(1025, 'franck wanadoo', '1', 'Franck', 'Wanadoo', '2023-10-28 10:55:50', '2023-12-31', NULL, -1, '1234', '2023-10-01', 'de79baf86fe588a1f1d5539ac2d8485f', 1, '0600000000', 'franck.wenger@wanadoo.fr', 'IMG_7906.jpeg', 'url(https://poker31.org/panel/images/', 0, '', 'Toulouse', 0, 0, 'user', 0, '<a href=\"/panel/voir-membre.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(1026, '-Frimake Emmy', '0', '', '', '2023-10-31 16:42:08', '1990-01-01', NULL, 0, '123456', '1990-01-01', '', 0, '', '', 'perso.png', 'url(https://poker31.org/panel/images/', 1015, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-membre.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(1027, '(Frimake) paul', '0', '', '', '2023-11-01 08:31:47', '1990-01-01', NULL, 0, '123456', '1990-01-01', '', 0, '', '', 'perso.png', 'url(https://poker31.org/panel/images/', 1016, '', '', 0, 0, 'poker', 0, '<a href=\"/panel/voir-membre.php?uid=', '', '\">', 'Cliquer Pour Infos'),
(1028, 'Luc', '0', 'Luc', '', '2023-11-01 10:28:40', '1990-01-01', NULL, 0, '123456', '1990-01-01', '', 0, '', '', 'IMG_8199.jpeg', 'url(https://poker31.org/panel/images/', 1017, '', 'Muret', 0, 0, 'poker', 0, '<a href=\"/panel/voir-membre.php?uid=', '', '\">', 'Cliquer Pour Infos');

-- --------------------------------------------------------

--
-- Structure de la table `participation`
--

CREATE TABLE `participation` (
  `id-participation` int(11) NOT NULL,
  `id-membre` int(11) NOT NULL,
  `id-membre-vainqueur` int(11) NOT NULL,
  `id-activite` int(11) NOT NULL,
  `id-siege` int(11) DEFAULT NULL,
  `id-table` int(11) DEFAULT NULL,
  `id-challenge` int(11) NOT NULL,
  `option` varchar(20) NOT NULL DEFAULT 'Réservation',
  `ordre` int(11) NOT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  `valide` varchar(11) NOT NULL DEFAULT 'Actif',
  `commentaire` varchar(255) DEFAULT 'Aucun',
  `classement` int(11) NOT NULL DEFAULT '0',
  `points` int(11) NOT NULL DEFAULT '0',
  `gain` int(11) NOT NULL DEFAULT '0',
  `ds` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ip-ins` varchar(20) NOT NULL,
  `ip-mod` varchar(20) NOT NULL,
  `ip-sup` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `participation`
--

INSERT INTO `participation` (`id-participation`, `id-membre`, `id-membre-vainqueur`, `id-activite`, `id-siege`, `id-table`, `id-challenge`, `option`, `ordre`, `position`, `valide`, `commentaire`, `classement`, `points`, `gain`, `ds`, `ip-ins`, `ip-mod`, `ip-sup`) VALUES
(336, 67, 0, 30, 2, 1, 0, 'Inscrit', 1, 2, 'Actif', '', 0, 0, 0, '2023-11-08 15:34:12', '1', '2', '3'),
(337, 4, 0, 30, 1, 1, 0, 'Elimine', 2, 1, 'Actif', '', 0, 0, 0, '2023-11-08 15:23:38', '1', '2', '3'),
(338, 5, 0, 30, 6, 1, 0, 'Elimine', 3, 6, 'Actif', NULL, 0, 0, 0, '2023-11-08 15:16:45', '', '', ''),
(339, 114, 0, 30, 1, 1, 0, 'Elimine', 4, 1, 'Actif', '', 0, 0, 0, '2023-11-08 15:33:49', '1', '2', '3'),
(340, 100, 0, 30, 7, 1, 0, 'Elimine', 5, 7, 'Actif', '', 0, 0, 0, '2023-11-09 17:54:23', '1', '2', '3'),
(341, 18, 0, 30, 4, 1, 0, 'Elimine', 6, 4, 'Actif', NULL, 0, 0, 0, '2023-11-08 15:57:18', '', '', ''),
(342, 265, 0, 30, 4, 1, 0, 'Elimine', 7, 4, 'Actif', '', 0, 0, 0, '2023-11-09 07:18:17', '1', '2', '3'),
(343, 235, 0, 30, 3, 1, 0, 'Elimine', 8, 3, 'Actif', NULL, 0, 0, 0, '2023-11-08 16:30:06', '', '', ''),
(344, 115, 0, 30, 3, 1, 0, 'Reservation', 9, 3, 'Actif', NULL, 0, 0, 0, '2023-11-08 16:30:26', '', '', ''),
(345, 2, 0, 36, 1, 1, 0, 'Reservation', 1, 1, 'Actif', NULL, 0, 0, 0, '2023-11-09 04:27:04', '', '', ''),
(346, 34, 0, 32, 1, 1, 0, 'Reservation', 1, 1, 'Actif', NULL, 0, 0, 0, '2023-11-09 09:46:17', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `passager`
--

CREATE TABLE `passager` (
  `numpiece` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `sexe` varchar(15) NOT NULL,
  `choix_class` varchar(20) NOT NULL DEFAULT 'RÃ©servÃ©e',
  `code_vol` varchar(30) NOT NULL,
  `id` int(11) NOT NULL,
  `etat` varchar(11) NOT NULL DEFAULT 'Actif',
  `ip` varchar(20) NOT NULL,
  `ipmod` varchar(20) NOT NULL,
  `ipsup` varchar(20) NOT NULL,
  `co` varchar(255) DEFAULT NULL,
  `ds` int(11) DEFAULT NULL,
  `clas` int(11) NOT NULL DEFAULT '0',
  `effect` int(11) NOT NULL DEFAULT '0',
  `points` int(11) NOT NULL DEFAULT '0',
  `recave` int(11) NOT NULL DEFAULT '0',
  `gain` int(11) NOT NULL DEFAULT '0',
  `id_vol` int(11) NOT NULL DEFAULT '0',
  `id_joueur` int(11) NOT NULL DEFAULT '0',
  `Highlander_Insc` varchar(8) CHARACTER SET ascii NOT NULL DEFAULT '0',
  `Highlander_Nbpart` int(11) NOT NULL DEFAULT '0',
  `Highlander_NbQual` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `passager`
--

INSERT INTO `passager` (`numpiece`, `nom`, `prenom`, `sexe`, `choix_class`, `code_vol`, `id`, `etat`, `ip`, `ipmod`, `ipsup`, `co`, `ds`, `clas`, `effect`, `points`, `recave`, `gain`, `id_vol`, `id_joueur`, `Highlander_Insc`, `Highlander_Nbpart`, `Highlander_NbQual`) VALUES
(1, '', 'Franck.W', '', 'Réservée', 'bob', 4, 'Actif', '2a04:cec0:f000:af28:', '2a04:cec0:f000:af28:', '2a04:cec0:f000:af28:', '', 1695059610, 0, 0, 0, 0, 0, 0, 0, 'Oui', 0, 0),
(2, '', 'Adrien', '', 'Réservée', 'bob', 5, 'Actif', '2a04:cec0:f000:af28:', '2a04:cec0:f000:af28:', '2a04:cec0:f000:af28:', '', 1695059626, 0, 0, 0, 0, 0, 0, 0, 'Non', 0, 0),
(3, '', 'Alexis', '', 'Option', 'bob', 6, 'Actif', '2a04:cec0:f000:af28:', '2a04:cec0:f000:af28:', '2a04:cec0:f000:af28:', '', 1695059638, 0, 0, 0, 0, 0, 0, 0, 'Non', 0, 0),
(4, '', 'Alexandre.P', '', 'Réservée', 'bob', 7, 'Sup', '2a04:cec0:f000:af6b:', '2a04:cec0:f000:af6b:', '2a04:cec0:f000:af6b:', '', 1695093759, 0, 0, 0, 0, 0, 0, 0, 'Non', 0, 0),
(4, '', 'Alexandre.P', '', 'Réservée', 'bob', 8, 'Sup', '2a04:cec0:f000:af6b:', '2a04:cec0:f000:af6b:', '2a04:cec0:f000:af6b:', '', 1695093819, 0, 0, 0, 0, 0, 0, 0, 'Non', 0, 0),
(4, '', 'Alexandre.P', '', 'Réservée', 'bob', 9, 'Sup', '2a04:cec0:f000:af6b:', '2a04:cec0:f000:af6b:', '2a04:cec0:f000:af6b:', '', 1695093844, 0, 0, 0, 0, 0, 0, 0, 'Non', 0, 0),
(5, '', 'Alexandre.P', '', 'Réservée', 'bob', 10, 'Sup', '2a04:cec0:f000:af6b:', '2a04:cec0:f000:af6b:', '2a04:cec0:f000:af6b:', '', 1695093919, 0, 0, 0, 0, 0, 0, 0, 'Non', 0, 0),
(4, '', 'Dimitri', '', 'Option', 'bob', 11, 'Sup', '2a04:cec0:f000:af6b:', '2a04:cec0:f000:af6b:', '2a04:cec0:f000:af6b:', '', 1695096683, 0, 0, 0, 0, 0, 0, 0, 'Oui', 0, 0),
(4, '', 'Dimitri', '', 'Option', 'bob', 12, 'Sup', '2a04:cec0:f000:af6b:', '2a04:cec0:f000:af6b:', '2a04:cec0:f000:af6b:', '', 1695096964, 0, 0, 0, 0, 0, 0, 0, 'Oui', 0, 0),
(5, '', 'Dimitri', '', 'Option', 'bob', 13, 'Sup', '2a04:cec0:f000:af6b:', '2a04:cec0:f000:af6b:', '2a04:cec0:f000:af6b:', '', 1695097013, 0, 0, 0, 0, 0, 0, 0, 'Oui', 0, 0),
(1, '', 'Antoine', '', 'Réservée', 'Antoine-1', 14, 'Actif', '2a01:e0a:c37:c9a0:d1', '2a04:cec0:f000:af28:', '2a01:e0a:c37:c9a0:d1', 'Repas', 1695022640, 0, 1, 0, 0, 0, 0, 0, 'Non', 0, 0),
(1, '', '4LClover', '', 'Réservée', 'Antoine-1', 15, 'Actif', '2a01:e0a:c37:c9a0:d1', '2a01:e0a:c37:c9a0:d1', '2a01:e0a:c37:c9a0:d1', '', 1695023162, 0, 0, 0, 0, 0, 0, 0, 'Oui', 0, 0),
(3, '', 'Elf', '', 'Option', 'Antoine-1', 20, 'Actif', '2a04:cec0:f000:af28:', '2a04:cec0:f000:af28:', '2a04:cec0:f000:af28:', '', 1695025219, 0, 3, 0, 0, 0, 0, 0, 'Non', 0, 0),
(4, 'Annie.FM', 'Annie.FM', '', 'Option', 'Antoine-1', 21, 'Actif', '2a04:cec0:f000:af6b:', '2a04:cec0:f000:af6b:', '2a04:cec0:f000:af6b:', '', 1695141347, 0, 5, 0, 0, 0, 0, 0, 'Non', 0, 0),
(5, 'Amine', 'Amine', '', 'Réservée', 'Antoine-1', 22, 'Sup', '2a04:cec0:f000:af6b:', '2a04:cec0:f000:af6b:', '2a04:cec0:f000:af6b:', '', 1695141355, 0, 0, 0, 0, 0, 0, 0, 'Non', 0, 0),
(5, 'Amine', 'Amine', '', 'Réservée', 'Antoine-1', 23, 'Sup', '2a04:cec0:f000:af6b:', '2a04:cec0:f000:af6b:', '2a04:cec0:f000:af6b:', '', 1695141423, 0, 0, 0, 0, 0, 0, 0, 'Non', 0, 0),
(6, 'Amine', 'Amine', '', 'Réservée', 'Antoine-1', 24, 'Sup', '2a04:cec0:f000:af6b:', '2a04:cec0:f000:af6b:', '2a04:cec0:f000:af6b:', '', 1695141499, 0, 0, 0, 0, 0, 0, 0, 'Non', 0, 0),
(7, 'Amine', 'Amine', '', 'Réservée', 'Antoine-1', 25, 'Sup', '2a04:cec0:f000:af6b:', '2a04:cec0:f000:af6b:', '2a04:cec0:f000:af6b:', '', 1695141524, 0, 0, 0, 0, 0, 0, 0, 'Non', 0, 0),
(8, 'Amine', 'Amine', '', 'Réservée', 'Antoine-1', 26, 'Sup', '2a04:cec0:f000:af6b:', '2a04:cec0:f000:af6b:', '2a04:cec0:f000:af6b:', '', 1695141561, 0, 0, 0, 0, 0, 0, 0, 'Non', 0, 0),
(5, 'Anas', 'Anas', '', 'Option', 'Antoine-1', 27, 'Actif', '2a04:cec0:f000:af6b:', '2a04:cec0:f000:af6b:', '2a04:cec0:f000:af6b:', '', 1695142180, 0, 0, 0, 0, 0, 0, 0, 'Non', 0, 0),
(6, '-Anonyme-', '-Anonyme-', '', 'Réservée', 'Antoine-1', 28, 'Actif', '2a04:cec0:f000:af6b:', '2a04:cec0:f000:af6b:', '2a04:cec0:f000:af6b:', 'frw', 1695142221, 0, 0, 0, 0, 0, 0, 0, 'Non', 0, 0),
(7, '-Anonyme-', '-Anonyme-', '', 'Réservée', 'Antoine-1', 29, 'Actif', '2a04:cec0:f000:af6b:', '2a04:cec0:f000:af6b:', '2a04:cec0:f000:af6b:', 'bibi', 1695142247, 0, 0, 0, 0, 0, 0, 0, 'Non', 0, 0),
(8, '-Anonyme-', '-Anonyme-', '', 'Réservée', 'Antoine-1', 30, 'Actif', '2a04:cec0:f000:af6b:', '2a04:cec0:f000:af6b:', '2a04:cec0:f000:af6b:', 'bibi', 1695147776, 0, 0, 0, 0, 0, 0, 0, 'Non', 0, 0),
(4, '4LClover', '4LClover', '', 'Réservée', 'bob', 31, 'Sup', '2a04:cec0:1901:4380:', '2a04:cec0:1901:4380:', '2a04:cec0:1901:4380:', '', 1695184176, 0, 0, 0, 0, 0, 0, 0, 'Non', 0, 0),
(9, 'Anas', 'Anas', '', 'Réservée', 'Antoine-1', 32, 'Actif', '2a04:cec0:f000:a035:', '2a04:cec0:f000:a035:', '2a04:cec0:f000:a035:', '', 1695361953, 0, 0, 0, 0, 0, 0, 0, 'Non', 0, 0),
(10, 'Franck.W', 'Franck.W', '', 'Réservée', 'Cashgame Mehdi', 33, 'Actif', '2a04:cec0:1901:eef:9', '2a04:cec0:1901:eef:9', '2a04:cec0:1901:eef:9', '', 1696244456, 0, 0, 0, 0, 0, 36, 2, 'Non', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `register`
--

CREATE TABLE `register` (
  `ID` int(11) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `CodeV` varchar(255) NOT NULL,
  `verification` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `register`
--

INSERT INTO `register` (`ID`, `Username`, `email`, `Password`, `CodeV`, `verification`) VALUES
(3, 'ad', 'admin@poker31.org', '123456', 'c7798b454a5dce9de1e61f501b191834', 1),
(21, 'Aymane00', 'wenger.franck@gmail.com', '7777', '214e622ed6774c87b561fe3ae3f9b126', 0),
(22, '', '', 'd41d8cd98f00b204e9800998ecf8427e', 'c7798b454a5dce9de1e61f501b191834', 0);

-- --------------------------------------------------------

--
-- Structure de la table `resultats`
--

CREATE TABLE `resultats` (
  `id` int(11) NOT NULL,
  `id_partie` int(11) NOT NULL,
  `id_joueur` int(11) NOT NULL,
  `classement` int(11) NOT NULL,
  `effectif` int(11) NOT NULL,
  `points` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `resultats`
--

INSERT INTO `resultats` (`id`, `id_partie`, `id_joueur`, `classement`, `effectif`, `points`) VALUES
(6, 6, 39, 1, 16, 30);

-- --------------------------------------------------------

--
-- Structure de la table `siege`
--

CREATE TABLE `siege` (
  `id-siege` int(11) NOT NULL,
  `dispo` int(11) NOT NULL DEFAULT '1',
  `id-membre` int(11) NOT NULL DEFAULT '999',
  `commentaire` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `structure-buyin`
--

CREATE TABLE `structure-buyin` (
  `id-structure-buyin` int(11) NOT NULL,
  `buyin` int(11) NOT NULL DEFAULT '10',
  `rake` int(11) NOT NULL DEFAULT '0',
  `id-stricture-rake` int(11) NOT NULL DEFAULT '1',
  `bounty` int(11) NOT NULL DEFAULT '0',
  `nb-recave` int(11) NOT NULL DEFAULT '0',
  `nb-Jetons` int(11) NOT NULL DEFAULT '25000',
  `bonus-nb-jetons` int(11) NOT NULL DEFAULT '0',
  `Addon` int(11) NOT NULL DEFAULT '0',
  `Addon-nb-jetons` int(11) NOT NULL DEFAULT '25000',
  `ante` int(11) NOT NULL DEFAULT '0',
  `id-structure-ante` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `structure-buyin`
--

INSERT INTO `structure-buyin` (`id-structure-buyin`, `buyin`, `rake`, `id-stricture-rake`, `bounty`, `nb-recave`, `nb-Jetons`, `bonus-nb-jetons`, `Addon`, `Addon-nb-jetons`, `ante`, `id-structure-ante`) VALUES
(1, 10, 5, 1, 0, 2, 30000, 5000, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `t-map`
--

CREATE TABLE `t-map` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `lat` float NOT NULL,
  `lng` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t-map`
--

INSERT INTO `t-map` (`id`, `nom`, `description`, `lat`, `lng`) VALUES
(1, 'poker', 'poker', 1.42556, 43.6084);

-- --------------------------------------------------------

--
-- Structure de la table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'admin', 'admin', 1234567890, 'franck.wenger@wanadoo.fr', 'b59c67bf196a4758191e42f76670ceba', '2022-04-20 19:38:00');

-- --------------------------------------------------------

--
-- Structure de la table `tblanimal`
--

CREATE TABLE `tblanimal` (
  `ID` int(10) NOT NULL,
  `AnimalName` varchar(200) DEFAULT NULL,
  `CageNumber` int(10) DEFAULT NULL,
  `FeedNumber` varchar(200) DEFAULT NULL,
  `Breed` varchar(200) DEFAULT NULL,
  `AnimalImage` varchar(200) DEFAULT NULL,
  `Description` mediumtext,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `tblanimal`
--

INSERT INTO `tblanimal` (`ID`, `AnimalName`, `CageNumber`, `FeedNumber`, `Breed`, `AnimalImage`, `Description`, `CreationDate`) VALUES
(1, 'Giraffe', 12300, 'FN-123', 'Masai giraffe', 'afadf1ddb224aef8a213e08e5cd728c01695109083.jpg', 'The Masai giraffe (Giraffa camelopardalis tippelskirchii), also spelled Maasai giraffe, also called Kilimanjaro giraffe, is the largest subspecies of giraffe. It is native to East Africa. The Masai giraffe can be found in central and southern Kenya and in Tanzania.', '2023-09-19 07:38:03'),
(2, 'Giraffe', 12301, 'F-5688', 'Reticulated giraffe', '7fdc1a630c238af0815181f9faa190f51596609868.jpg', 'The reticulated giraffe (Giraffa camelopardalis reticulata), also known as the Somali giraffe, is a subspecies of giraffe native to the Horn of Africa. It lives in Somalia, southern Ethiopia, and northern Kenya. There are approximately 8,500 individuals living in the wild.', '2022-05-04 16:30:00'),
(3, 'Tiger', 12302, 'FN-809', 'Bengal Tiger', 'e692bd84570d9f467b75af761bf15c7c1596609789.jpg', 'The Bengal tiger is a tiger from a specific population of the Panthera tigris tigris subspecies that is native to the Indian subcontinent. It is threatened by poaching, loss, and fragmentation of habitat, and was estimated at comprising fewer than 2,500 individuals by 2011.', '2022-05-04 16:30:00'),
(4, 'Tiger', 12303, 'FN-798', ' Indochinese Tiger', '031a51aa205bd3138f7afeb0d86999e51596611280.png', 'The Indochinese tiger is a tiger from a specific population of the Panthera tigris tigris subspecies that is native to Southeast Asia. This population occurs in Myanmar, Thailand, Laos, Vietnam, Cambodia and southwestern China.', '2022-05-04 16:30:00'),
(5, 'Tiger', 12304, 'FN-787', 'Siberian Tiger', '1e6ae4ada992769567b71815f124fac51596609708.jpg', 'The Siberian tiger is a tiger from a specific population of the Panthera tigris tigris subspecies that is native to the Russian Far East, Northeast China, and possibly North Korea. It once ranged throughout the Korean Peninsula, north China, Russian Far East, and eastern Mongolia.', '2022-05-04 16:30:00'),
(6, 'Tiger', 12305, 'FN-345', 'Indochinese Tiger', '37b3f2f8b979f990fbe8bbf02fb87ddb1596609488.jpg', 'The Indochinese tiger is a tiger from a specific population of the Panthera tigris tigris subspecies that is native to Southeast Asia. This population occurs in Myanmar, Thailand, Laos, Vietnam, Cambodia and southwestern China.', '2022-05-04 16:30:00'),
(7, 'Bear', 12307, 'FN-0123', 'Sloth Bear', 'efc1a80c391be252d7d777a437f868701596611141.jpg', 'The sloth bear (Melursus ursinus) is a myrmecophagous bear species native to the Indian subcontinent. It feeds on fruits, ants and termites. It is listed as Vulnerable on the IUCN Red List, mainly because of habitat loss and degradation.', '2022-05-04 16:30:00'),
(8, 'Bear', 12308, 'FN-090', 'Sun Bear', '0e8a4b9fa5f8e6ef9518674474249cc91695110790.jpg', 'The sun bear (Helarctos malayanus) is a species in the family Ursidae occurring in the tropical forests of Southeast Asia. It is the smallest bear, standing nearly 70 centimetres (28 inches) at the shoulder and weighing 25–65 kilograms (55–143 pounds). It is stockily built, with large paws, strongly curved claws, small rounded ears and a short snout. The fur is generally jet-black, but can vary from grey to red. Sun bears get their name from the characteristic orange to cream coloured chest patch. Its unique morphology—inward-turned front feet, flattened chest, powerful forelimbs with large claws—suggests adaptations for climbing.', '2023-09-19 08:06:30');

-- --------------------------------------------------------

--
-- Structure de la table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `BookingNumber` bigint(12) DEFAULT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `BookingNumber`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`, `LastUpdationDate`) VALUES
(1, 123456789, 'test@gmail.com', 1, '2020-07-07', '2020-07-09', 'What  is the cost?', 1, '2020-07-07 12:03:09', NULL),
(2, 987456321, 'test@gmail.com', 4, '2020-07-19', '2020-07-24', 'hfghg', 1, '2020-07-09 15:49:21', '2020-07-11 10:20:57');

-- --------------------------------------------------------

--
-- Structure de la table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Maruti', '2017-06-18 14:24:34', '2017-06-19 04:42:23'),
(2, 'BMW', '2017-06-18 14:24:50', NULL),
(3, 'Audi', '2017-06-18 14:25:03', NULL),
(4, 'Nissan', '2017-06-18 14:25:13', NULL),
(5, 'Toyota', '2017-06-18 14:25:24', NULL),
(7, 'Volkswagon', '2017-06-19 04:22:13', '2020-07-07 12:14:09');

-- --------------------------------------------------------

--
-- Structure de la table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `AdminRemark` mediumtext,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(1, 'Anuj kumar', 'anujk30@test.com', 1425362514, 'This is for testing purposes.   This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.', '2022-10-30 16:52:03', NULL, NULL, NULL),
(2, 'Anuj kumar', 'ak@gmail.com', 1111122233, 'This is for testing', '2022-11-06 13:13:41', 'Contact the patient', '2022-11-06 13:13:57', 1);

-- --------------------------------------------------------

--
-- Structure de la table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'J&K Block, Laxmi Nagar', 'info@gmail.com', '8974561236');

-- --------------------------------------------------------

--
-- Structure de la table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Kunal ', 'kunal@gmail.com', '7977779798', 'I want to know you brach in Chandigarh?', '2020-07-07 07:34:51', 1);

-- --------------------------------------------------------

--
-- Structure de la table `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`) VALUES
(1, 1, '80/120', '120', '85', '98', 'Test', '2022-11-06 13:19:41'),
(2, 1, '777', '888', '57', '37.2', '555', '2023-09-20 10:17:22');

-- --------------------------------------------------------

--
-- Structure de la table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About us', 'We understand that running your business is hard work. This is a game-changer when it comes to family activity center software. Clubspeed develops and adapts our solution specifically for the needs of your business; simply sit back, relax, and let us do all the heavy lifting. Then the fun will truly begin!....<div><br></div>', NULL, NULL, '2023-09-25 09:42:43'),
(2, 'contactus', 'Contact Us', '#890 CFG Apartment, Mayur Vihar, Delhi-India.', 'info@gmail.com', 1111111111, '2020-08-12 00:59:43');

-- --------------------------------------------------------

--
-- Structure de la table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '<P align=justify><FONT size=2><STRONG><FONT color=#990000>(1) ACCEPTANCE OF TERMS</FONT><BR><BR></STRONG>Welcome to Yahoo! India. 1Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: <A href=\"http://in.docs.yahoo.com/info/terms/\">http://in.docs.yahoo.com/info/terms/</A>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </FONT><A href=\"http://in.docs.yahoo.com/info/terms/\"><FONT size=2>http://in.docs.yahoo.com/info/terms/</FONT></A><FONT size=2>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </FONT><A href=\"http://in.docs.yahoo.com/info/terms/\"><FONT size=2>http://in.docs.yahoo.com/info/terms/</FONT></A><FONT size=2>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>'),
(2, 'Privacy Policy', 'privacy', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span>'),
(3, 'About Us ', 'aboutus', '<span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.3333px;\">We offer a varied fleet of cars, ranging from the compact. All our vehicles have air conditioning, &nbsp;power steering, electric windows. All our vehicles are bought and maintained at official dealerships only. Automatic transmission cars are available in every booking class.&nbsp;</span><span style=\"color: rgb(52, 52, 52); font-family: Arial, Helvetica, sans-serif;\">As we are not affiliated with any specific automaker, we are able to provide a variety of vehicle makes and models for customers to rent.</span><div><span style=\"color: rgb(62, 62, 62); font-family: &quot;Lucida Sans Unicode&quot;, &quot;Lucida Grande&quot;, sans-serif; font-size: 11px;\">ur mission is to be recognised as the global leader in Car Rental for companies and the public and private sector by partnering with our clients to provide the best and most efficient Cab Rental solutions and to achieve service excellence.</span><span style=\"color: rgb(52, 52, 52); font-family: Arial, Helvetica, sans-serif;\"><br></span></div>'),
(11, 'FAQs', 'faqs', '																														<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Address------Test &nbsp; &nbsp;dsfdsfds</span>');

-- --------------------------------------------------------

--
-- Structure de la table `tblpatient`
--

CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(1, 1, 'Amit Kumar', 1231231230, 'amitk@gmail.com', 'male', 'New Delhi india', 35, 'NA', '2022-11-06 13:18:31', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(4, 'harish@gmail.com', '2020-07-07 07:26:21'),
(5, 'kunal@gmail.com', '2020-07-07 07:35:07');

-- --------------------------------------------------------

--
-- Structure de la table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(1, 'test@gmail.com', 'I am satisfied with their service great job', '2020-07-07 12:30:12', 1);

-- --------------------------------------------------------

--
-- Structure de la table `tblticforeigner`
--

CREATE TABLE `tblticforeigner` (
  `ID` int(10) NOT NULL,
  `TicketID` varchar(200) DEFAULT NULL,
  `visitorName` varchar(250) DEFAULT NULL,
  `NoAdult` int(10) DEFAULT NULL,
  `NoChildren` int(10) DEFAULT NULL,
  `AdultUnitprice` varchar(50) DEFAULT NULL,
  `ChildUnitprice` varchar(50) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tblticforeigner`
--

INSERT INTO `tblticforeigner` (`ID`, `TicketID`, `visitorName`, `NoAdult`, `NoChildren`, `AdultUnitprice`, `ChildUnitprice`, `PostingDate`) VALUES
(3, '425693290', 'JohnDoe', 6, 3, '1100', '800', '2022-05-25 14:43:43');

-- --------------------------------------------------------

--
-- Structure de la table `tblticindian`
--

CREATE TABLE `tblticindian` (
  `ID` int(10) NOT NULL,
  `TicketID` varchar(100) NOT NULL,
  `visitorName` varchar(255) DEFAULT NULL,
  `NoAdult` int(10) DEFAULT NULL,
  `NoChildren` int(10) DEFAULT NULL,
  `AdultUnitprice` varchar(50) DEFAULT NULL,
  `ChildUnitprice` varchar(50) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tblticindian`
--

INSERT INTO `tblticindian` (`ID`, `TicketID`, `visitorName`, `NoAdult`, `NoChildren`, `AdultUnitprice`, `ChildUnitprice`, `PostingDate`) VALUES
(2, '911666414', 'Atul singh', 2, 0, '350', '80', '2022-05-24 23:39:41'),
(3, '562063870', 'Anuj kumar', 4, 1, '300', '80', '2022-05-25 14:43:11');

-- --------------------------------------------------------

--
-- Structure de la table `tbltickettype`
--

CREATE TABLE `tbltickettype` (
  `ID` int(10) NOT NULL,
  `TicketType` varchar(200) DEFAULT NULL,
  `Price` varchar(50) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbltickettype`
--

INSERT INTO `tbltickettype` (`ID`, `TicketType`, `Price`, `CreationDate`) VALUES
(1, 'Normal Adult', '300', '2022-05-30 04:42:56'),
(2, 'Normal Child', '80', '2022-05-30 04:42:27'),
(3, 'Foreigner Adult', '1100', '2022-05-30 04:42:16'),
(4, 'Foreigner Child', '800', '2022-05-30 04:42:38');

-- --------------------------------------------------------

--
-- Structure de la table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(1, 'Test', 'test@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '6465465465', '', 'L-890, Gaur City Ghaziabad', 'Ghaziabad', 'India', '2020-07-07 12:00:49', '2020-07-12 03:44:29');

-- --------------------------------------------------------

--
-- Structure de la table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(1, 'Maruti Suzuki Wagon R', 1, 'Maruti Wagon R Latest Updates\r\n\r\nMaruti Suzuki has launched the BS6 Wagon R S-CNG in India. The LXI CNG and LXI (O) CNG variants now cost Rs 5.25 lakh and Rs 5.32 lakh respectively, up by Rs 19,000. Maruti claims a fuel economy of 32.52km per kg. The CNG Wagon R’s continuation in the BS6 era is part of the carmaker’s ‘Mission Green Million’ initiative announced at Auto Expo 2020.\r\n\r\nPreviously, the carmaker had updated the 1.0-litre powertrain to meet BS6 emission norms. It develops 68PS of power and 90Nm of torque, same as the BS4 unit. However, the updated motor now returns 21.79 kmpl, which is a little less than the BS4 unit’s 22.5kmpl claimed figure. Barring the CNG variants, the prices of the Wagon R 1.0-litre have been hiked by Rs 8,000.', 500, 'Petrol', 2019, 5, 'rear-3-4-left-589823254_930x620.jpg', 'tail-lamp-1666712219_930x620.jpg', 'rear-3-4-right-520328200_930x620.jpg', 'steering-close-up-1288209207_930x620.jpg', 'boot-with-standard-luggage-202327489_930x620.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-07-07 05:04:35', '2020-07-07 05:27:08'),
(2, 'BMW 5 Series', 2, 'BMW 5 Series price starts at ? 55.4 Lakh and goes upto ? 68.39 Lakh. The price of Petrol version for 5 Series ranges between ? 55.4 Lakh - ? 60.89 Lakh and the price of Diesel version for 5 Series ranges between ? 60.89 Lakh - ? 68.39 Lakh.', 1000, 'Petrol', 2018, 5, 'BMW-5-Series-Exterior-102005.jpg', 'BMW-5-Series-New-Exterior-89729.jpg', 'BMW-5-Series-Exterior-102006.jpg', 'BMW-5-Series-Interior-102021.jpg', 'BMW-5-Series-Interior-102022.jpg', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2020-07-07 05:12:02', '2020-07-07 05:27:44'),
(3, 'Audi Q8', 3, 'As per ARAI, the mileage of Q8 is 0 kmpl. Real mileage of the vehicle varies depending upon the driving habits. City and highway mileage figures also vary depending upon the road conditions.', 3000, 'Petrol', 2017, 5, 'audi-q8-front-view4.jpg', '1920x1080_MTC_XL_framed_Audi-Odessa-Armaturen_Spiegelung_CC_v05.jpg', 'audi1.jpg', '1audiq8.jpg', 'audi-q8-front-view4.jpeg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-07-07 05:19:21', '2020-07-07 05:28:02'),
(4, 'Nissan Kicks', 4, 'Latest Update: Nissan has launched the Kicks 2020 with a new turbocharged petrol engine. You can read more about it here.\r\n\r\nNissan Kicks Price and Variants: The Kicks is available in four variants: XL, XV, XV Premium, and XV Premium(O).', 800, 'Petrol', 2020, 5, 'front-left-side-47.jpg', 'kicksmodelimage.jpg', 'download.jpg', 'kicksmodelimage.jpg', '', 1, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, '2020-07-07 05:25:28', NULL),
(5, 'Nissan GT-R', 4, ' The GT-R packs a 3.8-litre V6 twin-turbocharged petrol, which puts out 570PS of max power at 6800rpm and 637Nm of peak torque. The engine is mated to a 6-speed dual-clutch transmission in an all-wheel-drive setup. The 2+2 seater GT-R sprints from 0-100kmph in less than 3', 2000, 'Petrol', 2019, 5, 'Nissan-GTR-Right-Front-Three-Quarter-84895.jpg', 'Best-Nissan-Cars-in-India-New-and-Used-1.jpg', '2bb3bc938e734f462e45ed83be05165d.jpg', '2020-nissan-gtr-rakuda-tan-semi-aniline-leather-interior.jpg', 'images.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-07-07 05:34:17', NULL),
(6, 'Nissan Sunny 2020', 4, 'Value for money product and it was so good It is more spacious than other sedans It looks like a luxurious car.', 400, 'CNG', 2018, 5, 'Nissan-Sunny-Right-Front-Three-Quarter-48975_ol.jpg', 'images (1).jpg', 'Nissan-Sunny-Interior-114977.jpg', 'nissan-sunny-8a29f53-500x375.jpg', 'new-nissan-sunny-photo.jpg', 1, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-07-07 07:12:49', NULL),
(7, 'Toyota Fortuner', 5, 'Toyota Fortuner Features: It is a premium seven-seater SUV loaded with features such as LED projector headlamps with LED DRLs, LED fog lamp, and power-adjustable and foldable ORVMs. Inside, the Fortuner offers features such as power-adjustable driver seat, automatic climate control, push-button stop/start, and cruise control.\r\n\r\nToyota Fortuner Safety Features: The Toyota Fortuner gets seven airbags, hill assist control, vehicle stability control with brake assist, and ABS with EBD.', 3000, 'Petrol', 2020, 5, '2015_Toyota_Fortuner_(New_Zealand).jpg', 'toyota-fortuner-legender-rear-quarters-6e57.jpg', 'zw-toyota-fortuner-2020-2.jpg', 'download (1).jpg', '', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 1, 1, 1, '2020-07-07 07:17:46', NULL),
(8, 'Maruti Suzuki Vitara Brezza', 1, 'The new Vitara Brezza is a well-rounded package that is feature-loaded and offers good drivability. And it is backed by Maruti’s vast service network, which ensures a peace of mind to customers. The petrol motor could have been more refined and offered more pep.', 600, 'Petrol', 2018, 5, 'marutisuzuki-vitara-brezza-right-front-three-quarter3.jpg', 'marutisuzuki-vitara-brezza-rear-view37.jpg', 'marutisuzuki-vitara-brezza-dashboard10.jpg', 'marutisuzuki-vitara-brezza-boot-space59.jpg', 'marutisuzuki-vitara-brezza-boot-space28.jpg', NULL, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, '2020-07-07 07:23:11', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 1, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06 12:14:11', NULL, 1),
(2, 1, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06 12:21:20', '06-11-2022 05:53:00 PM', 1),
(3, NULL, 'amitk@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-06 13:15:43', NULL, 0),
(4, 2, 'amitk@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-06 13:15:58', '06-11-2022 06:50:46 PM', 1),
(5, 1, 'johndoe12@test.com', 0x326130343a636563303a313930313a34, '2023-09-20 10:09:00', '20-09-2023 03:41:45 PM', 1);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_status` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `verification_code` int(11) NOT NULL DEFAULT '0',
  `regDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `fullName`, `address`, `city`, `gender`, `email`, `email_status`, `password`, `verification_code`, `regDate`, `updationDate`) VALUES
(1, '', 'John Doe', 'A 123 ABC Apartment GZB 201017', 'Ghaziabad', 'male', 'johndoe12@test.com', '', 'f925916e2754e5e03f75dd58a5733251', 0, '2022-11-06 12:13:56', NULL),
(2, '', 'Amit kumar', 'new Delhi india', 'New Delhi', 'male', 'amitk@gmail.com', '', 'f925916e2754e5e03f75dd58a5733251', 0, '2022-11-06 13:15:32', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `vol`
--

CREATE TABLE `vol` (
  `codevol` varchar(64) NOT NULL DEFAULT 'Test',
  `date_depart` date DEFAULT '2022-12-31',
  `heure_depart` varchar(20) NOT NULL DEFAULT '00:00',
  `destination` varchar(100) NOT NULL DEFAULT '?',
  `nom_org` varchar(255) NOT NULL DEFAULT 'Inconnu',
  `nb_classa` smallint(6) NOT NULL DEFAULT '8',
  `nb_classb` smallint(6) NOT NULL DEFAULT '0',
  `prix_classa` int(11) NOT NULL DEFAULT '0',
  `prix_classb` int(11) NOT NULL DEFAULT '0',
  `premier` varchar(11) NOT NULL DEFAULT '?',
  `second` varchar(11) NOT NULL DEFAULT '?',
  `troisieme` varchar(11) NOT NULL DEFAULT '?',
  `quatrieme` varchar(11) NOT NULL DEFAULT '?',
  `cinquieme` varchar(40) NOT NULL DEFAULT '?',
  `id` int(11) NOT NULL,
  `commentaire` varchar(128) NOT NULL DEFAULT 'No',
  `structure` char(255) DEFAULT 'Structure',
  `buyin` int(11) DEFAULT '25',
  `rake` int(11) DEFAULT '5',
  `bounty` int(11) NOT NULL DEFAULT '0',
  `jetons` int(11) NOT NULL DEFAULT '40000',
  `recave` int(11) NOT NULL DEFAULT '1',
  `addon` int(11) NOT NULL DEFAULT '0',
  `ante` varchar(16) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `vol`
--

INSERT INTO `vol` (`codevol`, `date_depart`, `heure_depart`, `destination`, `nom_org`, `nb_classa`, `nb_classb`, `prix_classa`, `prix_classb`, `premier`, `second`, `troisieme`, `quatrieme`, `cinquieme`, `id`, `commentaire`, `structure`, `buyin`, `rake`, `bounty`, `jetons`, `recave`, `addon`, `ante`) VALUES
('bob', '2023-11-20', '10:38:00', '', '', 0, 0, 2, 1, '?', '?', '?', '?', '?', 30, 'cash FRW', 'Fin 00h30', 10, 0, 0, 35000, 0, 0, 'NoN'),
('Antoine-1', '2023-10-27', '12:00', 'St Sulpice sur leze', 'Ambulancier', 24, 0, 6, 3, '?', '?', '?', '?', '?', 32, 'adr antoine', 'Ma structure', 20, 10, 5, 312345, 2, 1, 'NoN'),
('Cashgame Mehdi', '2023-10-14', '18:00', 'Colomier', 'Mehdi', 8, 0, 0, 0, '?', '?', '?', '?', '?', 36, '7 Allee de l ormeau 31770 Colomier', 'Cash', 10, 0, 0, 0, 0, 0, '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `activite`
--
ALTER TABLE `activite`
  ADD PRIMARY KEY (`id-activite`);

--
-- Index pour la table `activite-29oct`
--
ALTER TABLE `activite-29oct`
  ADD PRIMARY KEY (`id-activite`),
  ADD KEY `organisateur` (`id-membre`);

--
-- Index pour la table `admincar`
--
ALTER TABLE `admincar`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `admindoc`
--
ALTER TABLE `admindoc`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `blindes`
--
ALTER TABLE `blindes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `challenge`
--
ALTER TABLE `challenge`
  ADD PRIMARY KEY (`chal_id`);

--
-- Index pour la table `challenge-partie`
--
ALTER TABLE `challenge-partie`
  ADD PRIMARY KEY (`chapar_id`);

--
-- Index pour la table `competences`
--
ALTER TABLE `competences`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `competences-individu`
--
ALTER TABLE `competences-individu`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `joueurs`
--
ALTER TABLE `joueurs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ordre` (`id`);

--
-- Index pour la table `lestables`
--
ALTER TABLE `lestables`
  ADD PRIMARY KEY (`id-table`);

--
-- Index pour la table `loisirs`
--
ALTER TABLE `loisirs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `loisirs-individu`
--
ALTER TABLE `loisirs-individu`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `membres`
--
ALTER TABLE `membres`
  ADD PRIMARY KEY (`id-membre`),
  ADD UNIQUE KEY `ordre` (`id-membre`);

--
-- Index pour la table `participation`
--
ALTER TABLE `participation`
  ADD PRIMARY KEY (`id-participation`);

--
-- Index pour la table `passager`
--
ALTER TABLE `passager`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk1` (`code_vol`);

--
-- Index pour la table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `resultats`
--
ALTER TABLE `resultats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idjoueur` (`id_joueur`);

--
-- Index pour la table `siege`
--
ALTER TABLE `siege`
  ADD PRIMARY KEY (`id-siege`);

--
-- Index pour la table `structure-buyin`
--
ALTER TABLE `structure-buyin`
  ADD PRIMARY KEY (`id-structure-buyin`);

--
-- Index pour la table `t-map`
--
ALTER TABLE `t-map`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `tblanimal`
--
ALTER TABLE `tblanimal`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tblticforeigner`
--
ALTER TABLE `tblticforeigner`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `TicketID` (`TicketID`),
  ADD KEY `TicketID_2` (`TicketID`),
  ADD KEY `priceid` (`AdultUnitprice`);

--
-- Index pour la table `tblticindian`
--
ALTER TABLE `tblticindian`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `TicketID` (`TicketID`),
  ADD KEY `pidddd` (`ChildUnitprice`);

--
-- Index pour la table `tbltickettype`
--
ALTER TABLE `tbltickettype`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `TicketType` (`TicketType`),
  ADD KEY `Price` (`Price`);

--
-- Index pour la table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`);

--
-- Index pour la table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Index pour la table `vol`
--
ALTER TABLE `vol`
  ADD UNIQUE KEY `id_2` (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `codevol` (`codevol`) USING BTREE;

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `activite`
--
ALTER TABLE `activite`
  MODIFY `id-activite` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT pour la table `activite-29oct`
--
ALTER TABLE `activite-29oct`
  MODIFY `id-activite` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT pour la table `admincar`
--
ALTER TABLE `admincar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `admindoc`
--
ALTER TABLE `admindoc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `blindes`
--
ALTER TABLE `blindes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `challenge`
--
ALTER TABLE `challenge`
  MODIFY `chal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `challenge-partie`
--
ALTER TABLE `challenge-partie`
  MODIFY `chapar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `competences`
--
ALTER TABLE `competences`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `competences-individu`
--
ALTER TABLE `competences-individu`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT pour la table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pour la table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `joueurs`
--
ALTER TABLE `joueurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;

--
-- AUTO_INCREMENT pour la table `lestables`
--
ALTER TABLE `lestables`
  MODIFY `id-table` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `loisirs`
--
ALTER TABLE `loisirs`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `loisirs-individu`
--
ALTER TABLE `loisirs-individu`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT pour la table `membres`
--
ALTER TABLE `membres`
  MODIFY `id-membre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1029;

--
-- AUTO_INCREMENT pour la table `participation`
--
ALTER TABLE `participation`
  MODIFY `id-participation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=347;

--
-- AUTO_INCREMENT pour la table `passager`
--
ALTER TABLE `passager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT pour la table `register`
--
ALTER TABLE `register`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `resultats`
--
ALTER TABLE `resultats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `siege`
--
ALTER TABLE `siege`
  MODIFY `id-siege` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `structure-buyin`
--
ALTER TABLE `structure-buyin`
  MODIFY `id-structure-buyin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `t-map`
--
ALTER TABLE `t-map`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `tblanimal`
--
ALTER TABLE `tblanimal`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `tblticforeigner`
--
ALTER TABLE `tblticforeigner`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `tblticindian`
--
ALTER TABLE `tblticindian`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `tbltickettype`
--
ALTER TABLE `tbltickettype`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `vol`
--
ALTER TABLE `vol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `activite-29oct`
--
ALTER TABLE `activite-29oct`
  ADD CONSTRAINT `organisateur` FOREIGN KEY (`id-membre`) REFERENCES `membres` (`id-membre`) ON DELETE NO ACTION;

--
-- Contraintes pour la table `passager`
--
ALTER TABLE `passager`
  ADD CONSTRAINT `fk1` FOREIGN KEY (`code_vol`) REFERENCES `vol` (`codevol`);

--
-- Contraintes pour la table `tblticforeigner`
--
ALTER TABLE `tblticforeigner`
  ADD CONSTRAINT `priceid` FOREIGN KEY (`AdultUnitprice`) REFERENCES `tbltickettype` (`Price`);

--
-- Contraintes pour la table `tblticindian`
--
ALTER TABLE `tblticindian`
  ADD CONSTRAINT `pidddd` FOREIGN KEY (`ChildUnitprice`) REFERENCES `tbltickettype` (`Price`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
