CREATE DATABASE  IF NOT EXISTS `cgc2018` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `cgc2018`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cgc2018
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.35-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `challenges`
--

DROP TABLE IF EXISTS `challenges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `challenges`
--

LOCK TABLES `challenges` WRITE;
/*!40000 ALTER TABLE `challenges` DISABLE KEYS */;
INSERT INTO `challenges` VALUES (1,'I','One-Liner','ink-bright-blue','[\"This is <strong class=\\\"ink-bright-red\\\">ZX Spectrum<\\/strong> and compatible machines, as you are required to create your game (or other softwares) in only one line of BASIC only.\",\"Fortunately, the Speccy has a super-powerful interpreter that allows for so many possibilities in such small space.\"]','2018-02-14 22:33:56','2018-02-14 22:33:56'),(2,'II','Twelve-Liner','ink-bright-black','[\"Not to leave out the <strong>ZX80<\\/strong> or <strong>ZX81<\\/strong>, I guess the equivalent would be to make a software in 12 lines of BASIC for these mighty micros.\",\"If you require some hints, as long as you don\'t <strong>RUN<\\/strong> your symbolic listings to execute it (i.e., use <strong>GOTO SGN PI<\\/strong> instead) then you will not lose the VAR stack. In other words, your variables will be preserved when using <strong>SAVE<\\/strong>.\",\"This is a \'Twelve-Liner\' to allow for something like this at the end of your listing (though not possible on the ZX80 without a new ROM):\",\"9998 SAVE \\\"CRAP\\\"\",\"9999 GOTO SGN PI\"]','2018-02-14 22:33:56','2018-02-14 23:25:23'),(3,'III','Advanced TV Tie-In Simulator','ink-bright-blue','[\"We all remember those great TV Tie-ins from the 1980s; <em>East Enders<\\/em>, by Macsen Software, and two timeless classics from TyneSoft <em>Auf Wiedersehen Pet<\\/em> and <em>Super Gran<\\/em> to name but three. I bet you always wanted to make something as good as these epic games, eh? Well now is your chance.\",\"Okay, so we don\'t expect you to go and obtain the rights to make a TV Tie-in; this\'ll have to be 100% Unofficial. You may therefore have to change the name of your game to something that sounds like your inspiration for it; like, err.. <em>Emma Dale\'s Farm<\\/em> or something. You get the idea. Send \'em in!\"]','2018-02-23 09:35:20','2018-02-25 17:27:16'),(4,'IV','100% Machine Code','ink-bright-black','[\"Remember when all the best games proudly proclaimed <em>100% Machine code</em> on the cassette inlay? Well, now is your chance to make something in pure assembly by entering our little challenge. BASIC programmers need not apply.\"]','2018-02-25 20:29:47','2018-02-25 20:29:47');
/*!40000 ALTER TABLE `challenges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entries`
--

DROP TABLE IF EXISTS `entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entries`
--

LOCK TABLES `entries` WRITE;
/*!40000 ALTER TABLE `entries` DISABLE KEYS */;
INSERT INTO `entries` VALUES (1,'I','Winter Neurobics Pentathalon','ZX Spectrum (48K or more recommended, 16K compatible)','winterneurobics.png','Kweepa\'s 2018 Winter [unofficial] Olympics tie-in','winterneurobics.zip','2018-02-15 21:16:54','2018-02-15 21:16:54'),(2,'II','Winter Neurobics Pentathalon V1.1 (\'Fixed\' edition)','ZX Spectrum (48K or more recommended, 16K compatible)','winterneurobics.png','\'Fixed\' version of Kweepa\'s 2018 [unofficial] Winter Olympics ti','winterneurobicsV1.1.zip','2018-02-15 21:27:45','2018-02-15 21:27:45'),(3,'III','Fortress','ZX Spectrum 16K','fortress.png','Fortress, by ZX User Club Cooperation GmbH','fortress.zip','2018-02-15 21:27:45','2018-02-15 21:27:45'),(4,'IV','Plumbers Don\'t Wear Ties','ZX Spectrum 48K','plumbers.png','The Speccy conversion of Plumbers Don\'t Wear Ties, by PROSM Soft','plumbers.zip','2018-02-15 21:27:45','2018-02-15 21:27:45'),(5,'V','Clive\'s Realtime Advanced Prognosticator','ZX Spectrum 48K (16K compatible)','prognosticator.png','Sir Clive Sinclair\'s Realtime Advanced Prognosticator','prognosticator.zip','2018-02-22 20:06:13','2018-02-22 20:06:13'),(6,'VI','GO RACE!','ZX Spectrum 48K','go-race.png','LCD fun on your Speccy','go-race.zip','2018-03-07 20:30:16','2018-03-07 20:30:16'),(7,'VII','Colours','ZX Spectrum 16K','colours.png','See the world in full colour on your favourite home micro','colours.zip','2018-03-20 22:24:04','2018-03-25 16:39:09'),(8,'VIII','Space Scarper 2','ZX Spectrum 16K','scarper2.png','Space Scarper 2','scarper2.zip','2018-03-25 16:36:03','2018-04-17 21:22:10'),(9,'IX','Ring of the Inka','ZX Spectrum 48K + Interface I (Microdrive)','ring-of-the-inka.png','Ring of the Inka','inka.zip','2018-03-31 09:43:04','2018-03-31 09:43:04'),(10,'X','Thermal Ski','ZX Spectrum 16K + Interface I + ZX Printer','thermalski.png','Thermal Ski','thermalski.zip','2018-05-01 07:49:37','2018-05-01 07:49:37'),(11,'XI','Russian Roulette','ZX Spectrum 16K','russian-roulette.png','Play a high-risk game of Russian Roulette against your Speccy','russian-roulette.zip','2018-05-07 22:35:59','2018-05-07 22:35:59'),(12,'XII','Catch My Balls','ZX Spectrum 16K','catch-my-balls.png','A very good ball-catcher simulator for your favouritest 8-bit','catchmyballs.zip','2018-05-30 19:22:18','2018-05-30 19:22:18'),(13,'XIII','LD Snake','ZX Spectrum 48K','ld-snake.png','A rather brill Snake clone','ld-snake.zip','2018-05-31 19:05:29','2018-05-31 19:05:29'),(14,'XIV','Elector','ZX Spectrum 48K','Elector.png','Like any true democracy - bribe your way to electoral success','elector.zip','2018-07-08 22:28:11','2018-07-08 22:28:11'),(15,'XV','Advanced Lawnmower Simulator Vs Zombies','ZX Spectrum 48K','alsvszombies.png','Horror-inspired lawn-mowing action','alsvszombies.zip','2018-09-03 13:54:44','2018-09-03 13:54:44'),(16,'XVI','Panic City!','ZX Spectrum 128K','panic-city.png','If you\'re in a city, try not to Panic.','Panic-City.zip','2018-10-04 14:27:08','2018-10-04 14:28:39');
/*!40000 ALTER TABLE `entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home`
--

DROP TABLE IF EXISTS `home`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home`
--

