-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 11 oct. 2019 à 13:21
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `mydb`
--
CREATE DATABASE IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `mydb`;

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `idadmin` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) NOT NULL,
  `prenom` varchar(45) NOT NULL,
  `sexe` varchar(45) NOT NULL,
  `mdp` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`idadmin`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`idadmin`, `nom`, `prenom`, `sexe`, `mdp`, `email`) VALUES
(1, 'admin', 'admin', 'Femme', 'admin', 'admin@admin.admin');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `idclient` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) NOT NULL,
  `prenom` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `sexe` varchar(45) NOT NULL,
  `mdp` varchar(45) NOT NULL,
  `idconseiller` int(11) NOT NULL,
  `statut` tinyint(4) NOT NULL,
  PRIMARY KEY (`idclient`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `fk_conseiller1_idx` (`idconseiller`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`idclient`, `nom`, `prenom`, `email`, `sexe`, `mdp`, `idconseiller`, `statut`) VALUES
(1, 'test', 'test', 'test@test.test', 'Femme', 'test', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

DROP TABLE IF EXISTS `compte`;
CREATE TABLE IF NOT EXISTS `compte` (
  `idcompte` int(11) NOT NULL AUTO_INCREMENT,
  `solde` varchar(45) NOT NULL,
  `carte` int(11) NOT NULL,
  `statut` tinyint(4) NOT NULL,
  `decouvert` double NOT NULL,
  `idclient` int(11) NOT NULL,
  PRIMARY KEY (`idcompte`),
  UNIQUE KEY `carte_UNIQUE` (`carte`),
  UNIQUE KEY `idcompte_UNIQUE` (`idcompte`),
  KEY `fk_client2_idx` (`idclient`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `compte`
--

INSERT INTO `compte` (`idcompte`, `solde`, `carte`, `statut`, `decouvert`, `idclient`) VALUES
(1, '0', 1, 1, 0, 1),
(2, '20', 2, 1, 20, 1);

-- --------------------------------------------------------

--
-- Structure de la table `conseiller`
--

DROP TABLE IF EXISTS `conseiller`;
CREATE TABLE IF NOT EXISTS `conseiller` (
  `idconseiller` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) NOT NULL,
  `prenom` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `sexe` varchar(45) NOT NULL,
  `mdp` varchar(45) NOT NULL,
  `idadmin` int(11) NOT NULL,
  `statut` tinyint(4) NOT NULL,
  PRIMARY KEY (`idconseiller`),
  KEY `fk_admin1_idx` (`idadmin`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `conseiller`
--

INSERT INTO `conseiller` (`idconseiller`, `nom`, `prenom`, `email`, `sexe`, `mdp`, `idadmin`, `statut`) VALUES
(1, 'con', 'con', 'con@con.con', 'Femme', 'con', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `historique`
--

DROP TABLE IF EXISTS `historique`;
CREATE TABLE IF NOT EXISTS `historique` (
  `idhistorique` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `idadmin` int(11) DEFAULT NULL,
  `idconseiller` int(11) DEFAULT NULL,
  `idclient` int(11) DEFAULT NULL,
  `idtypeHisto` int(11) NOT NULL,
  `idcompte` int(11) DEFAULT NULL,
  PRIMARY KEY (`idhistorique`),
  KEY `fk_admin2_idx` (`idadmin`),
  KEY `fk_conseiller2_idx` (`idconseiller`),
  KEY `fk_client1_idx` (`idclient`),
  KEY `fk_typeHisto1_idx` (`idtypeHisto`),
  KEY `fk_compte1_idx` (`idcompte`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `historique`
--

INSERT INTO `historique` (`idhistorique`, `date`, `idadmin`, `idconseiller`, `idclient`, `idtypeHisto`, `idcompte`) VALUES
(1, '2019-01-05 00:00:00', NULL, NULL, NULL, 1, 1),
(2, '2019-05-24 00:00:00', NULL, NULL, NULL, 2, 1),
(3, '2019-09-15 00:00:00', NULL, NULL, NULL, 3, 1),
(4, '2019-03-05 00:00:00', NULL, NULL, NULL, 3, 2),
(5, '2019-04-21 00:00:00', NULL, NULL, NULL, 2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `idmessage` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(10000) DEFAULT NULL,
  `historique_idhistorique` int(11) NOT NULL,
  PRIMARY KEY (`idmessage`),
  KEY `fk_historique1_idx` (`historique_idhistorique`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `typehisto`
--

DROP TABLE IF EXISTS `typehisto`;
CREATE TABLE IF NOT EXISTS `typehisto` (
  `idtypeHisto` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`idtypeHisto`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `typehisto`
--

INSERT INTO `typehisto` (`idtypeHisto`, `type`) VALUES
(1, 'Virement'),
(2, 'Retrait'),
(3, 'Dépôt');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `fk_conseiller1` FOREIGN KEY (`idconseiller`) REFERENCES `conseiller` (`idconseiller`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `compte`
--
ALTER TABLE `compte`
  ADD CONSTRAINT `fk_client2` FOREIGN KEY (`idclient`) REFERENCES `client` (`idclient`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `conseiller`
--
ALTER TABLE `conseiller`
  ADD CONSTRAINT `fk_admin1` FOREIGN KEY (`idadmin`) REFERENCES `admin` (`idadmin`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `historique`
--
ALTER TABLE `historique`
  ADD CONSTRAINT `fk_admin2` FOREIGN KEY (`idadmin`) REFERENCES `admin` (`idadmin`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_client1` FOREIGN KEY (`idclient`) REFERENCES `client` (`idclient`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_compte1` FOREIGN KEY (`idcompte`) REFERENCES `compte` (`idcompte`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_conseiller2` FOREIGN KEY (`idconseiller`) REFERENCES `conseiller` (`idconseiller`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_typeHisto1` FOREIGN KEY (`idtypeHisto`) REFERENCES `typehisto` (`idtypeHisto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `fk_historique1` FOREIGN KEY (`historique_idhistorique`) REFERENCES `historique` (`idhistorique`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
