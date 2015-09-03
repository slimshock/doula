-- MySQL dump 10.13  Distrib 5.5.40, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: doulaap
-- ------------------------------------------------------
-- Server version	5.5.40-0ubuntu0.14.04.1

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
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add site',6,'add_site'),(17,'Can change site',6,'change_site'),(18,'Can delete site',6,'delete_site'),(19,'Can add log entry',7,'add_logentry'),(20,'Can change log entry',7,'change_logentry'),(21,'Can delete log entry',7,'delete_logentry'),(22,'Can add migration history',8,'add_migrationhistory'),(23,'Can change migration history',8,'change_migrationhistory'),(24,'Can delete migration history',8,'delete_migrationhistory'),(25,'Can add profile',9,'add_profile'),(26,'Can change profile',9,'change_profile'),(27,'Can delete profile',9,'delete_profile'),(28,'Can view profile',9,'view_profile'),(29,'Can add project',10,'add_project'),(30,'Can change project',10,'change_project'),(31,'Can delete project',10,'delete_project'),(32,'Can add pledgers',11,'add_pledgers'),(33,'Can change pledgers',11,'change_pledgers'),(34,'Can delete pledgers',11,'delete_pledgers'),(35,'Can add comment',12,'add_comment'),(36,'Can change comment',12,'change_comment'),(37,'Can delete comment',12,'delete_comment'),(38,'Can add donation',13,'add_donation'),(39,'Can change donation',13,'change_donation'),(40,'Can delete donation',13,'delete_donation'),(41,'Can add userena registration',14,'add_userenasignup'),(42,'Can change userena registration',14,'change_userenasignup'),(43,'Can delete userena registration',14,'delete_userenasignup'),(44,'Can add contact',15,'add_messagecontact'),(45,'Can change contact',15,'change_messagecontact'),(46,'Can delete contact',15,'delete_messagecontact'),(47,'Can add recipient',16,'add_messagerecipient'),(48,'Can change recipient',16,'change_messagerecipient'),(49,'Can delete recipient',16,'delete_messagerecipient'),(50,'Can add message',17,'add_message'),(51,'Can change message',17,'change_message'),(52,'Can delete message',17,'delete_message'),(53,'Can add user object permission',18,'add_userobjectpermission'),(54,'Can change user object permission',18,'change_userobjectpermission'),(55,'Can delete user object permission',18,'delete_userobjectpermission'),(56,'Can add group object permission',19,'add_groupobjectpermission'),(57,'Can change group object permission',19,'change_groupobjectpermission'),(58,'Can delete group object permission',19,'delete_groupobjectpermission'),(59,'Can add source',20,'add_source'),(60,'Can change source',20,'change_source'),(61,'Can delete source',20,'delete_source'),(62,'Can add thumbnail',21,'add_thumbnail'),(63,'Can change thumbnail',21,'change_thumbnail'),(64,'Can delete thumbnail',21,'delete_thumbnail'),(65,'Can add thumbnail dimensions',22,'add_thumbnaildimensions'),(66,'Can change thumbnail dimensions',22,'change_thumbnaildimensions'),(67,'Can delete thumbnail dimensions',22,'delete_thumbnaildimensions'),(68,'Can add update',23,'add_update'),(69,'Can change update',23,'change_update'),(70,'Can delete update',23,'delete_update'),(71,'Can add doulaprofile',24,'add_doulaprofile'),(72,'Can change doulaprofile',24,'change_doulaprofile'),(73,'Can delete doulaprofile',24,'delete_doulaprofile');
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
  `username` varchar(75) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (-1,'','2014-10-06 11:09:50',0,'AnonymousUser','','','',0,1,'2014-10-06 11:09:50'),(1,'pbkdf2_sha256$12000$6z0M2wsQUIvX$wlulMSDB0X6Urxk4hbZAk9TJDkixRmRTd34dDsiYHa0=','2014-12-26 14:17:55',1,'admin','Kakashi','Hataki','admin@admin.com',1,1,'2014-10-06 11:09:32'),(36,'pbkdf2_sha256$12000$EA3rx4gVsRhM$FNbaTDPLeo0GbD1pgPoBn1a9tqOw3nds+SRYRAPrlAU=','2014-10-15 12:13:15',0,'qwe','Junry','de Los Santos','junry_delossantos@yahoo.com',0,1,'2014-10-11 16:20:56'),(37,'pbkdf2_sha256$12000$z0riqwLFwZLN$B75XoGbZGmgwfUaGjY+1TLKnCz+gTyX9hne/SwT6Hs4=','2014-10-12 12:53:18',0,'as','','','as@as.com',0,1,'2014-10-12 12:42:24'),(38,'pbkdf2_sha256$12000$Wo1VYCQ3QNtn$yXGD46jIS+dvWzC6vmKJ9A5OV/N18dfr8o3vz49A+GM=','2014-10-12 12:42:51',0,'sdf','','','sdf@dsf.com',0,1,'2014-10-12 12:42:51'),(39,'pbkdf2_sha256$12000$OqLKZetbE8Ya$xYHh3T568cK9yhzczaOh2yecmP61rblL79V0B+lSzDI=','2014-10-12 12:43:10',0,'sdfsdfd','','','sdfdsf@sdsd.com',0,1,'2014-10-12 12:43:10'),(40,'pbkdf2_sha256$12000$HtcyrsZdm3ve$Cc/VY9aFK5WCgw+3AKGCe+dboVTpsKK8M/NoZM1NRks=','2014-10-12 15:28:12',0,'slimshock01','','','sdf@sdf.com',0,0,'2014-10-12 15:28:12'),(41,'pbkdf2_sha256$12000$LRzlj0ep8iUH$qzjj3hT+RPPBtpF402X5Xop0RAuZX4eZqWgw3QCWU2o=','2014-10-13 16:29:52',0,'dfd','','','sdf@sdfsdf.com',0,1,'2014-10-13 16:29:13'),(43,'pbkdf2_sha256$12000$BGvA2QYEgwtu$EYRiU8QtpkPXDbBG5EFA0p2SpIPm/xkMRbcdw7Ss7vM=','2014-10-13 17:03:08',0,'asdc','','','junrydelossantos@gmail.com',0,0,'2014-10-13 17:03:08'),(44,'pbkdf2_sha256$12000$81qvJNaDXOLP$dpWFZmMDHWIyuTGqYw31mUxoT/1/R4MgOtZhubcBET8=','2014-11-26 04:17:20',0,'dfgfg','','','dfg@dfg.com',0,0,'2014-11-26 04:17:20'),(46,'pbkdf2_sha256$12000$vkWawl8LnmOp$j8YVtY4LW1fqTbZ0yuhGBtuXIFkv0TO3LP428qoQ4cY=','2014-12-09 12:32:28',0,'d67a7','Naruto','Uzimaki','sdf1@d.com',0,1,'2014-12-09 12:31:18'),(47,'pbkdf2_sha256$12000$abHalkgTl3EE$DXERtWY+QoFwJS/83nQ+17ulHIkT6+74j215CJYRjX4=','2014-12-11 01:48:15',0,'fabd3','Bruto','Uzumaki','1@f.com',0,1,'2014-12-11 01:47:11');
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
  CONSTRAINT `group_id_refs_id_274b862c` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `user_id_refs_id_40c41112` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
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
  CONSTRAINT `permission_id_refs_id_35d9ac25` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `user_id_refs_id_4dc23c39` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
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
  CONSTRAINT `content_type_id_refs_id_93d2d1f8` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `user_id_refs_id_c0d12874` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2014-10-06 11:15:02',1,3,'2','qwe',3,''),(2,'2014-10-06 11:22:21',1,3,'3','asd',3,''),(3,'2014-10-06 11:22:21',1,3,'4','qwe',3,''),(4,'2014-10-06 11:34:47',1,3,'5','asd',3,''),(5,'2014-10-06 11:34:47',1,3,'7','dfg',3,''),(6,'2014-10-06 11:34:47',1,3,'8','vbn',3,''),(7,'2014-10-06 11:34:47',1,3,'6','zxc',3,''),(8,'2014-10-07 10:24:43',1,3,'11','cvb',3,''),(9,'2014-10-07 10:24:43',1,3,'14','cvcv',3,''),(10,'2014-10-07 10:24:43',1,3,'13','dfg',3,''),(11,'2014-10-07 10:24:43',1,3,'10','zx',3,''),(12,'2014-10-07 10:24:43',1,3,'9','zxc',3,''),(13,'2014-10-07 10:24:43',1,3,'12','zxcx',3,''),(14,'2014-10-07 10:24:43',1,3,'15','zxczxc',3,''),(15,'2014-10-07 10:48:14',1,3,'16','sdf',3,''),(16,'2014-10-07 10:48:15',1,3,'17','zxcx',3,''),(17,'2014-10-07 10:49:25',1,3,'18','123',3,''),(18,'2014-10-07 10:49:25',1,3,'19','123w',3,''),(19,'2014-10-07 10:51:32',1,3,'20','sdf',3,''),(20,'2014-10-07 11:18:49',1,3,'21','asd',3,''),(21,'2014-10-07 11:18:49',1,3,'23','ghjghjghj',3,''),(22,'2014-10-07 11:18:49',1,3,'22','sdffdf',3,''),(23,'2014-10-07 11:18:49',1,3,'24','sdfsdfsdf',3,''),(24,'2014-10-07 11:18:49',1,3,'25','wer',3,''),(25,'2014-10-07 11:22:45',1,6,'1','localhost:8000',2,'Changed domain and name.'),(26,'2014-10-07 12:39:19',1,6,'1','http://127.0.0.1',2,'Changed domain.'),(27,'2014-10-07 16:26:21',1,3,'28','fgh',3,''),(28,'2014-10-07 16:26:21',1,3,'26','sdf',3,''),(29,'2014-10-07 16:26:21',1,3,'27','sdfsdfdsf',3,''),(30,'2014-10-07 16:27:49',1,6,'1','127.0.0.1',2,'Changed domain.'),(31,'2014-10-08 08:50:49',1,3,'31','dff',3,''),(32,'2014-10-08 08:50:49',1,3,'30','slimshock',3,''),(33,'2014-10-08 08:50:56',1,3,'29','zxczxc',3,''),(34,'2014-10-08 08:51:24',1,6,'1','localhost:8000',2,'Changed domain.'),(35,'2014-10-08 15:44:19',1,3,'32','fgh',3,''),(36,'2014-10-08 15:44:19',1,3,'33','sdfsdfdsf',3,''),(37,'2014-10-08 15:44:19',1,3,'34','slimshock',3,''),(38,'2014-10-08 15:45:10',1,10,'4','Project object',3,''),(39,'2014-10-08 15:45:10',1,10,'3','Project object',3,''),(40,'2014-10-08 15:45:10',1,10,'2','Project object',3,''),(41,'2014-10-08 15:45:10',1,10,'1','Project object',3,''),(42,'2014-10-11 15:29:07',1,10,'29','Project object',3,''),(43,'2014-10-11 15:29:07',1,10,'28','Project object',3,''),(44,'2014-10-11 15:29:07',1,10,'27','Project object',3,''),(45,'2014-10-11 15:29:07',1,10,'26','Project object',3,''),(46,'2014-10-11 15:29:07',1,10,'25','Project object',3,''),(47,'2014-10-11 15:29:07',1,10,'24','Project object',3,''),(48,'2014-10-11 15:29:07',1,10,'23','Project object',3,''),(49,'2014-10-11 15:29:07',1,10,'22','Project object',3,''),(50,'2014-10-11 15:29:07',1,10,'21','Project object',3,''),(51,'2014-10-11 15:29:07',1,10,'20','Project object',3,''),(52,'2014-10-11 16:19:09',1,3,'35','slimshock',3,''),(53,'2014-10-12 12:43:44',1,3,'37','as',2,'Changed is_active.'),(54,'2014-10-12 12:43:52',1,3,'38','sdf',2,'Changed is_active.'),(55,'2014-10-12 12:43:58',1,3,'39','sdfsdfd',2,'Changed is_active.'),(56,'2014-10-13 16:29:42',1,3,'41','dfd',2,'Changed is_active.'),(57,'2014-10-13 17:00:55',1,6,'1','localhost:8000',2,'Changed name.'),(58,'2014-10-13 17:02:39',1,3,'42','dfg',3,''),(59,'2014-10-15 02:30:55',1,10,'36','Project object',2,'Changed link_fb, link_tw and link_inst.'),(60,'2014-10-15 02:31:23',1,10,'36','Project object',2,'No fields changed.'),(61,'2014-10-15 03:49:16',1,10,'9','Project object',2,'No fields changed.'),(62,'2014-10-15 03:51:45',1,10,'9','Project object',2,'Added comment \"Comment object\".'),(63,'2014-10-15 05:30:49',1,10,'9','Project object',2,'No fields changed.'),(64,'2014-10-15 05:31:18',1,10,'9','Project object',2,'Added pledgers \"Pledgers object\".'),(65,'2014-12-09 12:28:51',1,3,'45','d3dba',2,'Changed is_active.'),(66,'2014-12-09 12:30:35',1,3,'45','d3dba',3,''),(67,'2014-12-09 12:31:41',1,3,'46','d67a7',2,'Changed is_active.'),(68,'2014-12-11 01:46:51',1,3,'1','admin',2,'Changed first_name and last_name.'),(69,'2014-12-11 01:47:49',1,3,'47','fabd3',2,'Changed is_active.');
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
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'content type','contenttypes','contenttype'),(5,'session','sessions','session'),(6,'site','sites','site'),(7,'log entry','admin','logentry'),(8,'migration history','south','migrationhistory'),(9,'profile','profiles','profile'),(10,'project','project','project'),(11,'pledgers','project','pledgers'),(12,'comment','project','comment'),(13,'donation','donation','donation'),(14,'userena registration','userena','userenasignup'),(15,'contact','umessages','messagecontact'),(16,'recipient','umessages','messagerecipient'),(17,'message','umessages','message'),(18,'user object permission','guardian','userobjectpermission'),(19,'group object permission','guardian','groupobjectpermission'),(20,'source','easy_thumbnails','source'),(21,'thumbnail','easy_thumbnails','thumbnail'),(22,'thumbnail dimensions','easy_thumbnails','thumbnaildimensions'),(23,'update','project','update'),(24,'doulaprofile','doulaprofile','doulaprofile');
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
INSERT INTO `django_session` VALUES ('079lg93dnqecc35luebga3hx7zsp72ri','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-12-19 11:57:58'),('0gqxnfonbtfanli75h5kym3xz5nl1fel','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-10-21 11:56:54'),('1mtkw1rqhi0fle4r97g5d13gkbevtjki','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-12-23 03:18:17'),('3t7595sw42byip4lueexxdmr548wq2qg','ZGE2ODRjZWFiNmJkZGJiZGZmZTVjYjA0MmJmNWEwYzJkMDM5ZjcyMzp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiZGphbmdvX2xhbmd1YWdlIjoiZW4iLCJfYXV0aF91c2VyX2lkIjoxfQ==','2014-10-23 07:22:43'),('5z20d9x3a01hse1sljomvle8139x11df','MWRkZGE0MjI1NTcwYzI4NzBjN2M3YzNiY2M4NGRkMmRkMGU0MTVjZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MSwiZGphbmdvX2xhbmd1YWdlIjoiZW4ifQ==','2014-12-25 04:54:06'),('62nxss3fqcb8hd5dm92w3fx0hlyjbske','ZGE2ODRjZWFiNmJkZGJiZGZmZTVjYjA0MmJmNWEwYzJkMDM5ZjcyMzp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiZGphbmdvX2xhbmd1YWdlIjoiZW4iLCJfYXV0aF91c2VyX2lkIjoxfQ==','2014-10-27 17:07:52'),('6672sb7b7oal56ucu8a8g4jd3hq2556h','MDhkMTI0ZDZmMWE4MWQ1NTU3NDMwMWQxMDBkYWMzNDc0ZjQ0ODVmYjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiZGphbmdvX2xhbmd1YWdlIjoiZW4iLCJfYXV0aF91c2VyX2lkIjoxfQ==','2014-10-21 16:27:37'),('6bxcj584uebgqr3yfjk61sm32iei8o0c','ZGE2ODRjZWFiNmJkZGJiZGZmZTVjYjA0MmJmNWEwYzJkMDM5ZjcyMzp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiZGphbmdvX2xhbmd1YWdlIjoiZW4iLCJfYXV0aF91c2VyX2lkIjoxfQ==','2015-01-09 14:17:55'),('a1ip9saj3ip40jhfh5ctr8ama2hm077p','YjIxZjJlOTNkNDE3YWYzMGM0Y2U1ZWExODVkZmE0ZGQzNzIyNmY3Nzp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiZGphbmdvX2xhbmd1YWdlIjoiZW4iLCJfYXV0aF91c2VyX2lkIjozNn0=','2014-10-29 12:13:15'),('bz3fsxlghs0s3vwet6gm6ttt7r0fc7d9','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2015-01-19 22:34:46'),('d093n889uw3qre3lejxc6huko2fmuw88','ZGE2ODRjZWFiNmJkZGJiZGZmZTVjYjA0MmJmNWEwYzJkMDM5ZjcyMzp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiZGphbmdvX2xhbmd1YWdlIjoiZW4iLCJfYXV0aF91c2VyX2lkIjoxfQ==','2014-10-22 17:49:50'),('ehetfhoje62jh7pf6zy6bfzroq9q21ri','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-12-25 01:47:24'),('ffbngsthfwanve3n53ki42wig961r8se','ZGE2ODRjZWFiNmJkZGJiZGZmZTVjYjA0MmJmNWEwYzJkMDM5ZjcyMzp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiZGphbmdvX2xhbmd1YWdlIjoiZW4iLCJfYXV0aF91c2VyX2lkIjoxfQ==','2014-12-22 10:03:51'),('fm88xt1xe4lyi49rikx5fsevamk7m98p','ZGE2ODRjZWFiNmJkZGJiZGZmZTVjYjA0MmJmNWEwYzJkMDM5ZjcyMzp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiZGphbmdvX2xhbmd1YWdlIjoiZW4iLCJfYXV0aF91c2VyX2lkIjoxfQ==','2014-10-26 16:38:19'),('fnwwmyfylvt0p4rr90c1xhx89a5ar4ls','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-11-27 03:05:50'),('kru0lz5co55ydfh9mtr7jrzrrvr8rmte','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-12-11 01:02:20'),('oum5yx18g8qi20a1qxgb69cayguopczs','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-12-25 13:13:00'),('p1k5m8urfxeacjf8wifwyljjje7miuil','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-10-20 11:34:52'),('s7rdlsn3otsok2ao6z9abwllzrm4an1e','ZGE2ODRjZWFiNmJkZGJiZGZmZTVjYjA0MmJmNWEwYzJkMDM5ZjcyMzp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiZGphbmdvX2xhbmd1YWdlIjoiZW4iLCJfYXV0aF91c2VyX2lkIjoxfQ==','2014-10-28 11:29:03'),('vbsnqxwzv9zo1ay3w1ftgkx2je1hqrbo','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2015-01-20 16:59:04'),('wst64ainr8w0p4h8q354sju4n9lg186y','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-12-04 11:29:02'),('yl92jh3swz6l6sl4i5r4pb4q0ah9tncr','ZGE2ODRjZWFiNmJkZGJiZGZmZTVjYjA0MmJmNWEwYzJkMDM5ZjcyMzp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiZGphbmdvX2xhbmd1YWdlIjoiZW4iLCJfYXV0aF91c2VyX2lkIjoxfQ==','2014-10-29 08:33:39'),('ziysurlsnn3m9ujo6ugjci81zgh51dli','MzFlMTFkNDNhODJkOTQ5NjExMzRlZTlmMzJjMjUzZDc0ZTFlYzgyYzp7ImRqYW5nb19sYW5ndWFnZSI6ImVuIn0=','2014-12-04 11:21:46');
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
INSERT INTO `django_site` VALUES (1,'localhost:8000','Doula Project');
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doulaprofile_doulaprofile`
--

LOCK TABLES `doulaprofile_doulaprofile` WRITE;
/*!40000 ALTER TABLE `doulaprofile_doulaprofile` DISABLE KEYS */;
INSERT INTO `doulaprofile_doulaprofile` VALUES (7,1,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum','uploaded_files/1413115333_19_1_374225611l.jpg','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum'),(8,36,'qwe','qwe','uploaded_files/1413117949_96_1_486720966l.jpg','qwe','sd asda sd'),(13,37,'sdfsdf','sdf','uploaded_files/1413124073_63_1_646687632l.jpg','sdfdsf','sdf'),(14,46,'sdf','sdf','uploaded_files/1418128396_0_4.jpg','df','sdf');
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
  UNIQUE KEY `easy_thumbnails_source_name_39229697_uniq` (`name`,`storage_hash`),
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
  UNIQUE KEY `easy_thumbnails_thumbnail_source_id_47e6eb80_uniq` (`source_id`,`name`,`storage_hash`),
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
  UNIQUE KEY `guardian_groupobjectpermission_object_pk_122874e9_uniq` (`object_pk`,`group_id`,`content_type_id`,`permission_id`),
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
  UNIQUE KEY `guardian_userobjectpermission_object_pk_2084f8ff_uniq` (`object_pk`,`user_id`,`content_type_id`,`permission_id`),
  KEY `guardian_userobjectpermission_83d7f98b` (`permission_id`),
  KEY `guardian_userobjectpermission_37ef4eb4` (`content_type_id`),
  KEY `guardian_userobjectpermission_6340c63c` (`user_id`),
  CONSTRAINT `content_type_id_refs_id_ccf6cb3f` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `permission_id_refs_id_720a4b21` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `user_id_refs_id_29f71157` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=231 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guardian_userobjectpermission`
