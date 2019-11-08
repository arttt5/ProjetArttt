-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  ven. 08 nov. 2019 à 11:41
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
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id_commande` int(11) NOT NULL,
  `date_commande` date NOT NULL,
  `type_paiement` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `date_livraison` date DEFAULT NULL,
  `livrer` tinyint(1) NOT NULL,
  `mode_livraison` varchar(50) COLLATE utf8_bin NOT NULL,
  `frais_livraison` float DEFAULT NULL,
  `montant_commande` float NOT NULL,
  `id_users` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`id_commande`, `date_commande`, `type_paiement`, `date_livraison`, `livrer`, `mode_livraison`, `frais_livraison`, `montant_commande`, `id_users`) VALUES
(100, '2019-10-14', '', '0000-00-00', 0, 'la poste', NULL, 55, 2);

-- --------------------------------------------------------

--
-- Structure de la table `commander`
--

CREATE TABLE `commander` (
  `id_produit` int(11) NOT NULL,
  `id_commande` int(11) NOT NULL,
  `quantite_produit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `commander`
--

INSERT INTO `commander` (`id_produit`, `id_commande`, `quantite_produit`) VALUES
(11, 100, 4),
(13, 100, 2);

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

CREATE TABLE `commentaires` (
  `id_commentaire` int(11) NOT NULL,
  `text_commentaire` varchar(250) COLLATE utf8_bin NOT NULL,
  `date_commentaire` datetime NOT NULL,
  `id_users` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `commentaires`
--

INSERT INTO `commentaires` (`id_commentaire`, `text_commentaire`, `date_commentaire`, `id_users`, `id_produit`) VALUES
(1, 'produit excellent', '2019-11-06 09:09:10', 2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `_categorie`
--

CREATE TABLE `_categorie` (
  `id_categorie` int(11) NOT NULL,
  `nom_categorie` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `_categorie`
--

INSERT INTO `_categorie` (`id_categorie`, `nom_categorie`) VALUES
(1, 'chargeurs'),
(2, 'batteries_externes'),
(3, 'écouteurs'),
(4, 'claviers'),
(5, 'enceints_bluetooth'),
(6, 'souris');

-- --------------------------------------------------------

--
-- Structure de la table `_connexion`
--

CREATE TABLE `_connexion` (
  `id_connex` int(11) NOT NULL,
  `date_connex` datetime NOT NULL,
  `ip_connex` int(11) NOT NULL,
  `id_users` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `_fournir`
--

CREATE TABLE `_fournir` (
  `id_produit` int(11) NOT NULL,
  `id_fournisseur` int(11) NOT NULL,
  `date_fourni` date NOT NULL,
  `quantite_commande_fournisseur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `_fournir`
--

INSERT INTO `_fournir` (`id_produit`, `id_fournisseur`, `date_fourni`, `quantite_commande_fournisseur`) VALUES
(2, 1, '2019-11-01', 14),
(4, 3, '2019-11-03', 20);

-- --------------------------------------------------------

--
-- Structure de la table `_fournisseur`
--

CREATE TABLE `_fournisseur` (
  `id_fournisseur` int(11) NOT NULL,
  `nom_fournisseur` varchar(50) COLLATE utf8_bin NOT NULL,
  `prenom_fournisseur` varchar(50) COLLATE utf8_bin NOT NULL,
  `adresse_fournisseur` varchar(50) COLLATE utf8_bin NOT NULL,
  `code_postal_fournisseur` int(11) NOT NULL,
  `adresse_email_fournisseur` varchar(80) COLLATE utf8_bin NOT NULL,
  `tel_fournisseur` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `_fournisseur`
--

INSERT INTO `_fournisseur` (`id_fournisseur`, `nom_fournisseur`, `prenom_fournisseur`, `adresse_fournisseur`, `code_postal_fournisseur`, `adresse_email_fournisseur`, `tel_fournisseur`) VALUES
(1, 'DISCOUNT', 'WORLD', 'LILLE', 59000, 'DISCOUNT.WORLD@GMAIL.COM', '0712524874'),
(2, 'UPTO', 'NUMERIC', 'MONS EN BAROEUL', 59370, 'UPTO.NUMERIC@HOTMAIL.FR', '0755414487'),
(3, 'PICA', 'TACA', 'MARCQ EN BAROEUL', 59700, 'PICA_TACA@GMAIL.FR', '0974121230'),
(4, 'EURO', 'CONNECT', 'CALAIS', 62100, 'EURO.CONNECT@YAHOO.FR', '0352418811'),
(5, 'CONNECT', 'DISTRIB', 'CROIX', 59170, 'CONNECT_DISTRIB@GMAIL.FR', '0322154460');

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

-- --------------------------------------------------------

--
-- Structure de la table `_promotion`
--

CREATE TABLE `_promotion` (
  `id_promotion` int(11) NOT NULL,
  `montant_promotion` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `_users`
--

CREATE TABLE `_users` (
  `id_users` int(11) NOT NULL,
  `nom_users` varchar(20) COLLATE utf8_bin NOT NULL,
  `prenom_users` varchar(20) COLLATE utf8_bin NOT NULL,
  `adresse_users` varchar(50) COLLATE utf8_bin NOT NULL,
  `code_postal_users` int(11) NOT NULL,
  `ville_users` varchar(25) COLLATE utf8_bin NOT NULL,
  `adresse_facturation_users` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `code_postal_facturation_users` int(11) DEFAULT NULL,
  `ville_facturation_users` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `mail_users` varchar(80) COLLATE utf8_bin NOT NULL,
  `tel_users` varchar(10) COLLATE utf8_bin NOT NULL,
  `pseudo_users` varchar(20) COLLATE utf8_bin NOT NULL,
  `motDePasse_users` varchar(15) COLLATE utf8_bin NOT NULL,
  `admin_users` tinyint(1) NOT NULL,
  `date_jeu` date DEFAULT NULL,
  `id_promotion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `_users`
--

INSERT INTO `_users` (`id_users`, `nom_users`, `prenom_users`, `adresse_users`, `code_postal_users`, `ville_users`, `adresse_facturation_users`, `code_postal_facturation_users`, `ville_facturation_users`, `mail_users`, `tel_users`, `pseudo_users`, `motDePasse_users`, `admin_users`, `date_jeu`, `id_promotion`) VALUES
(1, 'bouzakher', 'asma', 'afpa de roubaix', 59170, 'roubaix', NULL, NULL, NULL, 'asmabouzakhererouel1@gmail.com', '0782974414', 'admin asma', '08021992', 1, NULL, NULL),
(2, 'PIERRE', 'DUPON', '1/13 place de la libérté', 59170, 'Croix', '1/13 place de la libérté', 59170, 'Croix', 'pierre.dupon@gmail.com', '0744571411', 'pierre_dupon', 'pierrepierre', 0, NULL, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id_commande`),
  ADD KEY `commande__users_FK` (`id_users`);

--
-- Index pour la table `commander`
--
ALTER TABLE `commander`
  ADD PRIMARY KEY (`id_produit`,`id_commande`),
  ADD KEY `commander_commande0_FK` (`id_commande`);

--
-- Index pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD PRIMARY KEY (`id_commentaire`),
  ADD KEY `commentaires__users_FK` (`id_users`),
  ADD KEY `commentaires__produit0_FK` (`id_produit`);

--
-- Index pour la table `_categorie`
--
ALTER TABLE `_categorie`
  ADD PRIMARY KEY (`id_categorie`);

--
-- Index pour la table `_connexion`
--
ALTER TABLE `_connexion`
  ADD PRIMARY KEY (`id_connex`),
  ADD KEY `_connexion__users_FK` (`id_users`);

--
-- Index pour la table `_fournir`
--
ALTER TABLE `_fournir`
  ADD PRIMARY KEY (`id_produit`,`id_fournisseur`),
  ADD KEY `_fournir__fournisseur0_FK` (`id_fournisseur`);

--
-- Index pour la table `_fournisseur`
--
ALTER TABLE `_fournisseur`
  ADD PRIMARY KEY (`id_fournisseur`);

--
-- Index pour la table `_produit`
--
ALTER TABLE `_produit`
  ADD PRIMARY KEY (`id_produit`),
  ADD KEY `_produit__categorie_FK` (`id_categorie`);

--
-- Index pour la table `_promotion`
--
ALTER TABLE `_promotion`
  ADD PRIMARY KEY (`id_promotion`);

--
-- Index pour la table `_users`
--
ALTER TABLE `_users`
  ADD PRIMARY KEY (`id_users`),
  ADD KEY `_users__promotion_FK` (`id_promotion`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id_commande` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `commentaires`
--
ALTER TABLE `commentaires`
  MODIFY `id_commentaire` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `_categorie`
--
ALTER TABLE `_categorie`
  MODIFY `id_categorie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `_connexion`
--
ALTER TABLE `_connexion`
  MODIFY `id_connex` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `_fournisseur`
--
ALTER TABLE `_fournisseur`
  MODIFY `id_fournisseur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `_produit`
--
ALTER TABLE `_produit`
  MODIFY `id_produit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `_promotion`
--
ALTER TABLE `_promotion`
  MODIFY `id_promotion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `_users`
--
ALTER TABLE `_users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `commande__users_FK` FOREIGN KEY (`id_users`) REFERENCES `_users` (`id_users`);

--
-- Contraintes pour la table `commander`
--
ALTER TABLE `commander`
  ADD CONSTRAINT `commander__produit_FK` FOREIGN KEY (`id_produit`) REFERENCES `_produit` (`id_produit`),
  ADD CONSTRAINT `commander_commande0_FK` FOREIGN KEY (`id_commande`) REFERENCES `commande` (`id_commande`);

--
-- Contraintes pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD CONSTRAINT `commentaires__produit0_FK` FOREIGN KEY (`id_produit`) REFERENCES `_produit` (`id_produit`),
  ADD CONSTRAINT `commentaires__users_FK` FOREIGN KEY (`id_users`) REFERENCES `_users` (`id_users`);

--
-- Contraintes pour la table `_connexion`
--
ALTER TABLE `_connexion`
  ADD CONSTRAINT `_connexion__users_FK` FOREIGN KEY (`id_users`) REFERENCES `_users` (`id_users`);

--
-- Contraintes pour la table `_fournir`
--
ALTER TABLE `_fournir`
  ADD CONSTRAINT `_fournir__fournisseur0_FK` FOREIGN KEY (`id_fournisseur`) REFERENCES `_fournisseur` (`id_fournisseur`),
  ADD CONSTRAINT `_fournir__produit_FK` FOREIGN KEY (`id_produit`) REFERENCES `_produit` (`id_produit`);

--
-- Contraintes pour la table `_produit`
--
ALTER TABLE `_produit`
  ADD CONSTRAINT `_produit__categorie_FK` FOREIGN KEY (`id_categorie`) REFERENCES `_categorie` (`id_categorie`);

--
-- Contraintes pour la table `_users`
--
ALTER TABLE `_users`
  ADD CONSTRAINT `_users__promotion_FK` FOREIGN KEY (`id_promotion`) REFERENCES `_promotion` (`id_promotion`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
