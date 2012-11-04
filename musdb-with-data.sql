-- MySQL dump 10.13  Distrib 5.5.24, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: musdb
-- ------------------------------------------------------
-- Server version	5.5.24-0ubuntu0.12.04.1

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
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `games` (
  `gameid` int(11) NOT NULL AUTO_INCREMENT,
  `player0` int(11) NOT NULL,
  `player1` int(11) NOT NULL,
  `player2` int(11) NOT NULL,
  `player3` int(11) NOT NULL,
  `score` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`gameid`),
  KEY `player0` (`player0`),
  KEY `player1` (`player1`),
  KEY `player2` (`player2`),
  KEY `player3` (`player3`),
  CONSTRAINT `games_ibfk_1` FOREIGN KEY (`player0`) REFERENCES `users` (`userid`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `games_ibfk_2` FOREIGN KEY (`player1`) REFERENCES `users` (`userid`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `games_ibfk_3` FOREIGN KEY (`player2`) REFERENCES `users` (`userid`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `games_ibfk_4` FOREIGN KEY (`player3`) REFERENCES `users` (`userid`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games`
--

LOCK TABLES `games` WRITE;
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
INSERT INTO `games` VALUES (1,1,2,3,4,'3-0'),(2,2,3,1,5,'2-3');
/*!40000 ALTER TABLE `games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` binary(20) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `surname` varchar(128) DEFAULT NULL,
  `email` varchar(32) NOT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'alicia','^�%�P;��o�sMQt�󹦢',NULL,NULL,'alicia@foo.com'),(2,'blas','~�>�\n�Mf\Z������\"��',NULL,NULL,'blas@foo.com'),(3,'carlos','�^+ʄ�1��ԏ���;�N�d',NULL,NULL,'carlos@foo.com'),(4,'david','�t:\n���ס�BP9W�ע�4',NULL,NULL,'david@foo.com'),(5,'eva','=������^.����#B���j',NULL,NULL,'eva@foo.com'),(6,'alicia2','����ۚ�N>9�\np�_Tw�','null','null','alicia2@foo.com'),(7,'alicante','��W�0A-l:Y���Ñ��','','','alicante@foo.com'),(8,'alibaba','@Ńڅ�H1�=0c�c�^�','','','alibaba@foo.com'),(9,'test12','��<�L��$�\'{��Bgs�B','nombre','','pericopalotes');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-11-04 20:12:34
