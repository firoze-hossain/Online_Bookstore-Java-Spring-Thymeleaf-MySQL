-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bookstore
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `billing_address`
--

DROP TABLE IF EXISTS `billing_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `billing_address` (
  `id` bigint NOT NULL,
  `billing_address_city` varchar(255) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `billing_address_division` varchar(255) DEFAULT NULL,
  `billing_address_name` varchar(255) DEFAULT NULL,
  `billing_address_street1` varchar(255) DEFAULT NULL,
  `billing_address_street2` varchar(255) DEFAULT NULL,
  `billing_address_zipcode` varchar(255) DEFAULT NULL,
  `order_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKjg6ji2vsfuqlc9vhvy4yi449h` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billing_address`
--

LOCK TABLES `billing_address` WRITE;
/*!40000 ALTER TABLE `billing_address` DISABLE KEYS */;
INSERT INTO `billing_address` VALUES (33,'Uttara',NULL,'DH','Md. Firoze Hossain','Road-12/A, House-01, Sector-10, Uttara','','1230',32),(46,'Uttara',NULL,'DH','Md. Firoze Hossain','House-50, Road-Kaliyartak mosid road, Uttara-1230','12/C','1230',45),(69,'Uttara',NULL,'DH','Md. Firoze Hossain','House-50, Road-Kaliyartak mosid road, Uttara-1230','12/C','1230',68),(75,'Uttara',NULL,'DH','Md. Firoze Hossain','Road-12/A, House-01, Sector-10, Uttara','','1230',74);
/*!40000 ALTER TABLE `billing_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `id` bigint NOT NULL,
  `active` bit(1) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `description` text,
  `format` varchar(255) DEFAULT NULL,
  `in_stock_number` int NOT NULL,
  `isbn` int NOT NULL,
  `language` varchar(255) DEFAULT NULL,
  `list_price` double NOT NULL,
  `number_of_pages` int NOT NULL,
  `our_price` double NOT NULL,
  `publication_date` varchar(255) DEFAULT NULL,
  `publisher` varchar(255) DEFAULT NULL,
  `shipping_weight` double NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (18,_binary '','Joshua Bloch','Programming','<p>In this new edition of Effective Java, Bloch explores new design patterns and language idioms that have been introduced since the second edition was released in 2008 shortly after Java SE6, including Lambda, streams, generics and collections, as well as selected Java 9 features.</p>','paperback',14,134685997,'english',54.23,416,27.3,'2017-12-27','Addison-Wesley Professional',1.5,'Effective Java 3rd Edition'),(19,_binary '',' Mr. Darren Douglas Reinke','Management','<p>In today&rsquo;s world, it takes more than being a great decision maker, strategic thinker, and risk manager. It takes mastering the inner game to become a &ldquo;Savage Leader.&rdquo; In this book, Darren Reinke will show you how by guiding you through 13 key principles that will help you develop and master the inner qualities and traits you need to become a leader.</p>','paperback',10,1736117904,'english',16.86,161,14.22,'2021-01-04','Group Sixty Publishing',7.5,'The Savage Leader: 13 Principles to Become a Better Leader from the Inside Out'),(20,_binary '',' Glendy Vanderah ','Fiction','<p>After the loss of her mother and her own battle with breast cancer, Joanna Teale returns to her graduate research on nesting birds in rural Illinois, determined to prove that her recent hardships have not broken her. She throws herself into her work from dusk to dawn, until her solitary routine is disrupted by the appearance of a mysterious child who shows up at her cabin barefoot and covered in bruises.</p>','hardcover',9,1503904911,'english',14.95,332,9.5,'2019-03-01','Lake Union Publishing',11.8,'Where the Forest Meets the Stars'),(21,_binary '','David Macaulay ','Engineering','<p>Explainer-in-Chief David Macaulay updates the worldwide bestseller The New Way Things Work to capture the latest developments in the technology that most impacts our lives. Famously packed with information on the inner workings of everything from windmills to Wi-Fi, this extraordinary and humorous book both guides readers through the fundamental principles of machines, and shows how the developments of the past are building the world of tomorrow.&nbsp;</p>','hardcover',8,544824385,'english',35,400,22.5,'2016-10-04','HMH Books for Young Readers',3.6,'The Way Things Work Now '),(22,_binary '','Oscar Wilde','Arts & Literature','<p>Wilde&rsquo;s only novel, first published in 1890, is a brilliantly designed puzzle, intended to tease conventional minds with its exploration of the myriad interrelationships between art, life and consequence. From its provocative Preface, challenging the reader to belief in &lsquo;art for art&rsquo;s sake&rsquo;, to its sensational conclusion, the story self-consciously experiments with the notion of sin as an element of design.</p>','hardcover',15,1548697,'english',9.86,112,8.44,'2021-03-08','Big Cheese Books',1.3,'The Picture of Dorian Gray'),(23,_binary '','Mainul Raju','Programming','<p>প্রোগ্রামিং প্রমাণ করে ব্যক্তিটির বিশ্লেষণী ক্ষমতা আছে, ধৈর্য আছে, একাগ্রতা আছে, ইচ্ছা আছে; সর্বোপরি সমস্যা সমাধান করার সক্ষমতা আছে। অতএব প্রোগ্রামারের লেখা প্রোগ্রামটিই তার সার্টিফিকেট। মাইক্রোসফট, গুগল কিংবা ফেসবুকের মতো বড় কোম্পানির জন্য কাজ করেন এ রকম অনেকেই আছেন, যাদের কখনোই কোনো সার্টিফিকেট ছিল না; অসংখ্য ছোট ছোট কোম্পানির কথা তো বাদই দিলাম।&nbsp;</p>','hardcover',46,12138723,'spanish',13.3,126,10,'2020-06-10','Adarsha',2.16,'গল্পে স্বল্পে প্রোগ্রামিং'),(24,_binary '','Ulrich Renz','Fiction','<p>হান্স ক্রিশ্চিয়ান অ্যান্ডারসনের বন্য রাজহাঁস, বিশ্বের সবচেয়ে জনপ্রিয় রূপকথাগুলোর মধ্যে একটি। এটি নিরবচ্ছিন্নভাবে মানুষের নাটকীয় বিষয়গুলোঃ ভয়, বীরত্ব, প্রেম, বিশ্বাসঘাতকতা, বিচ্ছেদ, এবং পুনর্মিলনকে একসাথে আনে।</p>','paperback',46,236854,'english',9.95,40,6.67,'2019-11-01','Sefa',1.25,'The Wild Swans – বন্য রাজহাঁস '),(25,_binary '','Ali Haidar Khan','Management','<p>কমবেশি আমরা সবাই ফাইন্যান্স শব্দটির সাথে পরিচিত। কিন্তু অর্থবিজ্ঞান শব্দটির সাথে কি আমরা ততটা পরিচিত? সম্ভবত না! অথচ ফাইন্যান্স এবং অর্থবিজ্ঞানের মানে একই&mdash; একটা ইংরেজি অন্যটা বাংলা। তাই ফাইন্যান্সের চর্চা এদেশে যতটা হয়, অর্থবিজ্ঞানের চর্চা ততটা হয় না।</p>','hardcover',3,11103214,'spanish',23,114,17,'2020-06-09','Adarsha',6.3,'অথর্বিজ্ঞানে হাতেখড়ি'),(26,_binary '','Mostak Sharif','Engineering','<p>এইচপি, অ্যাপল, মাইক্রোসফট &mdash; এসব নাম কীভাবে এল? কে তৈরি করেছিলেন জনপ্রিয় সব প্রোগ্রাম, কোন পরিস্থিতিতে? একুশ শতক পেরিয়ে আগামী দিনগুলোতে কম্পিউটারের চেহারা কেমন দাঁড়াবে? এমন নানা প্রশ্ন ঘুরপাক খায় কৌতূহলী মানুষের মনে। এসব প্রশ্নের একটি অংশের উত্তর দেয়ার তাগিদ থেকে এই বই।</p>','paperback',18,11897415,'spanish',41,99,31.23,'2020-06-12','Adarsha',4.2,'প্রযুক্তির যত মজার তথ্য'),(27,_binary '','স্যাম হ্যারিস, মাজিদ নেওয়াজ','Arts & Literature','<p>ধর্মান্ধতা ও ধর্মকে ব্যঙ্গ করা এবং ইসলাম ধর্ম ও ইসলামী দর্শনের মতবাদ ব্যাখ্যা</p>','hardcover',57,49402082,'spanish',2.1,147,1.8,'2020-01-01','বাবুই প্রকাশনী',1.96,'ইসলাম অ্যান্ড দ্য ফিউচার অফ টলারেন্স'),(78,_binary '','Joshua Bloch','Management','','hardcover',0,0,'spanish',0,0,0,'2021-03-19','Addison-Wesley Professional',0,'Effective Java 3rd Edition');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_to_cart_item`
--

DROP TABLE IF EXISTS `book_to_cart_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_to_cart_item` (
  `id` bigint NOT NULL,
  `book_id` bigint DEFAULT NULL,
  `cart_item_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK254kg9aacrs8uqa93ijc3garu` (`book_id`),
  KEY `FKbdyqr108hc7c06xtem0dhv9mk` (`cart_item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_to_cart_item`
--

LOCK TABLES `book_to_cart_item` WRITE;
/*!40000 ALTER TABLE `book_to_cart_item` DISABLE KEYS */;
INSERT INTO `book_to_cart_item` VALUES (29,19,28),(31,24,30),(42,26,41),(44,27,43),(65,26,64),(67,25,66),(73,23,72),(92,18,91),(94,18,93),(96,19,95);
/*!40000 ALTER TABLE `book_to_cart_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_item`
--

DROP TABLE IF EXISTS `cart_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_item` (
  `id` bigint NOT NULL,
  `qty` int NOT NULL,
  `subtotal` decimal(19,2) DEFAULT NULL,
  `book_id` bigint DEFAULT NULL,
  `order_id` bigint DEFAULT NULL,
  `shopping_cart_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKis5hg85qbs5d91etr4mvd4tx6` (`book_id`),
  KEY `FKen9v41ihsnhcr0i7ivsd7i84c` (`order_id`),
  KEY `FKe89gjdx91fxnmkkssyoim8xfu` (`shopping_cart_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_item`
--

LOCK TABLES `cart_item` WRITE;
/*!40000 ALTER TABLE `cart_item` DISABLE KEYS */;
INSERT INTO `cart_item` VALUES (28,1,14.22,19,32,NULL),(30,1,6.67,24,32,NULL),(41,1,31.23,26,45,NULL),(43,1,1.80,27,45,NULL),(64,5,156.15,26,NULL,62),(66,3,51.00,25,68,NULL),(72,1,10.00,23,74,NULL),(91,1,27.30,18,NULL,3),(93,1,27.30,18,NULL,10),(95,1,14.22,19,NULL,10);
/*!40000 ALTER TABLE `cart_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (97);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_token`
--

DROP TABLE IF EXISTS `password_reset_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_token` (
  `id` bigint NOT NULL,
  `expiry_date` datetime DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5lwtbncug84d4ero33v3cfxvl` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_token`
--

LOCK TABLES `password_reset_token` WRITE;
/*!40000 ALTER TABLE `password_reset_token` DISABLE KEYS */;
INSERT INTO `password_reset_token` VALUES (11,'2021-03-09 18:38:51','b35bab5a-0583-4920-99d9-be3568eb02b2',8),(59,'2021-03-09 21:06:36','d1fc24c6-e916-4754-9b48-b3f8856dfc68',56),(63,'2021-03-09 21:07:17','086038fd-b8f1-4904-9e43-3477647113ed',60),(83,'2021-03-09 21:51:28','ce34ea38-4669-45db-97e0-6cec7096bd5c',80),(87,'2021-03-09 21:52:31','3fa0ee5d-17c1-4bc8-a49f-1e2b99d18d9a',84);
/*!40000 ALTER TABLE `password_reset_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `id` bigint NOT NULL,
  `card_name` varchar(255) DEFAULT NULL,
  `card_number` varchar(255) DEFAULT NULL,
  `cvc` int NOT NULL,
  `expiry_month` int NOT NULL,
  `expiry_year` int NOT NULL,
  `holder_name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `order_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKt7a73xusjdnnsuespcitb683h` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (34,NULL,'12459873',23,1,2021,'Md. Firoze Hossain','visa',32),(47,NULL,'985237115',94,1,2021,'Md. Firoze Hossain','visa',45),(70,NULL,'985237115',94,1,2021,'Md. Firoze Hossain','visa',68),(76,NULL,'12459873',23,1,2021,'Md. Firoze Hossain','visa',74);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `role_id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ROLE_USER'),(0,'ROLE_ADMIN');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_address`
--

DROP TABLE IF EXISTS `shipping_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipping_address` (
  `id` bigint NOT NULL,
  `shipping_address_city` varchar(255) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_division` varchar(255) DEFAULT NULL,
  `shipping_address_name` varchar(255) DEFAULT NULL,
  `shipping_address_street1` varchar(255) DEFAULT NULL,
  `shipping_address_street2` varchar(255) DEFAULT NULL,
  `shipping_address_zipcode` varchar(255) DEFAULT NULL,
  `order_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKatbgaqk1hhhhkyyuebylpeh7q` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_address`
--

LOCK TABLES `shipping_address` WRITE;
/*!40000 ALTER TABLE `shipping_address` DISABLE KEYS */;
INSERT INTO `shipping_address` VALUES (35,'Uttara',NULL,'DH','Md. Firoze Hossain','Road-12/A, House-01, Sector-10, Uttara','','1230',32),(48,'Uttara',NULL,'DH','Md. Firoze Hossain','House-50, Road-Kaliyartak mosid road, Uttara-1230','12/C','1230',45),(71,'Uttara',NULL,'DH','Md. Firoze Hossain','House-50, Road-Kaliyartak mosid road, Uttara-1230','12/C','1230',68),(77,'Uttara',NULL,'DH','Md. Firoze Hossain','Road-12/A, House-01, Sector-10, Uttara','','1230',74);
/*!40000 ALTER TABLE `shipping_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopping_cart`
--

DROP TABLE IF EXISTS `shopping_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopping_cart` (
  `id` bigint NOT NULL,
  `grand_total` decimal(19,2) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK254qp5akhuaaj9n5co4jww3fk` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopping_cart`
--

LOCK TABLES `shopping_cart` WRITE;
/*!40000 ALTER TABLE `shopping_cart` DISABLE KEYS */;
INSERT INTO `shopping_cart` VALUES (3,0.00,1),(10,41.52,8),(58,NULL,56),(62,156.15,60),(82,NULL,80),(86,NULL,84);
/*!40000 ALTER TABLE `shopping_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL,
  `email` varchar(255) NOT NULL,
  `enabled` bit(1) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'roze6064@gmail.com',_binary '','Firoze','Hossain','$2a$12$LtbYtEzOBdnsiD/E9Wtj2OZogNnXdgy/4DWJr3ZV5PSCkTwdxNaOS',NULL,'roze'),(4,'admin@gmail.com',_binary '',NULL,NULL,'$2a$12$LtbYtEzOBdnsiD/E9Wtj2OZogNnXdgy/4DWJr3ZV5PSCkTwdxNaOS',NULL,'admin'),(8,'firoze2428@hotmail.com',_binary '','Md. Firoze','Hossain','$2a$12$LtbYtEzOBdnsiD/E9Wtj2OvfJc6ipTW7zGwAOVwot2vhfljodmrIq',NULL,'firoze'),(56,'rayhan.iplinkisp@gmail.com',_binary '',NULL,NULL,'$2a$12$LtbYtEzOBdnsiD/E9Wtj2OM1K0vZxo53NSsPFj3ymzhUzUxRWjKZK',NULL,'ray'),(60,'firoze2428@protonmail.ch',_binary '','Md. Firoze','Hossain','$2a$12$LtbYtEzOBdnsiD/E9Wtj2OEpK7kd3L7dHa5VoIzukKvjBWlReBAAW',NULL,'r'),(80,'millat.techvill@gmail.com',_binary '',NULL,NULL,'$2a$12$LtbYtEzOBdnsiD/E9Wtj2Ogf8kAT0INLPSakwksrTIJ89MF.c9Uw.',NULL,'millat'),(84,'ektahabijabi@hotmail.com',_binary '',NULL,NULL,'$2a$12$LtbYtEzOBdnsiD/E9Wtj2Ox5iFb1/yW/Yl.QiywFkSGgShXJv//h2',NULL,'firoze2428@protonmail.ch');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_billing`
--

DROP TABLE IF EXISTS `user_billing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_billing` (
  `id` bigint NOT NULL,
  `user_billing_city` varchar(255) DEFAULT NULL,
  `user_billing_country` varchar(255) DEFAULT NULL,
  `user_billing_division` varchar(255) DEFAULT NULL,
  `user_billing_name` varchar(255) DEFAULT NULL,
  `user_billing_street1` varchar(255) DEFAULT NULL,
  `user_billing_street2` varchar(255) DEFAULT NULL,
  `user_billing_zipcode` varchar(255) DEFAULT NULL,
  `user_payment_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3v6hd7snyc3g9s72u41k1fydu` (`user_payment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_billing`
--

LOCK TABLES `user_billing` WRITE;
/*!40000 ALTER TABLE `user_billing` DISABLE KEYS */;
INSERT INTO `user_billing` VALUES (7,'Uttara',NULL,'DH','Md. Firoze Hossain','Road-12/A, House-01, Sector-10, Uttara','','1230',6),(13,'Uttara',NULL,'DH','Md. Firoze Hossain','Road-12/A, House-01, Sector-10, Uttara','','1230',12),(37,'iiio',NULL,'BA','tuktak','uu','uu','12',36),(38,'iiio',NULL,'BA','tuktak','12l','uu','12',36),(54,'ju',NULL,'MY','j7iit','i8p09','','1225',53),(55,'ju',NULL,'MY','j7iit','star','','1225',53);
/*!40000 ALTER TABLE `user_billing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_order`
--

DROP TABLE IF EXISTS `user_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_order` (
  `id` bigint NOT NULL,
  `order_date` datetime DEFAULT NULL,
  `order_status` varchar(255) DEFAULT NULL,
  `order_total` decimal(19,2) DEFAULT NULL,
  `shipping_date` datetime DEFAULT NULL,
  `shipping_method` varchar(255) DEFAULT NULL,
  `billing_address_id` bigint DEFAULT NULL,
  `payment_id` bigint DEFAULT NULL,
  `shipping_address_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbaytj4l2p74kc5dp2dcrhucjo` (`billing_address_id`),
  KEY `FKqjg5jrh5qwnhl2f9lk7n77454` (`payment_id`),
  KEY `FKo2lj94xaujs1se8whlhc37nj7` (`shipping_address_id`),
  KEY `FKj86u1x7csa8yd68ql2y1ibrou` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_order`
--

LOCK TABLES `user_order` WRITE;
/*!40000 ALTER TABLE `user_order` DISABLE KEYS */;
INSERT INTO `user_order` VALUES (32,'2021-03-08 19:50:18','created',20.89,NULL,'groundShipping',33,34,35,8),(45,'2021-03-08 20:36:55','created',33.03,NULL,'groundShipping',46,47,48,8),(68,'2021-03-08 21:11:44','created',51.00,NULL,'groundShipping',69,70,71,8),(74,'2021-03-08 21:40:12','created',10.00,NULL,'groundShipping',75,76,77,8);
/*!40000 ALTER TABLE `user_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_payment`
--

DROP TABLE IF EXISTS `user_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_payment` (
  `id` bigint NOT NULL,
  `card_name` varchar(255) DEFAULT NULL,
  `card_number` varchar(255) DEFAULT NULL,
  `cvc` int NOT NULL,
  `default_payment` bit(1) NOT NULL,
  `expiry_month` int NOT NULL,
  `expiry_year` int NOT NULL,
  `holder_name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8fb9fr82lb1qk2cw55ito9rk6` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_payment`
--

LOCK TABLES `user_payment` WRITE;
/*!40000 ALTER TABLE `user_payment` DISABLE KEYS */;
INSERT INTO `user_payment` VALUES (6,'Aqua','125897634872',23,_binary '\0',11,23,'Md. Firoze Hossain','ebl',1),(12,'Aqua','12459873',23,_binary '',12,25,'Md. Firoze Hossain','ebl',8);
/*!40000 ALTER TABLE `user_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `user_role_id` bigint NOT NULL,
  `role_id` int DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`user_role_id`),
  KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`),
  KEY `FK859n2jvi8ivhui0rl0esws6o` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (2,1,1),(5,0,4),(9,1,8),(57,1,56),(61,1,60),(81,1,80),(85,1,84);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_shipping`
--

DROP TABLE IF EXISTS `user_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_shipping` (
  `id` bigint NOT NULL,
  `user_shipping_city` varchar(255) DEFAULT NULL,
  `user_shipping_country` varchar(255) DEFAULT NULL,
  `user_shipping_default` bit(1) NOT NULL,
  `user_shipping_division` varchar(255) DEFAULT NULL,
  `user_shipping_name` varchar(255) DEFAULT NULL,
  `user_shipping_street1` varchar(255) DEFAULT NULL,
  `user_shipping_street2` varchar(255) DEFAULT NULL,
  `user_shipping_zipcode` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9hidca5hndj9y0b5jb0xtpn9u` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_shipping`
--

LOCK TABLES `user_shipping` WRITE;
/*!40000 ALTER TABLE `user_shipping` DISABLE KEYS */;
INSERT INTO `user_shipping` VALUES (14,'Uttara',NULL,_binary '','DH','Md. Firoze Hossain','Road-12/A, House-01, Sector-10, Uttara','','1230',8),(17,'Uttara',NULL,_binary '\0','DH','Md. Firoze Hossain','House-50, Road-Kaliyartak mosid road, Uttara-1230','12/C','1230',8);
/*!40000 ALTER TABLE `user_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'bookstore'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-10  0:08:25
