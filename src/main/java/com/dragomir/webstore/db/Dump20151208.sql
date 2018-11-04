CREATE DATABASE  IF NOT EXISTS `nanogadget` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `nanogadget`;
-- MySQL dump 10.13  Distrib 5.7.7-rc, for Win64 (x86_64)
--
-- Host: localhost    Database: nanogadget
-- ------------------------------------------------------
-- Server version	5.7.7-rc-log

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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `productId` varchar(5) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `unitPrice` decimal(10,0) unsigned DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `manufacturer` varchar(45) DEFAULT NULL,
  `category` varchar(20) DEFAULT NULL,
  `unitsInStock` int(10) unsigned DEFAULT NULL,
  `unitsInOrder` int(10) unsigned DEFAULT NULL,
  `discontinued` int(10) unsigned DEFAULT NULL,
  `conditions` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`productId`),
  UNIQUE KEY `productId_UNIQUE` (`productId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('P1003','IPhone 6',855,'RAM 2 GB','Apple Corp','Smart Phone',561,0,0,'New'),('P1002','IPad 4',950,'Ram: 2gb\r\nScreen Type: Gorilla Glass','Apple Corp','Tablet',410,0,0,'Refurbished'),('P1000','Dell Laptop',400,'Ram: 1 GB \r\nProcessor: 2GHZ','Dell','Laptop',400,0,0,'New'),('P1001','Garmin p19',156,'NavMaps','Garmin Corp','GPS',260,0,0,'New'),('P1004','Samsung Galaxy S5',440,'RAM : 3gb\r\n4 core processor','Samsung','Smart Phone',210,0,0,'Old'),('P1005','Sony Vaio cdx345',1200,'Ram 6gb\r\n6 core processor','Sony','Laptop',150,0,0,'New');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-08 15:17:01