--

LOCK TABLES `guardian_userobjectpermission` WRITE;
/*!40000 ALTER TABLE `guardian_userobjectpermission` DISABLE KEYS */;
INSERT INTO `guardian_userobjectpermission` VALUES (174,8,3,36,'36'),(175,9,3,36,'36'),(172,26,9,36,'36'),(173,27,9,36,'36'),(171,28,9,36,'36'),(179,8,3,37,'37'),(180,9,3,37,'37'),(177,26,9,37,'37'),(178,27,9,37,'37'),(176,28,9,37,'37'),(184,8,3,38,'38'),(185,9,3,38,'38'),(182,26,9,38,'38'),(183,27,9,38,'38'),(181,28,9,38,'38'),(189,8,3,39,'39'),(190,9,3,39,'39'),(187,26,9,39,'39'),(188,27,9,39,'39'),(186,28,9,39,'39'),(194,8,3,40,'40'),(195,9,3,40,'40'),(192,26,9,40,'40'),(193,27,9,40,'40'),(191,28,9,40,'40'),(199,8,3,41,'41'),(200,9,3,41,'41'),(197,26,9,41,'41'),(198,27,9,41,'41'),(196,28,9,41,'41'),(209,8,3,43,'43'),(210,9,3,43,'43'),(207,26,9,43,'43'),(208,27,9,43,'43'),(206,28,9,43,'43'),(214,8,3,44,'44'),(215,9,3,44,'44'),(212,26,9,44,'44'),(213,27,9,44,'44'),(211,28,9,44,'44'),(224,8,3,46,'46'),(225,9,3,46,'46'),(222,26,9,46,'46'),(223,27,9,46,'46'),(221,28,9,46,'46'),(229,8,3,47,'47'),(230,9,3,47,'47'),(227,26,9,47,'47'),(228,27,9,47,'47'),(226,28,9,47,'47');
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles_profile`
--

LOCK TABLES `profiles_profile` WRITE;
/*!40000 ALTER TABLE `profiles_profile` DISABLE KEYS */;
INSERT INTO `profiles_profile` VALUES (1,'','registered','en',1,NULL,'http://www.google.com/','New York','1985-10-19','This is me'),(36,'','registered','en',36,1,'http://www.google.com/','New York','1985-10-19','This is me'),(37,'','registered','en',37,NULL,'','',NULL,''),(38,'','registered','en',38,NULL,'','',NULL,''),(39,'','registered','en',39,NULL,'','',NULL,''),(40,'','registered','en',40,NULL,'','',NULL,''),(41,'','registered','en',41,NULL,'','',NULL,''),(43,'','registered','en',43,NULL,'','',NULL,''),(44,'','registered','en',44,NULL,'','',NULL,''),(46,'','registered','en',46,1,'','',NULL,''),(47,'','registered','en',47,NULL,'','',NULL,'');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_comment`
--

