CREATE DATABASE  IF NOT EXISTS `baseball_database` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `baseball_database`;
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: baseball_database
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `defensive`
--

DROP TABLE IF EXISTS `defensive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `defensive` (
  `d_role` varchar(2) NOT NULL,
  `innings` decimal(10,5) NOT NULL,
  `games` int NOT NULL,
  `era` decimal(10,5) NOT NULL,
  `Players_p_id` int NOT NULL,
  `Players_p_name` varchar(50) NOT NULL,
  PRIMARY KEY (`Players_p_id`,`Players_p_name`,`d_role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `defensive`
--

LOCK TABLES `defensive` WRITE;
/*!40000 ALTER TABLE `defensive` DISABLE KEYS */;
INSERT INTO `defensive` VALUES ('RP',0.10000,1,0.00000,12,'Jake Diekman'),('SP',4.00000,1,2.25000,12,'Jose Berrios'),('RP',8.00000,7,1.13000,12,'Zack Britton'),('RP',1.00000,1,0.00000,13,'Laim Hendriks'),('RP',4.00000,2,0.00000,13,'Luis Cessa'),('SP',2.00000,1,18.00000,13,'Randy Dobnak'),('RP',5.10000,5,3.38000,14,'Aroldis Chapman'),('SP',36.20000,5,1.72000,14,'Gerrit Cole'),('RP',3.00000,1,0.00000,14,'Jesus Luzardo'),('RP',5.20000,4,1.59000,14,'Nick Anderson'),('RP',1.20000,2,21.60000,14,'Tyler Duffey'),('RP',6.20000,6,6.75000,15,'Chad Green'),('RP',3.00000,3,9.00000,15,'Chris Devenski'),('RP',5.20000,4,0.00000,15,'Diego Castillo'),('SP',1.00000,1,27.00000,15,'Kyle Gibson'),('SP',2.00000,1,18.00000,15,'Sean Manaea'),('RP',1.00000,1,0.00000,16,'Brusdar Graterol'),('SP',3.20000,3,2.46000,16,'J.A Happ'),('RP',3.00000,2,6.00000,16,'Oliver Drake'),('RP',2.20000,1,3.38000,16,'Yusmerio Petit'),('SP',25.00000,5,4.68000,16,'Zack Greinke'),('RP',8.00000,8,2.25000,17,'Tommy Kahnle'),('SP',7.00000,2,7.71000,17,'Tyler Glasnow'),('RP',9.20000,12,1.86000,17,'Will Harris'),('RP',0.10000,2,54.00000,17,'Zack Littell'),('SP',1.10000,3,0.00000,18,'Brendan McKay'),('RP',2.20000,4,3.38000,18,'Jonathan Loaisiga'),('RP',6.20000,9,5.40000,18,'Josh James'),('RP',1.00000,2,0.00000,18,'Trevor May'),('SP',10.00000,2,0.90000,19,'Charlie Morton'),('SP',5.00000,1,3.60000,19,'Jake Odorizzi'),('RP',10.00000,9,3.60000,19,'Roberto Osuna'),('RP',1.20000,2,0.00000,19,'Tyler Lyons'),('RP',3.10000,8,8.10000,20,'Adam Ottavino'),('SP',5.20000,5,3.18000,20,'Brad Peacock'),('RP',3.00000,4,6.00000,20,'Emilio Pagan'),('RP',2.00000,1,4.50000,20,'Taylor Rogers'),('RP',4.10000,5,2.08000,21,'Colin Poche'),('SP',13.00000,3,3.46000,21,'James Paxton'),('RP',5.20000,10,11.12000,21,'Ryan Pressly'),('RP',2.00000,2,9.00000,21,'Sergio Romo'),('SP',1.00000,2,0.00000,22,'CC Sabathia'),('RP',2.20000,3,6.75000,22,'Chaz Roe'),('SP',3.10000,1,0.00000,22,'Devin Smeltzer'),('RP',1.10000,4,6.75000,22,'Hector Rondon'),('SP',5.10000,3,1.69000,23,'Blake Snell'),('RP',1.20000,2,10.80000,23,'Cody Stashak'),('RP',8.20000,10,3.12000,23,'Joe Smith'),('SP',8.10000,2,2.16000,23,'Luis Severino'),('SP',10.00000,4,0.90000,24,'Jose Urquidy'),('SP',16.00000,3,2.25000,24,'Masahiro Tanaka'),('RP',3.00000,3,0.00000,24,'Ryan Yarbrough'),('SP',35.10000,6,4.33000,25,'Justin Verlander');
/*!40000 ALTER TABLE `defensive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `league`
--

DROP TABLE IF EXISTS `league`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `league` (
  `l_name` varchar(50) NOT NULL,
  `Division` varchar(50) NOT NULL,
  `l_id` int NOT NULL,
  PRIMARY KEY (`l_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `league`
--

LOCK TABLES `league` WRITE;
/*!40000 ALTER TABLE `league` DISABLE KEYS */;
INSERT INTO `league` VALUES ('AL','East',1);
/*!40000 ALTER TABLE `league` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offensive`
--

DROP TABLE IF EXISTS `offensive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offensive` (
  `o_role` varchar(2) NOT NULL,
  `games` int NOT NULL,
  `batting_avg` decimal(3,3) NOT NULL,
  `hr` int NOT NULL,
  `on_base` decimal(3,3) NOT NULL,
  `slg` decimal(3,3) NOT NULL,
  `ops` decimal(4,4) NOT NULL,
  `Players_p_id` int NOT NULL,
  `Players_p_name` varchar(50) NOT NULL,
  PRIMARY KEY (`Players_p_id`,`Players_p_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offensive`
--

LOCK TABLES `offensive` WRITE;
/*!40000 ALTER TABLE `offensive` DISABLE KEYS */;
INSERT INTO `offensive` VALUES ('1B',8,0.161,0,0.278,0.258,0.5360,1,'Edwin Encarnacion'),('2B',18,0.329,5,0.366,0.605,0.9710,1,'Jose Altuve'),('1B',1,0.000,0,0.000,0.000,0.0000,1,'Seth Brown'),('CF',9,0.176,1,0.263,0.265,0.5280,2,'Brett Gardner'),('RF',2,0.250,0,0.250,0.250,0.5000,2,'Jake Cave'),('LF',1,0.000,0,0.250,0.000,0.2500,2,'Mark Canha'),('3B',1,0.000,0,0.333,0.000,0.3300,2,'Mike Brosseau'),('LF',18,0.241,1,0.323,0.345,0.6680,2,'Yordan Alvarez'),('1B',2,0.200,0,0.333,0.200,0.5330,3,'CJ Cron'),('SS',9,0.273,1,0.314,0.394,0.7080,3,'Didi Gregorius'),('1B',6,0.188,1,0.435,0.375,0.8100,3,'Ji-Man Choi'),('3B',1,0.333,0,0.500,0.333,0.8330,3,'Matt Chapman'),('LF',18,0.286,1,0.367,0.329,0.6960,3,'Michael Brantley'),('CF',5,0.154,1,0.353,0.385,0.7380,4,'Aaron Hicks'),('3B',18,0.234,4,0.364,0.469,0.8330,4,'Alex Bregman'),('RF',1,0.000,0,0.000,0.000,0.0000,4,'Khris Davis'),('DH',3,0.200,1,0.429,0.500,0.9290,4,'Nelson Cruz'),('C',6,0.105,0,0.217,0.105,0.3220,4,'Travis D\'Arnaud'),('RF',9,0.265,1,0.390,0.353,0.7430,5,'Aaron Judge'),('C',3,0.167,0,0.231,0.167,0.3980,5,'Mitch Garver'),('C',14,0.146,3,0.222,0.390,0.6120,5,'Robinson Chirinos'),('SS',18,0.191,3,0.257,0.382,0.6390,6,'Carlos Correa'),('LF',3,0.273,0,0.273,0.364,0.6370,6,'Marwin Gonzalez'),('CF',1,0.333,0,0.250,0.333,0.5830,6,'Ramon Laureano'),('3B',4,0.231,2,0.231,0.692,0.9230,6,'Yandy Diaz'),('2B',8,0.000,0,0.100,0.000,0.1000,7,'Aledmys Diaz'),('RF',5,0.300,1,0.300,0.450,0.7500,7,'Avisail Garcia'),('CF',3,0.000,0,0.231,0.000,0.2310,7,'Max Kepler'),('C',1,0.000,0,0.000,0.000,0.0000,7,'Sean Murphy'),('LF',5,0.231,1,0.389,0.462,0.8510,8,'Giancarlo Stanton'),('SS',3,0.273,1,0.429,0.545,0.9740,8,'Jorge Polanco'),('CF',6,0.136,1,0.136,0.318,0.4540,8,'Kevin Kiermaier'),('1B',1,0.333,0,0.500,0.333,0.8330,8,'Matt Olson'),('1B',18,0.250,2,0.286,0.375,0.6610,8,'Yuli Gurriel'),('2B',5,0.211,1,0.250,0.421,0.6710,9,'Brandon Lowe'),('RF',3,0.308,1,0.308,0.615,0.9230,9,'Eddie Rosario'),('C',9,0.129,1,0.250,0.226,0.4760,9,'Gary Sanchez'),('C',1,0.000,0,0.000,0.000,0.0000,9,'Josh Phegley'),('C',7,0.300,1,0.333,0.500,0.8330,9,'Martin Maldonado'),('RF',6,0.130,0,0.231,0.217,0.4480,10,'Austin Meadows'),('CF',14,0.364,0,0.417,0.364,0.7810,10,'Jake Marisnick'),('3B',3,0.083,1,0.083,0.333,0.4160,10,'Miguel Sano'),('3B',9,0.242,2,0.286,0.455,0.7410,11,'Gio Urshela'),('2B',2,0.000,0,0.000,0.000,0.0000,11,'Jonathan Schoop'),('RF',14,0.167,1,0.211,0.250,0.4610,11,'Josh Reddick'),('SS',1,0.200,0,0.200,0.200,0.4000,11,'Marcus Semien'),('LF',6,0.360,2,0.385,0.600,0.9850,11,'Tommy Pham'),('CF',18,0.205,4,0.318,0.425,0.7430,12,'George Springer'),('2B',5,0.200,0,0.200,0.300,0.5000,13,'Joey Wendle'),('LF',9,0.167,0,0.333,0.167,0.5000,13,'Kyle Tucker');
/*!40000 ALTER TABLE `offensive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `players` (
  `p_id` int NOT NULL,
  `p_name` varchar(50) NOT NULL,
  `Team_t_id` int NOT NULL,
  `Team_t_name` varchar(50) NOT NULL,
  PRIMARY KEY (`p_id`,`p_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (1,'Edwin Encarnacion',4,'New York Yankees'),(1,'Jose Altuve',5,'Houston Astros'),(1,'Luis Arraez',3,'Minnesota Twins'),(1,'Seth Brown',2,'Oakland Athletics'),(1,'Willy Adames',1,'Tampa Bay Rays'),(2,'Brett Gardner',4,'New York Yankees'),(2,'Jake Cave',3,'Minnesota Twins'),(2,'Mark Canha',2,'Oakland Athletics'),(2,'Mike Brosseau',1,'Tampa Bay Rays'),(2,'Yordan Alvarez',5,'Houston Astros'),(3,'CJ Cron',3,'Minnesota Twins'),(3,'Didi Gregorius',4,'New York Yankees'),(3,'Ji-Man Choi',1,'Tampa Bay Rays'),(3,'Matt Chapman',2,'Oakland Athletics'),(3,'Michael Brantley',5,'Houston Astros'),(4,'Aaron Hicks',4,'New York Yankees'),(4,'Alex Bregman',5,'Houston Astros'),(4,'Khris Davis',2,'Oakland Athletics'),(4,'Nelson Cruz',3,'Minnesota Twins'),(4,'Travis D\'Arnaud',1,'Tampa Bay Rays'),(5,'Aaron Judge',4,'New York Yankees'),(5,'Matt Duffy',1,'Tampa Bay Rays'),(5,'Mitch Garver',3,'Minnesota Twins'),(5,'Robbie Grossman',2,'Oakland Athletics'),(5,'Robinson Chirinos',5,'Houston Astros'),(6,'Carlos Correa',5,'Houston Astros'),(6,'DJ LeMahieu',4,'New York Yankees'),(6,'Marwin Gonzalez',3,'Minnesota Twins'),(6,'Ramon Laureano',2,'Oakland Athletics'),(6,'Yandy Diaz',1,'Tampa Bay Rays'),(7,'Aledmys Diaz',5,'Houston Astros'),(7,'Avisail Garcia',1,'Tampa Bay Rays'),(7,'Cameron Maybin',4,'New York Yankees'),(7,'Max Kepler',3,'Minnesota Twins'),(7,'Sean Murphy',2,'Oakland Athletics'),(8,'Giancarlo Stanton',4,'New York Yankees'),(8,'Jorge Polanco',3,'Minnesota Twins'),(8,'Kevin Kiermaier',1,'Tampa Bay Rays'),(8,'Matt Olson',2,'Oakland Athletics'),(8,'Yuli Gurriel',5,'Houston Astros'),(9,'Brandon Lowe',1,'Tampa Bay Rays'),(9,'Eddie Rosario',3,'Minnesota Twins'),(9,'Gary Sanchez',4,'New York Yankees'),(9,'Josh Phegley',2,'Oakland Athletics'),(9,'Martin Maldonado',5,'Houston Astros'),(10,'Austin Meadows',1,'Tampa Bay Rays'),(10,'Gleyber Torres',4,'New York Yankees'),(10,'Jake Marisnick',5,'Houston Astros'),(10,'Jurickson Profar',2,'Oakland Athletics'),(10,'Miguel Sano',3,'Minnesota Twins'),(11,'Gio Urshela',4,'New York Yankees'),(11,'Jonathan Schoop',3,'Minnesota Twins'),(11,'Josh Reddick',5,'Houston Astros'),(11,'Marcus Semien',2,'Oakland Athletics'),(11,'Tommy Pham',1,'Tampa Bay Rays'),(12,'Eric Sogard',1,'Tampa Bay Rays'),(12,'George Springer',5,'Houston Astros'),(12,'Jake Diekman',2,'Oakland Athletics'),(12,'Jose Berrios',3,'Minnesota Twins'),(12,'Zack Britton',4,'New York Yankees'),(13,'Joey Wendle',1,'Tampa Bay Rays'),(13,'Kyle Tucker',5,'Houston Astros'),(13,'Laim Hendriks',2,'Oakland Athletics'),(13,'Luis Cessa',4,'New York Yankees'),(13,'Randy Dobnak',3,'Minnesota Twins'),(14,'Aroldis Chapman',4,'New York Yankees'),(14,'Gerrit Cole',5,'Houston Astros'),(14,'Jesus Luzardo',2,'Oakland Athletics'),(14,'Nick Anderson',1,'Tampa Bay Rays'),(14,'Tyler Duffey',3,'Minnesota Twins'),(15,'Chad Green',4,'New York Yankees'),(15,'Chris Devenski',5,'Houston Astros'),(15,'Diego Castillo',1,'Tampa Bay Rays'),(15,'Kyle Gibson',3,'Minnesota Twins'),(15,'Sean Manaea',2,'Oakland Athletics'),(16,'Brusdar Graterol',3,'Minnesota Twins'),(16,'J.A Happ',4,'New York Yankees'),(16,'Oliver Drake',1,'Tampa Bay Rays'),(16,'Yusmerio Petit',2,'Oakland Athletics'),(16,'Zack Greinke',5,'Houston Astros'),(17,'Tommy Kahnle',4,'New York Yankees'),(17,'Tyler Glasnow',1,'Tampa Bay Rays'),(17,'Will Harris',5,'Houston Astros'),(17,'Zack Littell',3,'Minnesota Twins'),(18,'Brendan McKay',1,'Tampa Bay Rays'),(18,'Jonathan Loaisiga',4,'New York Yankees'),(18,'Josh James',5,'Houston Astros'),(18,'Trevor May',3,'Minnesota Twins'),(19,'Charlie Morton',1,'Tampa Bay Rays'),(19,'Jake Odorizzi',3,'Minnesota Twins'),(19,'Roberto Osuna',5,'Houston Astros'),(19,'Tyler Lyons',4,'New York Yankees'),(20,'Adam Ottavino',4,'New York Yankees'),(20,'Brad Peacock',5,'Houston Astros'),(20,'Emilio Pagan',1,'Tampa Bay Rays'),(20,'Taylor Rogers',3,'Minnesota Twins'),(21,'Colin Poche',1,'Tampa Bay Rays'),(21,'James Paxton',4,'New York Yankees'),(21,'Ryan Pressly',5,'Houston Astros'),(21,'Sergio Romo',3,'Minnesota Twins'),(22,'CC Sabathia',4,'New York Yankees'),(22,'Chaz Roe',1,'Tampa Bay Rays'),(22,'Devin Smeltzer',3,'Minnesota Twins'),(22,'Hector Rondon',5,'Houston Astros'),(23,'Blake Snell',1,'Tampa Bay Rays'),(23,'Cody Stashak',3,'Minnesota Twins'),(23,'Joe Smith',5,'Houston Astros'),(23,'Luis Severino',4,'New York Yankees'),(24,'Jose Urquidy',5,'Houston Astros'),(24,'Masahiro Tanaka',4,'New York Yankees'),(24,'Ryan Yarbrough',1,'Tampa Bay Rays'),(25,'Justin Verlander',5,'Houston Astros');
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team` (
  `t_id` int NOT NULL,
  `t_name` varchar(50) NOT NULL,
  `League_l_id` int NOT NULL,
  PRIMARY KEY (`t_id`,`t_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (1,'Tampa Bay Rays',1),(2,'Oakland Athletics',1),(3,'Minnesota Twins',1),(4,'New York Yankees',1),(5,'Houston Astros',1);
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-30 11:38:59
