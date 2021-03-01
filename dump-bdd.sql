-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` timestamp NOT NULL,
  PRIMARY KEY (`id`,`created_date`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Mukesh','Google','2021-02-23 23:00:00'),(2,'Mukesh','Google','2021-02-23 23:00:00'),(3,'Mukesh','Google','2021-02-23 23:00:00'),(4,'Mukesh','Google','2021-02-23 23:00:00'),(5,'Mukesh','Google','2021-02-23 23:00:00'),(6,'Quentin','Google','2021-02-23 23:00:00'),(7,'Quentin','Google','2021-02-23 23:00:00'),(8,'Kevin','Quentin','2021-02-23 23:00:00'),(9,'Kevin',NULL,'2021-02-23 23:00:00'),(10,'Kevin','Quentin','2021-02-23 23:00:00'),(11,'Kevin','Quentin','2021-02-23 23:00:00'),(12,'Kevin','Quentin','2021-02-23 23:00:00'),(13,'Kevin','Quentin','2021-02-23 23:00:00'),(14,'Kevin','Quentin','2021-02-23 23:00:00'),(15,'Kevin','Quentin','2021-02-23 23:00:00'),(16,'Kevin','Quentin','2021-02-23 23:00:00'),(17,'Kevin','Quentin','2021-02-23 23:00:00'),(18,'Kevin','Quentin','2021-02-23 23:00:00'),(19,'Kevin','Quentin','2021-02-23 23:00:00'),(20,'Kevin','Quentin','2021-02-23 23:00:00'),(21,'Kevin','Quentin','2021-02-23 23:00:00'),(22,'Kevin','Quentin','2021-02-23 23:00:00'),(23,'Kevin','Quentin','2021-02-23 23:00:00'),(24,'Kevin','Quentin','2021-02-24 23:00:00'),(25,'Kevin','Quentin','2021-02-24 23:00:00'),(26,'Kevin','Quentin','2021-02-24 23:00:00'),(27,'Kevin','Quentin','2021-02-24 23:00:00'),(28,'Kevin','Quentin','2021-02-24 23:00:00'),(29,'Kevin','Quentin','2021-02-24 23:00:00'),(30,'Kevin','Quentin','2021-02-24 23:00:00'),(31,'Kevin','Quentin','2021-02-24 23:00:00'),(32,'Kevin','Quentin','2021-02-24 23:00:00'),(33,'Kevin','Quentin','2021-02-24 23:00:00'),(34,'Kevin','Quentin','2021-02-24 23:00:00'),(35,'Kevin','Quentin','2021-02-24 23:00:00'),(36,'Kevin','Quentin','2021-02-24 23:00:00'),(37,'Kevin','Quentin','2021-02-24 23:00:00'),(38,'Kevin','Quentin','2021-02-24 23:00:00'),(39,'Kevin','Quentin','2021-02-24 23:00:00'),(40,'Kevin','Quentin','2021-02-24 23:00:00'),(41,'Kevin','Quentin','2021-02-24 23:00:00'),(42,'Georgio','Giovanni','2021-02-24 23:00:00'),(43,'Georgio','Giovanni','2021-02-24 23:00:00'),(44,'Georgio','Giovanni','2021-02-24 23:00:00'),(45,'Georgio','Giovanni','2021-02-24 23:00:00'),(46,'Georgio','Giovanni','2021-02-24 23:00:00'),(47,'Georgio','Giovanni','2021-02-24 23:00:00'),(48,'Georgio','Giovanni','2021-02-24 23:00:00'),(49,'Georgio','Giovanni','2021-02-24 23:00:00'),(50,'Georgio','Giovanni','2021-02-24 23:00:00'),(51,'Georgio','Giovanni','2021-02-24 23:00:00'),(52,'Georgio','Giovanni','2021-02-24 23:00:00'),(53,'Georgio','Giovanni','2021-02-25 15:51:09'),(54,'Georgio','Giovanni','2021-02-25 15:51:45'),(55,'Georgio','Giovanni','2021-02-26 09:32:00'),(56,'Georgio','Giovanni','2021-02-26 09:33:57'),(57,'Georgio','Giovanni','2021-03-01 13:25:30');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-01 14:28:36
