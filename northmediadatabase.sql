-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: northmediadatabase
-- ------------------------------------------------------
-- Server version	5.6.27-log

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
-- Table structure for table `archive`
--

DROP TABLE IF EXISTS `archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `archive` (
  `archiveId` smallint(5) NOT NULL AUTO_INCREMENT,
  `ifManager` varchar(1) NOT NULL,
  `fullName` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `city` varchar(20) NOT NULL,
  `nationality` varchar(25) NOT NULL,
  `mobile` smallint(8) NOT NULL,
  `postCode` smallint(4) NOT NULL,
  `cpr` varchar(11) NOT NULL,
  `empPicture` varbinary(8000) NOT NULL,
  PRIMARY KEY (`archiveId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archive`
--

LOCK TABLES `archive` WRITE;
/*!40000 ALTER TABLE `archive` DISABLE KEYS */;
/*!40000 ALTER TABLE `archive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `availabilities`
--

DROP TABLE IF EXISTS `availabilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `availabilities` (
  `availabilityId` smallint(3) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `shiftType` varchar(7) NOT NULL,
  `empId` smallint(3) NOT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`availabilityId`),
  KEY `FK_emp_ava` (`empId`),
  CONSTRAINT `FK_emp_ava` FOREIGN KEY (`empId`) REFERENCES `employees` (`empId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `availabilities`
--

LOCK TABLES `availabilities` WRITE;
/*!40000 ALTER TABLE `availabilities` DISABLE KEYS */;
INSERT INTO `availabilities` VALUES (5,'2015-12-07','N',2,1),(18,'2015-12-13','E',1,0),(20,'2015-12-07','E',1,1),(25,'2015-12-12','D',1,0),(32,'2015-11-25','D',1,0),(33,'2015-12-12','E',1,1),(34,'2015-12-11','N',1,0),(35,'2015-12-13','D',1,0),(44,'2015-12-07','N',1,1),(45,'2015-12-08','N',1,0),(46,'2015-12-08','D',1,0),(47,'2015-12-08','E',1,0),(50,'2015-12-10','N',1,0),(51,'2015-12-10','D',1,0),(53,'2015-12-11','E',1,0),(54,'2015-12-12','N',1,0),(55,'2015-12-13','N',1,0),(56,'2015-12-07','D',1,0),(69,'2015-12-21','N',1,0),(70,'2015-12-21','D',1,0),(71,'2015-12-21','E',1,0),(72,'2015-12-22','E',1,0),(75,'2015-12-23','N',1,0),(80,'2015-12-25','N',1,0),(81,'2015-12-25','D',1,0),(82,'2015-12-25','E',1,0),(85,'2015-12-26','N',1,0),(86,'2015-12-27','N',1,1),(87,'2015-12-27','D',1,1),(88,'2015-12-27','E',1,0),(89,'2015-12-10','E',2,0),(90,'2015-12-11','D',2,0),(91,'2015-12-12','E',2,1),(92,'2015-12-16','D',2,0),(93,'2015-12-17','E',2,1),(127,'2015-10-14','N',1,0),(128,'2015-10-14','D',1,0),(131,'2015-10-16','D',1,0),(132,'2015-10-16','N',1,0),(133,'2015-10-16','E',1,0),(134,'2015-10-14','E',1,0),(135,'2015-10-12','N',1,0),(136,'2015-10-12','D',1,0),(137,'2015-10-12','E',1,0),(138,'2015-10-18','E',1,0),(139,'2015-10-18','D',1,0),(140,'2015-10-18','N',1,0),(141,'2015-10-13','D',1,0),(142,'2015-10-15','E',1,0),(143,'2015-10-17','E',1,0),(169,'2015-12-14','E',1,1),(175,'2015-12-18','N',1,1),(176,'2015-12-14','N',1,1),(177,'2015-12-16','N',1,1),(178,'2015-12-15','N',1,0),(179,'2015-12-14','D',1,1),(184,'2015-12-19','D',1,0),(185,'2015-12-19','N',1,0),(186,'2015-12-19','E',1,0),(187,'2015-12-20','E',1,1),(188,'2015-12-20','D',1,1),(190,'2015-12-22','N',1,0),(191,'2015-12-22','D',1,0),(192,'2015-12-23','D',1,0),(193,'2015-12-23','E',1,0),(194,'2015-12-24','E',1,0),(195,'2015-12-24','D',1,0),(196,'2015-12-24','N',1,0),(197,'2015-12-26','D',1,0),(198,'2015-12-26','E',1,0),(200,'2015-12-18','D',1,0);
/*!40000 ALTER TABLE `availabilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `empId` smallint(3) NOT NULL AUTO_INCREMENT,
  `ifManager` int(1) NOT NULL,
  `fullName` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `address` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `city` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `nationality` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `mobileNumber` varchar(11) COLLATE utf8_bin DEFAULT NULL,
  `postcode` varchar(11) COLLATE utf8_bin DEFAULT NULL,
  `login` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `cpr` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `empPicture` blob,
  PRIMARY KEY (`empId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,0,'Grzes To Pizda','asdf','To ','adf','Pizda','3242','emp','1','aef',NULL),(2,1,'ef','asdf','adf','adf','29384293','3242','man','1','aef',NULL),(15,1,'chuj','asdf','adf','adf','29384293','3242','emp','1','aef',NULL),(16,0,'as','asdf','adf','adf','29384293','3242','emp','1','aef',NULL),(17,0,'tadas','street 6','c','dk','12121212','2300','tadas','tadas','121212-1212',NULL);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'northmediadatabase'
--

--
-- Dumping routines for database 'northmediadatabase'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-16 22:01:29
