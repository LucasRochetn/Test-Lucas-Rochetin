DROP DATABASE IF EXISTS articles_db;
CREATE DATABASE articles_db;
USE articles_db;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `articles_db`
--

--
-- Table structure for table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `author_id` int(11) NOT NULL,
  `created_at` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `author_id` (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=6;

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE IF NOT EXISTS `authors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` date NOT NULL DEFAULT CURDATE(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5;

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_fk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

INSERT INTO `authors` (`id`, `name`, `email`,`created_at`) VALUES
	(1, 'Christophe', 'christophe@christophe.com', CURDATE()),
	(2, 'Bruno', 'bruno@bruno.com', CURDATE()),
	(3, 'Jessica', 'jessica@jessica.com', CURDATE()),
	(4, 'Theo', 'theo@theo.com', CURDATE());

INSERT INTO `articles` (`id`, `title`,`content`,`author_id`,`created_at`) VALUES
	(1, 'LOREM IPSUM', "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum." ,'4', CURDATE()),
	(2, 'REST', "Une API REST (également appelée API RESTful) est une interface de programmation d'application (API ou API web) qui respecte les contraintes du style d'architecture REST et permet d'interagir avec les services web RESTful. L'architecture REST (Representational State Transfer) a été créée par l'informaticien Roy Fielding." ,'4', CURDATE()),
	(3, 'PHP', "PHP (officiellement, ce sigle est un acronyme récursif pour PHP Hypertext Preprocessor) est un langage de scripts généraliste et Open Source, spécialement conçu pour le développement d'applications web. Il peut être intégré facilement au HTML." ,'1', CURDATE()),
	(4, 'MVC', "Modèle-vue-contrôleur ou MVC est un motif d'architecture logicielle destiné aux interfaces graphiques lancé en 1978 et très populaire pour les applications web. Le motif est composé de trois types de modules ayant trois responsabilités différentes : les modèles, les vues et les contrôleurs." ,'2', CURDATE()),
  (5, "HTTP middleware", "I use the term middleware, but each language/framework calls the concept differently. NodeJS and Rails calls it middleware. In the Java enterprise world (i.e. Java Servlet), it’s called filters. C# calls it delegate handlers. Essentially, the middleware performs some specific function on the HTTP request or response at a specific stage in the HTTP pipeline before or after the user defined controller. Middleware is a design pattern to eloquently add cross cutting concerns like logging, handling authentication, or gzip compression without having many code contact points.
      Since these cross-cutting concerns are handled in middleware, the controllers/user defined handlers can focus on the core business logic." ,'3', CURDATE());