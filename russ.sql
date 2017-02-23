-- MySQL dump 10.13  Distrib 5.6.33, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: russ_201606
-- ------------------------------------------------------
-- Server version	5.6.33-0ubuntu0.14.04.1

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
INSERT INTO `languages` VALUES (1,NULL,'English','gb',NULL,NULL,'2016-10-16 12:04:38','2016-10-16 12:04:38',NULL),(2,NULL,'Српски','rs',NULL,NULL,'2016-10-16 12:04:38','2016-10-16 12:04:38',NULL),(3,NULL,'Bosanski','ba',NULL,NULL,'2016-10-16 12:04:38','2016-10-16 12:04:38',NULL);
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
  `content_a` text COLLATE utf8_unicode_ci,
  `content_b` text COLLATE utf8_unicode_ci,
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resources`
--

LOCK TABLES `resources` WRITE;
/*!40000 ALTER TABLE `resources` DISABLE KEYS */;
INSERT INTO `resources` VALUES (9,'video','chips & waffles','How chips and waffles come from a potato.','Hello from content A','Hello from content B','','gifsMisc_th.jpg','https://player.vimeo.com/video/145770435',12,
'2016-10-16 12:47:36','2016-10-16 12:47:36',NULL),
(8,'video','bathroom boarder','A little arachnid themed short I managed to squeeze out during spare time.','Hello from content A','Hello from content B','','bathroomBoarder_th.jpg','https://player.vimeo
.com/video/137499366',14,'2016-10-16 12:47:36','2017-02-17 17:20:36',NULL),
(7,'video','propz - binoculars','My feline-vision-aid contribution to the Propz series.','Hello from content A',
'Hello from content B','','propzBinoculars_th.jpg','https://player.vimeo.com/video/122770363',12,'2016-10-16 12:47:36','2016-10-16 12:47:36',NULL),
(3,'video','weetabix - on the go','<p>A series of quick morning cheats I designed and directed for Weetabix.</p><p>Produced by Animade. To see the full credit list and a lovely write up on this project, mosey on over to the animade website: Animade – On the Go</p>','','','','weetabix_th.jpg','',16,'2016-10-16 12:47:36','2016-10-16 12:47:36',NULL),
(12,'video','showreel 2014','My feline-vision-aid contribution to the Propz series.','Hello from content A','Hello from content B','','motionReel_th.jpg','https://player.vimeo.com/video/104406081',12,'2016-10-16 12:47:36','2016-10-16 12:47:36',NULL),(10,'video','The Lion','Award winning animated music video for US based band Escapist Papers.','Hello from content A','Hello from content B','','lion_th.jpg','https://player.vimeo.com/video/60453523',12,'2016-10-16 12:47:36','2016-10-16 12:47:36',NULL),
(11,'video','robbie williams – take the crown','Promo for Robbie Williams’ ‘Take the Crown’ album release.','Hello from content A','Hello from content B','','robbieWilliams_th.jpg','http://player.vimeo.com/video/69224915',12,'2016-10-16 12:47:36','2016-10-16 12:47:36',NULL),
(1,'video','olympops','I designed and directed these fun balloon dudes to celebrate the Rio Olympics 2016!',NULL,NULL,'','olympops_th.jpg','https://player.vimeo.com/video/179434349',13,'2017-02-17 11:19:20','2017-02-17 11:19:20',NULL),
(2,'video','blocks','A kids show and character test.',NULL,NULL,'','blocks_th.jpg','https://player.vimeo
.com/video/202748408',15,'2017-02-17 11:19:20','2017-02-17 11:19:20',NULL),
(4,'video','brick lane','Brick lane!',NULL,NULL,'','bricklane_th.jpg','https://player.vimeo.com/video/179434349',13,'2017-02-17 11:19:20','2017-02-17 11:19:20',NULL),
(5,'video','good hand','Good hand!',NULL,NULL,'','goodHand_th.jpg','https://player.vimeo
.com/video/179434349',13,
'2017-02-17 11:19:20','2017-02-17 11:19:20',NULL),
(6,'video','train squeeze','Squeeze!',NULL,NULL,'','trainSqueeze_th.jpg','https://player.vimeo.com/video/179434349',13,'2017-02-17 11:19:20','2017-02-17 11:19:20',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `templates`
--

LOCK TABLES `templates` WRITE;
/*!40000 ALTER TABLE `templates` DISABLE KEYS */;
INSERT INTO `templates` VALUES (9,'Default template','\n<div style=\"width: 100%;padding:0;margin:0;border:0px solid blue;text-align: center;\">\n    <span style=\"width: 480px;\"><table\n                    style=\"width:480px;padding:5px;margin: 0px auto;\">\n                <tr style=\"border:0px solid red;\">\n                    <td style=\"border:1px solid #c4c4c4;\" colspan=\"2\"><h3 style=\"margin:0;padding:0;\">#NAME#</h3></td>\n                </tr>\n                <tr style=\"border:0px solid red;\">\n                    <td style=\"border:1px solid #c4c4c4;\">#CONTENT_A#</td>\n                    <td style=\"border:1px solid #c4c4c4;\">#CONTENT_B#</td>\n                </tr>\n            </table><img style=\"border:1px solid #d2d2d2;\" src=\"../img/images/#IMAGE#\" width=\"480\" frameborder=\"0\">\n    <p style=\"border:0px solid red;\"><p style=\"border:0px solid red;\">#DESCRIPTION#</p>\n    <p style=\"text-align: center;\"><a href=\"/\"><img src=\"../img/back.png\" alt=\"Go back\" title=\"Go back\" width=\"38px\"></a></p></span></div>','2016-10-16 12:47:34','2016-10-16 12:47:34',NULL),(10,'GIF template','\n<div style=\"width: 100%;padding:0;margin:0;border:0px solid blue;text-align: center;\">\n    <span style=\"width: 480px;\"><table\n                    style=\"width:480px;padding:5px;margin: 0px auto;\">\n                <tr style=\"border:0px solid red;\">\n                    <td style=\"border:1px solid #c4c4c4;\" colspan=\"2\"><h3 style=\"margin:0;padding:0;\">#NAME#</h3></td>\n                </tr>\n                <tr style=\"border:0px solid red;\">\n                    <td style=\"border:1px solid #c4c4c4;\">#CONTENT_A#</td>\n                    <td style=\"border:1px solid #c4c4c4;\">#CONTENT_B#</td>\n                </tr>\n            </table><img style=\"border:1px solid #d2d2d2;\" src=\"../appfiles/resource/#IMAGE#\" width=\"480\" height=\"480\" frameborder=\"0\">\n    <p style=\"border:0px solid red;\">#DESCRIPTION#</p>\n    <p style=\"text-align: center;\"><a href=\"/\"><img src=\"../img/back.png\" alt=\"Go back\" title=\"Go back\" width=\"38px\"></a></p></span></div>','2016-10-16 12:47:34','2016-10-16 12:47:34',NULL),(11,'Image template','\n<div style=\"width: 100%;padding:0;margin:0;border:0px solid blue;text-align: center;\">\n    <span style=\"width: 480px;\"><table\n                    style=\"width:480px;padding:5px;margin: 0px auto;\">\n                <tr style=\"border:0px solid red;\">\n                    <td style=\"border:1px solid #c4c4c4;\" colspan=\"2\"><h3 style=\"margin:0;padding:0;\">#NAME#</h3></td>\n                </tr>\n                <tr style=\"border:0px solid red;\">\n                    <td style=\"border:1px solid #c4c4c4;\">#CONTENT_A#</td>\n                    <td style=\"border:1px solid #c4c4c4;\">#CONTENT_B#</td>\n                </tr>\n            </table><img style=\"border:1px solid #d2d2d2;\" src=\"../appfiles/resource/#IMAGE#\" width=\"480\" frameborder=\"0\">\n    <p style=\"border:0px solid red;\">#DESCRIPTION#</p>\n    <p style=\"text-align: center;\"><a href=\"/\"><img src=\"../img/back.png\" alt=\"Go back\" title=\"Go back\" width=\"38px\"></a></p></span></div>','2016-10-16 12:47:34','2016-10-16 12:47:34',NULL),
(12,'Video template','\n<div style=\"width: 100%;padding:0;margin:0;text-align: center;\">\n    <span style=\"width: 480px;\"><table\n                    style=\"width:480px;padding:5px;margin: 0px auto;\">\n                <tr style=\"border:0px solid red;\">\n                    <td style=\"border:1px solid #c4c4c4;\" colspan=\"2\"><h3 style=\"margin:0;padding:0;\">#NAME#</h3></td>\n                </tr>\n                <tr style=\"border:0px solid red;\">\n                    <td style=\"border:1px solid #c4c4c4;\">#CONTENT_A#</td>\n                    <td style=\"border:1px solid #c4c4c4;\">#CONTENT_B#</td>\n                </tr>\n            </table><iframe style=\"border:1px solid #d2d2d2;\" src=\"#URL#\" width=\"480\" height=\"480\"\n    frameborder=\"0\" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>\n    <p class=\"details-description\">#DESCRIPTION#</p>\n    <p style=\"text-align: center;\"><a href=\"#BASE_URL#\"><img src=\"../img/back.png\" alt=\"Go back\" title=\"Go back\" width=\"38px\"></a></p></span></div>','2016-10-16 12:47:34','2016-10-16 12:47:34',NULL),
(13,'Olympops','<body style=\"background-color: #ff0076;\" />\n\n    <div class=\"template-details-title\">#NAME#</div>\n    <div
id=\"video-panel\" class=\"row template-row-container\">\n        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\">\n            <iframe id=\"video-frame\" style=\"border:10px solid black;background-color: #000;padding:0;margin:0 auto 0\n            auto;width: 100%;height:350px;\" src=\"#URL#\" frameborder=\"0\" webkitallowfullscreen mozallowfullscreen\n            allowfullscreen></iframe>\n        </div>\n    </div>\n\n    <div class=\"row template-row-container template-sub-container\">\n        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text\">\n            #DESCRIPTION#\n        </div>\n    </div>\n\n    <div class=\"template-row-container\">
        <div class=\"row\">
            <img class=\"details-work-image col-xs-12 col-sm-6 col-md-6 col-lg-4\" src=\"../img/gifs/1.OlympopRings_400sq_EZ.gif\">
            <img class=\"details-work-image col-xs-12 col-sm-6 col-md-6 col-lg-4\" src=\"../img/gifs/2.Diving_400sq_EZ.gif\">
            <img class=\"details-work-image col-xs-12 col-sm-6 col-md-6 col-lg-4\" src=\"../img/gifs/3.Javelin_400sq.gif\">
            <img class=\"details-work-image col-xs-12 col-sm-6 col-md-6 col-lg-4\" src=\"../img/gifs/4.weightLift_400sq.gif\">
            <img class=\"details-work-image col-xs-12 col-sm-6 col-md-6 col-lg-4\" src=\"../img/gifs/5.Wrestling_400sq_EZ.gif\">
            <img class=\"details-work-image col-xs-12 col-sm-6 col-md-6 col-lg-4\" src=\"../img/gifs/6.VuvuReboot_400sq.gif\">
        </div>
    </div>
        <div class=\"row template-row-container template-sub-container\">
        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text\">
            <img src=\"../img/stills/divingStill.jpg\" width=\"100%\" />
        </div>
    </div>
    <div class=\"template-credits-title\">credits</div>\n    <div class=\"row template-credits-row-container\">\n        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\">\n            <div class=\"template-credits-label\">Director</div>\n            <div class=\"template-credits-text\">Russ Etheridge</div>\n            <div class=\"template-credits-label\">Produced</div>\n            <div class=\"template-credits-text\">Animade</div>\n            <div class=\"template-credits-label\">Sound</div>\n            <div class=\"template-credits-text\">Mutant Jukebox</div>\n        </div>\n    </div>','2017-02-17 11:09:28','2017-02-17 11:09:28',NULL),
(14,'Bathroom boarder','<body style=\"background-color: #00A69A;\" />\n    <div class=\"template-details-title\">#NAME#</div>\n    <div id=\"video-panel\" class=\"row template-row-container\">\n        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\">\n            <iframe id=\"video-frame\" style=\"border:10px solid black;background-color: #000;padding:0;margin:0 auto 0\n            auto;width: 100%;height:350px;\" src=\"#URL#\" frameborder=\"0\" webkitallowfullscreen mozallowfullscreen\n            allowfullscreen></iframe>\n        </div>\n    </div>\n\n    <div class=\"row template-row-container template-sub-container\">\n        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text\">\n            #DESCRIPTION#\n        </div>\n    </div>\n\n    <div class=\"row template-row-container template-sub-container\">\n        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text\">\n            <img src=\"#BASE_URL#img/thumbs/#THUMB#\" width=\"100%\" />\n        </div>\n    </div>\n\n    <div class=\"template-credits-title\">credits</div>\n    <div class=\"row template-credits-row-container\">\n        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\">\n            <div class=\"template-credits-label\">Director</div>\n            <div class=\"template-credits-text\">Russ Etheridge</div>\n            <div class=\"template-credits-label\">Produced</div>\n            <div class=\"template-credits-text\">Animade</div>\n            <div class=\"template-credits-label\">Sound</div>\n            <div class=\"template-credits-text\">Mutant Jukebox</div>\n        </div>\n    </div>','2017-02-17 11:09:28','2017-02-17 11:09:28',NULL),
(15,'Blocks','<body style=\"background-color: #d2d2d2;\" />\n\n    <div
class=\"template-details-title\">#NAME#</div>\n    <div
id=\"video-panel\" class=\"row template-row-container\">\n        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\">\n            <iframe id=\"video-frame\" style=\"border:10px solid black;background-color: #000;padding:0;margin:0 auto 0\n            auto;width: 100%;height:350px;\" src=\"#URL#\" frameborder=\"0\" webkitallowfullscreen mozallowfullscreen\n            allowfullscreen></iframe>\n        </div>\n    </div>\n\n    <div class=\"row template-row-container template-sub-container\">\n        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text\">\n            #DESCRIPTION#\n        </div>\n    </div>\n\n
        <div class=\"row template-row-container template-sub-container\">
        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text\">
            <img src=\"../img/stills/1.muscles_01.jpg\" width=\"100%\" />
        </div>
    </div>\n\n
        <div class=\"row template-row-container template-sub-container\">
        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text\">
            <img src=\"../img/stills/2.blockyasaur_01.jpg\" width=\"100%\" />
        </div>
    </div>\n\n
        <div class=\"row template-row-container template-sub-container\">
        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text\">
            <img src=\"../img/stills/3.belly_01.jpg\" width=\"100%\" />
        </div>
    </div>\n\n
    <div class=\"template-credits-title\">credits</div>\n    <div class=\"row template-credits-row-container\">\n        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\">\n            <div class=\"template-credits-label\">Director</div>\n            <div class=\"template-credits-text\">Russ Etheridge</div>\n   <div class=\"template-credits-label\">Sound</div>\n            <div class=\"template-credits-text\">Mutant Jukebox</div>\n        </div>\n    </div>','2017-02-23 11:09:28','2017-02-23 11:09:28',NULL),
(16,'Weetabix','<body style=\"background-color: #a3cbeb;\" />\n\n    <div
class=\"template-details-title\">#NAME#</div>\n    <div
id=\"video-panel\" class=\"row template-row-container\">\n        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\">\n            <iframe id=\"video-frame\" style=\"border:10px solid black;background-color: #000;padding:0;margin:0 auto 0\n            auto;width: 100%;height:350px;\" src=\"#URL#\" frameborder=\"0\" webkitallowfullscreen mozallowfullscreen\n            allowfullscreen></iframe>\n        </div>\n    </div>\n\n    <div class=\"row template-row-container template-sub-container\">\n        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text\">\n            #DESCRIPTION#\n        </div>\n    </div>\n\n
        <div class=\"row template-row-container template-sub-container\">
        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text\">
            <img src=\"../img/stills/1.catchTrain.png\" width=\"100%\" />
        </div>
    </div>\n\n
        <div class=\"row template-row-container template-sub-container\">
        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text\">
            <img src=\"../img/stills/2.spaceDance.png\" width=\"100%\" />
        </div>
    </div>\n\n
    <div class=\"template-credits-title\">credits</div>\n    <div class=\"row template-credits-row-container\">\n        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\">\n            <div class=\"template-credits-label\">Designed and Directed</div>\n            <div class=\"template-credits-text\">Russ Etheridge</div>\n   <div class=\"template-credits-label\">Produced</div>\n            <div class=\"template-credits-text\">Animade</div>\n   <div class=\"template-credits-label\">Agency</div>\n            <div class=\"template-credits-text\">Cake</div>\n   <div
    class=\"template-credits-label\">Client</div>\n            <div class=\"template-credits-text\">Weetabix</div>\n        </div>\n    </div>','2017-02-23 11:09:28','2017-02-23 11:09:28',NULL);
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

-- Dump completed on 2017-02-17 17:21:19
