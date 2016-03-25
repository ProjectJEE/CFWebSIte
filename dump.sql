-- MySQL dump 10.13  Distrib 5.5.47, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: bulbfunding
-- ------------------------------------------------------
-- Server version	5.5.47-0ubuntu0.14.04.1

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
-- Table structure for table `Comment`
--

DROP TABLE IF EXISTS `Comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Comment` (
  `id_comment` bigint(20) NOT NULL AUTO_INCREMENT,
  `description_comment` varchar(255) DEFAULT NULL,
  `project_id_project` bigint(20) DEFAULT NULL,
  `user_id_user` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_comment`),
  KEY `FK9npqliodkqkeryx656wpx29fr` (`project_id_project`),
  KEY `FKg4pcnka9wefv6g1xekpu1ox81` (`user_id_user`),
  CONSTRAINT `FKg4pcnka9wefv6g1xekpu1ox81` FOREIGN KEY (`user_id_user`) REFERENCES `User` (`id_user`),
  CONSTRAINT `FK9npqliodkqkeryx656wpx29fr` FOREIGN KEY (`project_id_project`) REFERENCES `Project` (`id_project`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Comment`
--

LOCK TABLES `Comment` WRITE;
/*!40000 ALTER TABLE `Comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `Comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Participate`
--

DROP TABLE IF EXISTS `Participate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Participate` (
  `id_participation` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount_participation` bigint(20) NOT NULL,
  `amount_profit` bigint(20) NOT NULL,
  `date_participation` datetime DEFAULT NULL,
  `flag_participation` int(11) NOT NULL,
  `project_id_project` bigint(20) DEFAULT NULL,
  `user_id_user` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_participation`),
  KEY `FKaacxtqg1rewor7ltutu0yxs54` (`project_id_project`),
  KEY `FK6bf9qv9f61feab60tbbs4df09` (`user_id_user`),
  CONSTRAINT `FK6bf9qv9f61feab60tbbs4df09` FOREIGN KEY (`user_id_user`) REFERENCES `User` (`id_user`),
  CONSTRAINT `FKaacxtqg1rewor7ltutu0yxs54` FOREIGN KEY (`project_id_project`) REFERENCES `Project` (`id_project`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Participate`
--

LOCK TABLES `Participate` WRITE;
/*!40000 ALTER TABLE `Participate` DISABLE KEYS */;
/*!40000 ALTER TABLE `Participate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Project`
--

DROP TABLE IF EXISTS `Project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Project` (
  `id_project` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_project` varchar(255) DEFAULT NULL,
  `description_project` varchar(255) DEFAULT NULL,
  `img_project` varchar(255) DEFAULT NULL,
  `money_goal` bigint(20) NOT NULL,
  `name_project` varchar(255) DEFAULT NULL,
  `nbr_days` bigint(20) NOT NULL,
  `user_id_user` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_project`),
  KEY `FK69g8r9n63d6kp3l4gpwcjgt72` (`user_id_user`),
  CONSTRAINT `FK69g8r9n63d6kp3l4gpwcjgt72` FOREIGN KEY (`user_id_user`) REFERENCES `User` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Project`
--

LOCK TABLES `Project` WRITE;
/*!40000 ALTER TABLE `Project` DISABLE KEYS */;
INSERT INTO `Project` VALUES (20,'IT','This is a small project This is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small project',NULL,15615,'Drone or else',15,1),(21,'IT','This is a small project This is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small project',NULL,15615,'Drone or else',15,1),(22,'IT','This is a small project This is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small project',NULL,15615,'Drone or else',15,1),(23,'IT','This is a small project This is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small project',NULL,15615,'Drone or else',15,1),(24,'IT','This is a small project This is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small project',NULL,15615,'Drone or else',15,1),(25,'IT','This is a small project This is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small project',NULL,15615,'Drone or else',15,1),(26,'IT','This is a small project This is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small project',NULL,15615,'Drone or else',15,1),(27,'IT','This is a small project This is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small project',NULL,15615,'Drone or else',15,1),(28,'IT','This is a small project This is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small project',NULL,15615,'Drone or else',15,1),(29,'IT','This is a small project This is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small project',NULL,15615,'Drone or else',15,1),(30,'IT','This is a small project This is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small project',NULL,15615,'Drone or else',15,1),(31,'IT','This is a small project This is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small project',NULL,15615,'Drone or else',15,1),(32,'IT','This is a small project This is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small project',NULL,15615,'Drone or else',15,1),(33,'IT','This is a small project This is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small project',NULL,15615,'Drone or else',15,1),(34,'IT','This is a small project This is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small project',NULL,15615,'Drone or else',15,1),(35,'IT','This is a small project This is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small project',NULL,15615,'Drone or else',15,1),(36,'IT','This is a small project This is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small project',NULL,15615,'Drone or else',15,1),(37,'IT','This is a small project This is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small project',NULL,15615,'Drone or else',15,1),(38,'IT','This is a small project This is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small project',NULL,15615,'Drone or else',15,1),(39,'IT','This is a small project This is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small project',NULL,15615,'Drone or else',15,1),(40,'IT','This is a small project This is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small project',NULL,15615,'Drone or else',15,1),(41,'IT','This is a small project This is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small project',NULL,15615,'Drone or else',15,1),(42,'IT','This is a small project This is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small project',NULL,15615,'Drone or else',15,1),(44,'IT','This is a small project This is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small project',NULL,15615,'Drone or else',15,1),(45,'IT','This is a small project This is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small project',NULL,15615,'Drone or else',15,1),(46,'IT','This is a small project This is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small project',NULL,15615,'Drone or else',15,1),(47,'IT','This is a small project This is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small project',NULL,15615,'Drone or else',15,1),(48,'IT','This is a small project This is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small project',NULL,15615,'Drone or else',15,1),(49,'IT','This is a small project This is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small project',NULL,15615,'Drone or else',15,1),(50,'IT','This is a small project This is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small project',NULL,15615,'Drone or else',15,1),(51,'IT','This is a small project This is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small project',NULL,15615,'Drone or else',15,1),(52,'IT','This is a small project This is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small project',NULL,15615,'Drone or else',15,1),(53,'IT','This is a small project This is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small project',NULL,15615,'Drone or else',15,1),(54,'IT','This is a small project This is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small project',NULL,15615,'Drone or else',15,1),(55,'IT','This is a small project This is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small project',NULL,15615,'Drone or else',15,1),(56,'IT','This is a small project This is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small project',NULL,15615,'Drone or else',15,1),(57,'IT','This is a small project This is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small projectThis is a small project',NULL,15615,'Drone or else',15,1);
/*!40000 ALTER TABLE `Project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User` (
  `id_user` bigint(20) NOT NULL AUTO_INCREMENT,
  `email_user` varchar(255) DEFAULT NULL,
  `img_user` varchar(255) DEFAULT NULL,
  `joinDate_user` datetime DEFAULT NULL,
  `name_user` varchar(255) DEFAULT NULL,
  `password_user` varchar(255) DEFAULT NULL,
  `salt_user` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (1,'lo@lo',NULL,'2016-03-25 19:12:28','kokojamila','3a300c48b47b714d9821dc473304aa84','[B@1d8bee56');
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Vote`
--

DROP TABLE IF EXISTS `Vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Vote` (
  `id_vote` bigint(20) NOT NULL AUTO_INCREMENT,
  `nbr_vote` bigint(20) NOT NULL,
  `project_id_project` bigint(20) DEFAULT NULL,
  `user_id_user` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_vote`),
  KEY `FK7ncvnyuykoy5y2g16nkxmgko4` (`project_id_project`),
  KEY `FK9834o16xllo8bds9goiod6lns` (`user_id_user`),
  CONSTRAINT `FK9834o16xllo8bds9goiod6lns` FOREIGN KEY (`user_id_user`) REFERENCES `User` (`id_user`),
  CONSTRAINT `FK7ncvnyuykoy5y2g16nkxmgko4` FOREIGN KEY (`project_id_project`) REFERENCES `Project` (`id_project`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Vote`
--

LOCK TABLES `Vote` WRITE;
/*!40000 ALTER TABLE `Vote` DISABLE KEYS */;
/*!40000 ALTER TABLE `Vote` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-25 22:27:16
