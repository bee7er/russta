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
-- Table structure for table `article_categories`
--

DROP TABLE IF EXISTS `article_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(10) unsigned NOT NULL,
  `position` int(11) DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `user_id_edited` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `article_categories_language_id_foreign` (`language_id`),
  KEY `article_categories_user_id_foreign` (`user_id`),
  KEY `article_categories_user_id_edited_foreign` (`user_id_edited`),
  CONSTRAINT `article_categories_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`),
  CONSTRAINT `article_categories_user_id_edited_foreign` FOREIGN KEY (`user_id_edited`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `article_categories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_categories`
--

LOCK TABLES `article_categories` WRITE;
/*!40000 ALTER TABLE `article_categories` DISABLE KEYS */;
INSERT INTO `article_categories` VALUES (1,1,NULL,1,NULL,'Fuga corporis blanditiis aliquid id hic dolorem non.','atque-laborum-nihil-expedita-sed-debitis-maiores','2016-06-19 10:10:06','2016-06-19 10:10:06',NULL),(2,3,NULL,1,NULL,'Nihil harum rem rem.','quas-qui-dolorem-non-facere-consectetur','2016-06-19 10:10:06','2016-06-19 10:10:06',NULL);
/*!40000 ALTER TABLE `article_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(10) unsigned NOT NULL,
  `position` int(11) DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `user_id_edited` int(10) unsigned DEFAULT NULL,
  `article_category_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `introduction` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `source` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `articles_language_id_foreign` (`language_id`),
  KEY `articles_user_id_foreign` (`user_id`),
  KEY `articles_user_id_edited_foreign` (`user_id_edited`),
  KEY `articles_article_category_id_foreign` (`article_category_id`),
  CONSTRAINT `articles_article_category_id_foreign` FOREIGN KEY (`article_category_id`) REFERENCES `article_categories` (`id`) ON DELETE SET NULL,
  CONSTRAINT `articles_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`),
  CONSTRAINT `articles_user_id_edited_foreign` FOREIGN KEY (`user_id_edited`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `articles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (1,2,NULL,1,NULL,1,'Non aperiam omnis quos repellendus quibusdam quia.','deleniti-aliquam-adipisci-rerum-ipsam','Maiores repellendus omnis nam est. Distinctio ut et nesciunt error pariatur necessitatibus veniam. Eos enim ducimus quisquam omnis earum.','Quidem doloribus et velit cupiditate sapiente veritatis. Voluptas saepe dolores sint enim dignissimos. Quia tempora totam corporis illo.','https://franecki.org/quasi-laborum-et-consequuntur-ab-aperiam-eum-quae.html',NULL,'2016-06-19 10:10:06','2016-06-19 10:10:06',NULL),(2,1,NULL,1,NULL,2,'Quasi repellat error excepturi voluptatem tempora et.','qui-ad-sint-optio-ea-ad-doloremque-alias-reiciendis','Ex ut aliquam voluptatem vel unde. Autem perferendis nesciunt architecto quas omnis voluptatibus. Voluptates error quaerat soluta voluptatem dolores pariatur natus.','Quia dolorem consequatur est et ut qui eaque qui. Beatae non totam sapiente enim amet harum. Commodi enim autem voluptas voluptatem mollitia aperiam aut itaque. Sint non aut illo sunt sunt quia enim.','http://www.metz.com/eum-eum-cumque-asperiores-explicabo',NULL,'2016-06-19 10:10:06','2016-06-19 10:10:06',NULL);
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `languages` VALUES (1,NULL,'English','gb',NULL,NULL,'2016-06-19 10:10:06','2016-06-19 10:10:06',NULL),(2,NULL,'Српски','rs',NULL,NULL,'2016-06-19 10:10:06','2016-06-19 10:10:06',NULL),(3,NULL,'Bosanski','ba',NULL,NULL,'2016-06-19 10:10:06','2016-06-19 10:10:06',NULL);
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
INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_users_table',1),('2014_10_12_100000_create_password_resets_table',1),('2014_10_18_195027_create_languages_table',1),('2014_10_18_225005_create_article_categories_table',1),('2014_10_18_225505_create_articles_table',1),('2014_10_18_225928_create_photo_albums_table',1),('2014_10_18_231619_create_photos_table',1);
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
-- Table structure for table `photo_albums`
--

DROP TABLE IF EXISTS `photo_albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photo_albums` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(10) unsigned NOT NULL,
  `position` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `folder_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `user_id_edited` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `photo_albums_language_id_foreign` (`language_id`),
  KEY `photo_albums_user_id_foreign` (`user_id`),
  KEY `photo_albums_user_id_edited_foreign` (`user_id_edited`),
  CONSTRAINT `photo_albums_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`),
  CONSTRAINT `photo_albums_user_id_edited_foreign` FOREIGN KEY (`user_id_edited`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `photo_albums_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo_albums`
--

LOCK TABLES `photo_albums` WRITE;
/*!40000 ALTER TABLE `photo_albums` DISABLE KEYS */;
/*!40000 ALTER TABLE `photo_albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(10) unsigned NOT NULL,
  `position` int(11) DEFAULT NULL,
  `slider` tinyint(1) DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `type` enum('video','gif','image') COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo_album_id` int(10) unsigned DEFAULT NULL,
  `album_cover` tinyint(1) DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `user_id_edited` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `photos_language_id_foreign` (`language_id`),
  KEY `photos_photo_album_id_foreign` (`photo_album_id`),
  KEY `photos_user_id_foreign` (`user_id`),
  KEY `photos_user_id_edited_foreign` (`user_id_edited`),
  CONSTRAINT `photos_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`),
  CONSTRAINT `photos_photo_album_id_foreign` FOREIGN KEY (`photo_album_id`) REFERENCES `photo_albums` (`id`) ON DELETE SET NULL,
  CONSTRAINT `photos_user_id_edited_foreign` FOREIGN KEY (`user_id_edited`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `photos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
