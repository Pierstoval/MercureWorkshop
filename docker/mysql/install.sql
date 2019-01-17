-- phpMyAdmin SQL Dump
-- version 2.6.4-pl3
-- http://www.phpmyadmin.net
-- 
-- Serveur: db457938209.db.1and1.com
-- Généré le : Mardi 01 Octobre 2013 à 09:41
-- Version du serveur: 5.1.71
-- Version de PHP: 5.3.3-7+squeeze17
-- 
-- Base de données: `db457938209`
-- 

SET NAMES "utf8";

DROP DATABASE IF EXISTS `corahnrin`;
CREATE DATABASE `corahnrin` DEFAULT CHARACTER SET "utf8" COLLATE utf8_unicode_ci;

USE `corahnrin`;

-- --------------------------------------------------------

-- 
-- Structure de la table `est_armes`
-- 

DROP TABLE IF EXISTS `est_armes`;
CREATE TABLE `est_armes` (
  `arme_id` int(11) NOT NULL AUTO_INCREMENT,
  `arme_name` varchar(50) NOT NULL,
  `arme_dmg` tinyint(4) NOT NULL DEFAULT '1',
  `arme_prix` smallint(5) unsigned NOT NULL,
  `arme_dispo` varchar(2) NOT NULL DEFAULT 'FR',
  `arme_domain` varchar(5) NOT NULL DEFAULT '2',
  `arme_range` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`arme_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

-- 
-- Contenu de la table `est_armes`
-- 

INSERT INTO `est_armes` (`arme_id`, `arme_name`, `arme_dmg`, `arme_prix`, `arme_dispo`, `arme_domain`, `arme_range`) VALUES (1, 'Dague,poignard,couteau', 1, 4, 'FR', '2,14', 4),
(2, 'Fronde', 1, 2, 'FR', '14', 8),
(3, 'Javelot', 2, 8, 'CO', '2,14', 4),
(4, 'Arc', 2, 30, 'FR', '14', 20),
(5, 'Arbalète', 2, 50, 'CO', '14', 24),
(6, 'Francisque', 2, 20, 'FR', '2,14', 2),
(7, 'Lance courte, épieu', 2, 20, 'FR', '2,14', 3),
(8, 'Gourdin', 1, 2, 'FR', '2', 0),
(9, 'Marteau d''artisan', 2, 10, 'FR', '2', 0),
(10, 'Masse d''armes', 2, 20, 'CO', '2', 0),
(11, 'Carath', 2, 8, 'FR', '2', 0),
(12, 'Hache de bataille', 3, 50, 'CO', '2', 0),
(13, 'Epée longue droite Osag', 3, 70, 'CO', '2', 0),
(14, 'Glaive continental', 2, 50, 'CO', '2', 0),
(15, 'Arme d''hast', 3, 80, 'RA', '2', 0),
(16, 'Lance longue', 3, 40, 'CO', '2', 0),
(17, 'Marteau à deux mains', 4, 100, 'RA', '2', 0),
(18, 'Claymore', 4, 100, 'RA', '2', 0);

-- --------------------------------------------------------

-- 
-- Structure de la table `est_armures`
-- 

DROP TABLE IF EXISTS `est_armures`;
CREATE TABLE `est_armures` (
  `armure_id` int(11) NOT NULL AUTO_INCREMENT,
  `armure_name` varchar(50) NOT NULL,
  `armure_desc` text NOT NULL,
  `armure_prot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `armure_prix` smallint(5) unsigned NOT NULL,
  `armure_dispo` varchar(2) NOT NULL DEFAULT 'FR',
  PRIMARY KEY (`armure_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

-- 
-- Contenu de la table `est_armures`
-- 

INSERT INTO `est_armures` (`armure_id`, `armure_name`, `armure_desc`, `armure_prot`, `armure_prix`, `armure_dispo`) VALUES (1, 'Bouclier rond', 'bois renforcé de métal', 1, 20, 'FR'),
(2, 'Bouclier Osag', 'bois et renforts de métal, rectangulaire', 1, 20, 'CO'),
(3, 'Écu Hilderin', 'en métal, de forme triangulaire', 1, 30, 'RA'),
(4, 'Cotte de cuir', '', 1, 20, 'FR'),
(5, 'Cotte de cuir clouté', '', 2, 30, 'CO'),
(6, 'Cotte de mailles', '', 3, 0, 'CO'),
(7, 'Cuirasse en roseau', '', 2, 10, 'RA'),
(8, 'Cuirasse continentale', ' en lamelles, cuir et métal', 3, 100, 'RA'),
(9, 'Armure de plaques', '', 4, 300, 'EX'),
(10, 'Cagoule de cuir', ' (Chaque armure est fournie avec le casque. Ne pas le porter suscite un malus de 1 au score de Protection, minimum 1)', 0, 4, 'FR'),
(11, 'Cagoule de mailles', ' (Chaque armure est fournie avec le casque. Ne pas le porter suscite un malus de 1 au score de Protection, minimum 1)', 0, 8, 'CO'),
(12, 'Casque Osag', ' (Chaque armure est fournie avec le casque. Ne pas le porter suscite un malus de 1 au score de Protection, minimum 1)', 0, 10, 'FR'),
(13, 'Casque ouvert', ' (Chaque armure est fournie avec le casque. Ne pas le porter suscite un malus de 1 au score de Protection, minimum 1)', 0, 20, 'CO'),
(14, 'Heaume', ' (Chaque armure est fournie avec le casque. Ne pas le porter suscite un malus de 1 au score de Protection, minimum 1)', 0, 40, 'RA');

-- --------------------------------------------------------

-- 
-- Structure de la table `est_avantages`
-- 

DROP TABLE IF EXISTS `est_avantages`;
CREATE TABLE `est_avantages` (
  `avtg_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `avtg_name` varchar(50) NOT NULL,
  `avtg_xp` smallint(5) unsigned NOT NULL,
  `avtg_desc` text NOT NULL,
  `avtg_double` enum('0','1') NOT NULL DEFAULT '0',
  `avtg_bonusdisc` varchar(10) NOT NULL,
  PRIMARY KEY (`avtg_id`),
  UNIQUE KEY `avtg_name` (`avtg_name`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

-- 
-- Contenu de la table `est_avantages`
-- 

INSERT INTO `est_avantages` (`avtg_id`, `avtg_name`, `avtg_xp`, `avtg_desc`, `avtg_double`, `avtg_bonusdisc`) VALUES (1, 'Allié isolé', 20, 'Un allié dans un village, prévôt, marchand, artisan...', '0', ''),
(2, 'Allié mentor', 40, 'Un mentor ou un professeur qui vous donne un bonus de +1 dans un Domaine', '0', ''),
(3, 'Allié influent', 50, 'Un important homme politique, chef de guilde ou de clan, qui a un pouvoir important dans tout le pays', '0', ''),
(4, 'Aisance financière 1', 10, '+20 dA à la création du personnage', '0', '20a'),
(5, 'Aisance financière 2', 20, '+50 dA à la création du personnage', '0', '50a'),
(6, 'Aisance financière 3', 30, '+10 dG à la création du personnage', '0', '10g'),
(7, 'Aisance financière 4', 40, '+50 dG à la création du personnage', '0', '50g'),
(8, 'Aisance financière 5', 50, '+100 dG à la création du personnage', '0', '100g'),
(9, 'Beau', 30, '+1 aux jets de Relation et Représentation', '1', '11,12'),
(10, 'Bonne santé', 40, '+1 case d''état de santé, +1 aux jets de Vigueur face à la maladie et aux poisons', '1', 'bless'),
(11, 'Bonne vue', 30, '+1 aux jets de Perception concernant la vue et Tir et Lancer', '1', '8,14'),
(12, 'Charismatique', 30, '+1 aux jets de Relation et Représentation', '1', '11,12'),
(13, 'Endurant', 30, '+1 au score de Vigueur et aux jets de Prouesses concernant l''endurance', '1', 'vig,10'),
(14, 'Esprit solide', 30, '+1 au score de Résistance Mentale', '1', 'resm'),
(15, 'Fort', 40, '+1 aux jets de Prouesses concernant la force, Combat au Contact, Tir & lancer', '1', '2,10,14'),
(16, 'Intuitif', 40, '+1 aux jets de Mystères Demorthèn, Voyage et Relation', '1', '6,11,15'),
(17, 'Leste', 40, '+1 au score de Défense, et aux jets de Discrétion et de Prouesses concernant l''agilité', '1', 'def,3,10'),
(18, 'Ouïe fine', 20, '+1 aux jets de Perception auditive', '1', '8'),
(19, 'Rapide', 20, '+1 au score de Rapidité', '1', 'rap'),
(20, 'Vif d''esprit', 40, '+1 aux jets de Science, Magience et Occultisme', '1', '4,7,13'),
(21, 'Chanceux', 30, '+1 aux jets de Chance', '1', ''),
(22, 'Instinct de survie', 30, '+1 point de Survie', '1', 'sur'),
(23, 'Lettré', 20, 'Le personnage sait lire et écrire, et choisit un bonus de +1 au choix : Erudition, Magience, Science ou Occultisme', '0', ''),
(24, 'Arts de combat (Attaque sournoise)', 20, 'Si le personnage tient un ennemi en embuscade et qu''il touche sa cible, il inflige +5 dégâts. Il ne doit utiliser qu''une arme courte (dague, épée courte, couteau...)', '0', ''),
(25, 'Arts de combat (Combat à 2 armes)', 20, 'La deuxième arme doit être courte ou de petite taille. Il ajoute +2 au bonus de son attitude de combat. Le bonus est au choix s''il est en atittude standard. Sinon, le bonus s''ajoute à l''attaque en posture offensive, et en défense en posture défensive.', '0', ''),
(26, 'Arts de combat (Parade)', 20, 'En attitude Standard, Défensive ou Rapide, et en bénéficiant de l''initiative, le personnage peut effectuer un jet d''attaque contre une cible. Si le résultat est supérieur au jet d''attaque de la cible, le personnage pare l''attaque. Sinon, l''attaque est résolue normalement', '0', ''),
(27, 'Arts de combat (Archerie)', 20, 'Niveau 5 requis en Tir et Lancer. Le personnage agit en dernier pendant le tour où il utilise cet art, mais il dispose d''un bonus de 2 en Tir &amp; Lancer pour son attaque, et annule tout malus sur une cible en mouvement.', '0', ''),
(28, 'Arts de combat (Cavalerie)', 20, 'Discipline Equitation nécessaire. Si le personnage sur une monture subit moins de 5 dégâts, il n''est pas désarçonné. Le personnage peut également charger en premier round d''un combat, et bénéficier d''un bonus de +3 à son jet (+4 avec une lance)', '0', ''),
(29, 'Nez fin', 10, '+1 aux jets de Perception concernant l''odorat', '1', '8'),
(30, 'Palais fin', 10, '+1 aux jets de Perception concernant le goût', '1', '8');

-- --------------------------------------------------------

-- 
-- Structure de la table `est_avdesv`
-- 

DROP TABLE IF EXISTS `est_avdesv`;
CREATE TABLE `est_avdesv` (
  `avdesv_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `avdesv_type` enum('avtg','desv') NOT NULL DEFAULT 'avtg',
  `avdesv_name` varchar(50) NOT NULL,
  `avdesv_name_female` varchar(255) NOT NULL,
  `avdesv_xp` smallint(5) unsigned NOT NULL,
  `avdesv_desc` text NOT NULL,
  `avdesv_double` enum('0','1') NOT NULL DEFAULT '0',
  `avdesv_bonusdisc` varchar(10) NOT NULL,
  PRIMARY KEY (`avdesv_id`),
  UNIQUE KEY `avdesv_name` (`avdesv_name`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 AUTO_INCREMENT=53 ;

-- 
-- Contenu de la table `est_avdesv`
-- 

INSERT INTO `est_avdesv` (`avdesv_id`, `avdesv_type`, `avdesv_name`, `avdesv_name_female`, `avdesv_xp`, `avdesv_desc`, `avdesv_double`, `avdesv_bonusdisc`) VALUES (1, 'avtg', 'Allié isolé', 'Allié isolé', 20, 'Un allié dans un village, prévôt, marchand, artisan...', '0', ''),
(2, 'avtg', 'Allié mentor', 'Allié mentor', 40, 'Un mentor ou un professeur qui vous donne un bonus de +1 dans un Domaine', '0', ''),
(3, 'avtg', 'Allié influent', 'Allié influent', 50, 'Un important homme politique, chef de guilde ou de clan, qui a un pouvoir important dans tout le pays', '0', ''),
(4, 'avtg', 'Aisance financière 1', 'Aisance financière 1', 10, '+20 daols d''azur à la création du personnage', '0', '20a'),
(5, 'avtg', 'Aisance financière 2', 'Aisance financière 2', 20, '+50 daols d''azur à la création du personnage', '0', '50a'),
(6, 'avtg', 'Aisance financière 3', 'Aisance financière 3', 30, '+10 daols de givre à la création du personnage', '0', '10g'),
(7, 'avtg', 'Aisance financière 4', 'Aisance financière 4', 40, '+50 daols de givre à la création du personnage', '0', '50g'),
(8, 'avtg', 'Aisance financière 5', 'Aisance financière 5', 50, '+100 daols de givre à la création du personnage', '0', '100g'),
(9, 'avtg', 'Beau', 'Belle', 30, '+1 aux jets de Relation et Représentation', '1', '11,12'),
(10, 'avtg', 'Bonne santé', 'Bonne santé', 40, '+1 case d''état de santé, +1 aux jets de Vigueur face à la maladie et aux poisons', '1', 'bless'),
(11, 'avtg', 'Bonne vue', 'Bonne vue', 30, '+1 aux jets de Perception concernant la vue et Tir et Lancer', '1', '8,14'),
(12, 'avtg', 'Charismatique', 'Charismatique', 30, '+1 aux jets de Relation et Représentation', '1', '11,12'),
(13, 'avtg', 'Endurant', 'Endurante', 30, '+1 au score de Vigueur et aux jets de Prouesses concernant l''endurance', '1', 'vig,10'),
(14, 'avtg', 'Esprit solide', 'Esprit solide', 30, '+1 au score de Résistance Mentale', '1', 'resm'),
(15, 'avtg', 'Fort', 'Forte', 40, '+1 aux jets de Prouesses concernant la force, Combat au Contact, Tir & lancer', '1', '2,10,14'),
(16, 'avtg', 'Intuitif', 'Intuitive', 40, '+1 aux jets de Mystères Demorthèn, Voyage et Relation', '1', '6,11,15'),
(17, 'avtg', 'Leste', 'Leste', 40, '+1 au score de Défense, et aux jets de Discrétion et de Prouesses concernant l''agilité', '1', 'def,3,10'),
(18, 'avtg', 'Ouïe fine', 'Ouïe fine', 20, '+1 aux jets de Perception auditive', '1', '8'),
(19, 'avtg', 'Rapide', 'Rapide', 20, '+1 au score de Rapidité', '1', 'rap'),
(20, 'avtg', 'Vif d''esprit', 'Vive d''esprit', 40, '+1 aux jets de Science, Magience et Occultisme', '1', '4,7,13'),
(21, 'avtg', 'Chanceux', 'Chanceuse', 30, '+1 aux jets de Chance', '1', ''),
(22, 'avtg', 'Instinct de survie', 'Instinct de survie', 30, '+1 point de Survie', '1', 'sur'),
(23, 'avtg', 'Lettré', 'Lettrée', 20, 'Le personnage sait lire et écrire, et choisit un bonus de +1 au choix : Erudition, Magience, Science ou Occultisme', '0', ''),
(24, 'avtg', 'Arts de combat (Attaque sournoise)', 'Arts de combat (Attaque sournoise)', 20, 'Si le personnage tient un ennemi en embuscade et qu''il touche sa cible, il inflige +5 dégâts. Il ne doit utiliser qu''une arme courte (dague, épée courte, couteau...)', '0', ''),
(25, 'avtg', 'Arts de combat (Combat à 2 armes)', 'Arts de combat (Combat à 2 armes)', 20, 'La deuxième arme doit être courte ou de petite taille. Il ajoute +2 au bonus de son attitude de combat. Le bonus est au choix s''il est en atittude standard. Sinon, le bonus s''ajoute à l''attaque en posture offensive, et en défense en posture défensive.', '0', ''),
(26, 'avtg', 'Arts de combat (Parade)', 'Arts de combat (Parade)', 20, 'En attitude Standard, Défensive ou Rapide, et en bénéficiant de l''initiative, le personnage peut effectuer un jet d''attaque contre une cible. Si le résultat est supérieur au jet d''attaque de la cible, le personnage pare l''attaque. Sinon, l''attaque est résolue normalement', '0', ''),
(27, 'avtg', 'Arts de combat (Archerie)', 'Arts de combat (Archerie)', 20, 'Niveau 5 requis en Tir et Lancer. Le personnage agit en dernier pendant le tour où il utilise cet art, mais il dispose d''un bonus de 2 en Tir &amp; Lancer pour son attaque, et annule tout malus sur une cible en mouvement.', '0', ''),
(28, 'avtg', 'Arts de combat (Cavalerie)', 'Arts de combat (Cavalerie)', 20, 'Discipline Equitation nécessaire. Si le personnage sur une monture subit moins de 5 dégâts, il n''est pas désarçonné. Le personnage peut également charger en premier round d''un combat, et bénéficier d''un bonus de +3 à son jet (+4 avec une lance)', '0', ''),
(29, 'avtg', 'Nez fin', 'Nez fin', 10, '+1 aux jets de Perception concernant l''odorat', '1', '8'),
(30, 'avtg', 'Palais fin', 'Palais fin', 10, '+1 aux jets de Perception concernant le goût', '1', '8'),
(31, 'desv', 'Boiteux', 'Boiteuse', 30, '-1 en Rapidité et en Défense', '0', 'def,rap'),
(32, 'desv', 'Dépendance', 'Dépendance', 20, '-1 en Vigueur, et une addiction (tabac, alcool, drogue...)', '0', 'vig'),
(33, 'desv', 'Douillet', 'Douillette', 20, '-1 au score de Vigueur et aux jets de Prouesses concernant l''endurance', '1', 'vig,10'),
(34, 'desv', 'Ennemi', 'Ennemi', 30, 'Une personne en veut au PJ et fera tout pour lui nuire', '0', ''),
(35, 'desv', 'Esprit faible', 'Esprit faible', 20, '-1 au score de Résistance Mentale', '1', 'resm'),
(36, 'desv', 'Faible', 'Faible', 30, '-1 aux jets de Prouesses concernant la force, Combat au Contact, Tir & lancer', '1', '2,10,14'),
(37, 'desv', 'Lent d''esprit', 'Lente d''esprit', 30, '-1 aux jets de Science, Magience et Occultisme', '1', '4,7,13'),
(38, 'desv', 'Fragile', 'Fragile', 20, '-1 point de Survie', '1', 'sur'),
(39, 'desv', 'Obtus', 'Obtuse', 30, '-1 aux jets de Mystères Demorthèn, Voyage et Relation', '1', '6,11,15'),
(40, 'desv', 'Laid', 'Laide', 20, '-1 aux jets de Relation et Représentation', '1', '11,12'),
(41, 'desv', 'Lent', 'Lente', 10, '-1 au score de Rapidité', '1', 'rap'),
(42, 'desv', 'Mal entendant', 'Mal entendante', 20, '-1 aux jets de Perception auditive', '1', '8'),
(43, 'desv', 'Malchanceux', 'Malchanceuse', 10, '-1 aux jets de Chance', '1', ''),
(44, 'desv', 'Maladif', 'Maladive', 30, '-1 case d''état de santé, -1 point de Vigueur', '0', 'bless,vig'),
(45, 'desv', 'Maladroit', 'Maladroite', 30, '-1 au score de Défense, et aux jets de Discrétion et de Prouesses concernant l''agilité', '1', 'def,3,10'),
(46, 'desv', 'Myope', 'Myope', 20, '-1 aux jets de Perception concernant la vue et Tir et Lancer', '1', '8,14'),
(47, 'desv', 'Pauvre', 'Pauvre', 10, 'Le PJ ne disposera que du quart de la somme en Daols fournie à la création', '0', ''),
(48, 'desv', 'Phobie', 'Phobie', 40, '+1 point de trauma, et souffre du désordre Phobie en plus de son désordre actuel', '0', 'trau'),
(49, 'desv', 'Timide', 'Timide', 10, '-1 aux jets de Relation et Représentation', '0', '11,12'),
(50, 'desv', 'Traumatisme', 'Traumatisme', 10, '+1 point de trauma', '1', 'trau'),
(51, 'desv', 'Anosmie', 'Anosmie', 5, '-1 aux jets de Perception concernant l''odorat', '1', '8'),
(52, 'desv', 'Agueusie', 'Agueusie', 5, '-1 aux jets de Perception concernant le goût', '1', '8');

-- --------------------------------------------------------

-- 
-- Structure de la table `est_characters`
-- 

DROP TABLE IF EXISTS `est_characters`;
CREATE TABLE `est_characters` (
  `char_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `char_name` varchar(255) NOT NULL,
  `char_job` varchar(50) NOT NULL,
  `char_origin` varchar(30) NOT NULL,
  `char_people` varchar(30) NOT NULL,
  `char_content` mediumtext NOT NULL,
  `char_date_creation` varchar(40) NOT NULL,
  `char_date_update` varchar(40) NOT NULL,
  `char_status` smallint(5) unsigned NOT NULL,
  `char_confirm_invite` varchar(255) NOT NULL,
  `game_id` smallint(5) unsigned NOT NULL,
  `user_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`char_id`),
  UNIQUE KEY `restriction user et name` (`char_name`,`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=673 DEFAULT CHARSET=utf8 AUTO_INCREMENT=673 ;

-- --------------------------------------------------------

-- 
-- Structure de la table `est_charmod`
-- 

DROP TABLE IF EXISTS `est_charmod`;
CREATE TABLE `est_charmod` (
  `charmod_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `charmod_date` bigint(20) unsigned NOT NULL,
  `charmod_content_before` text NOT NULL,
  `charmod_content_after` text NOT NULL,
  `charmod_page_module` varchar(255) NOT NULL,
  `charmod_page_request` text NOT NULL,
  `char_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`charmod_id`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8 AUTO_INCREMENT=156 ;

-- --------------------------------------------------------

-- 
-- Structure de la table `est_desavantages`
-- 

DROP TABLE IF EXISTS `est_desavantages`;
CREATE TABLE `est_desavantages` (
  `desv_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `desv_name` varchar(50) NOT NULL,
  `desv_xp` smallint(5) unsigned NOT NULL,
  `desv_desc` text NOT NULL,
  `desv_double` enum('0','1') NOT NULL DEFAULT '0',
  `desv_bonusdisc` varchar(10) NOT NULL,
  PRIMARY KEY (`desv_id`),
  UNIQUE KEY `desv_name` (`desv_name`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

-- 
-- Contenu de la table `est_desavantages`
-- 

INSERT INTO `est_desavantages` (`desv_id`, `desv_name`, `desv_xp`, `desv_desc`, `desv_double`, `desv_bonusdisc`) VALUES (1, 'Boiteux', 30, '-1 en Rapidité et en Défense', '0', 'def,rap'),
(2, 'Dépendance', 20, '-1 en Vigueur, et une addiction (tabac, alcool, drogue...)', '0', 'vig'),
(3, 'Douillet', 20, '-1 au score de Vigueur et aux jets de Prouesses concernant l''endurance', '1', 'vig,10'),
(4, 'Ennemi', 30, 'Une personne en veut au PJ et fera tout pour lui nuire', '0', ''),
(5, 'Esprit faible', 20, '-1 au score de Résistance Mentale', '1', 'resm'),
(6, 'Faible', 30, '-1 aux jets de Prouesses concernant la force, Combat au Contact, Tir & lancer', '1', '2,10,14'),
(7, 'Lent d''esprit', 30, '-1 aux jets de Science, Magience et Occultisme', '1', '4,7,13'),
(8, 'Fragile', 20, '-1 point de Survie', '1', 'sur'),
(9, 'Obtus', 30, '-1 aux jets de Mystères Demorthèn, Voyage et Relation', '1', '6,11,15'),
(10, 'Laid', 20, '-1 aux jets de Relation et Représentation', '1', '11,12'),
(11, 'Lent', 10, '-1 au score de Rapidité', '1', 'rap'),
(12, 'Mal entendant', 20, '-1 aux jets de Perception auditive', '1', '8'),
(13, 'Malchanceux', 10, '-1 aux jets de Chance', '1', ''),
(14, 'Maladif', 30, '-1 case dans la catégorie Moyen, -1 aux jets de Vigueur face à la maladie et aux poisons', '0', 'bless,vig'),
(15, 'Maladroit', 30, '-1 au score de Défense, et aux jets de Discrétion et de Prouesses concernant l''agilité', '1', 'def,3,10'),
(16, 'Myope', 20, '-1 aux jets de Perception concernant la vue et Tir et Lancer', '1', '8,14'),
(17, 'Pauvre', 10, 'Le PJ ne disposera que du quart de la somme en Daols fournie à la création', '0', ''),
(18, 'Phobie', 40, '+1 point de trauma, et souffre du désordre Phobie en plus de son désordre actuel', '0', 'trau'),
(19, 'Timide', 10, '-1 aux jets de Relation et Représentation', '1', '11,12'),
(20, 'Traumatisme', 10, '+1 point de trauma', '1', 'trau'),
(21, 'Anosmie', 5, '-1 aux jets de Perception concernant l''odorat', '1', '8'),
(22, 'Agueusie', 5, '-1 aux jets de Perception concernant le goût', '0', '8');

-- --------------------------------------------------------

-- 
-- Structure de la table `est_desordres`
-- 

DROP TABLE IF EXISTS `est_desordres`;
CREATE TABLE `est_desordres` (
  `desordre_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `desordre_name` varchar(255) NOT NULL,
  `desordre_voies_maj` varchar(255) NOT NULL,
  `desordre_voies_min` varchar(255) NOT NULL,
  PRIMARY KEY (`desordre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- 
-- Contenu de la table `est_desordres`
-- 

INSERT INTO `est_desordres` (`desordre_id`, `desordre_name`, `desordre_voies_maj`, `desordre_voies_min`) VALUES (1, 'Frénésie', '1', ''),
(2, 'Exaltation', '1', '5'),
(3, 'Mélancolie', '5', '1'),
(4, 'Hallucination', '2,3', ''),
(5, 'Confusion mentale', '2', '4'),
(6, 'Mimétisme', '', '2'),
(7, 'Obsession', '4', '2'),
(8, 'Hystérie', '3', ''),
(9, 'Mysticisme', '3,5', ''),
(10, 'Paranoïa', '4', '3');

-- --------------------------------------------------------

-- 
-- Structure de la table `est_discdoms`
-- 

DROP TABLE IF EXISTS `est_discdoms`;
CREATE TABLE `est_discdoms` (
  `discdoms_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `disc_id` smallint(5) unsigned NOT NULL,
  `domain_id` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`discdoms_id`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8 AUTO_INCREMENT=124 ;

-- 
-- Contenu de la table `est_discdoms`
-- 

INSERT INTO `est_discdoms` (`discdoms_id`, `disc_id`, `domain_id`) VALUES (1, 1, 10),
(3, 2, 5),
(4, 3, 14),
(5, 4, 13),
(6, 5, 14),
(7, 6, 2),
(8, 7, 14),
(9, 8, 14),
(10, 8, 2),
(11, 8, 7),
(12, 8, 13),
(13, 9, 15),
(14, 10, 11),
(15, 11, 2),
(16, 12, 1),
(17, 13, 13),
(18, 14, 3),
(19, 15, 15),
(20, 16, 12),
(21, 17, 11),
(22, 18, 15),
(23, 19, 2),
(24, 20, 2),
(25, 21, 12),
(26, 22, 11),
(27, 23, 6),
(28, 23, 9),
(29, 24, 1),
(30, 25, 13),
(31, 26, 11),
(32, 27, 4),
(33, 28, 9),
(34, 29, 10),
(35, 30, 1),
(36, 31, 12),
(37, 32, 11),
(38, 33, 1),
(39, 34, 16),
(40, 35, 5),
(41, 36, 10),
(42, 37, 2),
(43, 38, 15),
(44, 39, 10),
(45, 40, 7),
(46, 41, 11),
(47, 42, 8),
(48, 43, 10),
(49, 44, 4),
(50, 45, 1),
(51, 46, 5),
(52, 47, 1),
(53, 48, 3),
(54, 49, 16),
(55, 50, 13),
(56, 51, 2),
(57, 52, 16),
(58, 53, 6),
(59, 54, 16),
(60, 55, 7),
(61, 56, 13),
(62, 57, 12),
(63, 58, 7),
(64, 59, 11),
(65, 60, 12),
(66, 61, 12),
(67, 62, 2),
(68, 63, 6),
(69, 64, 16),
(70, 65, 8),
(71, 66, 13),
(72, 66, 1),
(73, 67, 1),
(74, 68, 13),
(75, 69, 4),
(76, 69, 13),
(77, 70, 6),
(78, 71, 6),
(79, 72, 1),
(80, 73, 3),
(81, 74, 9),
(82, 75, 10),
(83, 76, 15),
(84, 77, 8),
(85, 78, 5),
(86, 78, 8),
(87, 78, 15),
(88, 79, 1),
(89, 79, 13),
(90, 79, 7),
(91, 80, 1),
(92, 81, 11),
(93, 82, 7),
(94, 83, 5),
(95, 84, 16),
(96, 85, 1),
(97, 86, 5),
(98, 87, 16),
(99, 88, 4),
(100, 89, 9),
(101, 90, 4),
(102, 90, 13),
(103, 91, 6),
(104, 92, 1),
(105, 93, 8),
(106, 94, 1),
(107, 95, 6),
(108, 96, 15),
(109, 97, 6),
(110, 97, 9),
(111, 97, 13),
(112, 98, 5),
(113, 99, 16),
(114, 100, 4),
(115, 101, 12),
(116, 102, 8),
(117, 103, 3),
(118, 104, 13),
(119, 105, 2),
(120, 106, 16),
(121, 107, 16),
(122, 108, 10),
(123, 109, 13);

-- --------------------------------------------------------

-- 
-- Structure de la table `est_disciplines`
-- 

DROP TABLE IF EXISTS `est_disciplines`;
CREATE TABLE `est_disciplines` (
  `disc_id` int(11) NOT NULL AUTO_INCREMENT,
  `disc_name` varchar(50) NOT NULL,
  `disc_rang` varchar(255) NOT NULL DEFAULT 'Professionnel',
  PRIMARY KEY (`disc_id`),
  UNIQUE KEY `disc_name` (`disc_name`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8 AUTO_INCREMENT=110 ;

-- 
-- Contenu de la table `est_disciplines`
-- 

INSERT INTO `est_disciplines` (`disc_id`, `disc_name`, `disc_rang`) VALUES (1, 'Acrobaties', 'Professionnel'),
(2, 'Agriculture', 'Professionnel'),
(3, 'Arbalètes', 'Professionnel'),
(4, 'Architecture', 'Professionnel'),
(5, 'Arcs', 'Professionnel'),
(6, 'Armes contondantes', 'Professionnel'),
(7, 'Armes de jet', 'Professionnel'),
(8, 'Artefact de combat', 'Professionnel'),
(9, 'Attelage', 'Professionnel'),
(10, 'Baratin', 'Professionnel'),
(11, 'Bâtons', 'Professionnel'),
(12, 'Bijouterie', 'Professionnel'),
(13, 'Botanique', 'Professionnel'),
(14, 'Camouflage', 'Professionnel'),
(15, 'Cartographie', 'Professionnel'),
(16, 'Chant', 'Professionnel'),
(17, 'Charme', 'Professionnel'),
(18, 'Chemins de traverse (Varigal)', 'Professionnel'),
(19, 'Combat à mains nues', 'Professionnel'),
(20, 'Combat aveugle', 'Professionnel'),
(21, 'Comédie', 'Professionnel'),
(22, 'Commandement', 'Professionnel'),
(23, 'Concentration', 'Professionnel'),
(24, 'Confection', 'Professionnel'),
(25, 'Conn. troubles mentaux', 'Professionnel'),
(26, 'Conn. d''une faction', 'Professionnel'),
(27, 'Conn. des Flux', 'Professionnel'),
(28, 'Conn. du Temple', 'Professionnel'),
(29, 'Course', 'Professionnel'),
(30, 'Cuisine', 'Professionnel'),
(31, 'Danse', 'Professionnel'),
(32, 'Diplomatie', 'Professionnel'),
(33, 'Distillation', 'Professionnel'),
(34, 'Doctrine du Temple', 'Professionnel'),
(35, 'Dressage d''animaux', 'Professionnel'),
(36, 'Endurance', 'Professionnel'),
(37, 'Épées', 'Professionnel'),
(38, 'Équitation', 'Professionnel'),
(39, 'Escalade', 'Professionnel'),
(40, 'Ésotérisme', 'Professionnel'),
(41, 'Étiquette d''un milieu social', 'Professionnel'),
(42, 'Évaluation', 'Professionnel'),
(43, 'Évasion', 'Professionnel'),
(44, 'Extraction de Flux', 'Professionnel'),
(45, 'Extraction minière', 'Professionnel'),
(46, 'Faune et flore', 'Professionnel'),
(47, 'Forge', 'Professionnel'),
(48, 'Furtivité', 'Professionnel'),
(49, 'Géographie', 'Professionnel'),
(50, 'Géologie', 'Professionnel'),
(51, 'Haches', 'Professionnel'),
(52, 'Héraldique', 'Professionnel'),
(53, 'Herboristerie', 'Professionnel'),
(54, 'Histoire', 'Professionnel'),
(55, 'Hypnose', 'Professionnel'),
(56, 'Ingénierie', 'Professionnel'),
(57, 'Instrument de musique', 'Professionnel'),
(58, 'Interprétation des rêves', 'Professionnel'),
(59, 'Intimidation', 'Professionnel'),
(60, 'Jeux', 'Professionnel'),
(61, 'Jonglage', 'Professionnel'),
(62, 'Lames courtes', 'Professionnel'),
(63, 'Langue ancienne', 'Professionnel'),
(64, 'Langues', 'Professionnel'),
(65, 'Lecture sur les lèvres', 'Professionnel'),
(66, 'Machinerie magientiste', 'Professionnel'),
(67, 'Maroquinerie', 'Professionnel'),
(68, 'Mécanique', 'Professionnel'),
(69, 'Médecine', 'Professionnel'),
(70, 'Médecine traditionnelle', 'Professionnel'),
(71, 'Méditation', 'Professionnel'),
(72, 'Menuiserie', 'Professionnel'),
(73, 'Mimétisme', 'Professionnel'),
(74, 'Miracles', 'Professionnel'),
(75, 'Natation', 'Professionnel'),
(76, 'Navigation', 'Professionnel'),
(77, 'Observation', 'Professionnel'),
(78, 'Orientation', 'Professionnel'),
(79, 'Outil magientiste', 'Professionnel'),
(80, 'Peinture', 'Professionnel'),
(81, 'Persuasion', 'Professionnel'),
(82, 'Phénomènes mentaux', 'Professionnel'),
(83, 'Pistage', 'Professionnel'),
(84, 'Politique', 'Professionnel'),
(85, 'Poterie', 'Professionnel'),
(86, 'Premiers soins', 'Professionnel'),
(87, 'Principes magientistes', 'Professionnel'),
(88, 'Raffinage de Flux', 'Professionnel'),
(89, 'Recueillement', 'Professionnel'),
(90, 'Réparation d''artefacts', 'Professionnel'),
(91, 'Savoirs demorthèn', 'Professionnel'),
(92, 'Sculpture', 'Professionnel'),
(93, 'Sens aiguisés', 'Professionnel'),
(94, 'Serrurerie', 'Professionnel'),
(95, 'Sigil Rann', 'Professionnel'),
(96, 'Signes (Varigal)', 'Professionnel'),
(97, 'Spiritualité', 'Professionnel'),
(98, 'Survie', 'Professionnel'),
(99, 'Traditions demorthèn', 'Professionnel'),
(100, 'Utilisation d''artefacts', 'Professionnel'),
(101, 'Ventriloquie', 'Professionnel'),
(102, 'Vigilance', 'Professionnel'),
(103, 'Vol à la tire', 'Professionnel'),
(104, 'Zoologie', 'Professionnel'),
(105, 'Armes d''hast', 'Professionnel'),
(106, 'Astronomie', 'Professionnel'),
(107, 'Légendes', 'Professionnel'),
(108, 'Travail de force', 'Professionnel'),
(109, 'Traitement de l''esprit', 'Professionnel');

-- --------------------------------------------------------

-- 
-- Structure de la table `est_domains`
-- 

DROP TABLE IF EXISTS `est_domains`;
CREATE TABLE `est_domains` (
  `domain_id` int(22) unsigned NOT NULL AUTO_INCREMENT,
  `domain_name` varchar(100) NOT NULL,
  `voie_id` tinyint(3) unsigned NOT NULL,
  `domain_desc` text NOT NULL,
  PRIMARY KEY (`domain_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

-- 
-- Contenu de la table `est_domains`
-- 

INSERT INTO `est_domains` (`domain_id`, `domain_name`, `voie_id`, `domain_desc`) VALUES (1, 'Artisanat', 2, ''),
(2, 'Combat au Contact', 1, ''),
(3, 'Discrétion', 3, ''),
(4, 'Magience', 4, ''),
(5, 'Milieu Naturel', 3, ''),
(6, 'Mystères Demorthèn', 3, ''),
(7, 'Occultisme', 4, ''),
(8, 'Perception', 4, ''),
(9, 'Prière', 5, ''),
(10, 'Prouesses', 1, ''),
(11, 'Relation', 3, ''),
(12, 'Représentation', 2, ''),
(13, 'Science', 4, ''),
(14, 'Tir et Lancer', 1, ''),
(15, 'Voyage', 3, ''),
(16, 'Érudition', 4, '');

-- --------------------------------------------------------

-- 
-- Structure de la table `est_games`
-- 

DROP TABLE IF EXISTS `est_games`;
CREATE TABLE `est_games` (
  `game_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `game_name` varchar(255) NOT NULL,
  `game_summary` text NOT NULL,
  `game_notes` longtext NOT NULL,
  `game_mj` int(10) unsigned NOT NULL,
  PRIMARY KEY (`game_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;

-- --------------------------------------------------------

-- 
-- Structure de la table `est_jobdomains`
-- 

DROP TABLE IF EXISTS `est_jobdomains`;
CREATE TABLE `est_jobdomains` (
  `jobdomain_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `job_id` int(10) unsigned NOT NULL,
  `domain_id` int(10) unsigned NOT NULL,
  `jobdomain_primsec` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`jobdomain_id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 AUTO_INCREMENT=78 ;

-- 
-- Contenu de la table `est_jobdomains`
-- 

INSERT INTO `est_jobdomains` (`jobdomain_id`, `job_id`, `domain_id`, `jobdomain_primsec`) VALUES (1, 1, 1, 1),
(2, 1, 11, 0),
(3, 1, 13, 0),
(4, 2, 12, 1),
(5, 2, 11, 0),
(6, 2, 15, 0),
(7, 3, 5, 1),
(8, 3, 2, 0),
(9, 3, 14, 0),
(10, 4, 2, 1),
(11, 4, 11, 0),
(12, 4, 15, 0),
(13, 5, 2, 1),
(14, 5, 10, 0),
(15, 5, 14, 0),
(16, 6, 11, 1),
(17, 6, 16, 0),
(18, 6, 1, 0),
(19, 7, 6, 1),
(20, 7, 5, 0),
(21, 7, 16, 0),
(22, 8, 16, 1),
(23, 8, 13, 0),
(24, 8, 7, 0),
(25, 9, 8, 1),
(26, 10, 10, 1),
(27, 10, 5, 0),
(28, 10, 15, 0),
(29, 11, 8, 1),
(30, 12, 4, 1),
(31, 12, 13, 0),
(32, 12, 16, 0),
(33, 13, 3, 1),
(34, 13, 10, 0),
(35, 13, 12, 0),
(36, 14, 16, 0),
(37, 14, 13, 1),
(38, 14, 11, 0),
(39, 15, 7, 1),
(40, 15, 16, 0),
(41, 15, 13, 0),
(42, 16, 5, 1),
(43, 16, 1, 0),
(44, 16, 10, 0),
(51, 18, 15, 1),
(52, 18, 5, 0),
(53, 18, 10, 0),
(54, 19, 12, 1),
(55, 19, 11, 0),
(57, 20, 9, 1),
(58, 21, 9, 1),
(59, 22, 9, 1),
(60, 23, 9, 1),
(61, 24, 9, 1),
(62, 25, 9, 1),
(63, 20, 1, 0),
(64, 20, 16, 0),
(65, 21, 16, 0),
(66, 22, 16, 0),
(67, 22, 11, 0),
(68, 23, 11, 0),
(69, 23, 15, 0),
(70, 24, 2, 0),
(71, 25, 2, 0),
(72, 26, 11, 1),
(73, 26, 2, 0),
(74, 26, 16, 0),
(75, 27, 14, 1),
(76, 27, 2, 0),
(77, 27, 10, 0);

-- --------------------------------------------------------

-- 
-- Structure de la table `est_jobs`
-- 

DROP TABLE IF EXISTS `est_jobs`;
CREATE TABLE `est_jobs` (
  `job_id` tinyint(22) unsigned NOT NULL AUTO_INCREMENT,
  `job_name` varchar(255) NOT NULL,
  `job_desc` text NOT NULL,
  `job_book` varchar(255) NOT NULL,
  PRIMARY KEY (`job_id`),
  UNIQUE KEY `job_name` (`job_name`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

-- 
-- Contenu de la table `est_jobs`
-- 

INSERT INTO `est_jobs` (`job_id`, `job_name`, `job_desc`, `job_book`) VALUES (1, 'Artisan', 'Quel que soit son domaine, l''artisan est un manuel qualifié.\r\nForgeron, cuisinier, architecte, cordonnier, bûcheron, sculpteur, joailler ; les artisans couvrent un grand nombre de spécialités.\r\nDans les cités où est implantée la magience, on trouve aussi des réparateurs d''artefacts et des ouvriers spécialisés travaillant dans les usines.', '1'),
(2, 'Barde', 'Le statut de barde est hautement honorifique et les plus puissants monarques s''entourent de ces artistes qui ont de véritables rôles d''éminence grise.\r\nArtiste, acrobate, musicien, bouffon, le barde peut revêtir différents rôles.\r\nIl peut également être connu sous d''autres noms, comme les poètes aveugles filidh ou les étranges céilli de l''archipel des Tri-Sweszörs.', '1'),
(3, 'Chasseur', 'Il nourrit la communauté du produit de ses longues expéditions, qui durent parfois plusieurs jours.\r\nL''expansion des villes a vu l''apparition de chasseurs d''un genre nouveau comme les ratiers.\r\nD''autres, comme les Enfants de Neven, dédient leur existence à la traque des feondas.', '1'),
(4, 'Chevalier', 'Ces hommes et ces femmes font partie de la noblesse et appartiennent le plus souvent à un ordre de chevalerie comme les Hilderins ou les Ronces.\r\nCertains sont des chevaliers errants, derniers héritiers d''une famille noble ; d''autres, les vassaux d''un puissant seigneur.', '1'),
(5, 'Combattant', 'Il peut être soldat ou mercenaire, champion de justice, bagarreur de taverne ou détrousseur des rues sombres, etc.\r\nIl se spécialise dans les armes de contact.', '1'),
(6, 'Commerçant', 'Marchand ambulant ou tenancier d''une échoppe bien achalandée, le commerçant peut négocier bien des marchandises.', '1'),
(7, 'Demorthèn', 'Représentant de la nature, il peut entrer en contact avec les esprits et leur demander d''accomplir des tâches particulières.\r\nIl est le gardien des anciennes traditions péninsulaires et il est souvent considéré avec respect.\r\nLes apprentis Demorthèn sont appelés Ionnthèn.', '1'),
(8, 'Érudit', 'Passionnés par le savoir, les recherches, les érudits sont souvent employés comme scribes, professeurs ou bibliothécaires.\r\nGénéralement, un érudit possède un domaine de connaissance de prédilection, comme la théologie, magience, science, etc.', '1'),
(9, 'Espion', 'N''importe qui, qu''il soit un conseiller haut placé ou un simple mendiant, peut jouer un double rôle, amassant des informations pour le compte d''un commanditaire.\r\nLe domaine secondaire peut être choisi librement pour coller à la fausse identité de l''espion.', '1'),
(10, 'Explorateur', 'Aventurier et casse-cou, l''explorateur est passionné par le voyage, fuyant souvent la pauvreté ou la monotonie de son lieu de naissance.', '1'),
(11, 'Investigateur', 'Habitant généralement dans les grandes villes, les investigateurs proposent leurs services pour mener l''enquête.\r\nChaque investigateur a son style : certains sont versés dans l''occultisme, d''autres dans la science, la magience ou encore la médecine.\r\nDe ce fait, le choix du domaine secondaire est libre.', '1'),
(12, 'Magientiste', 'En Tri-Kazel, on les nomme souvent par le terme dédaigneux de "Daedemorthys".\r\nMalgré cette mauvaise réputation, leur science a pour but général l''amélioration des conditions de vie de l''humanité.\r\nUn magientiste diplômé est un scientör, alors qu''un élève en cours de formation est un inceptus.', '1'),
(13, 'Malandrin', 'Voleur, cambrioleur, tire-laine ; les moyens illégaux pour gagner sa vie sont assez nombreux pour attirer du monde, et ce malgré les risques.', '1'),
(14, 'Médecin', 'Il est des endroits où le demorthèn local n''est pas le meilleur guérisseur.\r\nDe nouvelles techniques tout-à-fait efficaces proviennent désormais des universités des grandes villes.\r\nCertains médecins, les aliénistes, s''attachent à soigner les troubles psychiques en se référant aux travaux du professeur continental Ernst Zigger.\r\nD''autres, comme les apothicaires, sont spécialisés dans l''herboristerie.', '1'),
(15, 'Occultiste', 'Passionnés d''ésotérisme, les occultistes sont souvent des universitaires ayant un grand intérêt pour ce domaine dénigré par les autres branches de la science.', '1'),
(16, 'Paysan', 'Qu''il cultive la terre ou élève des animaux, il participe à la vie de la communauté en la nourrissant.', '1'),
(18, 'Varigal', 'Voyageur, messager, porteur de nouvelles mais aussi de colis, le varigal est un lien entre les communautés éparses de Tri-Kazel.\r\nPassant l''essentiel de sa vie sur les chemins, il est généralement bien accueilli quand il arrive dans un village.\r\nProches de la nature, les varigaux sont souvent les alliés des demorthèn.', '1'),
(19, 'Joueur professionnel', ' Au-delà des jeux de stratégie pratiqués dans les cours et les seigneuries, il existe dans les villes une population de joueurs d''élite qui ont appris et développé des stratégies.\r\nMême quand les règles d’un jeu paraissent simples et le résultat dépendre de la chance ou de l’intuition, le joueur initié sait qu’il n’en est rien.\r\nLui connaît les probabilités et les mathématiques, de sorte qu’il sache précisément ce qu’il risque, ou comment tromper habilement un naïf, au point de pouvoir devenir joueur professionnel et ainsi gagner des sommes considérables au jeu.\r\nIl ne s''agit pas simplement de piécettes, mais bien d''obtenir de plus puissants qu''ils soient prêts à parier leur maison ou la main de leur fille, ou n''importe quel "bien" de valeur d''ailleurs.\r\nL''astuce remplace la force du guerrier pour monter dans la société et se faire une place au soleil.', '0'),
(20, 'Moine du Temple', '', '1'),
(21, 'Clerc du Temple', '', '1'),
(22, 'Prêtre du Temple', '', '1'),
(23, 'Vecteur du Temple', '', '1'),
(24, 'Sigire du Temple', '', '1'),
(25, 'Chevalier lame du Temple', '', '1'),
(26, 'Dàmàthair', 'Les Dàmàthair sont exclusivement des femmes.<br />\r\nElles éduquent et protègent les plus jeunes. Elles assistent aux accouchements, enseignent aux enfants suivant leur âge et les protègent en cas de danger.<br />\r\nLe rôle de la Dàmàthair est de créer les liens de la communauté passée, actuelle et future. Les enfants sont élevés ensemble comme une seule et même famille, quelle que soit leur différence de sang afin de plus tard ne former qu''un seul rempart contre ce qui peut se trouver à l''extérieur.<br />\r\nSi les habitants de Tri-Kazel ont une capacité d''entraide si importante (surtout dans les montagnes) c''est parce qu''on leur enseigne qu''ils ne sont qu''une seule entité qui ne peut survivre qu''en vivant ensemble.<br /><br />\r\nLa damathair principale d''une communauté est très attachée à celle-ci et ne la quittera que pour cas de force majeure. Mais il arrive qu''elle ait une ou plusieurs jeunes assistantes qui n''ont pas encore fixé leur vocation définitive et peuvent se tourner vers un autre métier. Inversement, il arrive qu''une varigale, une vectrice (en Gwidre) ou même une militaire choisisse de s''établir comme damathair. Ces changements de trajectoire sont à discuter entre le joueur et le MJ, du moment qu''ils respectent la cohérence du personnage.', '0'),
(27, 'Combattant à distance', 'Il peut être soldat ou mercenaire, champion de justice, bagarreur de taverne ou détrousseur des rues sombres, etc.\r\nIl se spécialise dans les armes à distance', '1');

-- --------------------------------------------------------

-- 
-- Structure de la table `est_mails`
-- 

DROP TABLE IF EXISTS `est_mails`;
CREATE TABLE `est_mails` (
  `mail_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mail_code` varchar(100) NOT NULL,
  `mail_contents` text NOT NULL,
  `mail_subject` text NOT NULL,
  PRIMARY KEY (`mail_id`),
  UNIQUE KEY `mail_code` (`mail_code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- Contenu de la table `est_mails`
-- 

INSERT INTO `est_mails` (`mail_id`, `mail_code`, `mail_contents`, `mail_subject`) VALUES (1, 'register', '<p style="text-align: center;">Bonjour {name}, et bienvenue sur le site Corahn-Rin, plateforme de jeu des Ombres d&#39;Esteren !</p>\n<p style="text-align: center;">Pour valider votre adresse mail, veuillez cliquer sur ce lien : {link}</p>\n<p style="text-align: center;">Si vous ne validez pas votre adresse mail, vous ne pourrez pas accéder au site !</p>', 'Bienvenue sur Corahn-Rin ! Confirmation d''inscription.'),
(2, 'campaign_invite', '<p style="text-align: center;">Bonjour {user_name}, le maître de jeu <strong>{cp_mj}</strong> vous a invité dans sa campagne !</p>\r\n<p style="text-align: center;">Il propose d''inviter votre personnage <strong>{char_name}</strong> à sa campagne <strong>{cp_name}</strong></p>\r\n<p style="text-align: center;">Si vous souhaitez confirmer cette invitation, et rejoindre une partie des <strong>Ombres d''Esteren</strong>, veuillez cliquer sur ce lien : {link}</p>\r\n<p style="text-align: center;">À bientôt sur Corahn-Rin !</p>', 'Invitation à une campagne - Corahn Rin');

-- --------------------------------------------------------

-- 
-- Structure de la table `est_mails_sent`
-- 

DROP TABLE IF EXISTS `est_mails_sent`;
CREATE TABLE `est_mails_sent` (
  `mail_sent_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mail_id` int(10) unsigned DEFAULT NULL,
  `mail_dest` varchar(255) NOT NULL,
  `mail_subj` text NOT NULL,
  `mail_content` text NOT NULL,
  `mail_date` varchar(255) NOT NULL,
  PRIMARY KEY (`mail_sent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8 AUTO_INCREMENT=182 ;

-- --------------------------------------------------------

-- 
-- Structure de la table `est_pages`
-- 

DROP TABLE IF EXISTS `est_pages`;
CREATE TABLE `est_pages` (
  `page_id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `page_show_in_menu` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `page_show_in_debug` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `page_getmod` varchar(30) NOT NULL,
  `page_anchor` varchar(75) NOT NULL COLLATE utf8_unicode_ci,
  `page_acl` smallint(5) unsigned NOT NULL DEFAULT '50',
  `page_require_login` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`page_id`),
  UNIQUE KEY `page_getmod` (`page_getmod`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 AUTO_INCREMENT=68 ;

-- 
-- Contenu de la table `est_pages`
-- 

INSERT INTO `est_pages` (`page_id`, `page_show_in_menu`, `page_show_in_debug`, `page_getmod`, `page_anchor`, `page_acl`, `page_require_login`) VALUES (1, 0, 0, 'index', 'Accueil', 50, 0),
(34, 0, 0, 'admin', 'Administration', 50, 1),
(42, 1, 0, 'versions', 'Mises à jour', 50, 0),
(43, 0, 0, 'traduction', 'Traduction', 50, 0),
(44, 0, 1, 'admin_traduc_maj', 'Mise à jour de la traduction', 20, 1),
(45, 0, 0, 'lang', 'Langue', 50, 0),
(46, 0, 1, 'admin_traduc_manage', 'Gérer la traduction', 10, 1),
(47, 1, 0, 'see_character', 'Visualiser un personnage', 50, 0),
(48, 0, 0, 'login', 'Connexion', 50, 0),
(49, 0, 0, 'sheet', 'Feuille de personnage', 50, 0),
(51, 0, 0, 'ajax', 'Ajax', 50, 0),
(52, 0, 0, 'reset', 'Réinitialiser le personnage', 50, 0),
(53, 0, 0, '404', 'Erreur 404', 50, 0),
(55, 0, 1, 'clearcache', 'Supprimer le cache', 40, 1),
(56, 0, 0, 'register', 'S''inscrire', 50, 0),
(57, 0, 1, 'admin_users', 'Gestion des utilisateurs', 20, 1),
(58, 0, 1, 'admin_my_chars', 'Mes personnages', 50, 0),
(59, 0, 1, 'admin_errors', 'Gestion des erreurs', 10, 0),
(60, 0, 1, 'campaigns', 'Mes campagnes', 50, 1),
(61, 0, 0, 'create_campaign', 'Créer une campagne', 50, 1),
(62, 1, 0, 'create_char', 'Crééer un personnage', 50, 0),
(63, 0, 0, 'spend_exp', 'Dépenser de l''expérience', 50, 1),
(64, 0, 0, 'mail', 'Envoyer un mail', 50, 0),
(65, 0, 1, 'admin_campaigns', 'Gestion des campagnes', 0, 1),
(67, 0, 0, 'sitemap', 'Sitemap', 50, 0);

-- --------------------------------------------------------

-- 
-- Structure de la table `est_regions`
-- 

DROP TABLE IF EXISTS `est_regions`;
CREATE TABLE `est_regions` (
  `region_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `region_name` varchar(50) NOT NULL,
  `region_desc` text NOT NULL,
  `region_kingdom` varchar(255) NOT NULL DEFAULT 'Taol-Kaer',
  `region_htmlmap` text NOT NULL,
  PRIMARY KEY (`region_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

-- 
-- Contenu de la table `est_regions`
-- 

INSERT INTO `est_regions` (`region_id`, `region_name`, `region_desc`, `region_kingdom`, `region_htmlmap`) VALUES (1, 'Duché de Seòl', '', 'Taol-Kaer', '845,175,816,183,763,167,765,144,772,137,797,127,824,128,829,141,840,143,837,152,844,157'),
(2, 'Duché de Kel Loar', '', 'Taol-Kaer', '823,128,797,127,771,137,767,143,749,140,741,128,707,132,689,81,680,81,669,71,672,63,657,44,660,33,679,27,699,27,715,17,744,12,773,20,787,35,800,47,800,53,819,64,817,71,833,75,840,81,847,88,852,92,860,108,843,116,831,119'),
(3, 'Duché de Dùlan', '', 'Taol-Kaer', '700,145,664,129,643,121,619,123,592,136,535,140,520,137,500,149,469,151,451,147,445,121,460,76,448,36,491,25,536,24,568,24,595,15,609,20,621,17,636,36,659,48,671,63,668,71,675,81,689,81,696,103,704,132,703,137'),
(4, 'Duché d''Osta-Baille', '', 'Taol-Kaer', '671,284,680,172,699,145,643,123,619,123,593,136,535,140,521,137,500,148,464,149,453,148,424,156,424,163,341,197,344,223,320,260,320,281,352,265,368,241,381,240,395,241,399,244,413,253,416,257,433,249,459,252,475,253,477,255,477,260,473,265,455,273,460,285,463,292,475,293,483,295,491,307,524,304,529,296,544,301,567,296,584,296,595,284,600,277,620,273,623,268,635,269,640,276,653,279'),
(5, 'Duché de Gorm', '', 'Taol-Kaer', '671,285,683,289,695,287,709,288,749,289,771,273,815,263,809,255,817,247,839,245,845,239,853,229,856,229,860,223,856,212,868,205,869,199,856,189,857,184,844,175,813,184,764,168,763,143,749,140,741,129,707,132,699,145,681,172,675,225,672,267'),
(6, 'Duché de Tulg', '', 'Taol-Kaer', '151,77,229,41,301,39,353,44,389,52,436,36,447,39,459,77,444,123,448,147,425,156,424,163,344,196,311,188,304,177,272,177,233,188,203,185,192,180,135,176,99,180,99,173,115,157,97,159,96,152,111,141,125,127,115,111,149,93,145,83,147,80'),
(7, 'Duché de Salann Tir', '', 'Taol-Kaer', '15,355,44,353,71,315,111,280,151,287,195,283,204,284,232,283,277,304,292,296,320,283,320,261,343,225,343,195,309,184,307,177,276,172,235,185,220,183,199,183,148,176,104,180,93,191,68,207,75,221,43,231,44,235,59,241,40,252,49,263,31,279,31,280,33,281,43,279,44,283,33,284,36,288,25,297,32,317,24,317,21,323,3,329,9,336,13,343,4,349,8,353'),
(8, 'Duché de Tuaille', '', 'Taol-Kaer', '239,404,235,401,236,377,249,337,269,321,280,303,351,268,369,243,391,241,416,257,425,269,419,281,415,297,419,304,411,311,404,307,399,316,391,316,393,325,384,331,373,333,377,341,355,345,360,349,359,353,369,357,369,364,365,369,365,372,371,373,373,379,359,397,349,400,344,397,329,397,323,393,313,395,307,400,265,404,260,397,244,400,243,401'),
(9, 'Terres de Déas', '', 'Taol-Kaer', '209,474,216,444,225,440,226,426,234,418,234,402,236,378,249,334,269,320,280,301,260,292,232,284,197,284,176,281,134,289,113,286,92,296,81,304,65,320,61,337,42,354,42,361,24,374,22,385,33,390,46,402,61,405,64,413,80,422,80,448,76,465,66,480,50,496,56,504,69,502,76,508,90,506,100,501,125,500,149,497,165,502,174,489,180,482,198,477,201,466'),
(10, 'Région d''Ard-Amrach', '', 'Gwidre', '304,256,317,268,321,289,317,306,324,312,329,305,329,298,373,272,384,258,410,260,418,264,430,265,444,278,438,286,446,297,448,316,436,337,436,360,425,368,417,369,413,377,416,386,424,390,433,392,437,386,434,381,458,372,466,362,473,362,484,354,484,345,489,340,484,337,489,322,496,305,510,293,518,281,526,276,529,270,529,262,533,262,540,262,542,266,550,262,558,261,576,260,578,262,598,266,606,266,613,260,596,229,590,226,588,220,600,205,604,180,586,156,572,152,560,138,561,128,545,102,541,101,537,106,530,108,529,106,533,100,526,98,520,101,510,101,496,108,482,116,473,118,466,124,464,130,453,138,454,145,460,148,464,150,469,178,458,189,454,194,446,197,446,194,449,190,445,176,441,173,434,172,432,166,422,164,418,160,416,157,413,152,402,152,381,172,381,174,370,181,370,178,346,201,350,210,346,220,349,222,344,229,348,233,337,236,329,244,322,242,318,249,312,254'),
(11, 'Région d''Aimliù', '', 'Gwidre', '216,390,232,377,234,368,229,345,245,326,248,304,272,277,280,278,286,268,284,262,304,258,317,268,320,288,316,305,322,312,324,325,306,333,300,336,293,368,294,384,298,404,274,405,272,400,217,392'),
(12, 'Région de Gorm Caladh', '', 'Gwidre', '136,629,152,624,190,605,212,590,248,585,250,576,254,564,238,521,240,512,256,505,276,504,277,474,274,468,282,452,290,436,297,436,300,428,308,420,310,413,298,404,273,405,272,401,230,396,230,392,216,390,210,404,198,425,149,460,150,476,140,474,137,480,146,486,138,497,140,512,153,512,158,520,157,525,148,528,146,538,134,546,132,554,136,562,128,569,134,582,137,588,130,594,122,610,118,617,124,620,130,621'),
(13, 'Forêt des Murmures', '', 'Gwidre', '433,597,409,589,380,589,372,582,349,582,309,586,286,585,257,589,246,585,256,565,237,520,238,513,257,505,276,502,278,474,274,468,292,436,298,437,300,428,309,420,312,412,298,402,294,388,292,369,301,337,322,325,325,312,330,305,330,298,374,268,382,258,406,258,433,268,441,276,440,285,448,308,437,334,434,361,416,368,413,386,428,392,434,397,430,429,416,434,421,454,422,482,432,473,444,488,456,488,472,508,465,518,453,529,417,525,413,521,396,525,401,534,405,540,417,537,426,537,429,569,432,585,436,589,436,597'),
(14, 'Région de Gouvran', '', 'Gwidre', '533,97,532,108,542,101,544,102,564,129,560,138,573,152,589,156,604,178,600,205,590,216,589,221,592,226,596,228,598,230,613,258,618,261,640,256,645,246,664,240,668,232,677,238,680,228,684,226,692,228,697,234,697,224,737,201,732,189,725,181,728,169,740,156,750,149,753,142,749,136,750,133,748,124,741,121,742,106,737,98,738,82,745,76,745,68,741,66,749,65,750,58,749,56,756,48,761,42,756,33,752,32,748,22,740,26,740,34,726,37,721,37,720,32,702,21,697,21,694,24,680,24,676,22,658,22,656,17,650,14,642,16,637,21,636,25,614,36,604,40,598,44,594,54,586,57,578,62,566,64,558,70,558,78,557,84,536,93,522,96'),
(15, 'Région de Fionnfuar', '', 'Gwidre', '761,40,750,57,750,66,742,66,748,69,746,76,740,82,738,98,744,105,742,120,749,124,750,132,752,137,753,148,742,156,729,169,725,181,737,200,756,194,786,190,797,194,809,193,814,194,830,186,845,185,866,196,881,197,894,194,926,200,954,194,996,181,990,160,974,142,968,132,941,94,957,80,973,57,976,46,973,44,966,45,952,48,948,49,934,50,926,46,917,46,916,49,902,41,890,40,888,48,897,53,885,58,880,65,873,56,861,62,868,69,870,77,866,74,862,69,854,72,853,77,853,80,848,80,844,90,840,94,836,98,820,96,816,92,814,90,804,81,790,78,786,80,780,74,777,72,781,70,786,69,792,70,800,68,801,62,792,60,782,52,773,50'),
(16, 'Nord-Ouest des Mòr Roimh', '', 'Gwidre', '814,286,816,300,805,312,789,318,754,349,724,364,702,374,685,388,680,397,660,394,637,400,621,393,598,392,593,394,577,394,568,402,569,406,553,410,540,409,526,397,504,397,484,408,473,408,469,410,454,410,449,413,448,408,442,398,446,389,436,384,434,381,454,373,468,364,472,361,484,353,484,345,490,338,485,337,496,305,512,293,518,281,529,277,530,270,530,262,538,264,544,266,552,262,573,260,577,264,608,266,614,258,618,262,638,257,644,250,660,245,669,232,678,238,678,228,682,225,685,229,690,228,694,230,697,224,737,201,746,198,752,196,785,190,796,193,809,193,814,196,832,186,846,186,868,196,856,205,834,226,825,233,810,245,798,250,792,266,792,278,801,285,809,288'),
(17, 'Région d''Expiation', '', 'Gwidre', '421,474,421,444,417,434,425,424,432,422,437,404,434,393,437,385,445,389,442,398,446,406,446,410,449,413,457,410,469,410,474,408,484,408,506,398,521,398,522,400,529,400,540,410,553,412,569,405,570,401,580,394,586,394,593,397,600,393,602,393,614,394,620,393,637,400,660,394,678,397,668,409,666,422,661,436,653,450,642,460,633,469,621,480,610,488,604,500,597,514,597,528,597,556,585,565,570,568,558,568,541,573,534,578,513,576,504,586,480,598,464,600,453,602,438,600,434,589,430,585,433,569,426,534,414,536,406,538,400,530,400,524,412,524,420,526,434,525,449,530,462,525,472,509,468,497,458,490,444,486,437,477,430,474,421,476,421,474'),
(18, 'Région de Bald-Ruoch', '', 'Reizh', '496,357,512,364,520,366,538,362,561,369,570,381,585,388,597,400,612,400,630,394,645,384,658,369,682,369,694,362,718,361,740,368,750,376,752,364,736,344,736,333,730,328,734,318,706,304,706,296,712,293,704,272,692,272,665,250,664,238,653,229,626,225,617,225,602,224,581,212,565,210,538,208,521,201,512,192,512,181,472,181,442,174,449,198,438,209,412,213,382,217,341,217,352,222,346,230,368,238,368,246,381,249,388,266,404,276,404,290,397,304,402,316,397,344,408,358,409,376,424,369,441,370,454,382,468,374,480,374,493,361'),
(19, 'Région de Kalvernach', '', 'Reizh', '177,386,189,390,194,386,200,390,212,390,213,393,221,386,225,393,234,390,241,393,248,405,266,398,278,404,305,404,316,397,346,401,370,396,376,402,377,410,358,420,362,444,354,456,357,473,349,482,352,493,368,502,370,506,353,520,354,524,342,532,334,528,285,534,274,528,258,532,249,529,225,534,220,532,210,540,198,536,181,498,160,490,154,462,134,452,122,438,105,437,108,425,128,413,141,406,157,408,168,396'),
(21, 'Région du Pont de l''Alliance', '', 'Reizh', '356,606,362,592,365,580,345,580,342,572,341,566,336,558,344,546,344,526,285,536,278,530,250,533,244,532,229,534,220,533,212,540,216,590,217,606,237,628,254,628,249,645,265,645,272,632,297,621,326,620,341,613'),
(22, 'Archipel des Tri-Sweszörs', '', 'Reizh', '615,543,611,534,605,523,605,517,598,515,593,511,593,509,585,504,573,506,565,509,558,507,527,516,496,520,490,524,487,523,480,529,484,532,483,535,476,538,476,543,479,550,481,554,487,562,488,571,489,575,497,575,509,579,522,592,527,599,534,603,538,605,548,611,550,616,553,627,553,633,558,642,557,638,562,639,568,642,573,645,579,643,589,647,599,652,608,655,612,659,617,660,624,660,633,657,641,657,645,657,651,656,655,651,697,715,693,720,692,725,689,731,689,737,688,745,680,745,677,750,672,753,674,762,673,768,677,778,684,779,688,778,694,781,702,783,703,787,705,795,700,794,697,794,696,798,699,800,701,803,700,807,705,810,705,813,701,813,699,815,702,820,706,823,716,827,723,825,745,826,758,822,767,817,781,807,784,803,781,795,781,791,781,791,785,789,805,776,807,773,814,774,814,780,826,780,833,778,833,773,828,769,825,767,818,767,815,770,814,774,807,773,807,771,807,771,806,767,803,764,805,763,813,765,816,763,818,759,817,755,815,754,812,754,808,750,804,750,799,752,799,755,800,758,802,760,803,763,804,763,803,764,799,761,796,758,792,759,783,759,784,756,782,754,778,751,780,748,780,748,778,746,777,743,774,743,763,738,766,737,765,735,760,731,755,730,750,728,749,726,753,724,755,721,756,718,752,714,748,712,744,711,737,710,736,707,736,704,728,698,724,697,719,697,716,700,711,703,707,703,708,707,709,712,706,713,697,715,655,651,655,648,654,640,654,634,709,605,716,609,729,612,741,608,748,601,749,594,749,586,752,581,749,574,748,566,747,558,747,553,736,543,725,539,713,535,709,537,700,541,690,543,683,548,682,558,686,567,692,574,698,582,702,589,707,598,709,605,654,634,654,628,648,624,639,621,636,614,634,600,634,600,631,595,623,590,620,585,621,583,625,581,629,573,627,564,627,554,627,552,624,548,617,547'),
(23, 'Région de Crail et Leacach', '', 'Reizh', '20,612,62,614,92,609,114,613,168,594,193,600,214,590,212,570,210,540,198,536,181,498,160,490,154,462,134,452,122,438,106,437,98,448,94,465,80,494,62,508,50,524,30,533,18,553,14,582,16,597'),
(24, 'Région de Fairean Ear', '', 'Reizh', '465,484,453,501,453,516,440,521,428,525,413,528,406,536,388,540,385,546,381,550,382,553,386,557,385,566,372,569,365,578,346,580,342,577,345,570,336,561,344,545,342,532,354,524,354,520,370,506,368,502,352,492,349,481,357,473,354,456,362,444,360,420,377,410,376,402,370,396,373,382,402,382,409,376,425,369,442,370,454,382,457,412,453,424,442,426,442,440,434,449,436,466,449,470,465,476'),
(25, 'Région de Farl', '', 'Reizh', '434,46,412,85,394,106,441,174,472,181,510,180,513,194,520,200,538,206,581,212,601,221,654,230,662,238,678,237,677,229,700,208,713,204,718,177,728,165,729,134,734,134,737,130,728,121,737,106,737,98,728,85,710,80,693,84,682,77,672,85,650,92,648,88,636,84,637,76,640,74,632,61,618,60,598,50,576,58,562,54,542,46,540,50,520,37,501,45,472,48'),
(26, 'Région d''Iolarnead', '', 'Reizh', '750,78,754,72,765,78,780,82,790,77,800,89,812,86,817,94,834,98,832,114,842,116,846,126,858,129,866,128,872,128,870,132,878,134,893,144,898,152,904,153,913,157,917,170,930,176,932,182,918,193,908,200,892,202,866,198,850,210,844,209,828,224,809,229,796,261,777,264,768,276,769,281,784,288,792,298,780,306,766,318,748,324,734,318,706,305,706,297,713,294,705,270,690,270,665,250,664,240,677,238,677,229,700,209,713,204,720,177,729,165,730,134,736,134,736,130,728,121,738,104,737,98,740,96,748,96,748,90,754,89,749,81'),
(27, 'Extrême-Est de Tri-Kazel', '', 'Reizh', '997,236,974,221,976,217,961,205,946,202,937,196,918,194,909,201,892,204,865,198,850,210,842,209,829,225,810,229,797,261,778,264,769,274,770,281,785,286,792,298,780,305,766,317,748,322,733,318,730,328,736,332,736,344,752,364,750,376,768,402,790,413,806,442,810,509,806,518,818,530,832,532,850,509,856,501,880,476,880,470,898,464,906,450,902,432,908,421,917,393,922,389,917,385,908,385,905,380,901,366,913,365,922,362,933,353,942,350,952,338,953,328,982,306,990,289,984,285,984,268,994,246'),
(28, 'Région de Boischandelles', '', 'Reizh', '253,336,234,346,177,388,188,389,194,386,200,390,210,390,221,386,225,392,234,390,240,392,248,404,266,397,280,404,305,404,316,397,346,401,369,396,373,384,402,382,409,376,409,358,396,344,401,316,397,304,404,292,402,274,388,266,384,249,372,246,368,246,366,238,346,230,352,221,341,217,308,218,289,237,262,261,242,272,226,294,228,308,240,312,256,310,256,321,260,330'),
(29, 'Calvaire', '', 'Gwidre', '172,95,151,99,149,107,143,106,140,121,132,122,129,127,133,133,117,142,118,149,124,153,134,161,134,165,138,166,137,177,119,175,115,173,104,173,87,177,82,177,72,191,70,194,61,197,58,202,61,203,58,209,49,211,42,216,39,219,27,233,20,238,9,243,7,245,7,247,7,250,8,252,10,254,13,255,15,255,25,258,28,260,28,266,22,271,17,274,16,276,18,283,20,286,26,289,42,291,53,294,58,296,62,300,68,302,63,305,62,308,61,311,63,314,66,317,71,314,76,312,83,314,85,314,94,309,92,299,95,295,99,290,105,289,110,288,111,285,111,282,112,278,114,275,115,275,121,276,133,279,148,283,153,286,168,284,182,278,186,271,184,265,181,262,177,255,183,252,185,248,173,242,175,233,176,225,183,225,190,226,186,219,190,217,194,208,197,206,196,191,195,184,193,181,191,171,194,167,201,167,207,167,214,167,221,158,221,152,216,148,211,146,206,142,207,137,203,129,194,123,191,118,192,113,183,111,179,103'),
(30, 'Archipel des Cendres', '', 'Gwidre', '858,14,852,12,853,15,851,16,848,20,849,23,846,23,846,20,847,17,848,13,847,11,842,9,841,10,839,10,838,9,836,9,833,10,830,11,828,14,830,18,830,21,831,21,834,23,836,22,839,24,838,25,833,24,832,27,831,30,828,30,827,28,825,28,823,26,824,24,823,20,821,20,817,20,814,22,812,24,811,25,812,31,812,31,812,34,816,37,822,34,824,36,828,33,828,30,830,30,831,31,831,33,832,35,835,35,838,36,840,35,841,35,845,36,846,38,845,40,842,41,842,40,836,39,834,39,830,36,832,38,827,39,825,42,823,44,823,47,824,51,827,53,828,53,831,54,835,50,835,52,837,53,837,55,838,56,842,58,846,57,844,54,843,51,845,50,847,51,852,50,847,47,844,45,844,45,843,41,845,41,847,43,848,44,850,45,853,45,855,45,856,43,859,40,856,38,854,36,853,34,851,31,851,31,849,30,847,29,847,26,846,23,849,24,848,30,850,30,853,30,855,29,858,25,859,22,860,19,860,15'),
(31, 'Mornegivre', '', 'Reizh', '978,28,975,25,972,26,969,20,959,19,956,17,955,14,955,13,950,12,941,13,940,14,941,18,941,19,938,21,931,19,928,19,917,22,914,22,902,30,905,36,906,46,903,52,903,58,896,74,890,79,886,88,888,95,892,102,893,108,895,113,891,126,895,131,897,138,900,140,917,139,922,134,924,127,930,123,938,122,941,118,941,111,939,107,941,102,943,97,950,99,959,93,968,87,970,82,974,80,976,77,975,68,970,63,963,61,958,59,958,59,958,55,958,53,959,50,967,47,968,46,971,39,974,36'),
(32, 'Île aux Cairns', '', 'Taol-Kaer', '711,516,717,520,715,522,715,525,719,530,724,530,727,529,727,525,727,521,723,517,720,517,717,520,713,517,712,516,715,514,713,512,713,510,712,508,715,506,719,506,723,507,728,507,730,505,733,501,729,498,724,495,726,490,728,490,732,492,739,492,742,490,738,485,733,478,729,475,724,473,721,470,721,468,719,462,718,458,717,453,717,451,715,448,713,446,711,443,711,440,709,437,706,435,703,433,698,431,699,425,700,421,704,419,707,414,710,403,704,402,703,393,698,384,695,377,688,374,679,372,658,374,650,376,639,381,631,383,627,389,630,390,632,392,631,400,629,397,625,397,621,402,620,409,621,412,625,415,621,419,615,419,609,420,603,428,606,424,607,427,608,429,613,429,614,429,614,433,614,435,610,441,603,448,598,457,592,465,589,476,589,486,595,501,609,509,615,508,619,513,624,517,627,522,630,526,639,531,649,529,656,525,671,526,685,522,690,525,693,521,704,518'),
(33, 'Les Épavières', '', 'Taol-Kaer', '44,499,34,504,26,505,29,500,32,497,28,495,22,498,21,502,17,508,13,506,8,507,6,509,6,516,9,517,6,519,7,523,7,526,10,526,14,525,15,529,12,531,11,536,14,538,20,539,22,534,20,530,25,532,23,535,27,536,30,535,28,532,25,532,27,529,29,531,33,532,35,530,41,542,37,547,34,548,32,551,30,552,30,554,30,556,32,556,33,556,33,559,35,560,37,560,38,561,44,559,47,558,52,557,52,555,53,552,54,550,53,547,51,545,49,544,46,542,43,542,41,542,35,530,38,530,39,529,40,527,38,522,40,517,43,519,44,522,45,522,49,521,51,520,53,517,52,514,49,513,48,513,46,512,44,513,44,511,45,511,47,508,48,506,47,503,47,501');

-- --------------------------------------------------------

-- 
-- Structure de la table `est_revers`
-- 

DROP TABLE IF EXISTS `est_revers`;
CREATE TABLE `est_revers` (
  `rev_id` tinyint(11) NOT NULL AUTO_INCREMENT,
  `rev_name` varchar(50) NOT NULL,
  `rev_desc` text NOT NULL,
  `rev_malus` varchar(50) NOT NULL,
  PRIMARY KEY (`rev_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- 
-- Contenu de la table `est_revers`
-- 

INSERT INTO `est_revers` (`rev_id`, `rev_name`, `rev_desc`, `rev_malus`) VALUES (1, 'Poisse', 'Tirer une deuxième fois, ignorer les 1 supplémentaires', ''),
(2, 'Séquelle', '-1 Vigueur, et une séquelle physique (cicatrice...)', 'vig'),
(3, 'Adversaire', 'Le personnage s''est fait un ennemi (à la discrétion du MJ)', ''),
(4, 'Rumeur', 'Une information, vraie ou non, circule à propos du personnage', ''),
(5, 'Amour tragique', '+1 point de Trauma définitif, mauvais souvenir', 'trauma'),
(6, 'Maladie', '-1 Vigueur, mais a survécu à une maladie normalement mortelle', 'vig'),
(7, 'Violence', '+1 point de Trauma définitif, souvenir violent, gore, horrible...', 'trauma'),
(8, 'Solitude', 'Les proches, amis ou famille du personnage sont morts de façon douteuse', ''),
(9, 'Pauvreté', 'Le personnage ne possède qu''une mauvaise arme, ou outil, a des dettes d''héritage, de vol... Il n''a plus d''argent, sa famille a été ruinée ou lui-même est ruiné d''une façon ou d''une autre, et aucun évènement ou avantage ne peut y remédier.', '0g'),
(10, 'Chance', 'Le personnage est passé à côté de la catastrophe !', '');

-- --------------------------------------------------------

-- 
-- Structure de la table `est_steps`
-- 

DROP TABLE IF EXISTS `est_steps`;
CREATE TABLE `est_steps` (
  `gen_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gen_step` int(10) unsigned NOT NULL,
  `gen_mod` varchar(255) NOT NULL,
  `gen_anchor` varchar(255) NOT NULL,
  PRIMARY KEY (`gen_id`),
  UNIQUE KEY `Unique step` (`gen_step`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

-- 
-- Contenu de la table `est_steps`
-- 

INSERT INTO `est_steps` (`gen_id`, `gen_step`, `gen_mod`, `gen_anchor`) VALUES (1, 1, '01_peuple', 'Peuple'),
(2, 2, '02_metier', 'Métier'),
(3, 3, '03_naissance', 'Lieu de naissance'),
(4, 4, '04_geo', 'Lieu de résidence géographique'),
(5, 5, '05_classe', 'Classe sociale'),
(6, 6, '06_age', 'Âge'),
(7, 7, '07_revers', 'Revers'),
(8, 8, '08_voies', 'Voies'),
(9, 9, '09_traits', 'Traits de caractère'),
(10, 10, '10_orientation', 'Orientation de la personnalité'),
(11, 11, '11_des_avtg', 'Avantages et Désavantages'),
(12, 12, '12_sante_mentale', 'Santé Mentale'),
(13, 13, '13_domaines_primsec', 'Domaines primaires et secondaires'),
(14, 14, '14_domaines_amelio', 'Amélioration des domaines'),
(15, 15, '15_bonusdom', 'Bonus divers ajoutés aux domaines'),
(16, 16, '16_disciplines', 'Disciplines'),
(17, 17, '17_arts_combat', 'Arts de combat'),
(18, 18, '18_equipements', 'Équipements'),
(19, 19, '19_description_histoire', 'Description et histoire'),
(20, 20, '20_finalisation', 'Finalisation du personnage');

-- --------------------------------------------------------

-- 
-- Structure de la table `est_traitscaractere`
-- 

DROP TABLE IF EXISTS `est_traitscaractere`;
CREATE TABLE `est_traitscaractere` (
  `trait_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `trait_name` varchar(50) NOT NULL,
  `trait_name_female` varchar(50) NOT NULL,
  `trait_voie` enum('com','cre','ide','emp','rai') NOT NULL DEFAULT 'com',
  `trait_qd` enum('q','d') NOT NULL DEFAULT 'q',
  `trait_mm` enum('maj','min') NOT NULL DEFAULT 'maj',
  PRIMARY KEY (`trait_id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 AUTO_INCREMENT=89 ;

-- 
-- Contenu de la table `est_traitscaractere`
-- 

INSERT INTO `est_traitscaractere` (`trait_id`, `trait_name`, `trait_name_female`, `trait_voie`, `trait_qd`, `trait_mm`) VALUES (1, 'Combatif', 'Combative', 'com', 'q', 'maj'),
(2, 'Optimiste', 'Optimiste', 'com', 'q', 'maj'),
(3, 'Dynamique', 'Dynamique', 'com', 'q', 'maj'),
(4, 'Courageux', 'Courageuse', 'com', 'q', 'maj'),
(5, 'Pugnace', 'Pugnace', 'com', 'q', 'maj'),
(6, 'Calme', 'Calme', 'com', 'q', 'min'),
(7, 'Flegmatique', 'Flegmatique', 'com', 'q', 'min'),
(8, 'Paisible', 'Paisible', 'com', 'q', 'min'),
(9, 'Pondéré', 'Pondérée', 'com', 'q', 'min'),
(10, 'Impulsif', 'Impulsive', 'com', 'd', 'maj'),
(11, 'Outrecuidant', 'Outrecuidante', 'com', 'd', 'maj'),
(12, 'Fier', 'Fière', 'com', 'd', 'maj'),
(13, 'Buté', 'Butée', 'com', 'd', 'maj'),
(14, 'Orgueilleux', 'Orgueilleuse', 'com', 'd', 'maj'),
(15, 'Vaniteux', 'Vaniteuse', 'com', 'd', 'maj'),
(16, 'Pessimiste', 'Pessimiste', 'com', 'd', 'min'),
(17, 'Mou', 'Molle', 'com', 'd', 'min'),
(18, 'Triste', 'Triste', 'com', 'd', 'min'),
(19, 'Faible caractère', 'Faible caractère', 'com', 'd', 'min'),
(20, 'Peureux', 'Peureuse', 'com', 'd', 'min'),
(21, 'Mauvaise estime', 'Mauvaise estime', 'com', 'd', 'min'),
(22, 'Lâche', 'Lâche', 'com', 'd', 'min'),
(23, 'Inventif', 'Inventive', 'cre', 'q', 'maj'),
(24, 'Original', 'Originale', 'cre', 'q', 'maj'),
(25, 'Débrouillard', 'Débrouillarde', 'cre', 'q', 'maj'),
(26, 'Drôle', 'Drôle', 'cre', 'q', 'maj'),
(27, 'Poète', 'Poète', 'cre', 'q', 'maj'),
(28, 'Sérieux', 'Sérieuse', 'cre', 'q', 'min'),
(29, 'Traditionaliste', 'Traditionaliste', 'cre', 'q', 'min'),
(30, 'Procédurier', 'Procédurière', 'cre', 'q', 'min'),
(31, 'Discipliné', 'Disciplinée', 'cre', 'q', 'min'),
(32, 'Anticonformiste', 'Anticonformiste', 'cre', 'd', 'maj'),
(33, 'Rebelle', 'Rebelle', 'cre', 'd', 'maj'),
(34, 'Indiscipliné', 'Indisciplinée', 'cre', 'd', 'maj'),
(35, 'Excentrique', 'Excentrique', 'cre', 'd', 'maj'),
(36, 'Menteur', 'Menteuse', 'cre', 'd', 'maj'),
(37, 'Empoté', 'Empotée', 'cre', 'd', 'min'),
(38, 'Esprit étriqué', 'Esprit étriqué', 'cre', 'd', 'min'),
(39, 'Ascétique', 'Ascétique', 'cre', 'd', 'min'),
(40, 'Rigide', 'Rigide', 'cre', 'd', 'min'),
(41, 'Réceptif', 'Réceptive', 'emp', 'q', 'maj'),
(42, 'Sensible', 'Sensible', 'emp', 'q', 'maj'),
(43, 'Intuitif', 'Intuitive', 'emp', 'q', 'maj'),
(44, 'Extraverti', 'Extravertie', 'emp', 'q', 'maj'),
(45, 'Contrôle de ses émotions', 'Contrôle de ses émotions', 'emp', 'q', 'min'),
(46, 'Peu influençable', 'Peu influençable', 'emp', 'q', 'min'),
(47, 'Émotif', 'Émotive', 'emp', 'd', 'maj'),
(48, 'Influençable', 'Influençable', 'emp', 'd', 'maj'),
(49, 'Bavard', 'Bavarde', 'emp', 'd', 'maj'),
(50, 'Austère', 'Austère', 'emp', 'd', 'min'),
(51, 'Insensible', 'Insensible', 'emp', 'd', 'min'),
(52, 'Renfermé', 'Renfermée', 'emp', 'd', 'min'),
(53, 'Taciturne', 'Taciturne', 'emp', 'd', 'min'),
(54, 'Froid', 'Froide', 'emp', 'd', 'min'),
(55, 'Individualiste', 'Individualiste', 'emp', 'd', 'min'),
(56, 'Réfléchi', 'Réfléchie', 'rai', 'q', 'maj'),
(57, 'Ingénieux', 'Ingénieuse', 'rai', 'q', 'maj'),
(58, 'Prudent', 'Prudente', 'rai', 'q', 'maj'),
(59, 'Logique', 'Logique', 'rai', 'q', 'maj'),
(60, 'Concentré', 'Concentrée', 'rai', 'q', 'maj'),
(61, 'Spontané', 'Spontanée', 'rai', 'q', 'min'),
(62, 'Téméraire', 'Téméraire', 'rai', 'q', 'min'),
(63, 'Peu entravé', 'Peu entravée', 'rai', 'q', 'min'),
(64, 'Abstraction', 'Abstraction', 'rai', 'd', 'maj'),
(65, 'Replié sur soi', 'Repliée sur soi', 'rai', 'd', 'maj'),
(66, 'Précautionneux', 'Précautionneuse', 'rai', 'd', 'maj'),
(67, 'Hésitant', 'Hésitante', 'rai', 'd', 'maj'),
(68, 'Distrait', 'Distraite', 'rai', 'd', 'min'),
(69, 'Imprudent', 'Imprudente', 'rai', 'd', 'min'),
(70, 'Irréfléchi', 'Irréfléchie', 'rai', 'd', 'min'),
(71, 'Droit', 'Droite', 'ide', 'q', 'maj'),
(72, 'Persévérant', 'Persévérante', 'ide', 'q', 'maj'),
(73, 'Loyal', 'Loyale', 'ide', 'q', 'maj'),
(74, 'Incorruptible', 'Incorruptible', 'ide', 'q', 'maj'),
(75, 'Généreux', 'Généreuse', 'ide', 'q', 'maj'),
(76, 'Libre', 'Libre', 'ide', 'q', 'min'),
(77, 'Indépendant', 'Indépendante', 'ide', 'q', 'min'),
(78, 'Rigide', 'Rigide', 'ide', 'd', 'maj'),
(79, 'Intolérant', 'Intolérante', 'ide', 'd', 'maj'),
(80, 'Fanatique', 'Fanatique', 'ide', 'd', 'maj'),
(81, 'Influençable', 'Influençable', 'ide', 'd', 'maj'),
(82, 'Capricieux', 'Capricieuse', 'ide', 'd', 'min'),
(83, 'Inconstant', 'Inconstante', 'ide', 'd', 'min'),
(84, 'Inconséquent', 'Inconséquente', 'ide', 'd', 'min'),
(85, 'Immoral', 'Immorale', 'ide', 'd', 'min'),
(86, 'Doute', 'Doute', 'ide', 'd', 'min'),
(87, 'Traître', 'Traitresse', 'ide', 'd', 'min'),
(88, 'Opportuniste', 'Opportuniste', 'cre', 'd', 'min');

-- --------------------------------------------------------

-- 
-- Structure de la table `est_users`
-- 

DROP TABLE IF EXISTS `est_users`;
CREATE TABLE `est_users` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `user_password` varchar(41) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_acl` smallint(5) unsigned NOT NULL DEFAULT '50',
  `user_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `user_confirm` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`),
  UNIQUE KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8 AUTO_INCREMENT=119 ;

-- 
-- Contenu de la table `est_users`
-- 

INSERT INTO `est_users` (`user_id`, `user_name`, `user_password`, `user_email`, `user_acl`, `user_status`, `user_confirm`)
VALUES (1, 'admin', '5ff72db64a44df9364e9ab1f8c61de6d9c97d9d6', 'admin@localhost.com', 0, 1, '');

-- --------------------------------------------------------

-- 
-- Structure de la table `est_voies`
-- 

DROP TABLE IF EXISTS `est_voies`;
CREATE TABLE `est_voies` (
  `voie_id` tinyint(4) unsigned NOT NULL AUTO_INCREMENT,
  `voie_shortname` varchar(3) NOT NULL,
  `voie_name` varchar(30) NOT NULL,
  `voie_travers` varchar(30) NOT NULL,
  `voie_desc` text NOT NULL,
  PRIMARY KEY (`voie_id`),
  UNIQUE KEY `voie_shortname` (`voie_shortname`),
  UNIQUE KEY `voie_name` (`voie_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- 
-- Contenu de la table `est_voies`
-- 

INSERT INTO `est_voies` (`voie_id`, `voie_shortname`, `voie_name`, `voie_travers`, `voie_desc`) VALUES (1, 'com', 'Combativité', 'Passion', 'Cette Voie traduit la pugnacité, l''énergie qui pousse à agir, la rage de vivre.'),
(2, 'cre', 'Créativité', 'Subversion', 'La capacité à imaginer, à donner à sa vie un sens original, l''inventivité, la débrouillardise.'),
(3, 'emp', 'Empathie', 'Émotivité', 'Le lien qui relie un être humain à son environnement.\r\nPar exemple, les Demorthèn se servent de leur Empathie pour communiquer avec la nature.\r\nAu niveau relationnel, l''Empathie désigne la faculté de ressentir les émotions d''une autre personne.'),
(4, 'rai', 'Raison', 'Doute', 'La rationnalisation, mais aussi la recherche et la réflexion. Elle traduit la capacité d''apprentissage d''un personnage, sa curiosité, etc.'),
(5, 'ide', 'Idéal', 'Culpabilité', 'Généralement, un humain se raccroche à un idéal ou des convictions qui guident sa vie.\r\nCertains se tournent vers la religion, d''autres vers des préceptes de chevalerie, d''autres encore suivent un code personnel.');
