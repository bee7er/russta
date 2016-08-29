-- MySQL dump 10.13  Distrib 5.6.30, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: russ_201606
-- ------------------------------------------------------
-- Server version	5.6.30-0ubuntu0.14.04.1

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
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `position` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lang_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `user_id_edited` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `languages_name_unique` (`name`),
  UNIQUE KEY `languages_lang_code_unique` (`lang_code`),
  KEY `languages_user_id_foreign` (`user_id`),
  KEY `languages_user_id_edited_foreign` (`user_id_edited`),
  CONSTRAINT `languages_user_id_edited_foreign` FOREIGN KEY (`user_id_edited`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `languages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,NULL,'English','gb',NULL,NULL,'2016-07-17 13:51:05','2016-07-17 13:51:05',NULL),(2,NULL,'Српски','rs',NULL,NULL,'2016-07-17 13:51:05','2016-07-17 13:51:05',NULL),(3,NULL,'Bosanski','ba',NULL,NULL,'2016-07-17 13:51:05','2016-07-17 13:51:05',NULL);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_users_table',1),('2014_10_12_100000_create_password_resets_table',1),('2014_10_18_195027_create_languages_table',1),('2016_07_09_131600_create_templates_table',1),('2016_07_09_131700_create_resources_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resources`
--

DROP TABLE IF EXISTS `resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resources` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('video','gif','image') COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thumb` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `template_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `resources_template_id_foreign` (`template_id`),
  CONSTRAINT `resources_template_id_foreign` FOREIGN KEY (`template_id`) REFERENCES `templates` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resources`
--

LOCK TABLES `resources` WRITE;
/*!40000 ALTER TABLE `resources` DISABLE KEYS */;
INSERT INTO `resources` VALUES (1,'video','Chips & Waffles','How chips and waffles come from a potato.<br /> <a href=\"https://vimeo.com/145770435\">Chips &amp; Waffles</a> from <a\nhref=\"https://vimeo.com/russether\">Russell Etheridge</a> on <a href=\"https://vimeo.com\">Vimeo</a>.','','chipwaffle_still.png','https://player.vimeo.com/video/145770435',4,'2016-07-17 13:51:05','2016-07-17 13:51:05',NULL),(2,'video','Bathroom Boarder','A little arachnid themed short I managed to squeeze out during spare time.','','spidy.png','https://player.vimeo.com/video/137499366',4,'2016-07-17 13:51:05','2016-07-17 13:51:05',NULL),(3,'video','Propz - Binoculars','My feline-vision-aid contribution to the Propz series.','','binoculars.jpg','https://player.vimeo.com/video/122770363',4,'2016-07-17 13:51:05','2016-07-17 13:51:05',NULL),(4,'gif','Blizzard Walk','A little animation test.','blizzard_loop.gif','blizzard.jpg','blizzard_loop.gif',2,'2016-07-17 13:51:05','2016-07-17 13:51:05',NULL),(5,'video','Weetabix - On the Go','A series of quick morning cheats I designed and directed for Weetabix.','','catchaleavingtrain.jpg','',4,'2016-07-17 13:51:05','2016-07-17 13:51:05',NULL),(6,'video','Propz - Shoelaces','My valentines-shoe contribution to the Propz series.','','shoelaces.jpg','https://player.vimeo.com/video/119444475',4,'2016-07-17 13:51:05','2016-07-17 13:51:05',NULL),(7,'video','Showreel 2014','My feline-vision-aid contribution to the Propz series.','','showreel2014.png','https://player.vimeo.com/video/104406081',4,'2016-07-17 13:51:05','2016-07-17 13:51:05',NULL),(8,'video','The Lion','Award winning animated music video for US based band Escapist Papers.','','thelion.jpg','https://player.vimeo.com/video/60453523',4,'2016-07-17 13:51:05','2016-07-17 13:51:05',NULL),(9,'video','Robbie Williams – Take the Crown','Promo for Robbie Williams’ ‘Take the Crown’ album release.','','robbiew.jpg','http://player.vimeo.com/video/69224915',4,'2016-07-17 13:51:05','2016-07-17 13:51:05',NULL),(10,'image','Blackberry – Those Who Do','Computer game style footballer…','9ca298e803a2960f11d20681ed96216d3d2c4c21.jpg','blackberry.jpg','blackberry.jpg',3,'2016-07-17 13:51:05','2016-07-17 13:51:05',NULL),(11,'image','Merry Xmas!','An animated Xmas card, created with Cinema 4D and After Effects.','30936a68dc1ea567f08dea544a89c2cdd7927a13.jpg','xmas_still_life.jpg','xmas_still_life.jpg',3,'2016-07-17 13:51:05','2016-07-17 13:51:05',NULL);
/*!40000 ALTER TABLE `resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `templates`
--

DROP TABLE IF EXISTS `templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `container` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `templates`
--

LOCK TABLES `templates` WRITE;
/*!40000 ALTER TABLE `templates` DISABLE KEYS */;
INSERT INTO `templates` VALUES (1,'Default template','\n<div style=\"width: 100%;padding:0;margin:0;border:0px solid blue;text-align: center;\">\n    <span style=\"width: 480px;\"><img style=\"border:1px solid #d2d2d2;\" src=\"../img/images/#IMAGE#\" width=\"480\" frameborder=\"0\">\n    <p style=\"border:0px solid red;\"><p style=\"border:0px solid red;\">#DESCRIPTION#</p>\n    <p style=\"text-align: center;\"><a href=\"/\"><img src=\"../img/back.png\" alt=\"Go back\" title=\"Go back\" width=\"38px\"></a></p></span></div>','2016-07-17 13:51:05','2016-07-17 13:51:05',NULL),(2,'GIF template','\n<div style=\"width: 100%;padding:0;margin:0;border:0px solid blue;text-align: center;\">\n    <span style=\"width: 480px;\"><img style=\"border:1px solid #d2d2d2;\" src=\"../appfiles/resource/#IMAGE#\" width=\"480\" height=\"480\" frameborder=\"0\">\n    <p style=\"border:0px solid red;\">#DESCRIPTION#</p>\n    <p style=\"text-align: center;\"><a href=\"/\"><img src=\"../img/back.png\" alt=\"Go back\" title=\"Go back\" width=\"38px\"></a></p></span></div>','2016-07-17 13:51:05','2016-07-17 13:51:05',NULL),(3,'Image template','\n<div style=\"width: 100%;padding:0;margin:0;border:0px solid blue;text-align: center;\">\n    <span style=\"width: 480px;\"><img style=\"border:1px solid #d2d2d2;\" src=\"../appfiles/resource/#IMAGE#\" width=\"480\" frameborder=\"0\">\n    <p style=\"border:0px solid red;\">#DESCRIPTION#</p>\n    <p style=\"text-align: center;\"><a href=\"/\"><img src=\"../img/back.png\" alt=\"Go back\" title=\"Go back\" width=\"38px\"></a></p></span></div>','2016-07-17 13:51:05','2016-07-17 13:51:05',NULL),(4,'Video template','\n<div style=\"width: 100%;padding:0;margin:0;border:0px solid blue;text-align: center;\">\n    <span style=\"width: 480px;\"><iframe style=\"border:1px solid #d2d2d2;\" src=\"#URL#\" width=\"480\" height=\"480\"\n    frameborder=\"0\" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>\n    <p style=\"border:0px solid red;\">#DESCRIPTION#</p>\n    <p style=\"text-align: center;\"><a href=\"#BASE_URL#\"><img src=\"../img/back.png\" alt=\"Go back\" title=\"Go back\" width=\"38px\"></a></p></span></div>','2016-07-17 13:51:05','2016-07-17 13:51:05',NULL);
/*!40000 ALTER TABLE `templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `confirmation_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Brian','brian','betheridge@gmail.com','$2y$10$I5coxELkOeXrr7O1L/CIQu3iDmyPOWtYh9zgt49mtaHWxy..l5np.','dcd443e19e4b041168dfb5e83a52d64e',1,1,NULL,'2016-07-17 13:51:04','2016-07-17 13:51:04',NULL),(2,'Russ','russ','russta@gmail.com','$2y$10$DE78hqogxlnsCh9jajjdG.7sPb9ljtvZZUKCkFoqmZBnZFBNESFhW','460a2c34e121cde19a6f7e1032db472e',1,1,NULL,'2016-07-17 13:51:05','2016-07-17 13:51:05',NULL),(3,'Test User','test_user','user@user.com','$2y$10$kfbDKLFLt3izY/P7L7Cjj.5Pnx.p2X..bO2fJNUaGX7MZ/5KTU/XK','49b09443042a2611da1db89544b6d4c6',1,0,NULL,'2016-07-17 13:51:05','2016-07-17 13:51:05',NULL);
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

-- Dump completed on 2016-07-17 13:59:41
