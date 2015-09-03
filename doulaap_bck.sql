-- MySQL dump 10.13  Distrib 5.5.38, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: doulaap
-- ------------------------------------------------------
-- Server version	5.5.38-0ubuntu0.14.04.1

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  KEY `auth_group_permissions_5f412f9a` (`group_id`),
  KEY `auth_group_permissions_83d7f98b` (`permission_id`),
  CONSTRAINT `group_id_refs_id_f4b32aac` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `permission_id_refs_id_6ba0f519` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_37ef4eb4` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_d043b34a` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add site',6,'add_site'),(17,'Can change site',6,'change_site'),(18,'Can delete site',6,'delete_site'),(19,'Can add log entry',7,'add_logentry'),(20,'Can change log entry',7,'change_logentry'),(21,'Can delete log entry',7,'delete_logentry'),(22,'Can add migration history',8,'add_migrationhistory'),(23,'Can change migration history',8,'change_migrationhistory'),(24,'Can delete migration history',8,'delete_migrationhistory'),(25,'Can add profile',9,'add_profile'),(26,'Can change profile',9,'change_profile'),(27,'Can delete profile',9,'delete_profile'),(28,'Can view profile',9,'view_profile'),(29,'Can add project',10,'add_project'),(30,'Can change project',10,'change_project'),(31,'Can delete project',10,'delete_project'),(32,'Can add pledgers',11,'add_pledgers'),(33,'Can change pledgers',11,'change_pledgers'),(34,'Can delete pledgers',11,'delete_pledgers'),(35,'Can add comment',12,'add_comment'),(36,'Can change comment',12,'change_comment'),(37,'Can delete comment',12,'delete_comment'),(38,'Can add donation',13,'add_donation'),(39,'Can change donation',13,'change_donation'),(40,'Can delete donation',13,'delete_donation'),(41,'Can add userena registration',14,'add_userenasignup'),(42,'Can change userena registration',14,'change_userenasignup'),(43,'Can delete userena registration',14,'delete_userenasignup'),(44,'Can add contact',15,'add_messagecontact'),(45,'Can change contact',15,'change_messagecontact'),(46,'Can delete contact',15,'delete_messagecontact'),(47,'Can add recipient',16,'add_messagerecipient'),(48,'Can change recipient',16,'change_messagerecipient'),(49,'Can delete recipient',16,'delete_messagerecipient'),(50,'Can add message',17,'add_message'),(51,'Can change message',17,'change_message'),(52,'Can delete message',17,'delete_message'),(53,'Can add source',18,'add_source'),(54,'Can change source',18,'change_source'),(55,'Can delete source',18,'delete_source'),(56,'Can add thumbnail',19,'add_thumbnail'),(57,'Can change thumbnail',19,'change_thumbnail'),(58,'Can delete thumbnail',19,'delete_thumbnail'),(59,'Can add thumbnail dimensions',20,'add_thumbnaildimensions'),(60,'Can change thumbnail dimensions',20,'change_thumbnaildimensions'),(61,'Can delete thumbnail dimensions',20,'delete_thumbnaildimensions'),(62,'Can add user object permission',21,'add_userobjectpermission'),(63,'Can change user object permission',21,'change_userobjectpermission'),(64,'Can delete user object permission',21,'delete_userobjectpermission'),(65,'Can add group object permission',22,'add_groupobjectpermission'),(66,'Can change group object permission',22,'change_groupobjectpermission'),(67,'Can delete group object permission',22,'delete_groupobjectpermission'),(68,'Can add update',23,'add_update'),(69,'Can change update',23,'change_update'),(70,'Can delete update',23,'delete_update'),(71,'Can add doulaprofile',24,'add_doulaprofile'),(72,'Can change doulaprofile',24,'change_doulaprofile'),(73,'Can delete doulaprofile',24,'delete_doulaprofile');
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
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (-1,'','2014-10-07 17:25:25',0,'AnonymousUser','','','',0,1,'2014-10-07 17:25:25'),(1,'pbkdf2_sha256$12000$nCI6agbQ9nhs$VJ6qfO/epZLHwwoe8FH0mK0thQQuHvnlybNaAcP2xEQ=','2014-10-21 00:26:42',1,'admin','Junry','de Los Santos','admin@admin.com',1,1,'2014-10-07 17:25:16'),(12,'pbkdf2_sha256$12000$5oZh0qqFebWT$MhII5Ok5XJOpBnaDKqhu4rdMkwU1wMBBblcrC8FogwQ=','2014-10-12 23:03:24',0,'slimshock','slim','shock','junry_delossantos@yahoo.com',0,1,'2014-10-08 03:26:31'),(13,'pbkdf2_sha256$12000$7eyptYeF0DQu$iPn7xUBjXBCf9M70tqR48FAGrapY1fzA5sD1I2+xbpw=','2014-10-09 08:35:41',0,'joefrey','','','joefrey@trialx.com',0,1,'2014-10-09 04:13:22'),(14,'pbkdf2_sha256$12000$0BuQ3pZ7abeB$neuU1fMGvmjfC0YnUa/8yLuzwsp9DkW28S2wooNt96k=','2014-10-13 13:47:43',0,'Donna.Smith','Donna','Smith','sharib.khan@gmail.com',0,1,'2014-10-10 23:59:10'),(15,'pbkdf2_sha256$12000$YK0EGVbrHzjP$o7wi1WF65AaQ0MQFuJuAUfNDhnjV12qFMNXebTTz03g=','2014-10-12 16:21:54',0,'Katie','','','qwe@qwe.com',0,1,'2014-10-12 12:35:27'),(16,'pbkdf2_sha256$12000$jN8vneHlCAdP$Soss9nN1uEPbpREUQfywttiWleUXiiKessy8agzdE0o=','2014-10-12 12:42:05',0,'as','','','as@ss.com',0,0,'2014-10-12 12:42:05'),(17,'pbkdf2_sha256$12000$zIRf6DLUmzA2$u38bKb0z2Ebh1XYzh3serBLnroM0q0RGZHOK6Pq+7eo=','2014-10-12 23:13:06',0,'junry','jun','de','slimshock01@hotmail.com',0,1,'2014-10-12 23:11:53'),(18,'pbkdf2_sha256$12000$41mIClwDCW9Z$vesmaUeGc5qfzNJUVJuD42gJcx1OWs4BQLX/k8GbutM=','2014-10-14 11:43:54',0,'MaryJane','Mary','Jane','junrydelossantos@gmail.com',0,1,'2014-10-14 11:41:15'),(19,'pbkdf2_sha256$12000$7xFJQjWmPskN$00JmhQyqnm15u1isvCMm4R5S7h1Zm9xX50EiUgEnPS8=','2014-10-21 15:05:19',0,'test','','','sharib@trialx.com',0,1,'2014-10-15 01:11:02');
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
  KEY `auth_user_groups_6340c63c` (`user_id`),
  KEY `auth_user_groups_5f412f9a` (`group_id`),
  CONSTRAINT `user_id_refs_id_40c41112` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `group_id_refs_id_274b862c` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  KEY `auth_user_user_permissions_6340c63c` (`user_id`),
  KEY `auth_user_user_permissions_83d7f98b` (`permission_id`),
  CONSTRAINT `user_id_refs_id_4dc23c39` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `permission_id_refs_id_35d9ac25` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_6340c63c` (`user_id`),
  KEY `django_admin_log_37ef4eb4` (`content_type_id`),
  CONSTRAINT `user_id_refs_id_c0d12874` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `content_type_id_refs_id_93d2d1f8` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2014-10-08 02:54:30',1,3,'3','123',3,''),(2,'2014-10-08 02:54:30',1,3,'4','dfe',3,''),(3,'2014-10-08 02:54:30',1,3,'5','dfed',3,''),(4,'2014-10-08 02:54:30',1,3,'6','dfedd',3,''),(5,'2014-10-08 02:54:30',1,3,'9','sdfsdafsdf',3,''),(6,'2014-10-08 02:54:30',1,3,'8','sdfsdfsdf',3,''),(7,'2014-10-08 02:54:30',1,3,'2','slimshock',3,''),(8,'2014-10-08 02:54:30',1,3,'10','test1',3,''),(9,'2014-10-08 03:04:08',1,3,'11','sdf',3,''),(10,'2014-10-08 03:04:47',1,6,'1','104.131.125.98',2,'Changed domain and name.'),(11,'2014-10-08 03:09:57',1,3,'1','admin',2,'Changed first_name and last_name.'),(12,'2014-10-08 03:10:29',1,3,'7','testwsgi',3,''),(13,'2014-10-09 02:59:17',1,9,'1','Profile of admin',2,'Changed gender, location and about_me.'),(14,'2014-10-09 03:03:50',1,10,'7','Project object',1,''),(15,'2014-10-09 03:04:01',1,10,'7','Project object',2,'Changed is_review.'),(16,'2014-10-09 03:41:50',1,3,'1','admin',2,'Changed first_name and last_name.'),(17,'2014-10-10 13:55:04',1,10,'14','Project object',2,'Changed link_fb, link_tw and link_inst.'),(18,'2014-10-10 13:57:28',1,10,'14','Project object',2,'Changed img_link.'),(19,'2014-10-10 14:39:24',1,10,'1','Project object',3,''),(20,'2014-10-11 00:15:45',1,10,'15','Project object',2,'Changed our_story, link_fb, link_tw, link_inst and is_review.'),(21,'2014-10-11 17:01:41',1,6,'1','104.131.125.98',2,'Changed name.'),(22,'2014-10-12 16:21:44',1,3,'15','qwe',2,'Changed is_active.'),(23,'2014-10-14 11:35:30',1,10,'13','Project object',3,''),(24,'2014-10-15 00:19:28',1,24,'3','Doulaprofile object',3,''),(25,'2014-10-15 00:24:08',1,10,'18','Project object',3,''),(26,'2014-10-15 00:26:49',1,10,'17','Project object',2,'Changed title, our_story, why_want_doula, link_fb, link_tw and link_inst.'),(27,'2014-10-15 00:29:31',1,10,'4','Project object',3,''),(28,'2014-10-15 00:42:06',1,10,'15','Project object',3,''),(29,'2014-10-15 00:42:29',1,10,'8','Project object',3,''),(30,'2014-10-15 00:43:17',1,10,'7','Project object',3,''),(31,'2014-10-15 00:53:29',1,24,'5','Doulaprofile object',2,'Changed about_me, education, bio_pic, why_they_doula and testimonials.'),(32,'2014-10-15 00:56:17',1,24,'4','Doulaprofile object',2,'Changed about_me, education, bio_pic, why_they_doula and testimonials.'),(33,'2014-10-15 00:57:00',1,24,'2','Doulaprofile object',3,''),(34,'2014-10-15 00:59:54',1,24,'1','Doulaprofile object',2,'Changed about_me, education, bio_pic, why_they_doula and testimonials.'),(35,'2014-10-15 01:00:30',1,24,'1','Doulaprofile object',2,'Changed bio_pic.'),(36,'2014-10-15 01:01:13',1,3,'15','Katie',2,'Changed username.'),(37,'2014-10-15 01:03:02',1,3,'14','Donna.Smith',2,'Changed username, first_name and last_name.'),(38,'2014-10-15 01:03:43',1,3,'18','slimshock12',2,'Changed first_name and last_name.'),(39,'2014-10-15 01:03:57',1,3,'18','MaryJane',2,'Changed username.'),(40,'2014-10-15 01:05:31',1,24,'5','Doulaprofile object',2,'Changed about_me.'),(41,'2014-10-15 01:06:24',1,24,'4','Doulaprofile object',2,'Changed about_me and education.'),(42,'2014-10-15 01:06:44',1,24,'1','Doulaprofile object',2,'Changed about_me and education.'),(43,'2014-10-15 01:16:10',1,3,'17','junry',2,'Changed last_name.'),(44,'2014-10-15 04:01:38',1,10,'19','Project object',2,'No fields changed.'),(45,'2014-10-15 04:01:46',1,10,'19','Project object',2,'Changed link_fb.'),(46,'2014-10-15 05:31:58',1,10,'19','Project object',2,'Added pledgers \"Pledgers object\".');
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
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'content type','contenttypes','contenttype'),(5,'session','sessions','session'),(6,'site','sites','site'),(7,'log entry','admin','logentry'),(8,'migration history','south','migrationhistory'),(9,'profile','profiles','profile'),(10,'project','project','project'),(11,'pledgers','project','pledgers'),(12,'comment','project','comment'),(13,'donation','donation','donation'),(14,'userena registration','userena','userenasignup'),(15,'contact','umessages','messagecontact'),(16,'recipient','umessages','messagerecipient'),(17,'message','umessages','message'),(18,'source','easy_thumbnails','source'),(19,'thumbnail','easy_thumbnails','thumbnail'),(20,'thumbnail dimensions','easy_thumbnails','thumbnaildimensions'),(21,'user object permission','guardian','userobjectpermission'),(22,'group object permission','guardian','groupobjectpermission'),(23,'update','project','update'),(24,'doulaprofile','doulaprofile','doulaprofile');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
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
  KEY `django_session_b7b81f0c` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('052ewzsguahkm3ocdt155q0vefg0ji5m','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-25 17:23:18'),('078xr3omus9qii2ycf8aeywq28f2cq5q','MzE3MTMyMWMxYjIxMzAyMjg2N2M3NGQ3M2Q3N2RlZGJmN2M5NzZlZjp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-10-27 14:14:38'),('08lscoanvhqi8qthuvsgifzd244w5chb','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:03:53'),('08oh0tnc40jl1ivnmgcwyskzm6dg90mu','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-06 14:13:30'),('0atkd6lonmd70wboupmiu7z07nzhggwc','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:04:35'),('0f2no0xav1rq0m2f98llu8mcgzwiux2k','MzE3MTMyMWMxYjIxMzAyMjg2N2M3NGQ3M2Q3N2RlZGJmN2M5NzZlZjp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-10-28 03:08:01'),('0h65sxu26gths0xgmp1vo4l9uho2ensh','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-22 01:23:10'),('0l37d0iccp7x5lvmujn0uw0ggrkwoeb4','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-08 08:04:16'),('0l5xh9gutefye40oilp9xufcy7p733a2','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:03:36'),('0m2m50ndm5btnu2nt1ftou810nrar0dj','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-13 18:50:24'),('0pgr6dyol5ahgmj58c5d60ff4ijewdy8','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:41'),('0pmzn5quca3dm8v31wj79hy8yepiseob','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:04:09'),('0pq95qrqn8tx5nyfghws8qtjlllwvo85','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-21 17:24:51'),('0t3y2ci04tcgl0vor7icd1yr5zmfclxb','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-02 01:53:18'),('0tp6xa2qn5kayzflp5ir6y6o3uhubup6','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-11 18:21:25'),('0vlutiru5z0f3u964o0y0s3bnbdr5c07','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-30 08:46:10'),('0zfubffd5lbf695hvvxzbsmx0gtvnkae','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-13 23:11:33'),('11bg6zyk1d62xtd426x0zuzlhuwizkco','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-21 07:17:03'),('134x7nm593pwxnz7xfocvf405s5m9c1a','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-27 11:15:58'),('1abdemwhutr14odjlu6ie6rugi9v7r0a','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:37'),('1cszsiszcdv0fm8qg8k9wkgpfbt07mvf','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-03 16:40:10'),('1dm4fbb34u2j9l1574ix2ahd7np5bwbc','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-29 04:09:54'),('1e0tc3qb7lv3fpbyooy2nupznvsuqbrs','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-02 03:57:03'),('1ey4ej10w9zgavr3swcnt00dxviyl2kj','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 11:59:56'),('1h9ygpe5d61z0kti2gbr6jo1wrwgbxde','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-04 21:22:27'),('1khg6pudlme4t3oobfm1jf1t3y8vqhfa','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-08 20:58:42'),('1krlc32389m5o1yi9aq0cmaf0wi83wp7','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:06:23'),('1rl68vzwbxr9omtv7178j3dok7o89nmx','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:03:36'),('1siam9l3bmkozqj50suumzcke06p4hlq','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-03 03:04:38'),('1ue0wgla269uy8evjkwn15ggm7sk9g0d','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-02 12:55:29'),('1v37wlcclhpodsmiz13klagsdnrtv2a0','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-18 12:02:21'),('1wxqzwm0qruqi6zhha89uua3nqldra0x','NTdjZDViM2Q2ZGE1OGE0NjJiNWYwMzRmMWEyNGMyYTQ5MTU2MjM0ODp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-10-22 18:39:34'),('1z1myljll4awdj12xo01t5exy216axt9','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-10-29 11:01:01'),('22qlkwdxm4r0oo7p3og4wus7zz3q5lpi','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-06 02:17:28'),('248dmqyo2uj3cns5fzts4lk5vryk1arc','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-19 04:23:31'),('26igvf08db237bfz92629ufxmcxuhxc1','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-27 09:06:22'),('28804avay6vxiwom2sxm6on8tku1ti9k','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-13 23:11:34'),('2cj9qy9z2pdzizrpryicy0l4nj8bog28','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:04:23'),('2cyov9r3fv2nkh84fc6c8ev14uzqjhnm','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:07:33'),('2ha2i1adb3cd819zje473ua3mfcpix5c','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-04 16:52:17'),('2i1ut5o1snb543ywsfd7owvihyyeqk8z','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-01 06:09:02'),('2kuduvaapw0b6n02b06dt6gkc1v5lirw','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-13 08:37:10'),('2mqcms0aydnj7mudw8diwx4acbshxgg9','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-23 10:18:14'),('2r0goh8u24f138zvah93c0lv5y3zjm5n','MzE3MTMyMWMxYjIxMzAyMjg2N2M3NGQ3M2Q3N2RlZGJmN2M5NzZlZjp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-10-26 16:29:42'),('2rewb8yrhqnb5ke16o9nfap9b1f58ylb','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-23 23:56:32'),('2tat7kd2yub2rqi8lgxibfeuupqqqtnv','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-25 16:01:03'),('2tojlmyrlstohqb1a3bp8netmbd0qkkm','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-17 12:56:25'),('2v1435zn0em33y7821wnhc55kvhrzsim','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-21 07:53:38'),('2wz9tjx4uqe03qkybxk49xb25avh11ot','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-13 07:58:20'),('2xbxbf0xeomdjaikqub08wv3h8axu28w','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:04:17'),('2z1igr625ubzky9kthpecl1na0vm5yvn','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-18 05:46:51'),('312tvx57jmjs65chry1r6jwwifopbjhr','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:42'),('31b4dtfpgwptx0dygn9gwlcw749an0ld','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:08:05'),('31prkg918hr4xv4uua575fvr7rnsijlk','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:03:53'),('334km78tr0i0mkp02wlk9i674afacfcp','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-10-30 04:19:49'),('359emmyijt4pcitlj5u4d4paemcmmrcm','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:07:55'),('35z9lzxrvczk3zt41wcl4397gm92x63k','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:37'),('3b11oz08on3zb6f687cs7rllbkylh4jg','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:04:10'),('3en13oxvzvo2c0641m5ylt1yvox1c9at','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-25 12:59:49'),('3ksitwc31s0fao6aarghpg276byynh6a','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-12 18:27:55'),('3pxump4mb829zacvgwql6dxibih49kis','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-04 13:51:05'),('3qrwyqiljj2xmwxwez1i2ijiqv3tx1sl','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-10-29 11:00:58'),('3y7q7j5q1yz5msz1n54jufzwdm5d568c','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-25 08:23:06'),('418b6m4c2jkw888cdvfsvopal5qjtc4p','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-05 10:39:35'),('41fo16kslcjjo1lfo0g04deyqk5icodg','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-10 22:00:13'),('43bou8sx1d029tu7grkfhm9zk32vo66y','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:07:22'),('47ymwhysu5ygahz8e8f5pmmhwld8fbud','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-13 20:53:38'),('48rbf0tlg38aouai5ob3oi261ifo0m4s','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:04:34'),('4balvyzefnkbr49apg5puezxewweeeiz','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 21:52:34'),('4gevwiposspqr42hezgxpipfds64cj9g','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-04 13:59:50'),('4hizuy424azakii4er9vvc09e8m6lt3t','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:40'),('4ktb931vw6nb8mqu833ak1hpedkdz6hu','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-21 15:04:20'),('4s7whnrhfpexquebichhd0o4t3o2hdtw','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:05:47'),('4w1becgnhe45binzbfjdn0fj9re4x283','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-13 13:27:44'),('4z3n9tyh391cwu7sbl6o19ch9cqz4poq','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-10-29 01:32:10'),('514h55bdro2mfh6cfgthuu0fsiakuff3','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:04:04'),('52t3c45rodyucc8rwqwxmusjj7mreicm','ZGE2ODRjZWFiNmJkZGJiZGZmZTVjYjA0MmJmNWEwYzJkMDM5ZjcyMzp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiZGphbmdvX2xhbmd1YWdlIjoiZW4iLCJfYXV0aF91c2VyX2lkIjoxfQ==','2014-10-29 11:44:28'),('53yqyllsu3vlzrzqtkjlmasxfnwuncer','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-21 07:53:36'),('549q0kwxtx6cortepeafg8psublomylp','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-11 12:12:20'),('54cu3m3kxj31g6elosrzdebzvy9doy0s','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-18 05:46:51'),('572u84oz4ik81rpujrijs1hwhiw8clu3','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-29 22:11:05'),('57qakicq6xhxb73a8v6srch6qhnpt51h','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:07:59'),('593anwf7vj324cw2xl1n57n890g03pnd','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-10 12:13:24'),('59acxxe9i9cieuckdj3bvrcnel9c6a5j','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-17 22:19:10'),('59kcwvhi5e01gqnrax247dp6vu1kc7yo','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:05:59'),('5a41p4n4yfcvas1k49k441yt1k75zijd','MzE3MTMyMWMxYjIxMzAyMjg2N2M3NGQ3M2Q3N2RlZGJmN2M5NzZlZjp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-10-24 06:23:17'),('5c8qs330jkyzzxznaaaw83uasas4hv37','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-16 07:12:43'),('5dsha2854mabaiiql2ic44msyfg1qyxn','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:37'),('5ft9mtpl7tt9n7lf4shvxmbcodlojnd7','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:41'),('5gr9c2xysoqpjcdtky9fq19anxydbrnl','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:06:54'),('5h7njcnnd33m6ttos7d8yzbjufddo6gw','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-10-29 01:46:54'),('5hqysxpan52639wcbb19ry6bfwap8nv2','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:05:29'),('5ilz1r5awt20awpiwa36e0qt9lmdhuf3','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 08:28:31'),('5me0zklab8e5fuv5wdjd56obbs6ldsxp','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:03:45'),('5u6p2zjbzt9xvtg4srrork1fiw66f2zu','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-13 23:11:35'),('61f7zeffdjac2y2y305phgqhefh1v3iq','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:08:44'),('63on9q62uwudjm98rav3bnqnn5yk3d4h','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:06:27'),('6b4gtpp3k3f2punt1youjqki69dyenv6','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-27 17:38:35'),('6b5izwacpvubwy6yeibg1z06gc3hpslo','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-27 07:28:27'),('6bsx6kuy3j64pcyhihjhxeiup087hzaw','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-30 14:56:06'),('6dnsl4a9h75h5kipaxcnlfo2tlseqv6g','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-24 21:32:59'),('6gi2zxdegcdty6wc7rqrkxrknfh8wo5f','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-13 06:03:27'),('6gqidpt9o5700sxotyfrga9im3prk8ku','MzE3MTMyMWMxYjIxMzAyMjg2N2M3NGQ3M2Q3N2RlZGJmN2M5NzZlZjp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-10-26 23:23:27'),('6kejqnc6h6bj108kl057dvd5ia6ibxj9','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-10-29 00:19:48'),('6llt0emvhfcdypau51tu3n2dk4bbprcg','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-10-29 11:01:00'),('6lvc52nok8slpwqorlbm3ejmc2w2g9cc','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-19 18:21:18'),('6qernaxl84ju4v2q8rvenhkcpgs52sfv','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-18 05:46:52'),('6qiqu97h5tr4wwcs6x6aqpifcl7c0xx7','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-24 15:30:16'),('6qy2z7df55q1lwlgmpgvupomtvkbhi1b','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-12 16:38:46'),('6uqbtbkmocch4jb8b43ndqnn1ezkynao','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-25 12:59:49'),('6wycxdzlytx5b34uj2p1wcc4lnu3g5fb','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:42'),('6z9i23z4e188t614xepr4aub9g6f98mw','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:05:29'),('71d1d8x3vsuvnoar9hk9vo5hgqvztbhb','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-13 04:15:40'),('73qn0r0djt8uurjh6vw0zffe45zeu9n2','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-12 13:28:44'),('76c7po9ihoww4s4t3hs1sn8q3qlatuec','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-30 18:43:40'),('78japha9y8oqcjk6xfb159hv8y15odtc','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-10-29 11:12:54'),('7g6kx6wp8xo5z78qljpusoddeud13uvk','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-12-01 06:45:45'),('7hffc61dq9l5z5q6v7vdlin3x4291icr','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-15 19:31:18'),('7hfurab5rt428n1wm52eq3puy6c8i00f','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:06:47'),('7jczu1c89r1vureh4suktrmvl4b8qwyk','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-20 14:50:40'),('7kg8sck478ogjcr159sdqw2m6cisdap8','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:04:16'),('7l4r50qp3nh0m5n2y2i24h28curipc3p','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-03 22:50:11'),('7p0nuwolry6nxqd15edk9qb2be7slf82','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-24 09:00:41'),('7rf94a7g5ysp5lex0yr9qtkfajxr2ldf','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-10 23:16:35'),('7rmm164w91uw3t8qgijl6eib4z2cyphr','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-15 13:08:31'),('7rpjrrsmrdyhhukf7r8af9kd36frghcm','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 15:16:41'),('7sl26nfdqvujava4tfj81zlxu6mtv0j7','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-22 17:31:31'),('7ybu93mfg77cfu2lyg52b92bv659hobi','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:40'),('81nt44xhxnvlabqmry9q1oqtkbasxxsy','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-16 15:02:10'),('85psdj451qlm59d8unifhv14a1e13rzk','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:06:18'),('862lsjbpkghza45x5svgqys6y30dpx81','MzE3MTMyMWMxYjIxMzAyMjg2N2M3NGQ3M2Q3N2RlZGJmN2M5NzZlZjp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-10-27 04:43:43'),('86xt232q1d484r0igdcz3tyo1zv0hwcv','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-27 21:34:15'),('87bid6wha9qqlxxicu2e70brxvl8ihd4','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-10 23:16:35'),('8drbc6iasokbwgvjws0vons7jbu56qdq','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-10-29 17:45:26'),('8egfgi5tv5u51a991nzz6tdtjp1a72sz','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-11 18:52:16'),('8f2gdva14r5nylmy35d3f48foh4teqye','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-19 04:16:34'),('8fouvu7qd9u7lamr1g9d5c2y7dvkzs6c','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-09 08:34:35'),('8inqug2p0mzkssdqygez9zh1qufbm6vb','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-21 06:33:53'),('8jit8bc2xqyr5hqjswt2ls2m0tgpsyop','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-24 18:32:53'),('8lhx57g51hy19xtw0ybg2dk6bpl3wm5r','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-13 13:49:18'),('8mxwf5iao9urgf3rw8508e0aqnn5ohou','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:08:40'),('8oad3lz1zmgs6i1hdfgrebng8usx6w1y','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:08:40'),('8orf71mqy3d1hy3q7i0wgyvzbdyyng7e','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 14:33:38'),('9054bdu4blc3yjvw3ldtp5ti1230envs','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-13 23:11:34'),('926uhw1t8wmagvh3ri8jabaq8gf9gt8o','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-06 05:30:03'),('96pgd6opqrutl0ped880smmptqiaih5c','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-24 09:00:39'),('98ww8yax71h3qfmz1x8lq2ejruwn7hhf','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:08:53'),('9a1zs2rcgcvk68nufxujgkpm6tfhj117','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-15 12:15:03'),('9ce5jospwk1509ker6kr6fu3lfkjy4dh','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:05:55'),('9f37v943xbg3uueh45tpboage6zp6pxl','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 00:19:47'),('9g6z74v6el03ambtg87oew10p92l2ntj','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-12 10:59:54'),('9j7f982lboppquoqte2eoynrhsz1cbdk','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-30 11:40:10'),('9jshjmobfzkga4nc8bbuy6ebii0fn7e4','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-10 16:10:28'),('9o17ns3mj5et87nnav1cibqnhfmrnrod','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-13 14:43:51'),('9p389oxwdz0uwnvq8wjvrxwtl73qccoo','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-13 23:11:34'),('9qoqx90mylea22wqlkmrwyljmgftzrp4','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-24 18:44:52'),('9s13xbf5kugqa309ia2rewbuzv47lkxk','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-20 10:40:58'),('9sjnxl8fq1zut6qabrm8ujnp7dazqpsp','Y2E4Y2ZhNmIzOTJiMjE3YjQ0ZGU0ZmQ0NzA3NjZjOTU0M2YwODRiZTp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiZGphbmdvX2xhbmd1YWdlIjoiZW4iLCJfYXV0aF91c2VyX2lkIjoxOX0=','2014-10-29 08:42:32'),('9u84dhjdqx98c45p410vbvhoi2meof07','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-12 15:17:42'),('9uw7oqp1apeyqo7rxpt3fq64cq2vjw14','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-10-29 11:00:57'),('9vv0cxtrtle1mognizh0hvdez9hc9lba','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-23 10:17:21'),('a07mw19ql51i4zd383zkxiyd5fgf2qrj','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-10-30 12:44:31'),('a0lj1y0dvkj0l6zi5vwn2buvf3sp6lba','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-12 22:23:59'),('a1nrt2f5s2qthuscmo0ftyhrl4cgr5o6','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-10 23:16:35'),('a61dlzirex29hxr5mkici9gn4saiom9z','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-10-29 23:38:55'),('ab2g3ic4q2ow88jsxxomrlbpn7uxu3bm','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:06:51'),('ak5g7t0gf2w5dbuhjjox9lkz3ctlc39l','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:42'),('akrp7u6c6drig9zwd7z336sy38zal4hu','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:03:39'),('amh06bmcqghh3ewnjbc2cwo900y9i98c','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-12 08:25:32'),('angpij2uekg268kduorvi4pvgyrd168l','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-12 19:09:24'),('antt3qhro820jxugao7wps3onyhzvzpg','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-21 11:55:27'),('aoxh4dylww6mlj932udhzgtzfbbb5ede','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:08:20'),('aqyekd7frmlgfaj78zjnr3ukvx8yen7f','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-10-28 13:47:03'),('ariz4nupx0ndmtt211tok0wvh99iljj4','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-09 15:57:54'),('asraox00hnz31xvljbgoxwk38egzpqw7','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:06:27'),('b1uwsn82l0wu2te77m7yoemac61huj2j','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-19 08:56:20'),('b2fn4lsbkdwhoq68t38cwythvkb3rpmw','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:38'),('b2mpgdr465uc8vl9gk78q1kvy2txpfin','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 13:12:52'),('b4c2iy1nwart020u79a6hps8es2nephe','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-21 08:30:19'),('b4fe1672ji4vlymieworsw3wy5ocqpt2','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-10-29 05:28:05'),('b9co8wx8ft7l0hfiytdehe0f5lfws2p4','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-04 13:51:05'),('b9wfvt84mzcuhralmrz82w9k36ayszqz','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:08:02'),('binizl93rm3bs3f1agrdpxs2q0zkyqww','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-13 19:02:05'),('bj1glff4muelzqnww9capb0myr08s1vn','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:05:29'),('bkv4vh8xqv7qukwanouxslqvfilza9wi','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-13 20:31:55'),('blmbhckfobe794284z5cpf6podoi28tr','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:07:03'),('blw2px1g7k8wwsllatuae0ssf06wz35w','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:04:20'),('bnx18w35ozow7h2s0gej873ywv5h0t8i','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-26 01:33:32'),('bo4tlhcg950yblus4m5j90s971p95x4o','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-10 23:16:35'),('bqjrjvlrqx9v68i6hlwkks9dvr1i19c1','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:41'),('brmd7l9m08hel6vhlx8tn0t5a4awgi5a','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-04 13:51:05'),('bstqk2cma6jykyml460by0jqr9zafdop','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-13 17:14:43'),('bvsirvygwrjw2v6vjjo54v4pcogzxyko','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-22 00:42:19'),('bwdjbj42eu7znopbn82ebpkau4dbuqyt','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:38'),('bx6zfs6q5teyhlfyvhmx8igeam9vdocz','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-13 19:02:07'),('byv16ocr5zg4kb6sd0pgke5h6podzlcz','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:04:37'),('c19s0p3rxo58t3adum2vjztx9x6k5m7n','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-22 03:28:23'),('c6ftvym8dg5huhou1rbrvr9xsr3selo4','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-17 22:42:38'),('c7iay9j2ivk5rwc1zm5ptuhbj84g0dct','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-13 13:49:22'),('c8geqmvq38z0s5sa4l5mrw120mqetnsn','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:05:14'),('c8ugyk78hgaa540xc590aa3w6z47a8p1','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-16 23:08:15'),('c90y5ip9u9k9e9cben5bhpnczlot0j4g','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:39'),('caq8c4bo01j4znlmwqwqdiaynz3wxxjt','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-17 12:56:26'),('cbb0cbjl9l2kmu27zs5bg7uhgauu3chq','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-28 00:19:25'),('cbuzr8n0pgqgz0dfgosrd4my8j4fxat1','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-27 04:41:17'),('cd9gv099xylf2lqjtvx0ueop23s12t5w','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-10-30 07:33:04'),('cf1v39jltit4bps7u1248qpytek29l0d','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-15 13:46:34'),('chfcbcm8zmkpebf2pkrld6zu1th6radu','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-10-29 11:00:59'),('ckf5asbh101z0b39vn8gh5ceubgajq96','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:04:46'),('cmgpwdkysmrz3olf81xi2gdq6hv41gdd','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-30 08:46:03'),('coelpw9tdz4boytzftwwyv9r8cvy30dt','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:07:15'),('cqbayecnjft7a7iwo39449tw2nbg1sbk','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:05:29'),('cqd80az4sshz8nb8cytyrr436monaoth','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-10-31 20:06:59'),('csmji6sd5g6vo0xh2d8wu69d7wcwepf4','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-13 19:02:08'),('ctmm1x2l65m9n8dry1kw26w2ai5ael7w','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:39'),('cu49hoqctf6nxosjkr8609frepzc8iqo','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-02 15:20:49'),('cxgs92xu8713bbl43yzdw4xauuxt9s05','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-01 19:35:42'),('d0a114n2ds407yw6evx1nfauednu02n7','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:05:29'),('d8g8y55ujrbj9s8uejoorwnqksmw7n0d','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:03:39'),('dcb72ptlhnr5k7rdu4t89ahm907y1z8a','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-01 05:35:39'),('deegv1d1t9v788kd923ajp9us97ah1z9','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-03 22:50:12'),('del2jupktvaxc655zvibmbsp73m9wo10','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-23 06:30:56'),('djk5td9kzh2mvsqxhat18j15iu749h2c','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:39'),('dk2648u2q6rbkh08koxi6cbk74bbkn7w','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-06 14:17:49'),('dl9fzndapluo0szwer9y43cc1djzzd6d','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:07:36'),('donv8plzv5gbzlsqvh2nhqresuhwtjvk','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:40'),('doxl2hv3drw4osbbk5240tabv283hwcn','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-23 01:45:55'),('dqxmlkvvo1kcfhgfzl3jg2ibuu2z4ki3','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-23 23:56:33'),('dsqvmrzgvndk53z4x2fx9b0iuwrc3bj5','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-11 18:21:25'),('dt3pfr4qq7wd45docut1o5pbdzea6u61','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-21 11:13:32'),('du050gwu1y8gy3366j1fvoteajegwgvq','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-22 02:53:23'),('du81bpspqp5ax5lbd7g54x27m4z24og6','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-19 09:15:54'),('dweodqnn72n08hpyxeyhy3gcswow06go','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-18 15:36:50'),('dxw0k5uwqip0q49o9b1enbfo2nunrn0x','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-21 01:08:39'),('e07rxrbn6699a642wpwbwtfj3rkoar7w','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-11 00:24:18'),('e0e6vhunludnp1mgxpk0eze72humfo3k','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-13 13:49:20'),('e2s0kh3rgmjdpd5iv5r27994wds8wgpn','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-29 00:36:13'),('e3bgtqik61ks4bki76hkpo6uwkeg28tq','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-24 19:34:22'),('e3drg5hnvmq0h8ahon2dawwok09xf1hy','MzE3MTMyMWMxYjIxMzAyMjg2N2M3NGQ3M2Q3N2RlZGJmN2M5NzZlZjp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-10-22 19:14:17'),('e3m5m306jsd12ss9fbusc4kijzsq6t4v','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-12 01:03:44'),('eaj5nojra021q6pzft4azutf3udppirg','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-15 06:38:08'),('ebmv3jda9a7sp2v6iebi64wcjladp7vt','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-04 13:59:50'),('egkrgp672madu45w66a61fkolajocgfz','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:03:40'),('ejoyrfev92f9haalavlp07sn0gb7s9ql','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:05:04'),('eldzdx6cnups66smxq4n6nfvm7kzfnnd','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-17 07:12:24'),('elrc443z891t8bpqudqn9zisb82tferw','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:40'),('em652ehk6gkd3zmab8aggt1e4z3azd4v','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-08 00:09:22'),('eqawi11ipmrrrh5bxfu4q4wedik4mc9a','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:39'),('evdk8hmamwn7pygav94ts9hx8gcl4zo2','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-17 12:17:53'),('eyzincdlk1ebg8e6e8l7pwosqimwsrz4','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-19 08:36:37'),('f29rptyt0ld0nw14esbqx38pckewtvpi','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-01 19:28:08'),('f3w4rlt2fcdija045rgi28ayakdto2y8','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-24 09:00:41'),('f4vdncwjcia3v5e7ud9tj4b2cqthtqpm','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:37'),('f5vl0xya2klf4z675ghennpq5sawwlzj','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-10-29 11:00:11'),('fawr4w8zexs3acbrpayjt8g3p9ig2528','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-02 12:00:58'),('fbx3jutolft88hz3wfkyptfif28z9ws3','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-25 12:59:49'),('ffud0guxqs9ys3ocuai75qlc9tsx0x6h','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:39'),('fn1mdu2o4t6gpg3vhkrk7u17lfrunugm','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:05:12'),('fpfsbkz6tapggq8es1aa2twxpgz6nobc','ZGE2ODRjZWFiNmJkZGJiZGZmZTVjYjA0MmJmNWEwYzJkMDM5ZjcyMzp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiZGphbmdvX2xhbmd1YWdlIjoiZW4iLCJfYXV0aF91c2VyX2lkIjoxfQ==','2014-10-30 09:32:41'),('fvbs5pi5htkk3aw56yksq6011qhaou9b','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-13 21:59:12'),('g0h9ra9pb44pfl42fokhxtxkv7kx88qr','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:07:55'),('g5apxk9h9mbmh7xd8fhhr5ip34zmiz0w','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-10 10:43:13'),('g86a07ne8948y8s6nlj8o40zdnqpcq03','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:41'),('gdarbfovz8snjyovcvnwitg8sdxthryb','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:04:08'),('geichphfamqxsny1iqq22mz7662tnuay','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:07:14'),('ghnsh8rwr9nfkg7l7v4tdvxjffeqf8tn','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:40'),('gk8nbohxdqdg3eom60tz1mc3845m31f5','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-11 19:27:11'),('gl5tpnwn0lhfthznv5dqwt7jsbpv7100','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-08 15:58:51'),('gv2n963xgh7oibj1u7p05o37nk5rm23h','ZmU2Y2FhNzZhMDQ2OWY5NzcyMzFkMTY2OTg5YjA2YzI3MzVmYzYyNTp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MTN9','2014-10-23 08:35:41'),('gxe74d6fx7u0a91sej34fa89q5km5g55','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-12 20:15:10'),('gy2qktiyor8smex62h2swecac4fsufs3','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:07:15'),('gysb52aie07cfbdmu88sd1f25gzbb9cw','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-20 16:09:10'),('gywpfozn5kawko657w8a6nmya4t17nt3','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-12 20:50:13'),('gz73ax9p58ezllrezg548nillkb9z50o','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-08 20:38:34'),('gzz9zgka4233qimsf5u8axf8zv9zchbc','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-13 06:52:49'),('h194y6ortnhix82w7lodaxu8wale1jso','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-12-01 04:57:03'),('h1jrzg96e8tf612ogyq1u2t6uws1yfvg','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:08:49'),('h3fbi5d8qta54nzfbeki7kb8q44rokmt','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-19 03:02:47'),('h4x5n98zzwd6jxdy3abrv1wsbm0cw43v','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-12-01 13:36:23'),('h685i8el0k9nf9k4dhbskp3hlioovwii','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:40'),('h8bi5vrd9il9p8v1mfv9lmagt7zgnx95','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-05 04:50:26'),('hb6snlo1fpk8pnx8oa48avfcq2rs8fqf','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-12 08:19:09'),('hcha3s9abzm2f5nm6grbu5vwnbnqwf8q','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:05:51'),('hgnsnjl3he5zy1804vkrt10zhyk5w2kv','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-25 12:59:49'),('hjgm0lehl3kfqul0ovydab5f7upp3270','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-23 02:50:54'),('hk8weciaal8c6oobuiuf1ylv3spiubsg','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:03:40'),('hlhivx6tas4g4liwh3ztils5qtkbz81s','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-04 13:59:50'),('ho2mpt0d3oozx2vu8dmm55ek5ocdle26','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-04 09:47:37'),('hqt7pcl2dpz6hfod7x9xkrqc8myz9kvo','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-23 10:18:13'),('hta3ku73jcinlwhxr0owqd9iscuq00ir','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-10 06:37:20'),('hu2pwvjfq3b7nkwfahsbanhb4r0vo7r6','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:39'),('hvkrv9tnovab06jqcp24nvrs79426xde','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-25 16:48:10'),('hwkg64zi592t18wg4vw84a026jfnpuf2','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-10-30 01:26:06'),('i0kat7ivb73w26jmu57xlxt8yddijh80','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:06:15'),('i3dwyoqa4ykykkbemzmh6cz7hneghyyp','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-13 20:09:57'),('i9ck4keqi6wqanj6vcs69k75u9uc03xy','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-25 13:30:53'),('i9uxbcdvkmehnxwk5zrj4tecjrifll1f','YmNiOWJkNmExODRjN2NlNjI5Y2FlMGYwMzIxOThmM2Q4OTQ2Yjk3ZDp7fQ==','2014-10-22 02:17:10'),('iam6kjrf6nkq5gk8tawu6x1pv6yoxa97','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:05:24'),('icj9vn9flonvhdkbsxvkteac9gogoln9','MzE3MTMyMWMxYjIxMzAyMjg2N2M3NGQ3M2Q3N2RlZGJmN2M5NzZlZjp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-10-22 18:41:16'),('ijvc9t5o3ryocmcgbmb4a1w0uzoxd7wz','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-10-29 16:52:51'),('iof4i3sib53661ra7sbpwfz3yddc2o06','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-12 22:51:01'),('ir9wncpeswecp94lfytufukd8esikjzl','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:06:48'),('irdj2vd9jo906oqezwcf6xstqbi3eki6','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:08:53'),('isawa15n6z1vbyh28tn56f1k5vhrbrbi','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:40'),('isb9aywtc4educob6u45g29v0lijuxhl','MzFlZjFhZTdmMDhjYmFmYTNjZDIzMGQ1ZTVjYTQzMDJmZjM0MGQzYjp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MTJ9','2014-10-24 09:39:08'),('ivkcwwxdujlpup823vauvxvn3l7gj0af','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-19 05:56:49'),('iwkz17lu2rkzmlab14bgt02jt4x249tr','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-21 02:11:53'),('iyng6b246mv76szccl6xvebri6dnq6au','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-12 14:21:25'),('iyrrrlt0fhmuy8o0eynupi0erriuf0n8','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-03 22:19:57'),('j0imhza5ue6abcu09cyzmtryk85gzxxn','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-12 00:27:54'),('j10cv4e3yuhsa0870a5zgfbore1vt5t4','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-18 17:40:56'),('j2min0b0m092nbf43j9f2drwzl9lcwkb','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-04 13:59:50'),('j3yn9ecoqyfukvgloqnbeu59yelyrm9a','MzE3MTMyMWMxYjIxMzAyMjg2N2M3NGQ3M2Q3N2RlZGJmN2M5NzZlZjp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-10-27 06:36:40'),('j4v06qn2deh3050n4tayka8u0t261ag4','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-23 09:33:08'),('j9fv4ifj9rrmb67zj17apss7t8n8v47m','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:40'),('j9yf9yjwm6gv14il7pf9rrv7xps2i0xk','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-13 07:10:05'),('jbxsuy6vfyt092hqmunhgx6vhubjxsia','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-04 13:59:50'),('jcd5cr0a3pxvtdnoctb02xecy5lepujo','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-24 09:00:40'),('jhqbvyucd5ntacffltvxqmn7jm4s0kqi','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-11 23:16:54'),('jifghah19os4ia209rrzztbfklerk5g4','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-25 12:33:27'),('jiqmwgz5vuuebpjmvdhmplkwz028ckri','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-10-29 11:12:55'),('jnlrnnojzrn3fgkdeykldf61o7lsav1b','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-09 22:37:11'),('jo8jzjlb00jra2eie0xur7dswuvsgeey','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-12 11:47:18'),('jpie24obwmk1n8h24a1osaujidb9sxak','MzFlZjFhZTdmMDhjYmFmYTNjZDIzMGQ1ZTVjYTQzMDJmZjM0MGQzYjp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MTJ9','2014-10-26 23:03:24'),('jpw9uuehkfwxewq4gpf6q27qvvlvkay2','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:25:42'),('jrgg0jrvlyqpf4yz34kmlunlfj0w4gfw','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:37'),('jrgrbulu5gor39sry6c4kdzhjuz16hdr','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-03 20:29:52'),('jsma4f2psawk6sp3e3v45oqwsgp372i4','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-20 00:03:06'),('jt832dn9aemv786a1xkwdlrk03r12r1y','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-12 17:06:04'),('jtndwhbr9esri3zvczr1ulz2wim4qbe8','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-04 09:47:37'),('jv7gxbyx6il04olbx1uyc0250dryiku6','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-09 08:49:13'),('jw57m7btwx7r5vtt70vuhq5blif563vr','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-12 22:32:57'),('jyy93eevyfczrfdm6b6oozsh7cyf3uk3','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-12 02:53:40'),('k1964casz54chhfn4v9orw1z3lsvsuk3','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-20 19:33:07'),('k7wqv2rwl28koi3d5op9ap8l2ycfra8y','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-13 23:11:34'),('ka5leto5876y0zn9eudlz8z5esf044qs','MzE3MTMyMWMxYjIxMzAyMjg2N2M3NGQ3M2Q3N2RlZGJmN2M5NzZlZjp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-10-22 18:54:35'),('kal399loj8xpw993lhgnib21utw47rbt','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-02 12:55:28'),('kce6d7tc4zb6bvgxibegbn359o6wcokj','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:08:44'),('kdsvucbgd3f0gl3gawhndehy9cg55pzf','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-20 02:55:27'),('kl1pjnr029ylu4taskhx3pmv14cd3vhc','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:06:51'),('knd435xn1enm2q6nmrb91k04t764aws7','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-02 20:15:19'),('kq79fm0bdfzn084t72bq9gw6z0ck9yb1','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-17 01:37:27'),('kr96fjmkmswm364pam0hsi14d57c4xqx','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:08:14'),('krkohhhn5ltguil2zmj2g45ovwy3h8fm','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-12 11:23:03'),('ktyprw8pepw50c21hm7trwc5ht3bzsoa','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:04:42'),('kxz9yy27seu6i1qidcpwnei5fvwyrxs6','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:08:17'),('kyrrx9kv33lm7kty3f4lo2nxyrebjsk1','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:39'),('kz0wpcvzbuj9crynes6j6j7mfy6jy87h','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-13 23:11:33'),('kz9t85tqbw5ljt1ls4btz22glpxaq40w','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:06:34'),('kzj683waq4vutl5zxlwupi0s835m9961','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-16 01:24:48'),('l2dz6row17lu1bt65d3e5pqwz42qbf6m','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-10-29 06:11:11'),('l6l8n4zo9a95glxjo7lcidh6gpad4pbk','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 07:23:57'),('l6odfyhedwjdw73dxppjmc4kenjaxfq1','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:04:37'),('l8z5xn5gezutnb61u5916bjto5ly6u68','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-13 19:02:08'),('la99aw6gbbeyhy002gzzzsgpkwlzxmub','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-24 17:11:22'),('lbd92vgs02hpmad0bc0et40restyzbtj','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:49:20'),('ld4awxbxhm010jmtbvy81rcoekeed3wy','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:05:23'),('leuuqag9p8ocblen7etputt51s2map01','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-03 13:16:44'),('lm3f0zk18h2rs5kfdd7gej6tg6jw2fh6','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:40'),('lw99wq398tm1mx9amb7eujw3yoeafxnb','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:38'),('lwwpg3w7fkjyoari64z929m53844f78f','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:08:48'),('lx7zywaugohmfeh2tbeh0ov5amgb03fy','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-30 08:46:09'),('m26i437d7ntpmil7r0lsqgd82hqm518w','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 00:41:56'),('m2teyxw61dffeplmoxfd7h02x9k2q3d9','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:40'),('m2vsr46jw0537bj665ga0thhgycuevte','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-10-29 11:12:52'),('m2wm0vvlmn51lmwrkplinq83a5eylioo','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-27 07:04:10'),('m3c4dl4x4fm3ph5cdfonkgmmaf41txeq','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-17 22:42:38'),('m4k7zqw9pla8n60c5mg61xrn2u6sp0l8','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-10-29 16:52:51'),('m4lo44o9t4mv3htpgsj7dlizzxd3xj2f','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-12 12:43:02'),('m7vzbzcf7hbbnxgc6401w8bgox3opi4k','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:05:17'),('m8cc11c8200xhda9a4tyf1051mpf3m6p','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:42'),('m91qbwlid5ap86eti95qthxpqnnj18uv','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:39'),('m97hdfvw8pamvh91jgn7sg20oui4utmf','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:42'),('mbbsvlez5ga2cybsm1plk829q57n40um','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:06:50'),('mc2t7rx8tvk4oz8d2z963kkzalq6w789','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:41'),('mdwxom52olfmf87kmjzgt6fr40vgt8f1','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-10 23:16:35'),('mnbdmbhgozavpsc5avzxcr6xskyu1vrg','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:06:17'),('mnfw507u3rq6ak22x5gjdwr8qa6orygt','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:04:13'),('mnzk9lvbuj7vqqy7yrleg3ps0qnf8k9u','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:04:46'),('mobde7u2za38o22ffptzosubtx7sfrh3','MzE3MTMyMWMxYjIxMzAyMjg2N2M3NGQ3M2Q3N2RlZGJmN2M5NzZlZjp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-10-27 09:58:28'),('molcyzkl29egk5ad6tmaxhx6fdu1wvqf','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-25 12:59:49'),('mqvgdpavvx1qc7cvbl8bct0r6tuxx6gn','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-01 05:08:54'),('mur27n1xwizgb1t9ftcsi7317p03n5wi','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:38'),('muzv123j25pogbz5vuqjxs9b0tydw5u2','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-30 08:46:03'),('mvfzjmsn3dlh9gmk6yf0z7s7zys5l86b','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-12 07:49:43'),('mvxrmu4yo9ns9v18coxbmrqeqd8x10t6','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-28 14:00:29'),('mwhd1zrremn50wpkumghjlca7fd0m599','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-26 03:38:02'),('mx1yt8hnzgnliforubuo04bdwh05xm1m','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-05 10:39:35'),('mzvzl07zva8prjfjxu00i9yfe46qrb3z','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-02 12:55:27'),('nbzahtok3bmxxjbx82g694d9fz4qmqpv','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:38'),('ncvya3w3bwsdzv8lwxqks2og893krynv','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-23 20:26:49'),('ndovdtklrhgurde9rdhnjoxvqh22a1b5','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-19 08:36:19'),('ndtwdhv7x51eswjpkercho3gulyacicu','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-23 20:04:57'),('ne2bjg3csel5ryv0hyfek7x58oajffkz','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-03 09:52:10'),('nh8kfgk90e5tswu4fka6qi3av5rtwddv','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:37'),('nkw25d7merlfaszhwgs48nt57e0bewg4','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:38'),('nmslrxlb6djqwrlutnrw5z3pv6jgv2js','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:06:27'),('ns9lbjocpfz9r8pli4gbqztam3c4yh5t','ZGE2ODRjZWFiNmJkZGJiZGZmZTVjYjA0MmJmNWEwYzJkMDM5ZjcyMzp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiZGphbmdvX2xhbmd1YWdlIjoiZW4iLCJfYXV0aF91c2VyX2lkIjoxfQ==','2014-11-04 00:26:42'),('nt9thaky4351kevhuyn5glhbyle2dtef','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:39'),('ntgdgv8t7l5vda0aggj1031qnyji1s10','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:04:55'),('nueqxtupbhd0x8qmwo0tkkncv5y72gwz','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-04 13:59:50'),('nwrbpa9esplxo5jm5419q090pm2itpn4','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:04:44'),('nxqq9v8xn8s90zpiafqpjp748kzlfwko','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-10-29 11:12:53'),('ny0rnifmozbvv9saee0am7uar66pq6r4','NTdjZDViM2Q2ZGE1OGE0NjJiNWYwMzRmMWEyNGMyYTQ5MTU2MjM0ODp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-10-22 18:39:51'),('nyegnfs4suhqsq7ccbqeqt35e5xgm2p6','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:06:24'),('nzvihfx2jlpkz95w57uarvb2v8zf2ios','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-12 12:59:15'),('o2f8c7jq5zr2bt5w03huv7sq1bhcebxs','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-12 21:18:09'),('o78pntj22vzovmuu5xkujdjcmokpgq90','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-18 04:06:29'),('o87dsz3jski1cfumxm3r28f6syalv5vu','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-19 23:43:31'),('oa6eto37cn1fj10hpqafdm1z2sg0c5ti','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-12 12:16:38'),('oejr9ol0tpxmgknn14bep0fhk43nyp65','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:37'),('oicsm404ex0mhf9ob3n5qy0fehyelcpf','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-25 12:59:49'),('okapv4z9nveo9wsf62lkizyc9c9e6oiw','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:38'),('omfl6f5kwuudeyzmu2fhd2aosc35nbtx','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-10-31 11:46:49'),('on8r3h0c5vkgp1fac15m954yb1burbm0','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:04:23'),('oof3f0ovlruef9sjup2l082v8shv3lty','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-02 12:55:27'),('oryq5c4ng77aohh0lfsjej22x6xl48al','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-11 16:33:15'),('os3pfwaou16ciuc58e7606wm8ipv5jse','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:06:28'),('ous7snlftw9vxmb2m24ccyc94kfikig4','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-06 14:52:15'),('p0927lqqe193oicbonut05nkmqlg6h6l','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:03:46'),('p4hym0ekedoavj9fg1zlijfgwfhv09ae','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 15:59:03'),('p5vcspdsz8si6lbezjms36mhxhn0gdr3','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-12 00:08:22'),('pcfgssig4e6ky00vo9ybkzvn0m11b346','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:05:12'),('pfhbxgwtcsdpz7s2liaxqu53f8totnuz','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-12 11:06:27'),('pfhiakkgbncw9hzphue44ih2bi81bvnc','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-01 05:48:58'),('phe81tijnts5i8lwrbgnziylafqtcmux','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:08:50'),('pi1xqzrt0r5jb62nr1an8hvb6bwr81a3','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-02 12:55:28'),('pjnhnso5wmjl6tvjywynaxm0daeansxr','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:06:36'),('pmtesycqg6xwo3hqijwg9bbbc3btdlle','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-30 20:35:17'),('prbp5j3cb0viouwb0z70xaslwp0t4do3','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:39'),('pugaubkp7zcrf3b26ixjwrl65icjbvhl','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-10-29 11:12:56'),('q03qu9rkd178wb8s6zgnt9mp0lyprvsa','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:39'),('q61g2tag3l3ewuqao9wccms8j1e3ntih','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-10-29 07:19:33'),('q66sxxzal547bjjxgu87qgc5qjfu5jm4','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-12-01 13:01:05'),('q7ix8kcjwvxqb9cfu91ra8oyrk6c45me','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:41'),('q9igf04s0wynzfnyjycdcrwmliuka95s','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:05:08'),('qe4c43ehkqw1ldynchid7gc1bxf5do88','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-12 20:58:59'),('qlo9imsrgwaujg29lrt5fceaeugh4rdy','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:08:47'),('qn4e7iete7mhypke30a3nl93wcyyr5i7','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:42'),('qt31mjtyltf1ueb7e6f1g28l5p1w70pw','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:06:51'),('quu4bogl45pa5thbqlkz62fd6tewrisy','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-18 05:46:52'),('qvmazgaisnw8app9cb69uc6g1a92gb9y','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-13 13:49:19'),('r0gc4owtlbq7se4ljqp1xbp0b7jcvi7h','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-03 13:16:44'),('r20avwfe9097ew6apfo8q803n3dax5zf','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 04:57:57'),('r3dxr00atm84fey515c043fhqdcl4p9o','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-13 03:31:50'),('raoigqjm24bwwzwy6i587rtt2ue7ip0m','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 11:42:58'),('raz01cb1jeul3vvifeerh7fun4k1lerp','MzE3MTMyMWMxYjIxMzAyMjg2N2M3NGQ3M2Q3N2RlZGJmN2M5NzZlZjp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-10-24 09:16:50'),('rfez6k4y7ubtr0oo969koaavv7148ywf','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:39'),('rhe2s1ts2qt6xreewichjepccz1iybxb','MzE3MTMyMWMxYjIxMzAyMjg2N2M3NGQ3M2Q3N2RlZGJmN2M5NzZlZjp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-10-27 10:59:14'),('rid2u7hfgiy7dqogne669orduhxzwc0e','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-25 11:26:25'),('rn7h0ebtm0fu12rcgpwvewg5vy2nzmw2','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-24 09:00:39'),('rnli3tpftryq3cfrn13qf1ldsf3py1e8','MzE3MTMyMWMxYjIxMzAyMjg2N2M3NGQ3M2Q3N2RlZGJmN2M5NzZlZjp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-10-27 02:12:57'),('rpsmpk1j6metaj9efos44tssx3xfv5vj','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-18 05:46:52'),('rqyxl885bgpe0028krp5k59zbaxvvdvz','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-04 13:59:50'),('rvyaq9rnhs0tqb5q5ysipllojq7bncmg','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:17:01'),('rxoio4rqycfe2n2qqg4dfx6qj00j4no2','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-10 06:33:47'),('rxxw5wiqwxunwswwlda0tetnn6e0qv43','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-13 23:11:35'),('s5w3etnazrpr3g1wpils3bfkdjrblhjb','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-04 13:51:05'),('s7ff1qzm40xpfv12y72islpedqnn91id','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:37'),('s8szlgar1d4g3edtw77k05ewlp02xzqe','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:38'),('sduldr9mujgr5psfmynrsvynua6rsz26','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-12 22:59:28'),('sdvmcjvaqjqz8g0cdls2t6ffjj2e737n','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-13 19:02:09'),('se6crb28uviouid8bbnw6v1xg6qfjy1h','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-12 19:28:46'),('sg5eiimljy9npk1to64tampe5d8fi0gc','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-25 10:05:19'),('si0bkzljxqgd0owggrwi5g4rw2ujdvgs','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:41'),('snvwu2zth8qtr2qaghzdzm222rjqsaot','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-26 01:44:29'),('so2gggt1h7dbywjy2yft8zcgw4sk1r9g','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-11 07:45:31'),('st1bk5py5i0q4de2f34et7b46wf00myt','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-13 04:37:35'),('sv03eo0bq3cm7sqvokiwh9fx9t76pdkc','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-13 19:02:06'),('sxen8ilp22hx49xbszruaul6n5q4tbh2','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:08:38'),('sxf08gd7j740l1ls6w82tx6z3ygtld3k','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-01 15:02:14'),('sxl6nzp6z46w5xc04j737v5tt7avnshh','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-08 00:09:23'),('syt2kmby62co7k07bxbdkvrml3yqqzqu','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:37'),('t1vl4jpy3v6kgib0qn3eznioyca59ngo','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-26 23:47:00'),('t2g0y3y3jrh56kqqs049te7wi2ixqqj7','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-12 07:17:47'),('t5jpanhir2xg45b89z8bdbas4kd8ag04','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-20 15:27:03'),('t7iwp487r0aojyd3g0augt6zc8xk9q59','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-05 07:12:11'),('t86z2rhx4p03p0yxsae0ezykapbbv6py','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-06 02:17:27'),('t9pt2hbzqyrk160y3rzyse41b3apxcuq','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 19:46:23'),('tc4lydd5f22rh3qsgpesss0lmubx6ghq','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-13 23:11:33'),('tccx8zhlydwnuvlq5ki8np3bdor1sglg','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:05:59'),('td6ra0hbqhvafn9jey14e7e0gxv2wveq','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-09 03:10:50'),('tehgfpwip7ahg6zcatpdnjz94ftuekkj','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-12 19:56:08'),('tflcjwj4f6vw035xsv5euoj7gs8fu0te','ZGE2ODRjZWFiNmJkZGJiZGZmZTVjYjA0MmJmNWEwYzJkMDM5ZjcyMzp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiZGphbmdvX2xhbmd1YWdlIjoiZW4iLCJfYXV0aF91c2VyX2lkIjoxfQ==','2014-11-03 05:43:36'),('tgfxcbgjwrneor55tbvpiwuimlxmqanv','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:05:18'),('thcodeeoiri1hqxeu9p8ke7h1offxeoe','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:37'),('thfewpc9aptjwuk736i4b7zywsl0gcbz','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-17 22:42:38'),('tk0rcn64mstdm8yfgbuls7kjafm500su','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:05:32'),('tkokzwj0v7ymyr9mcrl2509paba4xy1y','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:05:37'),('tlhcumaejfnvzytyc6zju7wedbztmpd8','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:06:49'),('ts7s7l7p7ukrn7tfadjqy5mhdifawra4','MzE3MTMyMWMxYjIxMzAyMjg2N2M3NGQ3M2Q3N2RlZGJmN2M5NzZlZjp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-10-23 08:42:23'),('tv5ckbv8prv30xk82jwnnwilx2k6cgff','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-10-29 14:39:11'),('tzlv4svnaag0jxzq8svjaqy9twywx36l','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-30 05:16:40'),('u4iyzb0wm0ugyviu9i6iamm2ivk196og','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-10-30 19:47:42'),('u56iwj9yjhz3dxlz15weyu0urnl91ipo','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-12 10:02:47'),('u5crl7ppd2cuvqa1mpmelwkosysbq4m0','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-24 11:59:25'),('u6p2wm3mi3crgmv4pav2cgumx0bbm6hs','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-24 09:00:40'),('u7v6rmwa9h97p0tfzzwein7c2v301tg7','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 19:03:30'),('u9u9ceqaqahr0eppmlhmqxrl9d2sqdrl','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:37'),('ud1wx1aqhqdhg5djr2kllhghy4uxiyzi','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-12 14:09:54'),('udd6e3wadn2sdwoav2e2hdwl9d37ngjd','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-18 20:28:13'),('ue4ui8o4q05q2kaalst166c5dm1oorn6','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-24 09:44:13'),('ug3by0n2ktq8zr5kp6x4e3efqvhh11uv','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-17 22:42:38'),('ujyv9ofbfip5vbqxox9sk3gfv63v619d','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-09 23:57:45'),('un1ngdqc5dtmi8vjomua2pid99xmhxoj','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:41'),('un74jczmg1vr9qcbyzk5y1vkz4lg15ro','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:04:06'),('unwdpwpnuml0pa61qajvuv5sclxh5vtc','MzE3MTMyMWMxYjIxMzAyMjg2N2M3NGQ3M2Q3N2RlZGJmN2M5NzZlZjp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-10-22 02:57:40'),('uojqpzei29wbsiou81gapl6e7rxtwlcr','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-01 07:55:57'),('uwsj4nisyrjwj2tgqu0kwmd430is6sfa','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:38'),('uy0mbk6e17r55i0t7j5gbybnyk6dd986','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-18 05:46:52'),('uzoyw0bwg1mz5z1iqgilxbankzarhr9w','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-10-31 11:46:48'),('v0s7e1bhigw2rlbk5ezgl6gbd9xb7clb','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:03:57'),('v0wcfuvlf5mc2lafk6382xduskup5uqx','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-10-30 04:56:13'),('v7qsuk31xk6v1vg30irlqap24p3m16ry','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-13 13:49:21'),('vb2qyjmbwhmm1097vbh279k2lgupas12','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-12 08:31:02'),('vebrqf8fgodvsmb20xvdup7xolphsjsk','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-03 10:21:55'),('vfcnc4zkvrvhsdtbg986nf7jsvwwonni','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:03:53'),('vmh98ey6t1y5xzf2u4dyifju4hr7z0ps','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-23 10:17:21'),('vonxg1aufi2o60026r9ckx6uzqjui2wy','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:41'),('vq0tbtwhc06f2lp63vfp2wjdfqt1d0xe','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 10:07:34'),('vs5g3l0nowx41m1bkv5uxuaux2ht1eet','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:05:29'),('vuyj09ya8krs3t6j3o3z2ci6qhh2ciw6','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-24 07:29:39'),('vvagstlpqvc9kx7kgrmpz7cgr99kvwae','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-21 14:28:36'),('vy8qxlpgqo8nj5k1in4ob6p0isdtn17w','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-04 09:47:37'),('vygnklpwcn7rz5qgwx4zydwg9fwajp05','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-21 17:12:45'),('vz5gm2pd4k75yl20ja9oniqra4f9bnym','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:05:49'),('w0whansbu30e5uiv63g2qu4ux7251gq6','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 01:17:05'),('w1jnxzh2gm5svo2uj5adh8raeg9gg8fx','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-08 14:20:19'),('w1xx4w7mbm4hg7hgxo5z3n94xjtop8sg','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-23 17:08:06'),('w32htqbq6zolku1dusd4sat8y7cntu9u','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-13 09:51:38'),('w3b1jwja42cqxskct0np7xm8x49nhycl','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:08:19'),('wahatc96oaxan2sce1yt567z7witn9z1','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-13 19:02:10'),('wamqoap2xnxe6ropif3koc9g5kij2v6e','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 01:28:25'),('wgnqj4ui8eyjft2rcejczkz4991i5lcv','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:38'),('wllaivg58kltfb2h4yo42prr9roradz4','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-13 19:02:07'),('wmgabu4qsrrls0i1bz971kvruqwjnzca','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-06 13:56:21'),('wnyhkb48bb2eekgitb5bvdctlxukwj2w','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-12 14:50:33'),('wo25jl6pllcedtvmuwdgzrcjq83sbn7g','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-22 17:31:33'),('wrjiratlqcv17fnm6gej7cwc4orkf6eu','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-10-30 15:14:52'),('wz9yuoqu5lua2gydd1gi4n95vxg27f4p','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-12 07:25:55'),('x33y993l8kyzcsa7m3cpe4g68ufibzc6','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-12 15:17:34'),('x3wiv78m92udd3c119l6dxoebjgpf71f','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-17 19:59:18'),('x4qgdctjvmrco51iubkhd8annzu3yc4m','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-20 16:25:44'),('x6ufdl6lwpbbg5ea3mbuctcfuaw3cy95','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:39'),('x86qhe9ct07smgv776ajd3lvbxqyb0gb','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:08:29'),('x8fcbst7eqyxef4ykgp25jz025c7pt4n','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-03 13:16:44'),('xcj5nk0wopmyzubdadbnbc8fqojljk7s','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-24 05:04:07'),('xeeps6vw21jsv0rs6xuwupm145hvlvvc','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:40'),('xjmwetnma8h209jg7w3b9ailtirrx397','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-06 14:17:50'),('xklbkjpn9i7v04oj8m3y8w4pvyd67shs','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:38'),('xkxmy3lrvu2c9kdu0k9ura5uz695c0me','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:38'),('xlhf96jpagpcosi7p7jfk8r0dr541rlv','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:05:35'),('xm1jww7ip7n92zvgtn1v7luqdkexyrsc','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-02 01:53:18'),('xnm30rvu10v25b0oh380rph3lxo8el4y','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-04 13:59:50'),('xq41xh5mo2nq7hrp5qgnepmm8nu366do','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-30 08:46:09'),('xuabus6m0nnxbivd77l2erdgy53g09hd','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-14 02:05:08'),('y3aquobzlbc5u8c28cfugp8spc2tor7p','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-09 11:49:37'),('y4bfei7826idw52i3q0a1jowdg8ycrs2','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-30 17:48:17'),('y5haybh7hm8hpzlyk1xiqonk2ylgr35k','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-22 21:31:09'),('y5v4i6e576j7tc0tewgye4cuhgnwkzi9','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-25 12:33:28'),('y68xtu36cb8xffyezeuvxg2wrrwy26qm','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-18 17:23:25'),('y6jjal998in247fhxjo8e0upatntt28h','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-17 22:42:37'),('ydtmkh6bw4wjhvxfzofcykebth1wp0ig','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-03 22:50:11'),('ygrh1ij9n3reh9hhhoukgc9nnepjucie','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-23 16:14:51'),('yiqa6g376fso29u1n78t65et9tgzgxrm','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-21 02:11:52'),('yiqjfrrsleywehg07ib2cza3vmoly9i0','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-17 22:15:11'),('yk1auqzqn9vzqvowfuh60ossd3oy87sl','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-29 07:30:45'),('ykwxxrqv5wjznpbxfyu9ejvi4c3kxkbd','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-30 08:46:10'),('yml7dgb7rais5cn79oyq7ofs18xay3kn','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-10-29 01:38:00'),('yus2oztmgcdk52oawvud64umbrlbdv54','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-17 16:14:39'),('yww8htdeiel60oyvjz2oysn9965ccwnc','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-10-30 01:39:03'),('ywz6l75ephfyn3c6l0inopgs5li2cry8','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-12 17:32:44'),('yz7qdtn4cgnb576k911oshnwe9ha6x14','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:38'),('z2rqplld79vz3ma3uo5ng89t6vxkv16y','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-04 09:51:15'),('z62ol9z6lg82iw7b1qc7ong6k6qh0pih','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:42'),('zbf4iqanfj2fk8w56ajiifmjkzmkpl5m','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-07 14:15:41'),('zbjufwwppwuxxcg6zaxhxwg9e4h46x44','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-13 07:09:38'),('zdmnzgpf0rqpn629z65berspz4nbltcq','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-12 08:50:31'),('zx3fo2y7kfqb2ln7cdax7asu72nar3sm','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-12 03:14:29');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'104.131.125.98','Doula Project');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donation_donation`
