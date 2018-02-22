CREATE DATABASE  IF NOT EXISTS `cgc2018` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `cgc2018`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cgc2018
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.29-MariaDB

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
-- Table structure for table `rules`
--

DROP TABLE IF EXISTS `rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rules` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `numeral` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rule` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
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
INSERT INTO `rules` VALUES (1,'I','All submissions will run on either a Sinclair ZX80, ZX81, ZX Spectrum or compatible clones thereof;','2018-02-19 09:15:59','2018-02-19 09:18:14'),(2,'II','In the event that a submission is not playable, it must have a point; I am aware that everything nowadays has to be an \'app\' on modern devices such as the Atari Jaguar or Sony PlayStation, well I think that utilities, tools and other computer softwares should be encouraged, so more serious software will be allowed too;','2018-02-19 09:15:59','2018-02-19 09:33:00'),(3,'III','Submissions will be emailed to <a href=\\\"mailto:shaun@square-circle.ZXco.uk\\\" title=\\\"Remove the relevant characters from this if clicking\\\" rel=\\\"nofollow\\\">shaun@square-circle.co.uk</a> in zipped format containing a workable image to run on suitable emulators. If you would like to submit your entry on real cassette then please contact me first, and include a self, stamped addressed envelope to receive your cassette back. Any entry submitted as a type-in will also be acceptable, as the Sinclair \'one-touch\'','2018-02-19 09:15:59','2018-02-19 09:33:00'),(4,'IV','As we all like to have a Christmas break, all entries will be submitted by 24th December 2018 at 23:59:48 GMT. Like all previous Comp.Sys.Sinclair Crap Games Competitions (and those that were C.S.S in name only) there will never be any extension to this deadline under any circumstances, and those who request a deadline extension will be charged with treason;','2018-02-19 09:15:59','2018-02-19 09:33:00'),(5,'V','All submissions will be rigorously reviewed. Those worthy will achieve a \'Yawn Sinclair Mega Game\' award;','2018-02-19 09:15:59','2018-02-19 09:18:14'),(6,'VI','There will be two winners, one that is judged to be the actual winner, and another that is randomly selected by a Sinclair BASIC program that I wrote which uses the powerful RND command. Both winners will receive a bag of Transform-A-Snack for their efforts (this means that someone could win twice);','2018-02-19 09:15:59','2018-02-19 09:33:00'),(7,'VII','The loser will be the person who submits an entry that is actually playable, the sort of game that you would consider loading twice because the first time provided something close to fun. This person will receive a pack of Chewits;','2018-02-19 09:15:59','2018-02-19 09:33:00'),(8,'VIII','Small print leads to large risk;','2018-02-19 09:15:59','2018-02-19 09:33:00'),(9,'IX','Please do not take anything too seriously. This is supposed to be fun, yeah? And,','2018-02-19 09:15:59','2018-02-19 09:33:00'),(10,'X','All submissions will be distributed electronically via the Internet for free. If there is enough interest then a real cassette version as a compilation will be published some time in 2019. All entrants wanting their work to be published on cassette will receive a single Polo mint as payment for each copy sold. Any game which may land me or anyone else associated with this competition with legal difficulties will be disqualified from the outset.','2018-02-19 09:15:59','2018-02-19 09:33:00');
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

-- Dump completed on 2018-02-22 16:40:48
