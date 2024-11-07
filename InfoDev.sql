-- phpMyAdmin SQL Dump
-- version 2.7.0-pl2
-- http://www.phpmyadmin.net
-- Serveur: localhost
-- Généré le : Mardi 17 Avril 2007 à 17:24
-- Version du serveur: 5.0.18
-- Version de PHP: 4.3.11
-- Base de données: `gestionProjet`
--
-- Structure de la table `activite`
-- 

CREATE TABLE `activite` (
  `num` int(11) NOT NULL auto_increment,
  `nom` varchar(50) default NULL,
  `dateDebutPrev` datetime default NULL,
  `dateFinPrev` datetime default NULL,
  `dateDebutReelle` datetime default NULL,
  `dateFinReelle` datetime default NULL,
  `chargeJourHommePrev` float default NULL,
  `chargeJourHommeReal` float default NULL,
  `codeProjet` varchar(8) NOT NULL,
  PRIMARY KEY  (`num`),
  KEY `codeProjet` (`codeProjet`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

-- 
-- Contenu de la table `activite`
-- 

INSERT INTO `activite` VALUES (1, 'Commande fournisseur', '2006-03-24 00:00:00', '2006-04-14 00:00:00', '2006-03-27 00:00:00', '2006-04-13 00:00:00', 1, 1, 'P050309');
INSERT INTO `activite` VALUES (2, 'Maquettage', '2006-04-14 00:00:00', '2006-04-28 00:00:00', '2006-04-14 00:00:00', '2006-05-02 00:00:00', 0.25, 0.4, 'P050309');
INSERT INTO `activite` VALUES (3, 'Installation et configuration serveur', '2006-04-10 00:00:00', '2006-04-21 00:00:00', '2006-04-10 00:00:00', '2006-04-18 00:00:00', 1.03, 1.5, 'P050309');
INSERT INTO `activite` VALUES (4, 'Installation et configuration poste', '2006-04-10 00:00:00', '2006-04-21 00:00:00', '2006-04-10 00:00:00', '2006-04-24 00:00:00', 0.7, 2, 'P050309');
INSERT INTO `activite` VALUES (5, 'Formation', '2006-04-12 00:00:00', '2006-05-19 00:00:00', '2006-04-12 00:00:00', '2006-05-19 00:00:00', 7, 7, 'P050309');
INSERT INTO `activite` VALUES (6, 'Déploiement', '2006-04-18 00:00:00', '2006-05-05 00:00:00', '2006-04-20 00:00:00', '2006-05-05 00:00:00', 3.7, 4, 'P050309');
INSERT INTO `activite` VALUES (7, 'Test', '2006-04-12 00:00:00', '2006-04-27 00:00:00', '2006-04-12 00:00:00', '2006-04-28 00:00:00', 2.2, 4, 'P050309');

-- --------------------------------------------------------

-- 
-- Structure de la table `client`
-- 

CREATE TABLE `client` (
  `num` int(11) NOT NULL auto_increment,
  `nom` varchar(32) default NULL,
  `rue` varchar(75) default NULL,
  `CP` varchar(8) default NULL,
  `ville` varchar(50) default NULL,
  `tel` varchar(15) default NULL,
  `fax` varchar(15) default NULL,
  `nomContact` varchar(32) default NULL,
  PRIMARY KEY  (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1346 ;

-- 
-- Contenu de la table `client`
-- 

INSERT INTO `client` VALUES (41, 'Collège Francois 1er', '3, cours du clos des reines', '17200', 'ROYAN', '05 46 4x xx xx', '05 46 4x xx xx', 'Vincent Cheneraud');
INSERT INTO `client` VALUES (45, 'Lycée Elysée Reclus', '19, porte du pommier', '16000', 'ANGOULEME', '05 45 4x xx xx', '05 45 4x xx xx', 'Cecile Allenet');
INSERT INTO `client` VALUES (50, 'Poisson Occaz', '34 bis, porte des peupliers', '16300', 'VIGNOLLES', '05 45 xx xx xx', '05 45 xx xx xx', 'Jerry Maurandeau');
INSERT INTO `client` VALUES (77, 'Collège Mitterand', '18 rue du Cimetière', '16200', 'JARNAC', '05 45 4x xx xx', '05 45 4x xx xx', 'Mikaele Briron');
INSERT INTO `client` VALUES (107, 'Mambrade EURL', '5 bis, porte de Ste Yolande', '16400', 'VOEUIL ET GIGET', '05 45 xx xx xx', '05 45 xx xx xx', 'Innocent Jean');
INSERT INTO `client` VALUES (127, 'Jeux SARL', '53, cours du cours d''eau', '17870', 'ROCHEFORT', '05 46 xx xx xx', '05 46 xx xx xx', 'Sophie Maurin?');
INSERT INTO `client` VALUES (245, 'Transports Rioux SA', '30, chemin de St Jean', '16200', 'JARNAC', '05 45 xx xx xx', '05 45 xx xx xx', 'Zeineb Deltry');
INSERT INTO `client` VALUES (247, 'Portable Assistance', '59, sentier de Nevers', '17470', 'ST GEORGES DE LONGUEPIERR', '05 49 xx xx xx', '05 49 xx xx xx', 'Christopher Suire');
INSERT INTO `client` VALUES (248, 'Marquez Urgences', '57, boulevard des paquerettes', '17340', 'YVES', '05 46 xx xx xx', '05 46 xx xx xx', 'Cheun Jousset');
INSERT INTO `client` VALUES (251, 'Dauger SA', '74 bis, cours de Strasbourg', '17870', 'ROCHEFORT', '05 46 xx xx xx', '05 46 xx xx xx', 'Carol Chadint');
INSERT INTO `client` VALUES (254, 'Marole 17', '49, passage  Asimov', '17110', 'ST GEORGES DE DIDONNE', '05 46 xx xx xx', '05 46 xx xx xx', 'Celine Delhomme');
INSERT INTO `client` VALUES (258, 'Jarnac Télé SAV', '26, place du clochet', '16200', 'JARNAC', '05 45 xx xx xx', '05 45 xx xx xx', 'Déborah Surau');
INSERT INTO `client` VALUES (260, 'Bon-Garage Ouest', '83 ter, chemin du paradis', '16600', 'TOUVRE', '05 45 xx xx xx', '05 45 xx xx xx', 'Cristelle Chatez');
INSERT INTO `client` VALUES (261, 'Le front de mer', '29, allée de la liberté', '17200', 'ST SULPICE DE ROYAN', '05 46 xx xx xx', '05 46 xx xx xx', 'Jofrette Caillé');
INSERT INTO `client` VALUES (262, 'Raimon 24/24', '31, avenue des fleurs', '16600', 'TOUVRE', '05 45 xx xx xx', '05 45 xx xx xx', 'Marion Claverie');
INSERT INTO `client` VALUES (263, 'Arrerat SA', '90, avenue de la Victoire', '17430', 'ST HIPPOLYTE', '05 46 xx xx xx', '05 46 xx xx xx', 'Henry Tétard');
INSERT INTO `client` VALUES (264, 'Aide-Plombier Kilo', '93, sentier des pas perdus', '17750', 'ETAULES', '05 46 xx xx xx', '05 46 xx xx xx', 'Michelle Gachet');
INSERT INTO `client` VALUES (265, 'Bruar SVP', '8, avenue de Libourne', '17000', 'VILLENEUVE LES SALINES', '05 46 xx xx xx', '05 46 xx xx xx', 'Abraham Annelet');
INSERT INTO `client` VALUES (266, 'Total-Télé 79', '20 bis, chemin de Lyon', '17500', 'ST HILAIRE DU BOIS', '05 46 xx xx xx', '05 46 xx xx xx', 'Lucie Seguinar');
INSERT INTO `client` VALUES (267, 'Génial-News 17', '66 bis, avenue de la mouche bleue', '17130', 'MONTENDRE', '05 46 xx xx xx', '05 46 xx xx xx', 'Thong Bagnere');
INSERT INTO `client` VALUES (269, 'Port Max', '33, voie du col des ouches', '17530', 'ARVERT', '05 46 xx xx xx', '05 46 xx xx xx', 'Pénélope Quinemand');
INSERT INTO `client` VALUES (271, 'Bon-Crèmerie SA', '83 bis, voie des places', '17500', 'ST GERMAIN DE VIBRAC', '05 46 xx xx xx', '05 46 xx xx xx', 'Enée Estanard');
INSERT INTO `client` VALUES (272, 'Tout-Miroiterie SARL', '19 ter, rue de St Joseph', '16300', 'VIGNOLLES', '05 45 xx xx xx', '05 45 xx xx xx', 'Ivanny De Fleurian');
INSERT INTO `client` VALUES (273, 'Goal-VU SA', '62, boulevard de la marée', '16300', 'VIGNOLLES', '05 45 xx xx xx', '05 45 xx xx xx', 'Vincent Ramber');
INSERT INTO `client` VALUES (274, 'Fantastic-Horticole', '71 bis, avenue de St Sébastien', '17240', 'ST GERMAIN DU SEUDRE', '05 46 xx xx xx', '05 46 xx xx xx', 'Gavin Gargary');
INSERT INTO `client` VALUES (276, 'Génial-Miroiterie', '66 bis, boulevard de la fontaine perdue', '17500', 'ST GERMAIN DE VIBRAC', '05 46 xx xx xx', '05 46 xx xx xx', 'Corisande Cailletté');
INSERT INTO `client` VALUES (277, 'VU Net', '10, rue de la Gastronomie', '17100', 'VENERAND', '05 46 xx xx xx', '05 46 xx xx xx', 'Barbe Bachelot');
INSERT INTO `client` VALUES (278, 'Chambard Urgences', '47, lieu-dit des bijoux', '17130', 'CHAMOUILLAC', '05 46 xx xx xx', '05 46 xx xx xx', 'Nelly Lacoste');
INSERT INTO `client` VALUES (279, 'Fromagerie des Peupliers', '47, rue des peupliers', '16600', 'TOUVRE', '05 45 xx xx xx', '05 45 xx xx xx', 'Vivien Reparau');
INSERT INTO `client` VALUES (280, 'Demelé Assistance', '71, voie des libertés individuelles', '16500', 'ST MAURICE DES LIONS', '05 45 xx xx xx', '05 45 xx xx xx', 'Faustine Jonet');
INSERT INTO `client` VALUES (281, 'Trickell Services', '16, impasse du calvaire', '17110', 'ST GEORGES DE DIDONNE', '05 46 xx xx xx', '05 46 xx xx xx', 'Petite Boutin');
INSERT INTO `client` VALUES (302, 'Thoumain Max', '25 bis, passage des cailloux', '16400', 'LA COURONNE', '05 45 xx xx xx', '05 45 xx xx xx', 'Lia Bouillau');
INSERT INTO `client` VALUES (315, 'Jouets Lagnon', '91, sentier du 14 juillet 1789', '17510', 'VILLIERS COUTURE', '05 49 xx xx xx', '05 49 xx xx xx', 'Judith Lacaille');
INSERT INTO `client` VALUES (338, 'Barsau SA', '5 bis, rue de la partition', '16600', 'TOUVRE', '05 49 xx xx xx', '05 49 xx xx xx', 'Benjamin De St');
INSERT INTO `client` VALUES (346, 'Angibaud Pro', '92, quai du pommier', '17600', 'LE GUA', '05 49 xx xx xx', '05 49 xx xx xx', 'Alain Audureau');
INSERT INTO `client` VALUES (353, 'Méga-Poisson 24/24', '47, boulevard de Cannes', '17500', 'ST GERMAIN DE VIBRAC', '05 46 xx xx xx', '05 46 xx xx xx', 'Mathieu Chenereau');
INSERT INTO `client` VALUES (467, 'AZ-Fromagerie Services', '89 ter, rue de la Seine', '85800', 'LE FENOUILLER', '05 49 xx xx xx', '05 49 xx xx xx', 'Aurelie Emery');
INSERT INTO `client` VALUES (527, 'Portable Assistance', '59, sentier de Nevers', '17470', 'ST GEORGES DE LONGUEPIERR', '05 46 xx xx xx', '05 46 xx xx xx', 'Christopher Suire');
INSERT INTO `client` VALUES (577, 'Delorsier', '77 bis, impasse de la chance', '17560', 'BOURCEFRANC LE CHAPUS', '05 49 xx xx xx', '05 49 xx xx xx', 'Celia Maurin?');
INSERT INTO `client` VALUES (657, 'Fromage de A à Z', '68, rue des saules', '16600', 'TOUVRE', '05 45 xx xx xx', '05 45 xx xx xx', 'Guillaume Hivon');
INSERT INTO `client` VALUES (677, 'SteEanne Récupération', '78, boulevard  Bertran de Born', '79800', 'STE EANNE', '05 49 xx xx xx', '05 49 xx xx xx', 'Toinette Rechain');
INSERT INTO `client` VALUES (774, 'Collège Georges Brassens', '32 bis, Avenue  Colbert', '17500', 'VILLEXAVIER', '05 46 xx xx xx', '05 46 xx xx xx', 'Herick Charpantreau');
INSERT INTO `client` VALUES (775, 'Lycée de la Mer', '86, rue de Fouvreaux', '17560', 'BOURCEFRANC LE CHAPUS', '05 46 xx xx xx', '05 46 xx xx xx', 'Magdeleine Patoiseau');
INSERT INTO `client` VALUES (786, 'Lycée L''Hermione', '59, rue Pierre Loti', '17100', 'ROCHEFORT', '05 46 xx xx xx', '05 46 xx xx xx', 'Arnaud Verger');
INSERT INTO `client` VALUES (805, 'Marquez SA', '49, lieu-dit du trouvère', '17690', 'ANGOULINS', '05 49 xx xx xx', '05 49 xx xx xx', 'Mikaele Baril');
INSERT INTO `client` VALUES (838, 'Bricolage de A à Z', '8, boulevard du Gastronome Belge', '17230', 'CHARRON', '05 49 xx xx xx', '05 49 xx xx xx', 'Eve Trezeau');
INSERT INTO `client` VALUES (847, 'Mateaud Récup', '94, cours  Pline l''ancien', '16700', 'VILLEGATS', '05 49 xx xx xx', '05 49 xx xx xx', 'Thomas Retour');
INSERT INTO `client` VALUES (868, 'Hyper-Pub phone', '57, impasse de la chèvrette', '17000', 'VILLENEUVE LES SALINES', '05 49 xx xx xx', '05 49 xx xx xx', 'Hugo Briason');
INSERT INTO `client` VALUES (882, 'Parfumerie Lanvin', '60, rue  Bertran de Born', '16100', 'ST LAURENT DE COGNAC', '05 49 xx xx xx', '05 49 xx xx xx', 'Agathe Benoist');
INSERT INTO `client` VALUES (888, 'Gacollain SA', '90, rue du Mont Blanc', '79800', 'STE EANNE', '05 49 xx xx xx', '05 49 xx xx xx', 'Justine Tessonneau');
INSERT INTO `client` VALUES (954, 'Jouet & Cie', '53 ter, avenue des frères innocents', '16700', 'VILLEGATS', '05 49 xx xx xx', '05 49 xx xx xx', 'Geneviève Esselier');
INSERT INTO `client` VALUES (986, 'Korrigan Services', '43, avenue  Ghandi', '16400', 'VOEUIL ET GIGET', '05 49 xx xx xx', '05 49 xx xx xx', 'Anais Vieuille');
INSERT INTO `client` VALUES (990, 'Valentin SA', '64, avenue des chênes', '17770', 'VILLARS LES BOIS', '05 49 xx xx xx', '05 49 xx xx xx', 'Marie De Jean');
INSERT INTO `client` VALUES (1010, 'Bardon 24', '87, route du calvaire', '17000', 'VILLENEUVE LES SALINES', '05 49 xx xx xx', '05 49 xx xx xx', 'Marguerite Allieu');
INSERT INTO `client` VALUES (1014, 'Collège des Marais', '63 bis, cours du Joailler', '17780', 'ST NAZAIRE SUR CHARENTE', '05 46 xx xx xx', '05 46 xx xx xx', 'Meera Daniaux');
INSERT INTO `client` VALUES (1046, 'Collège Jean Jaurès', '49, quai  Jean Jaurès', '17000', 'VILLENEUVE LES SALINES', '05 46 xx xx xx', '05 46 xx xx xx', 'Ahmed Gaconnaut');
INSERT INTO `client` VALUES (1066, 'Vet Affaire', '75, avenue de la fontaine perdue', '17590', 'ST CLEMENT DES BALEINES', '05 49 xx xx xx', '05 49 xx xx xx', 'Barthélémy Chantrau');
INSERT INTO `client` VALUES (1169, 'Pelleret SA', '91, impasse des peupliers', '24800', 'VAUNAC', '05 49 xx xx xx', '05 49 xx xx xx', 'Vincenzina Mallet');
INSERT INTO `client` VALUES (1195, 'Raymond EURL', '31, allée des fleurs', '17460', 'BERNEUIL', '05 49 xx xx xx', '05 49 xx xx xx', 'Ivanny Sorain/Lorain');
INSERT INTO `client` VALUES (1207, 'Louis Blanc', '36, lieu-dit des jouets', '17700', 'BOISSE', '05 49 xx xx xx', '05 49 xx xx xx', 'Audrey Demonsay');
INSERT INTO `client` VALUES (1255, 'Bevrinet Urgences', '84, lieu-dit des jaunes', '17780', 'ST NAZAIRE SUR CHARENTE', '05 49 xx xx xx', '05 49 xx xx xx', 'Lucie Hervieux');
INSERT INTO `client` VALUES (1261, 'Tétardolle SA', '2 bis, place de la Révolution', '17340', 'YVES', '05 49 xx xx xx', '05 49 xx xx xx', 'Maxence Lardreau');
INSERT INTO `client` VALUES (1270, 'Lycée des Pommiers', '94, rue des Pommiers', '16300', 'BARBEZIEUX', '05 45 4x xx xx', '05 45 4x xx xx', 'Janny Abrard');
INSERT INTO `client` VALUES (1345, 'Jardin Vert', '41, impasse du canard', '16700', 'VILLEGATS', '05 49 xx xx xx', '05 49 xx xx xx', 'Rihana Riflau');

-- --------------------------------------------------------

-- 
-- Structure de la table `intervenant`
-- 

CREATE TABLE `intervenant` (
  `num` int(11) NOT NULL,
  `codePole` double default NULL,
  `nom` varchar(255) default NULL,
  `prenom` varchar(255) default NULL,
  `dateEmbauche` datetime default NULL,
  `dateFinContrat` datetime default NULL,
  `dateNaiss` datetime default NULL,
  `rue` varchar(255) default NULL,
  `CP` varchar(255) default NULL,
  `ville` varchar(255) default NULL,
  `tel` varchar(255) default NULL,
  `coutHoraire` varchar(255) default NULL,
  PRIMARY KEY  (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Contenu de la table `intervenant`
-- 

INSERT INTO `intervenant` VALUES (102100, 1, 'Degret', 'Kévin', '2000-08-09 00:00:00', NULL, '1976-10-22 00:00:00', '28, cours du marquis Montcalm', '17000', 'LA ROCHELLE', '05 46 4x xx xx', NULL);
INSERT INTO `intervenant` VALUES (102101, 2, 'De Gillot', 'Rino', '2000-08-09 00:00:00', NULL, '1972-06-08 00:00:00', '33, impasse  Roosevelt', '17000', 'LA ROCHELLE', '05 46 4x xx xx', NULL);
INSERT INTO `intervenant` VALUES (102102, 2, 'Lacoste', 'Emmanuelle', '2000-10-03 00:00:00', NULL, '1969-01-10 00:00:00', '22, avenue du four à pain', '16700', 'VILLEGATS', '05 46 xx xx xx', NULL);
INSERT INTO `intervenant` VALUES (102105, 1, 'Aron', 'Élie', '2001-02-03 00:00:00', NULL, '1981-03-16 00:00:00', '7, avenue Gambetta', '17330', 'LOZAY', '05 46 4x xx xx', NULL);
INSERT INTO `intervenant` VALUES (102107, 2, 'Vier', 'Janny', '2001-03-31 00:00:00', NULL, '1962-10-01 00:00:00', '50 bis, boulevard du ferrailleur', '17500', 'VILLEXAVIER', '05 46 4x xx xx', NULL);
INSERT INTO `intervenant` VALUES (102109, 2, 'Regnier', 'Tania', '2001-05-25 00:00:00', NULL, '1971-03-18 00:00:00', '78 bis, impasse du clochet', '16000', 'ANGOULEME', '05 46 xx xx xx', NULL);
INSERT INTO `intervenant` VALUES (102115, 2, 'Piatsky', 'Karole', '2002-01-14 00:00:00', NULL, '1958-01-28 00:00:00', '25, avenue de la Belle-Dame', '17250', 'STE RADEGONDE', '05 46 4x xx xx', NULL);
INSERT INTO `intervenant` VALUES (102116, 1, 'Barthe', 'Sébastien', '2002-03-09 00:00:00', NULL, '1960-08-12 00:00:00', '74, route de la jument verte', '16700', 'VILLEGATS', '05 46 xx xx xx', NULL);
INSERT INTO `intervenant` VALUES (102117, 1, 'Desormeau', 'Margaux', '2002-08-28 00:00:00', NULL, '1966-03-29 00:00:00', '50, rue du clos du marché', '17340', 'YVES', '05 46 4x xx xx', NULL);
INSERT INTO `intervenant` VALUES (102118, 2, 'Ateur', 'Nordine', '2003-04-17 00:00:00', '2006-04-15 00:00:00', '1969-11-05 00:00:00', '10 bis, cours  Montaigne', '17100', 'VENERAND', '05 46 4x xx xx', NULL);
INSERT INTO `intervenant` VALUES (102119, 2, 'Péret', 'Inès', '2003-09-08 00:00:00', NULL, '1970-04-06 00:00:00', '21, passage de la Belladone', '17190', 'ST GEORGES D OLERON', '05 46 4x xx xx', NULL);
INSERT INTO `intervenant` VALUES (102120, 1, 'Gaboriaud', 'Frédéric', '2004-05-23 00:00:00', NULL, '1985-12-25 00:00:00', '30 bis, porte de la Seine', '17138', 'PUILBOREAU', '05 46 4x xx xx', NULL);
INSERT INTO `intervenant` VALUES (102121, 1, 'Degory', 'Lucile', '2005-02-14 00:00:00', NULL, '1974-11-25 00:00:00', '37, route  Jeanne D''Arc', '17100', 'VENERAND', '05 46 4x xx xx', NULL);
INSERT INTO `intervenant` VALUES (102122, 2, 'Lopez', 'Jésus', '2005-02-17 00:00:00', NULL, '1960-01-17 00:00:00', '5, avenue du col de seine', '16400', 'VOEUIL ET GIGET', '05 46 xx xx xx', NULL);
INSERT INTO `intervenant` VALUES (102123, 2, 'Papion', 'Sylvestre', '2005-03-04 00:00:00', NULL, '1985-05-04 00:00:00', '74, boulevard de Cannes', '17770', 'VILLARS LES BOIS', '05 46 4x xx xx', NULL);
INSERT INTO `intervenant` VALUES (102124, 1, 'Mert', 'Wylliam', '2005-04-26 00:00:00', NULL, '1986-09-13 00:00:00', '83 bis, rue du col de seine', '17600', 'CORME ROYAL', '05 46 4x xx xx', NULL);
INSERT INTO `intervenant` VALUES (102125, 2, 'Amieau', 'Eline', '2005-05-05 00:00:00', NULL, '1966-09-03 00:00:00', '28 ter, rue de Poitiers', '17170', 'LA RONDE', '05 46 4x xx xx', NULL);
INSERT INTO `intervenant` VALUES (102126, 2, 'Leforestier', 'Loïc', '2005-05-05 00:00:00', NULL, '1965-12-03 00:00:00', '13 rue des Fleurs', '17600', 'CORME', '05 46 4x xx xx', NULL);

-- --------------------------------------------------------

-- 
-- Structure de la table `participer`
-- 

CREATE TABLE `participer` (
  `numIntervenant` int(11) NOT NULL,
  `numActivite` int(11) NOT NULL,
  `dateEntree` datetime default NULL,
  `dateSortie` datetime default NULL,
  PRIMARY KEY  (`numIntervenant`,`numActivite`),
  KEY `numActivite` (`numActivite`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Contenu de la table `participer`
-- 

INSERT INTO `participer` VALUES (102102, 5, '2006-04-24 00:00:00', '2006-05-18 00:00:00');
INSERT INTO `participer` VALUES (102102, 6, '2006-04-21 00:00:00', '2006-05-05 00:00:00');
INSERT INTO `participer` VALUES (102109, 7, '2006-04-12 00:00:00', '2006-04-26 00:00:00');
INSERT INTO `participer` VALUES (102118, 6, '2006-04-20 00:00:00', '2006-05-04 00:00:00');
INSERT INTO `participer` VALUES (102119, 5, '2006-04-12 00:00:00', '2006-04-24 00:00:00');
INSERT INTO `participer` VALUES (102122, 3, '2006-04-10 00:00:00', '2006-04-18 00:00:00');
INSERT INTO `participer` VALUES (102123, 1, '2006-04-07 00:00:00', '2006-04-13 00:00:00');
INSERT INTO `participer` VALUES (102123, 3, '2006-04-11 00:00:00', '2006-04-18 00:00:00');
INSERT INTO `participer` VALUES (102123, 7, '2006-04-12 00:00:00', '2006-04-28 00:00:00');
INSERT INTO `participer` VALUES (102125, 2, '2006-04-14 00:00:00', '2006-05-02 00:00:00');
INSERT INTO `participer` VALUES (102125, 4, '2006-04-10 00:00:00', '2006-04-24 00:00:00');
INSERT INTO `participer` VALUES (102126, 1, '2006-03-27 00:00:00', '2006-03-31 00:00:00');

-- --------------------------------------------------------

-- 
-- Structure de la table `pole`
-- 

CREATE TABLE `pole` (
  `code` int(11) NOT NULL auto_increment,
  `libelle` varchar(32) default NULL,
  `competence` varchar(64) default NULL,
  `description` varchar(256) default NULL,
  PRIMARY KEY  (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- 
-- Contenu de la table `pole`
-- 

INSERT INTO `pole` VALUES (1, 'Développement', "Assistance à l'écriture de cahier
des charges", "Aider les clients à définir les
caractéristiques de l'application à
développer");
INSERT INTO `pole` VALUES (2, 'Développement', "Développement d'applications
de gestion", "Développer des applications de
gestion.");
INSERT INTO `pole` VALUES (3, 'Développement', "Spécialistes dans le domaine du
bâtiment", "Développer des applications de suivi
de chantier, gestion de planning…");
INSERT INTO `pole` VALUES (4, 'Développement', "Spécialistes dans le domaine
commercial", "Développer des applications liées au
suivi de la relation client");
INSERT INTO `pole` VALUES (5, 'Développement', "Spécialistes dans le domaine
comptable", "Aider les clients à installer, paramétrer
et utiliser les logiciels comptables tels
que les gammes Ciel et SAARI. ");
INSERT INTO `pole` VALUES (6, 'Réseau', "Etude fonctionnelle et
technique", "Assister les entreprises dans la
définition des besoins d'évolution de
leur infrastructure informatique");
INSERT INTO `pole` VALUES (7, 'Réseau', "Câblage, couplage téléphonique", "Câbler une installation informatique et
assurer la liaison entre le réseau
informatique et téléphonique");
INSERT INTO `pole` VALUES (8, 'Réseau', "Interconnexion de sites distants", "Installer une infrastructure réseau liant
plusieurs bâtiments distants");
INSERT INTO `pole` VALUES (9, 'Réseau', "Accès réseau Internet", "Installer et paramétrer l'accès à Internet");
INSERT INTO `pole` VALUES (10, 'Réseau', "Administration", "Gérer les serveurs, les utilisateurs, les
sauvegardes…");
INSERT INTO `pole` VALUES (11, 'Réseau', "Test et contrôle qualité", "Vérifier l'état de fonctionnement d'une
installation actuelle ou d'une
installation en réalisation");
INSERT INTO `pole` VALUES (12, 'Réseau', "Assistance technique", "Assister les clients en cas de
dysfonctionnement de leur installation");

-- --------------------------------------------------------

-- 
-- Structure de la table `projet`
-- 

CREATE TABLE `projet` (
  `code` varchar(255) NOT NULL,
  `nom` varchar(255) default NULL,
  `numClient` int(11) default NULL,
  `codePole` int(11) default NULL,
  `description` varchar(255) default NULL,
  `origine` varchar(50) default NULL,
  `dateReponse` datetime default NULL,
  `dateDebut` datetime default NULL,
  `dateFin` datetime default NULL,
  `etat` varchar(255) default NULL,
  `commentaire` text,
  PRIMARY KEY  (`code`),
  KEY `numClient` (`numClient`),
  KEY `codePole` (`codePole`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Contenu de la table `projet`
-- 

INSERT INTO `projet` VALUES ('P050297', 'ResMarquez', 805, 2, 'mise en place d''un réseau…', 'Devis', '2006-02-10 00:00:00', '2006-03-18 00:00:00', '2006-03-24 00:00:00', 'Non Réalisé', NULL);
INSERT INTO `projet` VALUES ('P050298', 'ResAZ-FromagerieServices', 467, 2, 'mise en place d''un réseau…', 'Devis', '2006-02-10 00:00:00', '2006-03-22 00:00:00', '2006-03-25 00:00:00', 'Terminé', NULL);
INSERT INTO `projet` VALUES ('P050299', 'ResSteEanneRécupération', 677, 2, 'mise en place d''un réseau…', 'Devis', '2006-02-13 00:00:00', '2006-03-23 00:00:00', '2006-03-29 00:00:00', 'Terminé', NULL);
INSERT INTO `projet` VALUES ('P050300', 'DévHyper-Pubphone', 868, 1, 'développement…', 'Devis', '2006-02-13 00:00:00', '2006-03-25 00:00:00', '2006-03-29 00:00:00', 'Non Réalisé', NULL);
INSERT INTO `projet` VALUES ('P050301', 'ResDelorsier', 577, 2, 'mise en place d''un réseau…', 'Devis', '2006-02-15 00:00:00', '2006-03-25 00:00:00', '2006-03-29 00:00:00', 'Terminé', NULL);
INSERT INTO `projet` VALUES ('P050302', 'DévRaymond', 1195, 1, 'développement…', 'Devis', '2006-02-18 00:00:00', '2006-03-26 00:00:00', '2006-03-29 00:00:00', 'Terminé', NULL);
INSERT INTO `projet` VALUES ('P050303', 'ResValentin', 990, 2, 'mise en place d''un réseau…', 'Devis', '2006-02-20 00:00:00', '2006-03-26 00:00:00', '2006-03-31 00:00:00', 'Terminé', NULL);
INSERT INTO `projet` VALUES ('P050304', 'DévPelleret', 1169, 1, 'développement…', 'Devis', '2006-02-21 00:00:00', '2006-03-28 00:00:00', '2006-04-12 00:00:00', 'En Cours', NULL);
INSERT INTO `projet` VALUES ('P050305', 'DévGacollain', 888, 1, 'développement…', 'Devis', '2006-02-24 00:00:00', '2006-03-29 00:00:00', '2006-04-09 00:00:00', 'En Cours', NULL);
INSERT INTO `projet` VALUES ('P050306', 'ResJouet&Cie', 954, 2, 'mise en place d''un réseau…', 'Marché', '2006-02-26 00:00:00', '2006-04-07 00:00:00', '2006-04-29 00:00:00', 'Candidat', NULL);
INSERT INTO `projet` VALUES ('P050307', 'ResKorriganServices', 986, 2, 'mise en place d''un réseau…', 'Devis', '2006-02-26 00:00:00', '2006-04-07 00:00:00', '2006-04-14 00:00:00', 'Candidat', NULL);
INSERT INTO `projet` VALUES ('P050308', 'DévBarsau', 338, 1, 'développement…', 'Devis', '2006-03-01 00:00:00', '2006-04-10 00:00:00', '2006-04-14 00:00:00', 'Candidat', NULL);
INSERT INTO `projet` VALUES ('P050309', 'ResHermioneSTG1', 786, 2, 'mise en place d''un réseau local dans un lycée : serveur + 24 postes +,,,', 'Marché', '2006-03-04 00:00:00', '2006-03-25 00:00:00', '2006-05-01 00:00:00', 'En Cours', NULL);
INSERT INTO `projet` VALUES ('P050310', 'DévBevrinetUrgences', 1255, 1, 'développement…', 'Devis', '2006-03-08 00:00:00', '2006-04-11 00:00:00', '2006-04-14 00:00:00', 'Candidat', NULL);
INSERT INTO `projet` VALUES ('P050311', 'DévBardon24', 1010, 1, 'développement…', 'Devis', '2006-03-09 00:00:00', '2006-04-12 00:00:00', '2006-04-23 00:00:00', 'Candidat', NULL);
INSERT INTO `projet` VALUES ('P050312', 'ResTétardolle', 1261, 2, 'mise en place d''un réseau…', 'Devis', '2006-03-12 00:00:00', '2006-04-14 00:00:00', '2006-04-26 00:00:00', 'Candidat', NULL);
INSERT INTO `projet` VALUES ('P050313', 'DévMateaud', 847, 1, 'développement…', 'Devis', '2006-03-12 00:00:00', '2006-04-22 00:00:00', '2006-04-26 00:00:00', 'Candidat', NULL);
INSERT INTO `projet` VALUES ('P050314', 'DévLouisBlanc', 1207, 1, 'développement…', 'Devis', '2006-03-14 00:00:00', '2006-04-22 00:00:00', '2006-04-28 00:00:00', 'Candidat', NULL);
INSERT INTO `projet` VALUES ('P050315', 'ResVetAffaire', 1066, 2, 'mise en place d''un réseau…', 'Devis', '2006-03-15 00:00:00', '2006-04-25 00:00:00', '2006-05-19 00:00:00', 'Candidat', NULL);
INSERT INTO `projet` VALUES ('P050316', 'ResJardinVert', 1345, 2, 'mise en place d''un réseau…', 'Marché', '2006-03-18 00:00:00', '2006-04-25 00:00:00', '2006-06-14 00:00:00', 'Candidat', NULL);
INSERT INTO `projet` VALUES ('P050317', 'DévJardHiou', 838, 1, 'développement…', 'Devis', '2006-03-19 00:00:00', '2006-04-25 00:00:00', '2006-04-29 00:00:00', 'Candidat', NULL);
INSERT INTO `projet` VALUES ('P050318', 'ResBertahard', 247, 2, 'mise en place d''un réseau…', 'Devis', '2006-03-20 00:00:00', '2006-04-27 00:00:00', '2006-05-05 00:00:00', 'Candidat', NULL);
INSERT INTO `projet` VALUES ('P050319', 'DévJouetsLagnon', 315, 1, 'développement…', 'Devis', '2006-03-21 00:00:00', '2006-05-02 00:00:00', '2006-05-05 00:00:00', 'Candidat', NULL);
INSERT INTO `projet` VALUES ('P050320', 'ResParfumerieLanvin', 882, 2, 'mise en place d''un réseau…', 'Devis', '2006-03-21 00:00:00', '2006-05-02 00:00:00', '2006-05-05 00:00:00', 'Candidat', NULL);

-- 
-- Contraintes pour les tables exportées
-- 

-- 
-- Contraintes pour la table `activite`
-- 
ALTER TABLE `activite`
  ADD CONSTRAINT `activite_ibfk_1` FOREIGN KEY (`codeProjet`) REFERENCES `projet` (`code`);

-- 
-- Contraintes pour la table `participer`
-- 
ALTER TABLE `participer`
  ADD CONSTRAINT `participer_ibfk_3` FOREIGN KEY (`numActivite`) REFERENCES `activite` (`num`),
  ADD CONSTRAINT `participer_ibfk_2` FOREIGN KEY (`numIntervenant`) REFERENCES `intervenant` (`num`);

-- 
-- Contraintes pour la table `projet`
-- 
ALTER TABLE `projet`
  ADD CONSTRAINT `projet_ibfk_2` FOREIGN KEY (`codePole`) REFERENCES `pole` (`code`),
  ADD CONSTRAINT `projet_ibfk_1` FOREIGN KEY (`numClient`) REFERENCES `client` (`num`);
