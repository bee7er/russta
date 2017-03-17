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
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
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
INSERT INTO `resources` VALUES
(1,'video','olympops','olympops','<p>A few months before the Rio Olympics 2016, Animade tasked me with creating some fun animations in celebration of the events.</p>
<p>Every great idea starts with a great pun and Olympops was no exception. Many gems were suggested that unfortunately didn''t make it, such as ''Olympigs'' and ''Old Limb Pics''. Tom, Ed and I thrashed through possible concepts before settling on squeeze and pump actioned balloons on the verge of popping.</p>
<p>They were originally released as a series of looping animations which you can watch below. Then, as a final send-off we released the full edit which you can sit back and enjoy above.</p>
<p>Sound kindly provided by the incredible award-winning Mutant Jukebox.</p>',NULL,NULL,'','olympops_th.jpg','https://player.vimeo.com/video/205363016',13,'2017-02-17 11:19:20','2017-02-17 11:19:20',NULL),
(2,'video','blocks','blocks','<p>This started as an animation technique I created for some unused client work. I decided to develop it into a fun character exploration.</p><p>I asked Sherv from Mutant Jukebox to knock up some sounds and he came back with an awesome little jingle that made it feel like the intro to a kids'' show. It inspired me to add in the title screen at the end.</p><p>If you are a TV producer looking for the next Morph or OOglies, look no further!</p><p>Below are some fun concept photos I made using toy wooden blocks.</p>
',NULL,NULL,'','blocks_th.jpg','https://player.vimeo
.com/video/202748408',15,'2017-02-17 11:19:20','2017-02-17 11:19:20',NULL),
(3,'video','weetabix - on the go','weetabix-onthego','<p>A series of quick morning cheats I designed and directed for Weetabix while at Animade. This collection of breakfast busting shorts was used as a supporting social media campaign for their main live action TV ad.</p><p>They tasked us with creating a series of skits and comic strips inspired by aeroplane safety cards. I knocked up some designs and worked with them to develop 15 morning cheat scenarios. Above is a selection of my favourites and below are some of the comic strips.</p><p>Animade – On the Go</p>','','','','weetabix_th.jpg','https://player.vimeo.com/video/205356654',16,'2016-10-16 12:47:36','2016-10-16 12:47:36',NULL),
(4,'video','brick lane','bricklane','A fun short explaining Brick Lane property management''s interesting new property based ISA.',NULL,NULL,'','bricklane_th.jpg',
'https://player.vimeo.com/video/205358831',17,
'2017-02-17 11:19:20','2017-02-17 11:19:20',NULL),
(5,'video','good hand','goodhand','<p>Good hand, nice hand...</p><p>Have a look at a little edit with sound
below!</p><p>Audio kindly provided by my very own brother and sound whizz, Ben Etheridge.</p>',NULL,
NULL,'','goodHand_th.jpg','https://player.vimeo
.com/video/000000000',18,
'2017-02-17 11:19:20','2017-02-17 11:19:20',NULL),
(6,'video','train squeeze','trainsqueeze','<p>A series of seriously squeezey moments we can all relate to.</p><p>This little loop inspired by my London commute packed a serious punch for me on social media, perhaps down to it’s sheer universality. Shortly after its release it became one of my most viral successes on Twitter with nearly 1000 likes and hundreds of re-tweets before getting picked up by TimeOut London and receiving over 200k views on their Facebook page.</p><p>The follow-up to the Train Squeeze loop, the Escalator Squeeze loop, also attracted a hefty amount of social media attention, perhaps most impressively being viewed over 1.3 million times on Instagram!</p><p>More coming soon ;o)</p>',NULL,NULL,'','trainSqueeze_th.jpg','https://player.vimeo.com/video/161372781',19,'2017-02-17 11:19:20','2017-02-17 11:19:20',NULL),
(7,'video','propz','propz','<p>My feline-vision-aid contribution to the Propz series.</p>','<p>My valentines-shoe contribution to the Propz series.
</p><p>Check out the rest of the amazing weirdness featuring some of Animade''s top talent over on their vimeo page.
(<a href="https://vimeo.com/channels/propz" target="_blank">https://vimeo.com/channels/propz</a>)
</p>
','','','propzBinoculars_th.jpg','https://player.vimeo
.com/video/122770363',20,'2016-10-16 12:47:36','2016-10-16 12:47:36',NULL),
(8,'video','bathroom boarder','bathroomboarder','A little arachnid in my bathroom.','Hello from content A','Hello from content B','','bathroomBoarder_th.jpg','https://player.vimeo
.com/video/161502476',14,'2016-10-16 12:47:36','2017-02-17 17:20:36',NULL),
(9,'video','gifs for fun','gifsforfun','','','','','gifsMisc_th.jpg','https://player.vimeo.com/video/145770435',21,
'2016-10-16 12:47:36','2016-10-16 12:47:36',NULL),
(10,'video','the lion','thelion','<p>This project is an award winning animated music video for US based band Escapist Papers. My role was compositor while working closely with the director and main animator on the project, the talented Peter Baynton.</p><p>The animation is a mixture of photographed cardboard cutouts and hand drawn animation composited in After Effects. The main challenge for me on this job was to create the sense that the animation is being filmed in a miniature puppet set. This involved working with an array of cardboard textures and developing a convincing lighting setup. A sense of depth was created through the use of an elaborate shadow set-up and the whole piece was brought together with a pleasing grade.</p>','<p>AWARDS
</p><p>
British Animation Awards, UK 2014<br />
Public Choice Best Music Video
</p><p>
Crystal Palace International Film Festival, UK 2013<br />
Best Animation
</p><p>
Crystal Palace International Film Festival, UK 2013<br />
Best Music Video
</p><p>
Annecy International Festival of Animation, France 2013<br />
Special Jury Award, Commissioned Films<br />
Annecy 2013
</p><p>
Screenings:<br />
Edinburgh Fringe Festival 26th June 2013</p>','','','lion_th.jpg','https://player.vimeo.com/video/60453523',22,
'2016-10-16 12:47:36','2016-10-16
12:47:36',NULL),
(11,'video','robbie williams – take the crown','robbiewilliams–takethecrown','<p>Promo for Robbie Williams''s ''Take the Crown'' album release.
</p><p>
This project was a video to promote Robbie Williams''s ''Take the Crown'' album release. All created in Cinema 4D
and After Effects using 3D scans of Robbie Williams''s head.</p>','','','','robbieWilliams_th.jpg','http://player
.vimeo.com/video/69224915',23,'2016-10-16 12:47:36',
'2016-10-16 12:47:36',NULL),
(12,'video','motion design reel','motiondesignreel','Motion Design showreel from various freelance jobs.','','','','motionReel_th.jpg','https://player.vimeo.com/video/104406081',24,'2016-10-16 12:47:36','2016-10-16 12:47:36',NULL);
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
INSERT INTO `templates` VALUES
(13,'Olympops','<body style=\"background-color: #ff0076;\" /><style>.template-credits-label{color: #ff0076;}</style>\n    <div class=\"template-details-title\">#TITLE#</div>\n    <div
id=\"video-panel\" class=\"row template-row-container\">\n        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\">\n            <iframe id=\"video-frame\" class=\"video-frame\" src=\"#URL#\" frameborder=\"0\" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>\n        </div>\n    </div>\n\n    <div class=\"row template-row-container template-sub-container\">\n        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text\">\n            #DESCRIPTION#\n        </div>\n    </div>\n\n
<div class=\"template-row-container\">
        <div class=\"row\">
            <img class=\"details-work-image col-xs-12 col-sm-6 col-md-6 col-lg-4\" src=\"../img/gifs/1.OlympopRings_400sq_EZ.gif\">
            <img class=\"details-work-image col-xs-12 col-sm-6 col-md-6 col-lg-4\" src=\"../img/gifs/2.Diving_400sq_EZ.gif\">
            <img class=\"details-work-image col-xs-12 col-sm-6 col-md-6 col-lg-4\" src=\"../img/gifs/3.Javelin_400sq.gif\">
            <img class=\"details-work-image col-xs-12 col-sm-6 col-md-6 col-lg-4\" src=\"../img/gifs/4.weightLift_400sq.gif\">
            <img class=\"details-work-image col-xs-12 col-sm-6 col-md-6 col-lg-4\" src=\"../img/gifs/5.Wrestling_400sq_EZ.gif\">
            <img class=\"details-work-image col-xs-12 col-sm-6 col-md-6 col-lg-4\" src=\"../img/gifs/6.VuvuReboot_400sq.gif\">
        </div>
    </div>\n\n
        <div class=\"row template-row-container template-sub-container\">
        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text\">
            <img src=\"../img/stills/divingStill.jpg\" width=\"100%\" />
        </div>
    </div>
    <div class=\"template-credits-title\">credits</div>\n    <div class=\"row template-credits-row-container\">\n        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\">\n            <div class=\"template-credits-label\">Director</div>\n            <div class=\"template-credits-text\">Russ Etheridge</div>\n            <div class=\"template-credits-label\">Production</div>\n            <div class=\"template-credits-text\">Animade</div>\n            <div class=\"template-credits-label\">Sound</div>\n            <div class=\"template-credits-text\">Mutant Jukebox</div>\n        </div>\n    </div>','2017-02-17 11:09:28','2017-02-17 11:09:28',NULL),

(14,'Bathroom boarder','<body style=\"background-color: #25d7d1;\" /><style>.template-credits-label{color: #25d7d1;}</style>\n    <div class=\"template-details-title\">#TITLE#</div>\n    <div id=\"video-panel\" class=\"row template-row-container\">\n        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\">\n            <iframe id=\"video-frame\" class=\"video-frame\" src=\"#URL#\" frameborder=\"0\" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>\n        </div>\n    </div>\n\n    <div class=\"row template-row-container template-sub-container\">\n        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text\">\n            #DESCRIPTION#\n        </div>\n    </div>\n\n    <div class=\"row template-row-container template-sub-container\">\n        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text\">\n            <img src=\"#BASE_URL#img/gifs/grindGIF_400x400.gif\" width=\"100%\" />\n        </div>\n    </div>\n\n    <div class=\"template-credits-title\">credits</div>\n    <div class=\"row template-credits-row-container\">\n        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\">\n            <div class=\"template-credits-label\">Direction</div>\n            <div class=\"template-credits-text\">Russ Etheridge</div>\n            <div class=\"template-credits-label\">Production</div>\n            <div class=\"template-credits-text\">Animade</div>\n            <div class=\"template-credits-label\">Sound</div>\n            <div class=\"template-credits-text\">Mutant Jukebox</div>\n        </div>\n    </div>','2017-02-17 11:09:28','2017-02-17 11:09:28',NULL),

(15,'Blocks','<body style=\"background-color: #f7dd00;\" /><style>.template-credits-label{color: #f7dd00;}</style>\n
<div
class=\"template-details-title\">#TITLE#</div>\n    <div
id=\"video-panel\" class=\"row template-row-container\">\n        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\">\n            <iframe id=\"video-frame\" class=\"video-frame\" src=\"#URL#\" frameborder=\"0\" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>\n        </div>\n    </div>\n\n    <div class=\"row template-row-container template-sub-container\">\n        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text\">\n            #DESCRIPTION#\n        </div>\n    </div>\n\n
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

(16,'Weetabix','<body style=\"background-color: #4d82b4;\" /><style>.template-credits-label{color: #4d82b4;}</style>\n
    <div
class=\"template-details-title\">#TITLE#</div>\n    <div
id=\"video-panel\" class=\"row template-row-container\">\n        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\">\n            <iframe id=\"video-frame\" class=\"video-frame\" src=\"#URL#\" frameborder=\"0\" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>\n        </div>\n    </div>\n\n    <div class=\"row template-row-container template-sub-container\">\n        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text\">\n            #DESCRIPTION#\n        </div>\n    </div>\n\n
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
    <div class=\"template-credits-title\">credits</div>\n    <div class=\"row template-credits-row-container\">\n        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\">\n            <div class=\"template-credits-label\">Design and Direction</div>\n            <div class=\"template-credits-text\">Russ Etheridge</div>\n   <div class=\"template-credits-label\">Production</div>\n            <div class=\"template-credits-text\">Animade</div>\n   <div class=\"template-credits-label\">Agency</div>\n            <div class=\"template-credits-text\">Cake</div>\n   <div
    class=\"template-credits-label\">Client</div>\n            <div class=\"template-credits-text\">Weetabix</div>\n        </div>\n    </div>','2017-02-23 11:09:28','2017-02-23 11:09:28',NULL),

(17,'Brick Lane','<body style=\"background-color: #3b9240;\" /><style>.template-credits-label{color: #3b9240;
}</style>\n    <div
class=\"template-details-title\">#TITLE#</div>\n    <div
id=\"video-panel\" class=\"row template-row-container\">\n        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\">\n            <iframe id=\"video-frame\" class=\"video-frame\" src=\"#URL#\" frameborder=\"0\" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>\n        </div>\n    </div>\n\n    <div class=\"row template-row-container template-sub-container\">\n        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text\">\n            #DESCRIPTION#\n        </div>\n    </div>\n\n
    <div class=\"template-credits-title\">credits</div>\n    <div class=\"row template-credits-row-container\">\n        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\">\n
    <div class=\"template-credits-label\">Direction</div>\n<div class=\"template-credits-text\">Russ
    Etheridge</div>\n
    <div class=\"template-credits-label\">Design</div>\n<div class=\"template-credits-text\">Russ
    Etheridge<br />Tom Judd</div>\n
       <div class=\"template-credits-label\">Production</div>\n <div class=\"template-credits-text\">Animade</div>\n
       <div class=\"template-credits-label\">Client</div>\n <div class=\"template-credits-text\">Brick Lane Property</div>\n        </div>\n    </div>','2017-02-23 11:09:28','2017-02-23 11:09:28',NULL),

(18,'Good hand','<body style=\"background-color: #00ffbb;\" /><style>.template-credits-label{color: #00ffbb;
}</style>\n    <div
class=\"template-details-title\">#TITLE#</div>\n

<div class=\"template-row-container\">
        <div class=\"row\">
            <img class=\"details-work-image col-xs-12 col-sm-6 col-md-6 col-lg-4\" src=\"../img/gifs/gh_gooFlop_400px.gif\">
            <img class=\"details-work-image col-xs-12 col-sm-6 col-md-6 col-lg-4\" src=\"../img/gifs/gh_handGoo_400px.gif\">
            <img class=\"details-work-image col-xs-12 col-sm-6 col-md-6 col-lg-4\" src=\"../img/gifs/gh_magicBox_BOTTOM_400px.gif\">
            <img class=\"details-work-image col-xs-12 col-sm-6 col-md-6 col-lg-4\" src=\"../img/gifs/gh_magicBox_TOP_400px.gif\">
            <img class=\"details-work-image col-xs-12 col-sm-6 col-md-6 col-lg-4\" src=\"../img/gifs/gh_thingWalk_400px.gif\">
            <img class=\"details-work-image col-xs-12 col-sm-6 col-md-6 col-lg-4\" src=\"../img/gifs/gh_gooFlop_400px.gif\">
        </div>
    </div>

<div class=\"row template-row-container template-sub-container\">\n        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text\">\n            #DESCRIPTION#\n        </div>\n    </div>\n\n

<div id=\"video-panel\" class=\"row template-row-container\">\n        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\">\n            <iframe id=\"video-frame\" class=\"video-frame\" src=\"#URL#\" frameborder=\"0\" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>\n        </div>\n    </div>\n\n

    <div class=\"template-credits-title\">credits</div>\n    <div class=\"row template-credits-row-container\">\n        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\">\n
    <div class=\"template-credits-label\">Design and Direction</div>\n<div
    class=\"template-credits-text\">Russ
    Etheridge</div>\n
    <div class=\"template-credits-label\">Sound</div>\n<div class=\"template-credits-text\">Ben
    Etheridge</div>\n       </div>\n    </div>','2017-02-23 11:09:28','2017-02-23 11:09:28',NULL),

(19,'Squeeze','<body style=\"background-color: #0028ab;\" /><style>.template-credits-label{color: #0028ab;}</style>\n
    <div
class=\"template-details-title\">#TITLE#</div>\n
<div id=\"video-panel\" class=\"row template-row-container\">\n        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\">\n            <iframe id=\"video-frame\" class=\"video-frame\" src=\"#URL#\" frameborder=\"0\" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>\n        </div>\n    </div>\n\n
<div id=\"video-panel\" class=\"row template-row-container\">\n        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\">\n            <iframe id=\"video-frame\" class=\"video-frame\" src=\"https://player.vimeo.com/video/200832260/\" frameborder=\"0\" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>\n        </div>\n    </div>\n\n

<div class=\"row template-row-container template-sub-container\">\n        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text\">\n            #DESCRIPTION#\n        </div>\n    </div>\n\n
        <div class=\"row template-row-container template-sub-container\">
        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text\">
            <img src=\"../img/gifs/1.trainSqueeze_450x450.gif\" width=\"100%\" />
        </div>
    </div>\n\n
        <div class=\"row template-row-container template-sub-container\">
        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text\">
            <img src=\"../img/gifs/2.EscalatorSqueeze_04_450sq_EZ.gif\" width=\"100%\" />
        </div>
    </div>\n\n
        <div class=\"row template-row-container template-sub-container\">
        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text\">
            <img src=\"../img/stills/3.peepsStill.jpg\" width=\"100%\" />
        </div>
    </div>\n\n
    <div class=\"template-credits-title\">credits</div>\n    <div class=\"row template-credits-row-container\">\n        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\">\n            <div class=\"template-credits-label\">Design and Direction</div>\n            <div class=\"template-credits-text\">Russ Etheridge</div>\n   <div class=\"template-credits-label\">Production</div>\n            <div class=\"template-credits-text\">Animade</div>\n        </div>\n    </div>','2017-02-23 11:09:28','2017-02-23 11:09:28',NULL),

(20,'Propz','<body style=\"background-color: #1c968a;\" /><style>.template-credits-label{color: #1c968a;}</style>\n
    <div
class=\"template-details-title\">#TITLE#</div>\n
<div id=\"video-panel\" class=\"row template-row-container\">\n        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\">\n            <iframe id=\"video-frame-1\" class=\"video-frame\" src=\"#URL#\" frameborder=\"0\" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>\n        </div>\n    </div>\n\n

<div class=\"row template-row-container template-sub-container\">\n        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text\">\n            #DESCRIPTION#\n        </div>\n    </div>\n\n

<div id=\"video-panel\" class=\"row template-row-container\">\n        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\">\n            <iframe id=\"video-frame-2\" class=\"video-frame\" src=\"https://player.vimeo.com/video/119444475/\" frameborder=\"0\" webkitallowfullscreen mozallowfullscreen\n            allowfullscreen></iframe>\n        </div>\n    </div>\n\n

<div class=\"row template-row-container template-sub-container\">\n        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text\">\n #CONTENT_A#\n        </div>\n    </div>\n\n

    <div class=\"template-credits-title\">credits</div>\n    <div class=\"row template-credits-row-container\">\n        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\">\n            <div class=\"template-credits-label\">Director</div>\n            <div class=\"template-credits-text\">Russ Etheridge</div>\n   <div class=\"template-credits-label\">Production</div>\n            <div class=\"template-credits-text\">Animade</div>\n        </div>\n    </div>','2017-02-23 11:09:28','2017-02-23 11:09:28',NULL),

(21,'Gifs for Fun','<body style=\"background-color: #00daff;\" /><style>.template-credits-label{color: #00daff;
}</style>\n    <div
class=\"template-details-title\">#TITLE#</div>\n

<div class=\"template-row-container\">
        <div class=\"row\">
            <img class=\"details-work-image col-xs-12 col-sm-6 col-md-6 col-lg-4\" src=\"../img/gifs/1.gf_bike_10_500x500.gif\">
            <img class=\"details-work-image col-xs-12 col-sm-6 col-md-6 col-lg-4\" src=\"../img/gifs/2.gf_chipWaffle_02_400.gif\">
            <img class=\"details-work-image col-xs-12 col-sm-6 col-md-6 col-lg-4\" src=\"../img/gifs/3.gf_pistachios_400sq.gif\">
            <img class=\"details-work-image col-xs-12 col-sm-6 col-md-6 col-lg-4\" src=\"../img/gifs/4.gf_blizzard_01.gif\">
            <img class=\"details-work-image col-xs-12 col-sm-6 col-md-6 col-lg-4\" src=\"../img/gifs/5.gf_fringe_031.gif\">
            <img class=\"details-work-image col-xs-12 col-sm-6 col-md-6 col-lg-4\" src=\"../img/gifs/6.gf_tents_scene_10_500x500.gif\">
            <img class=\"details-work-image col-xs-12 col-sm-6 col-md-6 col-lg-4\" src=\"../img/gifs/1.trainSqueeze_450x450.gif\">
            <img class=\"details-work-image col-xs-12 col-sm-6 col-md-6 col-lg-4\" src=\"../img/gifs/2.EscalatorSqueeze_04_450sq_EZ.gif\">
            <img class=\"details-work-image col-xs-12 col-sm-6 col-md-6 col-lg-4\" src=\"../img/gifs/gh_gooFlop_400px.gif\">
            <img class=\"details-work-image col-xs-12 col-sm-6 col-md-6 col-lg-4\" src=\"../img/gifs/gh_handGoo_400px.gif\">
            <img class=\"details-work-image col-xs-12 col-sm-6 col-md-6 col-lg-4\" src=\"../img/gifs/gh_magicBox_BOTTOM_400px.gif\">
            <img class=\"details-work-image col-xs-12 col-sm-6 col-md-6 col-lg-4\" src=\"../img/gifs/gh_magicBox_TOP_400px.gif\">
            <img class=\"details-work-image col-xs-12 col-sm-6 col-md-6 col-lg-4\" src=\"../img/gifs/gh_thingWalk_400px.gif\">
            <img class=\"details-work-image hidden-xs col-sm-6 col-md-6 col-lg-4\" src=\"../img/gifs/1.gf_bike_10_500x500.gif\">
            <img class=\"details-work-image hidden-xs hidden-sm hidden-md col-lg-4\" src=\"../img/gifs/2.gf_chipWaffle_02_400.gif\">
        </div>
    </div>

        <div class="hidden-xs col-sm-12 hidden-md hidden-lg header-block">

    </div>

','2017-02-23 11:09:28','2017-02-23 11:09:28',NULL),

(22,'The Lion','<body style=\"background-color: #cf6689;\" /><style>.template-credits-label{color: #cf6689;}</style>\n
    <div
class=\"template-details-title\">#TITLE#</div>\n
<div id=\"video-panel\" class=\"row template-row-container\">\n        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\">\n            <iframe id=\"video-frame\" class=\"video-frame\" src=\"#URL#\" frameborder=\"0\" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>\n        </div>\n    </div>\n\n

<div class=\"row template-row-container template-sub-container\">\n        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text\">\n            #DESCRIPTION#\n        </div>\n    </div>\n\n

    <div class=\"row template-row-container template-sub-container\">
        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text\">
            <img src=\"../img/stills/lionRhinoStill.jpg\" width=\"100%\" />
        </div>
    </div>\n\n

<div class=\"row template-row-container template-sub-container\">\n        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text\">\n #CONTENT_A#\n        </div>\n    </div>\n\n

    <div class=\"template-credits-title\">credits</div>\n
    <div class=\"row template-credits-row-container\">\n
      <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\">\n
        <div class=\"template-credits-label\">Director</div><div class=\"template-credits-text\">Peter Baynton</div>\n
        <div class=\"template-credits-label\">Animation</div>\n <div class=\"template-credits-text\">PeterBaynton<br>Tim McCourt<br>Laura Nailor</div>\n
        <div class=\"template-credits-label\">Compositing, Grading and Finishing</div>\n <div
        class=\"template-credits-text\">Russ Etheridge</div>\n
        <div class=\"template-credits-label\">Music</div>\n <div
        class=\"template-credits-text\">Benjamin Scheuer</div>\n
      </div>\n
    </div>','2017-02-23 11:09:28','2017-02-23 11:09:28',NULL),

(23,'Robbie Williams','<body style=\"background-color: #00daff;\" /><style>.template-credits-label{color: #00daff;
}</style>\n    <div
class=\"template-details-title\">#TITLE#</div>\n
<div id=\"video-panel\" class=\"row template-row-container\">\n        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\">\n            <iframe id=\"video-frame\" class=\"video-frame\" src=\"#URL#\" frameborder=\"0\" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>\n        </div>\n    </div>\n\n

<div class=\"row template-row-container template-sub-container\">\n        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text\">\n            #DESCRIPTION#\n        </div>\n    </div>\n\n

    <div class=\"template-credits-title\">credits</div>\n
    <div class=\"row template-credits-row-container\">\n
      <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\">\n
        <div class=\"template-credits-label\">Design</div><div class=\"template-credits-text\">Ros Urien</div>\n
        <div class=\"template-credits-label\">Animation</div>\n <div class=\"template-credits-text\">Russ Etheridge</div>\n
        <div class=\"template-credits-label\">Client</div>\n <div
        class=\"template-credits-text\">Robbie Williams</div>\n
      </div>\n
    </div>','2017-02-23 11:09:28','2017-02-23 11:09:28',NULL),

(24,'Motion Design Reel 2014','<body style=\"background-color: #f7dd00;\" /><style>.template-credits-label{color:
#f7dd00;}</style>\n    <div
class=\"template-details-title\">#TITLE#</div>\n
<div id=\"video-panel\" class=\"row template-row-container\">\n        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12\">\n            <iframe id=\"video-frame\" class=\"video-frame\" src=\"#URL#\" frameborder=\"0\" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>\n        </div>\n    </div>\n\n

<div class=\"row template-row-container template-sub-container\">\n        <div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text\">\n            #DESCRIPTION#\n        </div>\n    </div>','2017-02-23 11:09:28','2017-02-23 11:09:28',NULL);
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
