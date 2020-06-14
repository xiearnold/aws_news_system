-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB-0+deb9u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ORDERS`
--

DROP TABLE IF EXISTS `ORDERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ORDERS` (
  `userId` tinyint(4) DEFAULT NULL,
  `productId` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ORDERS`
--

LOCK TABLES `ORDERS` WRITE;
/*!40000 ALTER TABLE `ORDERS` DISABLE KEYS */;
INSERT INTO `ORDERS` VALUES (1,1),(1,2),(1,3);
/*!40000 ALTER TABLE `ORDERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SIMPLE`
--

DROP TABLE IF EXISTS `SIMPLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SIMPLE` (
  `USER_ID` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SIMPLE`
--

LOCK TABLES `SIMPLE` WRITE;
/*!40000 ALTER TABLE `SIMPLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `SIMPLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `categoryId` tinyint(4) DEFAULT NULL,
  `name` varchar(17) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Clothing'),(2,'Shoes'),(3,'Jewelry'),(4,'Accessories'), (5,'Watches'), (6,'Handbags');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kart`
--

DROP TABLE IF EXISTS `kart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kart` (
  `userId` varchar(0) DEFAULT NULL,
  `productId` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kart`
--

LOCK TABLES `kart` WRITE;
/*!40000 ALTER TABLE `kart` DISABLE KEYS */;
/*!40000 ALTER TABLE `kart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `productId` tinyint(4) DEFAULT NULL,
  `name` varchar(39) DEFAULT NULL,
  `price` decimal(4,1) DEFAULT NULL,
  `description` varchar(83) DEFAULT NULL,
  `image` varchar(5) DEFAULT NULL,
  `stock` tinyint(4) DEFAULT NULL,
  `categoryId` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*INSERT INTO `products` VALUES (1,'Power of Positive Thinking',155.0,'A classic book on how positive thinking can transform your life','1.jpg',23,1),(2,'How to win friends and influence peopel',95.0,'If you are about to enter the corperate world , you have to read this !','2.jpg',29,1),(3,'The autobiography of Benjamin Frankin',200.0,'The autobiography of Benjamin Frankin','3.jpg',39,2),(4,'Seeing like a state',300.0,'James Scott analyses how certain schemes to improve the human condition ahve failed','4.jpg',3,3);*/
INSERT INTO `products` VALUES (1,'Neon Buddha Women Standard ',255.0,'Romwe Women Summer Spaghetti Strap Sundress Sleeveless Beach Slip Dress','1.jpg',231,1),
(2,'Voyage Top, Linen, Large',95.0,'Romwe Women Short Sleeve Mock Neck Elegant Summer Chiffon Blouse Top','2.jpg',129,1),
(3,'Esenchel Women Short Sleeves ',200.0,'SheIn Women Cutout Short Sleeve Cold Shoulder Ribbed Knit T-Shirt Top','3.jpg',319,1),
(4,'Seychelles Tunic, Orchid, Medium',280.0,'Neon Buddha Women Standard Seychelles Tunic, Orchid, Medium','4.jpg',828,1),
(5,'Fila Women Memory Kameo 4 Cross Trainer',2200.0,'Fila Women Memory Kameo 4 Cross Trainer','5.jpg',222,2),
(6,'Superga Unisex Adults 2750-nappaleau Trainers',330.0,'Superga Unisex Adults 2750-nappaleau Trainers','6.jpg',999,2),
(7,'Waves Women Tapered Natural Rubber Flip Flops',440.0,'Waves Women Tapered Natural Rubber Flip Flops','7.jpg',122,2),
(8,'Personalized Custom Rose Flower Chain',555.0,'Personalized Custom Rose Flower Letter Initial Necklace for Women Any Name Bar Pendant Necklaces Jewelry Chain','8.jpg',666,3),
(9,'Crown Necklace',333.0,'Personalized Name Crown Necklace,Customized Script Initial Women Girl Nameplate Charm Crown Necklace Stainless','9.jpg',77,3),
(10,'SHASHI Women Tilu Wyatt Stretch Bracelet',299.0,'SHASHI Women Tilu Wyatt Stretch Bracelet','a.jpg',399,3),
(11,'Burberry Women 0BE4290',299.0,'acetate,Plastic frame,composite lens,non-polarized,Lens width: 61 millimeters,Bridge: 16 millimeters,Arm: 140 millimeters','b.jpg',232,4),
(12,'Burberry Women 0BE4197',346.0,'Due to increased demand, we temporarily have reduced product selection available for delivery to your region. We are working to improve selection availability as soon as possible.','c.jpg',888,4),
(13,'Skagen Aaren Colored Silicone 41mm Watch',1200.0,'Fitness Tracker Heart Rate Monitor Blood Pressure Sleep Calorie Pedometer Watch Waterproof Activity Tracker for Men Women','d.jpg',989,5),
(14,'Timex Women Weekender 31mm Watch',2400.0,'Timex Women Indiglo Easy Reader Quartz Analog Leather Strap Watch with Date Feature','e.jpg',765,5),
(15,'Women Crossbody Bag Pocketbooks Soft PU Leather Purses',999.0,'High quality washed PU leather,soft,comfortable,light weight.','f.jpg',359,6),
(16,'Handbags Multi Pocket Shoulder Bag Messenger Bag',1290.0,'Every day and travel crossbody bag:Fashionable style, can be used as a handbag, shoulder bag or cross-body bag.with a variety of storage options & organization features','g.jpg',396,6);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `userId` tinyint(4) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  `firstName` varchar(11) DEFAULT NULL,
  `lastName` varchar(10) DEFAULT NULL,
  `address1` smallint(6) DEFAULT NULL,
  `address2` varchar(21) DEFAULT NULL,
  `zipcode` mediumint(9) DEFAULT NULL,
  `city` varchar(19) DEFAULT NULL,
  `state` varchar(12) DEFAULT NULL,
  `country` varchar(5) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'e10adc3949ba59abbe56e057f20f883e','durgaprasad.nagarkatte@gmail.com','Durgaprasad','Nagarkatte',315,'Shiv Nadar University',203207,'Gautam Buddha Nagar','UttarPradesh','India',9599322010);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-22 15:20:26
