-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3307
-- Généré le : mar. 08 oct. 2024 à 23:20
-- Version du serveur : 10.4.17-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `quote`
--

-- --------------------------------------------------------

--
-- Structure de la table `quote`
--

CREATE TABLE `quote` (
  `id` int(11) NOT NULL,
  `citation` text NOT NULL,
  `author` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `quote`
--

INSERT INTO `quote` (`id`, `citation`, `author`) VALUES
(1, 'La vie est magnifique aussi longtemps quelle vous consume.', 'D.H. Lawrence'),
(2, 'Nous forgeons les chaînes que nous portons dans la vie.', 'Charles Dickens'),
(3, 'La vie me semble trop courte pour la passer à entretenir des ressentiments ou ressasser des griefs.', 'Charlotte Brontë'),
(4, 'Sans musique, la vie serait un vide pour moi.', 'Jane Austen'),
(5, 'L’art est la vie, la vie c’est l’art.', 'William Blake'),
(6, 'Il y a deux tragédies dans la vie : l’une est de ne pas satisfaire son désir et l’autre est de le satisfaire.', 'Robert Louis Stevenson'),
(7, 'Être ce que nous sommes et devenir ce que nous sommes capables de devenir, tel est le but de la vie.', 'Robert Louis Stevenson,'),
(8, 'Pourquoi vivons-nous, si ce n’est pour nous rendre la vie moins difficile ?', 'George Eliot'),
(9, 'Le grand art de la vie est la sensation de sentir que nous existons, même dans la douleur.', 'Lord Byron'),
(10, 'L’amour d’un homme n’occupe qu’une partie de sa vie d’homme, l’amour d’une femme occupe toute son existence.', 'Lord Byron'),
(11, 'La douleur de la vie primitive sur la terre est la seule base, la seule garantie du bonheur dans la vie ultérieure, dans le ciel.', 'Edgar Allan Poe'),
(12, 'Il est temps de vivre la vie que tu t’es imaginée.', 'Henry James'),
(13, 'La meilleure façon de vivre est de prendre les choses tranquillement.', 'Herman Melville'),
(14, 'Les deux jours les plus importants de votre vie sont le jour de votre naissance et le jour où vous découvrez pourquoi.', 'Mark Twain'),
(15, 'La vie est courte. Transgressez les règles, pardonnez rapidement, embrassez lentement, aimez véritablement, riez sans contrôle et ne regrettez jamais quelque chose qui vous a fait sourire.', 'Mark Twain'),
(16, 'J’ai eu beaucoup de soucis dans ma vie, la plupart d’entre eux ne sont jamais arrivés.', 'Mark Twain'),
(17, 'Mieux vaut mourir incompris que passer sa vie à expliquer.', 'William Shakespeare'),
(18, 'Vivre ne suffit pas, on a besoin de soleil, de liberté et d’une petite fleur.', 'Hans Christian Andersen'),
(19, 'Quand on aime le jour de son mariage, on aime pour la vie.', 'Joseph Lallier'),
(20, 'Le quiproquo c’est d’abord la vie même qui en est un, et le plus compliqué de tous.', 'Luigi Pirandello'),
(21, 'Si le plaisir existe, et si on peut en jouir qu’en vie, alors la vie est un bonheur.', 'Giacomo Casanova'),
(22, 'Heureux les hommes qui pour jouir de la vie n’ont besoin ni d’espérer ni de prévoir.', 'Giacomo Casanova'),
(23, 'Vivez, la vie continue. Les morts meurent et les ombres passent. Emporte qui laisse et vit qui a vécu.', 'Antonio Machado'),
(24, 'Cette vie est un combat perpétuel et la philosophie est le seul emplâtre qu’on puisse mettre sur les blessures qu’on reçoit de tous côtés.', 'Voltaire'),
(25, 'J’étais né pour l’amour impossible, et le hasard a voulu que je fusse servi par-delà mes souhaits.', 'Honoré de Balzac'),
(26, 'Je ne suis rien, je le sais, mais je compose mon rien avec un petit morceau de tout.', 'Victor Hugo'),
(27, 'Il faut manger pour vivre, et non pas vivre pour manger.', 'Molière'),
(28, 'Vivre sans aimer n’est pas proprement vivre.', 'Molière'),
(29, 'Il est si doux de vivre ! On ne meurt qu’une fois et c’est pour si longtemps…', 'Molière'),
(30, 'Laissez-vous enflammer : que vaut la peine de vivre, sans le doux plaisir d’aimer ?', 'Jean de la Fontaine'),
(31, 'On rencontre sa destinée souvent par le chemin qu’on a pris pour l’éviter.', 'Jean de la Fontaine'),
(32, 'Ne prenez pas la vie au sérieux, de toute façon, vous n’en sortirez pas vivant.', 'Bernard le Bovier de Fontenelle'),
(33, 'Tuer le temps qui a la vie si dure, et accélérer la Vie qui coule si lentement.', 'Charles Baudelaire'),
(34, 'Ce qui est créé par l’esprit est plus vivant que la matière.', 'Charles Baudelaire'),
(35, 'L’homme qui a le plus vécu n’est pas celui qui a compté le plus d’années, mais celui qui a le plus senti la vie.', 'Jean-Jacques Rousseau'),
(36, 'Une heure, une minute suffit pour que le destin agisse et change les défaites en victoires.', 'Émile Zola'),
(37, 'Il faut secouer la vie, sinon elle nous ronge.', 'Stendhal'),
(38, 'Quand je me promets une vie heureuse, je me la promets longue.', 'Diderot'),
(39, 'La vie serait une comédie bien agréable si l’on n’y jouait pas un rôle.', 'Diderot'),
(40, 'Une heure après la mort, notre âme évanouie sera ce qu’elle était une heure avant la vie.', 'Cyrano de Bergerac'),
(41, 'Aux âmes bien nées, la valeur n’attend point le nombre d’années.', 'Pierre Corneille'),
(42, 'La vie est un grand chapelet de petites misères que le philosophe égrène en riant.', 'Alexandre Dumas'),
(43, 'Il faut, si l’on veut vivre, renoncer à avoir une idée nette de quoi que ce soit.', 'Gustave Flaubert'),
(44, 'Si la vie n’est qu’un passage, sur ce passage semons au moins des fleurs.', 'Montaigne'),
(45, 'La vie est en soi ni bien ni mal : c’est la place du bien et du mal selon que vous la leur faites.', 'Montaigne'),
(46, 'Une heure de lecture est le souverain remède contre les dégoûts de la vie.', 'Montesquieu'),
(47, 'La vie n’est bonne qu’à étudier et enseigner les mathématiques.', 'Blaise Pascal'),
(48, 'Quand on ne sait pas hurler avec les loups, il ne faut pas vivre avec eux.', 'Madame de Staël'),
(49, 'La vie, ce n’est d’attendre que les orages passent. C’est d’apprendre comment danser sous la pluie.', 'Sénèque'),
(50, 'Il faut toute la vie pour apprendre à vivre.', 'Sénèque'),
(51, 'Les amis sont des compagnons de voyage, qui nous aident à avancer sur le chemin d’une vie plus heureuse.', 'Pythagore'),
(52, 'La vie a ses propres forces cachées que vous ne pourrez découvrir qu’en vivant.', 'Soren Kierkegaard'),
(53, 'La vie ne se comprend que par un retour en arrière, mais on ne la vit qu’en avant.', 'Soren Kierkegaard'),
(54, 'Si vous voulez que la vie vous sourit, apportez-lui d’abord votre bonne humeur.', 'Baruch Spinoza'),
(55, 'Le plus grand plaisir de la vie est de réaliser ce que les autres vous pensent incapable de réaliser.', 'Walter Bagehot'),
(56, 'La joie prolonge la vie.', 'Ben Sira'),
(57, 'Ne demandez jamais quelle est l’origine d’un homme', 'interrogez plutôt sa vie et vous saurez ce qu’il est.'),
(58, 'La vie est un mystère qu’il faut vivre et non un problème à résoudre.', 'Gandhi'),
(59, 'Ne pas estimer la vie, toute la vie, ce n’est pas la mériter.', 'Léonard de Vinci'),
(60, 'La vie engendre la vie. L’énergie produit l’énergie. C’est en se dépensant soi-même que l’on devient riche.', 'Sarah Bernhardt'),
(61, 'Les dangers de la vie font sa valeur.', 'Eschyle'),
(62, 'La faculté d’un être d’agir selon ses représentations s’appelle la vie.', 'Emmanuel Kant'),
(63, 'La vie est une succession de changements naturels. Ne résistez pas car cela générera que des soucis. Laissez la réalité être la réalité. Laissez faire naturellement les choses.', 'Lao Tseu'),
(64, 'Dureté et rigidité sont les compagnons de la mort. Fragilité et souplesse sont les compagnons de la vie.', 'Lao Tseu'),
(65, 'La vie est un départ, la mort est un retour.', 'Lao Tseu'),
(66, 'Un voyage de mille lieues commence toujours par un premier pas.', 'Lao Tseu'),
(67, 'Si vous êtes dépressifs, vous vivez dans le passé. Si vous êtes anxieux, vous vivez dans le futur. Si vous êtes en paix, vous vivez au présent.', 'Lao Tseu'),
(68, 'Les hommes sont différents dans la vie, semblables dans la mort.', 'Lao Tseu'),
(69, 'Tu dois nourrir ta vie.', 'Lao Tseu'),
(70, 'Le sage vit dans la conscience des difficultés et n’en souffre pas.', 'Lao Tseu'),
(71, 'Pour vivre pleinement sa vie, il n’est pas nécessaire d’agir. Pour vivre pleinement sa vie, il est indispensable d’être.', 'Lao Tseu'),
(72, 'Vous verrez que votre vie sera beaucoup plus facile une fois que vous cesserez d’essayer de paraître aussi intelligent.', 'Lao Tseu'),
(73, 'Accepter et pardonner, c’est se réconcilier avec soi-même, se donner de l’amour pour être en paix et retrouver la joie de vivre, l’instant présent.', 'Lao Tseu'),
(74, 'On a deux vies. La deuxième commence quand on se rend compte qu’on n’en a qu’une.', 'Confucius'),
(75, 'La vie est vraiment simple mais nous insistons pour la rendre compliquée.', 'Confucius'),
(76, 'Chaque matin, nous sommes nés à nouveau. Ce que nous faisons aujourd’hui est ce qui importe le plus.', 'Bouddha'),
(77, 'Quel que soit le lieu où tu vis, il constitue ton temple, pour autant que tu le considères comme tel.', 'Bouddha'),
(78, 'Vivez comme si vous deviez mourir demain. Apprenez comme si vous deviez vivre toujours.', 'Bouddha'),
(79, 'Pour vivre une vie pure et désintéressée, il ne faut rien compter comme sien au milieu de l’abondance.', 'Bouddha'),
(80, 'Quand vous adorez une fleur, vous la cueillez. Quand vous aimez une fleur, vous l’arrosez tous les jours. Celui qui comprend ça comprend la vie.', 'Bouddha'),
(81, 'La vie est comme la rosée au bout d’un brin d’herbe.', 'Proverbe bouddhiste'),
(82, 'Il faut deux ans pour apprendre à parler et toute une vie pour apprendre à se taire.', 'Proverbe chinois'),
(83, 'Le sage regarde la vie et la mort comme le matin et le soir.', 'Proverbe chinois'),
(84, 'Il faut rajouter de la vie aux années et non des années à la vie.', 'Proverbe chinois'),
(85, 'L’espace d’une vie est le même, qu’on le passe en chantant ou en pleurant.', 'Proverbe japonais'),
(86, 'La vie humaine est une rosée passagère.', 'Proverbe japonais'),
(87, 'Le monde est éternel, la vie est bien courte.', 'Proverbe japonais'),
(88, 'Laissez vivre et grandir un arbre vert dans votre cœur. Un oiseau viendra sûrement y chanter.', 'Proverbe chinois'),
(89, 'Le secret pour bien vivre et longtemps est : manger la moitié, marcher le double, rire le triple et aimer sans mesure.', 'Proverbe tibétain'),
(90, 'Dans toutes les larmes s’attarde un espoir.', 'Proverbe chinois'),
(91, 'Souvent, on trouve son destin sur le chemin qu’on a pris pour l’éviter.', 'Proverbe chinois'),
(92, 'L’art de la vie consiste à une réadaptation constante du milieu.', 'Okakura Kakuzo, écrivain japonais'),
(93, 'La vraie vie est si souvent celle qu’on ne vit pas.', 'Oscar Wilde'),
(94, 'La vie est une chose bien trop importante pour qu’on en parle sérieusement.', 'Oscar Wilde'),
(95, 'Vivre est ce qu’il y a de plus rare au monde. La plupart des gens existent. C’est tout.', 'Oscar Wilde'),
(96, 'Le but de la vie est de se développer, de se réaliser complètement, c’est notre fonction sur Terre.', 'Oscar Wilde'),
(97, 'Il faut choisir entre vivre sa propre vie pleinement, entièrement, complètement ou traîner l’existence dégradante, creuse et fausse que le monde, dans son hypocrisie, nous impose.', 'Oscar Wilde'),
(98, 'Les folies sont les seules choses qu’on ne regrette jamais.', 'Oscar Wilde');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `quote`
--
ALTER TABLE `quote`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `quote`
--
ALTER TABLE `quote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
