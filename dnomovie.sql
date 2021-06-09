-- MySQL dump 10.13  Distrib 5.5.49, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: dnomovie
-- ------------------------------------------------------
-- Server version	5.5.49-0ubuntu0.14.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permission_group_id_689710a9a73b7457_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  CONSTRAINT `auth__content_type_id_508cf46651277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(22,'Can add webuser',8,'add_webuser'),(23,'Can change webuser',8,'change_webuser'),(24,'Can delete webuser',8,'delete_webuser'),(25,'Can add movie',9,'add_movie'),(26,'Can change movie',9,'change_movie'),(27,'Can delete movie',9,'delete_movie'),(28,'Can add movie history',10,'add_moviehistory'),(29,'Can change movie history',10,'change_moviehistory'),(30,'Can delete movie history',10,'delete_moviehistory'),(31,'Can add movie coment',11,'add_moviecoment'),(32,'Can change movie coment',11,'change_moviecoment'),(33,'Can delete movie coment',11,'delete_moviecoment'),(34,'Can add Question',12,'add_question'),(35,'Can change Question',12,'change_question'),(36,'Can delete Question',12,'delete_question'),(37,'Can add Answer',13,'add_answer'),(38,'Can change Answer',13,'change_answer'),(39,'Can delete Answer',13,'delete_answer'),(40,'Can add Tag',14,'add_tag'),(41,'Can change Tag',14,'change_tag'),(42,'Can delete Tag',14,'delete_tag'),(43,'Can add Activity',15,'add_activity'),(44,'Can change Activity',15,'change_activity'),(45,'Can delete Activity',15,'delete_activity'),(46,'Can add Notification',16,'add_notification'),(47,'Can change Notification',16,'change_notification'),(48,'Can delete Notification',16,'delete_notification'),(49,'Can add chat group',17,'add_chatgroup'),(50,'Can change chat group',17,'change_chatgroup'),(51,'Can delete chat group',17,'delete_chatgroup'),(52,'Can add movie spider',18,'add_moviespider'),(53,'Can change movie spider',18,'change_moviespider'),(54,'Can delete movie spider',18,'delete_moviespider');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$20000$S4M71WNmz4Rw$AonFPCUJ5drDGgk+oTZvUnmso4xv4ygzPJHhsjr8jic=','2016-05-11 21:57:26',1,'admin','','','1142394341@qq.com',1,1,'2016-03-15 10:11:19'),(15,'pbkdf2_sha256$20000$XNp7Fr4DOvX2$TzArNcy1g5rGHGiKFP6eBaWN6Zj+/fI2T4WWapQ89YE=','2016-04-30 19:58:31',0,'andy','','','853970293@qq.com',0,1,'2016-04-11 13:12:14'),(16,'pbkdf2_sha256$20000$OHcRw6mJVqrr$yKCb6LT/c0XfR/xziu4fPdOPCcInEPcGEgiiG3sWurs=','2016-05-18 09:09:41',0,'alex','','','1@qq.com',0,1,'2016-04-12 09:59:14'),(17,'pbkdf2_sha256$20000$mk8PH7zOm10s$3Ber3dAMet/zDWMIA1J1UJtiH37boHR4RezSRSPiaUQ=','2016-05-07 16:16:41',0,'feng','','','1@qq.com',0,1,'2016-04-15 20:21:27'),(18,'pbkdf2_sha256$20000$wpwfsJC21PsE$NkWReH5jfUKBV5nrHO1MXqDp8dFHPRNUyjADQ6U7i48=','2016-04-16 11:28:21',0,'alex_andy1','','','2@qq.com',0,1,'2016-04-16 11:28:20'),(19,'pbkdf2_sha256$20000$3IHCWqseyClt$ZQppo0CNA27Hw1o0/o3ZJeF8n7Jr7Sd6eECUFSSoZMM=','2016-04-16 16:03:53',0,'apache','','','4@qq.com',0,1,'2016-04-16 11:29:50'),(20,'pbkdf2_sha256$20000$gd1j75bmgQxt$r6EGw/et5Ev55ReQmHBlkTBE0PbdMopQ3e2Sv7lcHms=','2016-04-16 11:31:18',0,'feng1','','','3@qq.com',0,1,'2016-04-16 11:31:17'),(21,'pbkdf2_sha256$20000$CiG5VFMauYbk$dhnIPUMUUi3eaJt1MhXSVURATJJfN55OvFeCpZklvng=','2016-04-29 16:21:14',0,'tianxia123','','','123@qq.com',0,1,'2016-04-29 09:11:00');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_permissi_user_id_7f0938558328534a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `djang_content_type_id_697914295151027a_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `djang_content_type_id_697914295151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2016-03-15 10:20:06','2','alex',1,'',4,1),(2,'2016-03-17 10:54:46','9','admin123',3,'',4,1),(3,'2016-03-17 10:54:46','2','alex',3,'',4,1),(4,'2016-03-17 10:54:46','3','alex_.Y',3,'',4,1),(5,'2016-03-17 10:54:46','7','alex_.Ydfsfwfd',3,'',4,1),(6,'2016-03-17 10:54:46','5','alex_.Yew',3,'',4,1),(7,'2016-03-17 10:54:46','6','alex_.Yfdsfa',3,'',4,1),(8,'2016-03-17 10:54:46','8','alex_.Yl',3,'',4,1),(9,'2016-03-17 10:54:46','4','alex_.YY',3,'',4,1),(10,'2016-04-16 15:31:29','1','alex - 乱世佳人',1,'',11,1),(11,'2016-04-16 15:53:09','2','alex - 大话西游之大圣娶亲',1,'',11,1),(12,'2016-04-16 15:53:43','2','alex - 大话西游之大圣娶亲',2,'已修改 comment 。',11,1),(13,'2016-04-19 19:59:27','1','下载链接：http://www.xunlei.com',1,'',13,1),(14,'2016-04-26 19:45:05','7','alex',2,'已修改 friends 。',8,1),(15,'2016-04-26 19:45:49','1','Test',1,'',17,1),(16,'2016-04-29 09:11:39','12','tianxia123',2,'已修改 friends 。',8,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_45f3b1d93ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(9,'movie','movie'),(11,'movie','moviecoment'),(10,'movie','moviehistory'),(18,'movie','moviespider'),(15,'questions','activity'),(13,'questions','answer'),(16,'questions','notification'),(12,'questions','question'),(14,'questions','tag'),(6,'sessions','session'),(17,'webchat','chatgroup'),(8,'webuser','webuser');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2016-03-15 09:23:58'),(2,'auth','0001_initial','2016-03-15 09:24:00'),(3,'admin','0001_initial','2016-03-15 09:24:00'),(4,'contenttypes','0002_remove_content_type_name','2016-03-15 09:24:01'),(5,'auth','0002_alter_permission_name_max_length','2016-03-15 09:24:01'),(6,'auth','0003_alter_user_email_max_length','2016-03-15 09:24:01'),(7,'auth','0004_alter_user_username_opts','2016-03-15 09:24:01'),(8,'auth','0005_alter_user_last_login_null','2016-03-15 09:24:02'),(9,'auth','0006_require_contenttypes_0002','2016-03-15 09:24:02'),(10,'sessions','0001_initial','2016-03-15 09:24:02'),(11,'webuser','0001_initial','2016-03-15 10:08:18'),(12,'webuser','0002_auto_20160316_1253','2016-03-16 12:53:27'),(13,'webuser','0003_auto_20160317_0031','2016-03-17 00:32:11'),(14,'movie','0001_initial','2016-03-19 08:17:13'),(15,'movie','0002_auto_20160319_1111','2016-03-19 11:11:32'),(16,'movie','0003_auto_20160319_1333','2016-03-19 13:33:16'),(17,'movie','0004_moviecoment_moviehistory','2016-04-12 11:28:45'),(18,'movie','0005_auto_20160416_1125','2016-04-16 11:26:10'),(19,'movie','0006_auto_20160416_1534','2016-04-16 15:35:17'),(20,'movie','0007_auto_20160416_1549','2016-04-16 15:49:06'),(21,'questions','0001_initial','2016-04-17 20:58:13'),(22,'questions','0002_activity_notification','2016-04-21 18:48:36'),(23,'webuser','0004_auto_20160426_1936','2016-04-26 19:36:57'),(24,'webchat','0001_initial','2016-04-26 19:36:59'),(25,'movie','0008_auto_20160506_1928','2016-05-06 19:29:00'),(26,'movie','0009_auto_20160509_1519','2016-05-09 15:19:30'),(27,'movie','0002_moviespider_country','2016-05-10 16:56:10');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('06o119ukd3bkj6y44cmwubbdnlhy33tb','MzhkZjc5NTMxMzA3OWMwOWI5YWViNjZmZjYzYzNlYjY3NDY1MjA2MDp7fQ==','2016-03-31 00:32:54'),('0yvuwbezzkqx3z9disoounme4zvrjfi2','MzhkZjc5NTMxMzA3OWMwOWI5YWViNjZmZjYzYzNlYjY3NDY1MjA2MDp7fQ==','2016-03-31 00:43:42'),('2hc0lzfgqy783dzdkvvitql5d54ray93','NzQ1MDMzMmQ1NTczNWQ4ZmVmMGU5Y2ZlYmQ5MjJkYTQ5MjIyMWY3ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImI2MWQwYzFjNjE0MTVjOWE0MzFmN2E2MTdlNzBmNmQ2NGJkMmMxMmEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxNiJ9','2016-05-13 15:17:08'),('3lvhf4neh7qye85np0362yhek4ke0yva','M2M2Yjc2ZDY2MGQ2N2ZlYzdlMTNlNWY1MjJlMTBkNzY2NWQwNWE0ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImQwN2NmYTBhMmU2NDEzYmIwNWYxZTI1MTY4NGEyZDg2YzI2ZmIwNjUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMSJ9','2016-05-13 14:50:24'),('4dwiv5bmoba4u683biiv6mpou3a2mpmv','NzQ1MDMzMmQ1NTczNWQ4ZmVmMGU5Y2ZlYmQ5MjJkYTQ5MjIyMWY3ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImI2MWQwYzFjNjE0MTVjOWE0MzFmN2E2MTdlNzBmNmQ2NGJkMmMxMmEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxNiJ9','2016-05-14 19:57:48'),('5enxtxixedmdbd5dmlqxhiz72veuub8b','M2M2Yjc2ZDY2MGQ2N2ZlYzdlMTNlNWY1MjJlMTBkNzY2NWQwNWE0ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImQwN2NmYTBhMmU2NDEzYmIwNWYxZTI1MTY4NGEyZDg2YzI2ZmIwNjUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMSJ9','2016-05-13 14:29:26'),('9hjtvf9a8z0gfeweoirxdzkfygbubvj5','M2M2Yjc2ZDY2MGQ2N2ZlYzdlMTNlNWY1MjJlMTBkNzY2NWQwNWE0ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImQwN2NmYTBhMmU2NDEzYmIwNWYxZTI1MTY4NGEyZDg2YzI2ZmIwNjUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMSJ9','2016-05-13 14:42:37'),('dpm61q7npaxhou8as5evzuobx1cumzdr','ZmVhMmU5OWVhMGNjNTY0MDE0ZWU5MDM4YTE5NGVkYWY3ZWEzMjk3Mjp7Il9hdXRoX3VzZXJfaGFzaCI6IjUyOGQ0NDFlMDhiMjhlZjdlOGRlNTljYTcwZDFmZWNiZDlhMTllNDEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-05-25 21:20:27'),('gpoo9wl443af47vxrdpthxatktjfdirc','MzhkZjc5NTMxMzA3OWMwOWI5YWViNjZmZjYzYzNlYjY3NDY1MjA2MDp7fQ==','2016-03-31 00:45:10'),('hha08r45n9tvm0ekezy8so4eq1szlzuo','NzM0NWFlZmQyYmEyNmY2ZTYwMTFhYWMyMTk4OTdiMDQwOWJmNzhlMzp7Il9hdXRoX3VzZXJfaGFzaCI6ImE4ZWUzODIwYTkyYmI5N2I3MDM3MTZhZTJjMTkyZTJjMGQwZjM3MDYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI5In0=','2016-03-30 15:55:53'),('hhjtsoeju5rpvdugiupjfnvyopvz9etv','NzQ1MDMzMmQ1NTczNWQ4ZmVmMGU5Y2ZlYmQ5MjJkYTQ5MjIyMWY3ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImI2MWQwYzFjNjE0MTVjOWE0MzFmN2E2MTdlNzBmNmQ2NGJkMmMxMmEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxNiJ9','2016-05-13 14:42:52'),('kxzflzhxuiaxq1u2l0fzq6mrdmjqrw72','ZmVhMmU5OWVhMGNjNTY0MDE0ZWU5MDM4YTE5NGVkYWY3ZWEzMjk3Mjp7Il9hdXRoX3VzZXJfaGFzaCI6IjUyOGQ0NDFlMDhiMjhlZjdlOGRlNTljYTcwZDFmZWNiZDlhMTllNDEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-05-25 21:57:26'),('l8pm0arwkiqqt1yc3bxnd409av0sxvlq','N2I1ZGJkMWE5ZmFmNTJkMWM5MzM0ZTQ5YTViMThmYTIyODE5MWJmZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQxNDFhY2Q0NGIyZmQwMWZmMTcyMWRkNzFhNDFjODM3MjMxNzhlNGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxNyJ9','2016-05-14 16:29:12'),('mot6ikxjlkta0d6bw8glwc9xhkxwa6q1','NzQ1MDMzMmQ1NTczNWQ4ZmVmMGU5Y2ZlYmQ5MjJkYTQ5MjIyMWY3ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImI2MWQwYzFjNjE0MTVjOWE0MzFmN2E2MTdlNzBmNmQ2NGJkMmMxMmEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxNiJ9','2016-05-13 15:03:02'),('oxpvhega9qw3v4gd8g3kkyeyzonq1th8','M2M2Yjc2ZDY2MGQ2N2ZlYzdlMTNlNWY1MjJlMTBkNzY2NWQwNWE0ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImQwN2NmYTBhMmU2NDEzYmIwNWYxZTI1MTY4NGEyZDg2YzI2ZmIwNjUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMSJ9','2016-05-13 15:02:49'),('ozbbgfzevu5mhu6bia74n3zgmjvucqwa','NzQ1MDMzMmQ1NTczNWQ4ZmVmMGU5Y2ZlYmQ5MjJkYTQ5MjIyMWY3ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImI2MWQwYzFjNjE0MTVjOWE0MzFmN2E2MTdlNzBmNmQ2NGJkMmMxMmEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxNiJ9','2016-05-24 10:46:36'),('q2u7ahir0qe0fwge1mdhva2jof1c8ok5','MzhkZjc5NTMxMzA3OWMwOWI5YWViNjZmZjYzYzNlYjY3NDY1MjA2MDp7fQ==','2016-05-24 09:45:59'),('rqepp1n6osxly56kq67orv1zxy1t69n0','NzQ1MDMzMmQ1NTczNWQ4ZmVmMGU5Y2ZlYmQ5MjJkYTQ5MjIyMWY3ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImI2MWQwYzFjNjE0MTVjOWE0MzFmN2E2MTdlNzBmNmQ2NGJkMmMxMmEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxNiJ9','2016-06-01 09:09:41'),('t58zckduky9y29qyvlvlvw9jcnygkil9','NzQ1MDMzMmQ1NTczNWQ4ZmVmMGU5Y2ZlYmQ5MjJkYTQ5MjIyMWY3ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImI2MWQwYzFjNjE0MTVjOWE0MzFmN2E2MTdlNzBmNmQ2NGJkMmMxMmEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxNiJ9','2016-05-21 16:15:45'),('thflswm04jh605pk02psiv6trl2h9t9v','NzQ1MDMzMmQ1NTczNWQ4ZmVmMGU5Y2ZlYmQ5MjJkYTQ5MjIyMWY3ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImI2MWQwYzFjNjE0MTVjOWE0MzFmN2E2MTdlNzBmNmQ2NGJkMmMxMmEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxNiJ9','2016-05-13 13:19:07'),('u7mfq4652ho8bod1e7lcrxaar8xo7mfi','ZmVhMmU5OWVhMGNjNTY0MDE0ZWU5MDM4YTE5NGVkYWY3ZWEzMjk3Mjp7Il9hdXRoX3VzZXJfaGFzaCI6IjUyOGQ0NDFlMDhiMjhlZjdlOGRlNTljYTcwZDFmZWNiZDlhMTllNDEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-05-25 16:06:18'),('v9iaj9fq15i5mljy74y89c19b6wvv4jy','MzhkZjc5NTMxMzA3OWMwOWI5YWViNjZmZjYzYzNlYjY3NDY1MjA2MDp7fQ==','2016-03-31 00:37:45'),('x3ij8pqct5dgpopvzgb2qjij177ip6ti','MzhkZjc5NTMxMzA3OWMwOWI5YWViNjZmZjYzYzNlYjY3NDY1MjA2MDp7fQ==','2016-03-31 00:34:35'),('xu95y8q7speiopu2obx61ftu17eyt88w','MzhkZjc5NTMxMzA3OWMwOWI5YWViNjZmZjYzYzNlYjY3NDY1MjA2MDp7fQ==','2016-03-31 00:48:40'),('zaazwm7ivyukkwv1np3gkggq2patdnda','Yjc0NTJjYjgxMjBhMTdiYWE3NjlmZTRlZTg4YjA3NzgxMGFlYjYxNDp7Il9hdXRoX3VzZXJfaGFzaCI6ImUwODJlZTBjNjYyZmVkODY4N2YxNTA5YWY0YjdlNWFkNzI3MDEwZTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxNSJ9','2016-04-26 10:08:35'),('zez1aazcku6s3xlab9eaagt2kpgjhtyr','M2M2Yjc2ZDY2MGQ2N2ZlYzdlMTNlNWY1MjJlMTBkNzY2NWQwNWE0ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImQwN2NmYTBhMmU2NDEzYmIwNWYxZTI1MTY4NGEyZDg2YzI2ZmIwNjUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMSJ9','2016-05-13 15:16:59'),('zs170oxkrdulvek21ezi4ukohctpeuw4','NzQ1MDMzMmQ1NTczNWQ4ZmVmMGU5Y2ZlYmQ5MjJkYTQ5MjIyMWY3ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImI2MWQwYzFjNjE0MTVjOWE0MzFmN2E2MTdlNzBmNmQ2NGJkMmMxMmEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxNiJ9','2016-05-13 14:51:14');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `filminfo`;
CREATE TABLE `filminfo` (
  `film_id` int NOT NULL,
  `film_name` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `genres` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `company` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `issue` date NULL DEFAULT NULL,
  `runtime` time NULL DEFAULT NULL,
  `summary` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `languages` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `regions` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comment_count` int NULL DEFAULT NULL,
  `rate` float NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`film_id`) USING BTREE,
  UNIQUE INDEX `film_id_UNIQUE`(`film_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

INSERT INTO `filminfo` VALUES (26266893, '流浪地球', '科幻/灾难', NULL, '2019-02-05', '02:05:00', '近未来，科学家们发现太阳急速衰老膨胀，短时间内包括地球在内的整个太阳系都将被太阳所吞没。为了自救，人类提出一个名为“流浪地球”的大胆计划，即倾全球之力在地球表面建造上万座发动机和转向发动机，推动地球离开太阳系，用2500年的时间奔往另外一个栖息之地。中国航天员刘培强（吴京饰）在儿子刘启四岁那年前往国际空间站，和国际同侪肩负起领航者的重任。转眼刘启（屈楚萧饰）长大，他带着妹妹朵朵（赵今麦饰）偷偷跑到地表，偷开外公韩子昂（吴孟达饰）的运输车，结果不仅遭到逮捕，还遭遇了全球发动机停摆的事件。为了修好发动机，阻止地球坠入木星，全球开始展开饱和式营救，连刘启他们的车也被强征加入。在与时间赛跑的过程中，无数的人前仆后继，奋不顾身，只为延续百代子孙生存的希望……', '汉语普通话 / 英语 / 俄语 / 法语 / 日语 / 韩语 / 印尼语', '中国大陆', 1058032, 7.9, 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2545472803.jpg');

DROP TABLE IF EXISTS `userscore`;
CREATE TABLE `userscore`  (
  `user_id` int NOT NULL,
  `film_id` int NOT NULL,
  `score` int NOT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `comment_time` datetime NULL DEFAULT NULL,
  `comment_adopt` int NULL DEFAULT 0,
  PRIMARY KEY (`user_id`, `film_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

INSERT INTO `userscore` VALUES (1156306402, 26266893, 4, '竟然真的还不错。气势恢宏，庄严肃穆，至少构建了一个实打实可信的科幻世界。在浩大宇宙面前人类的渺小和无知，在世界末日面前人类的团结和合作，在无限未知面前人类的真挚感情，都展现得不错，甚至可以说令人动容。。问题也不是没有，特效质感差，台词念白生硬，人物也不够饱满，演技还是有点尬。。不过终究还是当得起中国第一部硬科幻，至于能不能开启中国科幻元年就看后来者了。至少开了个好头。', '2019-01-28 22:03:00', 92);
INSERT INTO `userscore` VALUES (1300169418, 26266893, 5, '好看！完全不逊好莱坞一流科幻片，终于国产科幻大片也有今天了。设定，故事，美术，一切都太刘慈欣了，原汁原味的重工业大尺度冷硬中国风大刘科幻。', '2019-01-28 21:29:00', 275);
INSERT INTO `userscore` VALUES (1308623558, 26266893, 3, '《流浪地球》这部电影本身就像“点燃木星”计划，用视野范围内全部前端资源去推进难产的中国“硬”科幻。质素和内核都可以对标去年的《红海行动》，春节档票房冠军已是囊中之物。可以理解大刘为什么认可这部电影，它望向太空的眼光和极高的完成度是非常扎实的第一步。也可以想象广大观众将用迎接药神的热情去迎接科幻元年，毕竟这真的是一部为大年初一“量身定制”的大片。但它只是对科幻片做了一次认真而深入的文献综述，用《环太平洋》的国际框架去囊括《银翼杀手》（美学）《2001太空漫游》（元素）《星际穿越》（情感）《地心引力》《独立日》（情节）……罗列种种熟稔的科幻母题，但没有给出足够有价值的表达。而在整体趋向灾难片的态势下，对情感的渲染是相当聒噪和失败的。所以来势汹汹的太空战狼，其实只是一个被寄予厚望的组装的健壮婴儿。', '2019-02-05 03:15:00', 223);
INSERT INTO `userscore` VALUES (1319347789, 26266893, 3, '一匹披着科幻外衣的战狼，一场打着地球主义旗号的爱国主义救援行动。\n空有一个科幻设定，缺乏该设定下的大量社会生活和人性细节，使得该设定成了一种强制概念，甚至无异于架空。\n最后的成片其实与科幻无关，只是换了模样的限时救援，真的没必要吹上天。\n工业上的意义值得肯定，那就肯定。说是中国的科幻元年，还差一步。', '2019-02-08 15:32:00', 112);
INSERT INTO `userscore` VALUES (1328425253, 26266893, 4, '大概只有中国人会想拖着地球一起走，带着家园而不是选择抛弃它。', '2019-02-08 22:33:00', 28);



DROP TABLE IF EXISTS `movie_moviespider`;
CREATE TABLE `movie_moviespider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movie_tag` varchar(512) DEFAULT NULL,
  `moviename` varchar(64) NOT NULL,
  `moviedetailurl` varchar(512) DEFAULT NULL,
  `movieimgurl` varchar(512) DEFAULT NULL,
  `movieaddtime` datetime NOT NULL,
  `moviespiderornot` int(11) NOT NULL,
  `country` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69347 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_moviespider`
--

LOCK TABLES `movie_moviespider` WRITE;
/*!40000 ALTER TABLE `movie_moviespider` DISABLE KEYS */;
/*!40000 ALTER TABLE `movie_moviespider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions_activity`
--

DROP TABLE IF EXISTS `questions_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_type` varchar(1) NOT NULL,
  `date` datetime NOT NULL,
  `question` int(11) DEFAULT NULL,
  `answer` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `questions_activity_user_id_14f0afefbb2c8a54_fk_auth_user_id` (`user_id`),
  CONSTRAINT `questions_activity_user_id_14f0afefbb2c8a54_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions_activity`
--

LOCK TABLES `questions_activity` WRITE;
/*!40000 ALTER TABLE `questions_activity` DISABLE KEYS */;
INSERT INTO `questions_activity` VALUES (10,'U','2016-04-21 19:35:27',NULL,2,16),(11,'U','2016-04-21 19:35:28',NULL,3,16),(12,'F','2016-04-21 19:39:00',2,NULL,16),(13,'U','2016-04-22 08:52:46',NULL,1,16),(14,'F','2016-04-30 14:08:57',2,NULL,21),(15,'U','2016-04-30 14:09:13',NULL,4,21),(24,'D','2016-04-30 14:09:32',NULL,3,21),(27,'U','2016-04-30 14:09:37',NULL,2,21),(28,'F','2016-04-30 20:40:49',3,NULL,16),(29,'U','2016-04-30 20:40:59',NULL,5,16),(30,'F','2016-05-05 21:31:19',3,NULL,15),(31,'U','2016-05-07 16:15:04',NULL,5,1);
/*!40000 ALTER TABLE `questions_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions_answer`
--

DROP TABLE IF EXISTS `questions_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions_answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `answercontent` longtext NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `votes` int(11) NOT NULL,
  `is_accepted` tinyint(1) NOT NULL,
  `question_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `questions_answer_7aa0f6ee` (`question_id`),
  KEY `questions_answer_e8701ad4` (`user_id`),
  CONSTRAINT `questions_answer_user_id_3968459a682e4477_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `questions__question_id_4128ea4792c1d9f6_fk_questions_question_id` FOREIGN KEY (`question_id`) REFERENCES `questions_question` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions_answer`
--

LOCK TABLES `questions_answer` WRITE;
/*!40000 ALTER TABLE `questions_answer` DISABLE KEYS */;
INSERT INTO `questions_answer` VALUES (1,'下载链接：http://www.xunlei.com','2016-04-19 19:59:27','2016-04-19 19:59:27',1,1,1,16),(2,'没有','2016-04-21 19:34:59','2016-04-21 19:34:59',2,1,2,16),(3,'别人有','2016-04-21 19:35:20','2016-04-21 19:35:20',0,0,2,16),(4,'真心不错啊','2016-04-30 14:09:09','2016-04-30 14:09:09',1,0,2,21),(5,'****哈哈哈不用啊','2016-04-30 20:40:47','2016-04-30 20:40:47',2,0,3,16);
/*!40000 ALTER TABLE `questions_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions_notification`
--

DROP TABLE IF EXISTS `questions_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `notification_type` varchar(1) NOT NULL,
  `is_read` tinyint(1) NOT NULL,
  `answer_id` int(11) DEFAULT NULL,
  `from_user_id` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `to_user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `questions_noti_answer_id_13b935c8cc08c677_fk_questions_answer_id` (`answer_id`),
  KEY `questions_notificat_from_user_id_e4a8f71f22ce500_fk_auth_user_id` (`from_user_id`),
  KEY `questions__question_id_1a141a3ab92f88f7_fk_questions_question_id` (`question_id`),
  KEY `questions_notificati_to_user_id_2af5eddff92aefe3_fk_auth_user_id` (`to_user_id`),
  CONSTRAINT `questions_notificati_to_user_id_2af5eddff92aefe3_fk_auth_user_id` FOREIGN KEY (`to_user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `questions_notificat_from_user_id_e4a8f71f22ce500_fk_auth_user_id` FOREIGN KEY (`from_user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `questions_noti_answer_id_13b935c8cc08c677_fk_questions_answer_id` FOREIGN KEY (`answer_id`) REFERENCES `questions_answer` (`id`),
  CONSTRAINT `questions__question_id_1a141a3ab92f88f7_fk_questions_question_id` FOREIGN KEY (`question_id`) REFERENCES `questions_question` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions_notification`
--

LOCK TABLES `questions_notification` WRITE;
/*!40000 ALTER TABLE `questions_notification` DISABLE KEYS */;
INSERT INTO `questions_notification` VALUES (1,'2016-04-30 14:08:57','F',0,NULL,21,2,16),(2,'2016-04-30 14:09:09','A',0,NULL,21,2,16),(3,'2016-05-05 21:31:19','F',0,NULL,15,3,16);
/*!40000 ALTER TABLE `questions_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions_question`
--

DROP TABLE IF EXISTS `questions_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `favorites` int(11) NOT NULL,
  `has_accepted_answer` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `questions_question_user_id_4fc8b845632ae4a7_fk_auth_user_id` (`user_id`),
  CONSTRAINT `questions_question_user_id_4fc8b845632ae4a7_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions_question`
--

LOCK TABLES `questions_question` WRITE;
/*!40000 ALTER TABLE `questions_question` DISABLE KEYS */;
INSERT INTO `questions_question` VALUES (1,'寻找老手的下载资源','有谁有老手的下载资源的呀','2016-04-17 20:58:46','2016-04-17 20:58:46',0,1,16),(2,'寻找新世界的下载资源','有人有么','2016-04-21 19:01:08','2016-04-21 19:01:08',2,1,16),(3,'寻求天下第一的片源','有木有啊','2016-04-30 20:40:17','2016-04-30 20:40:17',2,0,16);
/*!40000 ALTER TABLE `questions_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions_tag`
--

DROP TABLE IF EXISTS `questions_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(50) NOT NULL,
  `question_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `questions_tag_tag_654989771ed538d3_uniq` (`tag`,`question_id`),
  KEY `questions_tag_tag_654989771ed538d3_idx` (`tag`,`question_id`),
  KEY `questions__question_id_3fcfda229b04f96d_fk_questions_question_id` (`question_id`),
  CONSTRAINT `questions__question_id_3fcfda229b04f96d_fk_questions_question_id` FOREIGN KEY (`question_id`) REFERENCES `questions_question` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions_tag`
--

LOCK TABLES `questions_tag` WRITE;
/*!40000 ALTER TABLE `questions_tag` DISABLE KEYS */;
INSERT INTO `questions_tag` VALUES (4,'剧情',2),(5,'天下第一',3),(1,'老手',1),(2,'韩国',1),(3,'韩国',2);
/*!40000 ALTER TABLE `questions_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webchat_chatgroup`
--

DROP TABLE IF EXISTS `webchat_chatgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webchat_chatgroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `memberlimits` int(11) NOT NULL,
  `founder_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `webchat_chatgr_founder_id_37b506e5605464d1_fk_webuser_webuser_id` (`founder_id`),
  CONSTRAINT `webchat_chatgr_founder_id_37b506e5605464d1_fk_webuser_webuser_id` FOREIGN KEY (`founder_id`) REFERENCES `webuser_webuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webchat_chatgroup`
--

LOCK TABLES `webchat_chatgroup` WRITE;
/*!40000 ALTER TABLE `webchat_chatgroup` DISABLE KEYS */;
INSERT INTO `webchat_chatgroup` VALUES (1,'Test',200,7);
/*!40000 ALTER TABLE `webchat_chatgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webchat_chatgroup_admins`
--

DROP TABLE IF EXISTS `webchat_chatgroup_admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webchat_chatgroup_admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chatgroup_id` int(11) NOT NULL,
  `webuser_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `chatgroup_id` (`chatgroup_id`,`webuser_id`),
  KEY `webchat_chatgr_webuser_id_724c4375419c2725_fk_webuser_webuser_id` (`webuser_id`),
  CONSTRAINT `webchat_chatgr_webuser_id_724c4375419c2725_fk_webuser_webuser_id` FOREIGN KEY (`webuser_id`) REFERENCES `webuser_webuser` (`id`),
  CONSTRAINT `webchat_ch_chatgroup_id_51be52bd1df3e9a9_fk_webchat_chatgroup_id` FOREIGN KEY (`chatgroup_id`) REFERENCES `webchat_chatgroup` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webchat_chatgroup_admins`
--

LOCK TABLES `webchat_chatgroup_admins` WRITE;
/*!40000 ALTER TABLE `webchat_chatgroup_admins` DISABLE KEYS */;
INSERT INTO `webchat_chatgroup_admins` VALUES (3,1,7),(1,1,8),(2,1,9);
/*!40000 ALTER TABLE `webchat_chatgroup_admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webchat_chatgroup_members`
--

DROP TABLE IF EXISTS `webchat_chatgroup_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webchat_chatgroup_members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chatgroup_id` int(11) NOT NULL,
  `webuser_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `chatgroup_id` (`chatgroup_id`,`webuser_id`),
  KEY `webchat_chatgr_webuser_id_7742713a207bc563_fk_webuser_webuser_id` (`webuser_id`),
  CONSTRAINT `webchat_chatgr_webuser_id_7742713a207bc563_fk_webuser_webuser_id` FOREIGN KEY (`webuser_id`) REFERENCES `webuser_webuser` (`id`),
  CONSTRAINT `webchat_ch_chatgroup_id_56340e61d0785149_fk_webchat_chatgroup_id` FOREIGN KEY (`chatgroup_id`) REFERENCES `webchat_chatgroup` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webchat_chatgroup_members`
--

LOCK TABLES `webchat_chatgroup_members` WRITE;
/*!40000 ALTER TABLE `webchat_chatgroup_members` DISABLE KEYS */;
INSERT INTO `webchat_chatgroup_members` VALUES (5,1,7),(1,1,8),(2,1,9),(3,1,10),(4,1,11);
/*!40000 ALTER TABLE `webchat_chatgroup_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webuser_webuser`
--

DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo`  (
  `user_id` int NOT NULL,
  `nickname` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `key` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `user_id_UNIQUE`(`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;


INSERT INTO `userinfo` VALUES (1156306402, '糖野梨子', '123456');
INSERT INTO `userinfo` VALUES (1328425253, 'googar', '123456'),
(1300169418, 'killer queen', 'BiteTheDust'),
(1308623558, '木大木大！', 'TheWorld!'),
(1328425253, 'JoJo~', 'StandPowerWryyyy!');
