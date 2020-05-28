--Exercice 1--
CREATE DATABASE `stockImages` --création database nommée stockImages
CHARACTER SET `utf8`; --en utf8

--Exercice 2--
DROP DATABASE stockImages --suppression de la database stockImages

--Exercice 3--
CREATE DATABASE IF NOT EXISTS `mediaBank` ----création database nommée mediaBank
CHARACTER SET `utf8`; --en utf8

--Exercice 4--
CREATE USER 'fab'@'localhost' IDENTIFIED BY '123'; --créer utilisateur fab sur le serveur localhost identifié par mot de passe 123--
GRANT ALL PRIVILEGES ON `mediaBank`. * TO 'fab'@'localhost'; --accorder tous les privilèges sur la BDD mediaBank sur toutes les tables à l'utilisateur (toutes les tables avec *) fab sur le serveur localhost--

--Exercice 5--
CREATE TABLE `images`
(
`id` INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(50),
`link` VARCHAR(255),
`width` INT,
`height` INT,
`format` VARCHAR(5),
`description` TEXT,
`publicationDate` DATE);

CREATE TABLE `videos`
(
`id` INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(50),
`link` VARCHAR(255),
`duration` TIME,
`description` TEXT,
`publicationDate` DATE);

--EXERCICE 6--
INSERT INTO `images` (`name`, `link`, `width`, `height`, `format`, `description`,`publicationDate`)
    VALUES 
    ('orwellPortrait', 'https://upload.wikimedia.org/wikipedia/commons/7/7e/George_Orwell_press_photo.jpg', 1176, 1596, 'jpg', 'Portrait de l’auteur Geroge Orwell', '2020-05-10'),
    ('steinbeckPortrait', 'https://live.staticflickr.com/525/18306511889_1c9606e8ea_z.jpg', 640, 476, 'jpg', 'Portrait de l’auteur John Steinbeck', '2020-01-02');

SELECT `id`, `name`, `link`, `width`, `height`, `format`, `description`, `publicationDate` FROM `images`;

INSERT INTO `videos` (`name`, `link`, `duration`, `description`, `publicationDate`)
    VALUES 
    ('1984_trailer', 'https://www.youtube.com/watch?v=Z4rBDUJTnNU&t=4s', '00:02:39', 'Bande annonce du film 1984', '2020-05-15'),
    ('micemen_trailer', 'https://www.youtube.com/watch?v=2QnM6hsXxNE', '00:10:41', 'Bande annonce du film Des souris et des hommes', '2020-01-02');

SELECT `id`, `name`, `link`, `duration`, `description`, `publicationDate` FROM `videos`;

--EXERCICE 7--
UPDATE `images` SET `publicationDate`='2020-05-28' WHERE `id`=1;
SELECT `publicationDate` FROM `images`;

UPDATE `videos` SET `duration`='00:01:41' WHERE `id`=2;
SELECT `duration` FROM `videos`;

--EXERCICE 8--
DELETE FROM `images` WHERE `id` = 2;
DELETE FROM `videos` WHERE `id` = 1;

--EXERCICE 9--
DROP TABLE `videos`;