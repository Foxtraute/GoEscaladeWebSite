-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 11 jan. 2023 à 21:15
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `goescalade`
--

-- --------------------------------------------------------

--
-- Structure de la table `connexion`
--

CREATE TABLE `connexion` (
  `id` int(10) NOT NULL COMMENT 'id',
  `user` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'utilisateurs',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'mot2pass',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'clients/admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `connexion`
--

INSERT INTO `connexion` (`id`, `user`, `password`, `description`) VALUES
(1, 'demo', 'demo', 'Compte de démonstration'),
(2, 'jason', 'nosaj', 'compte test'),
(3, 'admin', 'admin', 'compte admin');

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE `produits` (
  `id` int(50) NOT NULL COMMENT 'numérotation',
  `nom` varchar(255) NOT NULL COMMENT 'nom du produit',
  `référence` varchar(255) NOT NULL COMMENT 'référence complète',
  `catégorie` varchar(255) NOT NULL COMMENT 'chaussons/magnesite/baudriers',
  `description` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'description produit',
  `prix` int(10) NOT NULL COMMENT 'en euros',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'lien vers image interne'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `produits`
--

INSERT INTO `produits` (`id`, `nom`, `référence`, `catégorie`, `description`, `prix`, `image`) VALUES
(1, 'BOREAL NINJA RED', 'BRLNJAR\n', 'chaussons enfants', 'Le Ninja Junior de BOREAL est conçu avec les mêmes matériaux et le même savoir faire que nos modèles adultes. Facile et rapide à enfiler, il est spécialement adapté aux petits grimpeurs.\n', 56, '/BDD/Products/chaussons-descalade-ninja-enfant-rouge.jpg'),
(2, 'BOREAL NINJA GRN', 'BRLNJAV\n', 'chaussons enfants', 'Le Ninja Junior de BOREAL est conçu avec les mêmes matériaux et le même savoir faire que nos modèles adultes. Facile et rapide à enfiler, il est spécialement adapté aux petits grimpeurs.\n', 59, '/BDD/Products/chaussons-descalade-ninja-enfant-vert.jpg'),
(3, 'SIMOND EDGE', 'SMDEDG', 'chaussons femmes', 'La chaussure à tout faire pour les grimpeurs : accédez au pied des falaises tout confort et grimpez dans les voies accessibles (4+/5) sans mettre les chaussons. Confort à l\'approche garanti grâce au talon en EVA pour l\'amorti, la climbing zone VIBRAM® à l\'avant pour l\'adhérence et le laçage bas pour la précision.\"', 80, '/BDD/Products/chaussure-dapproche-femme-edge-turquoise.jpg'),
(4, 'CRUX LACE', 'CRXLAC\r\n', 'chaussons femmes', 'Le Crux Lace est un chausson incroyablement technique et polyvalent pour ceux recherchant le meilleur niveau de performance et ouvrant plus de possibilités que les chausson extrêmement plongeants.\r\n', 108, '/BDD/Products/chaussons-descalade-crux-lace-femme.jpg'),
(5, 'SILEX LACE', 'SLXLAC', 'chaussons femmes', 'Le Silex est depuis longtemps le chausson de référence pour la voie et la grande voie, et les dernières mises à jour garantissent qu’il conserve ce statut.\r\n', 100, '/BDD/Products/chaussons-descalade-silex-lace-femme.jpg'),
(6, 'MIURA VS', 'MIRVS', 'chaussons hommes', 'Nos grimpeurs ont sélectionné ce chausson pour performer, spécialement en falaise sur les petites prises.La semelle Vibram XS Edge apporte une forte adhérence.', 120, '/BDD/Products/chaussons-descalade-miura-vs.jpg'),
(7, 'REDCHILI VOLTAGE', 'RDCHVOL', 'chaussons hommes', 'Le bloc et l\'escalade haut niveau requièrent un maximum de tension pour maintenir votre corps contre le mur et effectuer les mouvements difficiles. C\'est là qu\'intervient le chausson d\'escalade Voltage de la marque Red Chili !', 130, '/BDD/Products/red-chili-voltage-chaussons-descalade.jpg'),
(8, 'SIMOND CLIM', 'SMDCLM', 'chaussons hommes', 'Vous cherchez un chausson pour apprendre à grimper sans avoir mal aux pieds ? Il s\'ajuste facilement à la forme de votre pied. Sa semelle accroche sur les prises pour grimper en toute sécurité.\r\n', 45, '/BDD/Products/chausson-descalade-first-klimb-gris.jpg'),
(9, 'SIMOND VERTIKA BLUE', 'SMDVRTKB\r\n', 'baudriers', 'Vous cherchez un baudrier confort qui reste assez léger et compact ? Sa ceinture ergonomique, sa technologie de collage et ses cuisses élastiquées réglables répondront de belles manières à tout ca !\r\nVous cherchez un baudrier confort qui reste assez léger et compact ? Sa ceinture ergonomique, sa technologie de collage et ses cuisses élastiquées réglables répondront de belles manières à tout ca !\r\n', 78, '/BDD/Products/harnais-escalade-et-alpinisme-vertika-homme-bleu.jpg'),
(10, 'PETZL ADJAMA\n', 'PTZLADMA\r\n', 'baudriers', 'Harnais d\'escalade et d\'alpinisme avec tours de cuisse ajustables pour la pratique en falaise et en grande voieEn toute saison, vous apprécierez son confort ! ADJAMA est un harnais conçu pour l\'alpinisme technique, l\'escalade traditionnelle ou en grande voie. Grâce à ses tours de cuisse ajustables, il s\'adapte à tous les grimpeurs. Le rembourrage de sa ceinture et de ses cuisses assurent un maximum de confort sans entraver vos mouvements. Avec ses cinq porte-matériel, vous pourrez emporter tout l\'équipement nécessaire pour la progression sur glace ou rocher et accéder facilement à votre matériel même en plein effort.\r\nHarnais d\'escalade et d\'alpinisme avec tours de cuisse ajustables pour la pratique en falaise et en grande voieEn toute saison, vous apprécierez son confort ! ADJAMA est un harnais conçu pour l\'alpinisme technique, l\'escalade traditionnelle ou en grande voie. Grâce à ses tours de cuisse ajustables, il s\'adapte à tous les grimpeurs. Le rembourrage de sa ceinture et de ses cuisses assurent un maximum de confort sans entraver vos mouvements. Avec ses cinq porte-matériel, vous pourrez emporter tout l\'équipement nécessaire pour la progression sur glace ou rocher et accéder facilement à votre matériel même en plein effort.\r\n', 70, '/BDD/Products/9-87172__c022ba_01.jpeg'),
(11, 'PETZL SELENA', 'PTZLSELNA\r\n', 'baudriers', 'Harnais d\'escalade femme pour la pratique en salle, en falaise et en grande voieQuand grimper rime avec féminité ! SELENA est un harnais adapté à la morphologie des femmes, grâce à sa ceinture de forme galbée. Il vous accompagnera dans toutes vos sessions d\'escalade sportive. Ses tours de cuisse élastiqués restent bien ajustés et sa ceinture, souple et affinée à l\'avant, vous offrent une grande liberté de mouvement. Quatre porte-matériel complètent ce harnais pour garder votre équipement à portée de main, que vous grimpiez en salle, en falaise ou en grande voie.\r\n', 60, '/BDD/Products/C055BA-SELENA_LowRes.jpeg'),
(12, 'CANYONING 500', 'MASKOON 500', 'baudriers', 'Nos ingénieurs ont conçu ce harnais en taille unique pour la pratique régulière du canyoning. Il est résistant, confortable et réglable.', 60, '/BDD/Products/baudrier-canyoning-unisexe-taille-unique-maskoon-500.jpg'),
(13, 'SIMOND 600G', 'SMD600G\r\n', 'Magnesite', 'Grosse réserve de magnésie pour remplir le sac, idéale pour les collectivités ou pour le grimpeur intensif.\r\n', 16, '/BDD/Products/pot-de-magnesie-descalade-600-grammes.jpg'),
(14, 'SIMOND 50G', 'SMD50G\r\n', 'Magnesite', 'magnésie en cube que l\'on peut casser en morceau pour sécher les mains du grimpeur\r\n', 4, '/BDD/Products/magnesie-escalade-en-cube-50-grammes.jpg'),
(15, 'SIMOND 150M', 'SMD150ML\r\n', 'Magnesite', 'Séchage rapide, permet d\'avoir une excellente adhérence sur tout les types de prises. Ajouter un complément de magnésie en poudre pour avoir une tenue optimale.\r\n', 7, '/BDD/Products/magnesie-liquide-descalade-strong-grip.jpg'),
(16, 'SIMOND 125ML ', 'SMD125ML\r\n', 'Magnesite', 'Séchage rapide, permet d\'avoir une excellente adhérence sur tout les types de prises. Ajouter un complément de magnésie en poudre pour avoir une tenue optimale.\r\n', 5, '/BDD/Products/magnesie-liquide-descalade-v2.jpg'),
(17, 'BLACK DIAMOND WHITE GOLD', 'BLDIWHTGLD', 'promotions', 'Séchage rapide, permet d\'avoir une excellente adhérence sur tout les types de prises. Ajouter un complément de magnésie en poudre pour avoir une tenue optimale.', 10, '/BDD/Products/magnesie-liquide-white-gold.jpg'),
(39, 'BLACK DIAMOND MOMENTUM 4S', 'BLDIMOM4S', 'promotions', 'Avec une capacité de réglage et d\'ajustement maximale, cet harnais permet un maximum de réglages pour convenir à toutes les morphologies et toutes les activités suivant les saisons.', 70, '/BDD/Products/harnais-descalade-et-alpinisme-black-diamond-momentum-4s.jpg'),
(40, 'ROCK GRIS VERT', 'RCKGRVRT', 'promotions', 'Votre enfant se met à l\'escalade ? Ce chausson a été développé pour qu\'il l\'enfile seul et grimpe sans avoir mal aux pieds. Il permet d’anticiper la croissance de son pied pendant toute une année.', 30, '/BDD/Products/chaussons-descalade-enfant-rock-gris-vert.jpg'),
(41, 'SIMOND ROCK NOIR', 'SMDRCKNR', 'promotions', 'Stable sur tous les terrains grâce à sa construction en semelle rigide et sa semelle VIBRAM® avec climbing zone. Elle est aussi dotée d\'une membrane imperméable et d\'une tige intégralement en cuir.', 95, '/BDD/Products/chaussure-dapproche-impermeable-homme-rock-noir.jpg'),
(42, 'BOREAL LYNX FEMME', 'BRLYNX', 'promotions', 'Le modèle Boreal Lynx est un chausson polyvalent haute performance.', 119, '/BDD/Products/chaussons-descalade-lynx-femme.jpg');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `connexion`
--
ALTER TABLE `connexion`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `connexion`
--
ALTER TABLE `connexion`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `produits`
--
ALTER TABLE `produits`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT COMMENT 'numérotation', AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
