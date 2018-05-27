-- MySQL dump 10.13  Distrib 5.7.22, for osx10.13 (x86_64)
--
-- Host: localhost    Database: midas
-- ------------------------------------------------------
-- Server version	5.7.22

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
-- Table structure for table `boards`
--

DROP TABLE IF EXISTS `boards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boards` (
  `index` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boards`
--

LOCK TABLES `boards` WRITE;
/*!40000 ALTER TABLE `boards` DISABLE KEYS */;
INSERT INTO `boards` VALUES (1,'기본게시판','기본게시판 입니다.'),(2,'기본게시판','기본게시판 입니다.'),(3,'기본게시판','기본게시판 입니다.');
/*!40000 ALTER TABLE `boards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `index` int(11) NOT NULL AUTO_INCREMENT,
  `p_id` int(11) DEFAULT NULL,
  `content` varchar(100) DEFAULT NULL,
  `u_id` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`index`),
  KEY `g_idx` (`p_id`),
  KEY `h_idx` (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cusums`
--

DROP TABLE IF EXISTS `cusums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cusums` (
  `index` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`index`),
  KEY `cc_idx` (`user_id`),
  KEY `dd_idx` (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cusums`
--

LOCK TABLES `cusums` WRITE;
/*!40000 ALTER TABLE `cusums` DISABLE KEYS */;
INSERT INTO `cusums` VALUES (34,15,19,1,'2018-05-27 00:00:00',100),(35,15,17,1,'2018-05-27 00:00:00',100),(36,15,16,1,'2018-05-27 00:00:00',100),(37,15,15,1,'2018-05-27 00:00:00',100),(38,15,13,1,'2018-05-27 00:00:00',100),(39,15,12,1,'2018-05-27 00:00:00',100),(40,15,14,1,'2018-05-27 00:00:00',100),(41,15,11,1,'2018-05-27 00:00:00',100),(42,15,20,1,'2018-05-27 00:00:00',100),(43,15,21,1,'2018-05-27 00:00:00',100),(44,15,17,1,'2018-05-27 00:00:00',100),(45,15,19,1,'2018-05-27 00:00:00',100),(46,15,16,1,'2018-05-27 00:00:00',100),(47,15,15,1,'2018-05-27 00:00:00',100),(48,15,13,1,'2018-05-27 00:00:00',100),(49,15,12,1,'2018-05-27 00:00:00',100),(50,15,11,1,'2018-05-27 00:00:00',100),(51,15,14,1,'2018-05-27 00:00:00',100),(52,15,21,1,'2018-05-27 00:00:00',100),(53,15,16,1,'2018-05-27 00:00:00',100),(54,15,19,1,'2018-05-27 00:00:00',100),(55,15,12,1,'2018-05-27 00:00:00',100),(56,15,14,1,'2018-05-27 00:00:00',100),(57,17,15,1,'2018-05-27 00:00:00',100),(58,17,17,1,'2018-05-27 00:00:00',100),(59,17,20,10,'2018-05-27 00:00:00',100),(60,17,11,1,'2018-05-27 00:00:00',100),(61,17,13,100,'2018-05-27 00:00:00',100),(62,17,20,1,'2018-05-27 00:00:00',100),(63,17,21,100,'2018-05-27 00:00:00',100),(64,17,12,200,'2018-05-27 00:00:00',100);
/*!40000 ALTER TABLE `cusums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `index` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `index` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `detail` varchar(200) DEFAULT NULL,
  `path` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (11,'아메리카노',4000,'쓰디쓴 아메리카노',NULL),(12,'마끼야또',5000,'달달한 마끼야또',NULL),(13,'프레즐',5000,'비싸디 비싼 프레쯜!',NULL),(14,'모카라떼',5500,'모카는 맛있엉',NULL),(15,'콜라',500,'팝 콜라!',NULL),(16,'카페모카',6000,'휘핑크림 무조건 추가된 카페모카',NULL),(17,'사이즈업',500,'사이즈 업 !!',NULL),(19,'레몬에이드',2000,'시디신 레몬에이드',NULL),(20,'녹차',1000,'건강을 위한 녹차',NULL),(21,'모카번',3000,'모카번',NULL);
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_image`
--

DROP TABLE IF EXISTS `post_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_image` (
  `p_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  PRIMARY KEY (`p_id`,`image_id`),
  KEY `f_idx` (`image_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_image`
--

LOCK TABLES `post_image` WRITE;
/*!40000 ALTER TABLE `post_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `index` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `content` longtext,
  `b_index` int(11) DEFAULT NULL,
  `u_index` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`index`),
  KEY `b_index_idx` (`b_index`),
  KEY `b_idx` (`u_index`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (8,'안녕하세요 !','<pre>안녕하세요~~~<br>우후후~~~~&nbsp;</pre>',2,17,'2018-05-27 08:10:16','2018-05-27 08:10:16'),(9,'테스트 합니다 ~~','<h1>와우!!!</h1><h1><span style=\"background-color: rgb(255, 0, 0);\">와와와</span></h1>',2,17,'2018-05-27 08:10:42','2018-05-27 08:10:42'),(10,'우후후 게시글을 올려야지','<p>아아하!</p>',2,17,'2018-05-27 08:11:12','2018-05-27 08:11:12'),(11,'ㅎㄹㅇㅎㄹ','<p>ㅇㅇㅇ</p>',2,15,'2018-05-27 09:13:25','2018-05-27 09:13:25');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revers`
--

DROP TABLE IF EXISTS `revers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `revers` (
  `index` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`index`),
  KEY `aa_idx` (`user_id`),
  KEY `bb_idx` (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revers`
--

LOCK TABLES `revers` WRITE;
/*!40000 ALTER TABLE `revers` DISABLE KEYS */;
INSERT INTO `revers` VALUES (71,15,21,1,'2018-05-27 08:01:54',3),(72,15,20,1,'2018-05-27 08:01:54',3),(73,15,19,1,'2018-05-27 08:01:54',3),(74,15,17,1,'2018-05-27 08:01:54',3),(75,15,16,1,'2018-05-27 08:01:54',3),(76,15,15,1,'2018-05-27 08:01:54',3),(77,15,13,1,'2018-05-27 08:01:54',3),(78,15,12,1,'2018-05-27 08:01:54',3),(79,15,14,1,'2018-05-27 08:01:54',3),(80,15,11,1,'2018-05-27 08:01:54',3),(81,15,20,1,'2018-05-27 08:02:02',3),(82,15,21,1,'2018-05-27 08:02:02',3),(83,15,17,1,'2018-05-27 08:02:02',3),(84,15,19,1,'2018-05-27 08:02:02',3),(85,15,16,1,'2018-05-27 08:02:02',3),(86,15,15,1,'2018-05-27 08:02:02',3),(87,15,13,1,'2018-05-27 08:02:02',3),(88,15,12,1,'2018-05-27 08:02:02',3),(89,15,11,1,'2018-05-27 08:02:02',3),(90,15,14,1,'2018-05-27 08:02:02',3),(91,15,21,1,'2018-05-27 08:02:09',3),(92,15,16,1,'2018-05-27 08:02:09',3),(93,15,19,1,'2018-05-27 08:02:09',3),(94,15,12,1,'2018-05-27 08:02:09',3),(95,15,14,1,'2018-05-27 08:02:09',3),(96,17,15,1,'2018-05-27 08:04:32',3),(97,17,17,1,'2018-05-27 08:04:32',3),(98,17,20,10,'2018-05-27 08:04:32',3),(99,17,11,1,'2018-05-27 08:04:32',3),(100,17,13,100,'2018-05-27 08:04:32',3),(101,17,20,1,'2018-05-27 08:04:47',3),(102,17,13,1,'2018-05-27 08:04:47',2),(103,17,16,1,'2018-05-27 08:04:47',1),(104,17,14,1,'2018-05-27 08:04:47',1),(105,17,17,1,'2018-05-27 09:37:53',1),(106,17,20,1,'2018-05-27 09:37:53',1),(107,17,19,1,'2018-05-27 09:37:53',1),(108,17,21,100,'2018-05-27 09:37:53',3),(109,17,12,200,'2018-05-27 09:37:53',3),(110,17,11,1,'2018-05-27 09:37:53',1);
/*!40000 ALTER TABLE `revers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_image`
--

DROP TABLE IF EXISTS `user_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_image` (
  `u_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  PRIMARY KEY (`u_id`,`image_id`),
  KEY `b_idx` (`image_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_image`
--

LOCK TABLES `user_image` WRITE;
/*!40000 ALTER TABLE `user_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `index` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `admin` int(11) DEFAULT '0',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `access_login_time` datetime DEFAULT NULL,
  PRIMARY KEY (`index`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (13,'admin@gmail.com','1234','관리자',30,2,'2018-05-27 07:40:41','2018-05-27 07:40:41'),(14,'sj900828@naver.com','1234','정성진',29,1,'2018-05-27 07:44:06','2018-05-27 07:44:06'),(15,'harrimkim@gmail.com','1234','김하림',27,0,'2018-05-27 07:46:33','2018-05-27 07:46:33'),(16,'hyanghope@naver.com','1234','전가빈',26,0,'2018-05-27 07:46:50','2018-05-27 07:46:50'),(17,'harrim@gmail.com','1234','전하진',29,0,'2018-05-27 07:48:45','2018-05-27 07:48:45'),(18,'hyang@naver.com','1234','김가성',26,0,'2018-05-27 07:48:46','2018-05-27 07:48:46');
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

-- Dump completed on 2018-05-27  9:54:25
