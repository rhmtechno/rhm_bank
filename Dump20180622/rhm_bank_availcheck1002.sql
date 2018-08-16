-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: rhm_bank
-- ------------------------------------------------------
-- Server version	5.7.20-log

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
-- Table structure for table `availcheck1002`
--

DROP TABLE IF EXISTS `availcheck1002`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `availcheck1002` (
  `acc` varchar(45) NOT NULL,
  `check_no` varchar(45) NOT NULL,
  `check` varchar(45) NOT NULL,
  `date` datetime DEFAULT NULL,
  KEY `acc` (`acc`),
  CONSTRAINT `availcheck1002_ibfk_1` FOREIGN KEY (`acc`) REFERENCES `accounts` (`acc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `availcheck1002`
--

LOCK TABLES `availcheck1002` WRITE;
/*!40000 ALTER TABLE `availcheck1002` DISABLE KEYS */;
INSERT INTO `availcheck1002` VALUES ('1002','1002','Shahidur Rahman1002','2018-06-17 17:59:59'),('1002','1003','Shahidur Rahman1003','2018-06-17 18:00:03'),('1002','1004','Shahidur Rahman1004','2018-06-17 18:00:04'),('1002','1005','Shahidur Rahman1005','2018-06-17 18:00:04'),('1002','1006','Shahidur Rahman1006','2018-06-17 18:00:04'),('1002','1007','Shahidur Rahman1007','2018-06-17 18:00:05'),('1002','1008','Shahidur Rahman1008','2018-06-17 18:00:05'),('1002','1009','Shahidur Rahman1009','2018-06-17 18:00:05'),('1002','1010','Shahidur Rahman1010','2018-06-17 18:00:06'),('1002','1011','Shahidur Rahman1011','2018-06-17 18:00:06'),('1002','1012','Shahidur Rahman1012','2018-06-17 18:00:06'),('1002','1013','Shahidur Rahman1013','2018-06-17 18:00:06'),('1002','1014','Shahidur Rahman1014','2018-06-17 18:00:07'),('1002','1015','Shahidur Rahman1015','2018-06-17 18:00:07'),('1002','1016','Shahidur Rahman1016','2018-06-17 18:00:07'),('1002','1017','Shahidur Rahman1017','2018-06-17 18:00:07'),('1002','1018','Shahidur Rahman1018','2018-06-17 18:00:07'),('1002','1019','Shahidur Rahman1019','2018-06-17 18:00:08'),('1002','1020','Shahidur Rahman1020','2018-06-17 18:00:08'),('1002','1021','Shahidur Rahman1021','2018-06-17 18:00:08'),('1002','1022','Shahidur Rahman1022','2018-06-17 18:00:08'),('1002','1023','Shahidur Rahman1023','2018-06-17 18:00:09'),('1002','1024','Shahidur Rahman1024','2018-06-17 18:00:09'),('1002','1025','Shahidur Rahman1025','2018-06-17 18:00:09'),('1002','1026','Shahidur Rahman1026','2018-06-17 18:00:09'),('1002','1027','Shahidur Rahman1027','2018-06-17 18:14:25'),('1002','1028','Shahidur Rahman1028','2018-06-17 18:14:30'),('1002','1029','Shahidur Rahman1029','2018-06-17 18:14:30'),('1002','1030','Shahidur Rahman1030','2018-06-17 18:14:31'),('1002','1031','Shahidur Rahman1031','2018-06-17 18:14:32'),('1002','1032','Shahidur Rahman1032','2018-06-17 18:14:32'),('1002','1033','Shahidur Rahman1033','2018-06-17 18:14:32'),('1002','1034','Shahidur Rahman1034','2018-06-17 18:14:33'),('1002','1035','Shahidur Rahman1035','2018-06-17 18:14:33'),('1002','1036','Shahidur Rahman1036','2018-06-17 18:14:33'),('1002','1037','Shahidur Rahman1037','2018-06-17 18:14:34'),('1002','1038','Shahidur Rahman1038','2018-06-17 18:14:34'),('1002','1039','Shahidur Rahman1039','2018-06-17 18:14:34'),('1002','1040','Shahidur Rahman1040','2018-06-17 18:14:34'),('1002','1041','Shahidur Rahman1041','2018-06-17 18:14:35'),('1002','1042','Shahidur Rahman1042','2018-06-17 18:14:35'),('1002','1043','Shahidur Rahman1043','2018-06-17 18:14:35'),('1002','1044','Shahidur Rahman1044','2018-06-17 18:14:35'),('1002','1045','Shahidur Rahman1045','2018-06-17 18:14:36'),('1002','1046','Shahidur Rahman1046','2018-06-17 18:14:36'),('1002','1047','Shahidur Rahman1047','2018-06-17 18:26:43'),('1002','1048','Shahidur Rahman1048','2018-06-17 18:26:47'),('1002','1049','Shahidur Rahman1049','2018-06-17 18:26:47'),('1002','1050','Shahidur Rahman1050','2018-06-17 18:26:48'),('1002','1051','Shahidur Rahman1051','2018-06-17 18:26:48'),('1002','1052','Shahidur Rahman1052','2018-06-17 18:29:20'),('1002','1053','Shahidur Rahman1053','2018-06-17 18:29:25'),('1002','1054','Shahidur Rahman1054','2018-06-17 18:30:18'),('1002','1055','Shahidur Rahman1055','2018-06-17 18:30:19'),('1002','1056','Shahidur Rahman1056','2018-06-17 18:30:19');
/*!40000 ALTER TABLE `availcheck1002` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-22 22:38:57
