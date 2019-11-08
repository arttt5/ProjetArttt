-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  ven. 08 nov. 2019 à 08:26
-- Version du serveur :  10.4.6-MariaDB
-- Version de PHP :  7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `base_projet`
--

-- --------------------------------------------------------

--
-- Structure de la table `_produit`
--

CREATE TABLE `_produit` (
  `id_produit` int(11) NOT NULL,
  `nom_produit` varchar(50) COLLATE utf8_bin NOT NULL,
  `prix_produit` float NOT NULL,
  `image_produit` varchar(50) COLLATE utf8_bin NOT NULL,
  `descriptif_produit` varchar(400) COLLATE utf8_bin NOT NULL,
  `stock_produit` int(11) DEFAULT NULL,
  `prix_fournisseur_produit` float NOT NULL,
  `id_categorie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `_produit`
--

INSERT INTO `_produit` (`id_produit`, `nom_produit`, `prix_produit`, `image_produit`, `descriptif_produit`, `stock_produit`, `prix_fournisseur_produit`, `id_categorie`) VALUES
(1, 'chargeur_bambo', 15.99, 'chargeur1.jpg', 'chargeur sans fil avec un design bambo', 120, 12, 1),
(2, 'chargeur_samsung', 20.99, 'chargeur2.jpg', 'chargeur sans fil compatible avec les produits samsung', 100, 15, 1),
(3, 'chargeur_apple', 20.99, 'chargeur3.jpg', 'chargeur sans fil compatible avec les produits apple', 99, 15, 1),
(4, 'Ecouteur_rose', 15.99, 'ecouteur1.jpg', 'ecouteurs sans fil girly', 55, 10, 3),
(5, 'ecouteurs_bleu', 15.99, 'ecouteurs2.jpg', 'ecouteurs sans fil bleu masculain', 50, 10, 3),
(6, 'ecouteurs_noir', 15.99, 'ecouteurs3.jpg', 'notre model le plus class', 50, 12, 3),
(7, 'enceint_bleutooth_house', 35, 'enceint1.jpg', 'profiter de votre music avec le model house', 25, 30, 5),
(8, 'enceint_bleutooth_modern', 40, 'enceint2.jpg', 'music modern', 38, 35, 5),
(9, 'enceint_bleutooth_classique', 36, 'enceint3.jpg', '', 100, 32, 5),
(10, 'batterie_samson', 10.99, 'batterie1.jpg', '', 30, 8, 2),
(11, 'batterie_diva', 12.99, 'batterie2.jpg', '', 60, 10, 2),
(12, 'batterie_amigos', 19.99, 'batterie3.jpg', '', 42, 15, 2),
(13, 'souris_teckNet', 24.99, 'souris1.jpg', '', 40, 21, 6),
(14, 'souris_strabe', 20.5, 'souris2.jpg', '', 51, 17, 6),
(15, 'souris_logiteck', 30, 'souris3.jpg', '', 30, 26, 6),
(16, 'clavier_logiteck', 25.5, 'clavier1.jpg', '', 20, 22, 4),
(17, 'clavier_starter', 33.5, 'clavier2.jpg', '', 15, 30, 4),
(18, 'clavier_pavillon', 24.5, 'clavier3.jpg', '', 31, 20, 4);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `_produit`
--
ALTER TABLE `_produit`
  ADD PRIMARY KEY (`id_produit`),
  ADD KEY `_produit__categorie_FK` (`id_categorie`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `_produit`
--
ALTER TABLE `_produit`
  MODIFY `id_produit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `_produit`
--
ALTER TABLE `_produit`
  ADD CONSTRAINT `_produit__categorie_FK` FOREIGN KEY (`id_categorie`) REFERENCES `_categorie` (`id_categorie`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
