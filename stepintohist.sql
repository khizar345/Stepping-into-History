-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: stepping_into_history
-- ------------------------------------------------------
-- Server version	8.0.26
/*KHIZAR MUKHTIAR*/

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
-- Table structure for table `booked_course`
--

DROP TABLE IF EXISTS `booked_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booked_course` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `courses_id` int unsigned NOT NULL,
  `customer_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_id` (`courses_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `booked_course_ibfk_1` FOREIGN KEY (`courses_id`) REFERENCES `courses` (`id`),
  CONSTRAINT `booked_course_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booked_course`
--

LOCK TABLES `booked_course` WRITE;
/*!40000 ALTER TABLE `booked_course` DISABLE KEYS */;
INSERT INTO `booked_course` VALUES (1,2,1),(2,2,2),(3,2,3),(4,2,5),(5,6,20),(6,6,15),(7,3,4),(8,4,7),(9,4,9),(10,4,11),(11,4,8),(12,4,10),(13,5,13),(14,5,17),(15,5,16),(16,1,14),(17,1,19),(18,1,18),(19,1,6);
/*!40000 ALTER TABLE `booked_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booked_lecture`
--

DROP TABLE IF EXISTS `booked_lecture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booked_lecture` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `lecture_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  KEY `lecture_id` (`lecture_id`),
  CONSTRAINT `booked_lecture_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `booked_lecture_ibfk_2` FOREIGN KEY (`lecture_id`) REFERENCES `lecture` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booked_lecture`
--

LOCK TABLES `booked_lecture` WRITE;
/*!40000 ALTER TABLE `booked_lecture` DISABLE KEYS */;
INSERT INTO `booked_lecture` VALUES (1,1,2),(2,2,2),(3,3,2),(4,5,1),(5,8,3),(6,6,5),(7,7,4),(8,4,7),(9,14,8),(10,10,2),(11,13,7),(12,16,7),(13,19,5),(14,11,4),(15,15,3),(16,9,6),(17,20,6);
/*!40000 ALTER TABLE `booked_lecture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booked_tour`
--

DROP TABLE IF EXISTS `booked_tour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booked_tour` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `tour_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  KEY `tour_id` (`tour_id`),
  CONSTRAINT `booked_tour_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `booked_tour_ibfk_2` FOREIGN KEY (`tour_id`) REFERENCES `tour` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booked_tour`
--

LOCK TABLES `booked_tour` WRITE;
/*!40000 ALTER TABLE `booked_tour` DISABLE KEYS */;
INSERT INTO `booked_tour` VALUES (1,1,14),(2,2,14),(3,3,14),(4,4,14),(5,5,15),(6,6,16),(7,7,17),(8,8,18),(9,9,19),(10,10,19),(11,11,19),(12,12,19),(13,13,20),(14,14,21),(15,15,22),(16,16,26);
/*!40000 ALTER TABLE `booked_tour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books_order`
--

DROP TABLE IF EXISTS `books_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books_order` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `historical_books_id` int unsigned NOT NULL,
  `customer_id` int unsigned NOT NULL,
  `purchase_date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `historical_books_id` (`historical_books_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `books_order_ibfk_1` FOREIGN KEY (`historical_books_id`) REFERENCES `historical_books` (`id`),
  CONSTRAINT `books_order_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books_order`
--

LOCK TABLES `books_order` WRITE;
/*!40000 ALTER TABLE `books_order` DISABLE KEYS */;
INSERT INTO `books_order` VALUES (1,23,1,'2021-10-29'),(2,24,2,'2021-11-14'),(3,23,2,'2021-10-24'),(4,25,2,'2021-12-28'),(5,25,2,'2021-09-24'),(6,26,2,'2021-08-24'),(7,27,2,'2021-11-25'),(8,30,2,'2021-10-24'),(9,33,2,'2021-12-24'),(10,31,2,'2021-09-18'),(11,32,2,'2021-08-08'),(12,29,2,'2021-09-07'),(13,27,2,'2021-05-24'),(14,25,2,'2021-09-24'),(15,24,2,'2021-07-24'),(16,29,2,'2021-02-24'),(17,28,2,'2021-11-30');
/*!40000 ALTER TABLE `books_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `instructor_id` int unsigned NOT NULL,
  `tittle` varchar(30) NOT NULL,
  `start_date` date NOT NULL,
  `branch` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `instructor_id` (`instructor_id`),
  CONSTRAINT `courses_ibfk_2` FOREIGN KEY (`instructor_id`) REFERENCES `instructor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,2,'Ancient Civilization','2021-10-29','B009','New York'),(2,5,'Capitalism','2021-11-24','B007','Chicago'),(3,1,'Ancient Civilization','2021-10-29','B100','Scranton'),(4,4,'Introduction to Anthropology','2021-12-29','B008','Sacremento'),(5,6,'Archaeology Fundamentals','2022-01-29','B001','Louiseville'),(6,3,'History of Monetary Trade','2021-02-15','B006','Washington D.C.');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `courses_overview`
--

DROP TABLE IF EXISTS `courses_overview`;
/*!50001 DROP VIEW IF EXISTS `courses_overview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `courses_overview` AS SELECT 
 1 AS `Student`,
 1 AS `Student_Email`,
 1 AS `Student_DoB`,
 1 AS `Course_Tittle`,
 1 AS `Instrutor`,
 1 AS `Course_Starts`,
 1 AS `City`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `full_name` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `email` varchar(60) NOT NULL,
  `zip` mediumint unsigned NOT NULL,
  `gender` enum('M','F') DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Christopher Jones','347 Cedar St','christopherjones@bp.com',30044,'M','1958-09-11'),(2,'Matthew Martinez','602 Main Place','matthewmartinez@ge.com',92336,'M','1961-09-04'),(3,'Melissa Moore','463 Park Rd','melissamoore@aramark.com',8701,'M','1967-08-27'),(4,'Melissa Brown','712 View Ave','melissabrown@verizon.com',77084,'F','1948-06-14'),(5,'Jennifer Thomas','231 Elm St','jenniferthomas@aramark.com',78572,'F','1998-03-14'),(6,'Stephanie Martinez','386 Second St','stephaniemartinez@albertsons.com',8701,'M','1998-01-24'),(7,'Daniel Williams','107 Pine St','danielwilliams@tjx.com',77449,'F','1985-07-20'),(8,'Lauren Anderson','13 Maple Ave','laurenanderson@pepsi.com',92503,'F','1973-09-09'),(9,'Michael Jackson','818 Pine Ave','michaeljackson@disney.com',78572,'F','1951-03-03'),(10,'Ashley Johnson','874 Oak Ave','ashleyjohnson@boeing.com',91331,'F','1977-05-10'),(11,'Brittany Thomas','187 Maple Ave','brittanythomas@walmart.com',78521,'F','1986-10-22'),(12,'Tiffany Smith','123 Lake St','tiffanysmith@ups.com',78521,'F','1950-06-16'),(13,'Lauren Wilson','942 Fifth Ave','laurenwilson@target.com',78572,'M','1965-12-26'),(14,'Justin Smith','844 Lake Ave','justinsmith@boeing.com',30044,'F','1956-03-16'),(15,'Jessica Garcia','123 Pine Place','jessicagarcia@toyota.com',92336,'F','1996-08-05'),(16,'Matthew Jackson','538 Cedar Ave','matthewjackson@bp.com',77449,'M','1996-02-26'),(17,'Stephanie Thomas','804 Fourth Place','stephaniethomas@apple.com',78521,'F','1988-08-26'),(18,'Jessica Jackson','235 Pine Place','jessicajackson@aramark.com',60629,'F','1991-07-22'),(19,'James Martinez','831 Oak St','jamesmartinez@kroger.com',78521,'F','1987-12-22'),(20,'Christopher Robinson','754 Cedar St','christopherrobinson@ibm.com',78577,'F','1972-06-25');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genology_test`
--

DROP TABLE IF EXISTS `genology_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genology_test` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `facility` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `zip` mediumint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `genology_test_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genology_test`
--

LOCK TABLES `genology_test` WRITE;
/*!40000 ALTER TABLE `genology_test` DISABLE KEYS */;
INSERT INTO `genology_test` VALUES (1,2,'Umberella Corp','London',2610),(2,5,'Umberella Corp','London',2610),(3,7,'Stark Industries','New York',3650),(4,11,'Johnson & Johnsons','Little Rock',4590),(5,1,'Umberella Corp','London',2610),(6,12,'Stark Industries','New York',3650),(7,9,'Umberella Corp','London',2610);
/*!40000 ALTER TABLE `genology_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guide`
--

DROP TABLE IF EXISTS `guide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guide` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `full_name` varchar(30) NOT NULL,
  `email` varchar(60) NOT NULL,
  `gender` enum('M','F') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guide`
--

LOCK TABLES `guide` WRITE;
/*!40000 ALTER TABLE `guide` DISABLE KEYS */;
INSERT INTO `guide` VALUES (1,'Christopher Wallace','christopher@bp.com','M'),(2,'Thomas Shelby','shelby@peaky.com','M'),(3,'Micheal Scott','micheal@mifflin.com','M'),(4,'David Wallace','david@dunder.com','M'),(5,'Lena Grey','lena@gmail.com','F'),(6,'Stephanie Marvel','stephanie@comicon.com','F'),(7,'Bruce Wayne','wayne@billionaire.com','M'),(8,'Lauren Potter','laurenpott@hogwarts.com','M'),(9,'Richard Nixon','nixon@usa.com','M'),(10,'Pheobe Buffet','pheobe@centralperk.com','F'),(11,'Brittany Amber','brittany@derby.com','F'),(12,'Elaine Benes','elaine@amazon.com','F'),(13,'Lauren James','tiffanyj@netflix.com','F');
/*!40000 ALTER TABLE `guide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historical_books`
--

DROP TABLE IF EXISTS `historical_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historical_books` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ISBN` bigint unsigned NOT NULL,
  `tittle` varchar(100) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `publisher` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historical_books`
--

LOCK TABLES `historical_books` WRITE;
/*!40000 ALTER TABLE `historical_books` DISABLE KEYS */;
INSERT INTO `historical_books` VALUES (23,9780393317558,'Guns, Germs, and Steel','Jared Diamond','W. W. Norton‎'),(24,9781400040063,'1491: New Revelations of the Americas Before Columbus','Charles C. Mann','Knopf‎'),(25,9788073417765,'Genghis Khan and the Making of the Modern World','Jack Weatherford','Crown and Three Rivers Press'),(26,9780062316097,'Sapiens: A Brief History of Humankind','Yuval Noah Harari','HarperCollins Publishers'),(27,9781408839973,'The Silk Roads: A New History of the World','Peter Frankopan','Bloomsbury'),(28,9780062397348,'A People\'s History of the United States','Howard Zinn','HarperCollins Publishers‎'),(29,9780060787288,'The Crusades: The Authoritative History of the War for the Holy Land','Thomas Asbridge','Ecco Press'),(30,9780151355372,'The History of the Decline and Fall of the Roman Empire; Volume 3','Edward Gibbon','Strahan & Cadell'),(31,9781451651683,'The Rise and Fall of the Third Reich','William L. Shirer','Simon & Schuster'),(32,9780140444780,'The Communist Manifesto','Karl Marx and ‎Friedrich Engels','Simon & Schuster'),(33,9780691099460,'Muqaddimah','Ibn Khaldun','Pantheon Books');
/*!40000 ALTER TABLE `historical_books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `historical_books_orders`
--

DROP TABLE IF EXISTS `historical_books_orders`;
/*!50001 DROP VIEW IF EXISTS `historical_books_orders`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `historical_books_orders` AS SELECT 
 1 AS `Customer`,
 1 AS `Book`,
 1 AS `Author`,
 1 AS `Customer_Email`,
 1 AS `Customer_Address`,
 1 AS `Purchase_Date`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `instructor`
--

DROP TABLE IF EXISTS `instructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instructor` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `full_name` varchar(30) NOT NULL,
  `email` varchar(60) NOT NULL,
  `gender` enum('M','F') DEFAULT NULL,
  `speciality` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructor`
--

LOCK TABLES `instructor` WRITE;
/*!40000 ALTER TABLE `instructor` DISABLE KEYS */;
INSERT INTO `instructor` VALUES (1,'Samuel Jacson','samuel@gmail.com','M','Analysis and Use of Sources'),(2,'Miranda Kerr','kerr@hotmail.com','F','Chronology'),(3,'Mark Zuckerberg','zuckmark@gmail.com','M','Perspectives and Interpretations'),(4,'Monica Geller','geller@yahoo.com','F','Anthropology'),(5,'Leonardo DeCaprio','caprio@gmail.com','M','Sociology'),(6,'Warren Buffet','w.buffet@yahoo.com','M','Prehistoric Archaeology');
/*!40000 ALTER TABLE `instructor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lecture`
--

DROP TABLE IF EXISTS `lecture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lecture` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `lecturer_id` int unsigned NOT NULL,
  `topic` varchar(30) NOT NULL,
  `venue` varchar(30) NOT NULL,
  `lecture_date` date NOT NULL,
  `address` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `lecturer_id` (`lecturer_id`),
  KEY `lecture_index` (`topic`,`venue`,`city`),
  CONSTRAINT `lecture_ibfk_2` FOREIGN KEY (`lecturer_id`) REFERENCES `lecturer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lecture`
--

LOCK TABLES `lecture` WRITE;
/*!40000 ALTER TABLE `lecture` DISABLE KEYS */;
INSERT INTO `lecture` VALUES (1,2,'Seljuk Turks','Havemeyer Hall','2021-12-22','3000 Broadway','New York'),(2,1,'Renaissance','Royal Albert Hall','2022-02-22','Kensington','London'),(3,2,'Genghes Khan','DR Koncerthuset','2022-01-15','Orestads Blvd','Copenhagen'),(4,5,'World War','Tonhalle Dusseldorf','2021-12-18','Ehrenhof 1','Dusseldorf'),(5,3,'Holocaust','The Concertgebouw','2022-09-03','Concertgebouwplein 10','Amsterdam'),(6,7,'Pre-Mughal India','Wiener Royal Orchester','2022-09-22','Haus der Industrie','Vienna'),(7,4,'The Dark Ages','Central Hall','2021-12-22','2 W Tollcross','Edinburgh '),(8,6,'Communism','Paris Philharmonic','2021-10-22',' 221 Av. Jean Jaures','Paris');
/*!40000 ALTER TABLE `lecture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `lecture_overview`
--

DROP TABLE IF EXISTS `lecture_overview`;
/*!50001 DROP VIEW IF EXISTS `lecture_overview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `lecture_overview` AS SELECT 
 1 AS `Attendee`,
 1 AS `Attendee_Email`,
 1 AS `Lecture`,
 1 AS `Lecturer`,
 1 AS `Lecturer_Speciality`,
 1 AS `Venue`,
 1 AS `City`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `lecturer`
--

DROP TABLE IF EXISTS `lecturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lecturer` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `full_name` varchar(30) NOT NULL,
  `email` varchar(60) NOT NULL,
  `gender` enum('M','F') DEFAULT NULL,
  `speciality` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lecturer`
--

LOCK TABLES `lecturer` WRITE;
/*!40000 ALTER TABLE `lecturer` DISABLE KEYS */;
INSERT INTO `lecturer` VALUES (1,'Nial Ferguson','nial@gmail.com','M','International History'),(2,'Timothy D. Snyder','timothysyder@hotmail.com','M','Central and Eastern Europe History'),(3,'Simon Schama','simon@gmail.com','M','Art, Dutch, and Jewish History'),(4,'Eamon Duffy','eamon@yahoo.com','M','Religous History of Britain'),(5,'Anthony Beevor','anthony@gmail.com','M','Military History'),(6,'Robert C. Allen','robertallen@yahoo.com','M','Economic History'),(7,'Romila Thapar','thaparromila@gmail.com','F','Ancient India');
/*!40000 ALTER TABLE `lecturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `literature`
--

DROP TABLE IF EXISTS `literature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `literature` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `institute` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `literature_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `literature`
--

LOCK TABLES `literature` WRITE;
/*!40000 ALTER TABLE `literature` DISABLE KEYS */;
INSERT INTO `literature` VALUES (1,3,'NYU','NY 10003','New York City','USA'),(2,5,'Cairo University','12613 Cairo Uni Road','Cairo','Egypt');
/*!40000 ALTER TABLE `literature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `magazine_subscription`
--

DROP TABLE IF EXISTS `magazine_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `magazine_subscription` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `Magazine_Tittle` varchar(30) DEFAULT NULL,
  `start_date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `magazine_subscription_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `magazine_subscription`
--

LOCK TABLES `magazine_subscription` WRITE;
/*!40000 ALTER TABLE `magazine_subscription` DISABLE KEYS */;
INSERT INTO `magazine_subscription` VALUES (1,1,'Ancient Gallery','2021-11-20'),(2,3,'Sculptures','2021-12-02'),(3,4,'Ancient Ornaments','2021-09-05'),(4,5,'Mughals Kitchen','2021-08-09'),(5,10,'Greek Architecture','2021-09-15'),(6,14,'Evolution','2021-12-18'),(7,14,'The Silk Road','2021-11-24'),(8,19,'Tsars','2022-01-20'),(9,8,'Evolution of Fashion','2021-05-20');
/*!40000 ALTER TABLE `magazine_subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour`
--

DROP TABLE IF EXISTS `tour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tour` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `guide_id` int unsigned NOT NULL,
  `departure` varchar(100) DEFAULT NULL,
  `destination` varchar(100) DEFAULT NULL,
  `departure_date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `guide_id` (`guide_id`),
  CONSTRAINT `tour_ibfk_2` FOREIGN KEY (`guide_id`) REFERENCES `guide` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour`
--

LOCK TABLES `tour` WRITE;
/*!40000 ALTER TABLE `tour` DISABLE KEYS */;
INSERT INTO `tour` VALUES (14,1,'Victoria Station London','Taj Mahal','2021-12-28'),(15,2,'Clapham Junction London','Pyramids of Giza','2022-01-28'),(16,3,'Copenhagen Airport','Machu Picchul','2022-03-14'),(17,4,'Stopera Amsterdam','Bagan','2021-12-31'),(18,5,'Brandenburg Gate Berlin','Angkor Wat','2021-11-24'),(19,6,'Bosporus Istanbul','Great Wall of China','2022-02-28'),(20,7,'Zytglogge Bern','Roman Colosseum','2022-02-03'),(21,8,'Field Museum Chicago','Acropolis','2022-05-28'),(22,9,'Santa Monica Pier Los Angeles','Stonehenge','2021-11-04'),(23,10,'Moscow Metro','Borobudur','2022-02-14'),(24,11,'Calgary Tower','Mesa Verde','2021-12-01'),(25,12,'University of Toronto','Terracotta Army','2021-11-17'),(26,13,'Madrid Train Station','Petra','2021-10-20');
/*!40000 ALTER TABLE `tour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `courses_overview`
--

/*!50001 DROP VIEW IF EXISTS `courses_overview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `courses_overview` AS select `customer`.`full_name` AS `Student`,`customer`.`email` AS `Student_Email`,`customer`.`date_of_birth` AS `Student_DoB`,`courses`.`tittle` AS `Course_Tittle`,`instructor`.`full_name` AS `Instrutor`,`courses`.`start_date` AS `Course_Starts`,`courses`.`city` AS `City` from (((`booked_course` join `customer` on((`booked_course`.`customer_id` = `customer`.`id`))) join `courses` on((`booked_course`.`courses_id` = `courses`.`id`))) join `instructor` on((`courses`.`instructor_id` = `instructor`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `historical_books_orders`
--

/*!50001 DROP VIEW IF EXISTS `historical_books_orders`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `historical_books_orders` AS select `customer`.`full_name` AS `Customer`,`historical_books`.`tittle` AS `Book`,`historical_books`.`author` AS `Author`,`customer`.`email` AS `Customer_Email`,`customer`.`address` AS `Customer_Address`,`books_order`.`purchase_date` AS `Purchase_Date` from ((`books_order` join `customer` on((`books_order`.`customer_id` = `customer`.`id`))) join `historical_books` on((`books_order`.`historical_books_id` = `historical_books`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `lecture_overview`
--

/*!50001 DROP VIEW IF EXISTS `lecture_overview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `lecture_overview` AS select `customer`.`full_name` AS `Attendee`,`customer`.`email` AS `Attendee_Email`,`lecture`.`topic` AS `Lecture`,`lecturer`.`full_name` AS `Lecturer`,`lecturer`.`speciality` AS `Lecturer_Speciality`,`lecture`.`venue` AS `Venue`,`lecture`.`city` AS `City` from (((`booked_lecture` join `customer` on((`booked_lecture`.`customer_id` = `customer`.`id`))) join `lecture` on((`booked_lecture`.`lecture_id` = `lecture`.`id`))) join `lecturer` on((`lecture`.`lecturer_id` = `lecturer`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-02  7:59:41
