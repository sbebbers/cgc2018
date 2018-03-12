-- CREATE DATABASE  IF NOT EXISTS `cgc2018` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
-- USE `cgc2018`;

-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)

-- Host: 127.0.0.1    Database: cgc2018
-- ----------------------------------------------------
-- Server version    5.5.5-10.1.25-MariaDB

-- /*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
-- /*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
-- /*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
-- /*!40101 SET NAMES utf8 */;
-- /*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
-- /*!40103 SET TIME_ZONE='+00:00' */;
-- /*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
-- /*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
-- /*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- /*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
DROP TABLE IF EXISTS `challenges`;
CREATE TABLE `challenges` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `numeral` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(56) COLLATE utf8_unicode_ci DEFAULT NULL,
  `class` enum('ink-bright-blue','ink-bright-black') COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `challenges` (`id`, `numeral`, `name`, `class`, `description`, `created`, `updated`) VALUES
(1,	'I',	'One-Liner',	'ink-bright-blue',	'[\"This is <strong class=\\\"ink-bright-red\\\">ZX Spectrum<\\/strong> and compatible machines, as you are required to create your game (or other softwares) in only one line of BASIC only.\",\"Fortunately, the Speccy has a super-powerful interpreter that allows for so many possibilities in such small space.\"]',	'2018-02-14 22:33:56',	'2018-02-14 22:33:56'),
(2,	'II',	'Twelve-Liner',	'ink-bright-black',	'[\"Not to leave out the <strong>ZX80<\\/strong> or <strong>ZX81<\\/strong>, I guess the equivalent would be to make a software in 12 lines of BASIC for these mighty micros.\",\"If you require some hints, as long as you don\'t <strong>RUN<\\/strong> your symbolic listings to execute it (i.e., use <strong>GOTO SGN PI<\\/strong> instead) then you will not lose the VAR stack. In other words, your variables will be preserved when using <strong>SAVE<\\/strong>.\",\"This is a \'Twelve-Liner\' to allow for something like this at the end of your listing (though not possible on the ZX80 without a new ROM):\",\"9998 SAVE \\\"CRAP\\\"\",\"9999 GOTO SGN PI\"]',	'2018-02-14 22:33:56',	'2018-02-14 23:25:23'),
(3,	'III',	'Advanced TV Tie-In Simulator',	'ink-bright-blue',	'[\"We all remember those great TV Tie-ins from the 1980s; <em>East Enders<\\/em>, by Macsen Software, and two timeless classics from TyneSoft <em>Auf Wiedersehen Pet<\\/em> and <em>Super Gran<\\/em> to name but three. I bet you always wanted to make something as good as these epic games, eh? Well now is your chance.\",\"Okay, so we don\'t expect you to go and obtain the rights to make a TV Tie-in; this\'ll have to be 100% Unofficial. You may therefore have to change the name of your game to something that sounds like your inspiration for it; like, err.. <em>Emma Dale\'s Farm<\\/em> or something. You get the idea. Send \'em in!\"]',	'2018-02-23 09:35:20',	'2018-02-25 17:27:16'),
(4,	'IV',	'100% Machine Code',	'ink-bright-black',	'[\"Remember when all the best games proudly proclaimed <em>100% Machine code</em> on the cassette inlay? Well, now is your chance to make something in pure assembly by entering our little challenge. BASIC programmers need not apply.\"]',	'2018-02-25 20:29:47',	'2018-02-25 20:29:47');

DROP TABLE IF EXISTS `entries`;
CREATE TABLE `entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numeral` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(56) COLLATE utf8_unicode_ci DEFAULT NULL,
  `format` varchar(56) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filename` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `download` varchar(48) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `entries` (`id`, `numeral`, `title`, `format`, `filename`, `alt`, `download`, `created`, `updated`) VALUES
(1,	'I',	'Winter Neurobics Pentathalon',	'ZX Spectrum (48K or more recommended, 16K compatible)',	'winterneurobics.png',	'Kweepa\'s 2018 Winter [unofficial] Olympics tie-in',	'winterneurobics.zip',	'2018-02-15 21:16:54',	'2018-02-15 21:16:54'),
(2,	'II',	'Winter Neurobics Pentathalon V1.1 (\'Fixed\' edition)',	'ZX Spectrum (48K or more recommended, 16K compatible)',	'winterneurobics.png',	'\'Fixed\' version of Kweepa\'s 2018 [unofficial] Winter Olympics ti',	'winterneurobicsV1.1.zip',	'2018-02-15 21:27:45',	'2018-02-15 21:27:45'),
(3,	'III',	'Fortress',	'ZX Spectrum 16K',	'fortress.png',	'Fortress, by ZX User Club Cooperation GmbH',	'fortress.zip',	'2018-02-15 21:27:45',	'2018-02-15 21:27:45'),
(4,	'IV',	'Plumbers Don\'t Wear Ties',	'ZX Spectrum 48K',	'plumbers.png',	'The Speccy conversion of Plumbers Don\'t Wear Ties, by PROSM Soft',	'plumbers.zip',	'2018-02-15 21:27:45',	'2018-02-15 21:27:45'),
(5,	'V',	'Clive\'s Realtime Advanced Prognosticator',	'ZX Spectrum 48K (16K compatible)',	'prognosticator.png',	'Sir Clive Sinclair\'s Realtime Advanced Prognosticator',	'prognosticator.zip',	'2018-02-22 20:06:13',	'2018-02-22 20:06:13'),
(6,	'VI',	'GO RACE!',	'ZX Spectrum 48K',	'go-race.png',	'LCD fun on your Speccy',	'go-race.zip',	'2018-03-07 20:30:16',	'2018-03-07 20:30:16');

DROP TABLE IF EXISTS `home`;
CREATE TABLE `home` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `header` varchar(56) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_header` varchar(56) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `home` (`id`, `header`, `sub_header`, `content`, `created`, `updated`) VALUES
(1,	'Crap Games Competition 2018',	'Welcome to the 2018 Crap Games Competition',	'[\"Have you ever wanted to make a game for your favourite Sinclair 8-bit computer? Now is your chance, and we want you to DO YOUR WORST!\",\"See our <a href=\\\"\\/rules\\\" target=\\\"_blank\\\" class=\\\"ink-bright-blue\\\" rel=\\\"nofollow\\\">rules and regulations<\\/a> before you submit your entry. If these are agreeable send your crap to <a href=\\\"mailto:shaun@square-circle.ZX.co.uk\\\" class=\\\"ink-bright-blue\\\" rel=\\\"nofollow\\\">shaun@square-circle.co.uk<\\/a> for evaluation!\",\"If you need tips on how to create crap games for your Sinclair <strong>ZX80<\\/strong>, <strong>ZX81<\\/strong> or <strong class=\\\"ink-bright-red\\\">ZX Spectrum<\\/strong> then feel free to <a href=\\\"https:\\/\\/groups.google.com\\/forum\\/#!topic\\/comp.sys.sinclair\\/5m7PfF0IC30\\\" target=\\\"_blank\\\" rel=\\\"nofollow\\\">ask questions here<\\/a>.\"]',	'2018-02-17 10:10:35',	'2018-02-17 10:13:41');

DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(56) COLLATE utf8_unicode_ci DEFAULT NULL,
  `class` enum('ink-bright-blue','ink-bright-black') COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `news` (`id`, `title`, `class`, `content`, `created`, `updated`) VALUES
(1,	'Plumbers Don\'t Wear Ties!',	'ink-bright-black',	'[\"PROSM Software is back with a remake of a Windows 3.1 game which is an interactive fiction type with a rather steamy plot line (oo-er missus) called <em>Plumbers Don\'t wear ties<\\/em>.\"]',	'2018-02-17 15:00:23',	'2018-02-17 15:06:46'),
(2,	'Fortress released',	'ink-bright-blue',	'[\"<em>Fortress<\\/em> (originally developed by ZX User Club Germany) has been recycled and re-factored thanks to Volker Bartheld.\",\"This is a strategy board game-alike simulator for one or two players, which will work <strong class=\\\"ink-bright-red\\\">16K ZX Speccy<\\/strong>. Go get it.\"]',	'2018-02-17 15:00:24',	'2018-02-17 15:06:29'),
(3,	'Number Guesser',	'ink-bright-black',	'[\"As an example of what you can do in just 12 lines of the powerful <strong>ZX81 BASIC<\\/strong>, I made <em>Number Guesser<\\/em> to give all those Zeddy fans some inspiration.\",\"If you like type-ins, see the <a href=\\\"https:\\/\\/groups.google.com\\/forum\\/#!topic\\/comp.sys.sinclair\\/2wbgULi8rVY\\\" target=\\\"_blank\\\" class=\\\"ink-bright-blue\\\" rel=\\\"nofollow\\\">Comp.Sys.Sinclair thread<\\/a>, or it is available in .P format (for emulators and ZXPand users) from <a href=\\\"http:\\/\\/cgc.source.run\\/download\\/number-guesser.zip\\\" class=\\\"ink-bright-blue\\\" rel=\\\"nofollow\\\">here<\\/a>, which includes a <strong>ZX80<\\/strong> port that is actually 13 lines of BASIC, so wouldn\'t qualify for the challenge (without a small amend to it anyway).\"]',	'2018-02-17 15:00:24',	'2018-02-17 15:06:10'),
(4,	'Winter Neurobics Pentathalon update',	'ink-bright-blue',	'[\"Kweepa has updated his entry as it had something called a \'bug\' which required \'fixing\'.\",\"There doesn\'t seem to be anything in the rules against this so a new version will be available on the \'Entries\' page shortly.\"]',	'2018-02-17 15:00:24',	'2018-02-17 15:05:53'),
(5,	'First Entry from Kweepa',	'ink-bright-black',	'[\"Kweepa has submitted <em>Winter Neurobics Pentathalon<\\/em> for the <strong class=\\\"ink-bright-red\\\">ZX Spectrum<\\/strong>.\",\"This game neatly ties in with the 2018 Winter Olympics, and is intended for machines with 48K of RAM or more, though 16K users are still supported with a text-only version. See our <a href=\\\"\\/entries\\\" class=\\\"ink-bright-blue\\\" rel=\\\"nofollow\\\">entries<\\/a> page to get this download.\"]',	'2018-02-17 15:00:24',	'2018-02-17 15:04:02'),
(6,	'Carp Games Competition 2018 opens',	'ink-bright-blue',	'[\"<strong>The guy who<\\/strong> <strike>once<\\/strike> <strong>wrote<\\/strong> <strike>a small and insignificant amount of content<\\/strike> <strong>for<\\/strong> <strike>the<\\/strike> <strong>Your Sinclair<\\/strong> <strike>tribute issue that was free with Retro Gamer<sup>[1]</sup><\\/strike> <strong>magazine<\\/strong> has launched THIS CRAP GAMES COMPETITION. Want to make some software for your favourite Sinclair 8 bit (or compatible clone)? DO YOUR WORST!!!!!1one\",\"<sup>[1]</sup>&nbsp;<a href=\\\"https://web.archive.org/web/20160413085059/http://ysrnry.co.uk/articles/Shaun_Bebbington_index.htm\\\" title=\\\"Source\\\">Source</a>\"]',	'2018-02-17 15:00:24',	'2018-02-17 15:03:30'),
(7,	'A test news story',	'ink-bright-blue',	'[\"News Item to test the Db stuff. Remember to remove it.\"]',	'2018-02-17 15:25:26',	'2018-02-17 15:48:18'),
(8,	'Prognosticator in real-time!',	'ink-bright-black',	'[\"Kweepa has his second (actually third - Ed) entry into our little Crap Game Compo in the form of <em>Clive\'s Realtime Advanced Prognosticator<\\/em>, which is another 16K compatible release. Happy Days!\"]',	'2018-02-22 19:57:11',	'2018-02-25 20:54:24'),
(9,	'1K Prognosticator',	'ink-bright-blue',	'[\"Inspired by Kweepa excellent <em>Clive\'s Realtime Advanced Prognosticator<\\/em>, I decided to make a <a href=\\\"/download/PROG1K.zip\\\" title=\\\"Click to download\\\" rel=\\\"nofollow\\\"><em>1K Prognosticator Simulator</em></a> for the <strong class=\\\"ink-bright-black\\\">ZX81</strong> as a belated 37th birthday present to the monochrome beast.\"]',	'2018-03-07 14:46:49',	'2018-03-07 20:03:18'),
(10,	'Pacey Racer',	'ink-bright-black',	'[\"Simon Pitter has entered an LCD simulator in the form of the super spiffy <em>GO RACE</em>, which plays like one of those pocket games from the 1980s. Go get it from our entries section. Note: This game is 100% machine code as well, so it would seem!\"]',	'2018-03-07 20:25:13',	'2018-03-07 20:35:39');

DROP TABLE IF EXISTS `page_counts`;
CREATE TABLE `page_counts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `challenges` int(11) unsigned DEFAULT '0',
  `entries` int(11) unsigned DEFAULT '0',
  `home` int(11) unsigned DEFAULT '0',
  `news` int(11) unsigned DEFAULT '0',
  `reviews` int(11) unsigned DEFAULT '0',
  `rules` int(11) unsigned DEFAULT '0',
  `type` enum('live','dev') COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `page_counts` (`id`, `challenges`, `entries`, `home`, `news`, `reviews`, `rules`, `type`) VALUES
(1,	0,	0,	0,	0,	0,	0,	'dev'),
(2,	0,	0,	0,	0,	0,	0,	'live');

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE `reviews` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(56) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_header` varchar(56) COLLATE utf8_unicode_ci DEFAULT NULL,
  `developer` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mega_game` enum('0','1') COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `file_name` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `graphics` enum('0','1','2','3','4','5','6','7','8','9','10') COLLATE utf8_unicode_ci DEFAULT NULL,
  `playability` enum('0','1','2','3','4','5','6','7','8','9','10') COLLATE utf8_unicode_ci DEFAULT NULL,
  `addictiveness` enum('0','1','2','3','4','5','6','7','8','9','10') COLLATE utf8_unicode_ci DEFAULT NULL,
  `total` enum('0','1','2','3','4','5','6','7','8','9','10') COLLATE utf8_unicode_ci DEFAULT NULL,
  `sundry` tinytext COLLATE utf8_unicode_ci,
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `reviews` (`id`, `title`, `sub_header`, `developer`, `mega_game`, `content`, `file_name`, `alt`, `summary`, `graphics`, `playability`, `addictiveness`, `total`, `sundry`, `created`, `updated`) VALUES
(1,	'Winter Neurobics Pentathalon',	'Unofficial Winter Olymics 2018 tie-in',	'Kweepa',	'1',	'[\"It won\'t surprise anyone out there that I wasn\'t very good at sports when I were a lad. Not one bit. Of course, I used to play a game of Footy over the park with jumpers for goal posts, but I just wasn\'t ever very Footy-ish, and always the last to be picked for any sporty-type thing, so when this sports sim landed I feared the worst. Would it be a joystick-breaking or keyboard-bashing affair? Yikes!\",\"On loading <em>Winter Neurobics Pentathalon<\\/em> though, my fears were quickly quashed; this is not just a mindless joystick-waggler or keyboard-basher, the task is to precisely time your interactions with the keyboard according to the on-screen prompt, so this is more of a celeberal workout than one which would quickly require a new keyboard!\",\"Each of the five events, which are <strong class=\\\"ink-bright-blue\\\">Ski Jump<\\/strong>, <strong class=\\\"ink-bright-blue\\\">Speed Skating<\\/strong>, <strong class=\\\"ink-bright-blue\\\">Downhill Slalom<\\/strong>, <strong class=\\\"ink-bright-blue\\\">Curling<\\/strong>, and <strong class=\\\"ink-bright-blue\\\">Luge<\\/strong> increase in difficulty respectively. In fact, at the time of writing, I\'ve not yet managed a successful Luge run. And on the original sumbission (let\'s call it V1.0), the Luge event couldn\'t be completed, so that alone gets it an extra point!\",\"Make no mistake, <em>Winter Neurobics Pentathalon<\\/em> is ACE! It\'s a new sort of sports sim for those of us who don\'t want to replace our olde keyboard membranes any time soon, whilst providing a significant challenge that\'ll keep you coming back time and again. Capture the Winter Olympic fervour with this fab game!\"]',	'Score.png',	'Shown working on a 16K Speccy',	'A great mental challenge which unlike other sports sims won\'t bust your keyboard!',	'7',	'9',	'9',	'9',	'[\"16K users are not treated to the high resolution graphics that 48K users are\",\"V1.1 is marked down to for <strong>Playability<\\/strong> and <strong>Total<\\/strong> by one point each due to it being a \'fixed\' version\"]',	'2018-02-17 15:51:17',	'2018-02-25 19:12:50'),
(2,	'Fortress',	'Strategy Board Game Simulator',	'Josef Schaaf of the ZX User Club Cooperation GmbH (original German version) and Volker Bartheld (this version)',	'0',	'[\"Fortresses, eh? You can\'t whack \'em! They\'re great for creating near impenetrable inner-sanctums to defend against your mightiest foes, hoard treasure and protect those thing most important to you. In this case, however, the <em>Fortress<\\/em> in question is presented as a multi-sided polygon, kind of a maths type thing that clever kids know all about, drawn beautifully and using a wise selection of the colours available on the <strong class=\\\"ink-bright-red\\\">ZX Spectrum<\\/strong>.\",\"This is for one or two players of opposing sides. Your protagonist is either someone in the same room as you in two-player mode, eagerly hovering around the <strong class=\\\"ink-bright-red\\\">Speccy<\\/strong>, or you can play against your much loved and favouritest all-time super computer, the old <strong class=\\\"ink-bright-red\\\">Spectrum<\\/strong> itself.\",\"Moving around the game-world in attack mode reduces the routes available to you, or playing as the defender will only allow a movement of three places. Should either player be within one move of each other and... Bam! It\'s game over for one of you.\",\"What we have is another skillo entry that\'s got everything you want! Great fun, especially on the super-difficult one-player mode.\"]',	'fortress-ingame.png',	'Fortress for the 16K Speccy',	'Deffo a game for those brainy kids out there!',	'8',	'8',	'8',	'8',	'[\"Works on a <strong class=\\\"ink-bright-red\\\">16K Speccy<\\/strong> (Yay!)\",\"One player mode is super-difficult (or I\'m constantly out-smarted by a <strong class=\\\"ink-bright-red\\\">16K ZX Spectrum<\\/strong>)\"]',	'2018-02-17 15:51:17',	'2018-02-17 16:49:26'),
(3,	'Plumbers Don\'t Wear Ties',	'Super Texty Adventure',	'PROSM Software',	'1',	'[\"Be ready for some almost NSFW type text adventuring Spec-chums thanks to PROSM\'s slightly belated conversion of the smash hit (probably) Windows 3.1 and Panasonic 3DO game <em>Plumbers Don\'t Wear Ties<\\/em>.\",\"The rather plain loading screen and title could lead you to a mis-apprehension, but like crap games from previous years (albeit with more blatant names) such as <em>UDG - Strip Snap<\\/em>, your pulse will soon be on the up, especially from the suductive, almost croner-like use of the powerful beeper on loading. Are you ready for some lurve?!?\",\"The story starts with John receiving a call from his mother who basically wants him to find someone to marry, and for some reason, she thinks the best way to impress a Women from the 1990s is for him to wear a Polkadot tie. Phwhoar!\",\"Early on in the game John meets Jane by chance, and from here you then control the events with the aim of getting these two well-matched potential lovers together.\",\"This is kind of a new sort of text adventure for the <strong class=\\\"ink-bright-red\\\">Spectrum<\\/strong>, in that rather than endlessly entering in long commands such as N, S, E, L, I and all of those other shortcuts I remember that usually worked on most textys, you\'re given options at each stage based on where the current events. Who makes the first move is your first decision, and then the story continues based on that decision. Phew! No getting eaten by a Grue here.\",\"Sultry graphics round off this production with an almost perfect 10! Get yer rocks off with this steamy production.\"]',	'plumbers-ingame.png',	'Plumbers Don\'t Wear Ties for the 48K Spectrum or better',	'Just the ticket to get you in the mood for some lovin\'!',	'9',	'9',	'9',	'9',	'[\"Phwoar! Check out those pixels!\"]',	'2018-02-17 15:51:17',	'2018-02-25 16:15:10'),
(4,	'Clive\'s Realtime Advanced Prognosticator',	'Turn your Speccy into a seer',	'Kweepa',	'0',	'[\"Is it really possible to predict the future? This subject has fascinated humanity probably since its very beginnings, and something that Kweepa\'s <em>Clive\'s Realtime Advanced Prognosticator<\\/em> deals with in this BERRRilliant little game.\",\"You\'re greeted with a stunning title screen which has a binary representations of super brainy boffin\' and all-around future seer Sir Clive Sinclair himself, though 16K <strong class=\\\"ink-bright-red\\\">ZX Spectrum<\\/strong> see only text so you will have to use your imagination somewhat. Clive\'ll guide you through with cryptic hints such as \\\"I prognosticate that the controls are 6,7,Enter\\\".\",\"The first thing to do is to enter your date of birth, and from there you\'ll be taken through many many scenarios, each of which will be prognosticated. There\'s a real variety in there that\'ll keep you entertained for hours. And hours. In fact, we love this so much at the CGC shed that I\'m gonna give it another go. Download and enjoy, kids, yer won\'t be disappointed.\"]',	'prog.png',	'Prognosticate with your Speccy',	'Turns your Speccy into a fortune teller, of sorts.',	'8',	'8',	'8',	'8',	'[\"48K users are greeted with some great pixels, though 16K users need to use their imaginations.\"]',	'2018-02-25 18:59:14',	'2018-02-25 19:14:07');

DROP TABLE IF EXISTS `rules`;
CREATE TABLE `rules` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `numeral` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rule` varchar(768) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `rules` (`id`, `numeral`, `rule`, `created`, `updated`) VALUES
(1,	'I',	'All submissions will run on either a Sinclair ZX80, ZX81, ZX Spectrum or compatible clones thereof;',	'2018-02-19 09:15:59',	'2018-02-19 09:18:14'),
(2,	'II',	'In the event that a submission is not playable, it must have a point; I am aware that everything nowadays has to be an \'app\' on modern devices such as the Atari Jaguar or Sony PlayStation, well I think that utilities, tools and other computer softwares should be encouraged, so more serious software will be allowed too;',	'2018-02-19 09:15:59',	'2018-02-19 09:33:00'),
(3,	'III',	'Submissions will be emailed to <a href=\"mailto:shaun@square-circle.ZX.co.uk?subject=CGC2018\" title=\"Remove the relevant characters from this if clicking\" rel=\"nofollow\">shaun@square-circle.co.uk</a> in zipped format containing a workable image to run on suitable emulators. If you would like to submit your entry on real cassette then please contact me first, and include a self, stamped addressed envelope to receive your cassette back. Any entry submitted as a type-in will also be acceptable, as the Sinclair \'one-touch\' entry makes BASIC programming more simpler.',	'2018-02-19 09:15:59',	'2018-03-03 10:33:52'),
(4,	'IV',	'As we all like to have a Christmas break, all entries will be submitted by 24th December 2018 at 23:59:48 GMT. Like all previous Comp.Sys.Sinclair Crap Games Competitions (and those that were C.S.S in name only) there will never be any extension to this deadline under any circumstances, and those who request a deadline extension will be charged with treason;',	'2018-02-19 09:15:59',	'2018-02-19 09:33:00'),
(5,	'V',	'All submissions will be rigorously reviewed. Those worthy will achieve a \'Yawn Sinclair Mega Game\' award;',	'2018-02-19 09:15:59',	'2018-02-19 09:18:14'),
(6,	'VI',	'There will be two winners, one that is judged to be the actual winner, and another that is randomly selected by a Sinclair BASIC program that I wrote which uses the powerful RND command. Both winners will receive a bag of Transform-A-Snack for their efforts (this means that someone could win twice);',	'2018-02-19 09:15:59',	'2018-02-19 09:33:00'),
(7,	'VII',	'The loser will be the person who submits an entry that is actually playable, the sort of game that you would consider loading twice because the first time provided something close to fun. This person will receive a pack of Chewits;',	'2018-02-19 09:15:59',	'2018-02-19 09:33:00'),
(8,	'VIII',	'Small print leads to large risk;',	'2018-02-19 09:15:59',	'2018-02-19 09:33:00'),
(9,	'IX',	'Please do not take anything too seriously. This is supposed to be fun, yeah? And,',	'2018-02-19 09:15:59',	'2018-02-19 09:33:00'),
(10,	'X',	'All submissions will be distributed electronically via the Internet for free. If there is enough interest then a real cassette version as a compilation will be published some time in 2019. All entrants wanting their work to be published on cassette will receive a single Polo mint as payment for each copy sold. Any game which may land me or anyone else associated with this competition with legal difficulties will be disqualified from the outset.',	'2018-02-19 09:15:59',	'2018-02-19 09:33:00');


-- Dump completed on 2018-02-22 20:15:08
