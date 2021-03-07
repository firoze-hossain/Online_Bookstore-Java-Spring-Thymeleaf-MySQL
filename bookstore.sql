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
INSERT INTO `billing_address` VALUES (25,'Uttara',NULL,'DH','firoze','12/A','12/C','1230',24);
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
INSERT INTO `book` VALUES (10,_binary '','Joshua Bloch','Programming','<p style=\"margin: 0px; padding: 0px; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Since this Jolt-award winning classic was last updated in 2008, the Java programming environment has changed dramatically. Java 7 and Java 8 introduced new features and functions including, forEach() method in Iterable interface, default and static methods in Interfaces, Functional Interfaces and Lambda Expressions, Java Stream API for Bulk Data Operations on Collections, Java Time API, Collection API improvements, Concurrency API improvements, and Java IO improvements.</p>\r\n<p style=\"margin: 0px; padding: 0px; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">&nbsp;</p>\r\n<p style=\"margin: 0px; padding: 0px; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">In this new edition of&nbsp;<strong>Effective Java</strong>, Bloch explores new design patterns and language idioms that have been introduced since the second edition was released in 2008 shortly after Java SE6, including Lambda, streams, generics and collections, as well as selected Java 9 features.</p>','paperback',8,134685997,'english',54.99,416,38.19,'2017-12-27','Addison-Wesley Professional',1.5,'Effective Java 3rd Edition'),(11,_binary '',' Kazi Nazrul Islam','Arts & Literature','<p><span style=\"color: #181818; font-family: Merriweather, Georgia, serif; font-size: 14px; background-color: #ffffff;\">সঞ্চিতা বাংলা সাহিত্যের অন্যতম জনপ্রিয় এবং বাংলাদেশের জাতীয় কবি কাজী নজরুল ইসলামের কাব্য-সংকলন। এই গ্রন্থে ঊনআশিটি কবিতা ও সতেরোটি গান আছে। এর মধ্যে - &lsquo;বিদ্রোহী&rsquo;, &lsquo;সর্বহারা&rsquo;, &lsquo;সাম্যবাদী&rsquo;, &lsquo;মানুষ&rsquo;, &lsquo;জীবন বন্দনা&rsquo;, &lsquo;খুকী ও কাঠবেড়ালী&rsquo;, &lsquo;চল্&zwnj; চল্&zwnj; চল্&zwnj;&rsquo; প্রভৃতি প্রধান।</span><br style=\"color: #181818; font-family: Merriweather, Georgia, serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"color: #181818; font-family: Merriweather, Georgia, serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #181818; font-family: Merriweather, Georgia, serif; font-size: 14px; background-color: #ffffff;\">গ্রন্থটির উৎসর্গ পত্রে লেখা আছে: &ldquo;বিশ্বকবিসম্রাট শ্রীরবীন্দ্রনাথ ঠাকুর শ্রীশ্রীচরণারবিন্দেষু&rdquo;।</span></p>','hardcover',7,44100410,'spanish',3.5,176,2.94,'','',1.3,'সঞ্চিতা (Shanchita)'),(12,_binary '','Bram Stoker','Arts & Literature','<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">During a business visit to Count Dracula\'s castle in Transylvania, a young English solicitor finds himself at the center of a series of horrifying incidents. Jonathan Harker is attacked by three phantom women, observes the Count\'s transformation from human to bat form, and discovers puncture wounds on his own neck that seem to have been made by teeth. Harker returns home upon his escape from Dracula\'s grim fortress, but a friend\'s strange malady &mdash; involving sleepwalking, inexplicable blood loss, and mysterious throat wounds &mdash; initiates a frantic vampire hunt. The popularity of Bram Stoker\'s 1897 horror romance is as deathless as any vampire. Its supernatural appeal has spawned a host of film and stage adaptations, and more than a century after its initial publication, it continues to hold readers spellbound.</span></p>','paperback',6,486411095,'english',9.9,336,6.9,'2000-04-01','Dover Publications, Inc.',8.8,'Dracula '),(13,_binary '',' Alan Souza, Fábio Soares ','Programming','<p style=\"margin: 0px 0px 14px; padding: 0px; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Learn to build amazing projects using neural networks including forecasting the weather and pattern recognition</p>\r\n<p style=\"margin: -4px 0px 14px; padding: 0px; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Explore the Java multi-platform feature to run your personal neural networks everywhere</p>\r\n<p style=\"margin: -4px 0px 14px; padding: 0px; color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">This step-by-step guide will help you solve real-world problems and links neural network theory to their application</p>','hardcover',9,159802654,'english',44.29,246,24.98,'2016-04-04','Packt Publishing',2.3,'Neural Network Programming with Java'),(14,_binary '','কাজী নজরুল ইসলাম','Arts & Literature','<p><strong style=\"color: #202122; font-family: sans-serif; font-size: 14px; background-color: #ffffff;\">অগ্নিবীণা</strong><span style=\"color: #202122; font-family: sans-serif; font-size: 14px; background-color: #ffffff;\">&nbsp;বিংশ শতাব্দীর প্রথমার্ধের অন্যতম জনপ্রিয় বাঙালি কবি&nbsp;</span><a style=\"text-decoration-line: none; color: #0645ad; background: none #ffffff; font-family: sans-serif; font-size: 14px;\" title=\"কাজী নজরুল ইসলাম\" href=\"https://bn.wikipedia.org/wiki/%E0%A6%95%E0%A6%BE%E0%A6%9C%E0%A7%80_%E0%A6%A8%E0%A6%9C%E0%A6%B0%E0%A7%81%E0%A6%B2_%E0%A6%87%E0%A6%B8%E0%A6%B2%E0%A6%BE%E0%A6%AE\">কাজী নজরুল ইসলামের</a><span style=\"color: #202122; font-family: sans-serif; font-size: 14px; background-color: #ffffff;\">&nbsp;প্রথম কাব্যগ্রন্থ। এটি ১৩২৯ বঙ্গাব্দের কার্তিক মাসে (অক্টোবর, ১৯২২ খ্রিষ্টাব্দ) প্রকাশিত হয়।</span><sup id=\"cite_ref-1\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px; color: #202122; font-family: sans-serif; background-color: #ffffff;\"><a style=\"text-decoration-line: none; color: #0645ad; background: none;\" href=\"https://bn.wikipedia.org/wiki/%E0%A6%85%E0%A6%97%E0%A7%8D%E0%A6%A8%E0%A6%BF%E0%A6%AC%E0%A7%80%E0%A6%A3%E0%A6%BE_(%E0%A6%95%E0%A6%BE%E0%A6%AC%E0%A7%8D%E0%A6%AF%E0%A6%97%E0%A7%8D%E0%A6%B0%E0%A6%A8%E0%A7%8D%E0%A6%A5)#cite_note-1\">[১]</a></sup><span style=\"color: #202122; font-family: sans-serif; font-size: 14px; background-color: #ffffff;\">&nbsp;এই গ্রন্থে মোট বারোটি কবিতা আছে।</span><sup id=\"cite_ref-2\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px; color: #202122; font-family: sans-serif; background-color: #ffffff;\"><a style=\"text-decoration-line: none; color: #0645ad; background: none;\" href=\"https://bn.wikipedia.org/wiki/%E0%A6%85%E0%A6%97%E0%A7%8D%E0%A6%A8%E0%A6%BF%E0%A6%AC%E0%A7%80%E0%A6%A3%E0%A6%BE_(%E0%A6%95%E0%A6%BE%E0%A6%AC%E0%A7%8D%E0%A6%AF%E0%A6%97%E0%A7%8D%E0%A6%B0%E0%A6%A8%E0%A7%8D%E0%A6%A5)#cite_note-2\">[২]</a></sup><span style=\"color: #202122; font-family: sans-serif; font-size: 14px; background-color: #ffffff;\">&nbsp;কবিতাগুলি হচ্ছে - &lsquo;</span><a class=\"mw-redirect\" style=\"text-decoration-line: none; color: #0645ad; background: none #ffffff; font-family: sans-serif; font-size: 14px;\" title=\"প্রলয়োল্লাস (কবিতা)\" href=\"https://bn.wikipedia.org/wiki/%E0%A6%AA%E0%A7%8D%E0%A6%B0%E0%A6%B2%E0%A6%AF%E0%A6%BC%E0%A7%8B%E0%A6%B2%E0%A7%8D%E0%A6%B2%E0%A6%BE%E0%A6%B8_(%E0%A6%95%E0%A6%AC%E0%A6%BF%E0%A6%A4%E0%A6%BE)\">প্রলয়োল্লাস (কবিতা)</a><span style=\"color: #202122; font-family: sans-serif; font-size: 14px; background-color: #ffffff;\">&rsquo;, &lsquo;</span><a style=\"text-decoration-line: none; color: #0645ad; background: none #ffffff; font-family: sans-serif; font-size: 14px;\" title=\"বিদ্রোহী (কবিতা)\" href=\"https://bn.wikipedia.org/wiki/%E0%A6%AC%E0%A6%BF%E0%A6%A6%E0%A7%8D%E0%A6%B0%E0%A7%8B%E0%A6%B9%E0%A7%80_(%E0%A6%95%E0%A6%AC%E0%A6%BF%E0%A6%A4%E0%A6%BE)\">বিদ্রোহী</a><span style=\"color: #202122; font-family: sans-serif; font-size: 14px; background-color: #ffffff;\">&rsquo;, &lsquo;রক্তাম্বর-ধারিণী মা&rsquo;, &lsquo;আগমণী&rsquo;, &lsquo;ধূমকেতু&rsquo;, কামাল পাশা&rsquo;, &lsquo;আনোয়ার &lsquo;রণভেরী&rsquo;, &lsquo;শাত-ইল-আরব&rsquo;, খেয়াপারের তরণী&rsquo;, কোরবানী&rsquo; ও মোহররম&rsquo;।</span><sup id=\"cite_ref-3\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px; color: #202122; font-family: sans-serif; background-color: #ffffff;\"><a style=\"text-decoration-line: none; color: #0645ad; background: none;\" href=\"https://bn.wikipedia.org/wiki/%E0%A6%85%E0%A6%97%E0%A7%8D%E0%A6%A8%E0%A6%BF%E0%A6%AC%E0%A7%80%E0%A6%A3%E0%A6%BE_(%E0%A6%95%E0%A6%BE%E0%A6%AC%E0%A7%8D%E0%A6%AF%E0%A6%97%E0%A7%8D%E0%A6%B0%E0%A6%A8%E0%A7%8D%E0%A6%A5)#cite_note-3\">[৩]</a></sup><span style=\"color: #202122; font-family: sans-serif; font-size: 14px; background-color: #ffffff;\">&nbsp;এছাড়া গ্রন্থটির সর্বাগ্রে বিপ্লবী বারীন্দ্রকুমার ঘোষ-কে উৎসর্গ করে লেখা একটি উৎসর্গ কবিতাও আছে। &lsquo;অগ্নি-বীণা&rsquo; প্রচ্ছদপটের পরিকল্পনা ছিল অবনীন্দ্রনাথ ঠাকুর এবং এঁকেছিলেন তরুণ চিত্রশিল্পী বীরেশ্বর সেন। বইটির তৎকালীন মূল্য ছিল ৩ টাকা। ৭ নং প্রতাপ চ্যাটার্জি লেন থেকে গ্রন্থকার কর্তৃক গ্রন্থটি মুদ্রিত ও প্রকাশিত হয়। প্রাপ্তিস্থান হিসেবে গ্রন্থে লেখা ছিল: \'আর্য পাবলিশিং হাউস, কলেজ স্ট্রিট, মার্কেট (দোতলায়)\'। গ্রন্থটি ছাপা হয় মেটকাফ প্রেস, ৭৯ নং বলরাম দে স্ট্রিট, কলিকাতা থেকে। দাম এক টাকা। গ্রন্থটির উৎসর্গ হচ্ছে- &ldquo;বাঙলার অগ্নিযুগের আদি পুরোহিত সাগ্নিক বীর শ্রীবারীন্দ্রকুমার ঘোষ শ্রীশ্রীচরণারবিন্দেষু&rdquo;। নিচে লেখা আছে &ldquo;তোমার অগ্নি-পূজারী -হে- মহিমাম্বিত শিষ্য-কাজী নজরুল ইসলাম&rdquo;। অরবিন্দ ঘোষের ভ্রাতা বারীন্দ্রকুমার ঘোষ বাংলা তথা ভারতের বিপ্লববাদী আন্দোলনের অন্যতম নায়ক ছিলেন। বিপ্লবে বিশ্বাসী নজরুল তাই নিজেকে বারীন্দ্রকুমারের &lsquo;-হে-মহিমান্বিত শিষ্য&rsquo; বলে উল্লেখ করে তাকেই তার প্রথম কাব্যগ্রন্থ উৎসর্গ করেছিলেন।</span></p>','hardcover',25,44100429,'spanish',1.3,64,1,'2017-03-13','	মাওলা ব্রাদার্স',3.1,'অগ্নিবীণা'),(15,_binary '',' হুমায়ূন আহমেদ','Arts & Literature','<p><span style=\"font-family: Kiron; font-size: 16px; text-align: justify; white-space: pre-line; background-color: rgba(245, 245, 245, 0.31);\">বইটি পিশাচ কাহিনী হলেও ভৌতিক ব্যাপার গুলো বেশ যুক্তি দিয়ে ব্যাখ্যা করা হয়েছে। দি একসরসিস্ট মূল লেখক পিটার ব্লেটি। আমার ভৌতিক কাহিনীর প্রতি আগ্রহ অনেক বেশি। বইটি হুমায়ূন আহমেদ অনুবাদ করেছিলেন মিসির আলী চরিত্রটি সৃষ্ঠির আগে। মিসির আলীর বইগুলোতে যেমন লজিক আর অ্যান্টি লজিকের কথা আছে, তেমন এই উপন্যাসেও কিন্তু লজিক আর অ্যান্টি লজিকের পরস্পর বিরোধিতা আছে। আমার কাছে মনে হয়েছে এই উপন্যাসে কারাস চরিত্রটি একেবারে মিসির আলীর মত করেই ভৌতিক বিষয়গুলোর যুক্তিসঙ্গত ব্যাখ্যা দেওয়ার চেষ্টা করেছে। পাদ্রী কারাসের চরিত্রটিকে আমার খুব আকর্ষনিয় মনে হয়েছে। রেগান নামের ছোট একটি মেয়ে হঠাৎ অস্বাভাবিক আচরন করতে আরাম্ভ করে। মানসিকভাবে সে একাবারেই ভারসাম্যহীন হয়ে পড়লে রেগানের সমস্যার সমাধান জন্য পাদ্রী কারাসের দৃশ্যপটে আগমন ঘটে।</span></p>','hardcover',6,48812686,'spanish',2.3,120,2,'2013-06-11','জ্ঞানকোষ প্রকাশনী',1.1,'দি একসরসিস্ট'),(16,_binary '',' মুহম্মদ জাফর ইকবাল','Fiction','<p><span style=\"color: #222d34; font-family: SolaimanLipi, Arial, sans-serif; font-size: 16px; background-color: #ffffff;\">মুহম্মদ জাফর ইকবাল এর</span><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; color: #222d34; font-family: SolaimanLipi, Arial, sans-serif; background-color: #ffffff;\">&nbsp;রিটিন&nbsp;</strong><span style=\"color: #222d34; font-family: SolaimanLipi, Arial, sans-serif; font-size: 16px; background-color: #ffffff;\">বাংলা বইটি সম্পুর্ণ ফ্রীতে ডাউনলোড এবং পড়তে পারবেন। আমরা মুহম্মদ জাফর ইকবালের&nbsp; রিটিন বই এর পিডিএফ কপি সংগ্রহ করেছি এবং আপনাদের মাঝে তা শেয়ার করছি। মুহম্মদ জাফর ইকবালের অন্যান্য গল্প, উপন্যাস, কাব্যগ্রন্থ, কবিতার বই সমূহ পড়তে আমাদের সাইটে চোখ রখুন।</span></p>','hardcover',14,9603730,'spanish',4.2,156,4,'','তাম্রলিপি',1.74,'বৈজ্ঞানিক কল্পকাহিনী : রিটিন'),(17,_binary '','Craig Walls ','Programming','<p><span style=\"color: #333333; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">The Spring Framework simplifies enterprise Java development, but it does require lots of tedious configuration work. Spring Boot radically streamlines spinning up a Spring application. You get automatic configuration and a model with established conventions for build-time and runtime dependencies. You also get a handy command-line interface you can use to write scripts in Groovy. Developers who use Spring Boot often say that they can\'t imagine going back to hand configuring their applications.</span></p>','paperback',12,1617292545,'english',36.23,264,34.2,'2016-01-03','Manning Publications',1.03,'Spring Boot in Action');
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
INSERT INTO `book_to_cart_item` VALUES (19,17,18),(21,10,20),(23,15,22),(29,10,28);
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
INSERT INTO `cart_item` VALUES (18,1,34.20,17,24,NULL),(20,1,38.19,10,24,NULL),(22,1,2.00,15,24,NULL),(28,1,38.19,10,NULL,8);
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
INSERT INTO `hibernate_sequence` VALUES (30);
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
INSERT INTO `password_reset_token` VALUES (9,'2021-03-08 22:33:41','6c48b745-2d98-462f-9c8d-e0d9e5d68d62',6);
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
INSERT INTO `payment` VALUES (26,NULL,'128963574',12,3,2021,'Md. Firoze Hossain','mastercard',24);
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
INSERT INTO `shipping_address` VALUES (27,'Uttara',NULL,'DH','firoze','12/A','12/C','1230',24);
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
INSERT INTO `shopping_cart` VALUES (3,0.00,1),(8,38.19,6);
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
INSERT INTO `user` VALUES (1,'roze6064@gmail.com',_binary '','Firoze','Hossain','$2a$12$LtbYtEzOBdnsiD/E9Wtj2OZogNnXdgy/4DWJr3ZV5PSCkTwdxNaOS',NULL,'roze'),(4,'admin@gmail.com',_binary '',NULL,NULL,'$2a$12$LtbYtEzOBdnsiD/E9Wtj2OZogNnXdgy/4DWJr3ZV5PSCkTwdxNaOS',NULL,'admin'),(6,'firoze2428@hotmail.com',_binary '','Md. Firoze','Hossain','$2a$12$LtbYtEzOBdnsiD/E9Wtj2Oy4DOCVvyjQIEGsUjAxT2UwMKt.a6.uC',NULL,'firoze');
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
INSERT INTO `user_order` VALUES (24,'2021-03-08 00:00:24','created',74.39,NULL,'groundShipping',25,26,27,6);
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
INSERT INTO `user_role` VALUES (2,1,1),(5,0,4),(7,1,6);
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

-- Dump completed on 2021-03-08  0:27:50