LOCK TABLES `home` WRITE;
/*!40000 ALTER TABLE `home` DISABLE KEYS */;
INSERT INTO `home` VALUES (1,'Crap Games Competition 2018','Welcome to the 2018 Crap Games Competition','[\"Have you ever wanted to make a game for your favourite Sinclair 8-bit computer? Now is your chance, and we want you to DO YOUR WORST!\",\"See our <a href=\\\"\\/rules\\\" target=\\\"_blank\\\" class=\\\"ink-bright-blue\\\" rel=\\\"nofollow\\\">rules and regulations<\\/a> before you submit your entry. If these are agreeable send your crap to <a href=\\\"mailto:shaun@square-circle.ZX.co.uk\\\" class=\\\"ink-bright-blue\\\" rel=\\\"nofollow\\\">shaun@square-circle.co.uk<\\/a> for evaluation!\",\"If you need tips on how to create crap games for your Sinclair <strong>ZX80<\\/strong>, <strong>ZX81<\\/strong> or <strong class=\\\"ink-bright-red\\\">ZX Spectrum<\\/strong> then feel free to <a href=\\\"https:\\/\\/groups.google.com\\/forum\\/#!topic\\/comp.sys.sinclair\\/5m7PfF0IC30\\\" target=\\\"_blank\\\" rel=\\\"nofollow\\\">ask questions here<\\/a>.\"]','2018-02-17 10:10:35','2018-02-17 10:13:41');
/*!40000 ALTER TABLE `home` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(56) COLLATE utf8_unicode_ci DEFAULT NULL,
  `class` enum('ink-bright-blue','ink-bright-black') COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'Plumbers Don\'t Wear Ties!','ink-bright-black','[\"PROSM Software is back with a remake of a Windows 3.1 game which is an interactive fiction type with a rather steamy plot line (oo-er missus) called <em>Plumbers Don\'t wear ties<\\/em>.\"]','2018-02-17 15:00:23','2018-02-17 15:06:46'),(2,'Fortress released','ink-bright-blue','[\"<em>Fortress<\\/em> (originally developed by ZX User Club Germany) has been recycled and re-factored thanks to Volker Bartheld.\",\"This is a strategy board game-alike simulator for one or two players, which will work <strong class=\\\"ink-bright-red\\\">16K ZX Speccy<\\/strong>. Go get it.\"]','2018-02-17 15:00:24','2018-02-17 15:06:29'),(3,'Number Guesser','ink-bright-black','[\"As an example of what you can do in just 12 lines of the powerful <strong>ZX81 BASIC<\\/strong>, I made <em>Number Guesser<\\/em> to give all those Zeddy fans some inspiration.\",\"If you like type-ins, see the <a href=\\\"https:\\/\\/groups.google.com\\/forum\\/#!topic\\/comp.sys.sinclair\\/2wbgULi8rVY\\\" target=\\\"_blank\\\" class=\\\"ink-bright-blue\\\" rel=\\\"nofollow\\\">Comp.Sys.Sinclair thread<\\/a>, or it is available in .P format (for emulators and ZXPand users) from <a href=\\\"http:\\/\\/cgc.source.run\\/download\\/number-guesser.zip\\\" class=\\\"ink-bright-blue\\\" rel=\\\"nofollow\\\">here<\\/a>, which includes a <strong>ZX80<\\/strong> port that is actually 13 lines of BASIC, so wouldn\'t qualify for the challenge (without a small amend to it anyway).\"]','2018-02-17 15:00:24','2018-02-17 15:06:10'),(4,'Winter Neurobics Pentathalon update','ink-bright-blue','[\"Kweepa has updated his entry as it had something called a \'bug\' which required \'fixing\'.\",\"There doesn\'t seem to be anything in the rules against this so a new version will be available on the \'Entries\' page shortly.\"]','2018-02-17 15:00:24','2018-02-17 15:05:53'),(5,'First Entry from Kweepa','ink-bright-black','[\"Kweepa has submitted <em>Winter Neurobics Pentathalon<\\/em> for the <strong class=\\\"ink-bright-red\\\">ZX Spectrum<\\/strong>.\",\"This game neatly ties in with the 2018 Winter Olympics, and is intended for machines with 48K of RAM or more, though 16K users are still supported with a text-only version. See our <a href=\\\"\\/entries\\\" class=\\\"ink-bright-blue\\\" rel=\\\"nofollow\\\">entries<\\/a> page to get this download.\"]','2018-02-17 15:00:24','2018-02-17 15:04:02'),(6,'Carp Games Competition 2018 opens','ink-bright-blue','[\"<strong>The guy who<\\/strong> <strike>once<\\/strike> <strong>wrote<\\/strong> <strike>a small and insignificant amount of content<\\/strike> <strong>for<\\/strong> <strike>the<\\/strike> <strong>Your Sinclair<\\/strong> <strike>tribute issue that was free with Retro Gamer<sup>[1]</sup><\\/strike> <strong>magazine<\\/strong> has launched THIS CRAP GAMES COMPETITION. Want to make some software for your favourite Sinclair 8 bit (or compatible clone)? DO YOUR WORST!!!!!1one\",\"<sup>[1]</sup>&nbsp;<a href=\\\"https://web.archive.org/web/20160413085059/http://ysrnry.co.uk/articles/Shaun_Bebbington_index.htm\\\" title=\\\"Source\\\">Source</a>\"]','2018-02-17 15:00:24','2018-02-17 15:03:30'),(7,'A test news story','ink-bright-blue','[\"News Item to test the Db stuff. Remember to remove it.\"]','2018-02-17 15:25:26','2018-02-17 15:48:18'),(8,'Prognosticator in real-time!','ink-bright-black','[\"Kweepa has his second (actually third - Ed) entry into our little Crap Game Compo in the form of <em>Clive\'s Realtime Advanced Prognosticator<\\/em>, which is another 16K compatible release. Happy Days!\"]','2018-02-22 19:57:11','2018-02-25 20:54:24'),(9,'1K Prognosticator','ink-bright-blue','[\"Inspired by Kweepa excellent <em>Clive\'s Realtime Advanced Prognosticator<\\/em>, I decided to make a <a href=\\\"/download/PROG1K.zip\\\" title=\\\"Click to download\\\" rel=\\\"nofollow\\\"><em>1K Prognosticator Simulator</em></a> for the <strong class=\\\"ink-bright-black\\\">ZX81</strong> as a belated 37th birthday present to the monochrome beast.\"]','2018-03-07 14:46:49','2018-03-07 20:03:18'),(10,'Pacey Racer','ink-bright-black','[\"Simon Pitter has entered an LCD simulator in the form of the super spiffy <em>GO RACE</em>, which plays like one of those pocket games from the 1980s. Go get it from our entries section. Note: This game is 100% machine code as well, so it would seem!\"]','2018-03-07 20:25:13','2018-03-07 20:35:39'),(11,'A Spectrum of Colour','ink-bright-blue','[\"Well we have our first BASIC One-Liner entered. Yikes! This has been sent in from thEpOpE (not, I assume, Pope Francis using a pseudonym, though I\'m sure that he\'s a Speccy man), <em>Colours</em> is a challenging arcade-action-puzzle game with great use of the <strong class=\\\"ink-bright-red\\\">Spectrum\'s</strong> versatile pallete. Great.\"]','2018-03-20 22:21:31','2018-03-20 22:21:31'),(12,'Scarper to Space','ink-bright-black','[\"Kweepa is back with another top entry for any <strong class=\\\"ink-bright-red\\\">Spectrum</strong> which is one of those <em>Gravatar</em> type games called <em>Space Scarper 2</em>. Go download it now.\"]','2018-03-25 16:33:27','2018-04-17 21:18:31'),(13,'Venturing on an Inka trail','ink-bright-blue','[\"Volker Bartheld has another exciting release for you, setting off to search South America for a priceless gold Ring once held in great reverence by the ancient Inka culture. <em>Ring of the Inka</em> is ready to download, though you\'ll need an emulator capable to running micro drive images.\"]','2018-03-31 09:48:15','2018-04-17 21:19:15'),(14,'Don\'t forget yer Thermals','ink-bright-black','[\"Unsatisfactory Soft has released Thermal Ski, for the <strong class=\\\"ink-bright-red\\\">16K Speccy</strong>, which requires an <em>Interface 1</em> and the elegant toilet-roll-inspired <em>ZX Printer</em> or compatible. Think of it as a <em>Horace Goes Skiing</em> clone, without the bit where you cross the road. Or the beautiful graphics. Or excellent title music. Go get it from our entries page.\"]','2018-05-01 07:47:49','2018-05-01 07:47:49'),(15,'Russian Roulette','ink-bright-blue','[\"Darío Ruellan has sent in a rather spiffy little 16K game which which is a Russian Roulette simulator for one or two players, featuring great visuals and totally ace playability. You know the drill (No - ed), go download it from our Entries page.\"]','2018-05-07 22:29:47','2018-05-07 22:29:47'),(16,'Where\'s the catch?','ink-bright-black','[\"Paul Collins has a brillo entry for you lot! <em>Catch My Balls</em> (oo-err missus!) is a fiendishly addictive and extremely tense ball catcher simulator written in one whole line of <strong class=\\\"ink-bright-black\\\">BASIC</strong>. As Paul himself says of this 8-bit marvel \\\"It has sound, colour, on-screen score and instructions, and an increasing difficulty level\\\" - what more could you want for your game-hungry mittens?\"]','2018-05-30 19:17:37','2018-05-30 19:17:37'),(17,'LOAD Snake','ink-bright-blue','[\"We have another fine entry for your game-hungry mittens, submitted by <strong class=\\\"ink-bright-red\\\">Speccy</strong> addict djnzx48. This is a take on the classic <em>Snake</em>, cleverly called <em>LD Snake</em> which conforms to our 100% Machine Code Challenge. Good work djnzx48. We salute you!\"]','2018-05-31 18:38:53','2018-05-31 18:39:22'),(18,'Do you wanna be elected?','ink-bright-black','[\"Holding high political office is the childhood dream of almost no normal person as most of us wanted to be something useful in life when we were a lad (or lass - ed). But if you want some pointers on how to political success, you could do worse than download Elector AKA Advanced Election Simulator, which is an anonymous entry broadly based on Turkey\'s flagship democracy. Enjoy!\"]','2018-07-08 22:37:17','2018-07-08 22:37:17'),(19,'What to do when the Zombie Apocalypse does happen','ink-bright-blue','[\"So what would you do when the Zombie Apocalypse does happen? Sort out the recycling? Water the plants? Go to the Winchester? Or mow the lawn?\",\"Advanced Lawnmower Simulator Vs Zombies (AKA ALS V Zombies) deals with the latter situation with this excellent clone of Gardensoft\'s classic. Go get it now from our <a href=\\\"/entries.aspx#advanced-lawnmower-simulator-vs-zombies\\\" rel=\\\"nofollow\\\"><em>entries</em></a> page.\"]','2018-09-03 14:07:01','2018-09-03 14:08:26'),(20,'Don\'t Panic!','ink-bright-black','[\"We\'re still awaiting our first <strong class=\\\"ink-bright-black\\\">ZX81</strong> entry here at the CGC shed, but nonetheless we\'re delighted to announce <strong class=\\\"ink-bright-red\\\">Panic City</strong>, submitted by A.tomy Prez. It\'s also our first 128K entry. What joy! You know what to do.\"]','2018-10-04 14:25:11','2018-10-04 14:29:19');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_counts`
--

DROP TABLE IF EXISTS `page_counts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_counts`
--

LOCK TABLES `page_counts` WRITE;
/*!40000 ALTER TABLE `page_counts` DISABLE KEYS */;
INSERT INTO `page_counts` VALUES (1,0,0,0,0,0,0,'dev'),(2,0,0,0,0,0,0,'live');
/*!40000 ALTER TABLE `page_counts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(56) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_header` varchar(56) COLLATE utf8_unicode_ci DEFAULT NULL,
  `developer` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mega_game` enum('0','1') COLLATE utf8_unicode_ci DEFAULT '0',
  `content` text COLLATE utf8_unicode_ci,
  `file_name` varchar(48) COLLATE utf8_unicode_ci DEFAULT NULL,
  `game_type` enum('0','1') COLLATE utf8_unicode_ci DEFAULT '0',
  `alt` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,'Winter Neurobics Pentathalon','Unofficial Winter Olymics 2018 tie-in','Kweepa','1','[\"It won\'t surprise anyone out there that I wasn\'t very good at sports when I were a lad. Not one bit. Of course, I used to play a game of Footy over the park with jumpers for goal posts, but I just wasn\'t ever very Footy-ish, and always the last to be picked for any sporty-type thing, so when this sports sim landed I feared the worst. Would it be a joystick-breaking or keyboard-bashing affair? Yikes!\",\"On loading <em>Winter Neurobics Pentathalon<\\/em> though, my fears were quickly quashed; this is not just a mindless joystick-waggler or keyboard-basher, the task is to precisely time your interactions with the keyboard according to the on-screen prompt, so this is more of a celeberal workout than one which would quickly require a new keyboard!\",\"Each of the five events, which are <strong class=\\\"ink-bright-blue\\\">Ski Jump<\\/strong>, <strong class=\\\"ink-bright-blue\\\">Speed Skating<\\/strong>, <strong class=\\\"ink-bright-blue\\\">Downhill Slalom<\\/strong>, <strong class=\\\"ink-bright-blue\\\">Curling<\\/strong>, and <strong class=\\\"ink-bright-blue\\\">Luge<\\/strong> increase in difficulty respectively. In fact, at the time of writing, I\'ve not yet managed a successful Luge run. And on the original sumbission (let\'s call it V1.0), the Luge event couldn\'t be completed, so that alone gets it an extra point!\",\"Make no mistake, <em>Winter Neurobics Pentathalon<\\/em> is ACE! It\'s a new sort of sports sim for those of us who don\'t want to replace our olde keyboard membranes any time soon, whilst providing a significant challenge that\'ll keep you coming back time and again. Capture the Winter Olympic fervour with this fab game!\"]','Score.png','0','Shown working on a 16K Speccy','A great mental challenge which unlike other sports sims won\'t bust your keyboard!','7','9','9','9','[\"16K users are not treated to the high resolution graphics that 48K users are\",\"V1.1 is marked down to for <strong>Playability<\\/strong> and <strong>Total<\\/strong> by one point each due to it being a \'fixed\' version\"]','2018-02-17 15:51:17','2018-05-07 15:16:07'),(2,'Fortress','Strategy Board Game Simulator','Josef Schaaf of the ZX User Club Cooperation GmbH (original German version) and Volker Bartheld (this version)','0','[\"Fortresses, eh? You can\'t whack \'em! They\'re great for creating near impenetrable inner-sanctums to defend against your mightiest foes, hoard treasure and protect those thing most important to you. In this case, however, the <em>Fortress<\\/em> in question is presented as a multi-sided polygon, kind of a maths type thing that clever kids know all about, drawn beautifully and using a wise selection of the colours available on the <strong class=\\\"ink-bright-red\\\">ZX Spectrum<\\/strong>.\",\"This is for one or two players of opposing sides. Your protagonist is either someone in the same room as you in two-player mode, eagerly hovering around the <strong class=\\\"ink-bright-red\\\">Speccy<\\/strong>, or you can play against your much loved and favouritest all-time super computer, the old <strong class=\\\"ink-bright-red\\\">Spectrum<\\/strong> itself.\",\"Moving around the game-world in attack mode reduces the routes available to you, or playing as the defender will only allow a movement of three places. Should either player be within one move of each other and... Bam! It\'s game over for one of you.\",\"What we have is another skillo entry that\'s got everything you want! Great fun, especially on the super-difficult one-player mode.\"]','fortress-ingame.png','0','Fortress for the 16K Speccy','Deffo a game for those brainy kids out there!','8','8','8','8','[\"Works on a <strong class=\\\"ink-bright-red\\\">16K Speccy<\\/strong> (Yay!)\",\"One player mode is super-difficult (or I\'m constantly out-smarted by a <strong class=\\\"ink-bright-red\\\">16K ZX Spectrum<\\/strong>)\"]','2018-02-17 15:51:17','2018-05-07 15:16:07'),(3,'Plumbers Don\'t Wear Ties','Super Texty Adventure','PROSM Software','1','[\"Be ready for some almost NSFW type text adventuring Spec-chums thanks to PROSM\'s slightly belated conversion of the smash hit (probably) Windows 3.1 and Panasonic 3DO game <em>Plumbers Don\'t Wear Ties<\\/em>.\",\"The rather plain loading screen and title could lead you to a mis-apprehension, but like crap games from previous years (albeit with more blatant names) such as <em>UDG - Strip Snap<\\/em>, your pulse will soon be on the up, especially from the suductive, almost croner-like use of the powerful beeper on loading. Are you ready for some lurve?!?\",\"The story starts with John receiving a call from his mother who basically wants him to find someone to marry, and for some reason, she thinks the best way to impress a Women from the 1990s is for him to wear a Polkadot tie. Phwhoar!\",\"Early on in the game John meets Jane by chance, and from here you then control the events with the aim of getting these two well-matched potential lovers together.\",\"This is kind of a new sort of text adventure for the <strong class=\\\"ink-bright-red\\\">Spectrum<\\/strong>, in that rather than endlessly entering in long commands such as N, S, E, L, I and all of those other shortcuts I remember that usually worked on most textys, you\'re given options at each stage based on where the current events. Who makes the first move is your first decision, and then the story continues based on that decision. Phew! No getting eaten by a Grue here.\",\"Sultry graphics round off this production with an almost perfect 10! Get yer rocks off with this steamy production.\"]','plumbers-ingame.png','1','Plumbers Don\'t Wear Ties for the 48K Spectrum or better','Just the ticket to get you in the mood for some lovin\'!','9','9','9','9','[\"Phwoar! Check out those pixels!\"]','2018-02-17 15:51:17','2018-05-07 16:22:56'),(4,'Clive\'s Realtime Advanced Prognosticator','Turn your Speccy into a seer','Kweepa','0','[\"Is it really possible to predict the future? This subject has fascinated humanity probably since its very beginnings, and something that Kweepa\'s <em>Clive\'s Realtime Advanced Prognosticator<\\/em> deals with in this BERRRilliant little game.\",\"You\'re greeted with a stunning title screen which has a binary representations of super brainy boffin\' and all-around future seer Sir Clive Sinclair himself, though 16K <strong class=\\\"ink-bright-red\\\">ZX Spectrum<\\/strong> see only text so you will have to use your imagination somewhat. Clive\'ll guide you through with cryptic hints such as \\\"I prognosticate that the controls are 6,7,Enter\\\".\",\"The first thing to do is to enter your date of birth, and from there you\'ll be taken through many many scenarios, each of which will be prognosticated. There\'s a real variety in there that\'ll keep you entertained for hours. And hours. In fact, we love this so much at the CGC shed that I\'m gonna give it another go. Download and enjoy, kids, yer won\'t be disappointed.\"]','prog.png','0','Prognosticate with your Speccy','Turns your Speccy into a fortune teller, of sorts.','8','8','8','8','[\"48K users are greeted with some great pixels, though 16K users need to use their imaginations.\"]','2018-02-25 18:59:14','2018-05-07 15:16:07'),(5,'GO RACE!','Simulate a pocket LCD game on your micro','Simon Pitter','0','[\"Vvrrooommm! Well what do we have \'ere then? A simulator of a LCD pocket game racing simulator for the 48K <strong class=\\\"ink-bright-red\\\">Speccy</strong>. Sounds ace, doesn\'t it, eh? So how does it work then?\",\"It all begins with a back story that\'ll take many of certain age back to the glorious decade of the 1980s, when things were crap, but in a funky skillo sort of way. You are presented with a choice of buying three whole budget games, a Marathon bar and a packet of crisps (I miss Marathon bars - ed), or a pocket LCD game. The idea of having so much power in yer pocket is simply too much to resist, even at such a high price of a tenner!\",\"<em>GO RACE!<\\/em> has two game modes to try, a girly mode (which is set by default), and a more difficult one which is toggled by finding the right key on the rubber-cladding. It is then a case of manoeuvring your F1 alike sports car left or right to avoid the on-coming traffic! Great, eh? Well, not so much.\",\"Whilst the premise of <em>GO RACE!<\\/em> is a good one, there are some slight issues with the implementation. According to our tech boffins at the CGC shed, this sort of game would have probably been better implemented in powerful Sinclair BASIC, which would have balanced the responsiveness and other playability factors more appropriately. I don\'t know much about that stuff though, I\'m more interested in train spotting these days.\",\"Overall then an super concept let down in by too much care and attention in the wrong places.<!-- Hey I actually think this game is really great actually. Not crap at all, hence the scores. -->\"]','go-race-review.png','0','Go race with, err... GO RACE!','Great concept but let down by its implementation','4','3','3','3','[\"Requires a whole 48K of RAMs!\"]','2018-03-17 23:06:51','2018-05-07 15:16:07'),(6,'Colours','See the world in full colour with this spiffy game!','Jevilon and thEpOpE','1','[\"Well here we go folks. Does it get much better than this? A game that fully utilises the superb <strong class=\\\"ink-bright-red\\\">ZX Spectrum</strong> colour palette, but in a minimalist way, so it\'s not just a great and addictive game that we have, but one that those trendy hipster-types will clearly love as well! Yes, I\'m looking at you Chaosmongers.\",\"This is a true game of skill, it\'s simplistic (like some reviewers on this \'ere website then, eh? - Ed), and, well, just brilliant. The task, once you\'ve selected your skill level as appropriate by pressing a single digit number (presumabely to save typing) followed by the <strong>ENTER</strong> key, is to match the ever-changing screen colour (referred to as <strong>PAPER</strong> in BASIC), with the border colour (or <strong>BORDER</strong> in BASIC). To do so, you must press the any key at the appropriate moment, except of course for the <strong>BREAK</strong> key. Each time you hit a match, you score a point. Great.\",\"This\'ll keep you entertained for <em>hours</em>, and even those techies can break into the listing and marvel at it\'s brilliance because this is a one-liner entry. A well deserved CGC MegaGame if there ever was one. I\'m gonna give it another crack!\"]','colours-screen.png','0','ZX Colours in a game called Colours','Admire the sheer amount of colours on your Speccy, and this has only half of them!','9','9','10','9','[\"Works on a 16K machine you lucky people.\"]','2018-04-12 19:44:24','2018-05-07 15:16:07'),(7,'Space Scarper 2','Scarper around Space with this collect-em-up','Kweepa','0','[\"One thing that the 1980s had in abundance, aside from great home computers such as the <strong class=\\\"ink-bright-red\\\">Speccy</strong> (as well as crap machines like the Commode 64 - Ed) was well original games. I mean, things were so much more original, like <em>Thrust</em>, and... well I\'m not able to think of any others right now, but lets imagine that there was nothing like <em>Thrust</em> before <em>Thrust</em> to keep things simple.\",\"Kweepa\'s <em>Space Scarper 2</em> is kind of like that in that you have to carefully move around some part of the Galaxy in order to collect things. Except you collect them by basically pointing your Space craft type thingy in the general direction of the collectable thingies. And you power it with enough thrust to do so without hitting any solid walls. Or something.\",\"Before you start though, you\'re given some options that affect playability, which are <strong>Steering</strong>, <strong>Thrust</strong> and <strong>Damping</strong>. It asks for a number of zero or one (or maybe a floating point number between zero or one, there were no instructions that I remember). So much choice!\",\"This is nothing spectacular, but just good-ish from a usually top developer. Deffo worth a few loads.<!-- I actually really like this game, very impressive for Sinclair BASIC, Kweepa is a top developer -->\"]','scarper-ingame.png','0','Scarper around space','Pretty damn good <em class=\"strike\">Gravatar</em> <em>Thrust</em> clone','7','6','6','6','[\"Another solid 16K game from Kweepa\"]','2018-04-17 21:31:11','2018-05-07 15:16:07'),(8,'Thermal Ski','Like Donkeysoft\'s classic MegaSki, but on paper','UNSATISFACTORY SOFTWARE','1','[\"Would you believe it - after the epic and totally addictive <em>Colours</em> reviewed above, <em>Thermal Ski</em> is a mega CGC MegaGame for sure, showing the true gaming potential of Sinclair\'s toilet-roll-holder-inspired but completely great thermal printer even though the legend that is Sir Clive Sinclair would never approve of using such serious hardware in such a trivial way. Or something.\",\"So, what\'s it all about then? Well, imagine if you had remote control of a skier but could only see what was going on by viewing a real-time update on a bit of paper that is constantly feeding you information. Where is the Skier anyway? Are there hazards ahead? And is he/she nicely placed between the flags, one to the left and right? No? Turn left... no right... no!!! Such tenseness leads to highly addictive game-play. And the visual output leads to such wonder.\",\"The player is denoted by a capital X and the flags either side are upper-case I. Oh and hitting a flag leads to instance death, so best keep your wits about you then.\",\"Not only is this game thoroughly ace, it\'s also a great use of the hardware. But don\'t have a ZX Printer? Fear not, emulators like <em>EightyOne</em> will allow you to simulate it without wasting all of that paper.<!-- This game is utter shite, but then WHY DIDN\'T I THINK OF MAKING IT! A missed opportunity for me. Sob. -->\"]','thermalski.png','0','Skiing just isn\'t skiing without Thermals','Makes Horace Goes Skiing look like a game for simpletons','10','10','10','10','[\"A clean sweep for this mega skiing game\"]','2018-05-07 23:02:52','2018-05-07 23:08:00'),(9,'Ring of the Inka','Lost in Peru','Volker Bartheld, Michael Wiedmer','0','[\"<em>Ring of the Inka</em> is a game of many adventures which offers much excitement for any texty fan, with the stated quest being to find one of the most precious treasures located somewhere in modern-day Peru. But your first task is to get onto land from your floaty vessel. Yikes!\",\"Well, where do we start with this one then? Firstly, it was developed using Sinclair\'s super-diskette beater, the famous Micro Drive. Yep, those small looped tapes that would allow faster loading that from bigger non-looped tapes. Fortunately, this 1980s advanced technology may be emulated on your modern-days personal computer to get you playing. Marvelous, eh?\",\"The game itself has some average graphics, but benefits from devious puzzles. Take a wrong turn and you end up unable to make it to shore to start the adventure proper. And when you do make it to dry land, dear adventurer, you could quickly find your death. And that\'s if the program holds together long enough without crashing! All of this adds to the mental tension as you struggle to remember the shortcut commands so you don\'t have to type <strong style=\\\"ink-bright-black\\\">NORTH</strong>, <strong style=\\\"ink-bright-black\\\">WEST</strong> etc...\",\"This production is one for adventurers of all abilities, be you seasoned or be this your first ever entry into this texty world. A very worthy entry indeed.\"]','inka.png','1','Explore Peru in Ring of the Inka','A nice text adventure for all.','4','7','7','7','[\"Death is around every corner in Ring of the Inka.\"]','2018-06-13 20:58:52','2018-06-13 20:58:52'),(10,'Russian Roulette','A tense Russian Roulette simulator','Darío Ruellan','0','[\"Darío Ruellan hits back with a great new Russian Roulette simulator imaginatively titled \\\"<em>Russian Roulette</em>\\\", which works on any <strong class=\\\"ink-bright-red\\\">Speccy</strong>.\",\"The game has three exciting modes, single player (against the computer), two human players, and a demo mode, which will automatically begin if there are no keyboard interactions on the title screen.\",\"In all modes, each player takes turns to pull a virtual trigger representing a hand-held firearm. The implication being that this weapon is loaded with blanks in all cases except for one bullet. If you\'re unlucky enough to pull the trigger and discharge the actual bullet then you die and the other player wins.\",\"The demo mode is most exciting, as you won\'t know which of the two computer players will be the one to pop its virtual clogs, but there is always tension whilst playing. Will it be you next?\",\"The graphics are very stylish, and the title music is superb. A real beeper masterpiece that any musician will instantly admire. Sound effects are good too. An excellent release. Go get it.\"]','roulette-title.png','0','Hold your nerve in this excellent Russian Roulette simulator','Dare you take your next go in this tense Russian Roulette simulator?','8','8','9','8','[\"A great one or two player game, but not for those of a nervous disposition\",\"Not developed by Volker Bartheld\"]','2018-07-21 12:38:00','2018-09-20 05:44:53'),(11,'Catch My Balls','An excellent one line ball catching action','Eq','0','[\"Minimalist programming doesn\'t always mean minimalist gaming, and <em>Catch my Balls</em> proves this in abundance, as not only is there some excellent spot sound effects, but also colour-clash-free colour graphics (well, sort of) and even text in the bit of the screen that is usually home to the R Tape loading error, 0:1 message\",\"This all-action arcade game requires you to move the ball catcher to the same vertical position of the on-coming ball. But be aware that the spherical object may not always stay the same course, moving randomly on the vertical plane as it gets closer to your glove. The game continues until you\'ve missed a ball and to replay you will have to remember the BASIC command to re-run the program, so have your ZX Spectrum manual at the ready for that one.\",\"Overall, a fast-paced and addictive game.\"]','catchmyballs-ingame.png','0','Can you catch my balls?','Super fast-paced ball-catching action','9','8','8','8','[\"\"]','2018-09-03 14:36:33','2018-09-03 14:36:33'),(12,'LD Snake','A gobble-and-grow game for all ages','djnzx48','0','[\"LD Snake is a 100% Machine Code entry which is simulates the classic <em>gobble-and-grow</em> concept invented in the 1970s and popularised by Nokia\'s 3310 range of cellular mobile telephones.\",\"This game suffers from slick execution of the running machine code, which is compensated for by a small symmetrical play-area. Collect a yellow food pellet and your snake will grow by the length of said pellet. Touch anything else within and it\'s game over.\",\"LD Snake is a fairly good attempt at the 40+ year old genre, balancing great graphics with mediocre game-play and a tiny play area for extra toughness. <!-- I actually really like this game, it\'s a but on the difficult side though -->\"]','ldsnake-ingame.png','0','Grow your Snake','Fast pacey slithering action','9','5','6','6','[\"\"]','2018-09-03 15:20:43','2018-09-03 15:20:43');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rules`
--

DROP TABLE IF EXISTS `rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rules` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `numeral` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rule` varchar(768) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rules`
--

LOCK TABLES `rules` WRITE;
/*!40000 ALTER TABLE `rules` DISABLE KEYS */;
INSERT INTO `rules` VALUES (1,'I','All submissions will run on either a Sinclair ZX80, ZX81, ZX Spectrum or compatible clones thereof;','2018-02-19 09:15:59','2018-02-19 09:18:14'),(2,'II','In the event that a submission is not playable, it must have a point; I am aware that everything nowadays has to be an \'app\' on modern devices such as the Atari Jaguar or Sony PlayStation, well I think that utilities, tools and other computer softwares should be encouraged, so more serious software will be allowed too;','2018-02-19 09:15:59','2018-02-19 09:33:00'),(3,'III','Submissions will be emailed to <a href=\"mailto:shaun@square-circle.ZX.co.uk?subject=CGC2018\" title=\"Remove the relevant characters from this if clicking\" rel=\"nofollow\">shaun@square-circle.co.uk</a> in zipped format containing a workable image to run on suitable emulators. If you would like to submit your entry on real cassette then please contact me first, and include a self, stamped addressed envelope to receive your cassette back. Any entry submitted as a type-in will also be acceptable, as the Sinclair \'one-touch\' entry makes BASIC programming more simpler.','2018-02-19 09:15:59','2018-03-03 10:33:52'),(4,'IV','As we all like to have a Christmas break, all entries will be submitted by 24th December 2018 at 23:59:48 GMT. Like all previous Comp.Sys.Sinclair Crap Games Competitions (and those that were C.S.S in name only) there will never be any extension to this deadline under any circumstances, and those who request a deadline extension will be charged with treason;','2018-02-19 09:15:59','2018-02-19 09:33:00'),(5,'V','All submissions will be rigorously reviewed. Those worthy will achieve a \'Yawn Sinclair Mega Game\' award;','2018-02-19 09:15:59','2018-02-19 09:18:14'),(6,'VI','There will be two winners, one that is judged to be the actual winner, and another that is randomly selected by a Sinclair BASIC program that I wrote which uses the powerful RND command. Both winners will receive a bag of Transform-A-Snack for their efforts (this means that someone could win twice);','2018-02-19 09:15:59','2018-02-19 09:33:00'),(7,'VII','The loser will be the person who submits an entry that is actually playable, the sort of game that you would consider loading twice because the first time provided something close to fun. This person will receive a pack of Chewits;','2018-02-19 09:15:59','2018-02-19 09:33:00'),(8,'VIII','Small print leads to large risk;','2018-02-19 09:15:59','2018-02-19 09:33:00'),(9,'IX','Please do not take anything too seriously. This is supposed to be fun, yeah? And,','2018-02-19 09:15:59','2018-02-19 09:33:00'),(10,'X','All submissions will be distributed electronically via the Internet for free. If there is enough interest then a real cassette version as a compilation will be published some time in 2019. All entrants wanting their work to be published on cassette will receive a single Polo mint as payment for each copy sold. Any game which may land me or anyone else associated with this competition with legal difficulties will be disqualified from the outset.','2018-02-19 09:15:59','2018-02-19 09:33:00');
/*!40000 ALTER TABLE `rules` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-14 20:55:49