LOCK TABLES `project_comment` WRITE;
/*!40000 ALTER TABLE `project_comment` DISABLE KEYS */;
INSERT INTO `project_comment` VALUES (1,-1,8,'sdfsdf','2014-10-10 07:45:30'),(2,-1,8,'sdfsdfdsf','2014-10-10 07:45:30'),(3,-1,8,'sdf sdf sd f','2014-10-10 07:45:30'),(4,-1,5,'sdfdsf','2014-10-10 07:45:30'),(5,1,8,'fdf','2014-10-10 07:45:30'),(6,1,8,'asdsr sd','2014-10-10 07:45:30'),(7,1,8,'asdasd asd sa d','2014-10-10 07:45:30'),(8,-1,8,'asdasd2','2014-10-10 07:45:30'),(9,-1,8,'asdasd2','2014-10-10 07:45:30'),(10,-1,8,'sdf sdf','2014-10-10 07:45:30'),(11,-1,8,'r vsd','2014-10-10 07:45:30'),(12,-1,8,'Scroll down','2014-10-10 07:45:30'),(13,-1,8,'utro','2014-10-10 07:45:30'),(14,-1,8,'sdf','2014-10-10 07:45:30'),(15,-1,8,'sdfsdf','2014-10-10 07:45:30'),(16,-1,8,'This is a test','2014-10-10 07:45:30'),(17,-1,7,'asdasd asd sa d','2014-10-10 07:45:30'),(18,-1,6,'sdf','2014-10-10 07:45:30'),(19,1,11,'sdfsdf\r\n','2014-10-11 14:17:53'),(20,1,8,'Comments..','2014-10-12 09:19:18'),(21,-1,7,'sdfsdfsdf','2014-10-12 15:29:10'),(22,-1,31,'sdf','2014-10-14 11:23:04'),(23,0,9,'sdfdf','2014-10-15 03:51:45'),(24,-1,8,'werwer','2014-10-15 07:55:33'),(25,-1,8,'dgdfg','2014-10-15 07:57:11'),(26,-1,6,'df','2014-10-15 07:58:11'),(27,-1,34,'sdf','2014-10-15 08:19:37'),(28,-1,42,'asdasd','2014-12-11 11:55:51'),(29,-1,42,'asdasd','2014-12-11 11:55:59'),(30,-1,42,'sdas dasd sad \r\n','2014-12-11 11:56:40'),(31,1,42,'sdfsd sdf','2014-12-11 12:56:10');
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_pledgers`
--

LOCK TABLES `project_pledgers` WRITE;
/*!40000 ALTER TABLE `project_pledgers` DISABLE KEYS */;
INSERT INTO `project_pledgers` VALUES (1,-1,'','',8,900,'sdfsdf','2014-10-10 07:45:30'),(2,-1,'','',8,2000,'This i sdsfs ','2014-10-10 07:45:30'),(3,-1,'','',8,12323,'','2014-10-10 07:45:30'),(4,-1,'','',8,5001,'sds dfsd fdsf sdfds','2014-10-10 07:45:30'),(5,1,'','',12,500,'','2014-10-11 14:41:02'),(6,-1,'sdf','df@sdf.com',7,3434,'sdfdsf','2014-10-12 03:30:00'),(7,1,'admin','admin@admin.com',7,600,'','2014-10-12 03:53:40'),(8,-1,'slimshock','slimsdf@sdfd.com',7,544,'','2014-10-12 15:28:56'),(9,-1,'','',34,543,'','2014-10-14 09:09:58'),(10,-1,'','',31,675,'sdfdsf','2014-10-14 11:23:56'),(11,-1,'df','zxc@szxc.com',31,600,'','2014-10-14 11:24:30'),(12,1,'','',9,40,'','2014-10-15 05:31:18'),(13,-1,'','',31,56,'','2014-10-15 07:45:35'),(14,-1,'','',31,55,'','2014-10-15 07:48:51'),(15,-1,'sample','',31,45,'','2014-10-15 07:49:07'),(16,-1,'','sdf@sdf.com',8,34,'','2014-10-15 07:54:24'),(17,-1,'','',8,232,'','2014-10-15 07:55:11'),(18,-1,'','',6,233,'','2014-10-15 08:07:38'),(19,-1,'sdf','asdf@sdf.com',31,500,'','2014-11-27 10:02:25'),(20,-1,'admin','asdf@sdf.com',31,500,'sdf','2014-11-27 10:22:27'),(21,-1,'sdf','asdf@sdf.com',31,500,'','2014-11-27 11:10:57'),(22,-1,'dfgfg','asdf@sdf.com',31,500,'','2014-11-28 01:22:50'),(23,-1,'sdf','asdf@sdf.com',31,500,'df','2014-11-28 02:38:57'),(24,-1,'sdf','asdf@sdf.com',31,400,'','2014-11-28 02:47:20'),(25,-1,'dfgfg','codsboydelossantos@yahoo.com',31,300,'','2014-11-28 02:49:12'),(26,-1,'','',31,400,'','2014-12-05 11:28:57'),(27,1,'admin','admin@admin.com',42,34,'','2014-12-08 11:04:39'),(28,-1,'','',42,33,'','2014-12-09 01:13:32'),(29,-1,'','',42,345,'','2014-12-09 01:15:50'),(30,-1,'','',42,22,'','2014-12-09 01:22:20'),(31,-1,'','',42,222,'','2014-12-09 01:23:42'),(32,-1,'','',42,333,'','2014-12-09 01:25:45'),(33,-1,'','',42,33,'','2014-12-09 01:31:28'),(34,-1,'','',42,33,'','2014-12-09 01:34:50'),(35,-1,'','',42,222,'','2014-12-09 01:35:49'),(36,-1,'','',42,222,'','2014-12-09 01:37:07'),(37,-1,'','',42,22,'','2014-12-11 11:59:41'),(38,1,'admin','admin@admin.com',42,223,'','2014-12-11 12:01:18'),(39,-1,'','',42,111,'','2014-12-11 12:05:11'),(40,-1,'sdasdas asd','',42,1231,'','2014-12-11 12:05:28'),(41,1,'Kakashi Hataki','admin@admin.com',42,564,'','2014-12-11 12:55:50'),(42,1,'Kakashi Hataki','admin@admin.com',42,232,'','2014-12-11 13:12:53'),(43,-1,'','',42,211,'','2014-12-11 13:13:24');
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_project`
--

