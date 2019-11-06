-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mer. 06 nov. 2019 à 09:22
-- Version du serveur :  10.4.6-MariaDB
-- Version de PHP :  7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `robishop`
--

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

CREATE TABLE `commentaires` (
  `id_commentaire` int(11) NOT NULL,
  `text_commentaire` varchar(250) NOT NULL,
  `date_commentaire` datetime NOT NULL,
  `id_users` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `_categorie`
--

CREATE TABLE `_categorie` (
  `id_categorie` int(11) NOT NULL,
  `nom_categorie` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `_commande`
--

CREATE TABLE `_commande` (
  `id_facture` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  `date_commande` date NOT NULL,
  `montant_commande` float NOT NULL,
  `type_paiement` varchar(50) NOT NULL,
  `date_livraison` date NOT NULL,
  `livre` tinyint(1) NOT NULL,
  `mode_livraison` varchar(50) NOT NULL,
  `frais_livraison` float NOT NULL,
  `quantite_produit_commande` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `_connexion`
--

CREATE TABLE `_connexion` (
  `id_connex` int(11) NOT NULL,
  `date_connex` datetime NOT NULL,
  `ip_connex` int(11) NOT NULL,
  `id_users` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `_facture`
--

CREATE TABLE `_facture` (
  `id_facture` int(11) NOT NULL,
  `montant_facture` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `_fournir`
--

CREATE TABLE `_fournir` (
  `id_produit` int(11) NOT NULL,
  `id_fournisseur` int(11) NOT NULL,
  `date_fourni` date NOT NULL,
  `quantite_commande_fournisseur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `_fournisseur`
--

CREATE TABLE `_fournisseur` (
  `id_fournisseur` int(11) NOT NULL,
  `nom_fournisseur` varchar(50) NOT NULL,
  `prenom_fournisseur` varchar(50) NOT NULL,
  `adresse_fournisseur` varchar(50) NOT NULL,
  `code_postal_fournisseur` int(11) NOT NULL,
  `adresse_email_fournisseur` varchar(20) NOT NULL,
  `tel_fournisseur` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `_produit`
--

CREATE TABLE `_produit` (
  `id_produit` int(11) NOT NULL,
  `nom_produit` varchar(20) NOT NULL,
  `prix_produit` float NOT NULL,
  `image_produit` varchar(50) NOT NULL,
  `descriptif_produit` varchar(50) NOT NULL,
  `stock_produit` int(11) DEFAULT NULL,
  `prix_fournisseur_produit` float NOT NULL,
  `id_categorie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `_promotion`
--

CREATE TABLE `_promotion` (
  `id_promotion` int(11) NOT NULL,
  `montant_promotion` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `_users`
--

CREATE TABLE `_users` (
  `id_users` int(11) NOT NULL,
  `nom_users` varchar(20) NOT NULL,
  `prenom_users` varchar(20) NOT NULL,
  `adresse_users` varchar(50) NOT NULL,
  `code_postal_users` int(11) NOT NULL,
  `ville_users` varchar(25) NOT NULL,
  `adresse_facturation_users` varchar(20) NOT NULL,
  `code_postal_facturation_users` int(11) NOT NULL,
  `ville_facturation_users` varchar(25) NOT NULL,
  `mail_users` varchar(20) NOT NULL,
  `tel_users` varchar(10) NOT NULL,
  `pseudo_users` varchar(20) NOT NULL,
  `motDePasse_users` varchar(15) NOT NULL,
  `admin_users` tinyint(1) NOT NULL,
  `date_jeu` date NOT NULL,
  `id_promotion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables déchargées
--

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
-- Index pour la table `_commande`
--
ALTER TABLE `_commande`
  ADD PRIMARY KEY (`id_facture`,`id_users`,`id_produit`),
  ADD KEY `_commande__users0_FK` (`id_users`),
  ADD KEY `_commande__produit1_FK` (`id_produit`);

--
-- Index pour la table `_connexion`
--
ALTER TABLE `_connexion`
  ADD PRIMARY KEY (`id_connex`),
  ADD KEY `_connexion__users_FK` (`id_users`);

--
-- Index pour la table `_facture`
--
ALTER TABLE `_facture`
  ADD PRIMARY KEY (`id_facture`);

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
-- AUTO_INCREMENT pour la table `commentaires`
--
ALTER TABLE `commentaires`
  MODIFY `id_commentaire` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `_categorie`
--
ALTER TABLE `_categorie`
  MODIFY `id_categorie` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `_connexion`
--
ALTER TABLE `_connexion`
  MODIFY `id_connex` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `_facture`
--
ALTER TABLE `_facture`
  MODIFY `id_facture` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `_fournisseur`
--
ALTER TABLE `_fournisseur`
  MODIFY `id_fournisseur` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `_produit`
--
ALTER TABLE `_produit`
  MODIFY `id_produit` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `_promotion`
--
ALTER TABLE `_promotion`
  MODIFY `id_promotion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `_users`
--
ALTER TABLE `_users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD CONSTRAINT `commentaires__produit0_FK` FOREIGN KEY (`id_produit`) REFERENCES `_produit` (`id_produit`),
  ADD CONSTRAINT `commentaires__users_FK` FOREIGN KEY (`id_users`) REFERENCES `_users` (`id_users`);

--
-- Contraintes pour la table `_commande`
--
ALTER TABLE `_commande`
  ADD CONSTRAINT `_commande__facture_FK` FOREIGN KEY (`id_facture`) REFERENCES `_facture` (`id_facture`),
  ADD CONSTRAINT `_commande__produit1_FK` FOREIGN KEY (`id_produit`) REFERENCES `_produit` (`id_produit`),
  ADD CONSTRAINT `_commande__users0_FK` FOREIGN KEY (`id_users`) REFERENCES `_users` (`id_users`);

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
