-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: localhost    Database: irdb
-- ------------------------------------------------------
-- Server version	8.0.23-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `hd_departments`
--

DROP TABLE IF EXISTS `hd_departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hd_departments` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `hidden` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hd_departments`
--

LOCK TABLES `hd_departments` WRITE;
/*!40000 ALTER TABLE `hd_departments` DISABLE KEYS */;
INSERT INTO `hd_departments` VALUES (1,'Finance',1),(2,'ITDeveops',0),(4,'Legal',0),(3,'ITDEV',1);
/*!40000 ALTER TABLE `hd_departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hd_ticket_replies`
--

DROP TABLE IF EXISTS `hd_ticket_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hd_ticket_replies` (
  `id` int DEFAULT NULL,
  `user` int DEFAULT NULL,
  `text` text,
  `ticket_id` text,
  `date` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hd_ticket_replies`
--

LOCK TABLES `hd_ticket_replies` WRITE;
/*!40000 ALTER TABLE `hd_ticket_replies` DISABLE KEYS */;
INSERT INTO `hd_ticket_replies` VALUES (NULL,3,'LDAP restarted','','1615694405');
/*!40000 ALTER TABLE `hd_ticket_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hd_tickets`
--

DROP TABLE IF EXISTS `hd_tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hd_tickets` (
  `id` int DEFAULT NULL,
  `uniqid` varchar(20) DEFAULT NULL,
  `user` int DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `init_msg` text,
  `department` int DEFAULT NULL,
  `date` varchar(250) DEFAULT NULL,
  `last_reply` int DEFAULT NULL,
  `user_read` int DEFAULT NULL,
  `admin_read` int DEFAULT NULL,
  `resolved` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hd_tickets`
--

LOCK TABLES `hd_tickets` WRITE;
/*!40000 ALTER TABLE `hd_tickets` DISABLE KEYS */;
INSERT INTO `hd_tickets` VALUES (NULL,'604d832a730a4',1,'ASA Failure','ASA Failure',1,'1615692586',1,0,0,0),(NULL,'604d8504b8cd7',1,'User authentication failed','User authentication failed',2,'1615693060',1,0,0,0),(NULL,'604d88aae6b6a',3,'DB Space warning','DB Space warning',2,'1615693994',3,0,0,0);
/*!40000 ALTER TABLE `hd_tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hd_users`
--

DROP TABLE IF EXISTS `hd_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hd_users` (
  `id` int NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `sign_up_date` varchar(250) NOT NULL,
  `nick_name` varchar(250) NOT NULL,
  `user_group` int NOT NULL,
  `last_login` varchar(250) NOT NULL,
  `url` varchar(270) NOT NULL,
  `allowed` int NOT NULL,
  `most_recent_ip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hd_users`
--

LOCK TABLES `hd_users` WRITE;
/*!40000 ALTER TABLE `hd_users` DISABLE KEYS */;
INSERT INTO `hd_users` VALUES (1,'admin@ucsc.com','abc','20200201','aravinda',1,'20200212','aaa',1,'192.168.2.2'),(2,'admin@ucsc.com','abc','20210308','admin',2,'20200308','bbb',1,'1'),(3,'sam@ucsc.com','pqr','20210314','SamDavid',4,'20210315','cccc',1,'2.2.2.2');
/*!40000 ALTER TABLE `hd_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-18  5:46:50