LOCK TABLES `project_project` WRITE;
/*!40000 ALTER TABLE `project_project` DISABLE KEYS */;
INSERT INTO `project_project` VALUES (5,'sdfsdfdsf','sdfsdf','static/img_item.jpg','sdfsdf','sdfsdf',33434,'asdasd','','','',233,1,0,0,1,'2014-10-10 07:45:30','2014-11-09 09:11:05'),(6,'dfgdfg','dfgdfg','uploaded_files/1412786941_67_img_item.jpg','dfgdfg','dfgdfgdfg',54545,'sdfsdfsdf','','','',1,1,1,233,1,'2014-10-10 07:45:30','2014-11-09 09:11:05'),(7,'1232','23awqsda','uploaded_files/1412787308_73_img_item.jpg','sdfsdf','sdfsd',234,'sdfsdf','','','',1,1,3,4578,1,'2014-10-10 07:45:30','2014-11-09 09:11:05'),(8,'This is a sample Project','osdf ','uploaded_files/1412787865_54_webcam-toy-photo4.jpg','sd fsd f','sdf sdfds',3444,'sdfsdfsdf','sddfdf','','',1,1,6,20490,1,'2014-10-10 07:45:30','2014-11-09 09:11:05'),(9,'sdasdasd ','asd asd ','uploaded_files/1412789798_02_webcam-toy-photo6.jpg','sd sd asd','asdasd ',2323,'adasd ','asdasda','asd ','sad ',122,1,0,0,1,'2014-10-10 07:45:30','2014-11-09 09:11:05'),(10,'34343','3434','uploaded_files/1412790578_11_webcam-toy-photo5.jpg','3343','434',3434,'3434','','','',434,1,0,0,1,'2014-10-10 07:45:30','2014-11-09 09:11:05'),(11,'My 4th Doula','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.','uploaded_files/1412924249_44_webcam-toy-photo6.jpg','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',3433,'er','','','',60,1,0,0,1,'2014-10-10 07:45:30','2014-11-09 09:11:05'),(12,'My 4th Doula','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.','uploaded_files/1412924280_66_webcam-toy-photo6.jpg','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',500,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.','','','',60,0,1,500,1,'2014-10-10 07:45:30','2014-11-09 09:11:05'),(13,'asd','asd','uploaded_files/1412924304_3_webcam-toy-photo5.jpg','asd','asd',500,'asd','','','',60,0,0,0,1,'2014-10-10 07:45:30','2014-11-09 09:11:05'),(14,'df','df','uploaded_files/1412924351_14_webcam-toy-photo6.jpg','df','df',500,'sd','','','',60,0,0,0,1,'2014-10-10 07:45:30','2014-11-09 09:11:05'),(16,'5th Doula','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum','uploaded_files/1412924952_0_webcam-toy-photo2.jpg','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',3434,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum','','','',60,0,0,0,1,'2014-10-10 07:45:30','2014-11-09 09:11:05'),(19,'sdf','sdf','uploaded_files/1412927130_82_webcam-toy-photo6.jpg','sdfsdf','sdfdsf',3434,'sdf','','','',60,0,0,0,1,'2014-10-10 07:45:30','2014-11-09 09:11:05'),(30,'d','d','uploaded_files/1413080067_47_1_268712194l.jpg','d','d',3333,'d','d','','',60,0,0,0,1,'2014-10-12 02:14:27','2014-12-11 03:13:41'),(31,'sdf','d','uploaded_files/1413130262_34_1_386758863l.jpg','dsf','sdf',3344,'df','','','',60,1,13,5031,1,'2014-10-12 16:11:02','2014-12-11 17:03:31'),(32,'dfgfg','fg','uploaded_files/1413130446_45_1_490881260l.jpg','dfg','dfg',454545,'dfg','','','',60,0,0,0,1,'2014-10-12 16:14:06','2014-12-11 17:03:31'),(33,'dfd','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum','uploaded_files/1413131889_0_1_490881260l.jpg','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',3444,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum','','','',60,0,0,0,36,'2014-10-12 16:38:09','2014-12-11 17:28:05'),(34,'AS','AS','uploaded_files/1413215809_1_webcam-toy-photo6.jpg','ASD','ASD',223232,'asdasd','','','',60,1,1,543,36,'2014-10-13 15:56:49','2014-12-12 16:55:59'),(35,'New','New','uploaded_files/1413284047_0_SAM_0677.JPG','New','New',343434,'New','','','',60,0,0,0,1,'2014-10-14 10:54:07','2014-12-13 10:09:43'),(36,'Doula 1','Doula','uploaded_files/1413293505_74__n.jpg','Doula','Doula',20000,'Doula','s','s','s',60,0,0,0,1,'2014-10-14 13:31:45','2014-12-13 14:22:55'),(37,'w','w','uploaded_files/1413362005_72_1_994566094l.jpg','w','w',2222,'w','','','',60,0,0,0,36,'2014-10-15 08:33:25','2014-12-14 09:30:38'),(38,'d','d','uploaded_files/1413362053_92_1_422320529l.jpg','d','d',3333,'d','','','',60,0,0,0,1,'2014-10-15 08:34:13','2014-12-14 09:30:38'),(41,'sdc','aasd','uploaded_files/1418034740_85_2.jpg','asd','asd',23232,'','','','',60,0,0,0,1,'2014-12-08 10:32:20','2015-02-06 10:26:27'),(42,'sdf','sdf','uploaded_files/1418035695_21_4.jpg','sdf','sdf',3333,'','','','',60,1,17,4093,1,'2014-12-08 10:48:15','2015-02-06 10:26:27');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_update`
--

LOCK TABLES `project_update` WRITE;
/*!40000 ALTER TABLE `project_update` DISABLE KEYS */;
INSERT INTO `project_update` VALUES (1,1,8,'sfdsdf d','2014-10-10 12:21:11'),(2,1,8,'Hi Every one,\r\n\r\nour doula is are fine.. Please support more..','2014-10-10 12:21:53'),(6,1,30,'kh\r\n','2014-10-12 09:19:40'),(7,1,31,'sdfsdf','2014-10-12 16:11:21'),(8,1,42,'sdf','2014-12-11 12:56:04');
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
INSERT INTO `south_migrationhistory` VALUES (1,'userena','0001_initial','2014-10-06 11:09:42'),(2,'umessages','0001_initial','2014-10-06 11:09:45'),(3,'guardian','0001_initial','2014-10-06 11:09:48'),(4,'guardian','0002_auto__add_field_groupobjectpermission_object_pk__add_field_userobjectp','2014-10-06 11:09:48'),(5,'guardian','0003_update_objectpermission_object_pk','2014-10-06 11:09:49'),(6,'guardian','0004_auto__del_field_groupobjectpermission_object_id__del_unique_groupobjec','2014-10-06 11:09:50'),(7,'guardian','0005_auto__chg_field_groupobjectpermission_object_pk__chg_field_userobjectp','2014-10-06 11:09:50'),(8,'easy_thumbnails','0001_initial','2014-10-08 16:40:45'),(9,'easy_thumbnails','0002_filename_indexes','2014-10-08 16:40:46'),(10,'easy_thumbnails','0003_auto__add_storagenew','2014-10-08 16:40:46'),(11,'easy_thumbnails','0004_auto__add_field_source_storage_new__add_field_thumbnail_storage_new','2014-10-08 16:40:48'),(12,'easy_thumbnails','0005_storage_fks_null','2014-10-08 16:40:49'),(13,'easy_thumbnails','0006_copy_storage','2014-10-08 16:40:49'),(14,'easy_thumbnails','0007_storagenew_fks_not_null','2014-10-08 16:40:50'),(15,'easy_thumbnails','0008_auto__del_field_source_storage__del_field_thumbnail_storage','2014-10-08 16:40:51'),(16,'easy_thumbnails','0009_auto__del_storage','2014-10-08 16:40:51'),(17,'easy_thumbnails','0010_rename_storage','2014-10-08 16:40:53'),(18,'easy_thumbnails','0011_auto__add_field_source_storage_hash__add_field_thumbnail_storage_hash','2014-10-08 16:40:55'),(19,'easy_thumbnails','0012_build_storage_hashes','2014-10-08 16:40:55'),(20,'easy_thumbnails','0013_auto__del_storage__del_field_source_storage__del_field_thumbnail_stora','2014-10-08 16:40:56'),(21,'easy_thumbnails','0014_auto__add_unique_source_name_storage_hash__add_unique_thumbnail_name_s','2014-10-08 16:40:57'),(22,'easy_thumbnails','0015_auto__del_unique_thumbnail_name_storage_hash__add_unique_thumbnail_sou','2014-10-08 16:40:57'),(23,'easy_thumbnails','0016_auto__add_thumbnaildimensions','2014-10-08 16:40:57');
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
  UNIQUE KEY `umessages_messagecontact_um_from_user_id_5d754e6a_uniq` (`um_from_user_id`,`um_to_user_id`),
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userena_userenasignup`
--

LOCK TABLES `userena_userenasignup` WRITE;
/*!40000 ALTER TABLE `userena_userenasignup` DISABLE KEYS */;
INSERT INTO `userena_userenasignup` VALUES (35,36,NULL,'ALREADY_ACTIVATED',0,'','',NULL),(36,37,NULL,'950efa4bb9d7c3ca8cc6c584a23e6015c2aa6c84',0,'','',NULL),(37,38,NULL,'191dee66efc7c24e821f8d0f2fabb8108a7e42ba',0,'','',NULL),(38,39,NULL,'c5ad008b6297652c8d69d1e12a94f004dde4b6b9',0,'','',NULL),(39,40,NULL,'5affbf68eb4d24acc5c8a3c21353341b9d038416',0,'','',NULL),(40,41,NULL,'ALREADY_ACTIVATED',0,'','',NULL),(42,43,NULL,'19502e0684542c927b2514ddbd0a8e5b2def5c95',0,'','',NULL),(43,44,NULL,'50e09a6c63ca680300c85c59c3d6f35d2a3ad967',0,'','',NULL),(45,46,NULL,'4f00ca33977d6cb29f02614f8924c7b35f5dfcb4',0,'','',NULL),(46,47,NULL,'482e3a4a710ceba8fa6d73b8a5c768283d0e81e2',0,'','',NULL);
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

-- Dump completed on 2015-01-07  9:59:37