INSERT INTO `photos` VALUES (1,1,NULL,NULL,'chipwaffle_still.png','Chips & Waffles','How chips and waffles come from a potato.<br /> <a href=\"https://vimeo.com/145770435\">Chips &amp; Waffles</a> from <a\nhref=\"https://vimeo.com/russether\">Russell Etheridge</a> on <a href=\"https://vimeo.com\">Vimeo</a>.','video','https://player.vimeo.com/video/145770435',NULL,NULL,NULL,NULL,'2016-06-19 10:10:06','2016-06-19 10:10:06',NULL),(2,1,NULL,NULL,'spidy.png','Bathroom Boarder','A little arachnid themed short I managed to squeeze out during spare time.','video','https://player.vimeo.com/video/137499366',NULL,NULL,NULL,NULL,'2016-06-19 10:10:06','2016-06-19 10:10:06',NULL),(3,1,NULL,NULL,'binoculars.jpg','Propz - Binoculars','My feline-vision-aid contribution to the Propz series.','video','https://player.vimeo.com/video/122770363',NULL,NULL,NULL,NULL,'2016-06-19 10:10:06','2016-06-19 10:10:06',NULL),(4,1,NULL,NULL,'blizzard.jpg','Blizzard Walk','A little animation test.','gif','blizzard_loop.gif',NULL,NULL,NULL,NULL,'2016-06-19 10:10:06','2016-06-19 10:10:06',NULL),(5,1,NULL,NULL,'catchaleavingtrain.jpg','Weetabix - On the Go','A series of quick morning cheats I designed and directed for Weetabix.','video','',NULL,NULL,NULL,NULL,'2016-06-19 10:10:06','2016-06-19 10:10:06',NULL),(6,1,NULL,NULL,'shoelaces.jpg','Propz - Shoelaces','My valentines-shoe contribution to the Propz series.','video','https://player.vimeo.com/video/119444475',NULL,NULL,NULL,NULL,'2016-06-19 10:10:06','2016-06-19 10:10:06',NULL),(7,1,NULL,NULL,'showreel2014.png','Showreel 2014','My feline-vision-aid contribution to the Propz series.','video','https://player.vimeo.com/video/104406081',NULL,NULL,NULL,NULL,'2016-06-19 10:10:06','2016-06-19 10:10:06',NULL),(8,1,NULL,NULL,'thelion.jpg','The Lion','Award winning animated music video for US based band Escapist Papers.','video','//player.vimeo.com/video/60453523',NULL,NULL,NULL,NULL,'2016-06-19 10:10:06','2016-06-19 10:10:06',NULL),(9,1,NULL,NULL,'robbiew.jpg','Robbie Williams – Take the Crown','Promo for Robbie Williams’ ‘Take the Crown’ album release.','video','',NULL,NULL,NULL,NULL,'2016-06-19 10:10:06','2016-06-19 10:10:06',NULL),(10,1,NULL,NULL,'blackberry.jpg','Blackberry – Those Who Do','Computer game style footballer…','image','blackberry.jpg',NULL,NULL,NULL,NULL,'2016-06-19 10:10:06','2016-06-19 10:10:06',NULL),(11,1,NULL,NULL,'xmas_still_life.jpg','Merry Xmas!','An animated Xmas card, created with Cinema 4D and After Effects.','image','xmas_still_life.jpg',NULL,NULL,NULL,NULL,'2016-06-19 10:10:06','2016-06-19 10:10:06',NULL);
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
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
INSERT INTO `users` VALUES (1,'Brian','brian','betheridge@gmail.com','$2y$10$7phIiINMweNnRcCvHsj1t.mAgAju7llj31r/QGlWO6qPzAyxt2Kse','61678e5b0f87ba321033463394a49a2f',1,1,'dp4uRvlci1P73pg4RX5KSauuQNYFBqYt7AqU2umGmjkRLzhqdKbkJ6w5Vuk3','2016-06-19 10:10:05','2016-06-19 10:11:42',NULL),(2,'Russ','russ','russta@gmail.com','$2y$10$7NoyR21fKHgixitsIa9mEOx35EiRBo3qulMBIDLaBs/3nqZa5Kfay','757f7735da4a4da8bcdf9aaadf0af8c2',1,1,NULL,'2016-06-19 10:10:05','2016-06-19 10:10:05',NULL),(3,'Test User','test_user','user@user.com','$2y$10$DooTyzMGPD1vf2bq8ODv7.XkaIBYw85LROfV8MgbrKYVvN4QG7uvC','6b6a46a497534ba4408259af54e84f33',1,0,NULL,'2016-06-19 10:10:05','2016-06-19 10:10:05',NULL);
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

-- Dump completed on 2016-06-19 10:34:41