--

DROP TABLE IF EXISTS `donation_donation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `donation_donation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `charge_id` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donation_donation`
--

LOCK TABLES `donation_donation` WRITE;
/*!40000 ALTER TABLE `donation_donation` DISABLE KEYS */;
/*!40000 ALTER TABLE `donation_donation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doulaprofile_doulaprofile`
--

DROP TABLE IF EXISTS `doulaprofile_doulaprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doulaprofile_doulaprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `about_me` varchar(4000) NOT NULL,
  `education` varchar(4000) NOT NULL,
  `bio_pic` varchar(100) NOT NULL,
  `why_they_doula` varchar(4000) NOT NULL,
  `testimonials` varchar(4000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doulaprofile_doulaprofile`
--

LOCK TABLES `doulaprofile_doulaprofile` WRITE;
/*!40000 ALTER TABLE `doulaprofile_doulaprofile` DISABLE KEYS */;
INSERT INTO `doulaprofile_doulaprofile` VALUES (1,15,'Im a 10+yr experienced Doula','Certified Doula with Masters in Education','uploaded_files/1413334830_62_Screen Shot 2014-10-14 at 9.00.10 PM.png','because we care ... ','excellent '),(4,14,'I am Dona. A Doula certified from ABC','BS from UPenn','uploaded_files/1413334577_43_doula_img.jpeg','Every birth matters and every time a woman gives birth it changes her ever so slightly and she carries that with her into motherhood. I’m not talking about the act of becoming a mother, that changes your life in major ways, but rather I am referring to the act of laboring and birthing your child, this sets the stage for the beginning of that mother/baby relationship.','Really took excellent care of us '),(5,18,'I am a DONA Trained Doula having helped 10 couples deliver their babies ','DONA Trained Doula with a Bachelors in Health Sciences','uploaded_files/1413334409_89_doula_profile.jpeg','I strongly believe that women should have someone for emotional support during labor ....','\"Superb: very helpful\"');
/*!40000 ALTER TABLE `doulaprofile_doulaprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_thumbnails_source`
--

DROP TABLE IF EXISTS `easy_thumbnails_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easy_thumbnails_source` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `modified` datetime NOT NULL,
  `storage_hash` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `easy_thumbnails_source_name_7549c98cc6dd6969_uniq` (`name`,`storage_hash`),
  KEY `easy_thumbnails_source_4da47e07` (`name`),
  KEY `easy_thumbnails_source_3f0464e5` (`storage_hash`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_thumbnails_source`
--

LOCK TABLES `easy_thumbnails_source` WRITE;
/*!40000 ALTER TABLE `easy_thumbnails_source` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_thumbnails_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_thumbnails_thumbnail`
--

DROP TABLE IF EXISTS `easy_thumbnails_thumbnail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easy_thumbnails_thumbnail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `modified` datetime NOT NULL,
  `source_id` int(11) NOT NULL,
  `storage_hash` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `easy_thumbnails_thumbnail_source_id_1f50d53db8191480_uniq` (`source_id`,`name`,`storage_hash`),
  KEY `easy_thumbnails_thumbnail_a34b03a6` (`source_id`),
  KEY `easy_thumbnails_thumbnail_4da47e07` (`name`),
  KEY `easy_thumbnails_thumbnail_3f0464e5` (`storage_hash`),
  CONSTRAINT `source_id_refs_id_0df57a91` FOREIGN KEY (`source_id`) REFERENCES `easy_thumbnails_source` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_thumbnails_thumbnail`
--

LOCK TABLES `easy_thumbnails_thumbnail` WRITE;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnail` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_thumbnails_thumbnaildimensions`
--

DROP TABLE IF EXISTS `easy_thumbnails_thumbnaildimensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easy_thumbnails_thumbnaildimensions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thumbnail_id` int(11) NOT NULL,
  `width` int(10) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `thumbnail_id` (`thumbnail_id`),
  CONSTRAINT `thumbnail_id_refs_id_ef901436` FOREIGN KEY (`thumbnail_id`) REFERENCES `easy_thumbnails_thumbnail` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_thumbnails_thumbnaildimensions`
--

LOCK TABLES `easy_thumbnails_thumbnaildimensions` WRITE;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnaildimensions` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnaildimensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guardian_groupobjectpermission`
--

DROP TABLE IF EXISTS `guardian_groupobjectpermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guardian_groupobjectpermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `object_pk` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `guardian_groupobjectpermission_object_pk_1496f467edd78b17_uniq` (`object_pk`,`group_id`,`content_type_id`,`permission_id`),
  KEY `guardian_groupobjectpermission_83d7f98b` (`permission_id`),
  KEY `guardian_groupobjectpermission_37ef4eb4` (`content_type_id`),
  KEY `guardian_groupobjectpermission_5f412f9a` (`group_id`),
  CONSTRAINT `content_type_id_refs_id_ca873eba` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `group_id_refs_id_d890d4d6` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `permission_id_refs_id_ab04ab90` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guardian_groupobjectpermission`
--

LOCK TABLES `guardian_groupobjectpermission` WRITE;
/*!40000 ALTER TABLE `guardian_groupobjectpermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `guardian_groupobjectpermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guardian_userobjectpermission`
--

DROP TABLE IF EXISTS `guardian_userobjectpermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guardian_userobjectpermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `object_pk` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `guardian_userobjectpermission_object_pk_4a3e38372084f8ff_uniq` (`object_pk`,`user_id`,`content_type_id`,`permission_id`),
  KEY `guardian_userobjectpermission_83d7f98b` (`permission_id`),
  KEY `guardian_userobjectpermission_37ef4eb4` (`content_type_id`),
  KEY `guardian_userobjectpermission_6340c63c` (`user_id`),
  CONSTRAINT `content_type_id_refs_id_ccf6cb3f` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `permission_id_refs_id_720a4b21` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `user_id_refs_id_29f71157` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guardian_userobjectpermission`
--

LOCK TABLES `guardian_userobjectpermission` WRITE;
/*!40000 ALTER TABLE `guardian_userobjectpermission` DISABLE KEYS */;
INSERT INTO `guardian_userobjectpermission` VALUES (54,8,3,12,'12'),(55,9,3,12,'12'),(52,26,9,12,'12'),(53,27,9,12,'12'),(51,28,9,12,'12'),(59,8,3,13,'13'),(60,9,3,13,'13'),(57,26,9,13,'14'),(58,27,9,13,'14'),(56,28,9,13,'14'),(64,8,3,14,'14'),(65,9,3,14,'14'),(62,26,9,14,'15'),(63,27,9,14,'15'),(61,28,9,14,'15'),(69,8,3,15,'15'),(70,9,3,15,'15'),(67,26,9,15,'16'),(68,27,9,15,'16'),(66,28,9,15,'16'),(74,8,3,16,'16'),(75,9,3,16,'16'),(72,26,9,16,'17'),(73,27,9,16,'17'),(71,28,9,16,'17'),(79,8,3,17,'17'),(80,9,3,17,'17'),(77,26,9,17,'18'),(78,27,9,17,'18'),(76,28,9,17,'18'),(84,8,3,18,'18'),(85,9,3,18,'18'),(82,26,9,18,'19'),(83,27,9,18,'19'),(81,28,9,18,'19'),(89,8,3,19,'19'),(90,9,3,19,'19'),(87,26,9,19,'20'),(88,27,9,19,'20'),(86,28,9,19,'20');
/*!40000 ALTER TABLE `guardian_userobjectpermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles_profile`
--

DROP TABLE IF EXISTS `profiles_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mugshot` varchar(100) NOT NULL,
  `privacy` varchar(15) NOT NULL,
  `language` varchar(5) NOT NULL,
  `user_id` int(11) NOT NULL,
  `gender` smallint(5) unsigned DEFAULT NULL,
  `website` varchar(200) NOT NULL,
  `location` varchar(255) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `about_me` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `user_id_refs_id_c76c5dbe` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles_profile`
--

LOCK TABLES `profiles_profile` WRITE;
/*!40000 ALTER TABLE `profiles_profile` DISABLE KEYS */;
INSERT INTO `profiles_profile` VALUES (1,'','registered','en',1,2,'http://www.google.com/','new york city','1985-10-19','i am a top notch doula \r\nwith tons of experience \r\nand 20 babies delivered '),(12,'','registered','en',12,1,'','',NULL,''),(13,'','registered','en',-1,NULL,'','',NULL,''),(14,'','registered','en',13,NULL,'','',NULL,''),(15,'','registered','en',14,NULL,'','',NULL,''),(16,'','registered','en',15,NULL,'','',NULL,''),(17,'','registered','en',16,NULL,'','',NULL,''),(18,'','registered','en',17,1,'','','1985-10-19',''),(19,'','registered','en',18,NULL,'','',NULL,''),(20,'','registered','en',19,NULL,'','',NULL,'');
/*!40000 ALTER TABLE `profiles_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_comment`
--

DROP TABLE IF EXISTS `project_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `comments` varchar(4000) NOT NULL,
  `datecreated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `project_comment_37952554` (`project_id`),
  CONSTRAINT `project_id_refs_id_9b0f8cdd` FOREIGN KEY (`project_id`) REFERENCES `project_project` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_comment`
--

LOCK TABLES `project_comment` WRITE;
/*!40000 ALTER TABLE `project_comment` DISABLE KEYS */;
INSERT INTO `project_comment` VALUES (6,1,5,'This is great!','0000-00-00 00:00:00'),(9,1,6,'sfsdf','0000-00-00 00:00:00'),(10,1,6,'sdfsdfdsf ','0000-00-00 00:00:00'),(11,-1,10,'love the simplicity','0000-00-00 00:00:00'),(12,1,10,'sdfsdf','0000-00-00 00:00:00'),(13,1,10,'sdfsdf','0000-00-00 00:00:00'),(14,1,10,'sadsad','0000-00-00 00:00:00'),(16,-1,10,'fddggbh','0000-00-00 00:00:00'),(17,1,14,'kjhlkh hlh l','0000-00-00 00:00:00'),(19,-1,6,'asdasd','2014-10-12 16:02:29'),(20,1,17,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum','2014-10-12 16:33:54'),(21,1,17,'sfsdfsdf','2014-10-12 16:40:12'),(22,1,19,'cute little baby..','2014-10-15 01:56:48'),(23,-1,19,'wer','2014-10-15 07:55:40');
/*!40000 ALTER TABLE `project_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_pledgers`
--

DROP TABLE IF EXISTS `project_pledgers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_pledgers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `project_id` int(11) NOT NULL,
  `amount_pledged` int(11) NOT NULL,
  `comments` varchar(4000) NOT NULL,
  `datecreated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `project_pledgers_37952554` (`project_id`),
  CONSTRAINT `project_id_refs_id_30e7f548` FOREIGN KEY (`project_id`) REFERENCES `project_project` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_pledgers`
--

LOCK TABLES `project_pledgers` WRITE;
/*!40000 ALTER TABLE `project_pledgers` DISABLE KEYS */;
INSERT INTO `project_pledgers` VALUES (6,1,'','',5,3041,'This is a test.. ','0000-00-00 00:00:00'),(8,1,'','',6,5000,'sdfsdf ','0000-00-00 00:00:00'),(9,-1,'','',10,1000,'God bless your family.','0000-00-00 00:00:00'),(10,13,'','',11,25000,'Wow! Amazing!','0000-00-00 00:00:00'),(11,1,'','',10,566,'','0000-00-00 00:00:00'),(13,-1,'','',10,555,'this is my donation using mobile..','0000-00-00 00:00:00'),(16,-1,'Junry Anon','slimshock@gmail.com',6,544,'This is optional','2014-10-12 16:08:34'),(17,-1,'SK','sharib.khan@gmail.com',19,50,'best of luck ','2014-10-15 01:09:37'),(18,1,'','',19,40,'','2014-10-15 05:31:58'),(19,-1,'','',19,3434,'','2014-10-15 08:01:14'),(20,-1,'d','',19,70,'','2014-10-15 08:01:45');
/*!40000 ALTER TABLE `project_pledgers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_project`
--

DROP TABLE IF EXISTS `project_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(4000) NOT NULL,
  `our_story` varchar(4000) NOT NULL,
  `img_link` varchar(1000) NOT NULL,
  `why_want_doula` varchar(4000) NOT NULL,
  `our_doula` varchar(4000) NOT NULL,
  `funding_amount` int(11) NOT NULL,
  `misc` varchar(4000) NOT NULL,
  `link_fb` varchar(4000) NOT NULL,
  `link_tw` varchar(4000) NOT NULL,
  `link_inst` varchar(4000) NOT NULL,
  `days_req` int(11) NOT NULL,
  `is_review` tinyint(1) NOT NULL,
  `totalpledgers` int(11) NOT NULL,
  `totalpledgeamount` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `startdate` datetime NOT NULL,
  `expdate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_project`
--

LOCK TABLES `project_project` WRITE;
/*!40000 ALTER TABLE `project_project` DISABLE KEYS */;
INSERT INTO `project_project` VALUES (5,'slim Doula','This is slim\'s story..','uploaded_files/1412792800_31_webcam-toy-photo5.jpg','We want your help','Our first doula..',3000,'asdf sdf sdf ','','','',60,1,1,3041,12,'2014-10-10 08:12:32','2014-12-09 09:12:01'),(6,'My third Doula','sdf sd f','uploaded_files/1412794594_28_1_653871284l.jpg','We want your help','Our doula',50000,'sdfdsf','','','',60,1,2,5544,1,'2014-10-10 08:12:32','2014-12-09 09:12:01'),(9,'My 50 Doula','This is my story','uploaded_files/1412827829_57_3littleAngel2.jpg','We want your help','Our Doula.. ',5000,'Misc..','','','',60,0,0,0,1,'2014-10-10 08:12:32','2014-12-09 09:12:01'),(10,'Joefrey\'s Doula ','Sed eget neque tincidunt, volutpat libero vel, molestie dui. Maecenas dictum tincidunt felis, id luctus lacus porta in. Aliquam in finibus purus. Nullam tempus ipsum sit amet condimentum dapibus.','uploaded_files/1412828393_66_19259_103870702968405_8024596_n.jpg','This is the reason why we want doula','Sed eget neque tincidunt, volutpat libero vel, molestie dui. Maecenas dictum tincidunt felis, id luctus lacus porta in. Aliquam in finibus purus. Nullam tempus ipsum sit amet condimentum dapibus.',10000,'Hi Admin, please approve my doula.','','','',30,1,3,2121,13,'2014-10-10 08:12:32','2014-12-09 09:12:01'),(11,'Doula Me Joefrey','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae quibusdam facere vitae recusandae, non, nihil provident placeat! Quam, natus, similique.','uploaded_files/1412844113_22_img1_single.jpg','Lorem ipsum dolor sit amet.','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae quibusdam facere vitae recusandae, non, nihil provident placeat! Quam, natus, similique.',50000,'This is a test','','','',50,1,1,25000,13,'2014-10-10 08:12:32','2014-12-09 09:12:01'),(14,'This my doula using mobile','Mobilejjjxjdjdj','uploaded_files/1412949448_23_1_268712194l.jpg','This is a test','Our doula test...',9280,'hi admin','sdf','sdf','sdf',60,1,0,0,12,'2014-10-10 09:42:45','2014-12-09 10:08:26'),(16,'A sample Doula','sdfdf','uploaded_files/1413130340_27_1_653871284l.jpg','We Want it badly','sdfdsf',33434,'sdfdf','','','',60,0,0,0,1,'2014-10-12 16:12:20','2014-12-11 17:02:08'),(17,'Doula for our Second Baby','We are really excited about our second baby that is due next summer. We live in the city and are in our mid thirties. We met a long time back and it is amazing that we are now expecting our second child .... ','uploaded_files/1413131554_31_1_653871284l.jpg','Postpartum doulas provide help and support in the first weeks after becoming a mother. The same person often provides both birth doula and postpartum doula services. They may provide physical support, such as meal preparation and light household tidying, or fill in when a new mother needs a break.','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',6777,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum','na','na','na',60,1,0,0,1,'2014-10-12 16:32:34','2014-12-11 17:29:05'),(19,'We are looking for Doula Support','We are a couple in our mid-twenties and we are expecting our first baby in May 2015. We are very excited about this and are looking forward to having a doula. Help us raise funds to get one ','uploaded_files/1413334128_19_babyimages.jpg','We are a couple in our mid-twenties and we are expecting our first baby in May 2015. We are very excited about this and are looking forward to having a doula. Help us raise funds to get one ','Our Doula is a highly trained and experienced person ...',2000,'Hope you can approve this project','sd','','',60,1,3,3554,1,'2014-10-15 00:48:48','2014-12-13 14:01:22'),(20,'test','test','uploaded_files/1413903985_96_Screen Shot 2014-10-17 at 1.45.53 PM.png','test','test',500,'test','','','',60,0,0,0,19,'2014-10-21 15:06:25','2014-12-14 09:01:06');
/*!40000 ALTER TABLE `project_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_update`
--

DROP TABLE IF EXISTS `project_update`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_update` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `updates` varchar(4000) NOT NULL,
  `datecreated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `project_update_37952554` (`project_id`),
  CONSTRAINT `project_id_refs_id_52d413a8` FOREIGN KEY (`project_id`) REFERENCES `project_project` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_update`
--

LOCK TABLES `project_update` WRITE;
/*!40000 ALTER TABLE `project_update` DISABLE KEYS */;
INSERT INTO `project_update` VALUES (1,1,17,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum','2014-10-12 16:33:46'),(2,1,17,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum','2014-10-12 16:34:00'),(3,1,17,'sdfsf','2014-10-12 16:40:05');
/*!40000 ALTER TABLE `project_update` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `south_migrationhistory`
--

DROP TABLE IF EXISTS `south_migrationhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `south_migrationhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_name` varchar(255) NOT NULL,
  `migration` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `south_migrationhistory`
--

LOCK TABLES `south_migrationhistory` WRITE;
/*!40000 ALTER TABLE `south_migrationhistory` DISABLE KEYS */;
INSERT INTO `south_migrationhistory` VALUES (1,'userena','0001_initial','2014-10-07 17:25:24'),(2,'umessages','0001_initial','2014-10-07 17:25:24'),(3,'easy_thumbnails','0001_initial','2014-10-07 17:25:24'),(4,'easy_thumbnails','0002_filename_indexes','2014-10-07 17:25:24'),(5,'easy_thumbnails','0003_auto__add_storagenew','2014-10-07 17:25:24'),(6,'easy_thumbnails','0004_auto__add_field_source_storage_new__add_field_thumbnail_storage_new','2014-10-07 17:25:25'),(7,'easy_thumbnails','0005_storage_fks_null','2014-10-07 17:25:25'),(8,'easy_thumbnails','0006_copy_storage','2014-10-07 17:25:25'),(9,'easy_thumbnails','0007_storagenew_fks_not_null','2014-10-07 17:25:25'),(10,'easy_thumbnails','0008_auto__del_field_source_storage__del_field_thumbnail_storage','2014-10-07 17:25:25'),(11,'easy_thumbnails','0009_auto__del_storage','2014-10-07 17:25:25'),(12,'easy_thumbnails','0010_rename_storage','2014-10-07 17:25:25'),(13,'easy_thumbnails','0011_auto__add_field_source_storage_hash__add_field_thumbnail_storage_hash','2014-10-07 17:25:25'),(14,'easy_thumbnails','0012_build_storage_hashes','2014-10-07 17:25:25'),(15,'easy_thumbnails','0013_auto__del_storage__del_field_source_storage__del_field_thumbnail_stora','2014-10-07 17:25:25'),(16,'easy_thumbnails','0014_auto__add_unique_source_name_storage_hash__add_unique_thumbnail_name_s','2014-10-07 17:25:25'),(17,'easy_thumbnails','0015_auto__del_unique_thumbnail_name_storage_hash__add_unique_thumbnail_sou','2014-10-07 17:25:25'),(18,'easy_thumbnails','0016_auto__add_thumbnaildimensions','2014-10-07 17:25:25'),(19,'guardian','0001_initial','2014-10-07 17:25:25'),(20,'guardian','0002_auto__add_field_groupobjectpermission_object_pk__add_field_userobjectp','2014-10-07 17:25:25'),(21,'guardian','0003_update_objectpermission_object_pk','2014-10-07 17:25:25'),(22,'guardian','0004_auto__del_field_groupobjectpermission_object_id__del_unique_groupobjec','2014-10-07 17:25:25'),(23,'guardian','0005_auto__chg_field_groupobjectpermission_object_pk__chg_field_userobjectp','2014-10-07 17:25:25');
/*!40000 ALTER TABLE `south_migrationhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `umessages_message`
--

DROP TABLE IF EXISTS `umessages_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `umessages_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body` longtext NOT NULL,
  `sender_id` int(11) NOT NULL,
  `sent_at` datetime NOT NULL,
  `sender_deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `umessages_message_0a681a64` (`sender_id`),
  CONSTRAINT `sender_id_refs_id_a8899ce2` FOREIGN KEY (`sender_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `umessages_message`
--

LOCK TABLES `umessages_message` WRITE;
/*!40000 ALTER TABLE `umessages_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `umessages_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `umessages_messagecontact`
--

DROP TABLE IF EXISTS `umessages_messagecontact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `umessages_messagecontact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `um_from_user_id` int(11) NOT NULL,
  `um_to_user_id` int(11) NOT NULL,
  `latest_message_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `umessages_messagecontact_um_from_user_id_249d63c2a28ab196_uniq` (`um_from_user_id`,`um_to_user_id`),
  KEY `umessages_messagecontact_45cb2745` (`um_from_user_id`),
  KEY `umessages_messagecontact_59d67378` (`um_to_user_id`),
  KEY `umessages_messagecontact_3e10a07c` (`latest_message_id`),
  CONSTRAINT `latest_message_id_refs_id_3a21a5de` FOREIGN KEY (`latest_message_id`) REFERENCES `umessages_message` (`id`),
  CONSTRAINT `um_from_user_id_refs_id_63403b7d` FOREIGN KEY (`um_from_user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `um_to_user_id_refs_id_63403b7d` FOREIGN KEY (`um_to_user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `umessages_messagecontact`
--

LOCK TABLES `umessages_messagecontact` WRITE;
/*!40000 ALTER TABLE `umessages_messagecontact` DISABLE KEYS */;
/*!40000 ALTER TABLE `umessages_messagecontact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `umessages_messagerecipient`
--

DROP TABLE IF EXISTS `umessages_messagerecipient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `umessages_messagerecipient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  `read_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `umessages_messagerecipient_6340c63c` (`user_id`),
  KEY `umessages_messagerecipient_d4a47933` (`message_id`),
  CONSTRAINT `message_id_refs_id_6aab3a39` FOREIGN KEY (`message_id`) REFERENCES `umessages_message` (`id`),
  CONSTRAINT `user_id_refs_id_20fd8be1` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `umessages_messagerecipient`
--

LOCK TABLES `umessages_messagerecipient` WRITE;
/*!40000 ALTER TABLE `umessages_messagerecipient` DISABLE KEYS */;
/*!40000 ALTER TABLE `umessages_messagerecipient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userena_userenasignup`
--

DROP TABLE IF EXISTS `userena_userenasignup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userena_userenasignup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `last_active` datetime DEFAULT NULL,
  `activation_key` varchar(40) NOT NULL,
  `activation_notification_send` tinyint(1) NOT NULL,
  `email_unconfirmed` varchar(75) NOT NULL,
  `email_confirmation_key` varchar(40) NOT NULL,
  `email_confirmation_key_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `user_id_refs_id_e8e75d2d` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userena_userenasignup`
--

LOCK TABLES `userena_userenasignup` WRITE;
/*!40000 ALTER TABLE `userena_userenasignup` DISABLE KEYS */;
INSERT INTO `userena_userenasignup` VALUES (11,12,NULL,'ALREADY_ACTIVATED',0,'','',NULL),(12,13,NULL,'ALREADY_ACTIVATED',0,'','',NULL),(13,14,NULL,'ALREADY_ACTIVATED',0,'','',NULL),(14,15,NULL,'580ddbc3c90a7b3b18bd75972bf4ffa7c97f5405',0,'','',NULL),(15,16,NULL,'92a305cd6d492565106566d802b9cad92109dfb4',0,'','',NULL),(16,17,NULL,'ALREADY_ACTIVATED',0,'','',NULL),(17,18,NULL,'ALREADY_ACTIVATED',0,'','',NULL),(18,19,NULL,'ALREADY_ACTIVATED',0,'','',NULL);
/*!40000 ALTER TABLE `userena_userenasignup` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-17 10:37:34
