-- Magento DB backup
--
-- Host: localhost    Database: impro_autosound
-- ------------------------------------------------------
-- Server version: 5.7.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin_passwords`
--

DROP TABLE IF EXISTS `admin_passwords`;
CREATE TABLE `admin_passwords` (
  `password_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Password Id',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'User Id',
  `password_hash` varchar(100) DEFAULT NULL COMMENT 'Password Hash',
  `expires` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Expires',
  `last_updated` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Last Updated',
  PRIMARY KEY (`password_id`),
  KEY `ADMIN_PASSWORDS_USER_ID` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin Passwords';

--
-- Table structure for table `admin_system_messages`
--

DROP TABLE IF EXISTS `admin_system_messages`;
CREATE TABLE `admin_system_messages` (
  `identity` varchar(100) NOT NULL COMMENT 'Message id',
  `severity` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Problem type',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Create date',
  PRIMARY KEY (`identity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin System Messages';

--
-- Dumping data for table `admin_system_messages`
--

LOCK TABLES `admin_system_messages` WRITE;
/*!40000 ALTER TABLE `admin_system_messages` DISABLE KEYS */;
INSERT INTO `admin_system_messages` VALUES ('security',1,'2017-08-25 18:37:56');
/*!40000 ALTER TABLE `admin_system_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_user`
--

DROP TABLE IF EXISTS `admin_user`;
CREATE TABLE `admin_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'User ID',
  `firstname` varchar(32) DEFAULT NULL COMMENT 'User First Name',
  `lastname` varchar(32) DEFAULT NULL COMMENT 'User Last Name',
  `email` varchar(128) DEFAULT NULL COMMENT 'User Email',
  `username` varchar(40) DEFAULT NULL COMMENT 'User Login',
  `password` varchar(255) NOT NULL COMMENT 'User Password',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'User Created Time',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'User Modified Time',
  `logdate` timestamp NULL DEFAULT NULL COMMENT 'User Last Login Time',
  `lognum` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'User Login Number',
  `reload_acl_flag` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Reload ACL',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'User Is Active',
  `extra` text COMMENT 'User Extra Data',
  `rp_token` text COMMENT 'Reset Password Link Token',
  `rp_token_created_at` timestamp NULL DEFAULT NULL COMMENT 'Reset Password Link Token Creation Date',
  `interface_locale` varchar(16) NOT NULL DEFAULT 'en_US' COMMENT 'Backend interface locale',
  `failures_num` smallint(6) DEFAULT '0' COMMENT 'Failure Number',
  `first_failure` timestamp NULL DEFAULT NULL COMMENT 'First Failure',
  `lock_expires` timestamp NULL DEFAULT NULL COMMENT 'Expiration Lock Dates',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `ADMIN_USER_USERNAME` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Admin User Table';

--
-- Dumping data for table `admin_user`
--

LOCK TABLES `admin_user` WRITE;
/*!40000 ALTER TABLE `admin_user` DISABLE KEYS */;
INSERT INTO `admin_user` VALUES ('1','admin','admin','admin@admin.com','admin','00a9daae86eaf2b708a4b29c0337dfa9c839253cb4e8004e846b1435a3b010f1:hiKyIkj6uCJBHF58j4Jbogs7UPMyB1Qw:1','2017-07-22 09:18:49','2017-08-25 20:59:14','2017-08-25 20:59:14',48,0,1,'a:1:{s:11:\"configState\";a:43:{s:24:\"cataloginventory_options\";s:1:\"1\";s:29:\"cataloginventory_item_options\";s:1:\"1\";s:16:\"currency_options\";s:1:\"1\";s:21:\"currency_yahoofinance\";s:1:\"0\";s:16:\"currency_fixerio\";s:1:\"0\";s:20:\"currency_webservicex\";s:1:\"1\";s:15:\"currency_import\";s:1:\"1\";s:14:\"admin_security\";s:1:\"1\";s:12:\"admin_emails\";s:1:\"0\";s:13:\"admin_startup\";s:1:\"0\";s:9:\"admin_url\";s:1:\"0\";s:15:\"admin_dashboard\";s:1:\"0\";s:13:\"admin_captcha\";s:1:\"0\";s:14:\"general_locale\";s:1:\"1\";s:15:\"general_country\";s:1:\"1\";s:25:\"general_store_information\";s:1:\"1\";s:15:\"contact_contact\";s:1:\"1\";s:13:\"contact_email\";s:1:\"1\";s:20:\"catalog_fields_masks\";s:1:\"1\";s:14:\"catalog_review\";s:1:\"1\";s:16:\"catalog_frontend\";s:1:\"1\";s:20:\"catalog_productalert\";s:1:\"1\";s:25:\"catalog_productalert_cron\";s:1:\"1\";s:19:\"catalog_placeholder\";s:1:\"1\";s:25:\"catalog_recently_products\";s:1:\"1\";s:21:\"catalog_product_video\";s:1:\"1\";s:13:\"catalog_price\";s:1:\"1\";s:26:\"catalog_layered_navigation\";s:1:\"1\";s:14:\"catalog_search\";s:1:\"1\";s:11:\"catalog_seo\";s:1:\"1\";s:18:\"catalog_navigation\";s:1:\"1\";s:20:\"catalog_downloadable\";s:1:\"1\";s:22:\"catalog_custom_options\";s:1:\"1\";s:7:\"web_url\";s:1:\"1\";s:7:\"web_seo\";s:1:\"1\";s:12:\"web_unsecure\";s:1:\"1\";s:11:\"web_default\";s:1:\"1\";s:10:\"web_cookie\";s:1:\"1\";s:11:\"web_session\";s:1:\"1\";s:24:\"web_browser_capabilities\";s:1:\"1\";s:14:\"general_region\";s:1:\"1\";s:25:\"general_single_store_mode\";s:1:\"1\";s:10:\"web_secure\";s:1:\"1\";}}',NULL,NULL,'en_US',0,NULL,NULL);
/*!40000 ALTER TABLE `admin_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_user_session`
--

DROP TABLE IF EXISTS `admin_user_session`;
CREATE TABLE `admin_user_session` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `session_id` varchar(128) NOT NULL COMMENT 'Session id value',
  `user_id` int(10) unsigned DEFAULT NULL COMMENT 'Admin User ID',
  `status` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Current Session status',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created Time',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time',
  `ip` varchar(15) NOT NULL COMMENT 'Remote user IP',
  PRIMARY KEY (`id`),
  KEY `ADMIN_USER_SESSION_SESSION_ID` (`session_id`),
  KEY `ADMIN_USER_SESSION_USER_ID` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='Admin User sessions table';

--
-- Dumping data for table `admin_user_session`
--

LOCK TABLES `admin_user_session` WRITE;
/*!40000 ALTER TABLE `admin_user_session` DISABLE KEYS */;
INSERT INTO `admin_user_session` VALUES ('1','48gvkghrtjpkg4vhif1f2h5pu1','1',2,'2017-07-22 09:22:52','2017-07-24 21:10:21','127.0.0.1'),('2','lls75o6m0dc11h0q4u8up39oa3','1',2,'2017-07-22 12:28:34','2017-07-24 21:10:21','127.0.0.1'),('3','bhj6uvlq59gid03cldrk8esb04','1',2,'2017-07-22 17:17:44','2017-07-24 21:10:21','127.0.0.1'),('4','i7rppodcci4boa7chkf5jlmn34','1',2,'2017-07-24 21:10:21','2017-07-28 17:56:07','127.0.0.1'),('5','tnvmrovcbl0tnej31v5qhl0gs5','1',2,'2017-07-28 17:56:07','2017-08-02 08:17:06','127.0.0.1'),('6','25dt8f5n4312kjetbd5lvdc4r2','1',2,'2017-08-02 08:17:06','2017-08-02 11:03:19','127.0.0.1'),('7','3fca6p6o1pfdr4bk85g6e7n2i7','1',2,'2017-08-02 11:03:19','2017-08-03 09:50:37','127.0.0.1'),('8','61escovm0ppmdtsbhegpm7r912','1',2,'2017-08-03 09:50:37','2017-08-13 10:51:11','127.0.0.1'),('9','jnabgmh9euovvefml1douat132','1',2,'2017-08-13 10:51:11','2017-08-15 17:12:37','127.0.0.1'),('10','6el71aev7rlvmmbs10oe3873t5','1',2,'2017-08-15 17:12:37','2017-08-17 08:45:11','127.0.0.1'),('11','4qg6gb8i55i2on04fj9m9btt94','1',2,'2017-08-17 08:45:11','2017-08-17 09:12:41','127.0.0.1'),('12','qoj5acbqcvhd94agudjckhtbf3','1',2,'2017-08-17 09:12:41','2017-08-17 11:39:11','127.0.0.1'),('13','9a2om890gdu07omof1tn1ejt71','1',2,'2017-08-17 11:39:11','2017-08-18 10:55:53','127.0.0.1'),('14','vdd0ln311v6076feg11ig0a1h2','1',2,'2017-08-18 10:55:53','2017-08-18 12:57:12','127.0.0.1'),('15','fl0fhtg7sr12cdqm8ehtb8a473','1',2,'2017-08-18 12:57:12','2017-08-18 13:34:17','127.0.0.1'),('16','5kri8afr2bp422vobc81prgmo4','1',2,'2017-08-18 13:34:17','2017-08-18 13:38:34','127.0.0.1'),('17','0effj40lad0i329vs3vjp5tle4','1',2,'2017-08-18 13:38:34','2017-08-18 19:11:54','127.0.0.1'),('18','8243709i7a8okgkmntnk4a8mv2','1',2,'2017-08-18 19:11:54','2017-08-20 09:11:13','127.0.0.1'),('19','3emmgb4k4vvc1mtgdvelkfrhm1','1',2,'2017-08-20 09:11:13','2017-08-20 13:46:09','127.0.0.1'),('20','509tn4mvbiim2dt4nob8vuqqs7','1',2,'2017-08-20 13:46:09','2017-08-20 21:13:47','127.0.0.1'),('21','agp8ic7s288jbec1dnon4e5ld5','1',2,'2017-08-20 21:13:47','2017-08-20 21:43:38','127.0.0.1'),('22','ca3uktttlh40g7ejf9te1irc85','1',2,'2017-08-20 21:43:38','2017-08-20 21:45:01','127.0.0.1'),('23','22f2g35v68ohrd7gmf4ulr6ih3','1',2,'2017-08-20 21:45:01','2017-08-21 07:22:08','127.0.0.1'),('24','jh1v7ot6vdsoequlvjajsh2gr7','1',2,'2017-08-21 07:22:08','2017-08-21 07:42:56','127.0.0.1'),('25','t94qunkkk09c5c5udci1ukas73','1',2,'2017-08-21 07:42:56','2017-08-21 09:06:44','127.0.0.1'),('26','57nsbu4edt2g3btaldc93jkd10','1',2,'2017-08-21 09:06:44','2017-08-21 09:09:46','127.0.0.1'),('27','f2htrdsrdqsa9eo18ivi64ees1','1',2,'2017-08-21 09:09:46','2017-08-21 09:51:00','127.0.0.1'),('28','fmrtomi5jmrer8ds4n2h225m87','1',2,'2017-08-21 09:51:00','2017-08-21 10:40:22','127.0.0.1'),('29','jr71uhn5np3jiqqcoft1jfvf57','1',2,'2017-08-21 10:40:21','2017-08-21 12:36:12','127.0.0.1'),('30','ljn30dg4de1v0r2m4v0s4cv1a5','1',2,'2017-08-21 12:36:12','2017-08-21 12:40:36','127.0.0.1'),('31','69n3ves67gmnqtfkqnegbvogb5','1',2,'2017-08-21 12:40:36','2017-08-21 12:46:50','127.0.0.1'),('32','r101tt6asolr9pla4jrvjm4cn6','1',2,'2017-08-21 12:46:50','2017-08-21 18:55:17','127.0.0.1'),('33','h6nk7khtokr0ghvbqfh9f6tos4','1',2,'2017-08-21 18:55:17','2017-08-21 20:11:29','127.0.0.1'),('34','22mc3k1c1j9oia625dk3ksplv1','1',2,'2017-08-21 20:11:29','2017-08-21 20:15:02','127.0.0.1'),('35','2jrnrdt14n0dcf2ig2na85bhc1','1',2,'2017-08-21 20:15:02','2017-08-21 20:17:16','127.0.0.1'),('36','hv36drdgrnvob2dpktpv27jdh4','1',2,'2017-08-21 20:17:16','2017-08-21 20:21:28','127.0.0.1'),('37','dlsi3hokshcn861i13nl0iau03','1',2,'2017-08-21 20:21:28','2017-08-22 20:02:59','127.0.0.1'),('38','sh0nd2ghnt3c10ggkbma0agnt7','1',2,'2017-08-22 20:02:59','2017-08-22 20:05:46','127.0.0.1'),('39','2fvmd3nfrabv1qqoidvah2amb5','1',2,'2017-08-22 20:05:46','2017-08-22 20:27:40','127.0.0.1'),('40','47h892hk9kvj8umna76vu73243','1',2,'2017-08-22 20:27:40','2017-08-22 20:46:13','127.0.0.1'),('41','27j2ghan0l55krl6gu8ksq2jo2','1',2,'2017-08-22 20:46:13','2017-08-22 20:58:57','127.0.0.1'),('42','k5fkp52brn8p56ft6e85c3l193','1',2,'2017-08-22 20:58:57','2017-08-22 21:11:02','127.0.0.1'),('43','pctf4pjuvgsj60tqu6fso34p53','1',2,'2017-08-22 21:11:02','2017-08-22 21:24:11','127.0.0.1'),('44','2to7fjj57fjl2dmqi168kghbn6','1',2,'2017-08-22 21:24:11','2017-08-22 21:31:02','127.0.0.1'),('45','7jjri2kvvn098utvkufo1iaau2','1',2,'2017-08-22 21:31:02','2017-08-23 21:18:57','127.0.0.1'),('46','vm2tpk5b51t0ss2tn9kr37q466','1',2,'2017-08-23 21:18:57','2017-08-25 15:57:17','127.0.0.1'),('47','bcqe5lug8cr8ull1nnsjagspk0','1',2,'2017-08-25 15:57:17','2017-08-25 20:59:14','127.0.0.1'),('48','hp9uojn5g19kvltf1mb3ecp191','1',1,'2017-08-25 20:59:14','2017-08-25 22:08:09','127.0.0.1');
/*!40000 ALTER TABLE `admin_user_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adminnotification_inbox`
--

DROP TABLE IF EXISTS `adminnotification_inbox`;
CREATE TABLE `adminnotification_inbox` (
  `notification_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Notification id',
  `severity` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Problem type',
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Create date',
  `title` varchar(255) NOT NULL COMMENT 'Title',
  `description` text COMMENT 'Description',
  `url` varchar(255) DEFAULT NULL COMMENT 'Url',
  `is_read` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Flag if notification read',
  `is_remove` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Flag if notification might be removed',
  PRIMARY KEY (`notification_id`),
  KEY `ADMINNOTIFICATION_INBOX_SEVERITY` (`severity`),
  KEY `ADMINNOTIFICATION_INBOX_IS_READ` (`is_read`),
  KEY `ADMINNOTIFICATION_INBOX_IS_REMOVE` (`is_remove`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Adminnotification Inbox';

--
-- Dumping data for table `adminnotification_inbox`
--

LOCK TABLES `adminnotification_inbox` WRITE;
/*!40000 ALTER TABLE `adminnotification_inbox` DISABLE KEYS */;
INSERT INTO `adminnotification_inbox` VALUES ('1',4,'2017-07-27 21:13:00','Listing your products in marketplaces like Amazon? We want your feedback!','If you sell your products in any marketplace/s today and/or are considering it in the future, we invite you to take our short survey. Your feedback will help us to determine the overall interest and need for integration with marketplace and fulfillment services from companies like Amazon.\n\nThank you in advance.\n\nThe Magento Strategy team','https://www.surveymonkey.com/r/3F5MT75',0,0),('2',4,'2017-08-09 17:30:50','Upgrade to Magento Open Source 2.1.8 for Over 90 Enhancements – 8/8/2017','Magento Open Source (formerly Community Edition) 2.1.8 features over 90 improvements, including cache tuning for better performance, mass action performance optimizations, and faster deployments for multi-language sites. \n\nReview the release notes for more information: http://devdocs.magento.com/guides/v2.1/release-notes/bk-release-notes.html','http://devdocs.magento.com/guides/v2.1/release-notes/bk-release-notes.html',0,0),('3',4,'2017-08-17 19:13:43','Join the Magento BI Essentials Webinar: Make Data Easy ','Join our webinar on Tuesday, August 22nd and learn about why merchants like you are choosing Magento BI  Essentials to make it easier to harness the power of your data. \n\nBob Moore, Head of Magento BI, will be discussing the value of the reporting and dashboards that comes out-of-the-box with Essentials and the insights you can gain from them. \n\nRegister for free today. \n\nhttps://magento.com/resources/magento-bi-essentials-making-data-easy\n','https://magento.com/resources/magento-bi-essentials-making-data-easy',0,0),('4',4,'2017-08-18 14:41:03','Join the Magento BI Essentials Webinar: Make Data Easy ','Join our webinar on Tuesday, August 22nd and learn about why merchants like you are choosing Magento BI  Essentials to make it easier to harness the power of your data. \n\nBob Moore, Head of Magento BI, will be discussing the value of the reporting and dashboards that comes out-of-the-box with Essentials and the insights you can gain from them. \n\nRegister today. \n\nhttps://magento.com/resources/magento-bi-essentials-making-data-easy?lsdet=MBI-Webinar-RSS\n','https://magento.com/resources/magento-bi-essentials-making-data-easy?lsdet=MBI-Webinar-RSS',0,0),('5',4,'2017-08-21 20:17:28','Last Chance: Join the Magento BI Essentials Webinar: Make Data Easy ','Join our webinar on Tuesday, August 22nd and learn about why merchants like you are choosing Magento BI  Essentials to make it easier to harness the power of your data. \n\nBob Moore, Head of Magento BI, will be discussing the value of the reporting and dashboards that comes out-of-the-box with Essentials and the insights you can gain from them. \n\nRegister today. \n\nhttps://magento.com/resources/magento-bi-essentials-making-data-easy?lsdet=MBI-Webinar-RSS\n','https://magento.com/resources/magento-bi-essentials-making-data-easy?lsdet=MBI-Webinar-RSS',0,0);
/*!40000 ALTER TABLE `adminnotification_inbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authorization_role`
--

DROP TABLE IF EXISTS `authorization_role`;
CREATE TABLE `authorization_role` (
  `role_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Role ID',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent Role ID',
  `tree_level` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Role Tree Level',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Role Sort Order',
  `role_type` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Role Type',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'User ID',
  `user_type` varchar(16) DEFAULT NULL COMMENT 'User Type',
  `role_name` varchar(50) DEFAULT NULL COMMENT 'Role Name',
  PRIMARY KEY (`role_id`),
  KEY `AUTHORIZATION_ROLE_PARENT_ID_SORT_ORDER` (`parent_id`,`sort_order`),
  KEY `AUTHORIZATION_ROLE_TREE_LEVEL` (`tree_level`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Admin Role Table';

--
-- Dumping data for table `authorization_role`
--

LOCK TABLES `authorization_role` WRITE;
/*!40000 ALTER TABLE `authorization_role` DISABLE KEYS */;
INSERT INTO `authorization_role` VALUES ('1','0',1,1,'G','0','2','Administrators'),('2','1',2,0,'U','1','2','admin');
/*!40000 ALTER TABLE `authorization_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authorization_rule`
--

DROP TABLE IF EXISTS `authorization_rule`;
CREATE TABLE `authorization_rule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule ID',
  `role_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Role ID',
  `resource_id` varchar(255) DEFAULT NULL COMMENT 'Resource ID',
  `privileges` varchar(20) DEFAULT NULL COMMENT 'Privileges',
  `permission` varchar(10) DEFAULT NULL COMMENT 'Permission',
  PRIMARY KEY (`rule_id`),
  KEY `AUTHORIZATION_RULE_RESOURCE_ID_ROLE_ID` (`resource_id`,`role_id`),
  KEY `AUTHORIZATION_RULE_ROLE_ID_RESOURCE_ID` (`role_id`,`resource_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Admin Rule Table';

--
-- Dumping data for table `authorization_rule`
--

LOCK TABLES `authorization_rule` WRITE;
/*!40000 ALTER TABLE `authorization_rule` DISABLE KEYS */;
INSERT INTO `authorization_rule` VALUES ('1','1','Magento_Backend::all',NULL,'allow');
/*!40000 ALTER TABLE `authorization_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
CREATE TABLE `cache` (
  `id` varchar(200) NOT NULL COMMENT 'Cache Id',
  `data` mediumblob COMMENT 'Cache Data',
  `create_time` int(11) DEFAULT NULL COMMENT 'Cache Creation Time',
  `update_time` int(11) DEFAULT NULL COMMENT 'Time of Cache Updating',
  `expire_time` int(11) DEFAULT NULL COMMENT 'Cache Expiration Time',
  PRIMARY KEY (`id`),
  KEY `CACHE_EXPIRE_TIME` (`expire_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Caches';

--
-- Table structure for table `cache_tag`
--

DROP TABLE IF EXISTS `cache_tag`;
CREATE TABLE `cache_tag` (
  `tag` varchar(100) NOT NULL COMMENT 'Tag',
  `cache_id` varchar(200) NOT NULL COMMENT 'Cache Id',
  PRIMARY KEY (`tag`,`cache_id`),
  KEY `CACHE_TAG_CACHE_ID` (`cache_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag Caches';

--
-- Table structure for table `captcha_log`
--

DROP TABLE IF EXISTS `captcha_log`;
CREATE TABLE `captcha_log` (
  `type` varchar(32) NOT NULL COMMENT 'Type',
  `value` varchar(32) NOT NULL COMMENT 'Value',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Count',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time',
  PRIMARY KEY (`type`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Count Login Attempts';

--
-- Table structure for table `catalog_category_entity`
--

DROP TABLE IF EXISTS `catalog_category_entity`;
CREATE TABLE `catalog_category_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attriute Set ID',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent Category ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Creation Time',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time',
  `path` varchar(255) NOT NULL COMMENT 'Tree Path',
  `position` int(11) NOT NULL COMMENT 'Position',
  `level` int(11) NOT NULL DEFAULT '0' COMMENT 'Tree Level',
  `children_count` int(11) NOT NULL COMMENT 'Child Count',
  PRIMARY KEY (`entity_id`),
  KEY `CATALOG_CATEGORY_ENTITY_LEVEL` (`level`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='Catalog Category Table';

--
-- Dumping data for table `catalog_category_entity`
--

LOCK TABLES `catalog_category_entity` WRITE;
/*!40000 ALTER TABLE `catalog_category_entity` DISABLE KEYS */;
INSERT INTO `catalog_category_entity` VALUES ('1',3,'0','2017-07-22 09:18:45','2017-08-17 09:32:20','1','0','0','20'),('2',3,'1','2017-07-22 09:18:45','2017-08-17 09:32:20','1/2','1','1','19'),('3',3,'2','2017-07-22 09:56:35','2017-08-02 10:03:24','1/2/3','3','2','5'),('4',3,'2','2017-07-22 10:01:04','2017-07-22 10:05:02','1/2/4','1','2','0'),('5',3,'2','2017-07-22 10:01:42','2017-07-22 10:05:02','1/2/5','2','2','0'),('6',3,'2','2017-07-22 10:02:34','2017-08-02 10:03:24','1/2/6','4','2','0'),('7',3,'3','2017-07-22 10:06:17','2017-07-22 10:10:53','1/2/3/7','1','3','4'),('8',3,'7','2017-07-22 10:06:54','2017-07-22 10:10:53','1/2/3/7/8','1','4','3'),('9',3,'8','2017-07-22 10:07:29','2017-07-22 10:07:29','1/2/3/7/8/9','1','5','0'),('10',3,'8','2017-07-22 10:10:03','2017-07-22 10:10:03','1/2/3/7/8/10','2','5','0'),('11',3,'8','2017-07-22 10:10:53','2017-07-22 10:10:53','1/2/3/7/8/11','3','5','0'),('15',3,'2','2017-08-02 10:07:26','2017-08-02 10:07:26','1/2/15','5','2','0'),('16',3,'2','2017-08-02 10:07:58','2017-08-02 10:07:58','1/2/16','6','2','0'),('17',3,'2','2017-08-02 10:08:39','2017-08-02 10:08:39','1/2/17','7','2','0'),('18',3,'2','2017-08-02 10:09:51','2017-08-02 10:09:51','1/2/18','8','2','0'),('19',3,'2','2017-08-02 10:10:31','2017-08-02 10:10:31','1/2/19','9','2','0'),('20',3,'2','2017-08-02 10:11:00','2017-08-02 10:11:00','1/2/20','10','2','0'),('21',3,'2','2017-08-02 10:11:33','2017-08-02 10:11:33','1/2/21','11','2','0'),('22',3,'2','2017-08-02 10:12:00','2017-08-02 10:12:00','1/2/22','12','2','0'),('23',3,'2','2017-08-02 10:12:47','2017-08-02 10:12:47','1/2/23','13','2','0'),('24',3,'2','2017-08-02 10:13:07','2017-08-02 10:13:07','1/2/24','14','2','0');
/*!40000 ALTER TABLE `catalog_category_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_category_entity_datetime`
--

DROP TABLE IF EXISTS `catalog_category_entity_datetime`;
CREATE TABLE `catalog_category_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` datetime DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_CATEGORY_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_CATEGORY_ENTITY_DATETIME_ENTITY_ID` (`entity_id`),
  KEY `CATALOG_CATEGORY_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_CATEGORY_ENTITY_DATETIME_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Datetime Attribute Backend Table';

--
-- Table structure for table `catalog_category_entity_decimal`
--

DROP TABLE IF EXISTS `catalog_category_entity_decimal`;
CREATE TABLE `catalog_category_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` decimal(12,4) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_CATEGORY_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_CATEGORY_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `CATALOG_CATEGORY_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_CATEGORY_ENTITY_DECIMAL_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Decimal Attribute Backend Table';

--
-- Table structure for table `catalog_category_entity_int`
--

DROP TABLE IF EXISTS `catalog_category_entity_int`;
CREATE TABLE `catalog_category_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` int(11) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_CATEGORY_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_CATEGORY_ENTITY_INT_ENTITY_ID` (`entity_id`),
  KEY `CATALOG_CATEGORY_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_CATEGORY_ENTITY_INT_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=330 DEFAULT CHARSET=utf8 COMMENT='Catalog Category Integer Attribute Backend Table';

--
-- Dumping data for table `catalog_category_entity_int`
--

LOCK TABLES `catalog_category_entity_int` WRITE;
/*!40000 ALTER TABLE `catalog_category_entity_int` DISABLE KEYS */;
INSERT INTO `catalog_category_entity_int` VALUES ('1',69,0,'1','1'),('2',46,0,'2','1'),('3',69,0,'2','1'),('4',46,0,'3','1'),('5',54,0,'3','1'),('6',69,0,'3','1'),('7',70,0,'3','0'),('8',71,0,'3','0'),('9',46,2,'3','1'),('11',69,2,'3','1'),('12',70,2,'3','0'),('13',71,2,'3','0'),('14',46,0,'4','1'),('15',54,0,'4','1'),('16',69,0,'4','1'),('17',70,0,'4','0'),('18',71,0,'4','0'),('19',46,0,'5','1'),('20',54,0,'5','1'),('21',69,0,'5','1'),('22',70,0,'5','0'),('23',71,0,'5','0'),('24',46,0,'6','1'),('25',54,0,'6','1'),('26',69,0,'6','1'),('27',70,0,'6','0'),('28',71,0,'6','0'),('29',46,0,'7','1'),('30',54,0,'7','1'),('31',69,0,'7','1'),('32',70,0,'7','0'),('33',71,0,'7','0'),('34',46,0,'8','1'),('35',54,0,'8','1'),('36',69,0,'8','1'),('37',70,0,'8','0'),('38',71,0,'8','0'),('39',46,0,'9','1'),('40',54,0,'9','1'),('41',69,0,'9','1'),('42',70,0,'9','0'),('43',71,0,'9','0'),('44',46,0,'10','1'),('45',54,0,'10','1'),('46',69,0,'10','1'),('47',70,0,'10','0'),('48',71,0,'10','0'),('49',46,0,'11','1'),('50',54,0,'11','1'),('51',69,0,'11','1'),('52',70,0,'11','0'),('53',71,0,'11','0'),('69',46,0,'15','1'),('70',54,0,'15','1'),('71',69,0,'15','1'),('72',70,0,'15','0'),('73',71,0,'15','0'),('74',46,0,'16','1'),('75',54,0,'16','1'),('76',69,0,'16','1'),('77',70,0,'16','0'),('78',71,0,'16','0'),('79',46,0,'17','1'),('80',54,0,'17','1'),('81',69,0,'17','1'),('82',70,0,'17','0'),('83',71,0,'17','0'),('84',46,0,'18','1'),('85',54,0,'18','1'),('86',69,0,'18','1'),('87',70,0,'18','0'),('88',71,0,'18','0'),('89',46,0,'19','1'),('90',54,0,'19','1'),('91',69,0,'19','1'),('92',70,0,'19','0'),('93',71,0,'19','0'),('94',46,0,'20','1'),('95',54,0,'20','1'),('96',69,0,'20','1'),('97',70,0,'20','0'),('98',71,0,'20','0'),('99',46,0,'21','1'),('100',54,0,'21','1'),('101',69,0,'21','1'),('102',70,0,'21','0'),('103',71,0,'21','0'),('104',46,0,'22','1'),('105',54,0,'22','1'),('106',69,0,'22','1'),('107',70,0,'22','0'),('108',71,0,'22','0'),('109',46,0,'23','1'),('110',54,0,'23','1'),('111',69,0,'23','1'),('112',70,0,'23','0'),('113',71,0,'23','0'),('114',46,0,'24','1'),('115',54,0,'24','1'),('116',69,0,'24','1'),('117',70,0,'24','0'),('118',71,0,'24','0'),('119',46,2,'24','1'),('121',69,2,'24','1'),('122',70,2,'24','0'),('123',71,2,'24','0'),('124',46,2,'4','1'),('126',69,2,'4','1'),('127',70,2,'4','0'),('128',71,2,'4','0'),('129',46,2,'5','1'),('131',69,2,'5','1'),('132',70,2,'5','0'),('133',71,2,'5','0'),('134',46,2,'6','1'),('136',69,2,'6','1'),('137',70,2,'6','0'),('138',71,2,'6','0'),('139',46,2,'15','1'),('141',69,2,'15','1'),('142',70,2,'15','0'),('143',71,2,'15','0'),('144',46,2,'16','1'),('146',69,2,'16','1'),('147',70,2,'16','0'),('148',71,2,'16','0'),('149',46,2,'17','1'),('151',69,2,'17','1'),('152',70,2,'17','0'),('153',71,2,'17','0'),('154',46,2,'18','1'),('156',69,2,'18','1'),('157',70,2,'18','0'),('158',71,2,'18','0'),('159',46,2,'19','1'),('161',69,2,'19','1'),('162',70,2,'19','0'),('163',71,2,'19','0'),('166',46,2,'20','1'),('168',69,2,'20','1'),('169',70,2,'20','0'),('170',71,2,'20','0'),('171',46,2,'21','1'),('173',69,2,'21','1'),('174',70,2,'21','0'),('175',71,2,'21','0'),('176',46,2,'22','1'),('178',69,2,'22','1'),('179',70,2,'22','0'),('180',71,2,'22','0'),('181',46,2,'23','1'),('183',69,2,'23','1'),('184',70,2,'23','0'),('185',71,2,'23','0'),('186',46,2,'7','1'),('188',69,2,'7','1'),('189',70,2,'7','0'),('190',71,2,'7','0'),('191',46,2,'8','1'),('193',69,2,'8','1'),('194',70,2,'8','0'),('195',71,2,'8','0'),('243',46,3,'4','1'),('245',69,3,'4','1'),('246',70,3,'4','0'),('247',71,3,'4','0'),('249',46,3,'5','1'),('251',69,3,'5','1'),('252',70,3,'5','0'),('253',71,3,'5','0'),('260',46,3,'6','1'),('262',69,3,'6','1'),('263',70,3,'6','0'),('264',71,3,'6','0'),('265',46,3,'15','1'),('267',69,3,'15','1'),('268',70,3,'15','0'),('269',71,3,'15','0'),('270',46,3,'16','1'),('272',69,3,'16','1'),('273',70,3,'16','0'),('274',71,3,'16','0'),('275',46,3,'17','1'),('277',69,3,'17','1'),('278',70,3,'17','0'),('279',71,3,'17','0'),('280',46,3,'18','1'),('282',69,3,'18','1'),('283',70,3,'18','0'),('284',71,3,'18','0'),('285',46,3,'19','1'),('287',69,3,'19','1'),('288',70,3,'19','0'),('289',71,3,'19','0'),('290',46,3,'20','1'),('292',69,3,'20','1'),('293',70,3,'20','0'),('294',71,3,'20','0'),('295',46,3,'21','1'),('297',69,3,'21','1'),('298',70,3,'21','0'),('299',71,3,'21','0'),('300',46,3,'22','1'),('302',69,3,'22','1'),('303',70,3,'22','0'),('304',71,3,'22','0'),('305',46,3,'23','1'),('307',69,3,'23','1'),('308',70,3,'23','0'),('309',71,3,'23','0'),('310',46,3,'24','1'),('312',69,3,'24','1'),('313',70,3,'24','0'),('314',71,3,'24','0'),('315',46,3,'3','1'),('317',69,3,'3','1'),('318',70,3,'3','0'),('319',71,3,'3','0'),('320',46,3,'7','1'),('322',69,3,'7','1'),('323',70,3,'7','0'),('324',71,3,'7','0'),('325',46,3,'8','1'),('327',69,3,'8','1'),('328',70,3,'8','0'),('329',71,3,'8','0');
/*!40000 ALTER TABLE `catalog_category_entity_int` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_category_entity_text`
--

DROP TABLE IF EXISTS `catalog_category_entity_text`;
CREATE TABLE `catalog_category_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_CATEGORY_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_CATEGORY_ENTITY_TEXT_ENTITY_ID` (`entity_id`),
  KEY `CATALOG_CATEGORY_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_CATEGORY_ENTITY_TEXT_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Text Attribute Backend Table';

--
-- Table structure for table `catalog_category_entity_varchar`
--

DROP TABLE IF EXISTS `catalog_category_entity_varchar`;
CREATE TABLE `catalog_category_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_CATEGORY_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_CATEGORY_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`),
  KEY `CATALOG_CATEGORY_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_CATEGORY_ENTITY_VARCHAR_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=364 DEFAULT CHARSET=utf8 COMMENT='Catalog Category Varchar Attribute Backend Table';

--
-- Dumping data for table `catalog_category_entity_varchar`
--

LOCK TABLES `catalog_category_entity_varchar` WRITE;
/*!40000 ALTER TABLE `catalog_category_entity_varchar` DISABLE KEYS */;
INSERT INTO `catalog_category_entity_varchar` VALUES ('1',45,0,'1','Root Catalog'),('2',45,0,'2','Default Category'),('3',52,0,'2','PRODUCTS'),('4',45,0,'3','Parts and Consumables'),('5',52,0,'3','PRODUCTS'),('6',117,0,'3','parts-consumables'),('7',118,0,'3','parts-consumables'),('9',118,2,'3','parts-consumables'),('10',45,2,'3','Запчасти и расходники'),('11',52,2,'3','PRODUCTS'),('12',117,2,'3','parts-consumables'),('13',45,0,'4','Electronics'),('14',52,0,'4','PRODUCTS'),('15',117,0,'4','electronics'),('16',118,0,'4','electronics'),('17',45,0,'5','Sound and video'),('18',52,0,'5','PRODUCTS'),('19',117,0,'5','sound-and-video'),('20',118,0,'5','sound-and-video'),('21',45,0,'6','Lighting'),('22',52,0,'6','PRODUCTS'),('23',117,0,'6','lighting'),('24',118,0,'6','lighting'),('26',45,0,'7','Oil'),('27',52,0,'7','PRODUCTS'),('28',117,0,'7','oil'),('29',118,0,'7','parts-consumables/oil'),('30',45,0,'8','Motor Oil'),('31',52,0,'8','PRODUCTS'),('32',117,0,'8','engine-oil'),('33',118,0,'8','parts-consumables/oil/engine-oil'),('34',45,0,'9','Mobil'),('35',52,0,'9','PRODUCTS'),('36',117,0,'9','mobil'),('37',118,0,'9','parts-consumables/oil/engine-oil/mobil'),('40',45,0,'10','Castrol'),('41',52,0,'10','PRODUCTS'),('42',117,0,'10','castrol'),('43',118,0,'10','parts-consumables/oil/engine-oil/castrol'),('44',45,0,'11','Shell'),('45',52,0,'11','PRODUCTS'),('46',117,0,'11','shell'),('47',118,0,'11','parts-consumables/oil/engine-oil/shell'),('52',118,2,'7','parts-consumables/oil'),('53',118,2,'8','parts-consumables/oil/engine-oil'),('54',118,2,'9','parts-consumables/oil/engine-oil/mobil'),('55',118,2,'10','parts-consumables/oil/engine-oil/castrol'),('56',118,2,'11','parts-consumables/oil/engine-oil/shell'),('69',45,0,'15','Interior'),('70',52,0,'15','PRODUCTS'),('71',117,0,'15','interiors'),('72',118,0,'15','interiors'),('73',45,0,'16','Exterior'),('74',52,0,'16','PRODUCTS'),('75',117,0,'16','exteriors'),('76',118,0,'16','exteriors'),('77',45,0,'17','Wheels'),('78',52,0,'17','PRODUCTS'),('79',117,0,'17','wheels'),('80',118,0,'17','wheels'),('81',45,0,'18','Baggage and Fastening'),('82',52,0,'18','PRODUCTS'),('83',117,0,'18','baggage-and-fastening'),('84',118,0,'18','baggage-and-fastening'),('85',45,0,'19','Car chemical'),('86',52,0,'19','PRODUCTS'),('87',117,0,'19','car-chemical'),('88',118,0,'19','car-chemical'),('89',45,0,'20','Technical assistance'),('90',52,0,'20','PRODUCTS'),('91',117,0,'20','technical-assistance'),('92',118,0,'20','technical-assistance'),('93',45,0,'21','Tools'),('94',52,0,'21','PRODUCTS'),('95',117,0,'21','tools'),('96',118,0,'21','tools'),('97',45,0,'22','Tourism'),('98',52,0,'22','PRODUCTS'),('99',117,0,'22','tourism'),('100',118,0,'22','tourism'),('101',45,0,'23','4x4 Jeeping'),('102',52,0,'23','PRODUCTS'),('103',117,0,'23','4x4-jeeping'),('104',118,0,'23','4x4-jeeping'),('105',45,0,'24','Moto'),('106',52,0,'24','PRODUCTS'),('107',117,0,'24','moto'),('108',118,0,'24','moto'),('110',118,2,'24','moto'),('111',45,2,'24','Мото'),('112',52,2,'24','PRODUCTS'),('113',117,2,'24','moto'),('114',118,2,'4','electronics'),('115',45,2,'4','Электроника'),('116',52,2,'4','PRODUCTS'),('117',117,2,'4','electronics'),('118',118,2,'5','sound-and-video'),('119',45,2,'5','Звук и видео'),('120',52,2,'5','PRODUCTS'),('121',117,2,'5','sound-and-video'),('122',118,2,'6','lighting'),('123',45,2,'6','Свет (освещение)'),('124',52,2,'6','PRODUCTS'),('125',117,2,'6','lighting'),('126',118,2,'15','interiors'),('127',45,2,'15','Интерьер'),('128',52,2,'15','PRODUCTS'),('129',117,2,'15','interiors'),('130',118,2,'16','exteriors'),('131',45,2,'16','Экстерьер'),('132',52,2,'16','PRODUCTS'),('133',117,2,'16','exteriors'),('134',118,2,'17','wheels'),('135',45,2,'17','Колеса'),('136',52,2,'17','PRODUCTS'),('137',117,2,'17','wheels'),('138',118,2,'18','baggage-and-fastening'),('139',45,2,'18','Багаж и крепление'),('140',52,2,'18','PRODUCTS'),('141',117,2,'18','baggage-and-fastening'),('142',118,2,'19','car-chemical'),('143',45,2,'19','Автохимия'),('144',52,2,'19','PRODUCTS'),('145',117,2,'19','car-chemical'),('148',118,2,'20','technical-assistance'),('149',45,2,'20','Техпомощь'),('150',52,2,'20','PRODUCTS'),('151',117,2,'20','technical-assistance'),('152',118,2,'21','tools'),('153',45,2,'21','Инструмент'),('154',52,2,'21','PRODUCTS'),('155',117,2,'21','tools'),('156',118,2,'22','tourism'),('157',45,2,'22','Туризм'),('158',52,2,'22','PRODUCTS'),('159',117,2,'22','tourism'),('160',118,2,'23','4x4-jeeping'),('161',45,2,'23','4х4 джипинг'),('162',52,2,'23','PRODUCTS'),('163',117,2,'23','4x4-jeeping'),('169',45,2,'7','Масло'),('170',52,2,'7','PRODUCTS'),('171',117,2,'7','oil'),('176',45,2,'8','Моторное масло'),('177',52,2,'8','PRODUCTS'),('178',117,2,'8','engine-oil'),('276',118,3,'4','electronics'),('277',45,3,'4','Електроніка'),('278',52,3,'4','PRODUCTS'),('279',117,3,'4','electronics'),('281',118,3,'5','sound-and-video'),('282',45,3,'5','Звук і відео'),('283',52,3,'5','PRODUCTS'),('284',117,3,'5','sound-and-video'),('295',118,3,'6','lighting'),('296',45,3,'6','Освітлення'),('297',52,3,'6','PRODUCTS'),('298',117,3,'6','lighting'),('299',118,3,'15','interiors'),('300',45,3,'15','Інтер\'єр'),('301',52,3,'15','PRODUCTS'),('302',117,3,'15','interiors'),('303',118,3,'16','exteriors'),('304',45,3,'16','Екстер\'єр'),('305',52,3,'16','PRODUCTS'),('306',117,3,'16','exteriors'),('307',118,3,'17','wheels'),('308',45,3,'17','Колеса'),('309',52,3,'17','PRODUCTS'),('310',117,3,'17','wheels'),('311',118,3,'18','baggage-and-fastening'),('312',45,3,'18','Багаж та кріплення'),('313',52,3,'18','PRODUCTS'),('314',117,3,'18','baggage-and-fastening'),('315',118,3,'19','car-chemical'),('316',45,3,'19','Автохімія'),('317',52,3,'19','PRODUCTS'),('318',117,3,'19','car-chemical'),('319',118,3,'20','technical-assistance'),('320',45,3,'20','Техдопомога'),('321',52,3,'20','PRODUCTS'),('322',117,3,'20','technical-assistance'),('323',118,3,'21','tools'),('324',45,3,'21','Інструменти'),('325',52,3,'21','PRODUCTS'),('326',117,3,'21','tools'),('327',118,3,'22','tourism'),('328',45,3,'22','Туризм'),('329',52,3,'22','PRODUCTS'),('330',117,3,'22','tourism'),('331',118,3,'23','4x4-jeeping'),('332',45,3,'23','4x4 джипінг'),('333',52,3,'23','PRODUCTS'),('334',117,3,'23','4x4-jeeping'),('335',118,3,'24','moto'),('336',45,3,'24','Мото'),('337',52,3,'24','PRODUCTS'),('338',117,3,'24','moto'),('340',118,3,'3','parts-consumables'),('341',118,3,'7','parts-consumables/oil'),('342',118,3,'8','parts-consumables/oil/engine-oil'),('343',118,3,'9','parts-consumables/oil/engine-oil/mobil'),('344',118,3,'10','parts-consumables/oil/engine-oil/castrol'),('345',118,3,'11','parts-consumables/oil/engine-oil/shell'),('346',45,3,'3','Запчастини'),('347',52,3,'3','PRODUCTS'),('348',117,3,'3','parts-consumables'),('354',45,3,'7','Олива'),('355',52,3,'7','PRODUCTS'),('356',117,3,'7','oil'),('361',45,3,'8','Моторна Олива'),('362',52,3,'8','PRODUCTS'),('363',117,3,'8','engine-oil');
/*!40000 ALTER TABLE `catalog_category_entity_varchar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_category_product`
--

DROP TABLE IF EXISTS `catalog_category_product`;
CREATE TABLE `catalog_category_product` (
  `entity_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  PRIMARY KEY (`entity_id`,`category_id`,`product_id`),
  UNIQUE KEY `CATALOG_CATEGORY_PRODUCT_CATEGORY_ID_PRODUCT_ID` (`category_id`,`product_id`),
  KEY `CATALOG_CATEGORY_PRODUCT_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Category Linkage Table';

--
-- Dumping data for table `catalog_category_product`
--

LOCK TABLES `catalog_category_product` WRITE;
/*!40000 ALTER TABLE `catalog_category_product` DISABLE KEYS */;
INSERT INTO `catalog_category_product` VALUES ('37','9','1','0'),('38','9','2','0'),('39','9','3','0'),('40','9','4','0'),('41','9','5','0'),('42','9','6','0'),('43','9','7','0'),('44','9','8','0'),('45','9','9','0');
/*!40000 ALTER TABLE `catalog_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_category_product_index`
--

DROP TABLE IF EXISTS `catalog_category_product_index`;
CREATE TABLE `catalog_category_product_index` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) DEFAULT NULL COMMENT 'Position',
  `is_parent` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) unsigned NOT NULL COMMENT 'Visibility',
  PRIMARY KEY (`category_id`,`product_id`,`store_id`),
  KEY `CAT_CTGR_PRD_IDX_PRD_ID_STORE_ID_CTGR_ID_VISIBILITY` (`product_id`,`store_id`,`category_id`,`visibility`),
  KEY `CAT_CTGR_PRD_IDX_STORE_ID_CTGR_ID_VISIBILITY_IS_PARENT_POSITION` (`store_id`,`category_id`,`visibility`,`is_parent`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Index';

--
-- Dumping data for table `catalog_category_product_index`
--

LOCK TABLES `catalog_category_product_index` WRITE;
/*!40000 ALTER TABLE `catalog_category_product_index` DISABLE KEYS */;
INSERT INTO `catalog_category_product_index` VALUES ('2','1','0',1,1,4),('2','2','0',1,1,4),('2','3','0',1,1,4),('2','4','0',1,1,4),('2','5','0',1,1,4),('2','6','0',1,1,4),('2','7','0',1,1,4),('2','8','0',1,1,4),('2','9','0',1,1,4),('3','1','10000',0,1,4),('3','2','10000',0,1,4),('3','3','10000',0,1,4),('3','4','10000',0,1,4),('3','5','10000',0,1,4),('3','6','10000',0,1,4),('3','7','10000',0,1,4),('3','8','10000',0,1,4),('3','9','10000',0,1,4),('7','1','10000',0,1,4),('7','2','10000',0,1,4),('7','3','10000',0,1,4),('7','4','10000',0,1,4),('7','5','10000',0,1,4),('7','6','10000',0,1,4),('7','7','10000',0,1,4),('7','8','10000',0,1,4),('7','9','10000',0,1,4),('8','1','10000',0,1,4),('8','2','10000',0,1,4),('8','3','10000',0,1,4),('8','4','10000',0,1,4),('8','5','10000',0,1,4),('8','6','10000',0,1,4),('8','7','10000',0,1,4),('8','8','10000',0,1,4),('8','9','10000',0,1,4),('9','1','0',1,1,4),('9','2','0',1,1,4),('9','3','0',1,1,4),('9','4','0',1,1,4),('9','5','0',1,1,4),('9','6','0',1,1,4),('9','7','0',1,1,4),('9','8','0',1,1,4),('9','9','0',1,1,4),('2','1','0',1,2,4),('2','2','0',1,2,4),('2','3','0',1,2,4),('2','4','0',1,2,4),('2','5','0',1,2,4),('2','6','0',1,2,4),('2','7','0',1,2,4),('2','8','0',1,2,4),('2','9','0',1,2,4),('3','1','10000',0,2,4),('3','2','10000',0,2,4),('3','3','10000',0,2,4),('3','4','10000',0,2,4),('3','5','10000',0,2,4),('3','6','10000',0,2,4),('3','7','10000',0,2,4),('3','8','10000',0,2,4),('3','9','10000',0,2,4),('7','1','10000',0,2,4),('7','2','10000',0,2,4),('7','3','10000',0,2,4),('7','4','10000',0,2,4),('7','5','10000',0,2,4),('7','6','10000',0,2,4),('7','7','10000',0,2,4),('7','8','10000',0,2,4),('7','9','10000',0,2,4),('8','1','10000',0,2,4),('8','2','10000',0,2,4),('8','3','10000',0,2,4),('8','4','10000',0,2,4),('8','5','10000',0,2,4),('8','6','10000',0,2,4),('8','7','10000',0,2,4),('8','8','10000',0,2,4),('8','9','10000',0,2,4),('9','1','0',1,2,4),('9','2','0',1,2,4),('9','3','0',1,2,4),('9','4','0',1,2,4),('9','5','0',1,2,4),('9','6','0',1,2,4),('9','7','0',1,2,4),('9','8','0',1,2,4),('9','9','0',1,2,4),('2','1','0',1,3,4),('2','2','0',1,3,4),('2','3','0',1,3,4),('2','4','0',1,3,4),('2','5','0',1,3,4),('2','6','0',1,3,4),('2','7','0',1,3,4),('2','8','0',1,3,4),('2','9','0',1,3,4),('3','1','10000',0,3,4),('3','2','10000',0,3,4),('3','3','10000',0,3,4),('3','4','10000',0,3,4),('3','5','10000',0,3,4),('3','6','10000',0,3,4),('3','7','10000',0,3,4),('3','8','10000',0,3,4),('3','9','10000',0,3,4),('7','1','10000',0,3,4),('7','2','10000',0,3,4),('7','3','10000',0,3,4),('7','4','10000',0,3,4),('7','5','10000',0,3,4),('7','6','10000',0,3,4),('7','7','10000',0,3,4),('7','8','10000',0,3,4),('7','9','10000',0,3,4),('8','1','10000',0,3,4),('8','2','10000',0,3,4),('8','3','10000',0,3,4),('8','4','10000',0,3,4),('8','5','10000',0,3,4),('8','6','10000',0,3,4),('8','7','10000',0,3,4),('8','8','10000',0,3,4),('8','9','10000',0,3,4),('9','1','0',1,3,4),('9','2','0',1,3,4),('9','3','0',1,3,4),('9','4','0',1,3,4),('9','5','0',1,3,4),('9','6','0',1,3,4),('9','7','0',1,3,4),('9','8','0',1,3,4),('9','9','0',1,3,4);
/*!40000 ALTER TABLE `catalog_category_product_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_category_product_index_tmp`
--

DROP TABLE IF EXISTS `catalog_category_product_index_tmp`;
CREATE TABLE `catalog_category_product_index_tmp` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_parent` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) unsigned NOT NULL COMMENT 'Visibility',
  KEY `CAT_CTGR_PRD_IDX_TMP_PRD_ID_CTGR_ID_STORE_ID` (`product_id`,`category_id`,`store_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Indexer Temp Table';

--
-- Table structure for table `catalog_compare_item`
--

DROP TABLE IF EXISTS `catalog_compare_item`;
CREATE TABLE `catalog_compare_item` (
  `catalog_compare_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Compare Item ID',
  `visitor_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Visitor ID',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  PRIMARY KEY (`catalog_compare_item_id`),
  KEY `CATALOG_COMPARE_ITEM_PRODUCT_ID` (`product_id`),
  KEY `CATALOG_COMPARE_ITEM_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  KEY `CATALOG_COMPARE_ITEM_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  KEY `CATALOG_COMPARE_ITEM_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='Catalog Compare Table';

--
-- Dumping data for table `catalog_compare_item`
--

LOCK TABLES `catalog_compare_item` WRITE;
/*!40000 ALTER TABLE `catalog_compare_item` DISABLE KEYS */;
INSERT INTO `catalog_compare_item` VALUES ('2','186',NULL,'1',2),('7','217',NULL,'1',2),('8','223',NULL,'1',2),('9','319',NULL,'6',2),('10','415',NULL,'3',3),('11','0','1','1',2);
/*!40000 ALTER TABLE `catalog_compare_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_eav_attribute`
--

DROP TABLE IF EXISTS `catalog_eav_attribute`;
CREATE TABLE `catalog_eav_attribute` (
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `frontend_input_renderer` varchar(255) DEFAULT NULL COMMENT 'Frontend Input Renderer',
  `is_global` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Global',
  `is_visible` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Visible',
  `is_searchable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Searchable',
  `is_filterable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Filterable',
  `is_comparable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Comparable',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `is_html_allowed_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is HTML Allowed On Front',
  `is_used_for_price_rules` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used For Price Rules',
  `is_filterable_in_search` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Filterable In Search',
  `used_in_product_listing` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used In Product Listing',
  `used_for_sort_by` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used For Sorting',
  `apply_to` varchar(255) DEFAULT NULL COMMENT 'Apply To',
  `is_visible_in_advanced_search` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible In Advanced Search',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_wysiwyg_enabled` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is WYSIWYG Enabled',
  `is_used_for_promo_rules` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used For Promo Rules',
  `is_required_in_admin_store` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Required In Admin Store',
  `is_used_in_grid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used in Grid',
  `is_visible_in_grid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible in Grid',
  `is_filterable_in_grid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Filterable in Grid',
  `search_weight` float NOT NULL DEFAULT '1' COMMENT 'Search Weight',
  `additional_data` text COMMENT 'Additional swatch attributes data',
  PRIMARY KEY (`attribute_id`),
  KEY `CATALOG_EAV_ATTRIBUTE_USED_FOR_SORT_BY` (`used_for_sort_by`),
  KEY `CATALOG_EAV_ATTRIBUTE_USED_IN_PRODUCT_LISTING` (`used_in_product_listing`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog EAV Attribute Table';

--
-- Dumping data for table `catalog_eav_attribute`
--

LOCK TABLES `catalog_eav_attribute` WRITE;
/*!40000 ALTER TABLE `catalog_eav_attribute` DISABLE KEYS */;
INSERT INTO `catalog_eav_attribute` VALUES (45,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(46,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(47,NULL,0,1,0,0,0,0,1,0,0,0,0,NULL,0,'0',1,0,0,0,0,0,'1',NULL),(48,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(49,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(50,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(51,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(52,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(53,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(54,NULL,1,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(55,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(56,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(57,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(58,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(59,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(60,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(61,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(62,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(63,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(64,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(65,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(66,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(67,'Magento\\Catalog\\Block\\Adminhtml\\Category\\Helper\\Sortby\\Available',0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(68,'Magento\\Catalog\\Block\\Adminhtml\\Category\\Helper\\Sortby\\DefaultSortby',0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(69,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(70,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(71,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(72,'Magento\\Catalog\\Block\\Adminhtml\\Category\\Helper\\Pricestep',0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(73,NULL,0,1,1,0,0,0,0,0,0,1,1,NULL,1,'0',0,0,0,0,0,0,'5',NULL),(74,NULL,1,1,1,0,1,1,0,0,0,0,0,NULL,1,'0',0,0,0,0,0,0,'6',NULL),(75,NULL,0,1,1,0,1,0,1,0,0,0,0,NULL,1,'0',1,0,0,0,0,0,'1',NULL),(76,NULL,0,1,1,0,1,0,1,0,0,1,0,NULL,1,'0',1,0,0,1,0,0,'1',NULL),(77,NULL,1,1,1,1,0,0,0,0,0,1,1,'simple,virtual,bundle,downloadable,configurable',1,'0',0,0,0,0,0,0,'1',NULL),(78,NULL,1,1,0,0,0,0,0,0,0,1,0,'simple,virtual,bundle,downloadable,configurable',0,'0',0,0,0,1,0,1,'1',NULL),(79,NULL,2,1,0,0,0,0,0,0,0,1,0,'simple,virtual,bundle,downloadable,configurable',0,'0',0,0,0,1,0,0,'1',NULL),(80,NULL,2,1,0,0,0,0,0,0,0,1,0,'simple,virtual,bundle,downloadable,configurable',0,'0',0,0,0,1,0,0,'1',NULL),(81,NULL,1,1,0,0,0,0,0,0,0,0,0,'simple,virtual,downloadable',0,'0',0,0,0,1,0,1,'1',NULL),(82,'Magento\\Catalog\\Block\\Adminhtml\\Product\\Helper\\Form\\Weight',1,1,0,0,0,1,0,0,0,0,0,'simple,virtual,bundle,downloadable,configurable',0,'0',0,0,0,1,0,1,'1',NULL),(83,NULL,1,1,1,1,1,0,0,0,0,0,0,'simple',1,'0',0,0,0,1,0,1,'1',NULL),(84,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,1,0,1,'1',NULL),(85,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,1,0,1,'1',NULL),(86,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,1,0,1,'1',NULL),(87,NULL,0,1,0,0,0,0,0,0,0,1,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(88,NULL,0,1,0,0,0,0,0,0,0,1,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(89,NULL,0,1,0,0,0,0,0,0,0,1,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(90,NULL,1,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(91,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(92,NULL,2,1,0,0,0,0,0,0,0,0,0,'simple,virtual,bundle,downloadable,configurable',0,'0',0,0,0,0,0,0,'1',NULL),(93,NULL,1,1,1,1,1,0,0,0,0,0,0,'simple,virtual,configurable',1,'0',0,0,0,1,0,1,'1',NULL),(94,NULL,2,1,0,0,0,0,0,0,0,1,0,NULL,0,'0',0,0,0,1,0,0,'1',NULL),(95,NULL,2,1,0,0,0,0,0,0,0,1,0,NULL,0,'0',0,0,0,1,0,0,'1',NULL),(96,NULL,1,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(97,'Magento\\Framework\\Data\\Form\\Element\\Hidden',2,1,1,0,0,0,0,0,0,1,0,NULL,0,'0',0,0,1,0,0,0,'1',NULL),(98,NULL,1,0,0,0,0,0,0,0,0,0,0,'simple,virtual,bundle,downloadable,configurable',0,'0',0,0,0,0,0,0,'1',NULL),(99,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,1,0,0,0,'1',NULL),(100,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,1,0,1,'1',NULL),(101,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,1,0,0,'1',NULL),(102,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,1,0,0,'1',NULL),(103,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(104,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,1,0,0,'1',NULL),(105,'Magento\\Catalog\\Block\\Adminhtml\\Product\\Helper\\Form\\Category',1,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(106,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(107,NULL,1,0,0,0,0,0,0,0,0,1,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(108,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(109,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(110,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(111,NULL,0,0,0,0,0,0,0,0,0,1,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(112,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(113,NULL,1,0,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(114,NULL,2,1,0,0,0,0,0,0,0,0,0,'simple,bundle,grouped,configurable',0,'0',0,0,0,1,0,1,'1',NULL),(115,'Magento\\CatalogInventory\\Block\\Adminhtml\\Form\\Field\\Stock',1,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(116,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,1,0,0,'1',NULL),(117,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(118,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(119,NULL,0,1,0,0,0,0,0,0,0,1,0,NULL,0,'0',0,0,0,1,0,1,'1',NULL),(120,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(121,'Magento\\Msrp\\Block\\Adminhtml\\Product\\Helper\\Form\\Type',1,1,0,0,0,0,0,0,0,1,0,'simple,virtual,downloadable,bundle,configurable',0,'0',0,0,0,1,0,1,'1',NULL),(122,'Magento\\Msrp\\Block\\Adminhtml\\Product\\Helper\\Form\\Type\\Price',2,1,0,0,0,0,0,0,0,1,0,'simple,virtual,downloadable,bundle,configurable',0,'0',0,0,0,0,0,0,'1',NULL),(123,NULL,1,1,0,0,0,0,0,0,0,1,0,'bundle',0,'0',0,0,0,0,0,0,'1',NULL),(124,NULL,1,1,0,0,0,0,0,0,0,0,0,'bundle',0,'0',0,0,0,0,0,0,'1',NULL),(125,NULL,1,1,0,0,0,0,0,0,0,1,0,'bundle',0,'0',0,0,0,0,0,0,'1',NULL),(126,NULL,1,1,0,0,0,0,0,0,0,1,0,'bundle',0,'0',0,0,0,0,0,0,'1',NULL),(127,NULL,1,1,0,0,0,0,0,0,0,1,0,'bundle',0,'0',0,0,0,0,0,0,'1',NULL),(128,NULL,1,0,0,0,0,0,0,0,0,1,0,'downloadable',0,'0',0,0,0,0,0,0,'1',NULL),(129,NULL,0,0,0,0,0,0,0,0,0,0,0,'downloadable',0,'0',0,0,0,0,0,0,'1',NULL),(130,NULL,0,0,0,0,0,0,0,0,0,0,0,'downloadable',0,'0',0,0,0,0,0,0,'1',NULL),(131,NULL,1,0,0,0,0,0,0,0,0,1,0,'downloadable',0,'0',0,0,0,0,0,0,'1',NULL),(132,NULL,0,1,0,0,0,0,0,0,0,1,0,NULL,0,'0',0,0,0,0,0,0,'1',NULL),(133,NULL,2,1,1,0,0,0,0,0,0,1,0,'simple,virtual,bundle,downloadable,configurable',0,'0',0,0,0,1,0,1,'1',NULL),(134,'Magento\\GiftMessage\\Block\\Adminhtml\\Product\\Helper\\Form\\Config',1,1,0,0,0,0,0,0,0,0,0,NULL,0,'0',0,0,0,1,0,0,'1',NULL),(136,NULL,0,1,0,0,0,1,1,0,0,1,0,NULL,0,'0',0,0,0,1,1,1,'1',NULL),(137,NULL,0,1,0,0,0,1,1,0,0,1,0,NULL,0,'0',0,0,0,1,1,1,'1',NULL),(138,NULL,0,1,0,0,0,1,1,0,0,1,0,NULL,0,'0',0,0,0,1,1,1,'1',NULL),(139,NULL,0,1,0,0,0,1,1,0,0,1,0,NULL,0,'0',0,0,0,1,1,1,'1',NULL),(140,NULL,0,1,0,0,0,1,1,0,0,1,0,NULL,0,'0',0,0,0,1,1,1,'1',NULL),(141,NULL,0,1,0,0,0,1,1,0,0,1,0,NULL,0,'0',0,0,0,1,1,1,'1',NULL),(142,NULL,0,1,0,0,0,1,1,0,0,1,0,NULL,0,'0',0,0,0,1,1,1,'1',NULL);
/*!40000 ALTER TABLE `catalog_eav_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_bundle_option`
--

DROP TABLE IF EXISTS `catalog_product_bundle_option`;
CREATE TABLE `catalog_product_bundle_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `required` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Required',
  `position` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Position',
  `type` varchar(255) DEFAULT NULL COMMENT 'Type',
  PRIMARY KEY (`option_id`),
  KEY `CATALOG_PRODUCT_BUNDLE_OPTION_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Option';

--
-- Table structure for table `catalog_product_bundle_option_value`
--

DROP TABLE IF EXISTS `catalog_product_bundle_option_value`;
CREATE TABLE `catalog_product_bundle_option_value` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `option_id` int(10) unsigned NOT NULL COMMENT 'Option Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_PRODUCT_BUNDLE_OPTION_VALUE_OPTION_ID_STORE_ID` (`option_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Option Value';

--
-- Table structure for table `catalog_product_bundle_price_index`
--

DROP TABLE IF EXISTS `catalog_product_bundle_price_index`;
CREATE TABLE `catalog_product_bundle_price_index` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `min_price` decimal(12,4) NOT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) NOT NULL COMMENT 'Max Price',
  PRIMARY KEY (`entity_id`,`website_id`,`customer_group_id`),
  KEY `CATALOG_PRODUCT_BUNDLE_PRICE_INDEX_WEBSITE_ID` (`website_id`),
  KEY `CATALOG_PRODUCT_BUNDLE_PRICE_INDEX_CUSTOMER_GROUP_ID` (`customer_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Price Index';

--
-- Table structure for table `catalog_product_bundle_selection`
--

DROP TABLE IF EXISTS `catalog_product_bundle_selection`;
CREATE TABLE `catalog_product_bundle_selection` (
  `selection_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Selection Id',
  `option_id` int(10) unsigned NOT NULL COMMENT 'Option Id',
  `parent_product_id` int(10) unsigned NOT NULL COMMENT 'Parent Product Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `position` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_default` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Default',
  `selection_price_type` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Selection Price Type',
  `selection_price_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Selection Price Value',
  `selection_qty` decimal(12,4) DEFAULT NULL COMMENT 'Selection Qty',
  `selection_can_change_qty` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Selection Can Change Qty',
  PRIMARY KEY (`selection_id`),
  KEY `CATALOG_PRODUCT_BUNDLE_SELECTION_OPTION_ID` (`option_id`),
  KEY `CATALOG_PRODUCT_BUNDLE_SELECTION_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Selection';

--
-- Table structure for table `catalog_product_bundle_selection_price`
--

DROP TABLE IF EXISTS `catalog_product_bundle_selection_price`;
CREATE TABLE `catalog_product_bundle_selection_price` (
  `selection_id` int(10) unsigned NOT NULL COMMENT 'Selection Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `selection_price_type` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Selection Price Type',
  `selection_price_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Selection Price Value',
  PRIMARY KEY (`selection_id`,`website_id`),
  KEY `CATALOG_PRODUCT_BUNDLE_SELECTION_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Selection Price';

--
-- Table structure for table `catalog_product_bundle_stock_index`
--

DROP TABLE IF EXISTS `catalog_product_bundle_stock_index`;
CREATE TABLE `catalog_product_bundle_stock_index` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `stock_status` smallint(6) DEFAULT '0' COMMENT 'Stock Status',
  PRIMARY KEY (`entity_id`,`website_id`,`stock_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Stock Index';

--
-- Table structure for table `catalog_product_entity`
--

DROP TABLE IF EXISTS `catalog_product_entity`;
CREATE TABLE `catalog_product_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set ID',
  `type_id` varchar(32) NOT NULL DEFAULT 'simple' COMMENT 'Type ID',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `has_options` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Has Options',
  `required_options` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Required Options',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Creation Time',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time',
  PRIMARY KEY (`entity_id`),
  KEY `CATALOG_PRODUCT_ENTITY_ATTRIBUTE_SET_ID` (`attribute_set_id`),
  KEY `CATALOG_PRODUCT_ENTITY_SKU` (`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Table';

--
-- Dumping data for table `catalog_product_entity`
--

LOCK TABLES `catalog_product_entity` WRITE;
/*!40000 ALTER TABLE `catalog_product_entity` DISABLE KEYS */;
INSERT INTO `catalog_product_entity` VALUES ('1',9,'simple','39207',0,0,'2017-07-22 10:39:56','2017-07-22 10:41:22'),('2',9,'simple','39207-1',0,0,'2017-08-02 22:42:54','2017-08-02 22:42:54'),('3',9,'simple','39207-2',0,0,'2017-08-02 22:46:00','2017-08-02 22:47:47'),('4',9,'simple','39207-4',0,0,'2017-08-02 23:00:24','2017-08-02 23:01:42'),('5',9,'simple','39207-5',0,0,'2017-08-02 23:04:33','2017-08-02 23:04:33'),('6',9,'simple','39207-1-1',0,0,'2017-08-02 23:07:32','2017-08-02 23:07:32'),('7',9,'simple','39207-3',0,0,'2017-08-02 23:21:49','2017-08-02 23:21:49'),('8',9,'simple','39207-1-2',0,0,'2017-08-02 23:24:48','2017-08-02 23:24:48'),('9',9,'simple','39207-1-1-1',0,0,'2017-08-02 23:28:18','2017-08-02 23:28:18');
/*!40000 ALTER TABLE `catalog_product_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_entity_datetime`
--

DROP TABLE IF EXISTS `catalog_product_entity_datetime`;
CREATE TABLE `catalog_product_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` datetime DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_PRODUCT_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_PRODUCT_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_ENTITY_DATETIME_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Datetime Attribute Backend Table';

--
-- Dumping data for table `catalog_product_entity_datetime`
--

LOCK TABLES `catalog_product_entity_datetime` WRITE;
/*!40000 ALTER TABLE `catalog_product_entity_datetime` DISABLE KEYS */;
INSERT INTO `catalog_product_entity_datetime` VALUES ('1',79,0,'2','2017-08-02 00:00:00'),('2',94,0,'2','2017-08-02 00:00:00'),('3',101,0,'2','2017-08-02 00:00:00'),('5',94,0,'3','2017-08-02 00:00:00'),('6',101,0,'3','2017-08-02 00:00:00'),('8',101,2,'3','2017-08-02 00:00:00'),('9',101,3,'3','2017-08-02 00:00:00'),('10',79,2,'2','2017-08-02 00:00:00'),('11',94,2,'2','2017-08-02 00:00:00'),('12',101,2,'2','2017-08-02 00:00:00'),('13',79,3,'2','2017-08-02 00:00:00'),('14',94,3,'2','2017-08-02 00:00:00'),('15',101,3,'2','2017-08-02 00:00:00'),('16',94,0,'4','2017-08-02 00:00:00'),('17',101,0,'4','2017-08-02 00:00:00'),('18',101,2,'4','2017-08-02 00:00:00'),('19',101,3,'4','2017-08-02 00:00:00'),('30',79,0,'6','2017-08-02 00:00:00'),('31',94,0,'6','2017-08-02 00:00:00'),('32',101,0,'6','2017-08-02 00:00:00'),('33',79,2,'6','2017-08-02 00:00:00'),('34',79,3,'6','2017-08-02 00:00:00'),('35',94,2,'6','2017-08-02 00:00:00'),('36',94,3,'6','2017-08-02 00:00:00'),('37',101,2,'6','2017-08-02 00:00:00'),('38',101,3,'6','2017-08-02 00:00:00'),('55',79,0,'8','2017-08-02 00:00:00'),('56',94,0,'8','2017-08-02 00:00:00'),('57',101,0,'8','2017-08-02 00:00:00'),('58',79,2,'8','2017-08-02 00:00:00'),('59',79,3,'8','2017-08-02 00:00:00'),('60',94,2,'8','2017-08-02 00:00:00'),('61',94,3,'8','2017-08-02 00:00:00'),('62',101,2,'8','2017-08-02 00:00:00'),('63',101,3,'8','2017-08-02 00:00:00'),('71',79,0,'9','2017-08-02 00:00:00'),('72',94,0,'9','2017-08-02 00:00:00'),('73',101,0,'9','2017-08-02 00:00:00'),('74',79,2,'9','2017-08-02 00:00:00'),('75',79,3,'9','2017-08-02 00:00:00'),('76',94,2,'9','2017-08-02 00:00:00'),('77',94,3,'9','2017-08-02 00:00:00'),('78',101,2,'9','2017-08-02 00:00:00'),('79',101,3,'9','2017-08-02 00:00:00');
/*!40000 ALTER TABLE `catalog_product_entity_datetime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_entity_decimal`
--

DROP TABLE IF EXISTS `catalog_product_entity_decimal`;
CREATE TABLE `catalog_product_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` decimal(12,4) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_PRODUCT_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_PRODUCT_ENTITY_DECIMAL_STORE_ID` (`store_id`),
  KEY `CATALOG_PRODUCT_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Decimal Attribute Backend Table';

--
-- Dumping data for table `catalog_product_entity_decimal`
--

LOCK TABLES `catalog_product_entity_decimal` WRITE;
/*!40000 ALTER TABLE `catalog_product_entity_decimal` DISABLE KEYS */;
INSERT INTO `catalog_product_entity_decimal` VALUES ('1',77,0,'1','456.0000'),('5',77,0,'2','125.0000'),('7',78,0,'2','104.0000'),('8',77,0,'3','456.0000'),('21',77,0,'4','456.0000'),('28',77,0,'5','456.0000'),('38',77,0,'6','125.0000'),('39',78,0,'6','114.0000'),('50',77,0,'7','456.0000'),('64',77,0,'8','125.0000'),('65',78,0,'8','104.0000'),('75',77,0,'9','125.0000'),('76',78,0,'9','104.0000'),('82',82,0,'1','21.0000'),('83',82,0,'2','21.0000'),('110',82,0,'3','21.0000');
/*!40000 ALTER TABLE `catalog_product_entity_decimal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_entity_gallery`
--

DROP TABLE IF EXISTS `catalog_product_entity_gallery`;
CREATE TABLE `catalog_product_entity_gallery` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_PRODUCT_ENTITY_GALLERY_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_PRODUCT_ENTITY_GALLERY_ENTITY_ID` (`entity_id`),
  KEY `CATALOG_PRODUCT_ENTITY_GALLERY_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_ENTITY_GALLERY_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Gallery Attribute Backend Table';

--
-- Table structure for table `catalog_product_entity_int`
--

DROP TABLE IF EXISTS `catalog_product_entity_int`;
CREATE TABLE `catalog_product_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` int(11) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_PRODUCT_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_PRODUCT_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_ENTITY_INT_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Integer Attribute Backend Table';

--
-- Dumping data for table `catalog_product_entity_int`
--

LOCK TABLES `catalog_product_entity_int` WRITE;
/*!40000 ALTER TABLE `catalog_product_entity_int` DISABLE KEYS */;
INSERT INTO `catalog_product_entity_int` VALUES ('1',97,0,'1','1'),('2',99,0,'1','4'),('3',115,0,'1','1'),('4',133,0,'1','2'),('8',136,0,'1','7'),('9',97,0,'2','1'),('10',99,0,'2','4'),('11',115,0,'2','1'),('12',133,0,'2','2'),('13',136,0,'2','6'),('15',97,0,'3','1'),('16',99,0,'3','4'),('17',115,0,'3','1'),('18',133,0,'3','2'),('19',136,0,'3','6'),('28',97,0,'4','1'),('29',99,0,'4','4'),('30',115,0,'4','1'),('31',133,0,'4','2'),('32',136,0,'4','6'),('51',97,0,'5','1'),('52',99,0,'5','4'),('53',115,0,'5','1'),('54',133,0,'5','2'),('55',136,0,'5','7'),('74',97,0,'6','1'),('75',99,0,'6','4'),('76',115,0,'6','1'),('77',133,0,'6','2'),('78',136,0,'6','6'),('107',97,0,'7','1'),('108',99,0,'7','4'),('109',115,0,'7','1'),('110',133,0,'7','2'),('111',136,0,'7','7'),('140',97,0,'8','1'),('141',99,0,'8','4'),('142',115,0,'8','1'),('143',133,0,'8','2'),('144',136,0,'8','6'),('158',97,0,'9','1'),('159',99,0,'9','4'),('160',115,0,'9','1'),('161',133,0,'9','2'),('162',136,0,'9','6');
/*!40000 ALTER TABLE `catalog_product_entity_int` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_entity_media_gallery`
--

DROP TABLE IF EXISTS `catalog_product_entity_media_gallery`;
CREATE TABLE `catalog_product_entity_media_gallery` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  `media_type` varchar(32) NOT NULL DEFAULT 'image' COMMENT 'Media entry type',
  `disabled` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Visibility status',
  PRIMARY KEY (`value_id`),
  KEY `CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Media Gallery Attribute Backend Table';

--
-- Dumping data for table `catalog_product_entity_media_gallery`
--

LOCK TABLES `catalog_product_entity_media_gallery` WRITE;
/*!40000 ALTER TABLE `catalog_product_entity_media_gallery` DISABLE KEYS */;
INSERT INTO `catalog_product_entity_media_gallery` VALUES ('1',90,'/m/o/mobil-super-3000-x1-5w-40_1.jpg','image',0),('2',90,'/m/o/mobil-super-3000-x1-5w-40_1_copy.jpg','image',0),('3',90,'/m/o/mobil-super-3000-x1-5w-40_1_copy3.jpg','image',0),('4',90,'/m/o/mobil-super-3000-x1-5w-40_1_copy4.jpg','image',0),('5',90,'/m/o/mobil-super-3000-x1-5w-40_1_copy5.jpg','image',0),('6',90,'/m/o/mobil-super-3000-x1-5w-40_1_copy6.jpg','image',0),('7',90,'/h/q/hqdefault.jpg','external-video',0),('8',90,'/m/o/mobil-super-3000-x1-5w-40_1_1.jpg','image',0),('9',90,'/m/o/mobil-super-3000-x1-5w-40_1_copy_1.jpg','image',0),('10',90,'/m/o/mobil-super-3000-x1-5w-40_1_copy3_1.jpg','image',0),('11',90,'/m/o/mobil-super-3000-x1-5w-40_1_copy4_1.jpg','image',0),('12',90,'/m/o/mobil-super-3000-x1-5w-40_1_copy5_1.jpg','image',0),('13',90,'/m/o/mobil-super-3000-x1-5w-40_1_copy6_1.jpg','image',0),('15',90,'/m/o/mobil-super-3000-x1-5w-40_1_1_1.jpg','image',0),('16',90,'/m/o/mobil-super-3000-x1-5w-40_1_copy_1_1.jpg','image',0),('17',90,'/m/o/mobil-super-3000-x1-5w-40_1_copy3_1_1.jpg','image',0),('18',90,'/m/o/mobil-super-3000-x1-5w-40_1_copy4_1_1.jpg','image',0),('19',90,'/m/o/mobil-super-3000-x1-5w-40_1_copy5_1_1.jpg','image',0),('20',90,'/m/o/mobil-super-3000-x1-5w-40_1_copy6_1_1.jpg','image',0),('22',90,'/m/o/mobil-super-3000-x1-5w-40_1_1_1_1.jpg','image',0),('23',90,'/m/o/mobil-super-3000-x1-5w-40_1_copy_1_1_1.jpg','image',0),('24',90,'/m/o/mobil-super-3000-x1-5w-40_1_copy3_1_1_1.jpg','image',0),('25',90,'/m/o/mobil-super-3000-x1-5w-40_1_copy4_1_1_1.jpg','image',0),('26',90,'/m/o/mobil-super-3000-x1-5w-40_1_copy5_1_1_1.jpg','image',0),('27',90,'/m/o/mobil-super-3000-x1-5w-40_1_copy6_1_1_1.jpg','image',0),('28',90,'/h/q/hqdefault_1_1_1.jpg','image',0),('50',90,'/m/o/mobil-super-3000-x1-5w-40_1_5.jpg','image',0),('51',90,'/m/o/mobil-super-3000-x1-5w-40_1_copy_5.jpg','image',0),('52',90,'/m/o/mobil-super-3000-x1-5w-40_1_copy3_5.jpg','image',0),('53',90,'/m/o/mobil-super-3000-x1-5w-40_1_copy4_5.jpg','image',0),('54',90,'/m/o/mobil-super-3000-x1-5w-40_1_copy5_5.jpg','image',0),('55',90,'/m/o/mobil-super-3000-x1-5w-40_1_copy6_5.jpg','image',0),('56',90,'/h/q/hqdefault_5.jpg','image',0),('78',90,'/m/o/mobil-super-3000-x1-5w-40_1_1_5.jpg','image',0),('79',90,'/m/o/mobil-super-3000-x1-5w-40_1_copy_1_5.jpg','image',0),('80',90,'/m/o/mobil-super-3000-x1-5w-40_1_copy3_1_5.jpg','image',0),('81',90,'/m/o/mobil-super-3000-x1-5w-40_1_copy4_1_5.jpg','image',0),('82',90,'/m/o/mobil-super-3000-x1-5w-40_1_copy5_1_5.jpg','image',0),('83',90,'/m/o/mobil-super-3000-x1-5w-40_1_copy6_1_5.jpg','image',0),('84',90,'/h/q/hqdefault_1_5.jpg','image',0),('120',90,'/m/o/mobil-super-3000-x1-5w-40_1_11.jpg','image',0),('121',90,'/m/o/mobil-super-3000-x1-5w-40_1_copy_11.jpg','image',0),('122',90,'/m/o/mobil-super-3000-x1-5w-40_1_copy3_11.jpg','image',0),('123',90,'/m/o/mobil-super-3000-x1-5w-40_1_copy4_11.jpg','image',0),('124',90,'/m/o/mobil-super-3000-x1-5w-40_1_copy5_11.jpg','image',0),('125',90,'/m/o/mobil-super-3000-x1-5w-40_1_copy6_11.jpg','image',0),('126',90,'/h/q/hqdefault_11.jpg','image',0),('162',90,'/m/o/mobil-super-3000-x1-5w-40_1_1_11.jpg','image',0),('163',90,'/m/o/mobil-super-3000-x1-5w-40_1_copy_1_11.jpg','image',0),('164',90,'/m/o/mobil-super-3000-x1-5w-40_1_copy3_1_11.jpg','image',0),('165',90,'/m/o/mobil-super-3000-x1-5w-40_1_copy4_1_11.jpg','image',0),('166',90,'/m/o/mobil-super-3000-x1-5w-40_1_copy5_1_11.jpg','image',0),('167',90,'/m/o/mobil-super-3000-x1-5w-40_1_copy6_1_11.jpg','image',0),('168',90,'/h/q/hqdefault_1_11.jpg','image',0),('183',90,'/m/o/mobil-super-3000-x1-5w-40_1_1_5_3.jpg','image',0),('184',90,'/m/o/mobil-super-3000-x1-5w-40_1_copy_1_5_3.jpg','image',0),('185',90,'/m/o/mobil-super-3000-x1-5w-40_1_copy3_1_5_3.jpg','image',0),('186',90,'/m/o/mobil-super-3000-x1-5w-40_1_copy4_1_5_3.jpg','image',0),('187',90,'/m/o/mobil-super-3000-x1-5w-40_1_copy5_1_5_3.jpg','image',0),('188',90,'/m/o/mobil-super-3000-x1-5w-40_1_copy6_1_5_3.jpg','image',0),('189',90,'/h/q/hqdefault_1_5_3.jpg','image',0),('190',90,'/h/q/hqdefault_1.jpg','external-video',0);
/*!40000 ALTER TABLE `catalog_product_entity_media_gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_entity_media_gallery_value`
--

DROP TABLE IF EXISTS `catalog_product_entity_media_gallery_value`;
CREATE TABLE `catalog_product_entity_media_gallery_value` (
  `value_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Value ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `label` varchar(255) DEFAULT NULL COMMENT 'Label',
  `position` int(10) unsigned DEFAULT NULL COMMENT 'Position',
  `disabled` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Disabled',
  `record_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Record Id',
  PRIMARY KEY (`record_id`),
  KEY `CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_VALUE_STORE_ID` (`store_id`),
  KEY `CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_VALUE_ENTITY_ID` (`entity_id`),
  KEY `CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_VALUE_VALUE_ID` (`value_id`)
) ENGINE=InnoDB AUTO_INCREMENT=926 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Media Gallery Attribute Value Table';

--
-- Dumping data for table `catalog_product_entity_media_gallery_value`
--

LOCK TABLES `catalog_product_entity_media_gallery_value` WRITE;
/*!40000 ALTER TABLE `catalog_product_entity_media_gallery_value` DISABLE KEYS */;
INSERT INTO `catalog_product_entity_media_gallery_value` VALUES ('15',3,'3',NULL,'1',0,'94'),('16',3,'3',NULL,'2',0,'95'),('17',3,'3',NULL,'3',0,'96'),('18',3,'3',NULL,'4',0,'97'),('19',3,'3',NULL,'5',0,'98'),('20',3,'3',NULL,'6',0,'99'),('15',2,'3',NULL,'1',0,'108'),('16',2,'3',NULL,'2',0,'109'),('17',2,'3',NULL,'3',0,'110'),('18',2,'3',NULL,'4',0,'111'),('19',2,'3',NULL,'5',0,'112'),('20',2,'3',NULL,'6',0,'113'),('22',0,'4',NULL,'1',0,'164'),('23',0,'4',NULL,'2',0,'165'),('24',0,'4',NULL,'3',0,'166'),('25',0,'4',NULL,'4',0,'167'),('26',0,'4',NULL,'5',0,'168'),('27',0,'4',NULL,'6',0,'169'),('28',0,'4',NULL,'7',0,'170'),('22',2,'4',NULL,'1',0,'171'),('23',2,'4',NULL,'2',0,'172'),('24',2,'4',NULL,'3',0,'173'),('25',2,'4',NULL,'4',0,'174'),('26',2,'4',NULL,'5',0,'175'),('27',2,'4',NULL,'6',0,'176'),('28',2,'4',NULL,'7',0,'177'),('22',3,'4',NULL,'1',0,'178'),('23',3,'4',NULL,'2',0,'179'),('24',3,'4',NULL,'3',0,'180'),('25',3,'4',NULL,'4',0,'181'),('26',3,'4',NULL,'5',0,'182'),('27',3,'4',NULL,'6',0,'183'),('28',3,'4',NULL,'7',0,'184'),('50',2,'5',NULL,'1',0,'231'),('51',2,'5',NULL,'2',0,'232'),('52',2,'5',NULL,'3',0,'233'),('53',2,'5',NULL,'4',0,'234'),('54',2,'5',NULL,'5',0,'235'),('55',2,'5',NULL,'6',0,'236'),('56',2,'5',NULL,'7',0,'237'),('50',3,'5',NULL,'1',0,'238'),('51',3,'5',NULL,'2',0,'239'),('52',3,'5',NULL,'3',0,'240'),('53',3,'5',NULL,'4',0,'241'),('54',3,'5',NULL,'5',0,'242'),('55',3,'5',NULL,'6',0,'243'),('56',3,'5',NULL,'7',0,'244'),('78',2,'6',NULL,'1',0,'343'),('79',2,'6',NULL,'2',0,'344'),('80',2,'6',NULL,'3',0,'345'),('81',2,'6',NULL,'4',0,'346'),('82',2,'6',NULL,'5',0,'347'),('83',2,'6',NULL,'6',0,'348'),('84',2,'6',NULL,'7',0,'349'),('78',3,'6',NULL,'1',0,'350'),('79',3,'6',NULL,'2',0,'351'),('80',3,'6',NULL,'3',0,'352'),('81',3,'6',NULL,'4',0,'353'),('82',3,'6',NULL,'5',0,'354'),('83',3,'6',NULL,'6',0,'355'),('84',3,'6',NULL,'7',0,'356'),('120',0,'7',NULL,'1',0,'412'),('121',0,'7',NULL,'2',0,'413'),('122',0,'7',NULL,'3',0,'414'),('123',0,'7',NULL,'4',0,'415'),('124',0,'7',NULL,'5',0,'416'),('125',0,'7',NULL,'6',0,'417'),('126',0,'7',NULL,'7',0,'418'),('120',2,'7',NULL,'1',0,'419'),('121',2,'7',NULL,'2',0,'420'),('122',2,'7',NULL,'3',0,'421'),('123',2,'7',NULL,'4',0,'422'),('124',2,'7',NULL,'5',0,'423'),('125',2,'7',NULL,'6',0,'424'),('126',2,'7',NULL,'7',0,'425'),('120',3,'7',NULL,'1',0,'426'),('121',3,'7',NULL,'2',0,'427'),('122',3,'7',NULL,'3',0,'428'),('123',3,'7',NULL,'4',0,'429'),('124',3,'7',NULL,'5',0,'430'),('125',3,'7',NULL,'6',0,'431'),('126',3,'7',NULL,'7',0,'432'),('162',0,'8',NULL,'1',0,'566'),('163',0,'8',NULL,'2',0,'567'),('164',0,'8',NULL,'3',0,'568'),('165',0,'8',NULL,'4',0,'569'),('166',0,'8',NULL,'5',0,'570'),('167',0,'8',NULL,'6',0,'571'),('168',0,'8',NULL,'7',0,'572'),('162',2,'8',NULL,'1',0,'573'),('163',2,'8',NULL,'2',0,'574'),('164',2,'8',NULL,'3',0,'575'),('165',2,'8',NULL,'4',0,'576'),('166',2,'8',NULL,'5',0,'577'),('167',2,'8',NULL,'6',0,'578'),('168',2,'8',NULL,'7',0,'579'),('162',3,'8',NULL,'1',0,'580'),('163',3,'8',NULL,'2',0,'581'),('164',3,'8',NULL,'3',0,'582'),('165',3,'8',NULL,'4',0,'583'),('166',3,'8',NULL,'5',0,'584'),('167',3,'8',NULL,'6',0,'585'),('168',3,'8',NULL,'7',0,'586'),('183',0,'9',NULL,'1',0,'657'),('184',0,'9',NULL,'2',0,'658'),('185',0,'9',NULL,'3',0,'659'),('186',0,'9',NULL,'4',0,'660'),('187',0,'9',NULL,'5',0,'661'),('188',0,'9',NULL,'6',0,'662'),('189',0,'9',NULL,'7',0,'663'),('183',2,'9',NULL,'1',0,'664'),('184',2,'9',NULL,'2',0,'665'),('185',2,'9',NULL,'3',0,'666'),('186',2,'9',NULL,'4',0,'667'),('187',2,'9',NULL,'5',0,'668'),('188',2,'9',NULL,'6',0,'669'),('189',2,'9',NULL,'7',0,'670'),('183',3,'9',NULL,'1',0,'671'),('184',3,'9',NULL,'2',0,'672'),('185',3,'9',NULL,'3',0,'673'),('186',3,'9',NULL,'4',0,'674'),('187',3,'9',NULL,'5',0,'675'),('188',3,'9',NULL,'6',0,'676'),('189',3,'9',NULL,'7',0,'677'),('50',0,'5',NULL,'1',0,'755'),('51',0,'5',NULL,'2',0,'756'),('52',0,'5',NULL,'3',0,'757'),('53',0,'5',NULL,'4',0,'758'),('54',0,'5',NULL,'5',0,'759'),('55',0,'5',NULL,'6',0,'760'),('56',0,'5',NULL,'7',0,'761'),('78',0,'6',NULL,'1',0,'769'),('79',0,'6',NULL,'2',0,'770'),('80',0,'6',NULL,'3',0,'771'),('81',0,'6',NULL,'4',0,'772'),('82',0,'6',NULL,'5',0,'773'),('83',0,'6',NULL,'6',0,'774'),('84',0,'6',NULL,'7',0,'775'),('8',0,'2',NULL,'1',0,'817'),('9',0,'2',NULL,'2',0,'818'),('10',0,'2',NULL,'3',0,'819'),('11',0,'2',NULL,'4',0,'820'),('12',0,'2',NULL,'5',0,'821'),('13',0,'2',NULL,'6',0,'822'),('8',2,'2',NULL,'1',0,'823'),('9',2,'2',NULL,'2',0,'824'),('10',2,'2',NULL,'3',0,'825'),('11',2,'2',NULL,'4',0,'826'),('12',2,'2',NULL,'5',0,'827'),('13',2,'2',NULL,'6',0,'828'),('8',3,'2',NULL,'1',0,'829'),('9',3,'2',NULL,'2',0,'830'),('10',3,'2',NULL,'3',0,'831'),('11',3,'2',NULL,'4',0,'832'),('12',3,'2',NULL,'5',0,'833'),('13',3,'2',NULL,'6',0,'834'),('1',0,'1',NULL,'1',0,'863'),('2',0,'1',NULL,'2',0,'864'),('3',0,'1',NULL,'3',0,'865'),('4',0,'1',NULL,'4',0,'866'),('5',0,'1',NULL,'5',0,'867'),('6',0,'1',NULL,'6',0,'868'),('7',0,'1',NULL,'7',0,'869'),('1',3,'1',NULL,'1',0,'877'),('2',3,'1',NULL,'2',0,'878'),('3',3,'1',NULL,'3',0,'879'),('4',3,'1',NULL,'4',0,'880'),('5',3,'1',NULL,'5',0,'881'),('6',3,'1',NULL,'6',0,'882'),('7',3,'1',NULL,'7',0,'883'),('1',2,'1',NULL,'1',0,'905'),('2',2,'1',NULL,'2',0,'906'),('3',2,'1',NULL,'3',0,'907'),('4',2,'1',NULL,'4',0,'908'),('5',2,'1',NULL,'5',0,'909'),('6',2,'1',NULL,'6',0,'910'),('7',2,'1',NULL,'7',0,'911'),('15',0,'3',NULL,'1',0,'919'),('16',0,'3',NULL,'2',0,'920'),('17',0,'3',NULL,'0',0,'921'),('18',0,'3',NULL,'3',0,'922'),('19',0,'3',NULL,'4',0,'923'),('20',0,'3',NULL,'5',0,'924'),('190',0,'3',NULL,'6',0,'925');
/*!40000 ALTER TABLE `catalog_product_entity_media_gallery_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_entity_media_gallery_value_to_entity`
--

DROP TABLE IF EXISTS `catalog_product_entity_media_gallery_value_to_entity`;
CREATE TABLE `catalog_product_entity_media_gallery_value_to_entity` (
  `value_id` int(10) unsigned NOT NULL COMMENT 'Value media Entry ID',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Product entity ID',
  UNIQUE KEY `CAT_PRD_ENTT_MDA_GLR_VAL_TO_ENTT_VAL_ID_ENTT_ID` (`value_id`,`entity_id`),
  KEY `CAT_PRD_ENTT_MDA_GLR_VAL_TO_ENTT_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Link Media value to Product entity table';

--
-- Dumping data for table `catalog_product_entity_media_gallery_value_to_entity`
--

LOCK TABLES `catalog_product_entity_media_gallery_value_to_entity` WRITE;
/*!40000 ALTER TABLE `catalog_product_entity_media_gallery_value_to_entity` DISABLE KEYS */;
INSERT INTO `catalog_product_entity_media_gallery_value_to_entity` VALUES ('1','1'),('2','1'),('3','1'),('4','1'),('5','1'),('6','1'),('7','1'),('8','2'),('9','2'),('10','2'),('11','2'),('12','2'),('13','2'),('15','3'),('16','3'),('17','3'),('18','3'),('19','3'),('20','3'),('190','3'),('22','4'),('23','4'),('24','4'),('25','4'),('26','4'),('27','4'),('28','4'),('50','5'),('51','5'),('52','5'),('53','5'),('54','5'),('55','5'),('56','5'),('78','6'),('79','6'),('80','6'),('81','6'),('82','6'),('83','6'),('84','6'),('120','7'),('121','7'),('122','7'),('123','7'),('124','7'),('125','7'),('126','7'),('162','8'),('163','8'),('164','8'),('165','8'),('166','8'),('167','8'),('168','8'),('183','9'),('184','9'),('185','9'),('186','9'),('187','9'),('188','9'),('189','9');
/*!40000 ALTER TABLE `catalog_product_entity_media_gallery_value_to_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_entity_media_gallery_value_video`
--

DROP TABLE IF EXISTS `catalog_product_entity_media_gallery_value_video`;
CREATE TABLE `catalog_product_entity_media_gallery_value_video` (
  `value_id` int(10) unsigned NOT NULL COMMENT 'Media Entity ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `provider` varchar(32) DEFAULT NULL COMMENT 'Video provider ID',
  `url` text COMMENT 'Video URL',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  `description` text COMMENT 'Page Meta Description',
  `metadata` text COMMENT 'Video meta data',
  UNIQUE KEY `CAT_PRD_ENTT_MDA_GLR_VAL_VIDEO_VAL_ID_STORE_ID` (`value_id`,`store_id`),
  KEY `CAT_PRD_ENTT_MDA_GLR_VAL_VIDEO_STORE_ID_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Video Table';

--
-- Dumping data for table `catalog_product_entity_media_gallery_value_video`
--

LOCK TABLES `catalog_product_entity_media_gallery_value_video` WRITE;
/*!40000 ALTER TABLE `catalog_product_entity_media_gallery_value_video` DISABLE KEYS */;
INSERT INTO `catalog_product_entity_media_gallery_value_video` VALUES ('7',0,'','https://www.youtube.com/watch?v=vUROFbtV9eI','Intro to Magento','A brief look back at some of the key moments in the history of Magento',''),('7',2,'','https://www.youtube.com/watch?v=vUROFbtV9eI','Intro to Magento','A brief look back at some of the key moments in the history of Magento',''),('7',3,'','https://www.youtube.com/watch?v=vUROFbtV9eI','Intro to Magento','A brief look back at some of the key moments in the history of Magento',''),('28',0,'','https://www.youtube.com/watch?v=vUROFbtV9eI','Intro to Magento','A brief look back at some of the key moments in the history of Magento',''),('56',0,'','https://www.youtube.com/watch?v=vUROFbtV9eI','Intro to Magento','A brief look back at some of the key moments in the history of Magento',''),('84',0,'','https://www.youtube.com/watch?v=vUROFbtV9eI','Intro to Magento','A brief look back at some of the key moments in the history of Magento',''),('126',0,'','https://www.youtube.com/watch?v=vUROFbtV9eI','Intro to Magento','A brief look back at some of the key moments in the history of Magento',''),('168',0,'','https://www.youtube.com/watch?v=vUROFbtV9eI','Intro to Magento','A brief look back at some of the key moments in the history of Magento',''),('189',0,'','https://www.youtube.com/watch?v=vUROFbtV9eI','Intro to Magento','A brief look back at some of the key moments in the history of Magento',''),('190',0,'','https://www.youtube.com/watch?v=vUROFbtV9eI','Intro to Magento','A brief look back at some of the key moments in the history of Magento','');
/*!40000 ALTER TABLE `catalog_product_entity_media_gallery_value_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_entity_text`
--

DROP TABLE IF EXISTS `catalog_product_entity_text`;
CREATE TABLE `catalog_product_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_PRODUCT_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_PRODUCT_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_ENTITY_TEXT_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Text Attribute Backend Table';

--
-- Dumping data for table `catalog_product_entity_text`
--

LOCK TABLES `catalog_product_entity_text` WRITE;
/*!40000 ALTER TABLE `catalog_product_entity_text` DISABLE KEYS */;
INSERT INTO `catalog_product_entity_text` VALUES ('1',85,0,'1','Моторное масло MOBIL Super 3000 X1 5W-40, 4л'),('2',85,2,'1','Моторное масло MOBIL Super 3000 X1 5W-40, 4л'),('3',75,0,'1','<p>Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том.</p>\r\n<p>Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,</p>\r\n<p>Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур.</p>\r\n<p>Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,</p>'),('4',76,0,'1','<p>ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло&nbsp;ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE</p>'),('5',137,0,'1','84'),('6',75,0,'2','<p>Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том.</p>\r\n<p>Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,</p>'),('7',76,0,'2','<p>ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло</p>'),('8',85,0,'2','Моторное масло MOBIL Super 3000 X1 5W-40, 4л'),('9',137,0,'2','85'),('10',85,2,'2','Моторное масло MOBIL Super 3000 X1 5W-40, 4л'),('13',75,0,'3','<p>Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том.</p>\r\n<p>Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,</p>'),('14',76,0,'3','<p>ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло</p>'),('15',85,0,'3','Моторное масло MOBIL Super 3000 X1 5W-40, 4л'),('16',137,0,'3','85'),('17',85,2,'3','Моторное масло MOBIL Super 3000 X1 5W-40, 4л'),('20',75,2,'3','<p>Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том.</p>\r\n<p>Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,</p>'),('21',76,2,'3','<p>ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло</p>'),('22',75,3,'3','<p>Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том.</p>\r\n<p>Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,</p>'),('23',76,3,'3','<p>ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло</p>'),('24',85,3,'3','Моторное масло MOBIL Super 3000 X1 5W-40, 4л'),('25',75,2,'2','<p>Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том.</p>\r\n<p>Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,</p>'),('26',76,2,'2','<p>ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло</p>'),('27',75,3,'2','<p>Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том.</p>\r\n<p>Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,</p>'),('28',76,3,'2','<p>ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло</p>'),('29',85,3,'2','Моторное масло MOBIL Super 3000 X1 5W-40, 4л'),('30',75,0,'4','<p>Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том.</p>\r\n<p>Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,</p>'),('31',76,0,'4','<p>ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло</p>'),('32',85,0,'4','Моторное масло MOBIL Super 3000 X1 5W-40, 4л'),('33',137,0,'4','85'),('34',75,2,'4','<p>Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том.</p>\r\n<p>Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,</p>'),('35',75,3,'4','<p>Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том.</p>\r\n<p>Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,</p>'),('36',76,2,'4','<p>ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло</p>'),('37',76,3,'4','<p>ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло</p>'),('38',85,2,'4','Моторное масло MOBIL Super 3000 X1 5W-40, 4л'),('39',85,3,'4','Моторное масло MOBIL Super 3000 X1 5W-40, 4л'),('53',75,0,'5','<p>Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том.</p>\r\n<p>Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,</p>'),('54',76,0,'5','<p>ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло</p>'),('55',85,0,'5','Моторное масло MOBIL Super 3000 X1 5W-40, 4л'),('56',137,0,'5','84'),('57',85,2,'5','Моторное масло MOBIL Super 3000 X1 5W-40, 4л'),('60',75,2,'5','<p>Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том.</p>\r\n<p>Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,</p>'),('61',76,2,'5','<p>ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло</p>'),('62',75,3,'5','<p>Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том.</p>\r\n<p>Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,</p>'),('63',76,3,'5','<p>ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло</p>'),('64',85,3,'5','Моторное масло MOBIL Super 3000 X1 5W-40, 4л'),('77',75,0,'6','<p>Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том.</p>\r\n<p>Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,</p>'),('78',76,0,'6','<p>ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло</p>'),('79',85,0,'6','Моторное масло MOBIL Super 3000 X1 5W-40, 4л'),('80',137,0,'6','85'),('81',75,2,'6','<p>Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том.</p>\r\n<p>Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,</p>'),('82',75,3,'6','<p>Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том.</p>\r\n<p>Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,</p>'),('83',76,2,'6','<p>ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло</p>'),('84',76,3,'6','<p>ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло</p>'),('85',85,2,'6','Моторное масло MOBIL Super 3000 X1 5W-40, 4л'),('86',85,3,'6','Моторное масло MOBIL Super 3000 X1 5W-40, 4л'),('108',75,0,'7','<p>Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том.</p>\r\n<p>Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,</p>'),('109',76,0,'7','<p>ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло</p>'),('110',85,0,'7','Моторное масло MOBIL Super 3000 X1 5W-40, 4л'),('111',137,0,'7','84'),('112',85,2,'7','Моторное масло MOBIL Super 3000 X1 5W-40, 4л'),('115',75,2,'7','<p>Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том.</p>\r\n<p>Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,</p>'),('116',76,2,'7','<p>ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло</p>'),('117',75,3,'7','<p>Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том.</p>\r\n<p>Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,</p>'),('118',76,3,'7','<p>ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло</p>'),('119',85,3,'7','Моторное масло MOBIL Super 3000 X1 5W-40, 4л'),('140',75,0,'8','<p>Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том.</p>\r\n<p>Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,</p>'),('141',76,0,'8','<p>ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло</p>'),('142',85,0,'8','Моторное масло MOBIL Super 3000 X1 5W-40, 4л'),('143',137,0,'8','85'),('144',75,2,'8','<p>Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том.</p>\r\n<p>Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,</p>'),('145',75,3,'8','<p>Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том.</p>\r\n<p>Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,</p>'),('146',76,2,'8','<p>ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло</p>'),('147',76,3,'8','<p>ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло</p>'),('148',85,2,'8','Моторное масло MOBIL Super 3000 X1 5W-40, 4л'),('149',85,3,'8','Моторное масло MOBIL Super 3000 X1 5W-40, 4л'),('159',75,0,'9','<p>Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том.</p>\r\n<p>Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,</p>'),('160',76,0,'9','<p>ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло</p>');
INSERT INTO `catalog_product_entity_text` VALUES ('161',85,0,'9','Моторное масло MOBIL Super 3000 X1 5W-40, 4л'),('162',137,0,'9','85'),('163',75,2,'9','<p>Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том.</p>\r\n<p>Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,</p>'),('164',75,3,'9','<p>Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том.</p>\r\n<p>Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,</p>'),('165',76,2,'9','<p>ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло</p>'),('166',76,3,'9','<p>ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло</p>'),('167',85,2,'9','Моторное масло MOBIL Super 3000 X1 5W-40, 4л'),('168',85,3,'9','Моторное масло MOBIL Super 3000 X1 5W-40, 4л'),('172',75,2,'1','<p>Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том.</p>\r\n<p>Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,</p>\r\n<p>Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур.</p>\r\n<p>Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,</p>'),('173',76,2,'1','<p>ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло&nbsp;ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE</p>'),('174',75,3,'1','<p>Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том.</p>\r\n<p>Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,</p>\r\n<p>Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур.</p>\r\n<p>Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,</p>'),('175',76,3,'1','<p>ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло&nbsp;ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE</p>');
/*!40000 ALTER TABLE `catalog_product_entity_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_entity_tier_price`
--

DROP TABLE IF EXISTS `catalog_product_entity_tier_price`;
CREATE TABLE `catalog_product_entity_tier_price` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `all_groups` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Applicable To All Customer Groups',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `qty` decimal(12,4) NOT NULL DEFAULT '1.0000' COMMENT 'QTY',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_E8AB433B9ACB00343ABB312AD2FAB087` (`entity_id`,`all_groups`,`customer_group_id`,`qty`,`website_id`),
  KEY `CATALOG_PRODUCT_ENTITY_TIER_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `CATALOG_PRODUCT_ENTITY_TIER_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Tier Price Attribute Backend Table';

--
-- Table structure for table `catalog_product_entity_varchar`
--

DROP TABLE IF EXISTS `catalog_product_entity_varchar`;
CREATE TABLE `catalog_product_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CATALOG_PRODUCT_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_PRODUCT_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_ENTITY_VARCHAR_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1088 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Varchar Attribute Backend Table';

--
-- Dumping data for table `catalog_product_entity_varchar`
--

LOCK TABLES `catalog_product_entity_varchar` WRITE;
/*!40000 ALTER TABLE `catalog_product_entity_varchar` DISABLE KEYS */;
INSERT INTO `catalog_product_entity_varchar` VALUES ('1',73,0,'1','Motor Oil MOBIL Super 3000 X1 5W-40, 4L'),('2',84,0,'1','Моторное масло MOBIL Super 3000 X1 5W-40, 4л'),('3',86,0,'1','Моторное масло MOBIL Super 3000 X1 5W-40, 4л '),('4',106,0,'1','container2'),('5',119,0,'1','motor-oil-mobil-super-3000-x1-5w-40-4l'),('6',134,0,'1','2'),('7',87,0,'1','/m/o/mobil-super-3000-x1-5w-40_1.jpg'),('8',88,0,'1','/m/o/mobil-super-3000-x1-5w-40_1.jpg'),('9',89,0,'1','/m/o/mobil-super-3000-x1-5w-40_1.jpg'),('10',132,0,'1','/m/o/mobil-super-3000-x1-5w-40_1.jpg'),('12',84,2,'1','Моторное масло MOBIL Super 3000 X1 5W-40, 4л'),('13',86,2,'1','Моторное масло MOBIL Super 3000 X1 5W-40, 4л '),('14',87,2,'1','/m/o/mobil-super-3000-x1-5w-40_1.jpg'),('15',88,2,'1','/m/o/mobil-super-3000-x1-5w-40_1.jpg'),('16',89,2,'1','/m/o/mobil-super-3000-x1-5w-40_1.jpg'),('17',106,2,'1','container2'),('18',119,2,'1','motornoe-maslo-mobil-super-3000-x1-5w-40-4l'),('19',132,2,'1','/m/o/mobil-super-3000-x1-5w-40_1.jpg'),('51',138,0,'1','14'),('56',139,0,'1','1,1'),('57',140,0,'1','0,0097'),('58',141,0,'1','222'),('59',142,0,'1','-39'),('68',73,0,'2','Motor Oil Castrol Magnatec 3000 X1 5W-40, 4L'),('69',84,0,'2','Моторное масло MOBIL Super 3000 X1 5W-40, 4л'),('70',86,0,'2','Моторное масло MOBIL Super 3000 X1 5W-40, 4л '),('71',87,0,'2','/m/o/mobil-super-3000-x1-5w-40_1_copy_1.jpg'),('72',88,0,'2','/m/o/mobil-super-3000-x1-5w-40_1_copy_1.jpg'),('73',89,0,'2','/m/o/mobil-super-3000-x1-5w-40_1_copy_1.jpg'),('74',106,0,'2','container2'),('75',119,0,'2','motor-oil-mobil-super-3000-x1-5w-40-4l-1'),('76',132,0,'2','/m/o/mobil-super-3000-x1-5w-40_1_copy_1.jpg'),('77',134,0,'2','2'),('78',138,0,'2','14'),('79',139,0,'2','1,1'),('80',140,0,'2','0,0097'),('81',141,0,'2','222'),('82',142,0,'2','-39'),('87',73,2,'2','Моторное масло Castrol Magnatec 3000 X1 5W-40, 4L'),('88',84,2,'2','Моторное масло MOBIL Super 3000 X1 5W-40, 4л'),('89',86,2,'2','Моторное масло MOBIL Super 3000 X1 5W-40, 4л '),('90',87,2,'2','/m/o/mobil-super-3000-x1-5w-40_1_copy_1.jpg'),('91',88,2,'2','/m/o/mobil-super-3000-x1-5w-40_1_copy_1.jpg'),('92',89,2,'2','/m/o/mobil-super-3000-x1-5w-40_1_copy_1.jpg'),('93',106,2,'2','container2'),('94',119,2,'2','motor-oil-mobil-super-3000-x1-5w-40-4l'),('95',132,2,'2','/m/o/mobil-super-3000-x1-5w-40_1_copy_1.jpg'),('106',73,0,'3','Motor Oil Shell Helix 3000 X1 5W-40, 4L'),('107',84,0,'3','Моторное масло MOBIL Super 3000 X1 5W-40, 4л'),('108',86,0,'3','Моторное масло MOBIL Super 3000 X1 5W-40, 4л '),('109',87,0,'3','/m/o/mobil-super-3000-x1-5w-40_1_copy3_1_1.jpg'),('110',88,0,'3','/m/o/mobil-super-3000-x1-5w-40_1_copy3_1_1.jpg'),('111',89,0,'3','/m/o/mobil-super-3000-x1-5w-40_1_copy3_1_1.jpg'),('112',106,0,'3','container2'),('113',119,0,'3','motornoe-maslo-mobil-super-3000-x1-5w-40-4l-2'),('114',132,0,'3','/m/o/mobil-super-3000-x1-5w-40_1_copy3_1_1.jpg'),('115',134,0,'3','2'),('116',138,0,'3','14'),('117',139,0,'3','1,1'),('118',140,0,'3','0,0097'),('119',141,0,'3','222'),('120',142,0,'3','-39'),('125',73,2,'3','Моторное масло Shell Helix 3000 X1 5W-40, 4л'),('126',84,2,'3','Моторное масло MOBIL Super 3000 X1 5W-40, 4л'),('127',86,2,'3','Моторное масло MOBIL Super 3000 X1 5W-40, 4л '),('128',87,2,'3','/m/o/mobil-super-3000-x1-5w-40_1_copy3_1_1.jpg'),('129',88,2,'3','/m/o/mobil-super-3000-x1-5w-40_1_copy3_1_1.jpg'),('130',89,2,'3','/m/o/mobil-super-3000-x1-5w-40_1_copy3_1_1.jpg'),('131',106,2,'3','container2'),('132',119,2,'3','motornoe-maslo-mobil-super-3000-x1-5w-40-4l'),('133',132,2,'3','/m/o/mobil-super-3000-x1-5w-40_1_copy3_1_1.jpg'),('153',73,3,'3','Моторна олива Shell Helix 3000 X1 5W-40, 4L'),('154',84,3,'3','Моторное масло MOBIL Super 3000 X1 5W-40, 4л'),('155',86,3,'3','Моторное масло MOBIL Super 3000 X1 5W-40, 4л '),('156',87,3,'3','/m/o/mobil-super-3000-x1-5w-40_1_copy3_1_1.jpg'),('157',88,3,'3','/m/o/mobil-super-3000-x1-5w-40_1_copy3_1_1.jpg'),('158',89,3,'3','/m/o/mobil-super-3000-x1-5w-40_1_copy3_1_1.jpg'),('159',106,3,'3','container2'),('160',119,3,'3','motornoe-maslo-mobil-super-3000-x1-5w-40-4l-2'),('161',132,3,'3','/m/o/mobil-super-3000-x1-5w-40_1_copy3_1_1.jpg'),('182',73,3,'2','Моторна олива Castrol Magnatec 3000 X1 5W-40, 4L'),('183',84,3,'2','Моторное масло MOBIL Super 3000 X1 5W-40, 4л'),('184',86,3,'2','Моторное масло MOBIL Super 3000 X1 5W-40, 4л '),('185',87,3,'2','/m/o/mobil-super-3000-x1-5w-40_1_copy_1.jpg'),('186',88,3,'2','/m/o/mobil-super-3000-x1-5w-40_1_copy_1.jpg'),('187',89,3,'2','/m/o/mobil-super-3000-x1-5w-40_1_copy_1.jpg'),('188',106,3,'2','container2'),('189',119,3,'2','motor-oil-mobil-super-3000-x1-5w-40-4l-1'),('190',132,3,'2','/m/o/mobil-super-3000-x1-5w-40_1_copy_1.jpg'),('205',73,0,'4','Motor Oil Shell Helix 3000 X1 5W-40, 4L'),('206',84,0,'4','Моторное масло MOBIL Super 3000 X1 5W-40, 4л'),('207',86,0,'4','Моторное масло MOBIL Super 3000 X1 5W-40, 4л '),('208',87,0,'4','/m/o/mobil-super-3000-x1-5w-40_1_copy4_1_1_1.jpg'),('209',88,0,'4','/m/o/mobil-super-3000-x1-5w-40_1_copy4_1_1_1.jpg'),('210',89,0,'4','/m/o/mobil-super-3000-x1-5w-40_1_copy4_1_1_1.jpg'),('211',106,0,'4','container2'),('212',119,0,'4','motornoe-maslo-mobil-super-3000-x1-5w-40-4l-3'),('213',132,0,'4','/m/o/mobil-super-3000-x1-5w-40_1_copy4_1_1_1.jpg'),('214',134,0,'4','2'),('215',138,0,'4','14'),('216',139,0,'4','1,1'),('217',140,0,'4','0,0097'),('218',141,0,'4','222'),('219',142,0,'4','-39'),('224',73,2,'4','Моторное масло Shell Helix 3000 X1 5W-40, 4л'),('225',73,3,'4','Моторна олива Shell Helix 3000 X1 5W-40, 4L'),('226',84,2,'4','Моторное масло MOBIL Super 3000 X1 5W-40, 4л'),('227',84,3,'4','Моторное масло MOBIL Super 3000 X1 5W-40, 4л'),('228',86,2,'4','Моторное масло MOBIL Super 3000 X1 5W-40, 4л '),('229',86,3,'4','Моторное масло MOBIL Super 3000 X1 5W-40, 4л '),('230',87,2,'4','/m/o/mobil-super-3000-x1-5w-40_1_copy4_1_1_1.jpg'),('231',87,3,'4','/m/o/mobil-super-3000-x1-5w-40_1_copy4_1_1_1.jpg'),('232',88,2,'4','/m/o/mobil-super-3000-x1-5w-40_1_copy4_1_1_1.jpg'),('233',88,3,'4','/m/o/mobil-super-3000-x1-5w-40_1_copy4_1_1_1.jpg'),('234',89,2,'4','/m/o/mobil-super-3000-x1-5w-40_1_copy4_1_1_1.jpg'),('235',89,3,'4','/m/o/mobil-super-3000-x1-5w-40_1_copy4_1_1_1.jpg'),('236',106,2,'4','container2'),('237',106,3,'4','container2'),('238',119,2,'4','motornoe-maslo-mobil-super-3000-x1-5w-40-4l'),('239',119,3,'4','motornoe-maslo-mobil-super-3000-x1-5w-40-4l-2'),('240',132,2,'4','/m/o/mobil-super-3000-x1-5w-40_1_copy4_1_1_1.jpg'),('241',132,3,'4','/m/o/mobil-super-3000-x1-5w-40_1_copy4_1_1_1.jpg'),('330',73,0,'5','Motor Oil MOBIL Super 3000 X1 5W-40, 4L'),('331',84,0,'5','Моторное масло MOBIL Super 3000 X1 5W-40, 4л'),('332',86,0,'5','Моторное масло MOBIL Super 3000 X1 5W-40, 4л '),('333',87,0,'5','/m/o/mobil-super-3000-x1-5w-40_1_copy5_5.jpg'),('334',88,0,'5','/m/o/mobil-super-3000-x1-5w-40_1_copy5_5.jpg'),('335',89,0,'5','/m/o/mobil-super-3000-x1-5w-40_1_copy5_5.jpg'),('336',106,0,'5','container2'),('337',119,0,'5','motornoe-maslo-mobil-super-3000-x1-5w-40-4l-4'),('338',132,0,'5','/m/o/mobil-super-3000-x1-5w-40_1_copy5_5.jpg'),('339',134,0,'5','2'),('340',138,0,'5','14'),('341',139,0,'5','1,1'),('342',140,0,'5','0,0097'),('343',141,0,'5','222'),('344',142,0,'5','-39'),('349',73,2,'5','Моторное масло MOBIL Super 3000 X1 5W-40, 4л'),('350',84,2,'5','Моторное масло MOBIL Super 3000 X1 5W-40, 4л'),('351',86,2,'5','Моторное масло MOBIL Super 3000 X1 5W-40, 4л '),('352',87,2,'5','/m/o/mobil-super-3000-x1-5w-40_1_copy5_5.jpg'),('353',88,2,'5','/m/o/mobil-super-3000-x1-5w-40_1_copy5_5.jpg'),('354',89,2,'5','/m/o/mobil-super-3000-x1-5w-40_1_copy5_5.jpg'),('355',106,2,'5','container2'),('356',119,2,'5','motornoe-maslo-mobil-super-3000-x1-5w-40-4l'),('357',132,2,'5','/m/o/mobil-super-3000-x1-5w-40_1_copy5_5.jpg'),('373',84,3,'5','Моторное масло MOBIL Super 3000 X1 5W-40, 4л'),('374',86,3,'5','Моторное масло MOBIL Super 3000 X1 5W-40, 4л '),('375',87,3,'5','/m/o/mobil-super-3000-x1-5w-40_1_copy5_5.jpg'),('376',88,3,'5','/m/o/mobil-super-3000-x1-5w-40_1_copy5_5.jpg'),('377',89,3,'5','/m/o/mobil-super-3000-x1-5w-40_1_copy5_5.jpg'),('378',106,3,'5','container2'),('379',119,3,'5','motornoe-maslo-mobil-super-3000-x1-5w-40-4l-4'),('380',132,3,'5','/m/o/mobil-super-3000-x1-5w-40_1_copy5_5.jpg'),('447',73,0,'6','Motor Oil Castrol Magnatec 3000 X1 5W-40, 4L'),('448',84,0,'6','Моторное масло MOBIL Super 3000 X1 5W-40, 4л'),('449',86,0,'6','Моторное масло MOBIL Super 3000 X1 5W-40, 4л '),('450',87,0,'6','/m/o/mobil-super-3000-x1-5w-40_1_copy6_1_5.jpg'),('451',88,0,'6','/m/o/mobil-super-3000-x1-5w-40_1_copy6_1_5.jpg'),('452',89,0,'6','/m/o/mobil-super-3000-x1-5w-40_1_copy6_1_5.jpg'),('453',106,0,'6','container2'),('454',119,0,'6','motornoe-maslo-mobil-super-3000-x1-5w-40-4l-5'),('455',132,0,'6','/m/o/mobil-super-3000-x1-5w-40_1_copy6_1_5.jpg'),('456',134,0,'6','2'),('457',138,0,'6','14'),('458',139,0,'6','1,1'),('459',140,0,'6','0,0097'),('460',141,0,'6','222'),('461',142,0,'6','-39'),('466',73,2,'6','Моторное масло Castrol Magnatec 3000 X1 5W-40, 4L'),('467',73,3,'6','Моторна олива Castrol Magnatec 3000 X1 5W-40, 4L'),('468',84,2,'6','Моторное масло MOBIL Super 3000 X1 5W-40, 4л'),('469',84,3,'6','Моторное масло MOBIL Super 3000 X1 5W-40, 4л'),('470',86,2,'6','Моторное масло MOBIL Super 3000 X1 5W-40, 4л '),('471',86,3,'6','Моторное масло MOBIL Super 3000 X1 5W-40, 4л '),('472',87,2,'6','/m/o/mobil-super-3000-x1-5w-40_1_copy6_1_5.jpg'),('473',87,3,'6','/m/o/mobil-super-3000-x1-5w-40_1_copy6_1_5.jpg'),('474',88,2,'6','/m/o/mobil-super-3000-x1-5w-40_1_copy6_1_5.jpg'),('475',88,3,'6','/m/o/mobil-super-3000-x1-5w-40_1_copy6_1_5.jpg'),('476',89,2,'6','/m/o/mobil-super-3000-x1-5w-40_1_copy6_1_5.jpg'),('477',89,3,'6','/m/o/mobil-super-3000-x1-5w-40_1_copy6_1_5.jpg'),('478',106,2,'6','container2'),('479',106,3,'6','container2'),('480',119,2,'6','motornoe-maslo-mobil-super-3000-x1-5w-40-4l'),('481',119,3,'6','motornoe-maslo-mobil-super-3000-x1-5w-40-4l-1'),('482',132,2,'6','/m/o/mobil-super-3000-x1-5w-40_1_copy6_1_5.jpg'),('483',132,3,'6','/m/o/mobil-super-3000-x1-5w-40_1_copy6_1_5.jpg'),('610',73,0,'7','Motor Oil MOBIL Super 3000 X1 5W-40, 4L'),('611',84,0,'7','Моторное масло MOBIL Super 3000 X1 5W-40, 4л'),('612',86,0,'7','Моторное масло MOBIL Super 3000 X1 5W-40, 4л '),('613',87,0,'7','/m/o/mobil-super-3000-x1-5w-40_1_11.jpg'),('614',88,0,'7','/m/o/mobil-super-3000-x1-5w-40_1_11.jpg'),('615',89,0,'7','/m/o/mobil-super-3000-x1-5w-40_1_11.jpg'),('616',106,0,'7','container2'),('617',119,0,'7','motornoe-maslo-mobil-super-3000-x1-5w-40-4l-6'),('618',132,0,'7','/m/o/mobil-super-3000-x1-5w-40_1_11.jpg'),('619',134,0,'7','2'),('620',138,0,'7','14'),('621',139,0,'7','1,1'),('622',140,0,'7','0,0097'),('623',141,0,'7','222'),('624',142,0,'7','-39'),('629',73,2,'7','Моторное масло MOBIL Super 3000 X1 5W-40, 4л'),('630',84,2,'7','Моторное масло MOBIL Super 3000 X1 5W-40, 4л'),('631',86,2,'7','Моторное масло MOBIL Super 3000 X1 5W-40, 4л '),('632',87,2,'7','/m/o/mobil-super-3000-x1-5w-40_1_11.jpg'),('633',88,2,'7','/m/o/mobil-super-3000-x1-5w-40_1_11.jpg'),('634',89,2,'7','/m/o/mobil-super-3000-x1-5w-40_1_11.jpg'),('635',106,2,'7','container2'),('636',119,2,'7','motornoe-maslo-mobil-super-3000-x1-5w-40-4l'),('637',132,2,'7','/m/o/mobil-super-3000-x1-5w-40_1_11.jpg'),('653',73,3,'7','Моторна олива MOBIL Super 3000 X1 5W-40, 4L'),('654',84,3,'7','Моторное масло MOBIL Super 3000 X1 5W-40, 4л'),('655',86,3,'7','Моторное масло MOBIL Super 3000 X1 5W-40, 4л '),('656',87,3,'7','/m/o/mobil-super-3000-x1-5w-40_1_11.jpg'),('657',88,3,'7','/m/o/mobil-super-3000-x1-5w-40_1_11.jpg'),('658',89,3,'7','/m/o/mobil-super-3000-x1-5w-40_1_11.jpg'),('659',106,3,'7','container2'),('660',119,3,'7','motornoe-maslo-mobil-super-3000-x1-5w-40-4l-6'),('661',132,3,'7','/m/o/mobil-super-3000-x1-5w-40_1_11.jpg'),('766',73,0,'8','Motor Oil Castrol Magnatec 3000 X1 5W-40, 4L'),('767',84,0,'8','Моторное масло MOBIL Super 3000 X1 5W-40, 4л'),('768',86,0,'8','Моторное масло MOBIL Super 3000 X1 5W-40, 4л '),('769',87,0,'8','/m/o/mobil-super-3000-x1-5w-40_1_copy_1_11.jpg'),('770',88,0,'8','/m/o/mobil-super-3000-x1-5w-40_1_copy_1_11.jpg'),('771',89,0,'8','/m/o/mobil-super-3000-x1-5w-40_1_copy_1_11.jpg'),('772',106,0,'8','container2'),('773',119,0,'8','motornoe-maslo-mobil-super-3000-x1-5w-40-4l-7'),('774',132,0,'8','/m/o/mobil-super-3000-x1-5w-40_1_copy_1_11.jpg'),('775',134,0,'8','2'),('776',138,0,'8','14'),('777',139,0,'8','1,1'),('778',140,0,'8','0,0097'),('779',141,0,'8','222'),('780',142,0,'8','-39'),('785',73,2,'8','Моторное масло Castrol Magnatec 3000 X1 5W-40, 4L'),('786',73,3,'8','Моторна олива Castrol Magnatec 3000 X1 5W-40, 4L'),('787',84,2,'8','Моторное масло MOBIL Super 3000 X1 5W-40, 4л'),('788',84,3,'8','Моторное масло MOBIL Super 3000 X1 5W-40, 4л'),('789',86,2,'8','Моторное масло MOBIL Super 3000 X1 5W-40, 4л '),('790',86,3,'8','Моторное масло MOBIL Super 3000 X1 5W-40, 4л '),('791',87,2,'8','/m/o/mobil-super-3000-x1-5w-40_1_copy_1_11.jpg'),('792',87,3,'8','/m/o/mobil-super-3000-x1-5w-40_1_copy_1_11.jpg'),('793',88,2,'8','/m/o/mobil-super-3000-x1-5w-40_1_copy_1_11.jpg'),('794',88,3,'8','/m/o/mobil-super-3000-x1-5w-40_1_copy_1_11.jpg'),('795',89,2,'8','/m/o/mobil-super-3000-x1-5w-40_1_copy_1_11.jpg'),('796',89,3,'8','/m/o/mobil-super-3000-x1-5w-40_1_copy_1_11.jpg'),('797',106,2,'8','container2'),('798',106,3,'8','container2'),('799',119,2,'8','motornoe-maslo-mobil-super-3000-x1-5w-40-4l'),('800',119,3,'8','motornoe-maslo-mobil-super-3000-x1-5w-40-4l-1'),('801',132,2,'8','/m/o/mobil-super-3000-x1-5w-40_1_copy_1_11.jpg'),('802',132,3,'8','/m/o/mobil-super-3000-x1-5w-40_1_copy_1_11.jpg'),('872',73,0,'9','Motor Oil Castrol Magnatec 3000 X1 5W-40, 4L'),('873',84,0,'9','Моторное масло MOBIL Super 3000 X1 5W-40, 4л'),('874',86,0,'9','Моторное масло MOBIL Super 3000 X1 5W-40, 4л '),('875',87,0,'9','/m/o/mobil-super-3000-x1-5w-40_1_copy6_1_5_3.jpg'),('876',88,0,'9','/m/o/mobil-super-3000-x1-5w-40_1_copy6_1_5_3.jpg'),('877',89,0,'9','/m/o/mobil-super-3000-x1-5w-40_1_copy6_1_5_3.jpg'),('878',106,0,'9','container2'),('879',119,0,'9','motornoe-maslo-mobil-super-3000-x1-5w-40-4l-8'),('880',132,0,'9','/m/o/mobil-super-3000-x1-5w-40_1_copy6_1_5_3.jpg'),('881',134,0,'9','2'),('882',138,0,'9','14'),('883',139,0,'9','1,1'),('884',140,0,'9','0,0097'),('885',141,0,'9','222'),('886',142,0,'9','-39'),('891',73,2,'9','Моторное масло Castrol Magnatec 3000 X1 5W-40, 4L'),('892',73,3,'9','Моторна олива Castrol Magnatec 3000 X1 5W-40, 4L'),('893',84,2,'9','Моторное масло MOBIL Super 3000 X1 5W-40, 4л'),('894',84,3,'9','Моторное масло MOBIL Super 3000 X1 5W-40, 4л'),('895',86,2,'9','Моторное масло MOBIL Super 3000 X1 5W-40, 4л '),('896',86,3,'9','Моторное масло MOBIL Super 3000 X1 5W-40, 4л '),('897',87,2,'9','/m/o/mobil-super-3000-x1-5w-40_1_copy6_1_5_3.jpg'),('898',87,3,'9','/m/o/mobil-super-3000-x1-5w-40_1_copy6_1_5_3.jpg'),('899',88,2,'9','/m/o/mobil-super-3000-x1-5w-40_1_copy6_1_5_3.jpg'),('900',88,3,'9','/m/o/mobil-super-3000-x1-5w-40_1_copy6_1_5_3.jpg'),('901',89,2,'9','/m/o/mobil-super-3000-x1-5w-40_1_copy6_1_5_3.jpg'),('902',89,3,'9','/m/o/mobil-super-3000-x1-5w-40_1_copy6_1_5_3.jpg'),('903',106,2,'9','container2'),('904',106,3,'9','container2'),('905',119,2,'9','motornoe-maslo-mobil-super-3000-x1-5w-40-4l'),('906',119,3,'9','motornoe-maslo-mobil-super-3000-x1-5w-40-4l-1'),('907',132,2,'9','/m/o/mobil-super-3000-x1-5w-40_1_copy6_1_5_3.jpg'),('908',132,3,'9','/m/o/mobil-super-3000-x1-5w-40_1_copy6_1_5_3.jpg'),('992',114,0,'1','UA'),('1060',73,3,'1','Моторна олива MOBIL Super 3000 X1 5W-40, 4L'),('1061',87,3,'1','/m/o/mobil-super-3000-x1-5w-40_1.jpg'),('1062',88,3,'1','/m/o/mobil-super-3000-x1-5w-40_1.jpg'),('1063',89,3,'1','/m/o/mobil-super-3000-x1-5w-40_1.jpg'),('1064',106,3,'1','container2'),('1065',119,3,'1','motor-oil-mobil-super-3000-x1-5w-40-4l'),('1066',132,3,'1','/m/o/mobil-super-3000-x1-5w-40_1.jpg'),('1087',73,2,'1','Моторное масло MOBIL Super 3000 X1 5W-40, 4L');
/*!40000 ALTER TABLE `catalog_product_entity_varchar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_index_eav`
--

DROP TABLE IF EXISTS `catalog_product_index_eav`;
CREATE TABLE `catalog_product_index_eav` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` int(10) unsigned NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_STORE_ID` (`store_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Index Table';

--
-- Table structure for table `catalog_product_index_eav_decimal`
--

DROP TABLE IF EXISTS `catalog_product_index_eav_decimal`;
CREATE TABLE `catalog_product_index_eav_decimal` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_STORE_ID` (`store_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Index Table';

--
-- Table structure for table `catalog_product_index_eav_decimal_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_eav_decimal_idx`;
CREATE TABLE `catalog_product_index_eav_decimal_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_STORE_ID` (`store_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Indexer Index Table';

--
-- Table structure for table `catalog_product_index_eav_decimal_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_eav_decimal_tmp`;
CREATE TABLE `catalog_product_index_eav_decimal_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_STORE_ID` (`store_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_VALUE` (`value`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Indexer Temp Table';

--
-- Table structure for table `catalog_product_index_eav_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_eav_idx`;
CREATE TABLE `catalog_product_index_eav_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` int(10) unsigned NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_IDX_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_IDX_STORE_ID` (`store_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_IDX_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Indexer Index Table';

--
-- Table structure for table `catalog_product_index_eav_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_eav_tmp`;
CREATE TABLE `catalog_product_index_eav_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` int(10) unsigned NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_TMP_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_TMP_STORE_ID` (`store_id`),
  KEY `CATALOG_PRODUCT_INDEX_EAV_TMP_VALUE` (`value`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Indexer Temp Table';

--
-- Table structure for table `catalog_product_index_price`
--

DROP TABLE IF EXISTS `catalog_product_index_price`;
CREATE TABLE `catalog_product_index_price` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(12,4) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `CATALOG_PRODUCT_INDEX_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `CATALOG_PRODUCT_INDEX_PRICE_MIN_PRICE` (`min_price`),
  KEY `CAT_PRD_IDX_PRICE_WS_ID_CSTR_GROUP_ID_MIN_PRICE` (`website_id`,`customer_group_id`,`min_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Index Table';

--
-- Dumping data for table `catalog_product_index_price`
--

LOCK TABLES `catalog_product_index_price` WRITE;
/*!40000 ALTER TABLE `catalog_product_index_price` DISABLE KEYS */;
INSERT INTO `catalog_product_index_price` VALUES ('1',0,1,2,'456.0000','456.0000','456.0000','456.0000',NULL),('1',1,1,2,'456.0000','456.0000','456.0000','456.0000',NULL),('1',2,1,2,'456.0000','456.0000','456.0000','456.0000',NULL),('1',3,1,2,'456.0000','456.0000','456.0000','456.0000',NULL),('2',0,1,2,'125.0000','104.0000','104.0000','104.0000',NULL),('2',1,1,2,'125.0000','104.0000','104.0000','104.0000',NULL),('2',2,1,2,'125.0000','104.0000','104.0000','104.0000',NULL),('2',3,1,2,'125.0000','104.0000','104.0000','104.0000',NULL),('3',0,1,2,'456.0000','456.0000','456.0000','456.0000',NULL),('3',1,1,2,'456.0000','456.0000','456.0000','456.0000',NULL),('3',2,1,2,'456.0000','456.0000','456.0000','456.0000',NULL),('3',3,1,2,'456.0000','456.0000','456.0000','456.0000',NULL),('4',0,1,2,'456.0000','456.0000','456.0000','456.0000',NULL),('4',1,1,2,'456.0000','456.0000','456.0000','456.0000',NULL),('4',2,1,2,'456.0000','456.0000','456.0000','456.0000',NULL),('4',3,1,2,'456.0000','456.0000','456.0000','456.0000',NULL),('5',0,1,2,'456.0000','456.0000','456.0000','456.0000',NULL),('5',1,1,2,'456.0000','456.0000','456.0000','456.0000',NULL),('5',2,1,2,'456.0000','456.0000','456.0000','456.0000',NULL),('5',3,1,2,'456.0000','456.0000','456.0000','456.0000',NULL),('6',0,1,2,'125.0000','114.0000','114.0000','114.0000',NULL),('6',1,1,2,'125.0000','114.0000','114.0000','114.0000',NULL),('6',2,1,2,'125.0000','114.0000','114.0000','114.0000',NULL),('6',3,1,2,'125.0000','114.0000','114.0000','114.0000',NULL),('7',0,1,2,'456.0000','456.0000','456.0000','456.0000',NULL),('7',1,1,2,'456.0000','456.0000','456.0000','456.0000',NULL),('7',2,1,2,'456.0000','456.0000','456.0000','456.0000',NULL),('7',3,1,2,'456.0000','456.0000','456.0000','456.0000',NULL),('8',0,1,2,'125.0000','104.0000','104.0000','104.0000',NULL),('8',1,1,2,'125.0000','104.0000','104.0000','104.0000',NULL),('8',2,1,2,'125.0000','104.0000','104.0000','104.0000',NULL),('8',3,1,2,'125.0000','104.0000','104.0000','104.0000',NULL),('9',0,1,2,'125.0000','104.0000','104.0000','104.0000',NULL),('9',1,1,2,'125.0000','104.0000','104.0000','104.0000',NULL),('9',2,1,2,'125.0000','104.0000','104.0000','104.0000',NULL),('9',3,1,2,'125.0000','104.0000','104.0000','104.0000',NULL);
/*!40000 ALTER TABLE `catalog_product_index_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_index_price_bundle_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_price_bundle_idx`;
CREATE TABLE `catalog_product_index_price_bundle_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class Id',
  `price_type` smallint(5) unsigned NOT NULL COMMENT 'Price Type',
  `special_price` decimal(12,4) DEFAULT NULL COMMENT 'Special Price',
  `tier_percent` decimal(12,4) DEFAULT NULL COMMENT 'Tier Percent',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Orig Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Idx';

--
-- Table structure for table `catalog_product_index_price_bundle_opt_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_price_bundle_opt_idx`;
CREATE TABLE `catalog_product_index_price_bundle_opt_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `alt_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `alt_tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Opt Idx';

--
-- Table structure for table `catalog_product_index_price_bundle_opt_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_price_bundle_opt_tmp`;
CREATE TABLE `catalog_product_index_price_bundle_opt_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `alt_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `alt_tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Opt Tmp';

--
-- Table structure for table `catalog_product_index_price_bundle_sel_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_price_bundle_sel_idx`;
CREATE TABLE `catalog_product_index_price_bundle_sel_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `selection_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Selection Id',
  `group_type` smallint(5) unsigned DEFAULT '0' COMMENT 'Group Type',
  `is_required` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Required',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`,`selection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Sel Idx';

--
-- Table structure for table `catalog_product_index_price_bundle_sel_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_price_bundle_sel_tmp`;
CREATE TABLE `catalog_product_index_price_bundle_sel_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `selection_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Selection Id',
  `group_type` smallint(5) unsigned DEFAULT '0' COMMENT 'Group Type',
  `is_required` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Required',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`,`selection_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Sel Tmp';

--
-- Table structure for table `catalog_product_index_price_bundle_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_price_bundle_tmp`;
CREATE TABLE `catalog_product_index_price_bundle_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class Id',
  `price_type` smallint(5) unsigned NOT NULL COMMENT 'Price Type',
  `special_price` decimal(12,4) DEFAULT NULL COMMENT 'Special Price',
  `tier_percent` decimal(12,4) DEFAULT NULL COMMENT 'Tier Percent',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Orig Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Tmp';

--
-- Table structure for table `catalog_product_index_price_cfg_opt_agr_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_price_cfg_opt_agr_idx`;
CREATE TABLE `catalog_product_index_price_cfg_opt_agr_idx` (
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) unsigned NOT NULL COMMENT 'Child ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`parent_id`,`child_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Aggregate Index Table';

--
-- Table structure for table `catalog_product_index_price_cfg_opt_agr_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_price_cfg_opt_agr_tmp`;
CREATE TABLE `catalog_product_index_price_cfg_opt_agr_tmp` (
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) unsigned NOT NULL COMMENT 'Child ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`parent_id`,`child_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Aggregate Temp Table';

--
-- Table structure for table `catalog_product_index_price_cfg_opt_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_price_cfg_opt_idx`;
CREATE TABLE `catalog_product_index_price_cfg_opt_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Index Table';

--
-- Table structure for table `catalog_product_index_price_cfg_opt_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_price_cfg_opt_tmp`;
CREATE TABLE `catalog_product_index_price_cfg_opt_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Temp Table';

--
-- Table structure for table `catalog_product_index_price_downlod_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_price_downlod_idx`;
CREATE TABLE `catalog_product_index_price_downlod_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Minimum price',
  `max_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Maximum price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Indexer Table for price of downloadable products';

--
-- Table structure for table `catalog_product_index_price_downlod_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_price_downlod_tmp`;
CREATE TABLE `catalog_product_index_price_downlod_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Minimum price',
  `max_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Maximum price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Temporary Indexer Table for price of downloadable products';

--
-- Table structure for table `catalog_product_index_price_final_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_price_final_idx`;
CREATE TABLE `catalog_product_index_price_final_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Final Index Table';

--
-- Table structure for table `catalog_product_index_price_final_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_price_final_tmp`;
CREATE TABLE `catalog_product_index_price_final_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Final Temp Table';

--
-- Table structure for table `catalog_product_index_price_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_price_idx`;
CREATE TABLE `catalog_product_index_price_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(12,4) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `CATALOG_PRODUCT_INDEX_PRICE_IDX_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `CATALOG_PRODUCT_INDEX_PRICE_IDX_WEBSITE_ID` (`website_id`),
  KEY `CATALOG_PRODUCT_INDEX_PRICE_IDX_MIN_PRICE` (`min_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Index Table';

--
-- Dumping data for table `catalog_product_index_price_idx`
--

LOCK TABLES `catalog_product_index_price_idx` WRITE;
/*!40000 ALTER TABLE `catalog_product_index_price_idx` DISABLE KEYS */;
INSERT INTO `catalog_product_index_price_idx` VALUES ('1',0,1,2,'456.0000','456.0000','456.0000','456.0000',NULL),('1',1,1,2,'456.0000','456.0000','456.0000','456.0000',NULL),('1',2,1,2,'456.0000','456.0000','456.0000','456.0000',NULL),('1',3,1,2,'456.0000','456.0000','456.0000','456.0000',NULL),('2',0,1,2,'125.0000','104.0000','104.0000','104.0000',NULL),('2',1,1,2,'125.0000','104.0000','104.0000','104.0000',NULL),('2',2,1,2,'125.0000','104.0000','104.0000','104.0000',NULL),('2',3,1,2,'125.0000','104.0000','104.0000','104.0000',NULL),('3',0,1,2,'456.0000','456.0000','456.0000','456.0000',NULL),('3',1,1,2,'456.0000','456.0000','456.0000','456.0000',NULL),('3',2,1,2,'456.0000','456.0000','456.0000','456.0000',NULL),('3',3,1,2,'456.0000','456.0000','456.0000','456.0000',NULL),('4',0,1,2,'456.0000','456.0000','456.0000','456.0000',NULL),('4',1,1,2,'456.0000','456.0000','456.0000','456.0000',NULL),('4',2,1,2,'456.0000','456.0000','456.0000','456.0000',NULL),('4',3,1,2,'456.0000','456.0000','456.0000','456.0000',NULL),('5',0,1,2,'456.0000','456.0000','456.0000','456.0000',NULL),('5',1,1,2,'456.0000','456.0000','456.0000','456.0000',NULL),('5',2,1,2,'456.0000','456.0000','456.0000','456.0000',NULL),('5',3,1,2,'456.0000','456.0000','456.0000','456.0000',NULL),('6',0,1,2,'125.0000','114.0000','114.0000','114.0000',NULL),('6',1,1,2,'125.0000','114.0000','114.0000','114.0000',NULL),('6',2,1,2,'125.0000','114.0000','114.0000','114.0000',NULL),('6',3,1,2,'125.0000','114.0000','114.0000','114.0000',NULL),('7',0,1,2,'456.0000','456.0000','456.0000','456.0000',NULL),('7',1,1,2,'456.0000','456.0000','456.0000','456.0000',NULL),('7',2,1,2,'456.0000','456.0000','456.0000','456.0000',NULL),('7',3,1,2,'456.0000','456.0000','456.0000','456.0000',NULL),('8',0,1,2,'125.0000','104.0000','104.0000','104.0000',NULL),('8',1,1,2,'125.0000','104.0000','104.0000','104.0000',NULL),('8',2,1,2,'125.0000','104.0000','104.0000','104.0000',NULL),('8',3,1,2,'125.0000','104.0000','104.0000','104.0000',NULL),('9',0,1,2,'125.0000','104.0000','104.0000','104.0000',NULL),('9',1,1,2,'125.0000','104.0000','104.0000','104.0000',NULL),('9',2,1,2,'125.0000','104.0000','104.0000','104.0000',NULL),('9',3,1,2,'125.0000','104.0000','104.0000','104.0000',NULL);
/*!40000 ALTER TABLE `catalog_product_index_price_idx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_index_price_opt_agr_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_price_opt_agr_idx`;
CREATE TABLE `catalog_product_index_price_opt_agr_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Aggregate Index Table';

--
-- Table structure for table `catalog_product_index_price_opt_agr_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_price_opt_agr_tmp`;
CREATE TABLE `catalog_product_index_price_opt_agr_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Aggregate Temp Table';

--
-- Table structure for table `catalog_product_index_price_opt_idx`
--

DROP TABLE IF EXISTS `catalog_product_index_price_opt_idx`;
CREATE TABLE `catalog_product_index_price_opt_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Index Table';

--
-- Table structure for table `catalog_product_index_price_opt_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_price_opt_tmp`;
CREATE TABLE `catalog_product_index_price_opt_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Temp Table';

--
-- Table structure for table `catalog_product_index_price_tmp`
--

DROP TABLE IF EXISTS `catalog_product_index_price_tmp`;
CREATE TABLE `catalog_product_index_price_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(12,4) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `CATALOG_PRODUCT_INDEX_PRICE_TMP_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `CATALOG_PRODUCT_INDEX_PRICE_TMP_WEBSITE_ID` (`website_id`),
  KEY `CATALOG_PRODUCT_INDEX_PRICE_TMP_MIN_PRICE` (`min_price`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Temp Table';

--
-- Table structure for table `catalog_product_index_tier_price`
--

DROP TABLE IF EXISTS `catalog_product_index_tier_price`;
CREATE TABLE `catalog_product_index_tier_price` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `CATALOG_PRODUCT_INDEX_TIER_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `CATALOG_PRODUCT_INDEX_TIER_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Tier Price Index Table';

--
-- Table structure for table `catalog_product_index_website`
--

DROP TABLE IF EXISTS `catalog_product_index_website`;
CREATE TABLE `catalog_product_index_website` (
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `website_date` date DEFAULT NULL COMMENT 'Website Date',
  `rate` float DEFAULT '1' COMMENT 'Rate',
  PRIMARY KEY (`website_id`),
  KEY `CATALOG_PRODUCT_INDEX_WEBSITE_WEBSITE_DATE` (`website_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Website Index Table';

--
-- Dumping data for table `catalog_product_index_website`
--

LOCK TABLES `catalog_product_index_website` WRITE;
/*!40000 ALTER TABLE `catalog_product_index_website` DISABLE KEYS */;
INSERT INTO `catalog_product_index_website` VALUES (1,'2017-08-25','1');
/*!40000 ALTER TABLE `catalog_product_index_website` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_link`
--

DROP TABLE IF EXISTS `catalog_product_link`;
CREATE TABLE `catalog_product_link` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `linked_product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Linked Product ID',
  `link_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Link Type ID',
  PRIMARY KEY (`link_id`),
  UNIQUE KEY `CATALOG_PRODUCT_LINK_LINK_TYPE_ID_PRODUCT_ID_LINKED_PRODUCT_ID` (`link_type_id`,`product_id`,`linked_product_id`),
  KEY `CATALOG_PRODUCT_LINK_PRODUCT_ID` (`product_id`),
  KEY `CATALOG_PRODUCT_LINK_LINKED_PRODUCT_ID` (`linked_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Product Linkage Table';

--
-- Dumping data for table `catalog_product_link`
--

LOCK TABLES `catalog_product_link` WRITE;
/*!40000 ALTER TABLE `catalog_product_link` DISABLE KEYS */;
INSERT INTO `catalog_product_link` VALUES ('155','1','2',1),('156','1','3',1),('157','1','5',1),('158','1','6',1),('159','1','7',1),('160','1','8',1),('161','1','9',1);
/*!40000 ALTER TABLE `catalog_product_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_link_attribute`
--

DROP TABLE IF EXISTS `catalog_product_link_attribute`;
CREATE TABLE `catalog_product_link_attribute` (
  `product_link_attribute_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product Link Attribute ID',
  `link_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Link Type ID',
  `product_link_attribute_code` varchar(32) DEFAULT NULL COMMENT 'Product Link Attribute Code',
  `data_type` varchar(32) DEFAULT NULL COMMENT 'Data Type',
  PRIMARY KEY (`product_link_attribute_id`),
  KEY `CATALOG_PRODUCT_LINK_ATTRIBUTE_LINK_TYPE_ID` (`link_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Attribute Table';

--
-- Dumping data for table `catalog_product_link_attribute`
--

LOCK TABLES `catalog_product_link_attribute` WRITE;
/*!40000 ALTER TABLE `catalog_product_link_attribute` DISABLE KEYS */;
INSERT INTO `catalog_product_link_attribute` VALUES (1,1,'position','int'),(2,4,'position','int'),(3,5,'position','int'),(4,3,'position','int'),(5,3,'qty','decimal');
/*!40000 ALTER TABLE `catalog_product_link_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_link_attribute_decimal`
--

DROP TABLE IF EXISTS `catalog_product_link_attribute_decimal`;
CREATE TABLE `catalog_product_link_attribute_decimal` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Product Link Attribute ID',
  `link_id` int(10) unsigned NOT NULL COMMENT 'Link ID',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CAT_PRD_LNK_ATTR_DEC_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  KEY `CATALOG_PRODUCT_LINK_ATTRIBUTE_DECIMAL_LINK_ID` (`link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Decimal Attribute Table';

--
-- Table structure for table `catalog_product_link_attribute_int`
--

DROP TABLE IF EXISTS `catalog_product_link_attribute_int`;
CREATE TABLE `catalog_product_link_attribute_int` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Product Link Attribute ID',
  `link_id` int(10) unsigned NOT NULL COMMENT 'Link ID',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CAT_PRD_LNK_ATTR_INT_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  KEY `CATALOG_PRODUCT_LINK_ATTRIBUTE_INT_LINK_ID` (`link_id`)
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Integer Attribute Table';

--
-- Dumping data for table `catalog_product_link_attribute_int`
--

LOCK TABLES `catalog_product_link_attribute_int` WRITE;
/*!40000 ALTER TABLE `catalog_product_link_attribute_int` DISABLE KEYS */;
INSERT INTO `catalog_product_link_attribute_int` VALUES ('155',1,'155','1'),('156',1,'156','2'),('157',1,'157','3'),('158',1,'158','4'),('159',1,'159','5'),('160',1,'160','6'),('161',1,'161','7');
/*!40000 ALTER TABLE `catalog_product_link_attribute_int` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_link_attribute_varchar`
--

DROP TABLE IF EXISTS `catalog_product_link_attribute_varchar`;
CREATE TABLE `catalog_product_link_attribute_varchar` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Link Attribute ID',
  `link_id` int(10) unsigned NOT NULL COMMENT 'Link ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CAT_PRD_LNK_ATTR_VCHR_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  KEY `CATALOG_PRODUCT_LINK_ATTRIBUTE_VARCHAR_LINK_ID` (`link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Varchar Attribute Table';

--
-- Table structure for table `catalog_product_link_type`
--

DROP TABLE IF EXISTS `catalog_product_link_type`;
CREATE TABLE `catalog_product_link_type` (
  `link_type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link Type ID',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code',
  PRIMARY KEY (`link_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Type Table';

--
-- Dumping data for table `catalog_product_link_type`
--

LOCK TABLES `catalog_product_link_type` WRITE;
/*!40000 ALTER TABLE `catalog_product_link_type` DISABLE KEYS */;
INSERT INTO `catalog_product_link_type` VALUES (1,'relation'),(3,'super'),(4,'up_sell'),(5,'cross_sell');
/*!40000 ALTER TABLE `catalog_product_link_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_product_option`
--

DROP TABLE IF EXISTS `catalog_product_option`;
CREATE TABLE `catalog_product_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `type` varchar(50) DEFAULT NULL COMMENT 'Type',
  `is_require` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Required',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `max_characters` int(10) unsigned DEFAULT NULL COMMENT 'Max Characters',
  `file_extension` varchar(50) DEFAULT NULL COMMENT 'File Extension',
  `image_size_x` smallint(5) unsigned DEFAULT NULL COMMENT 'Image Size X',
  `image_size_y` smallint(5) unsigned DEFAULT NULL COMMENT 'Image Size Y',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`option_id`),
  KEY `CATALOG_PRODUCT_OPTION_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Table';

--
-- Table structure for table `catalog_product_option_price`
--

DROP TABLE IF EXISTS `catalog_product_option_price`;
CREATE TABLE `catalog_product_option_price` (
  `option_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Price ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `price_type` varchar(7) NOT NULL DEFAULT 'fixed' COMMENT 'Price Type',
  PRIMARY KEY (`option_price_id`),
  UNIQUE KEY `CATALOG_PRODUCT_OPTION_PRICE_OPTION_ID_STORE_ID` (`option_id`,`store_id`),
  KEY `CATALOG_PRODUCT_OPTION_PRICE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Price Table';

--
-- Table structure for table `catalog_product_option_title`
--

DROP TABLE IF EXISTS `catalog_product_option_title`;
CREATE TABLE `catalog_product_option_title` (
  `option_title_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Title ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`option_title_id`),
  UNIQUE KEY `CATALOG_PRODUCT_OPTION_TITLE_OPTION_ID_STORE_ID` (`option_id`,`store_id`),
  KEY `CATALOG_PRODUCT_OPTION_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Title Table';

--
-- Table structure for table `catalog_product_option_type_price`
--

DROP TABLE IF EXISTS `catalog_product_option_type_price`;
CREATE TABLE `catalog_product_option_type_price` (
  `option_type_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Type Price ID',
  `option_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Type ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `price_type` varchar(7) NOT NULL DEFAULT 'fixed' COMMENT 'Price Type',
  PRIMARY KEY (`option_type_price_id`),
  UNIQUE KEY `CATALOG_PRODUCT_OPTION_TYPE_PRICE_OPTION_TYPE_ID_STORE_ID` (`option_type_id`,`store_id`),
  KEY `CATALOG_PRODUCT_OPTION_TYPE_PRICE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Price Table';

--
-- Table structure for table `catalog_product_option_type_title`
--

DROP TABLE IF EXISTS `catalog_product_option_type_title`;
CREATE TABLE `catalog_product_option_type_title` (
  `option_type_title_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Type Title ID',
  `option_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Type ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`option_type_title_id`),
  UNIQUE KEY `CATALOG_PRODUCT_OPTION_TYPE_TITLE_OPTION_TYPE_ID_STORE_ID` (`option_type_id`,`store_id`),
  KEY `CATALOG_PRODUCT_OPTION_TYPE_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Title Table';

--
-- Table structure for table `catalog_product_option_type_value`
--

DROP TABLE IF EXISTS `catalog_product_option_type_value`;
CREATE TABLE `catalog_product_option_type_value` (
  `option_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Type ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`option_type_id`),
  KEY `CATALOG_PRODUCT_OPTION_TYPE_VALUE_OPTION_ID` (`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Value Table';

--
-- Table structure for table `catalog_product_relation`
--

DROP TABLE IF EXISTS `catalog_product_relation`;
CREATE TABLE `catalog_product_relation` (
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) unsigned NOT NULL COMMENT 'Child ID',
  PRIMARY KEY (`parent_id`,`child_id`),
  KEY `CATALOG_PRODUCT_RELATION_CHILD_ID` (`child_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Relation Table';

--
-- Table structure for table `catalog_product_super_attribute`
--

DROP TABLE IF EXISTS `catalog_product_super_attribute`;
CREATE TABLE `catalog_product_super_attribute` (
  `product_super_attribute_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product Super Attribute ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `position` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Position',
  PRIMARY KEY (`product_super_attribute_id`),
  UNIQUE KEY `CATALOG_PRODUCT_SUPER_ATTRIBUTE_PRODUCT_ID_ATTRIBUTE_ID` (`product_id`,`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Attribute Table';

--
-- Table structure for table `catalog_product_super_attribute_label`
--

DROP TABLE IF EXISTS `catalog_product_super_attribute_label`;
CREATE TABLE `catalog_product_super_attribute_label` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_super_attribute_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Super Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `use_default` smallint(5) unsigned DEFAULT '0' COMMENT 'Use Default Value',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CAT_PRD_SPR_ATTR_LBL_PRD_SPR_ATTR_ID_STORE_ID` (`product_super_attribute_id`,`store_id`),
  KEY `CATALOG_PRODUCT_SUPER_ATTRIBUTE_LABEL_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Attribute Label Table';

--
-- Table structure for table `catalog_product_super_link`
--

DROP TABLE IF EXISTS `catalog_product_super_link`;
CREATE TABLE `catalog_product_super_link` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent ID',
  PRIMARY KEY (`link_id`),
  UNIQUE KEY `CATALOG_PRODUCT_SUPER_LINK_PRODUCT_ID_PARENT_ID` (`product_id`,`parent_id`),
  KEY `CATALOG_PRODUCT_SUPER_LINK_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Link Table';

--
-- Table structure for table `catalog_product_website`
--

DROP TABLE IF EXISTS `catalog_product_website`;
CREATE TABLE `catalog_product_website` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  PRIMARY KEY (`product_id`,`website_id`),
  KEY `CATALOG_PRODUCT_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Website Linkage Table';

--
-- Dumping data for table `catalog_product_website`
--

LOCK TABLES `catalog_product_website` WRITE;
/*!40000 ALTER TABLE `catalog_product_website` DISABLE KEYS */;
INSERT INTO `catalog_product_website` VALUES ('1',1),('2',1),('3',1),('4',1),('5',1),('6',1),('7',1),('8',1),('9',1);
/*!40000 ALTER TABLE `catalog_product_website` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_url_rewrite_product_category`
--

DROP TABLE IF EXISTS `catalog_url_rewrite_product_category`;
CREATE TABLE `catalog_url_rewrite_product_category` (
  `url_rewrite_id` int(10) unsigned NOT NULL COMMENT 'url_rewrite_id',
  `category_id` int(10) unsigned NOT NULL COMMENT 'category_id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'product_id',
  KEY `CATALOG_URL_REWRITE_PRODUCT_CATEGORY_CATEGORY_ID_PRODUCT_ID` (`category_id`,`product_id`),
  KEY `CAT_URL_REWRITE_PRD_CTGR_PRD_ID_CAT_PRD_ENTT_ENTT_ID` (`product_id`),
  KEY `FK_BB79E64705D7F17FE181F23144528FC8` (`url_rewrite_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='url_rewrite_relation';

--
-- Dumping data for table `catalog_url_rewrite_product_category`
--

LOCK TABLES `catalog_url_rewrite_product_category` WRITE;
/*!40000 ALTER TABLE `catalog_url_rewrite_product_category` DISABLE KEYS */;
INSERT INTO `catalog_url_rewrite_product_category` VALUES ('221','3','3'),('220','9','3'),('223','8','3'),('222','7','3'),('236','3','4'),('235','9','4'),('238','8','4'),('237','7','4'),('296','3','5'),('295','9','5'),('298','8','5'),('297','7','5'),('356','3','6'),('355','9','6'),('358','8','6'),('357','7','6'),('470','3','7'),('469','9','7'),('472','8','7'),('471','7','7'),('560','3','8'),('559','9','8'),('562','8','8'),('561','7','8'),('605','3','9'),('604','9','9'),('607','8','9'),('606','7','9'),('1392','9','3'),('1393','3','3'),('1394','7','3'),('1395','8','3'),('1397','9','4'),('1398','3','4'),('1399','7','4'),('1400','8','4'),('1402','9','5'),('1403','3','5'),('1404','7','5'),('1405','8','5'),('1407','9','6'),('1408','3','6'),('1409','7','6'),('1410','8','6'),('1412','9','7'),('1413','3','7'),('1414','7','7'),('1415','8','7'),('1417','9','8'),('1418','3','8'),('1419','7','8'),('1420','8','8'),('1422','9','9'),('1423','3','9'),('1424','7','9'),('1425','8','9'),('1437','3','1'),('1430','3','1'),('1434','9','1'),('1427','9','1'),('1439','8','1'),('1432','8','1'),('1438','7','1'),('1431','7','1'),('1444','3','2'),('1441','9','2'),('1446','8','2'),('1445','7','2'),('1449','3','2'),('1448','9','2'),('1451','8','2'),('1450','7','2'),('1454','3','2'),('1453','9','2'),('1456','8','2'),('1455','7','2'),('1472','3','1'),('1470','9','1'),('1474','8','1'),('1473','7','1');
/*!40000 ALTER TABLE `catalog_url_rewrite_product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cataloginventory_stock`
--

DROP TABLE IF EXISTS `cataloginventory_stock`;
CREATE TABLE `cataloginventory_stock` (
  `stock_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Stock Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `stock_name` varchar(255) DEFAULT NULL COMMENT 'Stock Name',
  PRIMARY KEY (`stock_id`),
  KEY `CATALOGINVENTORY_STOCK_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock';

--
-- Dumping data for table `cataloginventory_stock`
--

LOCK TABLES `cataloginventory_stock` WRITE;
/*!40000 ALTER TABLE `cataloginventory_stock` DISABLE KEYS */;
INSERT INTO `cataloginventory_stock` VALUES (1,0,'Default');
/*!40000 ALTER TABLE `cataloginventory_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cataloginventory_stock_item`
--

DROP TABLE IF EXISTS `cataloginventory_stock_item`;
CREATE TABLE `cataloginventory_stock_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item Id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `stock_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Stock Id',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `min_qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Min Qty',
  `use_config_min_qty` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Min Qty',
  `is_qty_decimal` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Qty Decimal',
  `backorders` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Backorders',
  `use_config_backorders` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Backorders',
  `min_sale_qty` decimal(12,4) NOT NULL DEFAULT '1.0000' COMMENT 'Min Sale Qty',
  `use_config_min_sale_qty` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Min Sale Qty',
  `max_sale_qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Max Sale Qty',
  `use_config_max_sale_qty` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Max Sale Qty',
  `is_in_stock` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is In Stock',
  `low_stock_date` timestamp NULL DEFAULT NULL COMMENT 'Low Stock Date',
  `notify_stock_qty` decimal(12,4) DEFAULT NULL COMMENT 'Notify Stock Qty',
  `use_config_notify_stock_qty` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Notify Stock Qty',
  `manage_stock` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Manage Stock',
  `use_config_manage_stock` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Manage Stock',
  `stock_status_changed_auto` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Stock Status Changed Automatically',
  `use_config_qty_increments` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Qty Increments',
  `qty_increments` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Increments',
  `use_config_enable_qty_inc` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Enable Qty Increments',
  `enable_qty_increments` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Enable Qty Increments',
  `is_decimal_divided` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Divided into Multiple Boxes for Shipping',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Divided into Multiple Boxes for Shipping',
  PRIMARY KEY (`item_id`),
  UNIQUE KEY `CATALOGINVENTORY_STOCK_ITEM_PRODUCT_ID_WEBSITE_ID` (`product_id`,`website_id`),
  KEY `CATALOGINVENTORY_STOCK_ITEM_WEBSITE_ID` (`website_id`),
  KEY `CATALOGINVENTORY_STOCK_ITEM_STOCK_ID` (`stock_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Item';

--
-- Dumping data for table `cataloginventory_stock_item`
--

LOCK TABLES `cataloginventory_stock_item` WRITE;
/*!40000 ALTER TABLE `cataloginventory_stock_item` DISABLE KEYS */;
INSERT INTO `cataloginventory_stock_item` VALUES ('1','1',1,'10000.0000','0.0000',1,0,0,1,'1.0000',1,'10000.0000',1,0,NULL,'1.0000',1,1,1,0,1,'1.0000',1,0,0,0),('2','2',1,'10000.0000','0.0000',1,0,0,1,'1.0000',1,'10000.0000',1,0,NULL,'1.0000',1,1,1,0,1,'1.0000',1,0,0,0),('3','3',1,'10000.0000','0.0000',1,0,0,1,'1.0000',1,'10000.0000',1,1,NULL,'1.0000',1,1,1,0,1,'1.0000',1,0,0,0),('4','4',1,'10000.0000','0.0000',1,0,0,1,'1.0000',1,'10000.0000',1,1,NULL,'1.0000',1,1,1,0,1,'1.0000',1,0,0,0),('5','5',1,'9.0000','0.0000',1,0,0,1,'1.0000',1,'10000.0000',1,1,NULL,'1.0000',1,1,1,0,1,'1.0000',1,0,0,0),('6','6',1,'10000.0000','0.0000',1,0,0,1,'1.0000',1,'10000.0000',1,1,NULL,'1.0000',1,1,1,0,1,'1.0000',1,0,0,0),('7','7',1,'10000.0000','0.0000',1,0,0,1,'1.0000',1,'10000.0000',1,1,NULL,'1.0000',1,1,1,0,1,'1.0000',1,0,0,0),('8','8',1,'10000.0000','0.0000',1,0,0,1,'1.0000',1,'10000.0000',1,1,NULL,'1.0000',1,1,1,0,1,'1.0000',1,0,0,0),('9','9',1,'10000.0000','0.0000',1,0,0,1,'1.0000',1,'10000.0000',1,1,NULL,'1.0000',1,1,1,0,1,'1.0000',1,0,0,0);
/*!40000 ALTER TABLE `cataloginventory_stock_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cataloginventory_stock_status`
--

DROP TABLE IF EXISTS `cataloginventory_stock_status`;
CREATE TABLE `cataloginventory_stock_status` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) unsigned NOT NULL COMMENT 'Stock Status',
  PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  KEY `CATALOGINVENTORY_STOCK_STATUS_STOCK_ID` (`stock_id`),
  KEY `CATALOGINVENTORY_STOCK_STATUS_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status';

--
-- Dumping data for table `cataloginventory_stock_status`
--

LOCK TABLES `cataloginventory_stock_status` WRITE;
/*!40000 ALTER TABLE `cataloginventory_stock_status` DISABLE KEYS */;
INSERT INTO `cataloginventory_stock_status` VALUES ('1',0,1,'10000.0000',0),('2',0,1,'10000.0000',0),('3',0,1,'10000.0000',1),('4',0,1,'10000.0000',1),('5',0,1,'9.0000',1),('6',0,1,'10000.0000',1),('7',0,1,'10000.0000',1),('8',0,1,'10000.0000',1),('9',0,1,'10000.0000',1);
/*!40000 ALTER TABLE `cataloginventory_stock_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cataloginventory_stock_status_idx`
--

DROP TABLE IF EXISTS `cataloginventory_stock_status_idx`;
CREATE TABLE `cataloginventory_stock_status_idx` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) unsigned NOT NULL COMMENT 'Stock Status',
  PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  KEY `CATALOGINVENTORY_STOCK_STATUS_IDX_STOCK_ID` (`stock_id`),
  KEY `CATALOGINVENTORY_STOCK_STATUS_IDX_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status Indexer Idx';

--
-- Dumping data for table `cataloginventory_stock_status_idx`
--

LOCK TABLES `cataloginventory_stock_status_idx` WRITE;
/*!40000 ALTER TABLE `cataloginventory_stock_status_idx` DISABLE KEYS */;
INSERT INTO `cataloginventory_stock_status_idx` VALUES ('1',0,1,'10000.0000',0),('2',0,1,'10000.0000',0),('3',0,1,'10000.0000',1),('4',0,1,'10000.0000',1),('5',0,1,'9.0000',1),('6',0,1,'10000.0000',1),('7',0,1,'10000.0000',1),('8',0,1,'10000.0000',1),('9',0,1,'10000.0000',1);
/*!40000 ALTER TABLE `cataloginventory_stock_status_idx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cataloginventory_stock_status_tmp`
--

DROP TABLE IF EXISTS `cataloginventory_stock_status_tmp`;
CREATE TABLE `cataloginventory_stock_status_tmp` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) unsigned NOT NULL COMMENT 'Stock Status',
  PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  KEY `CATALOGINVENTORY_STOCK_STATUS_TMP_STOCK_ID` (`stock_id`),
  KEY `CATALOGINVENTORY_STOCK_STATUS_TMP_WEBSITE_ID` (`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status Indexer Tmp';

--
-- Table structure for table `catalogrule`
--

DROP TABLE IF EXISTS `catalogrule`;
CREATE TABLE `catalogrule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `from_date` date DEFAULT NULL COMMENT 'From',
  `to_date` date DEFAULT NULL COMMENT 'To',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `conditions_serialized` mediumtext COMMENT 'Conditions Serialized',
  `actions_serialized` mediumtext COMMENT 'Actions Serialized',
  `stop_rules_processing` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Stop Rules Processing',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  PRIMARY KEY (`rule_id`),
  KEY `CATALOGRULE_IS_ACTIVE_SORT_ORDER_TO_DATE_FROM_DATE` (`is_active`,`sort_order`,`to_date`,`from_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule';

--
-- Table structure for table `catalogrule_customer_group`
--

DROP TABLE IF EXISTS `catalogrule_customer_group`;
CREATE TABLE `catalogrule_customer_group` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  PRIMARY KEY (`rule_id`,`customer_group_id`),
  KEY `CATALOGRULE_CUSTOMER_GROUP_CUSTOMER_GROUP_ID` (`customer_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Rules To Customer Groups Relations';

--
-- Table structure for table `catalogrule_group_website`
--

DROP TABLE IF EXISTS `catalogrule_group_website`;
CREATE TABLE `catalogrule_group_website` (
  `rule_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Rule Id',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  PRIMARY KEY (`rule_id`,`customer_group_id`,`website_id`),
  KEY `CATALOGRULE_GROUP_WEBSITE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `CATALOGRULE_GROUP_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Group Website';

--
-- Table structure for table `catalogrule_product`
--

DROP TABLE IF EXISTS `catalogrule_product`;
CREATE TABLE `catalogrule_product` (
  `rule_product_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Product Id',
  `rule_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Rule Id',
  `from_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'From Time',
  `to_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'To time',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group Id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `action_operator` varchar(10) DEFAULT 'to_fixed' COMMENT 'Action Operator',
  `action_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Action Amount',
  `action_stop` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Action Stop',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  PRIMARY KEY (`rule_product_id`),
  UNIQUE KEY `IDX_EAA51B56FF092A0DCB795D1CEF812B7B` (`rule_id`,`from_time`,`to_time`,`website_id`,`customer_group_id`,`product_id`,`sort_order`),
  KEY `CATALOGRULE_PRODUCT_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `CATALOGRULE_PRODUCT_WEBSITE_ID` (`website_id`),
  KEY `CATALOGRULE_PRODUCT_FROM_TIME` (`from_time`),
  KEY `CATALOGRULE_PRODUCT_TO_TIME` (`to_time`),
  KEY `CATALOGRULE_PRODUCT_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Product';

--
-- Table structure for table `catalogrule_product_price`
--

DROP TABLE IF EXISTS `catalogrule_product_price`;
CREATE TABLE `catalogrule_product_price` (
  `rule_product_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Product PriceId',
  `rule_date` date NOT NULL COMMENT 'Rule Date',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group Id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `rule_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Rule Price',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `latest_start_date` date DEFAULT NULL COMMENT 'Latest StartDate',
  `earliest_end_date` date DEFAULT NULL COMMENT 'Earliest EndDate',
  PRIMARY KEY (`rule_product_price_id`),
  UNIQUE KEY `CATRULE_PRD_PRICE_RULE_DATE_WS_ID_CSTR_GROUP_ID_PRD_ID` (`rule_date`,`website_id`,`customer_group_id`,`product_id`),
  KEY `CATALOGRULE_PRODUCT_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `CATALOGRULE_PRODUCT_PRICE_WEBSITE_ID` (`website_id`),
  KEY `CATALOGRULE_PRODUCT_PRICE_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Product Price';

--
-- Table structure for table `catalogrule_website`
--

DROP TABLE IF EXISTS `catalogrule_website`;
CREATE TABLE `catalogrule_website` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  PRIMARY KEY (`rule_id`,`website_id`),
  KEY `CATALOGRULE_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Rules To Websites Relations';

--
-- Table structure for table `catalogsearch_fulltext_scope1`
--

DROP TABLE IF EXISTS `catalogsearch_fulltext_scope1`;
CREATE TABLE `catalogsearch_fulltext_scope1` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` int(10) unsigned NOT NULL COMMENT 'Attribute_id',
  `data_index` longtext COMMENT 'Data index',
  PRIMARY KEY (`entity_id`,`attribute_id`),
  FULLTEXT KEY `FTI_FULLTEXT_DATA_INDEX` (`data_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='catalogsearch_fulltext_scope1';

--
-- Dumping data for table `catalogsearch_fulltext_scope1`
--

LOCK TABLES `catalogsearch_fulltext_scope1` WRITE;
/*!40000 ALTER TABLE `catalogsearch_fulltext_scope1` DISABLE KEYS */;
INSERT INTO `catalogsearch_fulltext_scope1` VALUES ('1','73','Motor Oil MOBIL Super 3000 X1 5W-40, 4L'),('1','74','39207'),('1','75','Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,'),('1','76','ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло&nbsp;ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE'),('2','73','Motor Oil Castrol Magnatec 3000 X1 5W-40, 4L'),('2','74','39207-1'),('2','75','Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,'),('2','76','ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло'),('3','73','Motor Oil Shell Helix 3000 X1 5W-40, 4L'),('3','74','39207-2'),('3','75','Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,'),('3','76','ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло'),('4','73','Motor Oil Shell Helix 3000 X1 5W-40, 4L'),('4','74','39207-4'),('4','75','Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,'),('4','76','ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло'),('5','73','Motor Oil MOBIL Super 3000 X1 5W-40, 4L'),('5','74','39207-5'),('5','75','Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,'),('5','76','ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло'),('6','73','Motor Oil Castrol Magnatec 3000 X1 5W-40, 4L'),('6','74','39207-1-1'),('6','75','Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,'),('6','76','ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло'),('7','73','Motor Oil MOBIL Super 3000 X1 5W-40, 4L'),('7','74','39207-3'),('7','75','Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,'),('7','76','ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло'),('8','73','Motor Oil Castrol Magnatec 3000 X1 5W-40, 4L'),('8','74','39207-1-2'),('8','75','Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,'),('8','76','ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло'),('9','73','Motor Oil Castrol Magnatec 3000 X1 5W-40, 4L'),('9','74','39207-1-1-1'),('9','75','Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,'),('9','76','ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло');
/*!40000 ALTER TABLE `catalogsearch_fulltext_scope1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogsearch_fulltext_scope2`
--

DROP TABLE IF EXISTS `catalogsearch_fulltext_scope2`;
CREATE TABLE `catalogsearch_fulltext_scope2` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` int(10) unsigned NOT NULL COMMENT 'Attribute_id',
  `data_index` longtext COMMENT 'Data index',
  PRIMARY KEY (`entity_id`,`attribute_id`),
  FULLTEXT KEY `FTI_FULLTEXT_DATA_INDEX` (`data_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='catalogsearch_fulltext_scope2';

--
-- Dumping data for table `catalogsearch_fulltext_scope2`
--

LOCK TABLES `catalogsearch_fulltext_scope2` WRITE;
/*!40000 ALTER TABLE `catalogsearch_fulltext_scope2` DISABLE KEYS */;
INSERT INTO `catalogsearch_fulltext_scope2` VALUES ('1','73','Моторное масло MOBIL Super 3000 X1 5W-40, 4L'),('1','74','39207'),('1','75','Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,'),('1','76','ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло&nbsp;ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE'),('2','73','Моторное масло Castrol Magnatec 3000 X1 5W-40, 4L'),('2','74','39207-1'),('2','75','Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,'),('2','76','ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло'),('3','73','Моторное масло Shell Helix 3000 X1 5W-40, 4л'),('3','74','39207-2'),('3','75','Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,'),('3','76','ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло'),('4','73','Моторное масло Shell Helix 3000 X1 5W-40, 4л'),('4','74','39207-4'),('4','75','Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,'),('4','76','ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло'),('5','73','Моторное масло MOBIL Super 3000 X1 5W-40, 4л'),('5','74','39207-5'),('5','75','Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,'),('5','76','ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло'),('6','73','Моторное масло Castrol Magnatec 3000 X1 5W-40, 4L'),('6','74','39207-1-1'),('6','75','Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,'),('6','76','ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло'),('7','73','Моторное масло MOBIL Super 3000 X1 5W-40, 4л'),('7','74','39207-3'),('7','75','Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,'),('7','76','ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло'),('8','73','Моторное масло Castrol Magnatec 3000 X1 5W-40, 4L'),('8','74','39207-1-2'),('8','75','Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,'),('8','76','ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло'),('9','73','Моторное масло Castrol Magnatec 3000 X1 5W-40, 4L'),('9','74','39207-1-1-1'),('9','75','Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,'),('9','76','ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло');
/*!40000 ALTER TABLE `catalogsearch_fulltext_scope2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogsearch_fulltext_scope3`
--

DROP TABLE IF EXISTS `catalogsearch_fulltext_scope3`;
CREATE TABLE `catalogsearch_fulltext_scope3` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` int(10) unsigned NOT NULL COMMENT 'Attribute_id',
  `data_index` longtext COMMENT 'Data index',
  PRIMARY KEY (`entity_id`,`attribute_id`),
  FULLTEXT KEY `FTI_FULLTEXT_DATA_INDEX` (`data_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='catalogsearch_fulltext_scope3';

--
-- Dumping data for table `catalogsearch_fulltext_scope3`
--

LOCK TABLES `catalogsearch_fulltext_scope3` WRITE;
/*!40000 ALTER TABLE `catalogsearch_fulltext_scope3` DISABLE KEYS */;
INSERT INTO `catalogsearch_fulltext_scope3` VALUES ('1','73','Моторна олива MOBIL Super 3000 X1 5W-40, 4L'),('1','74','39207'),('1','75','Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,'),('1','76','ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло&nbsp;ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE'),('2','73','Моторна олива Castrol Magnatec 3000 X1 5W-40, 4L'),('2','74','39207-1'),('2','75','Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,'),('2','76','ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло'),('3','73','Моторна олива Shell Helix 3000 X1 5W-40, 4L'),('3','74','39207-2'),('3','75','Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,'),('3','76','ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло'),('4','73','Моторна олива Shell Helix 3000 X1 5W-40, 4L'),('4','74','39207-4'),('4','75','Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,'),('4','76','ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло'),('5','73','Motor Oil MOBIL Super 3000 X1 5W-40, 4L'),('5','74','39207-5'),('5','75','Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,'),('5','76','ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло'),('6','73','Моторна олива Castrol Magnatec 3000 X1 5W-40, 4L'),('6','74','39207-1-1'),('6','75','Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,'),('6','76','ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло'),('7','73','Моторна олива MOBIL Super 3000 X1 5W-40, 4L'),('7','74','39207-3'),('7','75','Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,'),('7','76','ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло'),('8','73','Моторна олива Castrol Magnatec 3000 X1 5W-40, 4L'),('8','74','39207-1-2'),('8','75','Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,'),('8','76','ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло'),('9','73','Моторна олива Castrol Magnatec 3000 X1 5W-40, 4L'),('9','74','39207-1-1-1'),('9','75','Mobil Super 3000 X1 5W-40 представляет собой синтетическое моторное масло, обеспечивающее длительный срок службы двигателей в автомобилях различных типов и годов выпуска, а также повышенный уровень их защиты в широком диапазоне температур. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том, что эксплуатационные свойства Вашего автомобиля будут полностью соответствовать ожиданиям. Продукты семейства Mobil Super 3000&trade; уже хорошо зарекомендовали себя на рынке, поэтому Вы можете быть уверены в том,'),('9','76','ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1 ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло; SAE: 75W-80; Емкость, л: 1ELF Tranself NFJ 75W-80 1л - Трансмиссионное масло Тип масла: Трансмиссионное масло ; Тип основы масла: синтетическое масло');
/*!40000 ALTER TABLE `catalogsearch_fulltext_scope3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `checkout_agreement`
--

DROP TABLE IF EXISTS `checkout_agreement`;
CREATE TABLE `checkout_agreement` (
  `agreement_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Agreement Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `content` text COMMENT 'Content',
  `content_height` varchar(25) DEFAULT NULL COMMENT 'Content Height',
  `checkbox_text` text COMMENT 'Checkbox Text',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `is_html` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Html',
  `mode` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Applied mode',
  PRIMARY KEY (`agreement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Checkout Agreement';

--
-- Table structure for table `checkout_agreement_store`
--

DROP TABLE IF EXISTS `checkout_agreement_store`;
CREATE TABLE `checkout_agreement_store` (
  `agreement_id` int(10) unsigned NOT NULL COMMENT 'Agreement Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  PRIMARY KEY (`agreement_id`,`store_id`),
  KEY `CHECKOUT_AGREEMENT_STORE_STORE_ID_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Checkout Agreement Store';

--
-- Table structure for table `cms_block`
--

DROP TABLE IF EXISTS `cms_block`;
CREATE TABLE `cms_block` (
  `block_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Block ID',
  `title` varchar(255) NOT NULL COMMENT 'Block Title',
  `identifier` varchar(255) NOT NULL COMMENT 'Block String Identifier',
  `content` mediumtext COMMENT 'Block Content',
  `creation_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Block Creation Time',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Block Modification Time',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Block Active',
  PRIMARY KEY (`block_id`),
  FULLTEXT KEY `CMS_BLOCK_TITLE_IDENTIFIER_CONTENT` (`title`,`identifier`,`content`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='CMS Block Table';

--
-- Dumping data for table `cms_block`
--

LOCK TABLES `cms_block` WRITE;
/*!40000 ALTER TABLE `cms_block` DISABLE KEYS */;
INSERT INTO `cms_block` VALUES (1,'Header Panel Links','header_panel_links','<ul class=\"header-panel-links\">\r\n    <li><a href=\"#\">Contacts</a></li>\r\n    <li><a href=\"#\">Markets</a></li>\r\n    <li><a href=\"#\">About us</a></li>\r\n    <li><a href=\"#\">Delivery</a></li>\r\n    <li><a href=\"#\">Payment</a></li>\r\n    <li><a href=\"#\">Bonus program</a></li>\r\n</ul>','2017-07-22 10:25:34','2017-07-22 10:25:34',1),(2,'Nav Block','nav_block','<ul class=\"nav-block\">\r\n<li><a href=\"#\"><i class=\"fa fa-percent\"></i>Акции</a></li>\r\n<li><a href=\"#\"><i class=\"fa fa-bar-chart\"></i>Сравнительные тесты</a></li>\r\n<li><a href=\"#\"><i class=\"fa fa-question-circle-o\"></i>Как выбрать</a></li>\r\n<li><a href=\"{{config path=\"web/unsecure/base_url\"}}summary\"><i class=\"fa fa-align-left\"></i>Новости</a></li>\r\n</ul>','2017-07-22 20:33:15','2017-08-25 20:01:36',1),(3,'Header Panel Links','header_panel_links','<div class=\"header-panel-links\">\r\n<ul>\r\n<li><a href=\"#\">Контакты</a></li>\r\n<li><a href=\"#\">Магазины</a></li>\r\n<li><a href=\"#\">О нас</a></li>\r\n<li><a href=\"#\">Доставка</a></li>\r\n<li><a href=\"#\">Оплата</a></li>\r\n<li><a href=\"#\">Бонусная программа</a></li>\r\n</ul>\r\n</div>','2017-07-24 21:15:46','2017-07-28 19:48:09',1),(4,'Share Product','share_product','<a href=\"#\" class=\"share-product\">Поделиться</a>','2017-08-03 20:32:35','2017-08-03 20:32:35',1),(5,'Footer Links Block','footer-block-1','<div class=\"footer-list\">\r\n<h3>Компания</h3>\r\n<ul>\r\n<li><a href=\"#\">О нас</a></li>\r\n<li><a href=\"#\">Контакты</a></li>\r\n<li><a href=\"#\">Магазины</a></li>\r\n<li><a href=\"#\">Партнеры</a></li>\r\n<li><a href=\"#\">Оптовым покупателям</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"footer-list\">\r\n<h3>Покупателям</h3>\r\n<ul>\r\n<li><a href=\"#\">Доставка</a></li>\r\n<li><a href=\"#\">Оплата</a></li>\r\n<li><a href=\"#\">Гарантия</a></li>\r\n<li><a href=\"#\">Кредит</a></li>\r\n<li><a href=\"#\">Бонусная программа</a></li>\r\n<li><a href=\"#\">Акции</a></li>\r\n<li><a href=\"#\">Карта сайта</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"footer-list\">\r\n<h3>Информация</h3>\r\n<ul>\r\n<li><a href=\"#\">Как выбрать</a></li>\r\n<li><a href=\"#\">Сравнительные тесты</a></li>\r\n<li><a href=\"#\">Новости</a></li>\r\n<li><a href=\"#\">Часто задаваемые вопросы</a></li>\r\n</ul>\r\n</div>','2017-08-14 11:35:51','2017-08-16 07:38:38',1),(6,'Footer Contact Block','footer-block-2','<h3>0 800 30-15-85</h3>\r\n<p><span class=\"contact-desc\">Бесплатно со стационарных и мобильных телефонов Украины</span></p>\r\n<div class=\"socials\">\r\n<strong>Следите за нами в соцсетях:</strong>\r\n<ul>\r\n<li><a href=\"#\" class=\"fa fa-facebook\"></a></li>\r\n<li><a href=\"#\" class=\"fa fa-google-plus\"></a></li>\r\n<li><a href=\"#\" class=\"fa fa-twitter\"></a></li>\r\n<li><a href=\"#\" class=\"fa fa-youtube-play\"></a></li>\r\n<li><a href=\"#\" class=\"fa fa-vk\"></a></li>\r\n<li><a href=\"#\" class=\"fa fa-instagram\"></a></li>\r\n</ul>\r\n</div>','2017-08-14 11:47:07','2017-08-15 06:57:23',1),(7,'Designed By','designed-by','<p><span class=\"designed-by\"> Разработано <a href=\"https://www.linkedin.com/in/ihor-mazurenko-b8664816/\" target=\"_blank\">ImproDev</a></span></p>','2017-08-15 17:21:44','2017-08-17 12:38:37',1),(8,'Header Panel Links','header_panel_links','<div class=\"header-panel-links\">\r\n<ul>\r\n<li><a href=\"#\">Контакти</a></li>\r\n<li><a href=\"#\">Магазини</a></li>\r\n<li><a href=\"#\">Про нас</a></li>\r\n<li><a href=\"#\">Доставка</a></li>\r\n<li><a href=\"#\">Оплата</a></li>\r\n<li><a href=\"#\">Бонусна програма</a></li>\r\n</ul>\r\n</div>','2017-08-17 12:28:16','2017-08-17 12:28:16',1),(9,'Nav Block','nav_block','<ul class=\"nav-block\">\r\n<li><a href=\"#\"><i class=\"fa fa-percent\"></i>Акції</a></li>\r\n<li><a href=\"#\"><i class=\"fa fa-bar-chart\"></i>Порівняльні тести</a></li>\r\n<li><a href=\"#\"><i class=\"fa fa-question-circle-o\"></i>Як вибрати</a></li>\r\n<li><a href=\"{{config path=\"web/unsecure/base_url\"}}summary\"><i class=\"fa fa-align-left\"></i>Новини</a></li>\r\n</ul>','2017-08-17 12:33:07','2017-08-25 18:40:24',1),(10,'Share Product','share_product','<a href=\"#\" class=\"share-product\">Поділитись</a>','2017-08-17 12:36:24','2017-08-17 12:36:24',1),(11,'Designed By','designed-by','<p><span class=\"designed-by\">Розроблено <a href=\"https://www.linkedin.com/in/ihor-mazurenko-b8664816/\" target=\"_blank\">ImproDev</a></span></p>','2017-08-17 12:37:45','2017-08-17 12:39:05',1),(12,'Footer Links Block','footer-block-1','<div class=\"footer-list\">\r\n<h3>Компанія</h3>\r\n<ul>\r\n<li><a href=\"#\">Про нас</a></li>\r\n<li><a href=\"#\">Контакти</a></li>\r\n<li><a href=\"#\">Магазини</a></li>\r\n<li><a href=\"#\">Партнери</a></li>\r\n<li><a href=\"#\">Оптовим покупцям</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"footer-list\">\r\n<h3>Покупцям</h3>\r\n<ul>\r\n<li><a href=\"#\">Доставка</a></li>\r\n<li><a href=\"#\">Оплата</a></li>\r\n<li><a href=\"#\">Гарантія</a></li>\r\n<li><a href=\"#\">Кредит</a></li>\r\n<li><a href=\"#\">Бонусна програма</a></li>\r\n<li><a href=\"#\">Акції</a></li>\r\n<li><a href=\"#\">Карта сайту</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"footer-list\">\r\n<h3>Інформація</h3>\r\n<ul>\r\n<li><a href=\"#\">Як вибрати</a></li>\r\n<li><a href=\"#\">Порівняльні тести</a></li>\r\n<li><a href=\"#\">Новини</a></li>\r\n<li><a href=\"#\">Поширені запитання</a></li>\r\n</ul>\r\n</div>','2017-08-17 12:43:42','2017-08-17 13:45:55',1),(13,'Footer Contact Block','footer-block-2','<h3>0 800 30-15-85</h3>\r\n<p><span class=\"contact-desc\">Безкоштовно зі стаціонарних і мобільних телефонів України</span></p>\r\n<div class=\"socials\"><strong>Слідкуйте за нами в соцмережах:</strong>\r\n<ul>\r\n<li><a class=\"fa fa-facebook\" href=\"#\"></a></li>\r\n<li><a class=\"fa fa-google-plus\" href=\"#\"></a></li>\r\n<li><a class=\"fa fa-twitter\" href=\"#\"></a></li>\r\n<li><a class=\"fa fa-youtube-play\" href=\"#\"></a></li>\r\n<li><a class=\"fa fa-vk\" href=\"#\"></a></li>\r\n<li><a class=\"fa fa-instagram\" href=\"#\"></a></li>\r\n</ul>\r\n</div>','2017-08-17 12:45:31','2017-08-17 12:45:31',1);
/*!40000 ALTER TABLE `cms_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_block_store`
--

DROP TABLE IF EXISTS `cms_block_store`;
CREATE TABLE `cms_block_store` (
  `block_id` smallint(6) NOT NULL COMMENT 'Block ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`block_id`,`store_id`),
  KEY `CMS_BLOCK_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Block To Store Linkage Table';

--
-- Dumping data for table `cms_block_store`
--

LOCK TABLES `cms_block_store` WRITE;
/*!40000 ALTER TABLE `cms_block_store` DISABLE KEYS */;
INSERT INTO `cms_block_store` VALUES (1,1),(2,2),(3,2),(4,2),(5,2),(6,2),(7,2),(8,3),(9,3),(10,3),(11,3),(12,3),(13,3);
/*!40000 ALTER TABLE `cms_block_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_page`
--

DROP TABLE IF EXISTS `cms_page`;
CREATE TABLE `cms_page` (
  `page_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Page ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Page Title',
  `page_layout` varchar(255) DEFAULT NULL COMMENT 'Page Layout',
  `meta_keywords` text COMMENT 'Page Meta Keywords',
  `meta_description` text COMMENT 'Page Meta Description',
  `identifier` varchar(100) DEFAULT NULL COMMENT 'Page String Identifier',
  `content_heading` varchar(255) DEFAULT NULL COMMENT 'Page Content Heading',
  `content` mediumtext COMMENT 'Page Content',
  `creation_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Page Creation Time',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Page Modification Time',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Page Active',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Page Sort Order',
  `layout_update_xml` text COMMENT 'Page Layout Update Content',
  `custom_theme` varchar(100) DEFAULT NULL COMMENT 'Page Custom Theme',
  `custom_root_template` varchar(255) DEFAULT NULL COMMENT 'Page Custom Template',
  `custom_layout_update_xml` text COMMENT 'Page Custom Layout Update Content',
  `custom_theme_from` date DEFAULT NULL COMMENT 'Page Custom Theme Active From Date',
  `custom_theme_to` date DEFAULT NULL COMMENT 'Page Custom Theme Active To Date',
  `meta_title` varchar(255) DEFAULT NULL COMMENT 'Page Meta Title',
  PRIMARY KEY (`page_id`),
  KEY `CMS_PAGE_IDENTIFIER` (`identifier`),
  FULLTEXT KEY `CMS_PAGE_TITLE_META_KEYWORDS_META_DESCRIPTION_IDENTIFIER_CONTENT` (`title`,`meta_keywords`,`meta_description`,`identifier`,`content`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='CMS Page Table';

--
-- Dumping data for table `cms_page`
--

LOCK TABLES `cms_page` WRITE;
/*!40000 ALTER TABLE `cms_page` DISABLE KEYS */;
INSERT INTO `cms_page` VALUES (1,'404 Not Found','2columns-right','Page keywords','Page description','no-route','Whoops, our bad...','<dl>\r\n<dt>The page you requested was not found, and we have a fine guess why.</dt>\r\n<dd>\r\n<ul class=\"disc\">\r\n<li>If you typed the URL directly, please make sure the spelling is correct.</li>\r\n<li>If you clicked on a link to get here, the link is outdated.</li>\r\n</ul></dd>\r\n</dl>\r\n<dl>\r\n<dt>What can you do?</dt>\r\n<dd>Have no fear, help is near! There are many ways you can get back on track with Magento Store.</dd>\r\n<dd>\r\n<ul class=\"disc\">\r\n<li><a href=\"#\" onclick=\"history.go(-1); return false;\">Go back</a> to the previous page.</li>\r\n<li>Use the search bar at the top of the page to search for your products.</li>\r\n<li>Follow these links to get you back on track!<br /><a href=\"{{store url=\"\"}}\">Store Home</a> <span class=\"separator\">|</span> <a href=\"{{store url=\"customer/account\"}}\">My Account</a></li></ul></dd></dl>\r\n','2017-07-22 09:18:44','2017-07-22 09:18:44',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Home page','1column',NULL,NULL,'home','Home Page','<p>CMS homepage content goes here.</p>\r\n','2017-07-22 09:18:44','2017-07-22 09:18:46',1,0,'<!--\n    <referenceContainer name=\"right\">\n        <action method=\"unsetChild\"><argument name=\"alias\" xsi:type=\"string\">right.reports.product.viewed</argument></action>\n        <action method=\"unsetChild\"><argument name=\"alias\" xsi:type=\"string\">right.reports.product.compared</argument></action>\n    </referenceContainer>-->',NULL,NULL,NULL,NULL,NULL,NULL),(3,'Enable Cookies','1column',NULL,NULL,'enable-cookies','What are Cookies?','<div class=\"enable-cookies cms-content\">\r\n<p>\"Cookies\" are little pieces of data we send when you visit our store. Cookies help us get to know you better and personalize your experience. Plus they help protect you and other shoppers from fraud.</p>\r\n<p style=\"margin-bottom: 20px;\">Set your browser to accept cookies so you can buy items, save items, and receive customized recommendations. Here’s how:</p>\r\n<ul>\r\n<li><a href=\"https://support.google.com/accounts/answer/61416?hl=en\" target=\"_blank\">Google Chrome</a></li>\r\n<li><a href=\"http://windows.microsoft.com/en-us/internet-explorer/delete-manage-cookies\" target=\"_blank\">Internet Explorer</a></li>\r\n<li><a href=\"http://support.apple.com/kb/PH19214\" target=\"_blank\">Safari</a></li>\r\n<li><a href=\"https://support.mozilla.org/en-US/kb/enable-and-disable-cookies-website-preferences\" target=\"_blank\">Mozilla/Firefox</a></li>\r\n</ul>\r\n</div>','2017-07-22 09:18:44','2017-07-22 09:18:44',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'Privacy and Cookie Policy','1column',NULL,NULL,'privacy-policy-cookie-restriction-mode','Privacy and Cookie Policy','<div class=\"privacy-policy cms-content\">\n    <div class=\"message info\">\n        <span>\n            Please replace this text with you Privacy Policy.\n            Please add any additional cookies your website uses below (e.g. Google Analytics).\n        </span>\n    </div>\n    <p>\n        This privacy policy sets out how this website (hereafter \"the Store\") uses and protects any information that\n        you give the Store while using this website. The Store is committed to ensuring that your privacy is protected.\n        Should we ask you to provide certain information by which you can be identified when using this website, then\n        you can be assured that it will only be used in accordance with this privacy statement. The Store may change\n        this policy from time to time by updating this page. You should check this page from time to time to ensure\n        that you are happy with any changes.\n    </p>\n    <h2>What we collect</h2>\n    <p>We may collect the following information:</p>\n    <ul>\n        <li>name</li>\n        <li>contact information including email address</li>\n        <li>demographic information such as postcode, preferences and interests</li>\n        <li>other information relevant to customer surveys and/or offers</li>\n    </ul>\n    <p>\n        For the exhaustive list of cookies we collect see the <a href=\"#list\">List of cookies we collect</a> section.\n    </p>\n    <h2>What we do with the information we gather</h2>\n    <p>\n        We require this information to understand your needs and provide you with a better service,\n        and in particular for the following reasons:\n    </p>\n    <ul>\n        <li>Internal record keeping.</li>\n        <li>We may use the information to improve our products and services.</li>\n        <li>\n            We may periodically send promotional emails about new products, special offers or other information which we\n            think you may find interesting using the email address which you have provided.\n        </li>\n        <li>\n            From time to time, we may also use your information to contact you for market research purposes.\n            We may contact you by email, phone, fax or mail. We may use the information to customise the website\n            according to your interests.\n        </li>\n    </ul>\n    <h2>Security</h2>\n    <p>\n        We are committed to ensuring that your information is secure. In order to prevent unauthorised access or\n        disclosure, we have put in place suitable physical, electronic and managerial procedures to safeguard and\n        secure the information we collect online.\n    </p>\n    <h2>How we use cookies</h2>\n    <p>\n        A cookie is a small file which asks permission to be placed on your computer\'s hard drive.\n        Once you agree, the file is added and the cookie helps analyse web traffic or lets you know when you visit\n        a particular site. Cookies allow web applications to respond to you as an individual. The web application\n        can tailor its operations to your needs, likes and dislikes by gathering and remembering information about\n        your preferences.\n    </p>\n    <p>\n        We use traffic log cookies to identify which pages are being used. This helps us analyse data about web page\n        traffic and improve our website in order to tailor it to customer needs. We only use this information for\n        statistical analysis purposes and then the data is removed from the system.\n    </p>\n    <p>\n        Overall, cookies help us provide you with a better website, by enabling us to monitor which pages you find\n        useful and which you do not. A cookie in no way gives us access to your computer or any information about you,\n        other than the data you choose to share with us. You can choose to accept or decline cookies.\n        Most web browsers automatically accept cookies, but you can usually modify your browser setting\n        to decline cookies if you prefer. This may prevent you from taking full advantage of the website.\n    </p>\n    <h2>Links to other websites</h2>\n    <p>\n        Our website may contain links to other websites of interest. However, once you have used these links\n        to leave our site, you should note that we do not have any control over that other website.\n        Therefore, we cannot be responsible for the protection and privacy of any information which you provide whilst\n        visiting such sites and such sites are not governed by this privacy statement.\n        You should exercise caution and look at the privacy statement applicable to the website in question.\n    </p>\n    <h2>Controlling your personal information</h2>\n    <p>You may choose to restrict the collection or use of your personal information in the following ways:</p>\n    <ul>\n        <li>\n            whenever you are asked to fill in a form on the website, look for the box that you can click to indicate\n            that you do not want the information to be used by anybody for direct marketing purposes\n        </li>\n        <li>\n            if you have previously agreed to us using your personal information for direct marketing purposes,\n            you may change your mind at any time by letting us know using our Contact Us information\n        </li>\n    </ul>\n    <p>\n        We will not sell, distribute or lease your personal information to third parties unless we have your permission\n        or are required by law to do so. We may use your personal information to send you promotional information\n        about third parties which we think you may find interesting if you tell us that you wish this to happen.\n    </p>\n    <p>\n        You may request details of personal information which we hold about you under the Data Protection Act 1998.\n        A small fee will be payable. If you would like a copy of the information held on you please email us this\n        request using our Contact Us information.\n    </p>\n    <p>\n        If you believe that any information we are holding on you is incorrect or incomplete,\n        please write to or email us as soon as possible, at the above address.\n        We will promptly correct any information found to be incorrect.\n    </p>\n    <h2><a name=\"list\"></a>List of cookies we collect</h2>\n    <p>The table below lists the cookies we collect and what information they store.</p>\n    <table class=\"data-table data-table-definition-list\">\n        <thead>\n        <tr>\n            <th>Cookie Name</th>\n            <th>Cookie Description</th>\n        </tr>\n        </thead>\n        <tbody>\n            <tr>\n                <th>FORM_KEY</th>\n                <td>Stores randomly generated key used to prevent forged requests.</td>\n            </tr>\n            <tr>\n                <th>PHPSESSID</th>\n                <td>Your session ID on the server.</td>\n            </tr>\n            <tr>\n                <th>GUEST-VIEW</th>\n                <td>Allows guests to view and edit their orders.</td>\n            </tr>\n            <tr>\n                <th>PERSISTENT_SHOPPING_CART</th>\n                <td>A link to information about your cart and viewing history, if you have asked for this.</td>\n            </tr>\n            <tr>\n                <th>STF</th>\n                <td>Information on products you have emailed to friends.</td>\n            </tr>\n            <tr>\n                <th>STORE</th>\n                <td>The store view or language you have selected.</td>\n            </tr>\n            <tr>\n                <th>USER_ALLOWED_SAVE_COOKIE</th>\n                <td>Indicates whether a customer allowed to use cookies.</td>\n            </tr>\n            <tr>\n                <th>MAGE-CACHE-SESSID</th>\n                <td>Facilitates caching of content on the browser to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>MAGE-CACHE-STORAGE</th>\n                <td>Facilitates caching of content on the browser to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>MAGE-CACHE-STORAGE-SECTION-INVALIDATION</th>\n                <td>Facilitates caching of content on the browser to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>MAGE-CACHE-TIMEOUT</th>\n                <td>Facilitates caching of content on the browser to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>SECTION-DATA-IDS</th>\n                <td>Facilitates caching of content on the browser to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>PRIVATE_CONTENT_VERSION</th>\n                <td>Facilitates caching of content on the browser to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>X-MAGENTO-VARY</th>\n                <td>Facilitates caching of content on the server to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>MAGE-TRANSLATION-FILE-VERSION</th>\n                <td>Facilitates translation of content to other languages.</td>\n            </tr>\n            <tr>\n                <th>MAGE-TRANSLATION-STORAGE</th>\n                <td>Facilitates translation of content to other languages.</td>\n            </tr>\n        </tbody>\n    </table>\n</div>','2017-07-22 09:18:44','2017-07-22 09:18:44',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'Garage','1column','','','garage','Garage','','2017-07-22 20:45:34','2017-07-22 20:47:07',1,0,'',NULL,NULL,NULL,NULL,NULL,''),(6,'Garage','1column','','','garage','Гараж','','2017-07-23 05:50:21','2017-07-23 05:51:38',1,0,'',NULL,NULL,NULL,NULL,NULL,''),(8,'Viewed products','2columns-left','','','viewed-products','Продукты, которые Вы просматривали','<p>{{widget type=\"Magento\\Reports\\Block\\Product\\Widget\\Viewed\" page_size=\"100\" template=\"widget/viewed/content/viewed_grid.phtml\"}}</p>','2017-08-14 08:09:19','2017-08-14 08:35:39',1,0,'',NULL,NULL,NULL,NULL,NULL,''),(9,'Summary','1column','','','summary','Work Description','<h2>Frontend</h2>\r\n<ol>\r\n<li>\r\n<h3>Repositories:</h3>\r\nTheme: <a href=\"https://github.com/ImPro-dev/ImproDev-autosound.git\" target=\"_blank\">https://github.com/ImPro-dev/ImproDev-autosound.git</a>\r\n<p>Dump file <i>dump.sql</i> is located in the same repository. <br /> Strongly recommended using ServiceModule with the theme. SeviceModule provides a solving for some issues. Such as: display categories list in footer, calculate sale percent in related products labels and so on.</p>\r\nServiceModule: <a href=\"https://github.com/ImPro-dev/ImproDev-ServiceModule.git\" target=\"_blank\">https://github.com/ImPro-dev/ImproDev-ServiceModule.git</a></li>\r\n<li>\r\n<h3>Composer:</h3>\r\nYou can install theme and ServiceModule via composer:\r\n<pre xml=\"space\">composer require improdev/theme-frontend-autosound=dev-master improdev/module-servicemodule=dev-master</pre>\r\n</li>\r\n<li>\r\n<h3>Demo:</h3>\r\nProduct page was created by specified design: <a href=\"{{config path=\"web/unsecure/base_url\"}}motornoe-maslo-mobil-super-3000-x1-5w-40-4l.html\" target=\"_blank\">DEMO</a></li>\r\n</ol>\r\n<h2>Backend</h2>\r\n<ol>\r\n<li>\r\n<h3>Repository:</h3>\r\nModule EmailManager: <a href=\"https://github.com/ImPro-dev/ImproDev-EmailManager.git\" target=\"_blank\">https://github.com/ImPro-dev/ImproDev-EmailManager.git</a></li>\r\n<li>\r\n<h3>Composer:</h3>\r\nYou can install EmailManager via composer:\r\n<pre xml=\"space\">composer require improdev/module-emailmanager=dev-master</pre>\r\n</li>\r\n<li>\r\n<h3>Demo:</h3>\r\nContact page: <a href=\"{{config path=\"web/unsecure/base_url\"}}contact/index\" target=\"_blank\">here</a>\r\n<p>Admin: <a href=\"{{config path=\"web/unsecure/base_url\"}}admin123/\">{{config path=\"web/unsecure/base_url\"}}admin123/</a> <br /> Login: admin <br /> Pass: 5ltf6WvR16</p>\r\nModule path in admin: <i>Email Manager -&gt; Received Emails</i></li>\r\n</ol>','2017-08-25 19:59:10','2017-08-25 22:00:49',1,0,'',NULL,NULL,NULL,NULL,NULL,'');
/*!40000 ALTER TABLE `cms_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_page_store`
--

DROP TABLE IF EXISTS `cms_page_store`;
CREATE TABLE `cms_page_store` (
  `page_id` smallint(6) NOT NULL COMMENT 'Page ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`page_id`,`store_id`),
  KEY `CMS_PAGE_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Page To Store Linkage Table';

--
-- Dumping data for table `cms_page_store`
--

LOCK TABLES `cms_page_store` WRITE;
/*!40000 ALTER TABLE `cms_page_store` DISABLE KEYS */;
INSERT INTO `cms_page_store` VALUES (1,0),(2,0),(3,0),(4,0),(8,0),(9,0),(5,1),(6,2);
/*!40000 ALTER TABLE `cms_page_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_config_data`
--

DROP TABLE IF EXISTS `core_config_data`;
CREATE TABLE `core_config_data` (
  `config_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Config Id',
  `scope` varchar(8) NOT NULL DEFAULT 'default' COMMENT 'Config Scope',
  `scope_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Config Scope Id',
  `path` varchar(255) NOT NULL DEFAULT 'general' COMMENT 'Config Path',
  `value` text COMMENT 'Config Value',
  PRIMARY KEY (`config_id`),
  UNIQUE KEY `CORE_CONFIG_DATA_SCOPE_SCOPE_ID_PATH` (`scope`,`scope_id`,`path`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8 COMMENT='Config Data';

--
-- Dumping data for table `core_config_data`
--

LOCK TABLES `core_config_data` WRITE;
/*!40000 ALTER TABLE `core_config_data` DISABLE KEYS */;
INSERT INTO `core_config_data` VALUES ('1','default','0','web/seo/use_rewrites','1'),('2','default','0','web/unsecure/base_url','http://magento2.loc/autosound/'),('3','default','0','general/locale/code','en_US'),('4','default','0','general/locale/timezone','America/Chicago'),('5','default','0','currency/options/base','UAH'),('6','default','0','currency/options/default','UAH'),('7','default','0','currency/options/allow','UAH'),('8','default','0','general/region/display_all','1'),('9','default','0','general/region/state_required','AT,BR,CA,CH,EE,ES,FI,LT,LV,RO,US'),('10','default','0','catalog/category/root_id','2'),('11','websites','1','design/head/title_prefix',NULL),('12','websites','1','design/head/title_suffix',NULL),('13','websites','1','design/head/includes',NULL),('14','websites','1','design/header/logo_width',NULL),('15','websites','1','design/header/logo_height',NULL),('16','websites','1','design/footer/absolute_footer',NULL),('17','websites','1','design/theme/theme_id','4'),('18','websites','1','design/pagination/pagination_frame_skip',NULL),('19','websites','1','design/pagination/anchor_text_for_previous',NULL),('20','websites','1','design/pagination/anchor_text_for_next',NULL),('21','websites','1','design/watermark/image_size',NULL),('22','websites','1','design/watermark/image_imageOpacity',NULL),('23','websites','1','design/watermark/small_image_size',NULL),('24','websites','1','design/watermark/small_image_imageOpacity',NULL),('25','websites','1','design/watermark/thumbnail_size',NULL),('26','websites','1','design/watermark/thumbnail_imageOpacity',NULL),('27','websites','1','design/email/logo_alt',NULL),('28','websites','1','design/email/logo_width',NULL),('29','websites','1','design/email/logo_height',NULL),('30','websites','1','design/watermark/swatch_image_size',NULL),('31','websites','1','design/watermark/swatch_image_imageOpacity',NULL),('32','default','0','cataloginventory/options/show_out_of_stock','1'),('33','default','0','cataloginventory/item_options/auto_return','0'),('34','default','0','currency/yahoofinance/timeout','100'),('35','default','0','currency/fixerio/timeout','100'),('36','default','0','currency/import/service','yahoofinance'),('37','default','0','crontab/default/jobs/currency_rates_update/schedule/cron_expr','0 0 * * *'),('38','default','0','currency/import/time','00,00,00'),('39','default','0','currency/import/frequency','D'),('40','default','0','currency/import/error_email',NULL),('41','default','0','admin/security/use_case_sensitive_login','0'),('42','default','0','admin/security/session_lifetime','31536000'),('43','stores','2','general/locale/code','ru_RU'),('44','stores','2','general/locale/firstday','1'),('45','stores','3','general/locale/code','uk_UA'),('46','stores','3','general/locale/firstday','1'),('49','default','0','catalog/frontend/list_allow_all','0'),('50','default','0','catalog/frontend/flat_catalog_product','0'),('51','default','0','catalog/productalert_cron/frequency','D'),('52','default','0','crontab/default/jobs/catalog_product_alert/schedule/cron_expr','0 0 * * *'),('53','default','0','crontab/default/jobs/catalog_product_alert/run/model',NULL),('54','default','0','catalog/productalert_cron/time','00,00,00'),('55','default','0','catalog/productalert_cron/error_email',NULL),('56','default','0','catalog/product_video/youtube_api_key','AIzaSyDZbnvh2KEfvpkfeUtWfVHfvFYt1rbcsO4'),('57','default','0','catalog/price/scope','0'),('58','default','0','catalog/downloadable/shareable','0'),('59','default','0','catalog/downloadable/content_disposition','inline'),('60','default','0','catalog/custom_options/use_calendar','0'),('61','default','0','catalog/custom_options/year_range',','),('62','default','0','catalog/placeholder/image_placeholder',NULL),('63','default','0','catalog/placeholder/small_image_placeholder',NULL),('64','default','0','catalog/placeholder/swatch_image_placeholder',NULL),('65','default','0','catalog/placeholder/thumbnail_placeholder',NULL),('66','default','0','currency/options/customsymbol','a:1:{s:3:\"UAH\";s:6:\"грн\";}'),('67','stores','2','design/head/title_prefix',NULL),('68','stores','2','design/head/title_suffix',NULL),('69','stores','2','design/head/includes',NULL),('70','stores','2','design/header/logo_width',NULL),('71','stores','2','design/header/logo_height',NULL),('72','stores','2','design/footer/copyright','© 2017, База автозвука'),('73','stores','2','design/footer/absolute_footer',NULL),('74','stores','2','design/pagination/pagination_frame_skip',NULL),('75','stores','2','design/pagination/anchor_text_for_previous',NULL),('76','stores','2','design/pagination/anchor_text_for_next',NULL),('77','stores','2','design/watermark/image_size',NULL),('78','stores','2','design/watermark/image_imageOpacity',NULL),('79','stores','2','design/watermark/small_image_size',NULL),('80','stores','2','design/watermark/small_image_imageOpacity',NULL),('81','stores','2','design/watermark/thumbnail_size',NULL),('82','stores','2','design/watermark/thumbnail_imageOpacity',NULL),('83','stores','2','design/email/logo_alt',NULL),('84','stores','2','design/email/logo_width',NULL),('85','stores','2','design/email/logo_height',NULL),('86','stores','2','design/watermark/swatch_image_size',NULL),('87','stores','2','design/watermark/swatch_image_imageOpacity',NULL),('88','stores','3','design/head/title_prefix',NULL),('89','stores','3','design/head/title_suffix',NULL),('90','stores','3','design/head/includes',NULL),('91','stores','3','design/header/logo_width',NULL),('92','stores','3','design/header/logo_height',NULL),('93','stores','3','design/footer/copyright','© 2017, База автозвука'),('94','stores','3','design/footer/absolute_footer',NULL),('95','stores','3','design/pagination/pagination_frame_skip',NULL),('96','stores','3','design/pagination/anchor_text_for_previous',NULL),('97','stores','3','design/pagination/anchor_text_for_next',NULL),('98','stores','3','design/watermark/image_size',NULL),('99','stores','3','design/watermark/image_imageOpacity',NULL),('100','stores','3','design/watermark/small_image_size',NULL),('101','stores','3','design/watermark/small_image_imageOpacity',NULL),('102','stores','3','design/watermark/thumbnail_size',NULL),('103','stores','3','design/watermark/thumbnail_imageOpacity',NULL),('104','stores','3','design/email/logo_alt',NULL),('105','stores','3','design/email/logo_width',NULL),('106','stores','3','design/email/logo_height',NULL),('107','stores','3','design/watermark/swatch_image_size',NULL),('108','stores','3','design/watermark/swatch_image_imageOpacity',NULL),('109','default','0','catalog/seo/product_use_categories','0'),('110','default','0','contact/email/recipient_email','impro.box@gmail.com'),('111','default','0','contact/email/sender_email_identity','general');
/*!40000 ALTER TABLE `core_config_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cron_schedule`
--

DROP TABLE IF EXISTS `cron_schedule`;
CREATE TABLE `cron_schedule` (
  `schedule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Schedule Id',
  `job_code` varchar(255) NOT NULL DEFAULT '0' COMMENT 'Job Code',
  `status` varchar(7) NOT NULL DEFAULT 'pending' COMMENT 'Status',
  `messages` text COMMENT 'Messages',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `scheduled_at` timestamp NULL DEFAULT NULL COMMENT 'Scheduled At',
  `executed_at` timestamp NULL DEFAULT NULL COMMENT 'Executed At',
  `finished_at` timestamp NULL DEFAULT NULL COMMENT 'Finished At',
  PRIMARY KEY (`schedule_id`),
  KEY `CRON_SCHEDULE_JOB_CODE` (`job_code`),
  KEY `CRON_SCHEDULE_SCHEDULED_AT_STATUS` (`scheduled_at`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cron Schedule';

--
-- Table structure for table `customer_address_entity`
--

DROP TABLE IF EXISTS `customer_address_entity`;
CREATE TABLE `customer_address_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `parent_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Active',
  `city` varchar(255) NOT NULL COMMENT 'City',
  `company` varchar(255) DEFAULT NULL COMMENT 'Company',
  `country_id` varchar(255) NOT NULL COMMENT 'Country',
  `fax` varchar(255) DEFAULT NULL COMMENT 'Fax',
  `firstname` varchar(255) NOT NULL COMMENT 'First Name',
  `lastname` varchar(255) NOT NULL COMMENT 'Last Name',
  `middlename` varchar(255) DEFAULT NULL COMMENT 'Middle Name',
  `postcode` varchar(255) DEFAULT NULL COMMENT 'Zip/Postal Code',
  `prefix` varchar(40) DEFAULT NULL COMMENT 'Prefix',
  `region` varchar(255) DEFAULT NULL COMMENT 'State/Province',
  `region_id` int(10) unsigned DEFAULT NULL COMMENT 'State/Province',
  `street` text NOT NULL COMMENT 'Street Address',
  `suffix` varchar(40) DEFAULT NULL COMMENT 'Suffix',
  `telephone` varchar(255) NOT NULL COMMENT 'Phone Number',
  `vat_id` varchar(255) DEFAULT NULL COMMENT 'VAT number',
  `vat_is_valid` int(10) unsigned DEFAULT NULL COMMENT 'VAT number validity',
  `vat_request_date` varchar(255) DEFAULT NULL COMMENT 'VAT number validation request date',
  `vat_request_id` varchar(255) DEFAULT NULL COMMENT 'VAT number validation request ID',
  `vat_request_success` int(10) unsigned DEFAULT NULL COMMENT 'VAT number validation request success',
  PRIMARY KEY (`entity_id`),
  KEY `CUSTOMER_ADDRESS_ENTITY_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity';

--
-- Table structure for table `customer_address_entity_datetime`
--

DROP TABLE IF EXISTS `customer_address_entity_datetime`;
CREATE TABLE `customer_address_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` datetime DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CUSTOMER_ADDRESS_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `CUSTOMER_ADDRESS_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CUSTOMER_ADDRESS_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Datetime';

--
-- Table structure for table `customer_address_entity_decimal`
--

DROP TABLE IF EXISTS `customer_address_entity_decimal`;
CREATE TABLE `customer_address_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `CUSTOMER_ADDRESS_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Decimal';

--
-- Table structure for table `customer_address_entity_int`
--

DROP TABLE IF EXISTS `customer_address_entity_int`;
CREATE TABLE `customer_address_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `CUSTOMER_ADDRESS_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Int';

--
-- Table structure for table `customer_address_entity_text`
--

DROP TABLE IF EXISTS `customer_address_entity_text`;
CREATE TABLE `customer_address_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` text NOT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CUSTOMER_ADDRESS_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `CUSTOMER_ADDRESS_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Text';

--
-- Table structure for table `customer_address_entity_varchar`
--

DROP TABLE IF EXISTS `customer_address_entity_varchar`;
CREATE TABLE `customer_address_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `CUSTOMER_ADDRESS_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Varchar';

--
-- Table structure for table `customer_eav_attribute`
--

DROP TABLE IF EXISTS `customer_eav_attribute`;
CREATE TABLE `customer_eav_attribute` (
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  `is_visible` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Visible',
  `input_filter` varchar(255) DEFAULT NULL COMMENT 'Input Filter',
  `multiline_count` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Multiline Count',
  `validate_rules` text COMMENT 'Validate Rules',
  `is_system` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is System',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `data_model` varchar(255) DEFAULT NULL COMMENT 'Data Model',
  `is_used_in_grid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used in Grid',
  `is_visible_in_grid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible in Grid',
  `is_filterable_in_grid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Filterable in Grid',
  `is_searchable_in_grid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Searchable in Grid',
  PRIMARY KEY (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Eav Attribute';

--
-- Dumping data for table `customer_eav_attribute`
--

LOCK TABLES `customer_eav_attribute` WRITE;
/*!40000 ALTER TABLE `customer_eav_attribute` DISABLE KEYS */;
INSERT INTO `customer_eav_attribute` VALUES (1,1,NULL,0,NULL,1,'10',NULL,1,1,1,0),(2,0,NULL,0,NULL,1,'0',NULL,0,0,0,0),(3,1,NULL,0,NULL,1,'20',NULL,1,1,0,1),(4,0,NULL,0,NULL,0,'30',NULL,0,0,0,0),(5,1,NULL,0,'a:2:{s:15:\"max_text_length\";i:255;s:15:\"min_text_length\";i:1;}',1,'40',NULL,0,0,0,0),(6,0,NULL,0,NULL,0,'50',NULL,0,0,0,0),(7,1,NULL,0,'a:2:{s:15:\"max_text_length\";i:255;s:15:\"min_text_length\";i:1;}',1,'60',NULL,0,0,0,0),(8,0,NULL,0,NULL,0,'70',NULL,0,0,0,0),(9,1,NULL,0,'a:1:{s:16:\"input_validation\";s:5:\"email\";}',1,'80',NULL,1,1,1,1),(10,1,NULL,0,NULL,1,'25',NULL,1,1,1,0),(11,0,'date',0,'a:1:{s:16:\"input_validation\";s:4:\"date\";}',0,'90',NULL,1,1,1,0),(12,0,NULL,0,NULL,1,'0',NULL,0,0,0,0),(13,0,NULL,0,NULL,1,'0',NULL,0,0,0,0),(14,0,NULL,0,'a:1:{s:16:\"input_validation\";s:4:\"date\";}',1,'0',NULL,0,0,0,0),(15,0,NULL,0,NULL,1,'0',NULL,0,0,0,0),(16,0,NULL,0,NULL,1,'0',NULL,0,0,0,0),(17,0,NULL,0,'a:1:{s:15:\"max_text_length\";i:255;}',0,'100',NULL,1,1,0,1),(18,0,NULL,0,NULL,1,'0',NULL,1,1,1,0),(19,0,NULL,0,NULL,0,'0',NULL,1,1,1,0),(20,0,NULL,0,'a:0:{}',0,'110',NULL,1,1,1,0),(21,1,NULL,0,NULL,1,'28',NULL,0,0,0,0),(22,0,NULL,0,NULL,0,'10',NULL,0,0,0,0),(23,1,NULL,0,'a:2:{s:15:\"max_text_length\";i:255;s:15:\"min_text_length\";i:1;}',1,'20',NULL,1,0,0,1),(24,0,NULL,0,NULL,0,'30',NULL,0,0,0,0),(25,1,NULL,0,'a:2:{s:15:\"max_text_length\";i:255;s:15:\"min_text_length\";i:1;}',1,'40',NULL,1,0,0,1),(26,0,NULL,0,NULL,0,'50',NULL,0,0,0,0),(27,1,NULL,0,'a:2:{s:15:\"max_text_length\";i:255;s:15:\"min_text_length\";i:1;}',1,'60',NULL,1,0,0,1),(28,1,NULL,2,'a:2:{s:15:\"max_text_length\";i:255;s:15:\"min_text_length\";i:1;}',1,'70',NULL,1,0,0,1),(29,1,NULL,0,'a:2:{s:15:\"max_text_length\";i:255;s:15:\"min_text_length\";i:1;}',1,'80',NULL,1,0,0,1),(30,1,NULL,0,NULL,1,'90',NULL,1,1,1,0),(31,1,NULL,0,NULL,1,'100',NULL,1,1,0,1),(32,1,NULL,0,NULL,1,'100',NULL,0,0,0,0),(33,1,NULL,0,'a:0:{}',1,'110','Magento\\Customer\\Model\\Attribute\\Data\\Postcode',1,1,1,1),(34,1,NULL,0,'a:2:{s:15:\"max_text_length\";i:255;s:15:\"min_text_length\";i:1;}',1,'120',NULL,1,1,1,1),(35,0,NULL,0,'a:2:{s:15:\"max_text_length\";i:255;s:15:\"min_text_length\";i:1;}',0,'130',NULL,1,0,0,1),(36,1,NULL,0,NULL,1,'140',NULL,0,0,0,0),(37,0,NULL,0,NULL,1,'0',NULL,0,0,0,0),(38,0,NULL,0,NULL,1,'0',NULL,0,0,0,0),(39,0,NULL,0,NULL,1,'0',NULL,0,0,0,0),(40,0,NULL,0,NULL,1,'0',NULL,0,0,0,0),(41,0,NULL,0,NULL,0,'0',NULL,0,0,0,0),(42,0,NULL,0,NULL,1,'0',NULL,0,0,0,0),(43,0,NULL,0,NULL,1,'0',NULL,0,0,0,0),(44,0,NULL,0,NULL,1,'0',NULL,0,0,0,0);
/*!40000 ALTER TABLE `customer_eav_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_eav_attribute_website`
--

DROP TABLE IF EXISTS `customer_eav_attribute_website`;
CREATE TABLE `customer_eav_attribute_website` (
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `is_visible` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Visible',
  `is_required` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Required',
  `default_value` text COMMENT 'Default Value',
  `multiline_count` smallint(5) unsigned DEFAULT NULL COMMENT 'Multiline Count',
  PRIMARY KEY (`attribute_id`,`website_id`),
  KEY `CUSTOMER_EAV_ATTRIBUTE_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Eav Attribute Website';

--
-- Dumping data for table `customer_eav_attribute_website`
--

LOCK TABLES `customer_eav_attribute_website` WRITE;
/*!40000 ALTER TABLE `customer_eav_attribute_website` DISABLE KEYS */;
INSERT INTO `customer_eav_attribute_website` VALUES (1,1,NULL,NULL,NULL,NULL),(3,1,NULL,NULL,NULL,NULL),(9,1,NULL,NULL,NULL,NULL),(10,1,NULL,NULL,NULL,NULL),(11,1,NULL,NULL,NULL,NULL),(17,1,NULL,NULL,NULL,NULL),(18,1,NULL,NULL,NULL,NULL),(19,1,NULL,NULL,NULL,NULL),(20,1,NULL,NULL,NULL,NULL),(21,1,NULL,NULL,NULL,NULL),(23,1,NULL,NULL,NULL,NULL),(25,1,NULL,NULL,NULL,NULL),(27,1,NULL,NULL,NULL,NULL),(28,1,NULL,NULL,NULL,NULL),(29,1,NULL,NULL,NULL,NULL),(30,1,NULL,NULL,NULL,NULL),(31,1,NULL,NULL,NULL,NULL),(32,1,NULL,NULL,NULL,NULL),(33,1,NULL,NULL,NULL,NULL),(34,1,NULL,NULL,NULL,NULL),(35,1,NULL,NULL,NULL,NULL),(36,1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `customer_eav_attribute_website` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_entity`
--

DROP TABLE IF EXISTS `customer_entity`;
CREATE TABLE `customer_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `website_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Website Id',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Group Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `store_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Active',
  `disable_auto_group_change` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Disable automatic group change based on VAT ID',
  `created_in` varchar(255) DEFAULT NULL COMMENT 'Created From',
  `prefix` varchar(40) DEFAULT NULL COMMENT 'Prefix',
  `firstname` varchar(255) DEFAULT NULL COMMENT 'First Name',
  `middlename` varchar(255) DEFAULT NULL COMMENT 'Middle Name/Initial',
  `lastname` varchar(255) DEFAULT NULL COMMENT 'Last Name',
  `suffix` varchar(40) DEFAULT NULL COMMENT 'Suffix',
  `dob` date DEFAULT NULL COMMENT 'Date of Birth',
  `password_hash` varchar(128) DEFAULT NULL COMMENT 'Password_hash',
  `rp_token` varchar(128) DEFAULT NULL COMMENT 'Reset password token',
  `rp_token_created_at` datetime DEFAULT NULL COMMENT 'Reset password token creation time',
  `default_billing` int(10) unsigned DEFAULT NULL COMMENT 'Default Billing Address',
  `default_shipping` int(10) unsigned DEFAULT NULL COMMENT 'Default Shipping Address',
  `taxvat` varchar(50) DEFAULT NULL COMMENT 'Tax/VAT Number',
  `confirmation` varchar(64) DEFAULT NULL COMMENT 'Is Confirmed',
  `gender` smallint(5) unsigned DEFAULT NULL COMMENT 'Gender',
  `failures_num` smallint(6) DEFAULT '0' COMMENT 'Failure Number',
  `first_failure` timestamp NULL DEFAULT NULL COMMENT 'First Failure',
  `lock_expires` timestamp NULL DEFAULT NULL COMMENT 'Lock Expiration Date',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `CUSTOMER_ENTITY_EMAIL_WEBSITE_ID` (`email`,`website_id`),
  KEY `CUSTOMER_ENTITY_STORE_ID` (`store_id`),
  KEY `CUSTOMER_ENTITY_WEBSITE_ID` (`website_id`),
  KEY `CUSTOMER_ENTITY_FIRSTNAME` (`firstname`),
  KEY `CUSTOMER_ENTITY_LASTNAME` (`lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Customer Entity';

--
-- Dumping data for table `customer_entity`
--

LOCK TABLES `customer_entity` WRITE;
/*!40000 ALTER TABLE `customer_entity` DISABLE KEYS */;
INSERT INTO `customer_entity` VALUES ('1',1,'admin@admin.com',1,NULL,1,'2017-07-22 12:12:42','2017-07-22 17:49:56',1,0,'Eng',NULL,'Ihor',NULL,'Mazurenko',NULL,NULL,'839db05e586ad368014281f6c97286af2187b4374378580cbbbe9a3e232beb2e:N2dpoxlQodJi2TOMaGpMCSohiaYppG2x:1','4b4d401b690dd735129229064d13cb73','2017-07-22 15:12:42',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL);
/*!40000 ALTER TABLE `customer_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_entity_datetime`
--

DROP TABLE IF EXISTS `customer_entity_datetime`;
CREATE TABLE `customer_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` datetime DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CUSTOMER_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `CUSTOMER_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CUSTOMER_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Datetime';

--
-- Table structure for table `customer_entity_decimal`
--

DROP TABLE IF EXISTS `customer_entity_decimal`;
CREATE TABLE `customer_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `CUSTOMER_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Decimal';

--
-- Table structure for table `customer_entity_int`
--

DROP TABLE IF EXISTS `customer_entity_int`;
CREATE TABLE `customer_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CUSTOMER_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `CUSTOMER_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CUSTOMER_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Int';

--
-- Table structure for table `customer_entity_text`
--

DROP TABLE IF EXISTS `customer_entity_text`;
CREATE TABLE `customer_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` text NOT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CUSTOMER_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `CUSTOMER_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Text';

--
-- Table structure for table `customer_entity_varchar`
--

DROP TABLE IF EXISTS `customer_entity_varchar`;
CREATE TABLE `customer_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `CUSTOMER_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Varchar';

--
-- Table structure for table `customer_form_attribute`
--

DROP TABLE IF EXISTS `customer_form_attribute`;
CREATE TABLE `customer_form_attribute` (
  `form_code` varchar(32) NOT NULL COMMENT 'Form Code',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  PRIMARY KEY (`form_code`,`attribute_id`),
  KEY `CUSTOMER_FORM_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Form Attribute';

--
-- Dumping data for table `customer_form_attribute`
--

LOCK TABLES `customer_form_attribute` WRITE;
/*!40000 ALTER TABLE `customer_form_attribute` DISABLE KEYS */;
INSERT INTO `customer_form_attribute` VALUES ('adminhtml_customer',1),('adminhtml_customer',3),('adminhtml_customer',4),('customer_account_create',4),('customer_account_edit',4),('adminhtml_customer',5),('customer_account_create',5),('customer_account_edit',5),('adminhtml_customer',6),('customer_account_create',6),('customer_account_edit',6),('adminhtml_customer',7),('customer_account_create',7),('customer_account_edit',7),('adminhtml_customer',8),('customer_account_create',8),('customer_account_edit',8),('adminhtml_checkout',9),('adminhtml_customer',9),('customer_account_create',9),('customer_account_edit',9),('adminhtml_checkout',10),('adminhtml_customer',10),('adminhtml_checkout',11),('adminhtml_customer',11),('customer_account_create',11),('customer_account_edit',11),('adminhtml_checkout',17),('adminhtml_customer',17),('customer_account_create',17),('customer_account_edit',17),('adminhtml_customer',19),('customer_account_create',19),('customer_account_edit',19),('adminhtml_checkout',20),('adminhtml_customer',20),('customer_account_create',20),('customer_account_edit',20),('adminhtml_customer',21),('adminhtml_customer_address',22),('customer_address_edit',22),('customer_register_address',22),('adminhtml_customer_address',23),('customer_address_edit',23),('customer_register_address',23),('adminhtml_customer_address',24),('customer_address_edit',24),('customer_register_address',24),('adminhtml_customer_address',25),('customer_address_edit',25),('customer_register_address',25),('adminhtml_customer_address',26),('customer_address_edit',26),('customer_register_address',26),('adminhtml_customer_address',27),('customer_address_edit',27),('customer_register_address',27),('adminhtml_customer_address',28),('customer_address_edit',28),('customer_register_address',28),('adminhtml_customer_address',29),('customer_address_edit',29),('customer_register_address',29),('adminhtml_customer_address',30),('customer_address_edit',30),('customer_register_address',30),('adminhtml_customer_address',31),('customer_address_edit',31),('customer_register_address',31),('adminhtml_customer_address',32),('customer_address_edit',32),('customer_register_address',32),('adminhtml_customer_address',33),('customer_address_edit',33),('customer_register_address',33),('adminhtml_customer_address',34),('customer_address_edit',34),('customer_register_address',34),('adminhtml_customer_address',35),('customer_address_edit',35),('customer_register_address',35),('adminhtml_customer_address',36),('customer_address_edit',36),('customer_register_address',36);
/*!40000 ALTER TABLE `customer_form_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_grid_flat`
--

DROP TABLE IF EXISTS `customer_grid_flat`;
CREATE TABLE `customer_grid_flat` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `name` text COMMENT 'Name',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `group_id` int(11) DEFAULT NULL COMMENT 'Group_id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created_at',
  `website_id` int(11) DEFAULT NULL COMMENT 'Website_id',
  `confirmation` varchar(255) DEFAULT NULL COMMENT 'Confirmation',
  `created_in` text COMMENT 'Created_in',
  `dob` date DEFAULT NULL COMMENT 'Dob',
  `gender` int(11) DEFAULT NULL COMMENT 'Gender',
  `taxvat` varchar(255) DEFAULT NULL COMMENT 'Taxvat',
  `lock_expires` timestamp NULL DEFAULT NULL COMMENT 'Lock_expires',
  `billing_full` text COMMENT 'Billing_full',
  `billing_firstname` varchar(255) DEFAULT NULL COMMENT 'Billing_firstname',
  `billing_lastname` varchar(255) DEFAULT NULL COMMENT 'Billing_lastname',
  `billing_telephone` varchar(255) DEFAULT NULL COMMENT 'Billing_telephone',
  `billing_postcode` varchar(255) DEFAULT NULL COMMENT 'Billing_postcode',
  `billing_country_id` varchar(255) DEFAULT NULL COMMENT 'Billing_country_id',
  `billing_region` varchar(255) DEFAULT NULL COMMENT 'Billing_region',
  `billing_street` varchar(255) DEFAULT NULL COMMENT 'Billing_street',
  `billing_city` varchar(255) DEFAULT NULL COMMENT 'Billing_city',
  `billing_fax` varchar(255) DEFAULT NULL COMMENT 'Billing_fax',
  `billing_vat_id` varchar(255) DEFAULT NULL COMMENT 'Billing_vat_id',
  `billing_company` varchar(255) DEFAULT NULL COMMENT 'Billing_company',
  `shipping_full` text COMMENT 'Shipping_full',
  PRIMARY KEY (`entity_id`),
  KEY `CUSTOMER_GRID_FLAT_GROUP_ID` (`group_id`),
  KEY `CUSTOMER_GRID_FLAT_CREATED_AT` (`created_at`),
  KEY `CUSTOMER_GRID_FLAT_WEBSITE_ID` (`website_id`),
  KEY `CUSTOMER_GRID_FLAT_CONFIRMATION` (`confirmation`),
  KEY `CUSTOMER_GRID_FLAT_DOB` (`dob`),
  KEY `CUSTOMER_GRID_FLAT_GENDER` (`gender`),
  KEY `CUSTOMER_GRID_FLAT_BILLING_COUNTRY_ID` (`billing_country_id`),
  FULLTEXT KEY `FTI_B691CA777399890C71AC8A4CDFB8EA99` (`name`,`email`,`created_in`,`taxvat`,`billing_full`,`billing_firstname`,`billing_lastname`,`billing_telephone`,`billing_postcode`,`billing_region`,`billing_city`,`billing_fax`,`billing_company`,`shipping_full`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='customer_grid_flat';

--
-- Dumping data for table `customer_grid_flat`
--

LOCK TABLES `customer_grid_flat` WRITE;
/*!40000 ALTER TABLE `customer_grid_flat` DISABLE KEYS */;
INSERT INTO `customer_grid_flat` VALUES ('1','Ihor Mazurenko','admin@admin.com','1','2017-07-22 12:12:42','1',NULL,'Eng',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'');
/*!40000 ALTER TABLE `customer_grid_flat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_group`
--

DROP TABLE IF EXISTS `customer_group`;
CREATE TABLE `customer_group` (
  `customer_group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Customer Group Id',
  `customer_group_code` varchar(32) NOT NULL COMMENT 'Customer Group Code',
  `tax_class_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Tax Class Id',
  PRIMARY KEY (`customer_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Customer Group';

--
-- Dumping data for table `customer_group`
--

LOCK TABLES `customer_group` WRITE;
/*!40000 ALTER TABLE `customer_group` DISABLE KEYS */;
INSERT INTO `customer_group` VALUES (0,'NOT LOGGED IN','3'),(1,'General','3'),(2,'Wholesale','3'),(3,'Retailer','3');
/*!40000 ALTER TABLE `customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_log`
--

DROP TABLE IF EXISTS `customer_log`;
CREATE TABLE `customer_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Log ID',
  `customer_id` int(11) NOT NULL COMMENT 'Customer ID',
  `last_login_at` timestamp NULL DEFAULT NULL COMMENT 'Last Login Time',
  `last_logout_at` timestamp NULL DEFAULT NULL COMMENT 'Last Logout Time',
  PRIMARY KEY (`log_id`),
  UNIQUE KEY `CUSTOMER_LOG_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Customer Log Table';

--
-- Dumping data for table `customer_log`
--

LOCK TABLES `customer_log` WRITE;
/*!40000 ALTER TABLE `customer_log` DISABLE KEYS */;
INSERT INTO `customer_log` VALUES ('1','1','2017-08-17 14:04:51','2017-08-17 14:05:09');
/*!40000 ALTER TABLE `customer_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_visitor`
--

DROP TABLE IF EXISTS `customer_visitor`;
CREATE TABLE `customer_visitor` (
  `visitor_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Visitor ID',
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer Id',
  `session_id` varchar(64) DEFAULT NULL COMMENT 'Session ID',
  `last_visit_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Visit Time',
  PRIMARY KEY (`visitor_id`),
  KEY `CUSTOMER_VISITOR_CUSTOMER_ID` (`customer_id`),
  KEY `CUSTOMER_VISITOR_LAST_VISIT_AT` (`last_visit_at`)
) ENGINE=InnoDB AUTO_INCREMENT=444 DEFAULT CHARSET=utf8 COMMENT='Visitor Table';

--
-- Dumping data for table `customer_visitor`
--

LOCK TABLES `customer_visitor` WRITE;
/*!40000 ALTER TABLE `customer_visitor` DISABLE KEYS */;
INSERT INTO `customer_visitor` VALUES (1,NULL,'amm1dtj8gnvucfpqrsvg8s5dm6','2017-07-22 09:19:26'),(2,NULL,'8sh6u0d92v5p6nre8mef49lte3','2017-07-22 09:21:14'),(3,NULL,'5k21ve0utal55lps7ghifrndg1','2017-07-22 09:21:15'),(4,NULL,'81u8chgs231iig61ivd9cg9vr3','2017-07-22 09:22:12'),(5,NULL,'b73llfm7lbuht642352no6vuq3','2017-07-22 10:02:53'),(6,NULL,'lj4bkk9mm23a0lt7mtmegjeke5','2017-07-22 10:27:05'),(7,NULL,'34nkcbamnf2isgm66o8mfqcb66','2017-07-22 10:27:12'),(8,NULL,'s0bq0g9qqhparo0l74t7nu00c3','2017-07-22 11:14:32'),(9,NULL,'a0tviq1etdqd9s5ec2f768g5p4','2017-07-22 10:27:16'),(10,NULL,'ej70heserkh2rq0402iemp1ub3','2017-07-22 11:56:01'),(11,'1','2r545thjebba9ojijbbf9fcrh1','2017-07-22 12:50:12'),(12,NULL,'naavd4klqudil3lcfgm3t19bg1','2017-07-22 16:54:41'),(13,NULL,'e6s1ljkbva9l69gaiqurkptdq4','2017-07-22 16:54:58'),(14,'1','8rr4ileo8bor0quvrfvbtdmp87','2017-07-22 17:51:24'),(15,'1','vqdr6jg4u7ichv93qu5ra9jh20','2017-07-22 18:55:05'),(16,NULL,'gptkad3rmc0lbil0r03q0qd0v7','2017-07-22 18:55:08'),(17,'1','3a04sg03fh8r9d80e9lhq3csi2','2017-07-22 20:29:19'),(18,NULL,'48vvpouekev0ckn669sn0ii3r2','2017-07-22 20:38:53'),(19,NULL,'hvq9pviqj49k37oelbe77276p5','2017-07-23 05:47:07'),(20,NULL,'39u9fhkjid86ajosokm1o6iaa0','2017-07-23 05:51:06'),(21,NULL,'m1bo066o2h520tp3qnf69m4no1','2017-07-23 05:47:25'),(22,NULL,'ov7fqp5hrossbohl1kiut7o462','2017-07-23 07:37:48'),(23,NULL,'d25k8d225na0e1nigodnii4n27','2017-07-23 07:39:23'),(24,NULL,'b50jtpdgrtugr7521c2n9klfm1','2017-07-23 08:12:42'),(25,NULL,'l06tb9e3emiqpiqmuptvdb0di1','2017-07-23 08:41:19'),(26,'1','ad8dmitncrkdai6fagj73jkfh4','2017-07-23 09:00:27'),(27,NULL,'ovp6fbql72cnl3h58vrhr3po07','2017-07-23 08:41:34'),(28,NULL,'p952mog41cfs8toi430cbkctp2','2017-07-24 02:50:15'),(29,NULL,'sfh1bpqnp4e7lcnieeigp476b7','2017-07-24 11:11:59'),(30,NULL,'sfh1bpqnp4e7lcnieeigp476b7','2017-07-24 11:19:05'),(31,NULL,'38vluoae5dfm9i29akcsom4506','2017-07-24 19:29:15'),(32,NULL,'e22irijl74mch3s2n86qvkkq65','2017-07-24 19:32:06'),(33,NULL,'gg41bpadshie347uc9ge33rdu7','2017-07-24 20:33:20'),(34,NULL,'qvn8pba2joinob5bk16vrqupa4','2017-07-24 21:38:44'),(35,NULL,'2jgk246745lmfhp7cul7v09e34','2017-07-24 22:48:31'),(36,NULL,'2pc5lq0r48ju77gm550t84e8q2','2017-07-24 23:15:44'),(37,NULL,'vqf275iaelmkjeuqtqueqamgs2','2017-07-25 05:56:17'),(38,NULL,'1me0a848u62hra2ffls3bju8t6','2017-07-25 16:01:45'),(39,'1','4ok4vci88p13d3lqf8lpnp2247','2017-07-25 16:51:01'),(40,NULL,'foh3uhn9318k6t3nlchnlu0up7','2017-07-25 17:52:57'),(41,NULL,'1huhc1v26jo0q7gciqqu4jfta5','2017-07-25 20:41:03'),(42,'1','r77g0dl81vq6r0cgfbqe85ep50','2017-07-25 20:46:40'),(43,NULL,'agor9c9gr6p3iejve3g2po01p0','2017-07-25 21:43:17'),(44,NULL,'3q0798h7tfmn0hfp1c78j7f442','2017-07-26 16:03:27'),(45,NULL,'05r1h8u655gk66gr717gm17bk6','2017-07-26 15:56:27'),(46,NULL,'s9he5c8kne8jvlbb81brl9p243','2017-07-26 15:56:27'),(47,NULL,'etqb527ddbbm0u91iru4rvcbs4','2017-07-26 17:04:34'),(48,NULL,'lkbd6ulipsrln8uat8rdiu1k02','2017-07-26 17:01:10'),(49,NULL,'f52ojjqkvajfc3vkgtu13q4od1','2017-07-26 17:01:10'),(50,NULL,'480063h2od99gsa3ah8pp7tre1','2017-07-26 18:20:54'),(51,NULL,'gnd8civ77p9bic1ocuieqmve92','2017-07-26 18:20:54'),(52,NULL,'lvgranv5m63eh1141t9mp1ke60','2017-07-26 18:22:54'),(53,NULL,'0h4utetfjk8tau87el2k2qnsb2','2017-07-26 19:29:51'),(54,NULL,'8cj7ukej8gnhi5snjnk6076ce4','2017-07-26 19:29:25'),(55,NULL,'bn6d37cngs6mc8u5c79b774l17','2017-07-26 19:29:25'),(56,NULL,'ga2lcecskuvdkcgjc6m69u74r7','2017-07-26 20:29:31'),(57,NULL,'csn4fiq95uv67t1vthq2c3l8d5','2017-07-26 20:29:31'),(58,'1','04ssjquhcaf0inj8ivuook3p46','2017-07-26 22:14:44'),(59,NULL,'1cect66c904n5qhvifcsh5fii5','2017-07-26 23:16:13'),(60,'1','6jvmcs27jlaa90264i0hq8dh17','2017-07-26 23:31:08'),(61,NULL,'30dh58m7ud3mqpg1ppfbdikha7','2017-07-27 19:25:27'),(62,NULL,'ofic42fnbt4ouq3hk7lrgvak14','2017-07-28 18:45:18'),(63,NULL,'pnd50vrjipvf9fpvtjhncno1l5','2017-07-28 19:20:11'),(64,NULL,'9sifop9sfoiric9ousr93c43p5','2017-07-28 19:48:47'),(65,NULL,'3fvhkq0et3pv6k2imfbdpiil20','2017-07-28 19:49:44'),(66,NULL,'o49ruiqbguug5fnu5tmguu7ob7','2017-07-28 19:48:54'),(67,NULL,'ia0hb806megtfe9tqbllcqvli7','2017-07-28 19:48:54'),(68,NULL,'pitaombs1ftvkk0ulaes69i2g4','2017-07-28 20:53:35'),(69,NULL,'o6dl1mv2m6akmutc45ilq0tpm1','2017-07-28 21:16:22'),(70,NULL,'rdlmleke17lstjcvghi3obvle7','2017-07-28 20:53:35'),(71,NULL,'3kafut1h9ut8gqgscijffkpto4','2017-07-28 21:53:50'),(72,NULL,'aunc4e3ta932e8etmn1v13hgp7','2017-07-28 21:53:50'),(73,NULL,'f9kb3ucvg0gsknbl1d4ipp5d20','2017-07-28 22:31:16'),(74,NULL,'51c8l1170ic0pej9vv5ut5vts7','2017-07-29 12:20:10'),(75,NULL,'31mok64aqs25a19rkgomikaq17','2017-07-29 16:19:30'),(76,NULL,'1i49f16qkmllf8s33mue0v0e90','2017-07-29 20:49:33'),(77,NULL,'2qv3qnj8pdf9sb31pdjt4d2172','2017-07-29 21:01:06'),(78,NULL,'aguepkap9mihtl317qijbb9hm2','2017-07-29 20:49:33'),(79,NULL,'p4ivj342ut8iu6tcte30dofeh2','2017-07-30 19:58:47'),(80,NULL,'lfo17jlftgqv9a4gl5v769a5m3','2017-07-30 19:58:47'),(81,NULL,'qkb8m1hf6firhs7uirg2k8o6f0','2017-07-30 20:31:49'),(82,NULL,'rruks4va0m1klgmsqarv3ttbd6','2017-07-31 17:23:32'),(83,NULL,'cssb37clhgkvjicetjd6hlkjj1','2017-07-31 19:25:07'),(84,NULL,'dhc0230fo12lmpcsqkff469e43','2017-07-31 22:14:03'),(85,NULL,'khmk151j3tuq4pgb59gfsv7fo6','2017-07-31 22:33:26'),(86,NULL,'prhnds1nrtv3sehret0i2ed4r4','2017-08-01 07:36:42'),(87,NULL,'h8dqdgki0t5veq8a4h0nrr0au0','2017-08-01 08:33:06'),(88,NULL,'36tkuuu1ga7h4km7jdj3a246j7','2017-08-01 09:14:25'),(89,NULL,'7gndnrfudo5ngtqe7k9m2kpb42','2017-08-01 09:14:25'),(90,NULL,'p9amaa8r5jendan3sj9k3phlr6','2017-08-01 09:15:46'),(91,NULL,'e3cpb7kh9qlme8hfb3hqt92hj3','2017-08-01 10:23:41'),(92,NULL,'o6f5dte72lor3k5kj102fgt9d7','2017-08-01 10:15:55'),(93,NULL,'e5hlfevvm1kkfedv1anh81s3t6','2017-08-01 10:15:55'),(94,NULL,'gtsukossd194ligmt13ourskt5','2017-08-01 12:56:31'),(95,NULL,'4vmag1b1de2gotrq9nhlsp1ki2','2017-08-01 12:53:30'),(96,NULL,'lc3hogk78h9jjgprftrd83t941','2017-08-01 12:53:30'),(97,NULL,'36tl495thvnm9hvoni939e67s6','2017-08-01 13:57:10'),(98,NULL,'1qqkkm1ptk1vb1t8959ovpeop2','2017-08-01 13:56:41'),(99,NULL,'70gv18ds6rqb8n6f6hfu7lb582','2017-08-01 13:56:41'),(100,NULL,'st3jb7gitt6mvmumvfp6ti9377','2017-08-01 19:30:57'),(101,NULL,'l98s2i9dd6s99sr029473um595','2017-08-01 19:30:57'),(102,NULL,'i8kkdlh1b34voc49vne3fkkiu7','2017-08-01 19:31:41'),(103,NULL,'2mjeleo0ic6nqhhuaibsfdcbt0','2017-08-01 20:31:19'),(104,NULL,'559gk7to0t8o1shlg7r8te9s12','2017-08-01 21:29:15'),(105,NULL,'lhps8t7kmfac5fmtkhrlvcqbf7','2017-08-01 20:31:19'),(106,NULL,'h82n285p9d5nernq7tchn4d9c5','2017-08-02 08:26:27'),(107,NULL,'tp7j2c247b8eqk0b67lur9apl7','2017-08-02 08:26:29'),(108,NULL,'mdb4tlitj037kcp35e0ibrgde2','2017-08-02 08:26:30'),(109,NULL,'gqekbu2lbq1q694atkpjc20gh1','2017-08-02 08:26:31'),(110,NULL,'0l7g3kvmcno4a2ldht9gas6me5','2017-08-02 08:27:45'),(111,NULL,'gub709m441bfpfnacpkb0bo0r6','2017-08-02 09:26:43'),(112,NULL,'iji16c58junaj7rr3ftjlasak2','2017-08-02 09:26:43'),(113,NULL,'tb0pfnruihsb3lm58fnpdicc65','2017-08-02 10:26:29'),(114,NULL,'s1l68uqikdn0c3t1d7mel05va4','2017-08-02 10:26:54'),(115,NULL,'4tuvi0lmte5ej5v1e0e0v90hv1','2017-08-02 10:27:00'),(116,NULL,'avkf5sdjou0ie2g4oi2aouamh0','2017-08-02 10:27:00'),(117,NULL,'fscedkvjgaaltbmn71c2c91h06','2017-08-02 10:27:01'),(118,NULL,'96dmpqor4eouqa0049s9cohlo7','2017-08-02 10:29:37'),(119,NULL,'bua4mk51ck96haode7pa6hi2v4','2017-08-02 10:27:04'),(120,NULL,'el4lo7c4m887pl8cqml1e46u70','2017-08-02 10:27:04'),(121,NULL,'96dmpqor4eouqa0049s9cohlo7','2017-08-02 11:23:45'),(122,NULL,'u4d25tcdkheitfogju6ks1l2k1','2017-08-02 11:29:09'),(123,NULL,'k5r6pc6aqnvo1915tvj4aq5tg6','2017-08-02 12:28:17'),(124,NULL,'ala07c40s2gnselritru7kdh84','2017-08-02 12:32:36'),(125,NULL,'ehmikcrnnue1rf9vopt8ke0ii2','2017-08-02 12:32:43'),(126,NULL,'mf9csmt5raaeh8aboh54kvs5a4','2017-08-02 12:32:43'),(127,NULL,'alkv64dilvt8i83a84lh1jg0q2','2017-08-02 13:00:09'),(128,NULL,'72jrim8p3153kugjqjdmgrl3c7','2017-08-02 12:32:44'),(129,NULL,'e9jcc53ht54436e8h8f1pit1o6','2017-08-02 13:33:01'),(130,NULL,'h16o0no0qpko1nc0pkelkig3o2','2017-08-02 13:33:01'),(131,NULL,'ctogutl3qg2nr99obfsl45q0l4','2017-08-02 13:33:01'),(132,NULL,'j8iq62nnqrn535112j0ut3j2d6','2017-08-02 13:33:07'),(133,NULL,'2robrr90di34tic12ttiitng66','2017-08-02 14:18:07'),(134,NULL,'4am06cpl4eq13ua5shgjj7n4f3','2017-08-02 13:33:08'),(135,NULL,'8pvt3ji1qkgdf701ai754n2de3','2017-08-02 19:21:36'),(136,NULL,'4qerh17vl07f8lrt7eo8rmnq51','2017-08-02 20:20:58'),(137,NULL,'ju8eetoas17u57qgbmad9b9gr1','2017-08-02 19:21:36'),(138,NULL,'46797pcavi41qap9tltn3a7ek0','2017-08-02 20:22:30'),(139,NULL,'n0mt8ff8jpjmi2udm0k6o7u1e7','2017-08-02 20:22:39'),(140,NULL,'35poqd9ft98m64shi6q2fvlpo3','2017-08-02 21:17:18'),(141,NULL,'r4et15por4uphjeb3pk2c4urn2','2017-08-02 20:22:39'),(142,NULL,'cj1u2938qgadh5tred6uj70pj6','2017-08-02 20:22:39'),(143,NULL,'tan2qs3sef17p4codh0tuvqv06','2017-08-02 21:23:13'),(144,NULL,'q7en5ivbg5nkd9cq2bh9k60bg3','2017-08-02 22:16:37'),(145,NULL,'m7fdjcjhk7luq7frflgljrcp10','2017-08-02 21:23:13'),(146,NULL,'sma1o8uuek4heks7669h7ej801','2017-08-02 22:24:38'),(147,NULL,'uug2p9guu86e4vps5s3kv435e4','2017-08-02 22:24:46'),(148,NULL,'bct38p7ignvhe336pelongafn6','2017-08-02 23:24:10'),(149,NULL,'hkiqgs9487vjsms8ro256crb94','2017-08-02 22:24:46'),(150,NULL,'auuga70o559j05l4qqf75ughd0','2017-08-02 22:24:47'),(151,NULL,'a6s7l2ivgj8pjbimm1ij483j22','2017-08-02 23:27:36'),(152,NULL,'238es4hqt9o08nh8e1j9plcj37','2017-08-02 23:27:42'),(153,NULL,'5rffsgum5ln26tfdun99pr3mp5','2017-08-03 00:15:21'),(154,NULL,'7tpigmbjk1vv2kuntv23c8rk60','2017-08-02 23:27:43'),(155,NULL,'9hirhimckukh3ssecr50j82hm6','2017-08-03 07:09:44'),(156,NULL,'7ic3gcoj87kqb0brpepuqb3ea5','2017-08-03 07:09:54'),(157,NULL,'b9etp29apc2oge4b8ktthvb2g5','2017-08-03 07:09:54'),(158,NULL,'sm01fpclpgq1obb6lfm37bubl5','2017-08-03 07:11:10'),(159,NULL,'sb8r51npc3f8nbfc0r3emps5r1','2017-08-03 07:09:54'),(160,NULL,'n0ggfdvvfk0r3uco46o1s4l3s5','2017-08-03 07:11:23'),(161,NULL,'a1kc475nqj0nba6dgcu87aes26','2017-08-03 07:11:23'),(162,NULL,'kteoc58dhbvlpmps10bu22c6v5','2017-08-03 07:33:06'),(163,NULL,'05ds6i3esgd9mar9dqlcqfoef4','2017-08-03 07:11:24'),(164,NULL,'kbtbkr9us2nqpficfuph2ikhs5','2017-08-03 09:35:03'),(165,NULL,'nvbpt1mj9ktlf7a37c7525h6p3','2017-08-03 09:35:03'),(166,NULL,'leg9ce5kpglq7dsask570umj74','2017-08-03 09:35:03'),(167,NULL,'ijiavt7vcrge3h38k21494sil4','2017-08-03 10:31:45'),(168,NULL,'jeg2pgl0koiamfiui74ovq8vo6','2017-08-03 09:35:08'),(169,NULL,'1thk71ld2fo297dt46nt42ppk2','2017-08-03 09:35:09'),(170,NULL,'b0tfj0msqja6oqan7ujv6o1ck0','2017-08-03 10:49:25'),(171,NULL,'2gbeupk3khaoisehsbjk6upo42','2017-08-03 12:06:21'),(172,NULL,'nn3krttuk4gop69gd6u7r7vfe3','2017-08-03 12:49:33'),(173,NULL,'13regf9fa5a278qi2lf0ogl0b1','2017-08-03 12:06:31'),(174,NULL,'djvgv9dgtu976h12d1l4o3ijb1','2017-08-03 12:06:31'),(175,NULL,'9klnliajj035f71a7ngqprgb80','2017-08-03 12:06:31'),(176,NULL,'6ob5j955pafdnj200959e255q4','2017-08-03 13:57:09'),(177,NULL,'6p7a05blf8pk8aqf1t7gukagi0','2017-08-03 13:20:04'),(178,NULL,'unpln889dnpnrb8sjdekbmrp87','2017-08-03 13:20:04'),(179,NULL,'df139orh12f9b1kpr8fj6rkq56','2017-08-03 18:58:48'),(180,NULL,'s4vcqsh8p9tl3m4mcv5pt5rt15','2017-08-03 18:32:40'),(181,NULL,'tl270kik32e18eq8nrnnd5fed5','2017-08-03 18:32:41'),(182,NULL,'kitu8j1vlahmg32ko6c94o2ai6','2017-08-03 19:37:04'),(183,NULL,'0vf3v0mrhvob4glvnmmj05ndo2','2017-08-03 20:33:13'),(184,NULL,'82numllfege9a8hvd3uk9u5ha4','2017-08-03 19:37:04'),(185,NULL,'le6lkv7omj890jq4nlf2k3p1r0','2017-08-03 20:38:33'),(186,NULL,'ckikkb890dj43c1okiq1sn3ck7','2017-08-03 21:36:20'),(187,NULL,'dg68dmeqn7cj3ahaj9i016rto7','2017-08-03 20:38:33'),(188,NULL,'nj66thbt1u5tvtn020s9nlmaj1','2017-08-03 21:38:40'),(189,NULL,'7e1c32vtcifb3onq6ikcesdoe6','2017-08-03 22:11:41'),(190,NULL,'142aog5rvn65h3eutbip482et1','2017-08-03 21:38:40'),(191,NULL,'c2qvsgovahj8vv4pkfeu3n6gi3','2017-08-04 07:47:47'),(192,NULL,'q7fkfrg29p38d0u2jrtpcj1o12','2017-08-04 07:48:28'),(193,NULL,'5o58qb83klg5nlek8nrtnpk263','2017-08-04 07:47:59'),(194,NULL,'ko6lia61aclqbsnsvb4cr89at5','2017-08-04 07:47:59'),(195,NULL,'pejhvn45fk21mhi1rmdsganhi3','2017-08-04 07:47:59'),(196,NULL,'n6r0c4r06pdfbhu9uhtql1frb1','2017-08-04 15:30:40'),(197,NULL,'nsb6crf7p7en142t2fq3rscej4','2017-08-04 15:30:52'),(198,NULL,'q7u85p4h3n4t5m9ql5fr57c3b6','2017-08-04 15:58:57'),(199,NULL,'19dt4ieuje4253mudq0b8ss0p5','2017-08-04 15:30:52'),(200,NULL,'suri4v1mdrlpmpd9kpt9a48rl6','2017-08-04 15:30:52'),(201,NULL,'lm060jj0lbv4ql5lbc2k6f81q0','2017-08-04 16:34:55'),(202,NULL,'dhlm5ao999lvm8j8hvp23eqfk5','2017-08-04 16:48:00'),(203,NULL,'dtq3gus4a8l868ra798u0l4hg3','2017-08-04 16:35:06'),(204,NULL,'e2h6vl5sgvjt9j9ob26fdst6v5','2017-08-04 16:35:06'),(205,NULL,'sdr9k0udat4hlg9o7ttg6ea763','2017-08-04 16:35:07'),(206,NULL,'skn9or63pbbfj9si821jtgf6a1','2017-08-07 12:54:44'),(207,NULL,'6tq4rh75t72ahgdrnq4jao2o02','2017-08-07 12:54:53'),(208,NULL,'4b3c2k51r8ql3oa8k3ahjtqeh3','2017-08-07 13:46:15'),(209,NULL,'ovo1ddj31440hqsv31jdb04h86','2017-08-07 12:54:53'),(210,NULL,'nffkjun96ffejj035gkna5oah0','2017-08-07 12:54:54'),(211,NULL,'t8n6guj9gv9l5d09uq7u8s3060','2017-08-07 14:00:52'),(212,NULL,'c1d727t5rq9k4g63pi1k7o90e3','2017-08-07 14:01:01'),(213,NULL,'pkk536faugs13t82cblvq3nrf6','2017-08-07 14:01:01'),(214,NULL,'kq57ju5kajhjufs3hak4vj5fo3','2017-08-07 14:09:09'),(215,NULL,'lpcreb9dgckk44on929k73lqb1','2017-08-07 14:01:01'),(216,NULL,'l3a1vepispdkuho3oof85da970','2017-08-07 16:09:13'),(217,NULL,'o5eq54oon8k1l1m2j1f67kpf94','2017-08-07 17:08:46'),(218,NULL,'3uh0buhnb44hissmo4r8rff9g2','2017-08-07 16:09:21'),(219,NULL,'9ldvutr5cv1ep166knep161jo7','2017-08-07 16:09:21'),(220,NULL,'ns7s1pd7e0blvvsq755be6h124','2017-08-07 16:09:22'),(221,NULL,'njrh7c19sohvn5v3voac3r0072','2017-08-07 17:10:19'),(222,NULL,'9l5idgtkvfsufqqpj79rn6sj43','2017-08-07 17:10:19'),(223,NULL,'j8cdf4psf2q0sbkan78mfk9em5','2017-08-07 17:25:26'),(224,NULL,'kkqli5tt1jjpu3qth11ee7ff47','2017-08-07 17:10:19'),(225,NULL,'hck5653b8hgedru4sglgu677f2','2017-08-08 17:29:58'),(226,NULL,'od5d5ult2r71q8hpmqkmfdkgc4','2017-08-08 17:30:36'),(227,NULL,'qv5sak625e5he7vna2uc4fu6s3','2017-08-08 17:30:36'),(228,NULL,'vbov2cc623bvhcb5706hm9gls0','2017-08-08 18:30:36'),(229,NULL,'mnncubim52od84m21uojvmboq6','2017-08-08 17:30:36'),(230,NULL,'ju5inmcvkecu2ba69mimea7jk3','2017-08-08 18:41:23'),(231,NULL,'e6e26qpoj5kfod65srsvh0qek3','2017-08-08 18:41:32'),(232,NULL,'ds1dpqh3pnavpo7vegkrnadkl6','2017-08-08 18:42:14'),(233,NULL,'jd2nmmiat8n926i8or05itv9p1','2017-08-08 18:42:23'),(234,NULL,'fhuqo07hfql5p4b5tlh9jept93','2017-08-08 18:46:12'),(235,NULL,'79eiv16qnbh0sor01r78eh26r7','2017-08-08 18:50:22'),(236,NULL,'blu7ec6q5nijpdke16oum7kqu4','2017-08-08 18:50:40'),(237,NULL,'i156cisei1eanlm9bamo01mq61','2017-08-08 18:52:53'),(238,NULL,'i5oeikd4vujho9k2p8n7vpjb50','2017-08-08 18:54:28'),(239,NULL,'qkghf9e4rpheekthse0pf25805','2017-08-08 18:54:42'),(240,NULL,'5ep2ut8fqcpd461q32mjrdltn3','2017-08-08 19:00:06'),(241,NULL,'ouqnfjcrc1e4dgpu6ogi7eho05','2017-08-08 19:00:14'),(242,NULL,'ghrohmglg2f38993ekiloff2o5','2017-08-08 19:11:07'),(243,NULL,'qog9rcv765gmsgqn0veimqc3l4','2017-08-08 19:11:15'),(244,NULL,'f7459lgmpa5c291u68jk0kn7r3','2017-08-08 19:12:21'),(245,NULL,'5cct79fnvog8qf19ueqdkdm2k4','2017-08-08 19:12:30'),(246,NULL,'tie3u504s12gsmu79f8ej9sjn2','2017-08-08 19:15:47'),(247,NULL,'e4i4qrtnveoub4aj7eeimgp9v3','2017-08-08 19:15:56'),(248,NULL,'s8cslmnp2nqp2rj11q91ifceu2','2017-08-08 19:17:22'),(249,NULL,'tfaq428euv1qddg7m3gecscrl6','2017-08-08 19:17:30'),(250,NULL,'nds3d5o3tgagsj171alaie85r4','2017-08-08 19:18:05'),(251,NULL,'uahjva5vdvmos09chkua7trd33','2017-08-08 19:18:12'),(252,NULL,'5gqisegh5o6c53igrn6tqc80s6','2017-08-08 19:18:39'),(253,NULL,'7vou0gikj4gisj0sac574o2cq5','2017-08-08 19:18:47'),(254,NULL,'hk0m19lnnnooo7dkdedfu9uno3','2017-08-08 19:19:19'),(255,NULL,'ch2q7ljclueakg1vfp1fmv8ht5','2017-08-08 19:19:27'),(256,NULL,'hla7ddjc4939lvst4gcppofie3','2017-08-08 19:20:05'),(257,NULL,'hp3hc905bqe4vjtqrkf162rvj6','2017-08-08 19:20:13'),(258,NULL,'tkkqe26u9hhjke0masihrhrjb3','2017-08-08 19:20:43'),(259,NULL,'lps0k52uf9cqbarh47gsddqr76','2017-08-08 19:20:51'),(260,NULL,'hgqav8pb2vhitmipf0kltt8277','2017-08-08 19:23:01'),(261,NULL,'k38s7u86ti2hq97g80i7lk2ji3','2017-08-08 19:23:12'),(262,NULL,'2b0joitt7j9lclse3ehe37a0j0','2017-08-08 19:23:56'),(263,NULL,'jip79i62lj4ilemt0voat98s32','2017-08-08 19:24:04'),(264,NULL,'jlq2qah3j94j5f47e6vt71ltf2','2017-08-08 19:25:43'),(265,NULL,'imd43hq9477aauv4tbfgpvfem6','2017-08-08 19:25:50'),(266,NULL,'qrn2hpghjtuvpnp9o3hgg9h9p0','2017-08-08 19:33:49'),(267,NULL,'aqh93lm0pslitu88t50tlfijg6','2017-08-08 19:35:59'),(268,NULL,'j4ab3jvn67d66je8j6dm3irg23','2017-08-08 19:33:49'),(269,NULL,'59vka47p65sdhbu6gf0cvhous3','2017-08-09 21:07:10'),(270,NULL,'2dnji3qpib8k5o0akr5i326633','2017-08-09 21:07:18'),(271,NULL,'9i4m3c2t3gulf0plrovftll8g0','2017-08-09 21:07:18'),(272,NULL,'5su5luf3dv5otjsujrdoauc732','2017-08-09 21:50:40'),(273,NULL,'uags7c5qjr8beroflelk4amji1','2017-08-09 21:07:19'),(274,NULL,'kkod5aqpcpsq4mjqa6lbvcovb6','2017-08-10 17:33:36'),(275,NULL,'qogrg489o47b57na8tpg8acbm1','2017-08-10 18:11:34'),(276,NULL,'t3eh9seoi02fr6tcvonf7h6qc7','2017-08-10 17:33:36'),(277,NULL,'lmei1f0p8ue73bh334k8pecjt0','2017-08-10 18:34:40'),(278,NULL,'23rd66ebtm2gq5kthuv6gculd5','2017-08-10 18:33:40'),(279,NULL,'afsgv1utqja713dbr25l4t4o61','2017-08-10 18:33:40'),(280,NULL,'f2hp72o42sih55ine419lh11p1','2017-08-11 12:06:46'),(281,NULL,'g2a1mctsv9op535gm9cdbi3kb4','2017-08-11 12:06:58'),(282,NULL,'kvco2kntumivllts9s9h3ct5e5','2017-08-11 12:52:37'),(283,NULL,'i1sf1oq72r203mapf8c4kcgo21','2017-08-11 12:06:58'),(284,NULL,'opouau1kpjl2jet4djimmrdng2','2017-08-11 12:06:59'),(285,NULL,'2d4e4i8h9geukdc3gkm6du1v36','2017-08-11 13:07:22'),(286,NULL,'2afi5ee6hmgt2ivl5dukj3q7n5','2017-08-11 14:04:58'),(287,NULL,'davp7us3e6o3fo7ovd5noso4q6','2017-08-11 13:07:22'),(288,NULL,'b9itgo4l4ii6tvl6g5dkgpb154','2017-08-11 15:05:46'),(289,NULL,'rko1t8d1pmlclr4tonesg9mc34','2017-08-11 15:05:54'),(290,NULL,'jrlepnpb49rj01p1v9djvi8kp7','2017-08-11 16:01:22'),(291,NULL,'i02ummbqaale8ham22ostcrcc4','2017-08-11 15:05:54'),(292,NULL,'mri9p6p4oojnqve2cuc9hqca12','2017-08-11 15:05:55'),(293,NULL,'upc21cane774g3l7b5snaumbe0','2017-08-11 16:54:49'),(294,NULL,'j0r2si2c6onafj429n8c5kmqq4','2017-08-11 16:08:21'),(295,NULL,'csts51st8rp99rveg8r2rm6k71','2017-08-11 16:08:21'),(296,NULL,'h3fi9vtlrqbgcb2om3675h28h5','2017-08-11 18:21:52'),(297,NULL,'kb5h49p50kcqdv628kku60ron3','2017-08-11 19:12:45'),(298,NULL,'153psgdhhps4lt398b2pfpcps1','2017-08-11 18:22:03'),(299,NULL,'t04daere25nausouihah606482','2017-08-11 18:22:03'),(300,NULL,'7a6uo1s3si4s0i61q6nret5tf5','2017-08-11 18:22:05'),(301,NULL,'60niqaataqbjf5j9d5cpb145o1','2017-08-11 19:23:11'),(302,NULL,'gq8lh67cc5hj2jaish339tctq1','2017-08-11 20:22:15'),(303,NULL,'570tk9tbrrigeiskkefiacdvc3','2017-08-11 19:23:12'),(304,NULL,'tcl1h68nlbr2dgddkem4osomu7','2017-08-11 20:25:05'),(305,NULL,'e34p7cbug68r1mh46a9gld7u77','2017-08-11 21:20:06'),(306,NULL,'mcs65frqib2n20bmkh1761lpf7','2017-08-11 20:25:05'),(307,NULL,'a0ujqg18vgom8spdne7i6ingu3','2017-08-12 07:04:39'),(308,NULL,'5gjmist24mvh2gfks1uj776dg5','2017-08-12 07:04:47'),(309,NULL,'go1bkqv53kgrnjc0dfvnn2lsh1','2017-08-12 07:04:48'),(310,NULL,'rl3j1970i6euglbdc0abmcu7n5','2017-08-12 07:08:58'),(311,NULL,'jrfuavgv32nu0qs95ip3hpumr5','2017-08-12 07:04:48'),(312,NULL,'0ngfop0au3at5fkihhtbluo2t3','2017-08-12 11:54:47'),(313,NULL,'tth1a2opdj5s6tsgk3o3r0s712','2017-08-12 11:54:55'),(314,NULL,'oe3ogh1vmi41mf1it529p562k4','2017-08-12 12:23:56'),(315,NULL,'rdgb79mr9gk89fqi9vq2ba2oh3','2017-08-12 11:54:55'),(316,NULL,'bsujj2fhqrod03mgc8t3nn9om0','2017-08-12 11:54:55'),(317,NULL,'m2r1o93oqm1m8jbneclh82tu26','2017-08-12 14:33:27'),(318,NULL,'85i4f4pnkl72lkrnj44rcjt2v7','2017-08-12 14:33:35'),(319,NULL,'f7ktrnud6js7nq64orqqcd4a77','2017-08-12 15:12:45'),(320,NULL,'unqo57324jt9786eida14em335','2017-08-12 14:33:35'),(321,NULL,'l9rvg14v757m0onaucen98hm02','2017-08-12 14:33:36'),(322,NULL,'7iohi6vdo0kkqkqb945568npp5','2017-08-12 16:36:55'),(323,NULL,'valkf412gfep5d6hjl13aqjou5','2017-08-12 15:37:49'),(324,NULL,'sna0nnq1he3l9eav2f0fu5ojg6','2017-08-12 15:37:49'),(325,NULL,'bb4u4vqud6vmbbb4vjehqu7234','2017-08-12 17:36:49'),(326,NULL,'u579e67v3ciu73rm9jvquihs44','2017-08-12 16:37:57'),(327,NULL,'3eg4vqsmic2156j07hcdv4d931','2017-08-12 16:37:57'),(328,NULL,'snquh7d6f9aj9k0b1ql78jsc63','2017-08-12 16:37:58'),(329,NULL,'cgc692385qnopgdk4diiqlkii3','2017-08-12 17:38:41'),(330,NULL,'d2d2gvepg4o81f9dmids23r763','2017-08-12 17:38:55'),(331,NULL,'ka8cm2ha9h73nde9dbo2pdttm0','2017-08-12 17:38:55'),(332,NULL,'1b01sqtlr6t8kecmdrs8k54pj2','2017-08-12 17:38:55'),(333,NULL,'66ft85kken1trnnkojcrlulqs2','2017-08-12 18:22:31'),(334,NULL,'rh6jadirs7vsvms9f5fui2u8d5','2017-08-12 17:39:01'),(335,NULL,'prbrl826ua4op12cqdssh70aa4','2017-08-12 19:14:55'),(336,NULL,'vmnra9o8er12p8gicnk27p4r80','2017-08-12 18:42:40'),(337,NULL,'teejkelkj6psmqmvn3p0our0j2','2017-08-12 20:18:00'),(338,NULL,'p0ir595mhn2gr4mbok5f5rihh2','2017-08-12 19:48:32'),(339,NULL,'ns8v5m03kmn4kvj923e8ch1g21','2017-08-12 19:48:33'),(340,NULL,'l6l87oapt3at9ndn9bgh3ot5o5','2017-08-13 07:40:45'),(341,NULL,'cf7dh3a874paaurgu9dvtsulp0','2017-08-13 08:34:43'),(342,NULL,'53pg82o5mfmvaau4g608c9ebq4','2017-08-13 07:40:45'),(343,NULL,'7ohsfi7l1us4p0k6blgda7mev0','2017-08-13 08:41:18'),(344,NULL,'3t1fv0nv21pqip3gl2cmtj96m2','2017-08-13 09:39:38'),(345,NULL,'h6roqabjhkstt8fe3h4dh1mmr1','2017-08-13 08:41:19'),(346,NULL,'ckthi3crhilon1sjlv9j7i64t4','2017-08-13 09:42:04'),(347,'1','u1qdlgd1u06jjs2n6p3r6tnms6','2017-08-13 10:46:07'),(348,NULL,'st6vjkko1ek98kfonjsq3pnhg0','2017-08-13 09:42:04'),(349,NULL,'1kcbtta3nilo89p52kvtrt8ar1','2017-08-13 09:45:35'),(350,NULL,'slcpdn50lrs2hpm0m8qljosb46','2017-08-13 09:45:36'),(351,NULL,'09vhe80rn7ofg5q11vb5rkokq3','2017-08-13 10:19:59'),(352,NULL,'em1195qunif0fvd0p72n1m7246','2017-08-13 10:20:00'),(353,NULL,'aojivmjcla43uc7and787a5ie3','2017-08-13 10:20:02'),(354,NULL,'3ecq1kqh4brai89tivolq15lq2','2017-08-13 10:20:05'),(355,NULL,'unqhvbim9g6j1c3cjihfhdrd20','2017-08-13 10:20:07'),(356,NULL,'rs0urdqqa9gpnks895djsatdb1','2017-08-13 10:20:08'),(357,NULL,'hhshda23fmhudtij2kgmftcr90','2017-08-13 11:34:32'),(358,NULL,'amck35a7aovt1a8hhj0usef7u3','2017-08-13 11:35:32'),(359,NULL,'iotf9nt4tt0ubj3kdj0mm79gn3','2017-08-13 11:35:40'),(360,NULL,'fpbgmp6f6p3q7hgr2kvon3mv17','2017-08-13 11:46:13'),(361,NULL,'1tkdgnkkp2ib2p75p7llq37i76','2017-08-13 11:46:20'),(362,NULL,'ilq49nqusvuadteuj36n20t9l2','2017-08-13 12:46:24'),(363,NULL,'87al39tmdgoor5j0qq7ofn3vi5','2017-08-13 11:46:21'),(364,NULL,'p9fa4rcjo5kint8e6sl9f0q150','2017-08-13 11:46:22'),(365,NULL,'qp1nh060e7uugtkbtimo1oniv3','2017-08-13 12:46:42'),(366,NULL,'jufpe31qvcpbi5didi5b7mrsb0','2017-08-13 12:46:42'),(367,NULL,'ti7ttipd16j57kg379j00pqqh5','2017-08-13 12:46:42'),(368,NULL,'p6kh36m5sc2hci2t42gc3n6g66','2017-08-13 13:41:36'),(369,NULL,'71imtovl2jc5gbs4di465301l4','2017-08-13 14:58:20'),(370,NULL,'grdh7ihsjh3jao133tc8dipm72','2017-08-13 14:40:37'),(371,NULL,'tmcn28i3l6qhc5mavkhnd341g3','2017-08-13 14:41:48'),(372,NULL,'1d0tbe9l5dov1k81mnu6n4so34','2017-08-13 15:17:24'),(373,NULL,'f6b5n46ii2ptbdk802r6g9rv21','2017-08-14 07:24:40'),(374,NULL,'gu9ij247or3aqr5dm0tarsur87','2017-08-14 08:54:39'),(375,NULL,'smfh4s1dd6v0pujp68i910dqr3','2017-08-14 10:08:04'),(376,NULL,'gdeqo83jfocea45mso45h5rg95','2017-08-14 10:08:12'),(377,NULL,'232oh42ur2avr2gggd06e9d855','2017-08-14 10:34:17'),(378,NULL,'tto93itghmc4anc8ruppui3df3','2017-08-14 10:08:12'),(379,NULL,'c3ah2rubo7r8ed3c865s30pqn5','2017-08-14 10:08:13'),(380,NULL,'e5hmkj61osj5e85p7t9rvaoji5','2017-08-14 12:20:53'),(381,NULL,'lrj8ik9ri71bcag7nt1rr1up12','2017-08-14 12:45:05'),(382,NULL,'6kord7qcsajnldn8jvf1p7dpi4','2017-08-14 19:40:32'),(383,NULL,'6ud6lqqqq0lj0ap7dsdhbecll1','2017-08-14 19:58:09'),(384,NULL,'j6t1fdbac6ejqv6do8ab5pip90','2017-08-15 07:28:05'),(385,NULL,'iqre6a960e98tjaf9la1u4kt71','2017-08-15 08:29:36'),(386,NULL,'hic95h2nphmrfo9nccduku8283','2017-08-15 08:38:29'),(387,NULL,'flq643utts9b9e2t4hokdi8jl0','2017-08-15 08:29:43'),(388,NULL,'i0jgcmdvokbok81cli41chu216','2017-08-15 08:36:15'),(389,NULL,'jh2mbtl9nvn5v9u0honlmachl4','2017-08-15 08:29:43'),(390,NULL,'3825f9ofjgbam2cu9moqb4oet2','2017-08-15 13:41:32'),(391,NULL,'ppueo1sgorsc22o1dnbopiqqt4','2017-08-15 13:35:18'),(392,NULL,'h8fbmeo51t1g84nphk61kgpkb4','2017-08-15 13:36:57'),(393,NULL,'1eh21v038u96p2m55753rdp7d0','2017-08-15 13:52:10'),(394,NULL,'1eh21v038u96p2m55753rdp7d0','2017-08-15 13:58:38'),(395,NULL,'1eh21v038u96p2m55753rdp7d0','2017-08-15 14:04:00'),(396,NULL,'8ofcosqk37fom13m5r1j3ege25','2017-08-15 14:58:06'),(397,NULL,'p4h4uea0nklaonie7gb5ls23a6','2017-08-15 14:59:22'),(398,NULL,'p4h4uea0nklaonie7gb5ls23a6','2017-08-15 15:37:30'),(399,NULL,'8ofcosqk37fom13m5r1j3ege25','2017-08-15 15:37:56'),(400,NULL,'ejsj0c0rp1eg14c5o2b8nj3l14','2017-08-15 15:59:36'),(401,NULL,'4m77s61bdijtpoc5054b4rabo3','2017-08-15 16:07:46'),(402,NULL,'tjksmqg4jlaece2slst9n922h5','2017-08-15 17:34:14'),(403,NULL,'gjbp3o9574d6r61fsarqrs0ne6','2017-08-15 20:41:00'),(404,NULL,'1juoi3oh8mje9484u10ofmilp6','2017-08-15 22:03:50'),(405,NULL,'ctkrufanarebl969ido8sltjm3','2017-08-16 07:34:44'),(406,NULL,'04dru250mvjrkp1j5t7edehcq3','2017-08-16 07:50:38'),(407,NULL,'mqpooige4oiofg7c9r2uebg624','2017-08-16 21:18:16'),(408,NULL,'8p00tu7kgbo85ohq52qja2h1n3','2017-08-16 22:07:24'),(409,NULL,'67tcfbiue6fdbiol6ksv9q8537','2017-08-17 07:17:34'),(410,NULL,'k1f5umvrhpq0lkcl5ptj97v2n0','2017-08-17 08:22:47'),(411,NULL,'9tf1k1hde3dm7osc7g46p4ij61','2017-08-17 09:07:05'),(412,NULL,'9tf1k1hde3dm7osc7g46p4ij61','2017-08-17 09:15:30'),(413,NULL,'4u42rtu12s8g3k53fkitta9oj3','2017-08-17 09:42:15'),(414,NULL,'n3tn5osqq8mim5l1dc49m09e14','2017-08-17 10:54:18'),(415,NULL,'n3tn5osqq8mim5l1dc49m09e14','2017-08-17 11:46:30'),(416,NULL,'oe4ptaphsltdjs36ngvl17ge53','2017-08-17 12:56:52'),(417,'1','015l7nb4frpbvtvi328s1po8o7','2017-08-17 14:01:17'),(418,'1','fjdg00t88p4di6uf69l4f1e9v7','2017-08-17 14:04:25'),(419,'1','8do19gisesnlqhcl39slioohu7','2017-08-17 14:05:09'),(420,NULL,'79f7i87326gh3sgum3tasrlud3','2017-08-17 14:05:34'),(421,NULL,'fksvpnuorqq6n3l0778571rp60','2017-08-17 18:36:16'),(422,NULL,'aaid99l074vvbm3pij5acoe9f5','2017-08-17 21:42:44'),(423,NULL,'tvmgj840i19cs7929d8tf5r364','2017-08-18 07:42:18'),(424,NULL,'1qqa1e25iqrue6hda4uh2gpeq5','2017-08-18 11:20:50'),(425,NULL,'bi6l786r90dgbvhppaqsgs6bh5','2017-08-20 13:46:00'),(426,NULL,'m803drrlpj2eu62kgqktbu87u1','2017-08-21 21:23:20'),(427,NULL,'ghm0k4bc5jmvmjj39lar6sai30','2017-08-21 22:07:09'),(428,NULL,'li9sfjgu4v40iorr5o7cvd7cn6','2017-08-22 16:31:43'),(429,NULL,'q3np60g9asi5jvs875h3tvvud3','2017-08-22 19:13:37'),(430,NULL,'iqokqv79hdfh4f3cqujo5p6v70','2017-08-22 21:27:35'),(431,NULL,'iqokqv79hdfh4f3cqujo5p6v70','2017-08-22 22:12:56'),(432,NULL,'pipodaeolatfivmm74sciiork5','2017-08-23 19:22:06'),(433,NULL,'3drhm7hq3nsrrkppfci3l7nhj2','2017-08-23 21:57:06'),(434,NULL,'gr8jvfdhaop1mgjq8pv8fmsbs5','2017-08-24 14:44:03'),(435,NULL,'v4ih5a9h49qmhvtjegq60onjc6','2017-08-25 09:45:31'),(436,NULL,'p0kesuleabkd7eetcbgnla7cm1','2017-08-25 14:34:25'),(437,NULL,'rms9dsaa7204n70hlmgsv131l7','2017-08-25 15:28:32'),(438,NULL,'ajdilvi88pktj4ni5g6ha4dct3','2017-08-25 19:16:32'),(439,NULL,'u3v15rc6mrnhplg07p30ne3687','2017-08-25 20:17:10'),(440,NULL,'u3v15rc6mrnhplg07p30ne3687','2017-08-25 20:17:58'),(441,NULL,'u3v15rc6mrnhplg07p30ne3687','2017-08-25 20:38:41'),(442,NULL,'kp3c3u93dkdf6u0jp714fpnb92','2017-08-25 21:44:54'),(443,NULL,'hn80menjg069tg2elh8pa3oo81','2017-08-25 22:04:20');
/*!40000 ALTER TABLE `customer_visitor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `design_change`
--

DROP TABLE IF EXISTS `design_change`;
CREATE TABLE `design_change` (
  `design_change_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Design Change Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `design` varchar(255) DEFAULT NULL COMMENT 'Design',
  `date_from` date DEFAULT NULL COMMENT 'First Date of Design Activity',
  `date_to` date DEFAULT NULL COMMENT 'Last Date of Design Activity',
  PRIMARY KEY (`design_change_id`),
  KEY `DESIGN_CHANGE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Design Changes';

--
-- Table structure for table `design_config_grid_flat`
--

DROP TABLE IF EXISTS `design_config_grid_flat`;
CREATE TABLE `design_config_grid_flat` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `store_website_id` int(11) DEFAULT NULL COMMENT 'Store_website_id',
  `store_group_id` int(11) DEFAULT NULL COMMENT 'Store_group_id',
  `store_id` int(11) DEFAULT NULL COMMENT 'Store_id',
  `theme_theme_id` varchar(255) DEFAULT NULL COMMENT 'Theme_theme_id',
  PRIMARY KEY (`entity_id`),
  KEY `DESIGN_CONFIG_GRID_FLAT_STORE_WEBSITE_ID` (`store_website_id`),
  KEY `DESIGN_CONFIG_GRID_FLAT_STORE_GROUP_ID` (`store_group_id`),
  KEY `DESIGN_CONFIG_GRID_FLAT_STORE_ID` (`store_id`),
  FULLTEXT KEY `DESIGN_CONFIG_GRID_FLAT_THEME_THEME_ID` (`theme_theme_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='design_config_grid_flat';

--
-- Dumping data for table `design_config_grid_flat`
--

LOCK TABLES `design_config_grid_flat` WRITE;
/*!40000 ALTER TABLE `design_config_grid_flat` DISABLE KEYS */;
INSERT INTO `design_config_grid_flat` VALUES ('0',NULL,NULL,NULL,''),('1','1',NULL,NULL,'4'),('2','1','1','2','4'),('3','1','1','3','4'),('4','1','1','1','4');
/*!40000 ALTER TABLE `design_config_grid_flat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directory_country`
--

DROP TABLE IF EXISTS `directory_country`;
CREATE TABLE `directory_country` (
  `country_id` varchar(2) NOT NULL COMMENT 'Country Id in ISO-2',
  `iso2_code` varchar(2) DEFAULT NULL COMMENT 'Country ISO-2 format',
  `iso3_code` varchar(3) DEFAULT NULL COMMENT 'Country ISO-3',
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country';

--
-- Dumping data for table `directory_country`
--

LOCK TABLES `directory_country` WRITE;
/*!40000 ALTER TABLE `directory_country` DISABLE KEYS */;
INSERT INTO `directory_country` VALUES ('AD','AD','AND'),('AE','AE','ARE'),('AF','AF','AFG'),('AG','AG','ATG'),('AI','AI','AIA'),('AL','AL','ALB'),('AM','AM','ARM'),('AN','AN','ANT'),('AO','AO','AGO'),('AQ','AQ','ATA'),('AR','AR','ARG'),('AS','AS','ASM'),('AT','AT','AUT'),('AU','AU','AUS'),('AW','AW','ABW'),('AX','AX','ALA'),('AZ','AZ','AZE'),('BA','BA','BIH'),('BB','BB','BRB'),('BD','BD','BGD'),('BE','BE','BEL'),('BF','BF','BFA'),('BG','BG','BGR'),('BH','BH','BHR'),('BI','BI','BDI'),('BJ','BJ','BEN'),('BL','BL','BLM'),('BM','BM','BMU'),('BN','BN','BRN'),('BO','BO','BOL'),('BR','BR','BRA'),('BS','BS','BHS'),('BT','BT','BTN'),('BV','BV','BVT'),('BW','BW','BWA'),('BY','BY','BLR'),('BZ','BZ','BLZ'),('CA','CA','CAN'),('CC','CC','CCK'),('CD','CD','COD'),('CF','CF','CAF'),('CG','CG','COG'),('CH','CH','CHE'),('CI','CI','CIV'),('CK','CK','COK'),('CL','CL','CHL'),('CM','CM','CMR'),('CN','CN','CHN'),('CO','CO','COL'),('CR','CR','CRI'),('CU','CU','CUB'),('CV','CV','CPV'),('CX','CX','CXR'),('CY','CY','CYP'),('CZ','CZ','CZE'),('DE','DE','DEU'),('DJ','DJ','DJI'),('DK','DK','DNK'),('DM','DM','DMA'),('DO','DO','DOM'),('DZ','DZ','DZA'),('EC','EC','ECU'),('EE','EE','EST'),('EG','EG','EGY'),('EH','EH','ESH'),('ER','ER','ERI'),('ES','ES','ESP'),('ET','ET','ETH'),('FI','FI','FIN'),('FJ','FJ','FJI'),('FK','FK','FLK'),('FM','FM','FSM'),('FO','FO','FRO'),('FR','FR','FRA'),('GA','GA','GAB'),('GB','GB','GBR'),('GD','GD','GRD'),('GE','GE','GEO'),('GF','GF','GUF'),('GG','GG','GGY'),('GH','GH','GHA'),('GI','GI','GIB'),('GL','GL','GRL'),('GM','GM','GMB'),('GN','GN','GIN'),('GP','GP','GLP'),('GQ','GQ','GNQ'),('GR','GR','GRC'),('GS','GS','SGS'),('GT','GT','GTM'),('GU','GU','GUM'),('GW','GW','GNB'),('GY','GY','GUY'),('HK','HK','HKG'),('HM','HM','HMD'),('HN','HN','HND'),('HR','HR','HRV'),('HT','HT','HTI'),('HU','HU','HUN'),('ID','ID','IDN'),('IE','IE','IRL'),('IL','IL','ISR'),('IM','IM','IMN'),('IN','IN','IND'),('IO','IO','IOT'),('IQ','IQ','IRQ'),('IR','IR','IRN'),('IS','IS','ISL'),('IT','IT','ITA'),('JE','JE','JEY'),('JM','JM','JAM'),('JO','JO','JOR'),('JP','JP','JPN'),('KE','KE','KEN'),('KG','KG','KGZ'),('KH','KH','KHM'),('KI','KI','KIR'),('KM','KM','COM'),('KN','KN','KNA'),('KP','KP','PRK'),('KR','KR','KOR'),('KW','KW','KWT'),('KY','KY','CYM'),('KZ','KZ','KAZ'),('LA','LA','LAO'),('LB','LB','LBN'),('LC','LC','LCA'),('LI','LI','LIE'),('LK','LK','LKA'),('LR','LR','LBR'),('LS','LS','LSO'),('LT','LT','LTU'),('LU','LU','LUX'),('LV','LV','LVA'),('LY','LY','LBY'),('MA','MA','MAR'),('MC','MC','MCO'),('MD','MD','MDA'),('ME','ME','MNE'),('MF','MF','MAF'),('MG','MG','MDG'),('MH','MH','MHL'),('MK','MK','MKD'),('ML','ML','MLI'),('MM','MM','MMR'),('MN','MN','MNG'),('MO','MO','MAC'),('MP','MP','MNP'),('MQ','MQ','MTQ'),('MR','MR','MRT'),('MS','MS','MSR'),('MT','MT','MLT'),('MU','MU','MUS'),('MV','MV','MDV'),('MW','MW','MWI'),('MX','MX','MEX'),('MY','MY','MYS'),('MZ','MZ','MOZ'),('NA','NA','NAM'),('NC','NC','NCL'),('NE','NE','NER'),('NF','NF','NFK'),('NG','NG','NGA'),('NI','NI','NIC'),('NL','NL','NLD'),('NO','NO','NOR'),('NP','NP','NPL'),('NR','NR','NRU'),('NU','NU','NIU'),('NZ','NZ','NZL'),('OM','OM','OMN'),('PA','PA','PAN'),('PE','PE','PER'),('PF','PF','PYF'),('PG','PG','PNG'),('PH','PH','PHL'),('PK','PK','PAK'),('PL','PL','POL'),('PM','PM','SPM'),('PN','PN','PCN'),('PS','PS','PSE'),('PT','PT','PRT'),('PW','PW','PLW'),('PY','PY','PRY'),('QA','QA','QAT'),('RE','RE','REU'),('RO','RO','ROU'),('RS','RS','SRB'),('RU','RU','RUS'),('RW','RW','RWA'),('SA','SA','SAU'),('SB','SB','SLB'),('SC','SC','SYC'),('SD','SD','SDN'),('SE','SE','SWE'),('SG','SG','SGP'),('SH','SH','SHN'),('SI','SI','SVN'),('SJ','SJ','SJM'),('SK','SK','SVK'),('SL','SL','SLE'),('SM','SM','SMR'),('SN','SN','SEN'),('SO','SO','SOM'),('SR','SR','SUR'),('ST','ST','STP'),('SV','SV','SLV'),('SY','SY','SYR'),('SZ','SZ','SWZ'),('TC','TC','TCA'),('TD','TD','TCD'),('TF','TF','ATF'),('TG','TG','TGO'),('TH','TH','THA'),('TJ','TJ','TJK'),('TK','TK','TKL'),('TL','TL','TLS'),('TM','TM','TKM'),('TN','TN','TUN'),('TO','TO','TON'),('TR','TR','TUR'),('TT','TT','TTO'),('TV','TV','TUV'),('TW','TW','TWN'),('TZ','TZ','TZA'),('UA','UA','UKR'),('UG','UG','UGA'),('UM','UM','UMI'),('US','US','USA'),('UY','UY','URY'),('UZ','UZ','UZB'),('VA','VA','VAT'),('VC','VC','VCT'),('VE','VE','VEN'),('VG','VG','VGB'),('VI','VI','VIR'),('VN','VN','VNM'),('VU','VU','VUT'),('WF','WF','WLF'),('WS','WS','WSM'),('YE','YE','YEM'),('YT','YT','MYT'),('ZA','ZA','ZAF'),('ZM','ZM','ZMB'),('ZW','ZW','ZWE');
/*!40000 ALTER TABLE `directory_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directory_country_format`
--

DROP TABLE IF EXISTS `directory_country_format`;
CREATE TABLE `directory_country_format` (
  `country_format_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Country Format Id',
  `country_id` varchar(2) DEFAULT NULL COMMENT 'Country Id in ISO-2',
  `type` varchar(30) DEFAULT NULL COMMENT 'Country Format Type',
  `format` text NOT NULL COMMENT 'Country Format',
  PRIMARY KEY (`country_format_id`),
  UNIQUE KEY `DIRECTORY_COUNTRY_FORMAT_COUNTRY_ID_TYPE` (`country_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country Format';

--
-- Table structure for table `directory_country_region`
--

DROP TABLE IF EXISTS `directory_country_region`;
CREATE TABLE `directory_country_region` (
  `region_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Region Id',
  `country_id` varchar(4) NOT NULL DEFAULT '0' COMMENT 'Country Id in ISO-2',
  `code` varchar(32) DEFAULT NULL COMMENT 'Region code',
  `default_name` varchar(255) DEFAULT NULL COMMENT 'Region Name',
  PRIMARY KEY (`region_id`),
  KEY `DIRECTORY_COUNTRY_REGION_COUNTRY_ID` (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=512 DEFAULT CHARSET=utf8 COMMENT='Directory Country Region';

--
-- Dumping data for table `directory_country_region`
--

LOCK TABLES `directory_country_region` WRITE;
/*!40000 ALTER TABLE `directory_country_region` DISABLE KEYS */;
INSERT INTO `directory_country_region` VALUES ('1','US','AL','Alabama'),('2','US','AK','Alaska'),('3','US','AS','American Samoa'),('4','US','AZ','Arizona'),('5','US','AR','Arkansas'),('6','US','AE','Armed Forces Africa'),('7','US','AA','Armed Forces Americas'),('8','US','AE','Armed Forces Canada'),('9','US','AE','Armed Forces Europe'),('10','US','AE','Armed Forces Middle East'),('11','US','AP','Armed Forces Pacific'),('12','US','CA','California'),('13','US','CO','Colorado'),('14','US','CT','Connecticut'),('15','US','DE','Delaware'),('16','US','DC','District of Columbia'),('17','US','FM','Federated States Of Micronesia'),('18','US','FL','Florida'),('19','US','GA','Georgia'),('20','US','GU','Guam'),('21','US','HI','Hawaii'),('22','US','ID','Idaho'),('23','US','IL','Illinois'),('24','US','IN','Indiana'),('25','US','IA','Iowa'),('26','US','KS','Kansas'),('27','US','KY','Kentucky'),('28','US','LA','Louisiana'),('29','US','ME','Maine'),('30','US','MH','Marshall Islands'),('31','US','MD','Maryland'),('32','US','MA','Massachusetts'),('33','US','MI','Michigan'),('34','US','MN','Minnesota'),('35','US','MS','Mississippi'),('36','US','MO','Missouri'),('37','US','MT','Montana'),('38','US','NE','Nebraska'),('39','US','NV','Nevada'),('40','US','NH','New Hampshire'),('41','US','NJ','New Jersey'),('42','US','NM','New Mexico'),('43','US','NY','New York'),('44','US','NC','North Carolina'),('45','US','ND','North Dakota'),('46','US','MP','Northern Mariana Islands'),('47','US','OH','Ohio'),('48','US','OK','Oklahoma'),('49','US','OR','Oregon'),('50','US','PW','Palau'),('51','US','PA','Pennsylvania'),('52','US','PR','Puerto Rico'),('53','US','RI','Rhode Island'),('54','US','SC','South Carolina'),('55','US','SD','South Dakota'),('56','US','TN','Tennessee'),('57','US','TX','Texas'),('58','US','UT','Utah'),('59','US','VT','Vermont'),('60','US','VI','Virgin Islands'),('61','US','VA','Virginia'),('62','US','WA','Washington'),('63','US','WV','West Virginia'),('64','US','WI','Wisconsin'),('65','US','WY','Wyoming'),('66','CA','AB','Alberta'),('67','CA','BC','British Columbia'),('68','CA','MB','Manitoba'),('69','CA','NL','Newfoundland and Labrador'),('70','CA','NB','New Brunswick'),('71','CA','NS','Nova Scotia'),('72','CA','NT','Northwest Territories'),('73','CA','NU','Nunavut'),('74','CA','ON','Ontario'),('75','CA','PE','Prince Edward Island'),('76','CA','QC','Quebec'),('77','CA','SK','Saskatchewan'),('78','CA','YT','Yukon Territory'),('79','DE','NDS','Niedersachsen'),('80','DE','BAW','Baden-Württemberg'),('81','DE','BAY','Bayern'),('82','DE','BER','Berlin'),('83','DE','BRG','Brandenburg'),('84','DE','BRE','Bremen'),('85','DE','HAM','Hamburg'),('86','DE','HES','Hessen'),('87','DE','MEC','Mecklenburg-Vorpommern'),('88','DE','NRW','Nordrhein-Westfalen'),('89','DE','RHE','Rheinland-Pfalz'),('90','DE','SAR','Saarland'),('91','DE','SAS','Sachsen'),('92','DE','SAC','Sachsen-Anhalt'),('93','DE','SCN','Schleswig-Holstein'),('94','DE','THE','Thüringen'),('95','AT','WI','Wien'),('96','AT','NO','Niederösterreich'),('97','AT','OO','Oberösterreich'),('98','AT','SB','Salzburg'),('99','AT','KN','Kärnten'),('100','AT','ST','Steiermark'),('101','AT','TI','Tirol'),('102','AT','BL','Burgenland'),('103','AT','VB','Vorarlberg'),('104','CH','AG','Aargau'),('105','CH','AI','Appenzell Innerrhoden'),('106','CH','AR','Appenzell Ausserrhoden'),('107','CH','BE','Bern'),('108','CH','BL','Basel-Landschaft'),('109','CH','BS','Basel-Stadt'),('110','CH','FR','Freiburg'),('111','CH','GE','Genf'),('112','CH','GL','Glarus'),('113','CH','GR','Graubünden'),('114','CH','JU','Jura'),('115','CH','LU','Luzern'),('116','CH','NE','Neuenburg'),('117','CH','NW','Nidwalden'),('118','CH','OW','Obwalden'),('119','CH','SG','St. Gallen'),('120','CH','SH','Schaffhausen'),('121','CH','SO','Solothurn'),('122','CH','SZ','Schwyz'),('123','CH','TG','Thurgau'),('124','CH','TI','Tessin'),('125','CH','UR','Uri'),('126','CH','VD','Waadt'),('127','CH','VS','Wallis'),('128','CH','ZG','Zug'),('129','CH','ZH','Zürich'),('130','ES','A Coruсa','A Coruña'),('131','ES','Alava','Alava'),('132','ES','Albacete','Albacete'),('133','ES','Alicante','Alicante'),('134','ES','Almeria','Almeria'),('135','ES','Asturias','Asturias'),('136','ES','Avila','Avila'),('137','ES','Badajoz','Badajoz'),('138','ES','Baleares','Baleares'),('139','ES','Barcelona','Barcelona'),('140','ES','Burgos','Burgos'),('141','ES','Caceres','Caceres'),('142','ES','Cadiz','Cadiz'),('143','ES','Cantabria','Cantabria'),('144','ES','Castellon','Castellon'),('145','ES','Ceuta','Ceuta'),('146','ES','Ciudad Real','Ciudad Real'),('147','ES','Cordoba','Cordoba'),('148','ES','Cuenca','Cuenca'),('149','ES','Girona','Girona'),('150','ES','Granada','Granada'),('151','ES','Guadalajara','Guadalajara'),('152','ES','Guipuzcoa','Guipuzcoa'),('153','ES','Huelva','Huelva'),('154','ES','Huesca','Huesca'),('155','ES','Jaen','Jaen'),('156','ES','La Rioja','La Rioja'),('157','ES','Las Palmas','Las Palmas'),('158','ES','Leon','Leon'),('159','ES','Lleida','Lleida'),('160','ES','Lugo','Lugo'),('161','ES','Madrid','Madrid'),('162','ES','Malaga','Malaga'),('163','ES','Melilla','Melilla'),('164','ES','Murcia','Murcia'),('165','ES','Navarra','Navarra'),('166','ES','Ourense','Ourense'),('167','ES','Palencia','Palencia'),('168','ES','Pontevedra','Pontevedra'),('169','ES','Salamanca','Salamanca'),('170','ES','Santa Cruz de Tenerife','Santa Cruz de Tenerife'),('171','ES','Segovia','Segovia'),('172','ES','Sevilla','Sevilla'),('173','ES','Soria','Soria'),('174','ES','Tarragona','Tarragona'),('175','ES','Teruel','Teruel'),('176','ES','Toledo','Toledo'),('177','ES','Valencia','Valencia'),('178','ES','Valladolid','Valladolid'),('179','ES','Vizcaya','Vizcaya'),('180','ES','Zamora','Zamora'),('181','ES','Zaragoza','Zaragoza'),('182','FR','1','Ain'),('183','FR','2','Aisne'),('184','FR','3','Allier'),('185','FR','4','Alpes-de-Haute-Provence'),('186','FR','5','Hautes-Alpes'),('187','FR','6','Alpes-Maritimes'),('188','FR','7','Ardèche'),('189','FR','8','Ardennes'),('190','FR','9','Ariège'),('191','FR','10','Aube'),('192','FR','11','Aude'),('193','FR','12','Aveyron'),('194','FR','13','Bouches-du-Rhône'),('195','FR','14','Calvados'),('196','FR','15','Cantal'),('197','FR','16','Charente'),('198','FR','17','Charente-Maritime'),('199','FR','18','Cher'),('200','FR','19','Corrèze'),('201','FR','2A','Corse-du-Sud'),('202','FR','2B','Haute-Corse'),('203','FR','21','Côte-d\'Or'),('204','FR','22','Côtes-d\'Armor'),('205','FR','23','Creuse'),('206','FR','24','Dordogne'),('207','FR','25','Doubs'),('208','FR','26','Drôme'),('209','FR','27','Eure'),('210','FR','28','Eure-et-Loir'),('211','FR','29','Finistère'),('212','FR','30','Gard'),('213','FR','31','Haute-Garonne'),('214','FR','32','Gers'),('215','FR','33','Gironde'),('216','FR','34','Hérault'),('217','FR','35','Ille-et-Vilaine'),('218','FR','36','Indre'),('219','FR','37','Indre-et-Loire'),('220','FR','38','Isère'),('221','FR','39','Jura'),('222','FR','40','Landes'),('223','FR','41','Loir-et-Cher'),('224','FR','42','Loire'),('225','FR','43','Haute-Loire'),('226','FR','44','Loire-Atlantique'),('227','FR','45','Loiret'),('228','FR','46','Lot'),('229','FR','47','Lot-et-Garonne'),('230','FR','48','Lozère'),('231','FR','49','Maine-et-Loire'),('232','FR','50','Manche'),('233','FR','51','Marne'),('234','FR','52','Haute-Marne'),('235','FR','53','Mayenne'),('236','FR','54','Meurthe-et-Moselle'),('237','FR','55','Meuse'),('238','FR','56','Morbihan'),('239','FR','57','Moselle'),('240','FR','58','Nièvre'),('241','FR','59','Nord'),('242','FR','60','Oise'),('243','FR','61','Orne'),('244','FR','62','Pas-de-Calais'),('245','FR','63','Puy-de-Dôme'),('246','FR','64','Pyrénées-Atlantiques'),('247','FR','65','Hautes-Pyrénées'),('248','FR','66','Pyrénées-Orientales'),('249','FR','67','Bas-Rhin'),('250','FR','68','Haut-Rhin'),('251','FR','69','Rhône'),('252','FR','70','Haute-Saône'),('253','FR','71','Saône-et-Loire'),('254','FR','72','Sarthe'),('255','FR','73','Savoie'),('256','FR','74','Haute-Savoie'),('257','FR','75','Paris'),('258','FR','76','Seine-Maritime'),('259','FR','77','Seine-et-Marne'),('260','FR','78','Yvelines'),('261','FR','79','Deux-Sèvres'),('262','FR','80','Somme'),('263','FR','81','Tarn'),('264','FR','82','Tarn-et-Garonne'),('265','FR','83','Var'),('266','FR','84','Vaucluse'),('267','FR','85','Vendée'),('268','FR','86','Vienne'),('269','FR','87','Haute-Vienne'),('270','FR','88','Vosges'),('271','FR','89','Yonne'),('272','FR','90','Territoire-de-Belfort'),('273','FR','91','Essonne'),('274','FR','92','Hauts-de-Seine'),('275','FR','93','Seine-Saint-Denis'),('276','FR','94','Val-de-Marne'),('277','FR','95','Val-d\'Oise'),('278','RO','AB','Alba'),('279','RO','AR','Arad'),('280','RO','AG','Argeş'),('281','RO','BC','Bacău'),('282','RO','BH','Bihor'),('283','RO','BN','Bistriţa-Năsăud'),('284','RO','BT','Botoşani'),('285','RO','BV','Braşov'),('286','RO','BR','Brăila'),('287','RO','B','Bucureşti'),('288','RO','BZ','Buzău'),('289','RO','CS','Caraş-Severin'),('290','RO','CL','Călăraşi'),('291','RO','CJ','Cluj'),('292','RO','CT','Constanţa'),('293','RO','CV','Covasna'),('294','RO','DB','Dâmboviţa'),('295','RO','DJ','Dolj'),('296','RO','GL','Galaţi'),('297','RO','GR','Giurgiu'),('298','RO','GJ','Gorj'),('299','RO','HR','Harghita'),('300','RO','HD','Hunedoara'),('301','RO','IL','Ialomiţa'),('302','RO','IS','Iaşi'),('303','RO','IF','Ilfov'),('304','RO','MM','Maramureş'),('305','RO','MH','Mehedinţi'),('306','RO','MS','Mureş'),('307','RO','NT','Neamţ'),('308','RO','OT','Olt'),('309','RO','PH','Prahova'),('310','RO','SM','Satu-Mare'),('311','RO','SJ','Sălaj'),('312','RO','SB','Sibiu'),('313','RO','SV','Suceava'),('314','RO','TR','Teleorman'),('315','RO','TM','Timiş'),('316','RO','TL','Tulcea'),('317','RO','VS','Vaslui'),('318','RO','VL','Vâlcea'),('319','RO','VN','Vrancea'),('320','FI','Lappi','Lappi'),('321','FI','Pohjois-Pohjanmaa','Pohjois-Pohjanmaa'),('322','FI','Kainuu','Kainuu'),('323','FI','Pohjois-Karjala','Pohjois-Karjala'),('324','FI','Pohjois-Savo','Pohjois-Savo'),('325','FI','Etelä-Savo','Etelä-Savo'),('326','FI','Etelä-Pohjanmaa','Etelä-Pohjanmaa'),('327','FI','Pohjanmaa','Pohjanmaa'),('328','FI','Pirkanmaa','Pirkanmaa'),('329','FI','Satakunta','Satakunta'),('330','FI','Keski-Pohjanmaa','Keski-Pohjanmaa'),('331','FI','Keski-Suomi','Keski-Suomi'),('332','FI','Varsinais-Suomi','Varsinais-Suomi'),('333','FI','Etelä-Karjala','Etelä-Karjala'),('334','FI','Päijät-Häme','Päijät-Häme'),('335','FI','Kanta-Häme','Kanta-Häme'),('336','FI','Uusimaa','Uusimaa'),('337','FI','Itä-Uusimaa','Itä-Uusimaa'),('338','FI','Kymenlaakso','Kymenlaakso'),('339','FI','Ahvenanmaa','Ahvenanmaa'),('340','EE','EE-37','Harjumaa'),('341','EE','EE-39','Hiiumaa'),('342','EE','EE-44','Ida-Virumaa'),('343','EE','EE-49','Jõgevamaa'),('344','EE','EE-51','Järvamaa'),('345','EE','EE-57','Läänemaa'),('346','EE','EE-59','Lääne-Virumaa'),('347','EE','EE-65','Põlvamaa'),('348','EE','EE-67','Pärnumaa'),('349','EE','EE-70','Raplamaa'),('350','EE','EE-74','Saaremaa'),('351','EE','EE-78','Tartumaa'),('352','EE','EE-82','Valgamaa'),('353','EE','EE-84','Viljandimaa'),('354','EE','EE-86','Võrumaa'),('355','LV','LV-DGV','Daugavpils'),('356','LV','LV-JEL','Jelgava'),('357','LV','Jēkabpils','Jēkabpils'),('358','LV','LV-JUR','Jūrmala'),('359','LV','LV-LPX','Liepāja'),('360','LV','LV-LE','Liepājas novads'),('361','LV','LV-REZ','Rēzekne'),('362','LV','LV-RIX','Rīga'),('363','LV','LV-RI','Rīgas novads'),('364','LV','Valmiera','Valmiera'),('365','LV','LV-VEN','Ventspils'),('366','LV','Aglonas novads','Aglonas novads'),('367','LV','LV-AI','Aizkraukles novads'),('368','LV','Aizputes novads','Aizputes novads'),('369','LV','Aknīstes novads','Aknīstes novads'),('370','LV','Alojas novads','Alojas novads'),('371','LV','Alsungas novads','Alsungas novads'),('372','LV','LV-AL','Alūksnes novads'),('373','LV','Amatas novads','Amatas novads'),('374','LV','Apes novads','Apes novads'),('375','LV','Auces novads','Auces novads'),('376','LV','Babītes novads','Babītes novads'),('377','LV','Baldones novads','Baldones novads'),('378','LV','Baltinavas novads','Baltinavas novads'),('379','LV','LV-BL','Balvu novads'),('380','LV','LV-BU','Bauskas novads'),('381','LV','Beverīnas novads','Beverīnas novads'),('382','LV','Brocēnu novads','Brocēnu novads'),('383','LV','Burtnieku novads','Burtnieku novads'),('384','LV','Carnikavas novads','Carnikavas novads'),('385','LV','Cesvaines novads','Cesvaines novads'),('386','LV','Ciblas novads','Ciblas novads'),('387','LV','LV-CE','Cēsu novads'),('388','LV','Dagdas novads','Dagdas novads'),('389','LV','LV-DA','Daugavpils novads'),('390','LV','LV-DO','Dobeles novads'),('391','LV','Dundagas novads','Dundagas novads'),('392','LV','Durbes novads','Durbes novads'),('393','LV','Engures novads','Engures novads'),('394','LV','Garkalnes novads','Garkalnes novads'),('395','LV','Grobiņas novads','Grobiņas novads'),('396','LV','LV-GU','Gulbenes novads'),('397','LV','Iecavas novads','Iecavas novads'),('398','LV','Ikšķiles novads','Ikšķiles novads'),('399','LV','Ilūkstes novads','Ilūkstes novads'),('400','LV','Inčukalna novads','Inčukalna novads'),('401','LV','Jaunjelgavas novads','Jaunjelgavas novads'),('402','LV','Jaunpiebalgas novads','Jaunpiebalgas novads'),('403','LV','Jaunpils novads','Jaunpils novads'),('404','LV','LV-JL','Jelgavas novads'),('405','LV','LV-JK','Jēkabpils novads'),('406','LV','Kandavas novads','Kandavas novads'),('407','LV','Kokneses novads','Kokneses novads'),('408','LV','Krimuldas novads','Krimuldas novads'),('409','LV','Krustpils novads','Krustpils novads'),('410','LV','LV-KR','Krāslavas novads'),('411','LV','LV-KU','Kuldīgas novads'),('412','LV','Kārsavas novads','Kārsavas novads'),('413','LV','Lielvārdes novads','Lielvārdes novads'),('414','LV','LV-LM','Limbažu novads'),('415','LV','Lubānas novads','Lubānas novads'),('416','LV','LV-LU','Ludzas novads'),('417','LV','Līgatnes novads','Līgatnes novads'),('418','LV','Līvānu novads','Līvānu novads'),('419','LV','LV-MA','Madonas novads'),('420','LV','Mazsalacas novads','Mazsalacas novads'),('421','LV','Mālpils novads','Mālpils novads'),('422','LV','Mārupes novads','Mārupes novads'),('423','LV','Naukšēnu novads','Naukšēnu novads'),('424','LV','Neretas novads','Neretas novads'),('425','LV','Nīcas novads','Nīcas novads'),('426','LV','LV-OG','Ogres novads'),('427','LV','Olaines novads','Olaines novads'),('428','LV','Ozolnieku novads','Ozolnieku novads'),('429','LV','LV-PR','Preiļu novads'),('430','LV','Priekules novads','Priekules novads'),('431','LV','Priekuļu novads','Priekuļu novads'),('432','LV','Pārgaujas novads','Pārgaujas novads'),('433','LV','Pāvilostas novads','Pāvilostas novads'),('434','LV','Pļaviņu novads','Pļaviņu novads'),('435','LV','Raunas novads','Raunas novads'),('436','LV','Riebiņu novads','Riebiņu novads'),('437','LV','Rojas novads','Rojas novads'),('438','LV','Ropažu novads','Ropažu novads'),('439','LV','Rucavas novads','Rucavas novads'),('440','LV','Rugāju novads','Rugāju novads'),('441','LV','Rundāles novads','Rundāles novads'),('442','LV','LV-RE','Rēzeknes novads'),('443','LV','Rūjienas novads','Rūjienas novads'),('444','LV','Salacgrīvas novads','Salacgrīvas novads'),('445','LV','Salas novads','Salas novads'),('446','LV','Salaspils novads','Salaspils novads'),('447','LV','LV-SA','Saldus novads'),('448','LV','Saulkrastu novads','Saulkrastu novads'),('449','LV','Siguldas novads','Siguldas novads'),('450','LV','Skrundas novads','Skrundas novads'),('451','LV','Skrīveru novads','Skrīveru novads'),('452','LV','Smiltenes novads','Smiltenes novads'),('453','LV','Stopiņu novads','Stopiņu novads'),('454','LV','Strenču novads','Strenču novads'),('455','LV','Sējas novads','Sējas novads'),('456','LV','LV-TA','Talsu novads'),('457','LV','LV-TU','Tukuma novads'),('458','LV','Tērvetes novads','Tērvetes novads'),('459','LV','Vaiņodes novads','Vaiņodes novads'),('460','LV','LV-VK','Valkas novads'),('461','LV','LV-VM','Valmieras novads'),('462','LV','Varakļānu novads','Varakļānu novads'),('463','LV','Vecpiebalgas novads','Vecpiebalgas novads'),('464','LV','Vecumnieku novads','Vecumnieku novads'),('465','LV','LV-VE','Ventspils novads'),('466','LV','Viesītes novads','Viesītes novads'),('467','LV','Viļakas novads','Viļakas novads'),('468','LV','Viļānu novads','Viļānu novads'),('469','LV','Vārkavas novads','Vārkavas novads'),('470','LV','Zilupes novads','Zilupes novads'),('471','LV','Ādažu novads','Ādažu novads'),('472','LV','Ērgļu novads','Ērgļu novads'),('473','LV','Ķeguma novads','Ķeguma novads'),('474','LV','Ķekavas novads','Ķekavas novads'),('475','LT','LT-AL','Alytaus Apskritis'),('476','LT','LT-KU','Kauno Apskritis'),('477','LT','LT-KL','Klaipėdos Apskritis'),('478','LT','LT-MR','Marijampolės Apskritis'),('479','LT','LT-PN','Panevėžio Apskritis'),('480','LT','LT-SA','Šiaulių Apskritis'),('481','LT','LT-TA','Tauragės Apskritis'),('482','LT','LT-TE','Telšių Apskritis'),('483','LT','LT-UT','Utenos Apskritis'),('484','LT','LT-VL','Vilniaus Apskritis'),('485','BR','AC','Acre'),('486','BR','AL','Alagoas'),('487','BR','AP','Amapá'),('488','BR','AM','Amazonas'),('489','BR','BA','Bahia'),('490','BR','CE','Ceará'),('491','BR','ES','Espírito Santo'),('492','BR','GO','Goiás'),('493','BR','MA','Maranhão'),('494','BR','MT','Mato Grosso'),('495','BR','MS','Mato Grosso do Sul'),('496','BR','MG','Minas Gerais'),('497','BR','PA','Pará'),('498','BR','PB','Paraíba'),('499','BR','PR','Paraná'),('500','BR','PE','Pernambuco'),('501','BR','PI','Piauí'),('502','BR','RJ','Rio de Janeiro'),('503','BR','RN','Rio Grande do Norte'),('504','BR','RS','Rio Grande do Sul'),('505','BR','RO','Rondônia'),('506','BR','RR','Roraima'),('507','BR','SC','Santa Catarina'),('508','BR','SP','São Paulo'),('509','BR','SE','Sergipe'),('510','BR','TO','Tocantins'),('511','BR','DF','Distrito Federal');
/*!40000 ALTER TABLE `directory_country_region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directory_country_region_name`
--

DROP TABLE IF EXISTS `directory_country_region_name`;
CREATE TABLE `directory_country_region_name` (
  `locale` varchar(8) NOT NULL COMMENT 'Locale',
  `region_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Region Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Region Name',
  PRIMARY KEY (`locale`,`region_id`),
  KEY `DIRECTORY_COUNTRY_REGION_NAME_REGION_ID` (`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country Region Name';

--
-- Dumping data for table `directory_country_region_name`
--

LOCK TABLES `directory_country_region_name` WRITE;
/*!40000 ALTER TABLE `directory_country_region_name` DISABLE KEYS */;
INSERT INTO `directory_country_region_name` VALUES ('en_US','1','Alabama'),('en_US','2','Alaska'),('en_US','3','American Samoa'),('en_US','4','Arizona'),('en_US','5','Arkansas'),('en_US','6','Armed Forces Africa'),('en_US','7','Armed Forces Americas'),('en_US','8','Armed Forces Canada'),('en_US','9','Armed Forces Europe'),('en_US','10','Armed Forces Middle East'),('en_US','11','Armed Forces Pacific'),('en_US','12','California'),('en_US','13','Colorado'),('en_US','14','Connecticut'),('en_US','15','Delaware'),('en_US','16','District of Columbia'),('en_US','17','Federated States Of Micronesia'),('en_US','18','Florida'),('en_US','19','Georgia'),('en_US','20','Guam'),('en_US','21','Hawaii'),('en_US','22','Idaho'),('en_US','23','Illinois'),('en_US','24','Indiana'),('en_US','25','Iowa'),('en_US','26','Kansas'),('en_US','27','Kentucky'),('en_US','28','Louisiana'),('en_US','29','Maine'),('en_US','30','Marshall Islands'),('en_US','31','Maryland'),('en_US','32','Massachusetts'),('en_US','33','Michigan'),('en_US','34','Minnesota'),('en_US','35','Mississippi'),('en_US','36','Missouri'),('en_US','37','Montana'),('en_US','38','Nebraska'),('en_US','39','Nevada'),('en_US','40','New Hampshire'),('en_US','41','New Jersey'),('en_US','42','New Mexico'),('en_US','43','New York'),('en_US','44','North Carolina'),('en_US','45','North Dakota'),('en_US','46','Northern Mariana Islands'),('en_US','47','Ohio'),('en_US','48','Oklahoma'),('en_US','49','Oregon'),('en_US','50','Palau'),('en_US','51','Pennsylvania'),('en_US','52','Puerto Rico'),('en_US','53','Rhode Island'),('en_US','54','South Carolina'),('en_US','55','South Dakota'),('en_US','56','Tennessee'),('en_US','57','Texas'),('en_US','58','Utah'),('en_US','59','Vermont'),('en_US','60','Virgin Islands'),('en_US','61','Virginia'),('en_US','62','Washington'),('en_US','63','West Virginia'),('en_US','64','Wisconsin'),('en_US','65','Wyoming'),('en_US','66','Alberta'),('en_US','67','British Columbia'),('en_US','68','Manitoba'),('en_US','69','Newfoundland and Labrador'),('en_US','70','New Brunswick'),('en_US','71','Nova Scotia'),('en_US','72','Northwest Territories'),('en_US','73','Nunavut'),('en_US','74','Ontario'),('en_US','75','Prince Edward Island'),('en_US','76','Quebec'),('en_US','77','Saskatchewan'),('en_US','78','Yukon Territory'),('en_US','79','Niedersachsen'),('en_US','80','Baden-Württemberg'),('en_US','81','Bayern'),('en_US','82','Berlin'),('en_US','83','Brandenburg'),('en_US','84','Bremen'),('en_US','85','Hamburg'),('en_US','86','Hessen'),('en_US','87','Mecklenburg-Vorpommern'),('en_US','88','Nordrhein-Westfalen'),('en_US','89','Rheinland-Pfalz'),('en_US','90','Saarland'),('en_US','91','Sachsen'),('en_US','92','Sachsen-Anhalt'),('en_US','93','Schleswig-Holstein'),('en_US','94','Thüringen'),('en_US','95','Wien'),('en_US','96','Niederösterreich'),('en_US','97','Oberösterreich'),('en_US','98','Salzburg'),('en_US','99','Kärnten'),('en_US','100','Steiermark'),('en_US','101','Tirol'),('en_US','102','Burgenland'),('en_US','103','Vorarlberg'),('en_US','104','Aargau'),('en_US','105','Appenzell Innerrhoden'),('en_US','106','Appenzell Ausserrhoden'),('en_US','107','Bern'),('en_US','108','Basel-Landschaft'),('en_US','109','Basel-Stadt'),('en_US','110','Freiburg'),('en_US','111','Genf'),('en_US','112','Glarus'),('en_US','113','Graubünden'),('en_US','114','Jura'),('en_US','115','Luzern'),('en_US','116','Neuenburg'),('en_US','117','Nidwalden'),('en_US','118','Obwalden'),('en_US','119','St. Gallen'),('en_US','120','Schaffhausen'),('en_US','121','Solothurn'),('en_US','122','Schwyz'),('en_US','123','Thurgau'),('en_US','124','Tessin'),('en_US','125','Uri'),('en_US','126','Waadt'),('en_US','127','Wallis'),('en_US','128','Zug'),('en_US','129','Zürich'),('en_US','130','A Coruña'),('en_US','131','Alava'),('en_US','132','Albacete'),('en_US','133','Alicante'),('en_US','134','Almeria'),('en_US','135','Asturias'),('en_US','136','Avila'),('en_US','137','Badajoz'),('en_US','138','Baleares'),('en_US','139','Barcelona'),('en_US','140','Burgos'),('en_US','141','Caceres'),('en_US','142','Cadiz'),('en_US','143','Cantabria'),('en_US','144','Castellon'),('en_US','145','Ceuta'),('en_US','146','Ciudad Real'),('en_US','147','Cordoba'),('en_US','148','Cuenca'),('en_US','149','Girona'),('en_US','150','Granada'),('en_US','151','Guadalajara'),('en_US','152','Guipuzcoa'),('en_US','153','Huelva'),('en_US','154','Huesca'),('en_US','155','Jaen'),('en_US','156','La Rioja'),('en_US','157','Las Palmas'),('en_US','158','Leon'),('en_US','159','Lleida'),('en_US','160','Lugo'),('en_US','161','Madrid'),('en_US','162','Malaga'),('en_US','163','Melilla'),('en_US','164','Murcia'),('en_US','165','Navarra'),('en_US','166','Ourense'),('en_US','167','Palencia'),('en_US','168','Pontevedra'),('en_US','169','Salamanca'),('en_US','170','Santa Cruz de Tenerife'),('en_US','171','Segovia'),('en_US','172','Sevilla'),('en_US','173','Soria'),('en_US','174','Tarragona'),('en_US','175','Teruel'),('en_US','176','Toledo'),('en_US','177','Valencia'),('en_US','178','Valladolid'),('en_US','179','Vizcaya'),('en_US','180','Zamora'),('en_US','181','Zaragoza'),('en_US','182','Ain'),('en_US','183','Aisne'),('en_US','184','Allier'),('en_US','185','Alpes-de-Haute-Provence'),('en_US','186','Hautes-Alpes'),('en_US','187','Alpes-Maritimes'),('en_US','188','Ardèche'),('en_US','189','Ardennes'),('en_US','190','Ariège'),('en_US','191','Aube'),('en_US','192','Aude'),('en_US','193','Aveyron'),('en_US','194','Bouches-du-Rhône'),('en_US','195','Calvados'),('en_US','196','Cantal'),('en_US','197','Charente'),('en_US','198','Charente-Maritime'),('en_US','199','Cher'),('en_US','200','Corrèze'),('en_US','201','Corse-du-Sud'),('en_US','202','Haute-Corse'),('en_US','203','Côte-d\'Or'),('en_US','204','Côtes-d\'Armor'),('en_US','205','Creuse'),('en_US','206','Dordogne'),('en_US','207','Doubs'),('en_US','208','Drôme'),('en_US','209','Eure'),('en_US','210','Eure-et-Loir'),('en_US','211','Finistère'),('en_US','212','Gard'),('en_US','213','Haute-Garonne'),('en_US','214','Gers'),('en_US','215','Gironde'),('en_US','216','Hérault'),('en_US','217','Ille-et-Vilaine'),('en_US','218','Indre'),('en_US','219','Indre-et-Loire'),('en_US','220','Isère'),('en_US','221','Jura'),('en_US','222','Landes'),('en_US','223','Loir-et-Cher'),('en_US','224','Loire'),('en_US','225','Haute-Loire'),('en_US','226','Loire-Atlantique'),('en_US','227','Loiret'),('en_US','228','Lot'),('en_US','229','Lot-et-Garonne'),('en_US','230','Lozère'),('en_US','231','Maine-et-Loire'),('en_US','232','Manche'),('en_US','233','Marne'),('en_US','234','Haute-Marne'),('en_US','235','Mayenne'),('en_US','236','Meurthe-et-Moselle'),('en_US','237','Meuse'),('en_US','238','Morbihan'),('en_US','239','Moselle'),('en_US','240','Nièvre'),('en_US','241','Nord'),('en_US','242','Oise'),('en_US','243','Orne'),('en_US','244','Pas-de-Calais'),('en_US','245','Puy-de-Dôme'),('en_US','246','Pyrénées-Atlantiques'),('en_US','247','Hautes-Pyrénées'),('en_US','248','Pyrénées-Orientales'),('en_US','249','Bas-Rhin'),('en_US','250','Haut-Rhin'),('en_US','251','Rhône'),('en_US','252','Haute-Saône'),('en_US','253','Saône-et-Loire'),('en_US','254','Sarthe'),('en_US','255','Savoie'),('en_US','256','Haute-Savoie'),('en_US','257','Paris'),('en_US','258','Seine-Maritime'),('en_US','259','Seine-et-Marne'),('en_US','260','Yvelines'),('en_US','261','Deux-Sèvres'),('en_US','262','Somme'),('en_US','263','Tarn'),('en_US','264','Tarn-et-Garonne'),('en_US','265','Var'),('en_US','266','Vaucluse'),('en_US','267','Vendée'),('en_US','268','Vienne'),('en_US','269','Haute-Vienne'),('en_US','270','Vosges'),('en_US','271','Yonne'),('en_US','272','Territoire-de-Belfort'),('en_US','273','Essonne'),('en_US','274','Hauts-de-Seine'),('en_US','275','Seine-Saint-Denis'),('en_US','276','Val-de-Marne'),('en_US','277','Val-d\'Oise'),('en_US','278','Alba'),('en_US','279','Arad'),('en_US','280','Argeş'),('en_US','281','Bacău'),('en_US','282','Bihor'),('en_US','283','Bistriţa-Năsăud'),('en_US','284','Botoşani'),('en_US','285','Braşov'),('en_US','286','Brăila'),('en_US','287','Bucureşti'),('en_US','288','Buzău'),('en_US','289','Caraş-Severin'),('en_US','290','Călăraşi'),('en_US','291','Cluj'),('en_US','292','Constanţa'),('en_US','293','Covasna'),('en_US','294','Dâmboviţa'),('en_US','295','Dolj'),('en_US','296','Galaţi'),('en_US','297','Giurgiu'),('en_US','298','Gorj'),('en_US','299','Harghita'),('en_US','300','Hunedoara'),('en_US','301','Ialomiţa'),('en_US','302','Iaşi'),('en_US','303','Ilfov'),('en_US','304','Maramureş'),('en_US','305','Mehedinţi'),('en_US','306','Mureş'),('en_US','307','Neamţ'),('en_US','308','Olt'),('en_US','309','Prahova'),('en_US','310','Satu-Mare'),('en_US','311','Sălaj'),('en_US','312','Sibiu'),('en_US','313','Suceava'),('en_US','314','Teleorman'),('en_US','315','Timiş'),('en_US','316','Tulcea'),('en_US','317','Vaslui'),('en_US','318','Vâlcea'),('en_US','319','Vrancea'),('en_US','320','Lappi'),('en_US','321','Pohjois-Pohjanmaa'),('en_US','322','Kainuu'),('en_US','323','Pohjois-Karjala'),('en_US','324','Pohjois-Savo'),('en_US','325','Etelä-Savo'),('en_US','326','Etelä-Pohjanmaa'),('en_US','327','Pohjanmaa'),('en_US','328','Pirkanmaa'),('en_US','329','Satakunta'),('en_US','330','Keski-Pohjanmaa'),('en_US','331','Keski-Suomi'),('en_US','332','Varsinais-Suomi'),('en_US','333','Etelä-Karjala'),('en_US','334','Päijät-Häme'),('en_US','335','Kanta-Häme'),('en_US','336','Uusimaa'),('en_US','337','Itä-Uusimaa'),('en_US','338','Kymenlaakso'),('en_US','339','Ahvenanmaa'),('en_US','340','Harjumaa'),('en_US','341','Hiiumaa'),('en_US','342','Ida-Virumaa'),('en_US','343','Jõgevamaa'),('en_US','344','Järvamaa'),('en_US','345','Läänemaa'),('en_US','346','Lääne-Virumaa'),('en_US','347','Põlvamaa'),('en_US','348','Pärnumaa'),('en_US','349','Raplamaa'),('en_US','350','Saaremaa'),('en_US','351','Tartumaa'),('en_US','352','Valgamaa'),('en_US','353','Viljandimaa'),('en_US','354','Võrumaa'),('en_US','355','Daugavpils'),('en_US','356','Jelgava'),('en_US','357','Jēkabpils'),('en_US','358','Jūrmala'),('en_US','359','Liepāja'),('en_US','360','Liepājas novads'),('en_US','361','Rēzekne'),('en_US','362','Rīga'),('en_US','363','Rīgas novads'),('en_US','364','Valmiera'),('en_US','365','Ventspils'),('en_US','366','Aglonas novads'),('en_US','367','Aizkraukles novads'),('en_US','368','Aizputes novads'),('en_US','369','Aknīstes novads'),('en_US','370','Alojas novads'),('en_US','371','Alsungas novads'),('en_US','372','Alūksnes novads'),('en_US','373','Amatas novads'),('en_US','374','Apes novads'),('en_US','375','Auces novads'),('en_US','376','Babītes novads'),('en_US','377','Baldones novads'),('en_US','378','Baltinavas novads'),('en_US','379','Balvu novads'),('en_US','380','Bauskas novads'),('en_US','381','Beverīnas novads'),('en_US','382','Brocēnu novads'),('en_US','383','Burtnieku novads'),('en_US','384','Carnikavas novads'),('en_US','385','Cesvaines novads'),('en_US','386','Ciblas novads'),('en_US','387','Cēsu novads'),('en_US','388','Dagdas novads'),('en_US','389','Daugavpils novads'),('en_US','390','Dobeles novads'),('en_US','391','Dundagas novads'),('en_US','392','Durbes novads'),('en_US','393','Engures novads'),('en_US','394','Garkalnes novads'),('en_US','395','Grobiņas novads'),('en_US','396','Gulbenes novads'),('en_US','397','Iecavas novads'),('en_US','398','Ikšķiles novads'),('en_US','399','Ilūkstes novads'),('en_US','400','Inčukalna novads'),('en_US','401','Jaunjelgavas novads'),('en_US','402','Jaunpiebalgas novads'),('en_US','403','Jaunpils novads'),('en_US','404','Jelgavas novads'),('en_US','405','Jēkabpils novads'),('en_US','406','Kandavas novads'),('en_US','407','Kokneses novads'),('en_US','408','Krimuldas novads'),('en_US','409','Krustpils novads'),('en_US','410','Krāslavas novads'),('en_US','411','Kuldīgas novads'),('en_US','412','Kārsavas novads'),('en_US','413','Lielvārdes novads'),('en_US','414','Limbažu novads'),('en_US','415','Lubānas novads'),('en_US','416','Ludzas novads'),('en_US','417','Līgatnes novads'),('en_US','418','Līvānu novads'),('en_US','419','Madonas novads'),('en_US','420','Mazsalacas novads'),('en_US','421','Mālpils novads'),('en_US','422','Mārupes novads'),('en_US','423','Naukšēnu novads'),('en_US','424','Neretas novads'),('en_US','425','Nīcas novads'),('en_US','426','Ogres novads'),('en_US','427','Olaines novads'),('en_US','428','Ozolnieku novads'),('en_US','429','Preiļu novads'),('en_US','430','Priekules novads'),('en_US','431','Priekuļu novads'),('en_US','432','Pārgaujas novads'),('en_US','433','Pāvilostas novads'),('en_US','434','Pļaviņu novads'),('en_US','435','Raunas novads'),('en_US','436','Riebiņu novads'),('en_US','437','Rojas novads'),('en_US','438','Ropažu novads'),('en_US','439','Rucavas novads'),('en_US','440','Rugāju novads'),('en_US','441','Rundāles novads'),('en_US','442','Rēzeknes novads'),('en_US','443','Rūjienas novads'),('en_US','444','Salacgrīvas novads'),('en_US','445','Salas novads'),('en_US','446','Salaspils novads'),('en_US','447','Saldus novads'),('en_US','448','Saulkrastu novads'),('en_US','449','Siguldas novads'),('en_US','450','Skrundas novads'),('en_US','451','Skrīveru novads'),('en_US','452','Smiltenes novads'),('en_US','453','Stopiņu novads'),('en_US','454','Strenču novads'),('en_US','455','Sējas novads'),('en_US','456','Talsu novads'),('en_US','457','Tukuma novads'),('en_US','458','Tērvetes novads'),('en_US','459','Vaiņodes novads'),('en_US','460','Valkas novads'),('en_US','461','Valmieras novads'),('en_US','462','Varakļānu novads'),('en_US','463','Vecpiebalgas novads'),('en_US','464','Vecumnieku novads'),('en_US','465','Ventspils novads'),('en_US','466','Viesītes novads'),('en_US','467','Viļakas novads'),('en_US','468','Viļānu novads'),('en_US','469','Vārkavas novads'),('en_US','470','Zilupes novads'),('en_US','471','Ādažu novads'),('en_US','472','Ērgļu novads'),('en_US','473','Ķeguma novads'),('en_US','474','Ķekavas novads'),('en_US','475','Alytaus Apskritis'),('en_US','476','Kauno Apskritis'),('en_US','477','Klaipėdos Apskritis'),('en_US','478','Marijampolės Apskritis'),('en_US','479','Panevėžio Apskritis'),('en_US','480','Šiaulių Apskritis'),('en_US','481','Tauragės Apskritis'),('en_US','482','Telšių Apskritis'),('en_US','483','Utenos Apskritis'),('en_US','484','Vilniaus Apskritis'),('en_US','485','Acre'),('en_US','486','Alagoas'),('en_US','487','Amapá'),('en_US','488','Amazonas'),('en_US','489','Bahia'),('en_US','490','Ceará'),('en_US','491','Espírito Santo'),('en_US','492','Goiás'),('en_US','493','Maranhão'),('en_US','494','Mato Grosso'),('en_US','495','Mato Grosso do Sul'),('en_US','496','Minas Gerais'),('en_US','497','Pará'),('en_US','498','Paraíba'),('en_US','499','Paraná'),('en_US','500','Pernambuco'),('en_US','501','Piauí'),('en_US','502','Rio de Janeiro'),('en_US','503','Rio Grande do Norte'),('en_US','504','Rio Grande do Sul'),('en_US','505','Rondônia'),('en_US','506','Roraima'),('en_US','507','Santa Catarina'),('en_US','508','São Paulo'),('en_US','509','Sergipe'),('en_US','510','Tocantins'),('en_US','511','Distrito Federal');
/*!40000 ALTER TABLE `directory_country_region_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directory_currency_rate`
--

DROP TABLE IF EXISTS `directory_currency_rate`;
CREATE TABLE `directory_currency_rate` (
  `currency_from` varchar(3) NOT NULL COMMENT 'Currency Code Convert From',
  `currency_to` varchar(3) NOT NULL COMMENT 'Currency Code Convert To',
  `rate` decimal(24,12) NOT NULL DEFAULT '0.000000000000' COMMENT 'Currency Conversion Rate',
  PRIMARY KEY (`currency_from`,`currency_to`),
  KEY `DIRECTORY_CURRENCY_RATE_CURRENCY_TO` (`currency_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Currency Rate';

--
-- Dumping data for table `directory_currency_rate`
--

LOCK TABLES `directory_currency_rate` WRITE;
/*!40000 ALTER TABLE `directory_currency_rate` DISABLE KEYS */;
INSERT INTO `directory_currency_rate` VALUES ('EUR','EUR','1.000000000000'),('EUR','USD','1.415000000000'),('UAH','UAH','1.000000000000'),('USD','EUR','0.706700000000'),('USD','USD','1.000000000000');
/*!40000 ALTER TABLE `directory_currency_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `downloadable_link`
--

DROP TABLE IF EXISTS `downloadable_link`;
CREATE TABLE `downloadable_link` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort order',
  `number_of_downloads` int(11) DEFAULT NULL COMMENT 'Number of downloads',
  `is_shareable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Shareable flag',
  `link_url` varchar(255) DEFAULT NULL COMMENT 'Link Url',
  `link_file` varchar(255) DEFAULT NULL COMMENT 'Link File',
  `link_type` varchar(20) DEFAULT NULL COMMENT 'Link Type',
  `sample_url` varchar(255) DEFAULT NULL COMMENT 'Sample Url',
  `sample_file` varchar(255) DEFAULT NULL COMMENT 'Sample File',
  `sample_type` varchar(20) DEFAULT NULL COMMENT 'Sample Type',
  PRIMARY KEY (`link_id`),
  KEY `DOWNLOADABLE_LINK_PRODUCT_ID_SORT_ORDER` (`product_id`,`sort_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Table';

--
-- Table structure for table `downloadable_link_price`
--

DROP TABLE IF EXISTS `downloadable_link_price`;
CREATE TABLE `downloadable_link_price` (
  `price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Price ID',
  `link_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  PRIMARY KEY (`price_id`),
  KEY `DOWNLOADABLE_LINK_PRICE_LINK_ID` (`link_id`),
  KEY `DOWNLOADABLE_LINK_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Price Table';

--
-- Table structure for table `downloadable_link_purchased`
--

DROP TABLE IF EXISTS `downloadable_link_purchased`;
CREATE TABLE `downloadable_link_purchased` (
  `purchased_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Purchased ID',
  `order_id` int(10) unsigned DEFAULT '0' COMMENT 'Order ID',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment ID',
  `order_item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Order Item ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Date of creation',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of modification',
  `customer_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer ID',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product name',
  `product_sku` varchar(255) DEFAULT NULL COMMENT 'Product sku',
  `link_section_title` varchar(255) DEFAULT NULL COMMENT 'Link_section_title',
  PRIMARY KEY (`purchased_id`),
  KEY `DOWNLOADABLE_LINK_PURCHASED_ORDER_ID` (`order_id`),
  KEY `DOWNLOADABLE_LINK_PURCHASED_ORDER_ITEM_ID` (`order_item_id`),
  KEY `DOWNLOADABLE_LINK_PURCHASED_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Purchased Table';

--
-- Table structure for table `downloadable_link_purchased_item`
--

DROP TABLE IF EXISTS `downloadable_link_purchased_item`;
CREATE TABLE `downloadable_link_purchased_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item ID',
  `purchased_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Purchased ID',
  `order_item_id` int(10) unsigned DEFAULT '0' COMMENT 'Order Item ID',
  `product_id` int(10) unsigned DEFAULT '0' COMMENT 'Product ID',
  `link_hash` varchar(255) DEFAULT NULL COMMENT 'Link hash',
  `number_of_downloads_bought` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of downloads bought',
  `number_of_downloads_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of downloads used',
  `link_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `link_title` varchar(255) DEFAULT NULL COMMENT 'Link Title',
  `is_shareable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Shareable Flag',
  `link_url` varchar(255) DEFAULT NULL COMMENT 'Link Url',
  `link_file` varchar(255) DEFAULT NULL COMMENT 'Link File',
  `link_type` varchar(255) DEFAULT NULL COMMENT 'Link Type',
  `status` varchar(50) DEFAULT NULL COMMENT 'Status',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Creation Time',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time',
  PRIMARY KEY (`item_id`),
  KEY `DOWNLOADABLE_LINK_PURCHASED_ITEM_LINK_HASH` (`link_hash`),
  KEY `DOWNLOADABLE_LINK_PURCHASED_ITEM_ORDER_ITEM_ID` (`order_item_id`),
  KEY `DOWNLOADABLE_LINK_PURCHASED_ITEM_PURCHASED_ID` (`purchased_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Purchased Item Table';

--
-- Table structure for table `downloadable_link_title`
--

DROP TABLE IF EXISTS `downloadable_link_title`;
CREATE TABLE `downloadable_link_title` (
  `title_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Title ID',
  `link_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`title_id`),
  UNIQUE KEY `DOWNLOADABLE_LINK_TITLE_LINK_ID_STORE_ID` (`link_id`,`store_id`),
  KEY `DOWNLOADABLE_LINK_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Link Title Table';

--
-- Table structure for table `downloadable_sample`
--

DROP TABLE IF EXISTS `downloadable_sample`;
CREATE TABLE `downloadable_sample` (
  `sample_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Sample ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `sample_url` varchar(255) DEFAULT NULL COMMENT 'Sample URL',
  `sample_file` varchar(255) DEFAULT NULL COMMENT 'Sample file',
  `sample_type` varchar(20) DEFAULT NULL COMMENT 'Sample Type',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`sample_id`),
  KEY `DOWNLOADABLE_SAMPLE_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Sample Table';

--
-- Table structure for table `downloadable_sample_title`
--

DROP TABLE IF EXISTS `downloadable_sample_title`;
CREATE TABLE `downloadable_sample_title` (
  `title_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Title ID',
  `sample_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sample ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`title_id`),
  UNIQUE KEY `DOWNLOADABLE_SAMPLE_TITLE_SAMPLE_ID_STORE_ID` (`sample_id`,`store_id`),
  KEY `DOWNLOADABLE_SAMPLE_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Sample Title Table';

--
-- Table structure for table `eav_attribute`
--

DROP TABLE IF EXISTS `eav_attribute`;
CREATE TABLE `eav_attribute` (
  `attribute_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_code` varchar(255) DEFAULT NULL COMMENT 'Attribute Code',
  `attribute_model` varchar(255) DEFAULT NULL COMMENT 'Attribute Model',
  `backend_model` varchar(255) DEFAULT NULL COMMENT 'Backend Model',
  `backend_type` varchar(8) NOT NULL DEFAULT 'static' COMMENT 'Backend Type',
  `backend_table` varchar(255) DEFAULT NULL COMMENT 'Backend Table',
  `frontend_model` varchar(255) DEFAULT NULL COMMENT 'Frontend Model',
  `frontend_input` varchar(50) DEFAULT NULL COMMENT 'Frontend Input',
  `frontend_label` varchar(255) DEFAULT NULL COMMENT 'Frontend Label',
  `frontend_class` varchar(255) DEFAULT NULL COMMENT 'Frontend Class',
  `source_model` varchar(255) DEFAULT NULL COMMENT 'Source Model',
  `is_required` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Defines Is Required',
  `is_user_defined` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Defines Is User Defined',
  `default_value` text COMMENT 'Default Value',
  `is_unique` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Defines Is Unique',
  `note` varchar(255) DEFAULT NULL COMMENT 'Note',
  PRIMARY KEY (`attribute_id`),
  UNIQUE KEY `EAV_ATTRIBUTE_ENTITY_TYPE_ID_ATTRIBUTE_CODE` (`entity_type_id`,`attribute_code`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8 COMMENT='Eav Attribute';

--
-- Dumping data for table `eav_attribute`
--

LOCK TABLES `eav_attribute` WRITE;
/*!40000 ALTER TABLE `eav_attribute` DISABLE KEYS */;
INSERT INTO `eav_attribute` VALUES (1,1,'website_id',NULL,'Magento\\Customer\\Model\\Customer\\Attribute\\Backend\\Website','static',NULL,NULL,'select','Associate to Website',NULL,'Magento\\Customer\\Model\\Customer\\Attribute\\Source\\Website',1,0,NULL,0,NULL),(2,1,'store_id',NULL,'Magento\\Customer\\Model\\Customer\\Attribute\\Backend\\Store','static',NULL,NULL,'select','Create In',NULL,'Magento\\Customer\\Model\\Customer\\Attribute\\Source\\Store',1,0,NULL,0,NULL),(3,1,'created_in',NULL,NULL,'static',NULL,NULL,'text','Created From',NULL,NULL,0,0,NULL,0,NULL),(4,1,'prefix',NULL,NULL,'static',NULL,NULL,'text','Prefix',NULL,NULL,0,0,NULL,0,NULL),(5,1,'firstname',NULL,NULL,'static',NULL,NULL,'text','First Name',NULL,NULL,1,0,NULL,0,NULL),(6,1,'middlename',NULL,NULL,'static',NULL,NULL,'text','Middle Name/Initial',NULL,NULL,0,0,NULL,0,NULL),(7,1,'lastname',NULL,NULL,'static',NULL,NULL,'text','Last Name',NULL,NULL,1,0,NULL,0,NULL),(8,1,'suffix',NULL,NULL,'static',NULL,NULL,'text','Suffix',NULL,NULL,0,0,NULL,0,NULL),(9,1,'email',NULL,NULL,'static',NULL,NULL,'text','Email',NULL,NULL,1,0,NULL,0,NULL),(10,1,'group_id',NULL,NULL,'static',NULL,NULL,'select','Group',NULL,'Magento\\Customer\\Model\\Customer\\Attribute\\Source\\Group',1,0,NULL,0,NULL),(11,1,'dob',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\Datetime','static',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Frontend\\Datetime','date','Date of Birth',NULL,NULL,0,0,NULL,0,NULL),(12,1,'password_hash',NULL,'Magento\\Customer\\Model\\Customer\\Attribute\\Backend\\Password','static',NULL,NULL,'hidden',NULL,NULL,NULL,0,0,NULL,0,NULL),(13,1,'rp_token',NULL,NULL,'static',NULL,NULL,'hidden',NULL,NULL,NULL,0,0,NULL,0,NULL),(14,1,'rp_token_created_at',NULL,NULL,'static',NULL,NULL,'date',NULL,NULL,NULL,0,0,NULL,0,NULL),(15,1,'default_billing',NULL,'Magento\\Customer\\Model\\Customer\\Attribute\\Backend\\Billing','static',NULL,NULL,'text','Default Billing Address',NULL,NULL,0,0,NULL,0,NULL),(16,1,'default_shipping',NULL,'Magento\\Customer\\Model\\Customer\\Attribute\\Backend\\Shipping','static',NULL,NULL,'text','Default Shipping Address',NULL,NULL,0,0,NULL,0,NULL),(17,1,'taxvat',NULL,NULL,'static',NULL,NULL,'text','Tax/VAT Number',NULL,NULL,0,0,NULL,0,NULL),(18,1,'confirmation',NULL,NULL,'static',NULL,NULL,'text','Is Confirmed',NULL,NULL,0,0,NULL,0,NULL),(19,1,'created_at',NULL,NULL,'static',NULL,NULL,'date','Created At',NULL,NULL,0,0,NULL,0,NULL),(20,1,'gender',NULL,NULL,'static',NULL,NULL,'select','Gender',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Table',0,0,NULL,0,NULL),(21,1,'disable_auto_group_change',NULL,'Magento\\Customer\\Model\\Attribute\\Backend\\Data\\Boolean','static',NULL,NULL,'boolean','Disable Automatic Group Change Based on VAT ID',NULL,NULL,0,0,NULL,0,NULL),(22,2,'prefix',NULL,NULL,'static',NULL,NULL,'text','Prefix',NULL,NULL,0,0,NULL,0,NULL),(23,2,'firstname',NULL,NULL,'static',NULL,NULL,'text','First Name',NULL,NULL,1,0,NULL,0,NULL),(24,2,'middlename',NULL,NULL,'static',NULL,NULL,'text','Middle Name/Initial',NULL,NULL,0,0,NULL,0,NULL),(25,2,'lastname',NULL,NULL,'static',NULL,NULL,'text','Last Name',NULL,NULL,1,0,NULL,0,NULL),(26,2,'suffix',NULL,NULL,'static',NULL,NULL,'text','Suffix',NULL,NULL,0,0,NULL,0,NULL),(27,2,'company',NULL,NULL,'static',NULL,NULL,'text','Company',NULL,NULL,0,0,NULL,0,NULL),(28,2,'street',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\DefaultBackend','static',NULL,NULL,'multiline','Street Address',NULL,NULL,1,0,NULL,0,NULL),(29,2,'city',NULL,NULL,'static',NULL,NULL,'text','City',NULL,NULL,1,0,NULL,0,NULL),(30,2,'country_id',NULL,NULL,'static',NULL,NULL,'select','Country',NULL,'Magento\\Customer\\Model\\ResourceModel\\Address\\Attribute\\Source\\Country',1,0,NULL,0,NULL),(31,2,'region',NULL,'Magento\\Customer\\Model\\ResourceModel\\Address\\Attribute\\Backend\\Region','static',NULL,NULL,'text','State/Province',NULL,NULL,0,0,NULL,0,NULL),(32,2,'region_id',NULL,NULL,'static',NULL,NULL,'hidden','State/Province',NULL,'Magento\\Customer\\Model\\ResourceModel\\Address\\Attribute\\Source\\Region',0,0,NULL,0,NULL),(33,2,'postcode',NULL,NULL,'static',NULL,NULL,'text','Zip/Postal Code',NULL,NULL,0,0,NULL,0,NULL),(34,2,'telephone',NULL,NULL,'static',NULL,NULL,'text','Phone Number',NULL,NULL,1,0,NULL,0,NULL),(35,2,'fax',NULL,NULL,'static',NULL,NULL,'text','Fax',NULL,NULL,0,0,NULL,0,NULL),(36,2,'vat_id',NULL,NULL,'static',NULL,NULL,'text','VAT number',NULL,NULL,0,0,NULL,0,NULL),(37,2,'vat_is_valid',NULL,NULL,'static',NULL,NULL,'text','VAT number validity',NULL,NULL,0,0,NULL,0,NULL),(38,2,'vat_request_id',NULL,NULL,'static',NULL,NULL,'text','VAT number validation request ID',NULL,NULL,0,0,NULL,0,NULL),(39,2,'vat_request_date',NULL,NULL,'static',NULL,NULL,'text','VAT number validation request date',NULL,NULL,0,0,NULL,0,NULL),(40,2,'vat_request_success',NULL,NULL,'static',NULL,NULL,'text','VAT number validation request success',NULL,NULL,0,0,NULL,0,NULL),(41,1,'updated_at',NULL,NULL,'static',NULL,NULL,'date','Updated At',NULL,NULL,0,0,NULL,0,NULL),(42,1,'failures_num',NULL,NULL,'static',NULL,NULL,'hidden','Failures Number',NULL,NULL,0,0,NULL,0,NULL),(43,1,'first_failure',NULL,NULL,'static',NULL,NULL,'date','First Failure Date',NULL,NULL,0,0,NULL,0,NULL),(44,1,'lock_expires',NULL,NULL,'static',NULL,NULL,'date','Failures Number',NULL,NULL,0,0,NULL,0,NULL),(45,3,'name',NULL,NULL,'varchar',NULL,NULL,'text','Name',NULL,NULL,1,0,NULL,0,NULL),(46,3,'is_active',NULL,NULL,'int',NULL,NULL,'select','Is Active',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean',1,0,NULL,0,NULL),(47,3,'description',NULL,NULL,'text',NULL,NULL,'textarea','Description',NULL,NULL,0,0,NULL,0,NULL),(48,3,'image',NULL,'Magento\\Catalog\\Model\\Category\\Attribute\\Backend\\Image','varchar',NULL,NULL,'image','Image',NULL,NULL,0,0,NULL,0,NULL),(49,3,'meta_title',NULL,NULL,'varchar',NULL,NULL,'text','Page Title',NULL,NULL,0,0,NULL,0,NULL),(50,3,'meta_keywords',NULL,NULL,'text',NULL,NULL,'textarea','Meta Keywords',NULL,NULL,0,0,NULL,0,NULL),(51,3,'meta_description',NULL,NULL,'text',NULL,NULL,'textarea','Meta Description',NULL,NULL,0,0,NULL,0,NULL),(52,3,'display_mode',NULL,NULL,'varchar',NULL,NULL,'select','Display Mode',NULL,'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\Mode',0,0,NULL,0,NULL),(53,3,'landing_page',NULL,NULL,'int',NULL,NULL,'select','CMS Block',NULL,'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\Page',0,0,NULL,0,NULL),(54,3,'is_anchor',NULL,NULL,'int',NULL,NULL,'select','Is Anchor',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean',0,0,'1',0,NULL),(55,3,'path',NULL,NULL,'static',NULL,NULL,'text','Path',NULL,NULL,0,0,NULL,0,NULL),(56,3,'position',NULL,NULL,'static',NULL,NULL,'text','Position',NULL,NULL,0,0,NULL,0,NULL),(57,3,'all_children',NULL,NULL,'text',NULL,NULL,'text',NULL,NULL,NULL,0,0,NULL,0,NULL),(58,3,'path_in_store',NULL,NULL,'text',NULL,NULL,'text',NULL,NULL,NULL,0,0,NULL,0,NULL),(59,3,'children',NULL,NULL,'text',NULL,NULL,'text',NULL,NULL,NULL,0,0,NULL,0,NULL),(60,3,'custom_design',NULL,NULL,'varchar',NULL,NULL,'select','Custom Design',NULL,'Magento\\Theme\\Model\\Theme\\Source\\Theme',0,0,NULL,0,NULL),(61,3,'custom_design_from','Magento\\Catalog\\Model\\ResourceModel\\Eav\\Attribute','Magento\\Catalog\\Model\\Attribute\\Backend\\Startdate','datetime',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Frontend\\Datetime','date','Active From',NULL,NULL,0,0,NULL,0,NULL),(62,3,'custom_design_to',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\Datetime','datetime',NULL,NULL,'date','Active To',NULL,NULL,0,0,NULL,0,NULL),(63,3,'page_layout',NULL,NULL,'varchar',NULL,NULL,'select','Page Layout',NULL,'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\Layout',0,0,NULL,0,NULL),(64,3,'custom_layout_update',NULL,'Magento\\Catalog\\Model\\Attribute\\Backend\\Customlayoutupdate','text',NULL,NULL,'textarea','Custom Layout Update',NULL,NULL,0,0,NULL,0,NULL),(65,3,'level',NULL,NULL,'static',NULL,NULL,'text','Level',NULL,NULL,0,0,NULL,0,NULL),(66,3,'children_count',NULL,NULL,'static',NULL,NULL,'text','Children Count',NULL,NULL,0,0,NULL,0,NULL),(67,3,'available_sort_by',NULL,'Magento\\Catalog\\Model\\Category\\Attribute\\Backend\\Sortby','text',NULL,NULL,'multiselect','Available Product Listing Sort By',NULL,'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\Sortby',1,0,NULL,0,NULL),(68,3,'default_sort_by',NULL,'Magento\\Catalog\\Model\\Category\\Attribute\\Backend\\Sortby','varchar',NULL,NULL,'select','Default Product Listing Sort By',NULL,'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\Sortby',1,0,NULL,0,NULL),(69,3,'include_in_menu',NULL,NULL,'int',NULL,NULL,'select','Include in Navigation Menu',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean',1,0,'1',0,NULL),(70,3,'custom_use_parent_settings',NULL,NULL,'int',NULL,NULL,'select','Use Parent Category Settings',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean',0,0,NULL,0,NULL),(71,3,'custom_apply_to_products',NULL,NULL,'int',NULL,NULL,'select','Apply To Products',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean',0,0,NULL,0,NULL),(72,3,'filter_price_range',NULL,NULL,'decimal',NULL,NULL,'text','Layered Navigation Price Step',NULL,NULL,0,0,NULL,0,NULL),(73,4,'name',NULL,NULL,'varchar',NULL,NULL,'text','Product Name','validate-length maximum-length-255',NULL,1,0,NULL,0,NULL),(74,4,'sku',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Sku','static',NULL,NULL,'text','SKU',NULL,NULL,1,0,NULL,1,NULL),(75,4,'description',NULL,NULL,'text',NULL,NULL,'textarea','Description',NULL,NULL,0,0,NULL,0,NULL),(76,4,'short_description',NULL,NULL,'text',NULL,NULL,'textarea','Short Description',NULL,NULL,0,0,NULL,0,NULL),(77,4,'price',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Price','decimal',NULL,NULL,'price','Price',NULL,NULL,1,0,NULL,0,NULL),(78,4,'special_price',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Price','decimal',NULL,NULL,'price','Special Price',NULL,NULL,0,0,NULL,0,NULL),(79,4,'special_from_date',NULL,'Magento\\Catalog\\Model\\Attribute\\Backend\\Startdate','datetime',NULL,NULL,'date','Special Price From Date',NULL,NULL,0,0,NULL,0,NULL),(80,4,'special_to_date',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\Datetime','datetime',NULL,NULL,'date','Special Price To Date',NULL,NULL,0,0,NULL,0,NULL),(81,4,'cost',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Price','decimal',NULL,NULL,'price','Cost',NULL,NULL,0,1,NULL,0,NULL),(82,4,'weight',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Weight','decimal',NULL,NULL,'weight','Weight',NULL,NULL,0,0,'21',0,NULL),(83,4,'manufacturer',NULL,NULL,'int',NULL,NULL,'select','Manufacturer',NULL,NULL,0,1,NULL,0,NULL),(84,4,'meta_title',NULL,NULL,'varchar',NULL,NULL,'text','Meta Title',NULL,NULL,0,0,NULL,0,NULL),(85,4,'meta_keyword',NULL,NULL,'text',NULL,NULL,'textarea','Meta Keywords',NULL,NULL,0,0,NULL,0,NULL),(86,4,'meta_description',NULL,NULL,'varchar',NULL,NULL,'textarea','Meta Description',NULL,NULL,0,0,NULL,0,'Maximum 255 chars. Meta Description should optimally be between 150-160 characters'),(87,4,'image',NULL,NULL,'varchar',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Frontend\\Image','media_image','Base',NULL,NULL,0,0,NULL,0,NULL),(88,4,'small_image',NULL,NULL,'varchar',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Frontend\\Image','media_image','Small',NULL,NULL,0,0,NULL,0,NULL),(89,4,'thumbnail',NULL,NULL,'varchar',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Frontend\\Image','media_image','Thumbnail',NULL,NULL,0,0,NULL,0,NULL),(90,4,'media_gallery',NULL,NULL,'static',NULL,NULL,'gallery','Media Gallery',NULL,NULL,0,0,NULL,0,NULL),(91,4,'old_id',NULL,NULL,'int',NULL,NULL,'text',NULL,NULL,NULL,0,0,NULL,0,NULL),(92,4,'tier_price',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Tierprice','decimal',NULL,NULL,'text','Tier Price',NULL,NULL,0,0,NULL,0,NULL),(93,4,'color',NULL,NULL,'int',NULL,NULL,'select','Color',NULL,NULL,0,1,NULL,0,NULL),(94,4,'news_from_date',NULL,'Magento\\Catalog\\Model\\Attribute\\Backend\\Startdate','datetime',NULL,NULL,'date','Set Product as New from Date',NULL,NULL,0,0,NULL,0,NULL),(95,4,'news_to_date',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\Datetime','datetime',NULL,NULL,'date','Set Product as New to Date',NULL,NULL,0,0,NULL,0,NULL),(96,4,'gallery',NULL,NULL,'varchar',NULL,NULL,'gallery','Image Gallery',NULL,NULL,0,0,NULL,0,NULL),(97,4,'status',NULL,NULL,'int',NULL,NULL,'select','Enable Product',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Source\\Status',0,0,'1',0,NULL),(98,4,'minimal_price',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Price','decimal',NULL,NULL,'price','Minimal Price',NULL,NULL,0,0,NULL,0,NULL),(99,4,'visibility',NULL,NULL,'int',NULL,NULL,'select','Visibility',NULL,'Magento\\Catalog\\Model\\Product\\Visibility',0,0,'4',0,NULL),(100,4,'custom_design',NULL,NULL,'varchar',NULL,NULL,'select','New Theme',NULL,'Magento\\Theme\\Model\\Theme\\Source\\Theme',0,0,NULL,0,NULL),(101,4,'custom_design_from',NULL,'Magento\\Catalog\\Model\\Attribute\\Backend\\Startdate','datetime',NULL,NULL,'date','Active From',NULL,NULL,0,0,NULL,0,NULL),(102,4,'custom_design_to',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\Datetime','datetime',NULL,NULL,'date','Active To',NULL,NULL,0,0,NULL,0,NULL),(103,4,'custom_layout_update',NULL,'Magento\\Catalog\\Model\\Attribute\\Backend\\Customlayoutupdate','text',NULL,NULL,'textarea','Layout Update XML',NULL,NULL,0,0,NULL,0,NULL),(104,4,'page_layout',NULL,NULL,'varchar',NULL,NULL,'select','Layout',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Source\\Layout',0,0,NULL,0,NULL),(105,4,'category_ids',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Category','static',NULL,NULL,'text','Categories',NULL,NULL,0,0,NULL,0,NULL),(106,4,'options_container',NULL,NULL,'varchar',NULL,NULL,'select','Display Product Options In',NULL,'Magento\\Catalog\\Model\\Entity\\Product\\Attribute\\Design\\Options\\Container',0,0,'container2',0,NULL),(107,4,'required_options',NULL,NULL,'static',NULL,NULL,'text',NULL,NULL,NULL,0,0,NULL,0,NULL),(108,4,'has_options',NULL,NULL,'static',NULL,NULL,'text',NULL,NULL,NULL,0,0,NULL,0,NULL),(109,4,'image_label',NULL,NULL,'varchar',NULL,NULL,'text','Image Label',NULL,NULL,0,0,NULL,0,NULL),(110,4,'small_image_label',NULL,NULL,'varchar',NULL,NULL,'text','Small Image Label',NULL,NULL,0,0,NULL,0,NULL),(111,4,'thumbnail_label',NULL,NULL,'varchar',NULL,NULL,'text','Thumbnail Label',NULL,NULL,0,0,NULL,0,NULL),(112,4,'created_at',NULL,NULL,'static',NULL,NULL,'date',NULL,NULL,NULL,1,0,NULL,0,NULL),(113,4,'updated_at',NULL,NULL,'static',NULL,NULL,'date',NULL,NULL,NULL,1,0,NULL,0,NULL),(114,4,'country_of_manufacture',NULL,NULL,'varchar',NULL,NULL,'select','Country of Manufacture',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Source\\Countryofmanufacture',0,0,NULL,0,NULL),(115,4,'quantity_and_stock_status',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Stock','int',NULL,NULL,'select','Quantity',NULL,'Magento\\CatalogInventory\\Model\\Source\\Stock',0,0,'1',0,NULL),(116,4,'custom_layout',NULL,NULL,'varchar',NULL,NULL,'select','New Layout',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Source\\Layout',0,0,NULL,0,NULL),(117,3,'url_key',NULL,NULL,'varchar',NULL,NULL,'text','URL Key',NULL,NULL,0,0,NULL,0,NULL),(118,3,'url_path',NULL,NULL,'varchar',NULL,NULL,'text',NULL,NULL,NULL,0,0,NULL,0,NULL),(119,4,'url_key',NULL,NULL,'varchar',NULL,NULL,'text','URL Key',NULL,NULL,0,0,NULL,0,NULL),(120,4,'url_path',NULL,NULL,'varchar',NULL,NULL,'text',NULL,NULL,NULL,0,0,NULL,0,NULL),(121,4,'msrp',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Price','decimal',NULL,NULL,'price','Manufacturer\'s Suggested Retail Price',NULL,NULL,0,0,NULL,0,NULL),(122,4,'msrp_display_actual_price_type',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Boolean','varchar',NULL,NULL,'select','Display Actual Price',NULL,'Magento\\Msrp\\Model\\Product\\Attribute\\Source\\Type\\Price',0,0,'0',0,NULL),(123,4,'price_type',NULL,NULL,'int',NULL,NULL,'boolean','Dynamic Price',NULL,NULL,1,0,'0',0,NULL),(124,4,'sku_type',NULL,NULL,'int',NULL,NULL,'boolean','Dynamic SKU',NULL,NULL,1,0,'0',0,NULL),(125,4,'weight_type',NULL,NULL,'int',NULL,NULL,'boolean','Dynamic Weight',NULL,NULL,1,0,'0',0,NULL),(126,4,'price_view',NULL,NULL,'int',NULL,NULL,'select','Price View',NULL,'Magento\\Bundle\\Model\\Product\\Attribute\\Source\\Price\\View',1,0,NULL,0,NULL),(127,4,'shipment_type',NULL,NULL,'int',NULL,NULL,'select','Ship Bundle Items',NULL,'Magento\\Bundle\\Model\\Product\\Attribute\\Source\\Shipment\\Type',1,0,'0',0,NULL),(128,4,'links_purchased_separately',NULL,NULL,'int',NULL,NULL,NULL,'Links can be purchased separately',NULL,NULL,1,0,NULL,0,NULL),(129,4,'samples_title',NULL,NULL,'varchar',NULL,NULL,NULL,'Samples title',NULL,NULL,1,0,NULL,0,NULL),(130,4,'links_title',NULL,NULL,'varchar',NULL,NULL,NULL,'Links title',NULL,NULL,1,0,NULL,0,NULL),(131,4,'links_exist',NULL,NULL,'int',NULL,NULL,NULL,NULL,NULL,NULL,0,0,'0',0,NULL),(132,4,'swatch_image',NULL,NULL,'varchar',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Frontend\\Image','media_image','Swatch',NULL,NULL,0,0,NULL,0,NULL),(133,4,'tax_class_id',NULL,NULL,'int',NULL,NULL,'select','Tax Class',NULL,'Magento\\Tax\\Model\\TaxClass\\Source\\Product',0,0,'2',0,NULL),(134,4,'gift_message_available',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Boolean','varchar',NULL,NULL,'select','Allow Gift Message',NULL,'Magento\\Catalog\\Model\\Product\\Attribute\\Source\\Boolean',0,0,NULL,0,NULL),(136,4,'viscosity_class',NULL,NULL,'int',NULL,NULL,'select','Viscosity class',NULL,'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Table',1,1,'7',0,NULL),(137,4,'sst_with_40_c',NULL,NULL,'text',NULL,NULL,'textarea','sSt with 40ºC',NULL,NULL,0,1,NULL,0,NULL),(138,4,'sst_with_100_c',NULL,NULL,'varchar',NULL,NULL,'text','sSt with 100ºC',NULL,NULL,0,1,NULL,0,NULL),(139,4,'ash_sulphate_mas_astm_d_874',NULL,NULL,'varchar',NULL,NULL,'text','Ash sulphate, % mas., ASTM D 874',NULL,NULL,0,1,NULL,0,NULL),(140,4,'phosphorus_content',NULL,NULL,'varchar',NULL,NULL,'text','Phosphorus content',NULL,NULL,0,1,NULL,0,NULL),(141,4,'flash_point_c_astm_d_92',NULL,NULL,'varchar',NULL,NULL,'text','Flash point, ºC, ASTM D 92',NULL,NULL,0,1,NULL,0,NULL),(142,4,'pour_point_c_astm_d_97',NULL,NULL,'varchar',NULL,NULL,'text','Pour point, ºC, ASTM D 97',NULL,NULL,0,1,NULL,0,NULL);
/*!40000 ALTER TABLE `eav_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eav_attribute_group`
--

DROP TABLE IF EXISTS `eav_attribute_group`;
CREATE TABLE `eav_attribute_group` (
  `attribute_group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Group Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `attribute_group_name` varchar(255) DEFAULT NULL COMMENT 'Attribute Group Name',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `default_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Default Id',
  `attribute_group_code` varchar(255) NOT NULL COMMENT 'Attribute Group Code',
  `tab_group_code` varchar(255) DEFAULT NULL COMMENT 'Tab Group Code',
  PRIMARY KEY (`attribute_group_id`),
  UNIQUE KEY `EAV_ATTRIBUTE_GROUP_ATTRIBUTE_SET_ID_ATTRIBUTE_GROUP_NAME` (`attribute_set_id`,`attribute_group_name`),
  KEY `EAV_ATTRIBUTE_GROUP_ATTRIBUTE_SET_ID_SORT_ORDER` (`attribute_set_id`,`sort_order`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Group';

--
-- Dumping data for table `eav_attribute_group`
--

LOCK TABLES `eav_attribute_group` WRITE;
/*!40000 ALTER TABLE `eav_attribute_group` DISABLE KEYS */;
INSERT INTO `eav_attribute_group` VALUES (1,1,'General',1,1,'general',NULL),(2,2,'General',1,1,'general',NULL),(3,3,'General',10,1,'general',NULL),(4,3,'General Information',2,0,'general-information',NULL),(5,3,'Display Settings',20,0,'display-settings',NULL),(6,3,'Custom Design',30,0,'custom-design',NULL),(7,4,'Product Details',10,1,'product-details','basic'),(8,4,'Advanced Pricing',40,0,'advanced-pricing','advanced'),(9,4,'Search Engine Optimization',30,0,'search-engine-optimization','basic'),(10,4,'Images',20,0,'image-management','basic'),(11,4,'Design',50,0,'design','advanced'),(12,4,'Autosettings',60,0,'autosettings','advanced'),(13,4,'Content',15,0,'content','basic'),(14,4,'Schedule Design Update',55,0,'schedule-design-update','advanced'),(15,4,'Bundle Items',16,0,'bundle-items',NULL),(16,5,'General',1,1,'general',NULL),(17,6,'General',1,1,'general',NULL),(18,7,'General',1,1,'general',NULL),(19,8,'General',1,1,'general',NULL),(20,4,'Gift Options',61,0,'gift-options',NULL),(21,9,'Gift Options',10,0,'gift-options',NULL),(22,9,'Autosettings',9,0,'autosettings','advanced'),(23,9,'Schedule Design Update',8,0,'schedule-design-update','advanced'),(24,9,'Design',7,0,'design','advanced'),(25,9,'Advanced Pricing',6,0,'advanced-pricing','advanced'),(26,9,'Search Engine Optimization',5,0,'search-engine-optimization','basic'),(27,9,'Images',4,0,'image-management','basic'),(28,9,'Bundle Items',3,0,'bundle-items',NULL),(29,9,'Content',2,0,'content','basic'),(30,9,'Product Details',1,1,'product-details','basic');
/*!40000 ALTER TABLE `eav_attribute_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eav_attribute_label`
--

DROP TABLE IF EXISTS `eav_attribute_label`;
CREATE TABLE `eav_attribute_label` (
  `attribute_label_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Label Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`attribute_label_id`),
  KEY `EAV_ATTRIBUTE_LABEL_STORE_ID` (`store_id`),
  KEY `EAV_ATTRIBUTE_LABEL_ATTRIBUTE_ID_STORE_ID` (`attribute_id`,`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Label';

--
-- Dumping data for table `eav_attribute_label`
--

LOCK TABLES `eav_attribute_label` WRITE;
/*!40000 ALTER TABLE `eav_attribute_label` DISABLE KEYS */;
INSERT INTO `eav_attribute_label` VALUES ('70',74,1,'SKU'),('71',74,2,'Номер товара'),('72',74,3,'Номер товару'),('73',82,1,'Weight'),('74',82,2,'Вес'),('75',82,3,'Вага'),('76',136,1,'Viscosity class'),('77',136,2,'Класс вязкости'),('78',136,3,'Клас в\'язкості'),('79',137,1,'sSt with 40ºC'),('80',137,2,'сСт при 40ºC'),('81',137,3,'сСт при 40ºC'),('82',138,1,'sSt with 100ºC'),('83',138,2,'сСт при 100ºC'),('84',138,3,'сСт при 100ºC'),('94',142,1,'Pour point, ºC, ASTM D 97'),('95',142,2,'Температура застывания, ºC, ASTM D 97'),('96',142,3,'Температура застигання, ºC, ASTM D 97'),('103',140,3,'Вміст фосфору'),('104',140,2,'Содержание фосфора'),('105',140,1,'Phosphorus content'),('106',141,3,'Температура спалаху, ºC, ASTM D 92'),('107',141,2,'Температура вспышки, ºC, ASTM D 92'),('108',141,1,'Flash point, ºC, ASTM D 92'),('109',139,3,'Зольність сульфатна, % мас., ASTM D 874'),('110',139,2,'Зольность сульфатная, % мас., ASTM D 874'),('111',139,1,'Ash sulphate, % mas., ASTM D 874');
/*!40000 ALTER TABLE `eav_attribute_label` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eav_attribute_option`
--

DROP TABLE IF EXISTS `eav_attribute_option`;
CREATE TABLE `eav_attribute_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`option_id`),
  KEY `EAV_ATTRIBUTE_OPTION_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Option';

--
-- Dumping data for table `eav_attribute_option`
--

LOCK TABLES `eav_attribute_option` WRITE;
/*!40000 ALTER TABLE `eav_attribute_option` DISABLE KEYS */;
INSERT INTO `eav_attribute_option` VALUES ('1',20,0),('2',20,1),('3',20,3),('6',136,1),('7',136,2);
/*!40000 ALTER TABLE `eav_attribute_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eav_attribute_option_swatch`
--

DROP TABLE IF EXISTS `eav_attribute_option_swatch`;
CREATE TABLE `eav_attribute_option_swatch` (
  `swatch_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Swatch ID',
  `option_id` int(10) unsigned NOT NULL COMMENT 'Option ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `type` smallint(5) unsigned NOT NULL COMMENT 'Swatch type: 0 - text, 1 - visual color, 2 - visual image',
  `value` varchar(255) DEFAULT NULL COMMENT 'Swatch Value',
  PRIMARY KEY (`swatch_id`),
  UNIQUE KEY `EAV_ATTRIBUTE_OPTION_SWATCH_STORE_ID_OPTION_ID` (`store_id`,`option_id`),
  KEY `EAV_ATTRIBUTE_OPTION_SWATCH_SWATCH_ID` (`swatch_id`),
  KEY `EAV_ATTR_OPT_SWATCH_OPT_ID_EAV_ATTR_OPT_OPT_ID` (`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Magento Swatches table';

--
-- Table structure for table `eav_attribute_option_value`
--

DROP TABLE IF EXISTS `eav_attribute_option_value`;
CREATE TABLE `eav_attribute_option_value` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  KEY `EAV_ATTRIBUTE_OPTION_VALUE_OPTION_ID` (`option_id`),
  KEY `EAV_ATTRIBUTE_OPTION_VALUE_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Option Value';

--
-- Dumping data for table `eav_attribute_option_value`
--

LOCK TABLES `eav_attribute_option_value` WRITE;
/*!40000 ALTER TABLE `eav_attribute_option_value` DISABLE KEYS */;
INSERT INTO `eav_attribute_option_value` VALUES ('1','1',0,'Male'),('2','2',0,'Female'),('3','3',0,'Not Specified'),('12','6',2,'5w-30'),('13','6',0,'5w-30'),('14','6',3,'5w-30'),('15','6',1,'5w-30'),('16','7',2,'5w-40'),('17','7',0,'5w-40'),('18','7',3,'5w-40'),('19','7',1,'5w-40');
/*!40000 ALTER TABLE `eav_attribute_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eav_attribute_set`
--

DROP TABLE IF EXISTS `eav_attribute_set`;
CREATE TABLE `eav_attribute_set` (
  `attribute_set_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Set Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_name` varchar(255) DEFAULT NULL COMMENT 'Attribute Set Name',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`attribute_set_id`),
  UNIQUE KEY `EAV_ATTRIBUTE_SET_ENTITY_TYPE_ID_ATTRIBUTE_SET_NAME` (`entity_type_id`,`attribute_set_name`),
  KEY `EAV_ATTRIBUTE_SET_ENTITY_TYPE_ID_SORT_ORDER` (`entity_type_id`,`sort_order`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Set';

--
-- Dumping data for table `eav_attribute_set`
--

LOCK TABLES `eav_attribute_set` WRITE;
/*!40000 ALTER TABLE `eav_attribute_set` DISABLE KEYS */;
INSERT INTO `eav_attribute_set` VALUES (1,1,'Default',2),(2,2,'Default',2),(3,3,'Default',1),(4,4,'Default',1),(5,5,'Default',1),(6,6,'Default',1),(7,7,'Default',1),(8,8,'Default',1),(9,4,'Motor Oil',0);
/*!40000 ALTER TABLE `eav_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eav_entity`
--

DROP TABLE IF EXISTS `eav_entity`;
CREATE TABLE `eav_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Defines Is Entity Active',
  PRIMARY KEY (`entity_id`),
  KEY `EAV_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `EAV_ENTITY_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity';

--
-- Table structure for table `eav_entity_attribute`
--

DROP TABLE IF EXISTS `eav_entity_attribute`;
CREATE TABLE `eav_entity_attribute` (
  `entity_attribute_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Attribute Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `attribute_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Group Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`entity_attribute_id`),
  UNIQUE KEY `EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_SET_ID_ATTRIBUTE_ID` (`attribute_set_id`,`attribute_id`),
  UNIQUE KEY `EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_GROUP_ID_ATTRIBUTE_ID` (`attribute_group_id`,`attribute_id`),
  KEY `EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_SET_ID_SORT_ORDER` (`attribute_set_id`,`sort_order`),
  KEY `EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=815 DEFAULT CHARSET=utf8 COMMENT='Eav Entity Attributes';

--
-- Dumping data for table `eav_entity_attribute`
--

LOCK TABLES `eav_entity_attribute` WRITE;
/*!40000 ALTER TABLE `eav_entity_attribute` DISABLE KEYS */;
INSERT INTO `eav_entity_attribute` VALUES ('1',1,1,1,1,10),('2',1,1,1,2,20),('3',1,1,1,3,20),('4',1,1,1,4,30),('5',1,1,1,5,40),('6',1,1,1,6,50),('7',1,1,1,7,60),('8',1,1,1,8,70),('9',1,1,1,9,80),('10',1,1,1,10,25),('11',1,1,1,11,90),('12',1,1,1,12,81),('13',1,1,1,13,115),('14',1,1,1,14,120),('15',1,1,1,15,82),('16',1,1,1,16,83),('17',1,1,1,17,100),('18',1,1,1,18,85),('19',1,1,1,19,86),('20',1,1,1,20,110),('21',1,1,1,21,121),('22',2,2,2,22,10),('23',2,2,2,23,20),('24',2,2,2,24,30),('25',2,2,2,25,40),('26',2,2,2,26,50),('27',2,2,2,27,60),('28',2,2,2,28,70),('29',2,2,2,29,80),('30',2,2,2,30,90),('31',2,2,2,31,100),('32',2,2,2,32,100),('33',2,2,2,33,110),('34',2,2,2,34,120),('35',2,2,2,35,130),('36',2,2,2,36,131),('37',2,2,2,37,132),('38',2,2,2,38,133),('39',2,2,2,39,134),('40',2,2,2,40,135),('41',1,1,1,41,87),('42',1,1,1,42,100),('43',1,1,1,43,110),('44',1,1,1,44,120),('45',3,3,4,45,1),('46',3,3,4,46,2),('47',3,3,4,47,4),('48',3,3,4,48,5),('49',3,3,4,49,6),('50',3,3,4,50,7),('51',3,3,4,51,8),('52',3,3,5,52,10),('53',3,3,5,53,20),('54',3,3,5,54,30),('55',3,3,4,55,12),('56',3,3,4,56,13),('57',3,3,4,57,14),('58',3,3,4,58,15),('59',3,3,4,59,16),('60',3,3,6,60,10),('61',3,3,6,61,30),('62',3,3,6,62,40),('63',3,3,6,63,50),('64',3,3,6,64,60),('65',3,3,4,65,24),('66',3,3,4,66,25),('67',3,3,5,67,40),('68',3,3,5,68,50),('69',3,3,4,69,10),('70',3,3,6,70,5),('71',3,3,6,71,6),('72',3,3,5,72,51),('73',4,4,7,73,10),('74',4,4,7,74,20),('75',4,4,13,75,90),('76',4,4,13,76,100),('77',4,4,7,77,30),('78',4,4,8,78,3),('79',4,4,8,79,4),('80',4,4,8,80,5),('81',4,4,8,81,6),('82',4,4,7,82,70),('83',4,4,9,84,20),('84',4,4,9,85,30),('85',4,4,9,86,40),('86',4,4,10,87,1),('87',4,4,10,88,2),('88',4,4,10,89,3),('89',4,4,10,90,4),('90',4,4,7,91,6),('91',4,4,8,92,7),('92',4,4,7,94,90),('93',4,4,7,95,100),('94',4,4,10,96,5),('95',4,4,7,97,5),('96',4,4,8,98,8),('97',4,4,7,99,80),('98',4,4,14,100,40),('99',4,4,14,101,20),('100',4,4,14,102,30),('101',4,4,11,103,10),('102',4,4,11,104,5),('103',4,4,7,105,80),('104',4,4,11,106,6),('105',4,4,7,107,14),('106',4,4,7,108,15),('107',4,4,7,109,16),('108',4,4,7,110,17),('109',4,4,7,111,18),('110',4,4,7,112,19),('111',4,4,7,113,20),('112',4,4,7,114,110),('113',4,4,7,115,60),('114',4,4,14,116,50),('115',3,3,4,117,3),('116',3,3,4,118,17),('117',4,4,9,119,10),('118',4,4,7,120,11),('119',4,4,8,121,9),('120',4,4,8,122,10),('121',4,4,7,123,31),('122',4,4,7,124,21),('123',4,4,7,125,71),('124',4,4,8,126,11),('125',4,4,15,127,1),('126',4,4,7,128,111),('127',4,4,7,129,112),('128',4,4,7,130,113),('129',4,4,7,131,114),('130',4,4,10,132,3),('131',4,4,7,133,40),('132',4,4,20,134,10),('160',4,9,25,98,8),('196',4,9,30,91,6),('200',4,9,30,120,11),('202',4,9,30,107,14),('204',4,9,30,108,15),('206',4,9,30,109,16),('208',4,9,30,110,17),('210',4,9,30,111,18),('212',4,9,30,112,19),('216',4,9,30,113,20),('242',4,9,30,128,111),('244',4,9,30,129,112),('246',4,9,30,130,113),('248',4,9,30,131,114),('714',4,9,30,73,2),('716',4,9,30,74,16),('718',4,9,30,77,4),('720',4,9,30,82,15),('722',4,9,30,94,20),('724',4,9,30,95,21),('726',4,9,30,97,1),('728',4,9,30,99,18),('730',4,9,30,105,19),('732',4,9,30,114,22),('734',4,9,30,115,7),('736',4,9,30,123,5),('738',4,9,30,124,3),('740',4,9,30,125,17),('742',4,9,30,133,6),('744',4,9,30,136,8),('746',4,9,30,137,9),('748',4,9,30,138,10),('750',4,9,30,139,11),('752',4,9,30,140,12),('754',4,9,30,141,13),('756',4,9,30,142,14),('758',4,9,29,75,1),('760',4,9,29,76,2),('762',4,9,28,127,1),('764',4,9,27,87,1),('766',4,9,27,88,2),('768',4,9,27,89,3),('770',4,9,27,90,5),('772',4,9,27,96,6),('774',4,9,27,132,4),('776',4,9,26,84,2),('778',4,9,26,85,3),('780',4,9,26,86,4),('782',4,9,26,119,1),('784',4,9,25,78,1),('786',4,9,25,79,2),('788',4,9,25,80,3),('790',4,9,25,81,4),('792',4,9,25,92,5),('794',4,9,25,121,6),('796',4,9,25,122,7),('798',4,9,25,126,8),('800',4,9,24,103,3),('802',4,9,24,104,1),('804',4,9,24,106,2),('806',4,9,23,100,3),('808',4,9,23,101,1),('810',4,9,23,102,2),('812',4,9,23,116,4),('814',4,9,21,134,1);
/*!40000 ALTER TABLE `eav_entity_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eav_entity_datetime`
--

DROP TABLE IF EXISTS `eav_entity_datetime`;
CREATE TABLE `eav_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` datetime DEFAULT NULL COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `EAV_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `EAV_ENTITY_DATETIME_STORE_ID` (`store_id`),
  KEY `EAV_ENTITY_DATETIME_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `EAV_ENTITY_DATETIME_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

--
-- Table structure for table `eav_entity_decimal`
--

DROP TABLE IF EXISTS `eav_entity_decimal`;
CREATE TABLE `eav_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `EAV_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `EAV_ENTITY_DECIMAL_STORE_ID` (`store_id`),
  KEY `EAV_ENTITY_DECIMAL_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `EAV_ENTITY_DECIMAL_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

--
-- Table structure for table `eav_entity_int`
--

DROP TABLE IF EXISTS `eav_entity_int`;
CREATE TABLE `eav_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `EAV_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `EAV_ENTITY_INT_STORE_ID` (`store_id`),
  KEY `EAV_ENTITY_INT_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `EAV_ENTITY_INT_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

--
-- Table structure for table `eav_entity_store`
--

DROP TABLE IF EXISTS `eav_entity_store`;
CREATE TABLE `eav_entity_store` (
  `entity_store_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Store Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `increment_prefix` varchar(20) DEFAULT NULL COMMENT 'Increment Prefix',
  `increment_last_id` varchar(50) DEFAULT NULL COMMENT 'Last Incremented Id',
  PRIMARY KEY (`entity_store_id`),
  KEY `EAV_ENTITY_STORE_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `EAV_ENTITY_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Store';

--
-- Table structure for table `eav_entity_text`
--

DROP TABLE IF EXISTS `eav_entity_text`;
CREATE TABLE `eav_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` text NOT NULL COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `EAV_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `EAV_ENTITY_TEXT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `EAV_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `EAV_ENTITY_TEXT_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

--
-- Table structure for table `eav_entity_type`
--

DROP TABLE IF EXISTS `eav_entity_type`;
CREATE TABLE `eav_entity_type` (
  `entity_type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Type Id',
  `entity_type_code` varchar(50) NOT NULL COMMENT 'Entity Type Code',
  `entity_model` varchar(255) NOT NULL COMMENT 'Entity Model',
  `attribute_model` varchar(255) DEFAULT NULL COMMENT 'Attribute Model',
  `entity_table` varchar(255) DEFAULT NULL COMMENT 'Entity Table',
  `value_table_prefix` varchar(255) DEFAULT NULL COMMENT 'Value Table Prefix',
  `entity_id_field` varchar(255) DEFAULT NULL COMMENT 'Entity Id Field',
  `is_data_sharing` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Defines Is Data Sharing',
  `data_sharing_key` varchar(100) DEFAULT 'default' COMMENT 'Data Sharing Key',
  `default_attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Default Attribute Set Id',
  `increment_model` varchar(255) DEFAULT NULL COMMENT 'Increment Model',
  `increment_per_store` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Increment Per Store',
  `increment_pad_length` smallint(5) unsigned NOT NULL DEFAULT '8' COMMENT 'Increment Pad Length',
  `increment_pad_char` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Increment Pad Char',
  `additional_attribute_table` varchar(255) DEFAULT NULL COMMENT 'Additional Attribute Table',
  `entity_attribute_collection` varchar(255) DEFAULT NULL COMMENT 'Entity Attribute Collection',
  PRIMARY KEY (`entity_type_id`),
  KEY `EAV_ENTITY_TYPE_ENTITY_TYPE_CODE` (`entity_type_code`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='Eav Entity Type';

--
-- Dumping data for table `eav_entity_type`
--

LOCK TABLES `eav_entity_type` WRITE;
/*!40000 ALTER TABLE `eav_entity_type` DISABLE KEYS */;
INSERT INTO `eav_entity_type` VALUES (1,'customer','Magento\\Customer\\Model\\ResourceModel\\Customer','Magento\\Customer\\Model\\Attribute','customer_entity',NULL,NULL,1,'default',1,'Magento\\Eav\\Model\\Entity\\Increment\\NumericValue',0,8,'0','customer_eav_attribute','Magento\\Customer\\Model\\ResourceModel\\Attribute\\Collection'),(2,'customer_address','Magento\\Customer\\Model\\ResourceModel\\Address','Magento\\Customer\\Model\\Attribute','customer_address_entity',NULL,NULL,1,'default',2,NULL,0,8,'0','customer_eav_attribute','Magento\\Customer\\Model\\ResourceModel\\Address\\Attribute\\Collection'),(3,'catalog_category','Magento\\Catalog\\Model\\ResourceModel\\Category','Magento\\Catalog\\Model\\ResourceModel\\Eav\\Attribute','catalog_category_entity',NULL,NULL,1,'default',3,NULL,0,8,'0','catalog_eav_attribute','Magento\\Catalog\\Model\\ResourceModel\\Category\\Attribute\\Collection'),(4,'catalog_product','Magento\\Catalog\\Model\\ResourceModel\\Product','Magento\\Catalog\\Model\\ResourceModel\\Eav\\Attribute','catalog_product_entity',NULL,NULL,1,'default',4,NULL,0,8,'0','catalog_eav_attribute','Magento\\Catalog\\Model\\ResourceModel\\Product\\Attribute\\Collection'),(5,'order','Magento\\Sales\\Model\\ResourceModel\\Order',NULL,'sales_order',NULL,NULL,1,'default',5,'Magento\\Eav\\Model\\Entity\\Increment\\NumericValue',1,8,'0',NULL,NULL),(6,'invoice','Magento\\Sales\\Model\\ResourceModel\\Order',NULL,'sales_invoice',NULL,NULL,1,'default',6,'Magento\\Eav\\Model\\Entity\\Increment\\NumericValue',1,8,'0',NULL,NULL),(7,'creditmemo','Magento\\Sales\\Model\\ResourceModel\\Order\\Creditmemo',NULL,'sales_creditmemo',NULL,NULL,1,'default',7,'Magento\\Eav\\Model\\Entity\\Increment\\NumericValue',1,8,'0',NULL,NULL),(8,'shipment','Magento\\Sales\\Model\\ResourceModel\\Order\\Shipment',NULL,'sales_shipment',NULL,NULL,1,'default',8,'Magento\\Eav\\Model\\Entity\\Increment\\NumericValue',1,8,'0',NULL,NULL);
/*!40000 ALTER TABLE `eav_entity_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eav_entity_varchar`
--

DROP TABLE IF EXISTS `eav_entity_varchar`;
CREATE TABLE `eav_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `EAV_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `EAV_ENTITY_VARCHAR_STORE_ID` (`store_id`),
  KEY `EAV_ENTITY_VARCHAR_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `EAV_ENTITY_VARCHAR_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

--
-- Table structure for table `eav_form_element`
--

DROP TABLE IF EXISTS `eav_form_element`;
CREATE TABLE `eav_form_element` (
  `element_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Element Id',
  `type_id` smallint(5) unsigned NOT NULL COMMENT 'Type Id',
  `fieldset_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Fieldset Id',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  `sort_order` int(11) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`element_id`),
  UNIQUE KEY `EAV_FORM_ELEMENT_TYPE_ID_ATTRIBUTE_ID` (`type_id`,`attribute_id`),
  KEY `EAV_FORM_ELEMENT_FIELDSET_ID` (`fieldset_id`),
  KEY `EAV_FORM_ELEMENT_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COMMENT='Eav Form Element';

--
-- Dumping data for table `eav_form_element`
--

LOCK TABLES `eav_form_element` WRITE;
/*!40000 ALTER TABLE `eav_form_element` DISABLE KEYS */;
INSERT INTO `eav_form_element` VALUES ('1',1,NULL,23,'0'),('2',1,NULL,25,'1'),('3',1,NULL,27,'2'),('4',1,NULL,9,'3'),('5',1,NULL,28,'4'),('6',1,NULL,29,'5'),('7',1,NULL,31,'6'),('8',1,NULL,33,'7'),('9',1,NULL,30,'8'),('10',1,NULL,34,'9'),('11',1,NULL,35,'10'),('12',2,NULL,23,'0'),('13',2,NULL,25,'1'),('14',2,NULL,27,'2'),('15',2,NULL,9,'3'),('16',2,NULL,28,'4'),('17',2,NULL,29,'5'),('18',2,NULL,31,'6'),('19',2,NULL,33,'7'),('20',2,NULL,30,'8'),('21',2,NULL,34,'9'),('22',2,NULL,35,'10'),('23',3,NULL,23,'0'),('24',3,NULL,25,'1'),('25',3,NULL,27,'2'),('26',3,NULL,28,'3'),('27',3,NULL,29,'4'),('28',3,NULL,31,'5'),('29',3,NULL,33,'6'),('30',3,NULL,30,'7'),('31',3,NULL,34,'8'),('32',3,NULL,35,'9'),('33',4,NULL,23,'0'),('34',4,NULL,25,'1'),('35',4,NULL,27,'2'),('36',4,NULL,28,'3'),('37',4,NULL,29,'4'),('38',4,NULL,31,'5'),('39',4,NULL,33,'6'),('40',4,NULL,30,'7'),('41',4,NULL,34,'8'),('42',4,NULL,35,'9');
/*!40000 ALTER TABLE `eav_form_element` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eav_form_fieldset`
--

DROP TABLE IF EXISTS `eav_form_fieldset`;
CREATE TABLE `eav_form_fieldset` (
  `fieldset_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Fieldset Id',
  `type_id` smallint(5) unsigned NOT NULL COMMENT 'Type Id',
  `code` varchar(64) NOT NULL COMMENT 'Code',
  `sort_order` int(11) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`fieldset_id`),
  UNIQUE KEY `EAV_FORM_FIELDSET_TYPE_ID_CODE` (`type_id`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Fieldset';

--
-- Table structure for table `eav_form_fieldset_label`
--

DROP TABLE IF EXISTS `eav_form_fieldset_label`;
CREATE TABLE `eav_form_fieldset_label` (
  `fieldset_id` smallint(5) unsigned NOT NULL COMMENT 'Fieldset Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `label` varchar(255) NOT NULL COMMENT 'Label',
  PRIMARY KEY (`fieldset_id`,`store_id`),
  KEY `EAV_FORM_FIELDSET_LABEL_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Fieldset Label';

--
-- Table structure for table `eav_form_type`
--

DROP TABLE IF EXISTS `eav_form_type`;
CREATE TABLE `eav_form_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Type Id',
  `code` varchar(64) NOT NULL COMMENT 'Code',
  `label` varchar(255) NOT NULL COMMENT 'Label',
  `is_system` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is System',
  `theme` varchar(64) DEFAULT NULL COMMENT 'Theme',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  PRIMARY KEY (`type_id`),
  UNIQUE KEY `EAV_FORM_TYPE_CODE_THEME_STORE_ID` (`code`,`theme`,`store_id`),
  KEY `EAV_FORM_TYPE_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Eav Form Type';

--
-- Dumping data for table `eav_form_type`
--

LOCK TABLES `eav_form_type` WRITE;
/*!40000 ALTER TABLE `eav_form_type` DISABLE KEYS */;
INSERT INTO `eav_form_type` VALUES (1,'checkout_onepage_register','checkout_onepage_register',1,'',0),(2,'checkout_onepage_register_guest','checkout_onepage_register_guest',1,'',0),(3,'checkout_onepage_billing_address','checkout_onepage_billing_address',1,'',0),(4,'checkout_onepage_shipping_address','checkout_onepage_shipping_address',1,'',0);
/*!40000 ALTER TABLE `eav_form_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eav_form_type_entity`
--

DROP TABLE IF EXISTS `eav_form_type_entity`;
CREATE TABLE `eav_form_type_entity` (
  `type_id` smallint(5) unsigned NOT NULL COMMENT 'Type Id',
  `entity_type_id` smallint(5) unsigned NOT NULL COMMENT 'Entity Type Id',
  PRIMARY KEY (`type_id`,`entity_type_id`),
  KEY `EAV_FORM_TYPE_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Type Entity';

--
-- Dumping data for table `eav_form_type_entity`
--

LOCK TABLES `eav_form_type_entity` WRITE;
/*!40000 ALTER TABLE `eav_form_type_entity` DISABLE KEYS */;
INSERT INTO `eav_form_type_entity` VALUES (1,1),(2,1),(1,2),(2,2),(3,2),(4,2);
/*!40000 ALTER TABLE `eav_form_type_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_template`
--

DROP TABLE IF EXISTS `email_template`;
CREATE TABLE `email_template` (
  `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Template ID',
  `template_code` varchar(150) NOT NULL COMMENT 'Template Name',
  `template_text` text NOT NULL COMMENT 'Template Content',
  `template_styles` text COMMENT 'Templste Styles',
  `template_type` int(10) unsigned DEFAULT NULL COMMENT 'Template Type',
  `template_subject` varchar(200) NOT NULL COMMENT 'Template Subject',
  `template_sender_name` varchar(200) DEFAULT NULL COMMENT 'Template Sender Name',
  `template_sender_email` varchar(200) DEFAULT NULL COMMENT 'Template Sender Email',
  `added_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Date of Template Creation',
  `modified_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of Template Modification',
  `orig_template_code` varchar(200) DEFAULT NULL COMMENT 'Original Template Code',
  `orig_template_variables` text COMMENT 'Original Template Variables',
  PRIMARY KEY (`template_id`),
  UNIQUE KEY `EMAIL_TEMPLATE_TEMPLATE_CODE` (`template_code`),
  KEY `EMAIL_TEMPLATE_ADDED_AT` (`added_at`),
  KEY `EMAIL_TEMPLATE_MODIFIED_AT` (`modified_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Email Templates';

--
-- Table structure for table `flag`
--

DROP TABLE IF EXISTS `flag`;
CREATE TABLE `flag` (
  `flag_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Flag Id',
  `flag_code` varchar(255) NOT NULL COMMENT 'Flag Code',
  `state` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Flag State',
  `flag_data` text COMMENT 'Flag Data',
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of Last Flag Update',
  PRIMARY KEY (`flag_id`),
  KEY `FLAG_LAST_UPDATE` (`last_update`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Flag';

--
-- Table structure for table `gift_message`
--

DROP TABLE IF EXISTS `gift_message`;
CREATE TABLE `gift_message` (
  `gift_message_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'GiftMessage Id',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer id',
  `sender` varchar(255) DEFAULT NULL COMMENT 'Sender',
  `recipient` varchar(255) DEFAULT NULL COMMENT 'Registrant',
  `message` text COMMENT 'Message',
  PRIMARY KEY (`gift_message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Gift Message';

--
-- Table structure for table `googleoptimizer_code`
--

DROP TABLE IF EXISTS `googleoptimizer_code`;
CREATE TABLE `googleoptimizer_code` (
  `code_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Google experiment code id',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Optimized entity id product id or catalog id',
  `entity_type` varchar(50) DEFAULT NULL COMMENT 'Optimized entity type',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store id',
  `experiment_script` text COMMENT 'Google experiment script',
  PRIMARY KEY (`code_id`),
  UNIQUE KEY `GOOGLEOPTIMIZER_CODE_STORE_ID_ENTITY_ID_ENTITY_TYPE` (`store_id`,`entity_id`,`entity_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Google Experiment code';

--
-- Table structure for table `import_history`
--

DROP TABLE IF EXISTS `import_history`;
CREATE TABLE `import_history` (
  `history_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'History record Id',
  `started_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Started at',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'User ID',
  `imported_file` varchar(255) DEFAULT NULL COMMENT 'Imported file',
  `execution_time` varchar(255) DEFAULT NULL COMMENT 'Execution time',
  `summary` varchar(255) DEFAULT NULL COMMENT 'Summary',
  `error_file` varchar(255) NOT NULL COMMENT 'Imported file with errors',
  PRIMARY KEY (`history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Import history table';

--
-- Table structure for table `importexport_importdata`
--

DROP TABLE IF EXISTS `importexport_importdata`;
CREATE TABLE `importexport_importdata` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `entity` varchar(50) NOT NULL COMMENT 'Entity',
  `behavior` varchar(10) NOT NULL DEFAULT 'append' COMMENT 'Behavior',
  `data` longtext COMMENT 'Data',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Import Data Table';

--
-- Table structure for table `improdev_email_manager`
--

DROP TABLE IF EXISTS `improdev_email_manager`;
CREATE TABLE `improdev_email_manager` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `name` varchar(255) DEFAULT NULL COMMENT 'Sender Name',
  `email` varchar(255) DEFAULT NULL COMMENT 'Sender Email',
  `telephone` varchar(255) DEFAULT NULL COMMENT 'Sender Phone',
  `comment` text COMMENT 'Email Message',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Email Status',
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='improdev_email_manager';

--
-- Dumping data for table `improdev_email_manager`
--

LOCK TABLES `improdev_email_manager` WRITE;
/*!40000 ALTER TABLE `improdev_email_manager` DISABLE KEYS */;
INSERT INTO `improdev_email_manager` VALUES ('1','Ihor Mazurenko','impro.box@tm.com','0661452682','te fb sdlf sdlfjv df df xlcvljg\'a padfj dfb te fb sdlf sdlfjv df df xlcvljg\'a padfj dfb te fb sdlf sdlfjv df df xlcvljg\'a padfj dfb te fb sdlf sdlfjv df df xlcvljg\'a padfj dfb te fb sdlf sdlfjv df df xlcvljg\'a padfj dfb te fb sdlf sdlfjv df df xlcvljg\'a padfj dfb te fb sdlf sdlfjv df df xlcvljg\'a padfj dfb te fb sdlf sdlfjv df df xlcvljg\'a padfj dfb te fb sdlf sdlfjv df df xlcvljg\'a padfj dfb te fb sdlf sdlfjv df df xlcvljg\'a padfj dfb te fb sdlf sdlfjv df df xlcvljg\'a padfj dfb te fb sdlf sdlfjv df df xlcvljg\'a padfj dfb te fb sdlf sdlfjv df df xlcvljg\'a padfj dfb te fb sdlf sdlfjv df df xlcvljg\'a padfj dfb te fb sdlf sdlfjv df df xlcvljg\'a padfj dfb te fb sdlf sdlfjv df df xlcvljg\'a padfj dfb te fb sdlf sdlfjv df df xlcvljg\'a padfj dfb te fb sdlf sdlfjv df df xlcvljg\'a padfj dfb te fb sdlf sdlfjv df df xlcvljg\'a padfj dfb te fb sdlf sdlfjv df df xlcvljg\'a padfj dfb te fb sdlf sdlfjv df df xlcvljg\'a padfj dfb te fb sdlf sdlfjv df df xlcvljg\'a padfj dfb te fb sdlf sdlfjv df df xlcvljg\'a padfj dfb te fb sdlf sdlfjv df df xlcvljg\'a padfj dfb te fb sdlf sdlfjv df df xlcvljg\'a padfj dfb te fb sdlf sdlfjv df df xlcvljg\'a padfj dfb te fb sdlf sdlfjv df df xlcvljg\'a padfj dfb te fb sdlf sdlfjv df df xlcvljg\'a padfj dfb te fb sdlf sdlfjv df df xlcvljg\'a padfj dfb te fb sdlf sdlfjv df df xlcvljg\'a padfj dfb te fb sdlf sdlfjv df df xlcvljg\'a padfj dfb te fb sdlf sdlfjv df df xlcvljg\'a padfj dfb te fb sdlf sdlfjv df df xlcvljg\'a padfj dfb te fb sdlf sdlfjv df df xlcvljg\'a padfj dfb te fb sdlf sdlfjv df df xlcvljg\'a padfj dfb te fb sdlf sdlfjv df df xlcvljg\'a padfj dfb ',1),('3','Vadim Pogorelov','impro.box@gmail.com','0660553701','sdadgarg',1),('13','Ekaterina Mazurenko','impro.box@gmail.com','0661452682','dgfdgfg',0),('14','Oleg','impro.box@gmail.com','0676387110','dfdf',1),('15','Vadim Pogorelov','impro.box@gmail.com','0660553701','fff',1);
/*!40000 ALTER TABLE `improdev_email_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indexer_state`
--

DROP TABLE IF EXISTS `indexer_state`;
CREATE TABLE `indexer_state` (
  `state_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Indexer State Id',
  `indexer_id` varchar(255) DEFAULT NULL COMMENT 'Indexer Id',
  `status` varchar(16) DEFAULT 'invalid' COMMENT 'Indexer Status',
  `updated` datetime DEFAULT NULL COMMENT 'Indexer Status',
  `hash_config` varchar(32) NOT NULL COMMENT 'Hash of indexer config',
  PRIMARY KEY (`state_id`),
  KEY `INDEXER_STATE_INDEXER_ID` (`indexer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='Indexer State';

--
-- Dumping data for table `indexer_state`
--

LOCK TABLES `indexer_state` WRITE;
/*!40000 ALTER TABLE `indexer_state` DISABLE KEYS */;
INSERT INTO `indexer_state` VALUES ('1','design_config_grid','valid','2017-08-25 09:32:32','27baa8fe6a5369f52c8b7cbd54a3c3c4'),('2','customer_grid','valid','2017-08-25 09:32:34','a1bbcab4c6368d654719ccf6cf0e55a8'),('3','catalog_category_product','valid','2017-08-25 09:32:37','57b48d3cf1fcd64abe6b01dea3173d02'),('4','catalog_product_category','valid','2017-07-22 15:39:23','9957f66909342cc58ff2703dcd268bf4'),('5','catalog_product_price','valid','2017-08-25 09:32:38','15a819a577a149220cd0722c291de721'),('6','catalog_product_attribute','valid','2017-08-25 09:32:38','77eed0bf72b16099d299d0ab47b74910'),('7','cataloginventory_stock','valid','2017-08-25 09:32:39','78a405fd852458c326c85096099d7d5e'),('8','catalogrule_rule','valid','2017-08-25 09:32:39','5afe3cacdcb52ec3a7e68dc245679021'),('9','catalogrule_product','valid','2017-07-22 15:39:24','0ebee9e52ed424273132e8227fe646f3'),('10','catalogsearch_fulltext','valid','2017-08-25 09:32:41','4486b57e2021aa78b526c68c9af2dcab');
/*!40000 ALTER TABLE `indexer_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `integration`
--

DROP TABLE IF EXISTS `integration`;
CREATE TABLE `integration` (
  `integration_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Integration ID',
  `name` varchar(255) NOT NULL COMMENT 'Integration name is displayed in the admin interface',
  `email` varchar(255) NOT NULL COMMENT 'Email address of the contact person',
  `endpoint` varchar(255) DEFAULT NULL COMMENT 'Endpoint for posting consumer credentials',
  `status` smallint(5) unsigned NOT NULL COMMENT 'Integration status',
  `consumer_id` int(10) unsigned DEFAULT NULL COMMENT 'Oauth consumer',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Creation Time',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time',
  `setup_type` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Integration type - manual or config file',
  `identity_link_url` varchar(255) DEFAULT NULL COMMENT 'Identity linking Url',
  PRIMARY KEY (`integration_id`),
  UNIQUE KEY `INTEGRATION_NAME` (`name`),
  UNIQUE KEY `INTEGRATION_CONSUMER_ID` (`consumer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='integration';

--
-- Table structure for table `layout_link`
--

DROP TABLE IF EXISTS `layout_link`;
CREATE TABLE `layout_link` (
  `layout_link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `theme_id` int(10) unsigned NOT NULL COMMENT 'Theme id',
  `layout_update_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Layout Update Id',
  `is_temporary` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Defines whether Layout Update is Temporary',
  PRIMARY KEY (`layout_link_id`),
  KEY `LAYOUT_LINK_LAYOUT_UPDATE_ID` (`layout_update_id`),
  KEY `LAYOUT_LINK_STORE_ID_THEME_ID_LAYOUT_UPDATE_ID_IS_TEMPORARY` (`store_id`,`theme_id`,`layout_update_id`,`is_temporary`),
  KEY `LAYOUT_LINK_THEME_ID_THEME_THEME_ID` (`theme_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Layout Link';

--
-- Dumping data for table `layout_link`
--

LOCK TABLES `layout_link` WRITE;
/*!40000 ALTER TABLE `layout_link` DISABLE KEYS */;
INSERT INTO `layout_link` VALUES ('1',0,'4','1',0);
/*!40000 ALTER TABLE `layout_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layout_update`
--

DROP TABLE IF EXISTS `layout_update`;
CREATE TABLE `layout_update` (
  `layout_update_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Layout Update Id',
  `handle` varchar(255) DEFAULT NULL COMMENT 'Handle',
  `xml` text COMMENT 'Xml',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update Timestamp',
  PRIMARY KEY (`layout_update_id`),
  KEY `LAYOUT_UPDATE_HANDLE` (`handle`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Layout Updates';

--
-- Dumping data for table `layout_update`
--

LOCK TABLES `layout_update` WRITE;
/*!40000 ALTER TABLE `layout_update` DISABLE KEYS */;
INSERT INTO `layout_update` VALUES ('1','catalog_product_view','<body><referenceContainer name=\"content\"><block class=\"Magento\\Reports\\Block\\Product\\Widget\\Viewed\" name=\"9381d975e1f6a51df02251539317b7a4\" template=\"widget/viewed/content/viewed_grid.phtml\"><action method=\"setData\"><argument name=\"name\" xsi:type=\"string\">page_size</argument><argument name=\"value\" xsi:type=\"string\">9</argument></action></block></referenceContainer></body>',10,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `layout_update` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mview_state`
--

DROP TABLE IF EXISTS `mview_state`;
CREATE TABLE `mview_state` (
  `state_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'View State Id',
  `view_id` varchar(255) DEFAULT NULL COMMENT 'View Id',
  `mode` varchar(16) DEFAULT 'disabled' COMMENT 'View Mode',
  `status` varchar(16) DEFAULT 'idle' COMMENT 'View Status',
  `updated` datetime DEFAULT NULL COMMENT 'View updated time',
  `version_id` int(10) unsigned DEFAULT NULL COMMENT 'View Version Id',
  PRIMARY KEY (`state_id`),
  KEY `MVIEW_STATE_VIEW_ID` (`view_id`),
  KEY `MVIEW_STATE_MODE` (`mode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='View State';

--
-- Table structure for table `newsletter_problem`
--

DROP TABLE IF EXISTS `newsletter_problem`;
CREATE TABLE `newsletter_problem` (
  `problem_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Problem Id',
  `subscriber_id` int(10) unsigned DEFAULT NULL COMMENT 'Subscriber Id',
  `queue_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Queue Id',
  `problem_error_code` int(10) unsigned DEFAULT '0' COMMENT 'Problem Error Code',
  `problem_error_text` varchar(200) DEFAULT NULL COMMENT 'Problem Error Text',
  PRIMARY KEY (`problem_id`),
  KEY `NEWSLETTER_PROBLEM_SUBSCRIBER_ID` (`subscriber_id`),
  KEY `NEWSLETTER_PROBLEM_QUEUE_ID` (`queue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Problems';

--
-- Table structure for table `newsletter_queue`
--

DROP TABLE IF EXISTS `newsletter_queue`;
CREATE TABLE `newsletter_queue` (
  `queue_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Queue Id',
  `template_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Template ID',
  `newsletter_type` int(11) DEFAULT NULL COMMENT 'Newsletter Type',
  `newsletter_text` text COMMENT 'Newsletter Text',
  `newsletter_styles` text COMMENT 'Newsletter Styles',
  `newsletter_subject` varchar(200) DEFAULT NULL COMMENT 'Newsletter Subject',
  `newsletter_sender_name` varchar(200) DEFAULT NULL COMMENT 'Newsletter Sender Name',
  `newsletter_sender_email` varchar(200) DEFAULT NULL COMMENT 'Newsletter Sender Email',
  `queue_status` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Queue Status',
  `queue_start_at` timestamp NULL DEFAULT NULL COMMENT 'Queue Start At',
  `queue_finish_at` timestamp NULL DEFAULT NULL COMMENT 'Queue Finish At',
  PRIMARY KEY (`queue_id`),
  KEY `NEWSLETTER_QUEUE_TEMPLATE_ID` (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue';

--
-- Table structure for table `newsletter_queue_link`
--

DROP TABLE IF EXISTS `newsletter_queue_link`;
CREATE TABLE `newsletter_queue_link` (
  `queue_link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Queue Link Id',
  `queue_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Queue Id',
  `subscriber_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Subscriber Id',
  `letter_sent_at` timestamp NULL DEFAULT NULL COMMENT 'Letter Sent At',
  PRIMARY KEY (`queue_link_id`),
  KEY `NEWSLETTER_QUEUE_LINK_SUBSCRIBER_ID` (`subscriber_id`),
  KEY `NEWSLETTER_QUEUE_LINK_QUEUE_ID_LETTER_SENT_AT` (`queue_id`,`letter_sent_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue Link';

--
-- Table structure for table `newsletter_queue_store_link`
--

DROP TABLE IF EXISTS `newsletter_queue_store_link`;
CREATE TABLE `newsletter_queue_store_link` (
  `queue_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Queue Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  PRIMARY KEY (`queue_id`,`store_id`),
  KEY `NEWSLETTER_QUEUE_STORE_LINK_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue Store Link';

--
-- Table structure for table `newsletter_subscriber`
--

DROP TABLE IF EXISTS `newsletter_subscriber`;
CREATE TABLE `newsletter_subscriber` (
  `subscriber_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Subscriber Id',
  `store_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Store Id',
  `change_status_at` timestamp NULL DEFAULT NULL COMMENT 'Change Status At',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Id',
  `subscriber_email` varchar(150) DEFAULT NULL COMMENT 'Subscriber Email',
  `subscriber_status` int(11) NOT NULL DEFAULT '0' COMMENT 'Subscriber Status',
  `subscriber_confirm_code` varchar(32) DEFAULT 'NULL' COMMENT 'Subscriber Confirm Code',
  PRIMARY KEY (`subscriber_id`),
  KEY `NEWSLETTER_SUBSCRIBER_CUSTOMER_ID` (`customer_id`),
  KEY `NEWSLETTER_SUBSCRIBER_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Subscriber';

--
-- Table structure for table `newsletter_template`
--

DROP TABLE IF EXISTS `newsletter_template`;
CREATE TABLE `newsletter_template` (
  `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Template ID',
  `template_code` varchar(150) DEFAULT NULL COMMENT 'Template Code',
  `template_text` text COMMENT 'Template Text',
  `template_styles` text COMMENT 'Template Styles',
  `template_type` int(10) unsigned DEFAULT NULL COMMENT 'Template Type',
  `template_subject` varchar(200) DEFAULT NULL COMMENT 'Template Subject',
  `template_sender_name` varchar(200) DEFAULT NULL COMMENT 'Template Sender Name',
  `template_sender_email` varchar(200) DEFAULT NULL COMMENT 'Template Sender Email',
  `template_actual` smallint(5) unsigned DEFAULT '1' COMMENT 'Template Actual',
  `added_at` timestamp NULL DEFAULT NULL COMMENT 'Added At',
  `modified_at` timestamp NULL DEFAULT NULL COMMENT 'Modified At',
  PRIMARY KEY (`template_id`),
  KEY `NEWSLETTER_TEMPLATE_TEMPLATE_ACTUAL` (`template_actual`),
  KEY `NEWSLETTER_TEMPLATE_ADDED_AT` (`added_at`),
  KEY `NEWSLETTER_TEMPLATE_MODIFIED_AT` (`modified_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Template';

--
-- Table structure for table `oauth_consumer`
--

DROP TABLE IF EXISTS `oauth_consumer`;
CREATE TABLE `oauth_consumer` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `name` varchar(255) NOT NULL COMMENT 'Name of consumer',
  `key` varchar(32) NOT NULL COMMENT 'Key code',
  `secret` varchar(32) NOT NULL COMMENT 'Secret code',
  `callback_url` text COMMENT 'Callback URL',
  `rejected_callback_url` text NOT NULL COMMENT 'Rejected callback URL',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `OAUTH_CONSUMER_KEY` (`key`),
  UNIQUE KEY `OAUTH_CONSUMER_SECRET` (`secret`),
  KEY `OAUTH_CONSUMER_CREATED_AT` (`created_at`),
  KEY `OAUTH_CONSUMER_UPDATED_AT` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='OAuth Consumers';

--
-- Table structure for table `oauth_nonce`
--

DROP TABLE IF EXISTS `oauth_nonce`;
CREATE TABLE `oauth_nonce` (
  `nonce` varchar(32) NOT NULL COMMENT 'Nonce String',
  `timestamp` int(10) unsigned NOT NULL COMMENT 'Nonce Timestamp',
  `consumer_id` int(10) unsigned NOT NULL COMMENT 'Consumer ID',
  UNIQUE KEY `OAUTH_NONCE_NONCE_CONSUMER_ID` (`nonce`,`consumer_id`),
  KEY `OAUTH_NONCE_CONSUMER_ID_OAUTH_CONSUMER_ENTITY_ID` (`consumer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='OAuth Nonce';

--
-- Table structure for table `oauth_token`
--

DROP TABLE IF EXISTS `oauth_token`;
CREATE TABLE `oauth_token` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `consumer_id` int(10) unsigned DEFAULT NULL COMMENT 'Oauth Consumer ID',
  `admin_id` int(10) unsigned DEFAULT NULL COMMENT 'Admin user ID',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer user ID',
  `type` varchar(16) NOT NULL COMMENT 'Token Type',
  `token` varchar(32) NOT NULL COMMENT 'Token',
  `secret` varchar(32) NOT NULL COMMENT 'Token Secret',
  `verifier` varchar(32) DEFAULT NULL COMMENT 'Token Verifier',
  `callback_url` text NOT NULL COMMENT 'Token Callback URL',
  `revoked` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Token revoked',
  `authorized` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Token authorized',
  `user_type` int(11) DEFAULT NULL COMMENT 'User type',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Token creation timestamp',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `OAUTH_TOKEN_TOKEN` (`token`),
  KEY `OAUTH_TOKEN_CONSUMER_ID` (`consumer_id`),
  KEY `OAUTH_TOKEN_ADMIN_ID_ADMIN_USER_USER_ID` (`admin_id`),
  KEY `OAUTH_TOKEN_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='OAuth Tokens';

--
-- Table structure for table `oauth_token_request_log`
--

DROP TABLE IF EXISTS `oauth_token_request_log`;
CREATE TABLE `oauth_token_request_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Log Id',
  `user_name` varchar(255) NOT NULL COMMENT 'Customer email or admin login',
  `user_type` smallint(5) unsigned NOT NULL COMMENT 'User type (admin or customer)',
  `failures_count` smallint(5) unsigned DEFAULT '0' COMMENT 'Number of failed authentication attempts in a row',
  `lock_expires_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Lock expiration time',
  PRIMARY KEY (`log_id`),
  UNIQUE KEY `OAUTH_TOKEN_REQUEST_LOG_USER_NAME_USER_TYPE` (`user_name`,`user_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log of token request authentication failures.';

--
-- Table structure for table `password_reset_request_event`
--

DROP TABLE IF EXISTS `password_reset_request_event`;
CREATE TABLE `password_reset_request_event` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `request_type` smallint(5) unsigned NOT NULL COMMENT 'Type of the event under a security control',
  `account_reference` varchar(255) DEFAULT NULL COMMENT 'An identifier for existing account or another target',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp when the event occurs',
  `ip` varchar(15) NOT NULL COMMENT 'Remote user IP',
  PRIMARY KEY (`id`),
  KEY `PASSWORD_RESET_REQUEST_EVENT_ACCOUNT_REFERENCE` (`account_reference`),
  KEY `PASSWORD_RESET_REQUEST_EVENT_CREATED_AT` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Password Reset Request Event under a security control';

--
-- Table structure for table `paypal_billing_agreement`
--

DROP TABLE IF EXISTS `paypal_billing_agreement`;
CREATE TABLE `paypal_billing_agreement` (
  `agreement_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Agreement Id',
  `customer_id` int(10) unsigned NOT NULL COMMENT 'Customer Id',
  `method_code` varchar(32) NOT NULL COMMENT 'Method Code',
  `reference_id` varchar(32) NOT NULL COMMENT 'Reference Id',
  `status` varchar(20) NOT NULL COMMENT 'Status',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `agreement_label` varchar(255) DEFAULT NULL COMMENT 'Agreement Label',
  PRIMARY KEY (`agreement_id`),
  KEY `PAYPAL_BILLING_AGREEMENT_CUSTOMER_ID` (`customer_id`),
  KEY `PAYPAL_BILLING_AGREEMENT_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Billing Agreement';

--
-- Table structure for table `paypal_billing_agreement_order`
--

DROP TABLE IF EXISTS `paypal_billing_agreement_order`;
CREATE TABLE `paypal_billing_agreement_order` (
  `agreement_id` int(10) unsigned NOT NULL COMMENT 'Agreement Id',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  PRIMARY KEY (`agreement_id`,`order_id`),
  KEY `PAYPAL_BILLING_AGREEMENT_ORDER_ORDER_ID` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Billing Agreement Order';

--
-- Table structure for table `paypal_cert`
--

DROP TABLE IF EXISTS `paypal_cert`;
CREATE TABLE `paypal_cert` (
  `cert_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Cert Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `content` text COMMENT 'Content',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  PRIMARY KEY (`cert_id`),
  KEY `PAYPAL_CERT_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Certificate Table';

--
-- Table structure for table `paypal_payment_transaction`
--

DROP TABLE IF EXISTS `paypal_payment_transaction`;
CREATE TABLE `paypal_payment_transaction` (
  `transaction_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `txn_id` varchar(100) DEFAULT NULL COMMENT 'Txn Id',
  `additional_information` blob COMMENT 'Additional Information',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`transaction_id`),
  UNIQUE KEY `PAYPAL_PAYMENT_TRANSACTION_TXN_ID` (`txn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='PayPal Payflow Link Payment Transaction';

--
-- Table structure for table `paypal_settlement_report`
--

DROP TABLE IF EXISTS `paypal_settlement_report`;
CREATE TABLE `paypal_settlement_report` (
  `report_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Report Id',
  `report_date` timestamp NULL DEFAULT NULL COMMENT 'Report Date',
  `account_id` varchar(64) DEFAULT NULL COMMENT 'Account Id',
  `filename` varchar(24) DEFAULT NULL COMMENT 'Filename',
  `last_modified` timestamp NULL DEFAULT NULL COMMENT 'Last Modified',
  PRIMARY KEY (`report_id`),
  UNIQUE KEY `PAYPAL_SETTLEMENT_REPORT_REPORT_DATE_ACCOUNT_ID` (`report_date`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Settlement Report Table';

--
-- Table structure for table `paypal_settlement_report_row`
--

DROP TABLE IF EXISTS `paypal_settlement_report_row`;
CREATE TABLE `paypal_settlement_report_row` (
  `row_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Row Id',
  `report_id` int(10) unsigned NOT NULL COMMENT 'Report Id',
  `transaction_id` varchar(19) DEFAULT NULL COMMENT 'Transaction Id',
  `invoice_id` varchar(127) DEFAULT NULL COMMENT 'Invoice Id',
  `paypal_reference_id` varchar(19) DEFAULT NULL COMMENT 'Paypal Reference Id',
  `paypal_reference_id_type` varchar(3) DEFAULT NULL COMMENT 'Paypal Reference Id Type',
  `transaction_event_code` varchar(5) DEFAULT NULL COMMENT 'Transaction Event Code',
  `transaction_initiation_date` timestamp NULL DEFAULT NULL COMMENT 'Transaction Initiation Date',
  `transaction_completion_date` timestamp NULL DEFAULT NULL COMMENT 'Transaction Completion Date',
  `transaction_debit_or_credit` varchar(2) NOT NULL DEFAULT 'CR' COMMENT 'Transaction Debit Or Credit',
  `gross_transaction_amount` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Gross Transaction Amount',
  `gross_transaction_currency` varchar(3) DEFAULT NULL COMMENT 'Gross Transaction Currency',
  `fee_debit_or_credit` varchar(2) DEFAULT NULL COMMENT 'Fee Debit Or Credit',
  `fee_amount` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Fee Amount',
  `fee_currency` varchar(3) DEFAULT NULL COMMENT 'Fee Currency',
  `custom_field` varchar(255) DEFAULT NULL COMMENT 'Custom Field',
  `consumer_id` varchar(127) DEFAULT NULL COMMENT 'Consumer Id',
  `payment_tracking_id` varchar(255) DEFAULT NULL COMMENT 'Payment Tracking ID',
  `store_id` varchar(50) DEFAULT NULL COMMENT 'Store ID',
  PRIMARY KEY (`row_id`),
  KEY `PAYPAL_SETTLEMENT_REPORT_ROW_REPORT_ID` (`report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Settlement Report Row Table';

--
-- Table structure for table `persistent_session`
--

DROP TABLE IF EXISTS `persistent_session`;
CREATE TABLE `persistent_session` (
  `persistent_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Session id',
  `key` varchar(50) NOT NULL COMMENT 'Unique cookie key',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `info` text COMMENT 'Session Data',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  PRIMARY KEY (`persistent_id`),
  UNIQUE KEY `PERSISTENT_SESSION_KEY` (`key`),
  UNIQUE KEY `PERSISTENT_SESSION_CUSTOMER_ID` (`customer_id`),
  KEY `PERSISTENT_SESSION_UPDATED_AT` (`updated_at`),
  KEY `PERSISTENT_SESSION_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Persistent Session';

--
-- Table structure for table `product_alert_price`
--

DROP TABLE IF EXISTS `product_alert_price`;
CREATE TABLE `product_alert_price` (
  `alert_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product alert price id',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price amount',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website id',
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Product alert add date',
  `last_send_date` timestamp NULL DEFAULT NULL COMMENT 'Product alert last send date',
  `send_count` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Product alert send count',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Product alert status',
  PRIMARY KEY (`alert_price_id`),
  KEY `PRODUCT_ALERT_PRICE_CUSTOMER_ID` (`customer_id`),
  KEY `PRODUCT_ALERT_PRICE_PRODUCT_ID` (`product_id`),
  KEY `PRODUCT_ALERT_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Product Alert Price';

--
-- Table structure for table `product_alert_stock`
--

DROP TABLE IF EXISTS `product_alert_stock`;
CREATE TABLE `product_alert_stock` (
  `alert_stock_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product alert stock id',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website id',
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Product alert add date',
  `send_date` timestamp NULL DEFAULT NULL COMMENT 'Product alert send date',
  `send_count` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Send Count',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Product alert status',
  PRIMARY KEY (`alert_stock_id`),
  KEY `PRODUCT_ALERT_STOCK_CUSTOMER_ID` (`customer_id`),
  KEY `PRODUCT_ALERT_STOCK_PRODUCT_ID` (`product_id`),
  KEY `PRODUCT_ALERT_STOCK_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Product Alert Stock';

--
-- Table structure for table `quote`
--

DROP TABLE IF EXISTS `quote`;
CREATE TABLE `quote` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `converted_at` timestamp NULL DEFAULT NULL COMMENT 'Converted At',
  `is_active` smallint(5) unsigned DEFAULT '1' COMMENT 'Is Active',
  `is_virtual` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Virtual',
  `is_multi_shipping` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Multi Shipping',
  `items_count` int(10) unsigned DEFAULT '0' COMMENT 'Items Count',
  `items_qty` decimal(12,4) DEFAULT '0.0000' COMMENT 'Items Qty',
  `orig_order_id` int(10) unsigned DEFAULT '0' COMMENT 'Orig Order Id',
  `store_to_base_rate` decimal(12,4) DEFAULT '0.0000' COMMENT 'Store To Base Rate',
  `store_to_quote_rate` decimal(12,4) DEFAULT '0.0000' COMMENT 'Store To Quote Rate',
  `base_currency_code` varchar(255) DEFAULT NULL COMMENT 'Base Currency Code',
  `store_currency_code` varchar(255) DEFAULT NULL COMMENT 'Store Currency Code',
  `quote_currency_code` varchar(255) DEFAULT NULL COMMENT 'Quote Currency Code',
  `grand_total` decimal(12,4) DEFAULT '0.0000' COMMENT 'Grand Total',
  `base_grand_total` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Grand Total',
  `checkout_method` varchar(255) DEFAULT NULL COMMENT 'Checkout Method',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `customer_tax_class_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Tax Class Id',
  `customer_group_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer Group Id',
  `customer_email` varchar(255) DEFAULT NULL COMMENT 'Customer Email',
  `customer_prefix` varchar(40) DEFAULT NULL COMMENT 'Customer Prefix',
  `customer_firstname` varchar(255) DEFAULT NULL COMMENT 'Customer Firstname',
  `customer_middlename` varchar(40) DEFAULT NULL COMMENT 'Customer Middlename',
  `customer_lastname` varchar(255) DEFAULT NULL COMMENT 'Customer Lastname',
  `customer_suffix` varchar(40) DEFAULT NULL COMMENT 'Customer Suffix',
  `customer_dob` datetime DEFAULT NULL COMMENT 'Customer Dob',
  `customer_note` varchar(255) DEFAULT NULL COMMENT 'Customer Note',
  `customer_note_notify` smallint(5) unsigned DEFAULT '1' COMMENT 'Customer Note Notify',
  `customer_is_guest` smallint(5) unsigned DEFAULT '0' COMMENT 'Customer Is Guest',
  `remote_ip` varchar(32) DEFAULT NULL COMMENT 'Remote Ip',
  `applied_rule_ids` varchar(255) DEFAULT NULL COMMENT 'Applied Rule Ids',
  `reserved_order_id` varchar(64) DEFAULT NULL COMMENT 'Reserved Order Id',
  `password_hash` varchar(255) DEFAULT NULL COMMENT 'Password Hash',
  `coupon_code` varchar(255) DEFAULT NULL COMMENT 'Coupon Code',
  `global_currency_code` varchar(255) DEFAULT NULL COMMENT 'Global Currency Code',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_to_quote_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Quote Rate',
  `customer_taxvat` varchar(255) DEFAULT NULL COMMENT 'Customer Taxvat',
  `customer_gender` varchar(255) DEFAULT NULL COMMENT 'Customer Gender',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `subtotal_with_discount` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal With Discount',
  `base_subtotal_with_discount` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal With Discount',
  `is_changed` int(10) unsigned DEFAULT NULL COMMENT 'Is Changed',
  `trigger_recollect` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Trigger Recollect',
  `ext_shipping_info` text COMMENT 'Ext Shipping Info',
  `is_persistent` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Quote Persistent',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  PRIMARY KEY (`entity_id`),
  KEY `QUOTE_CUSTOMER_ID_STORE_ID_IS_ACTIVE` (`customer_id`,`store_id`,`is_active`),
  KEY `QUOTE_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote';

--
-- Dumping data for table `quote`
--

LOCK TABLES `quote` WRITE;
/*!40000 ALTER TABLE `quote` DISABLE KEYS */;
INSERT INTO `quote` VALUES ('1',2,'2017-07-22 12:12:47','2017-08-17 14:04:15',NULL,1,0,0,'2','2.0000','0','0.0000','0.0000','UAH','UAH','UAH','560.0000','560.0000',NULL,'1','3','1','admin@admin.com',NULL,'Ihor',NULL,'Mazurenko',NULL,NULL,NULL,1,0,'127.0.0.1',NULL,NULL,NULL,NULL,'UAH','1.0000','1.0000',NULL,NULL,'560.0000','560.0000','560.0000','560.0000','1',0,NULL,0,NULL),('2',2,'2017-08-02 09:50:26','0000-00-00 00:00:00',NULL,1,0,0,'1','1.0000','0','0.0000','0.0000','USD','USD','USD','456.0000','456.0000',NULL,NULL,'3','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'127.0.0.1',NULL,NULL,NULL,NULL,'USD','1.0000','1.0000',NULL,NULL,'456.0000','456.0000','456.0000','456.0000','1',0,NULL,0,NULL),('3',2,'2017-08-13 14:19:39','0000-00-00 00:00:00',NULL,1,0,0,'1','1.0000','0','0.0000','0.0000','UAH','UAH','UAH','104.0000','104.0000',NULL,NULL,'3','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'127.0.0.1',NULL,NULL,NULL,NULL,'UAH','1.0000','1.0000',NULL,NULL,'104.0000','104.0000','104.0000','104.0000','1',0,NULL,0,NULL),('4',3,'2017-08-17 11:34:28','0000-00-00 00:00:00',NULL,1,0,0,'1','1.0000','0','0.0000','0.0000','UAH','UAH','UAH','456.0000','456.0000',NULL,NULL,'3','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'127.0.0.1',NULL,NULL,NULL,NULL,'UAH','1.0000','1.0000',NULL,NULL,'456.0000','456.0000','456.0000','456.0000','1',0,NULL,0,NULL);
/*!40000 ALTER TABLE `quote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quote_address`
--

DROP TABLE IF EXISTS `quote_address`;
CREATE TABLE `quote_address` (
  `address_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Address Id',
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `save_in_address_book` smallint(6) DEFAULT '0' COMMENT 'Save In Address Book',
  `customer_address_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Address Id',
  `address_type` varchar(10) DEFAULT NULL COMMENT 'Address Type',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `prefix` varchar(40) DEFAULT NULL COMMENT 'Prefix',
  `firstname` varchar(20) DEFAULT NULL COMMENT 'Firstname',
  `middlename` varchar(20) DEFAULT NULL COMMENT 'Middlename',
  `lastname` varchar(20) DEFAULT NULL COMMENT 'Lastname',
  `suffix` varchar(40) DEFAULT NULL COMMENT 'Suffix',
  `company` varchar(255) DEFAULT NULL COMMENT 'Company',
  `street` varchar(255) DEFAULT NULL COMMENT 'Street',
  `city` varchar(40) DEFAULT NULL COMMENT 'City',
  `region` varchar(40) DEFAULT NULL COMMENT 'Region',
  `region_id` int(10) unsigned DEFAULT NULL COMMENT 'Region Id',
  `postcode` varchar(20) DEFAULT NULL COMMENT 'Postcode',
  `country_id` varchar(30) DEFAULT NULL COMMENT 'Country Id',
  `telephone` varchar(20) DEFAULT NULL COMMENT 'Phone Number',
  `fax` varchar(20) DEFAULT NULL COMMENT 'Fax',
  `same_as_billing` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Same As Billing',
  `collect_shipping_rates` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Collect Shipping Rates',
  `shipping_method` varchar(40) DEFAULT NULL COMMENT 'Shipping Method',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `weight` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Weight',
  `subtotal` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal',
  `base_subtotal` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Subtotal',
  `subtotal_with_discount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal With Discount',
  `base_subtotal_with_discount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Subtotal With Discount',
  `tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Shipping Amount',
  `base_shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Shipping Amount',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `grand_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Grand Total',
  `base_grand_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Grand Total',
  `customer_notes` text COMMENT 'Customer Notes',
  `applied_taxes` text COMMENT 'Applied Taxes',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Amount',
  `base_shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `base_subtotal_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Total Incl Tax',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `shipping_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Tax Compensation Amount',
  `base_shipping_discount_tax_compensation_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Tax Compensation Amount',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `free_shipping` smallint(6) DEFAULT NULL,
  `vat_id` text COMMENT 'Vat Id',
  `vat_is_valid` smallint(6) DEFAULT NULL COMMENT 'Vat Is Valid',
  `vat_request_id` text COMMENT 'Vat Request Id',
  `vat_request_date` text COMMENT 'Vat Request Date',
  `vat_request_success` smallint(6) DEFAULT NULL COMMENT 'Vat Request Success',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  PRIMARY KEY (`address_id`),
  KEY `QUOTE_ADDRESS_QUOTE_ID` (`quote_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Address';

--
-- Dumping data for table `quote_address`
--

LOCK TABLES `quote_address` WRITE;
/*!40000 ALTER TABLE `quote_address` DISABLE KEYS */;
INSERT INTO `quote_address` VALUES ('1','1','2017-07-22 12:12:47','0000-00-00 00:00:00','1',0,NULL,'billing','admin@admin.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000',NULL,NULL,'0.0000','0.0000','0.0000','0.0000',NULL,'N;',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('2','1','2017-07-22 12:12:47','0000-00-00 00:00:00','1',0,NULL,'shipping','admin@admin.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL,'0.0000','560.0000','560.0000','560.0000','560.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','560.0000','560.0000',NULL,'a:0:{}',NULL,'0.0000','0.0000','560.0000','560.0000','0.0000','0.0000','0.0000',NULL,'0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('3','2','2017-08-02 09:50:26','0000-00-00 00:00:00',NULL,0,NULL,'billing',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000',NULL,NULL,'0.0000','0.0000','0.0000','0.0000',NULL,'N;',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('4','2','2017-08-02 09:50:26','0000-00-00 00:00:00',NULL,0,NULL,'shipping',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,'0.0000','456.0000','456.0000','456.0000','456.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','456.0000','456.0000',NULL,'a:0:{}',NULL,'0.0000','0.0000','456.0000','456.0000','0.0000','0.0000','0.0000',NULL,'0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('5','3','2017-08-13 14:19:39','0000-00-00 00:00:00',NULL,0,NULL,'billing',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000',NULL,NULL,'0.0000','0.0000','0.0000','0.0000',NULL,'N;',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('6','3','2017-08-13 14:19:39','0000-00-00 00:00:00',NULL,0,NULL,'shipping',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,'0.0000','104.0000','104.0000','104.0000','104.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','104.0000','104.0000',NULL,'a:0:{}',NULL,'0.0000','0.0000','104.0000','104.0000','0.0000','0.0000','0.0000',NULL,'0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('7','4','2017-08-17 11:34:28','0000-00-00 00:00:00',NULL,0,NULL,'billing',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000',NULL,NULL,'0.0000','0.0000','0.0000','0.0000',NULL,'N;',NULL,NULL,NULL,'0.0000',NULL,'0.0000','0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('8','4','2017-08-17 11:34:28','0000-00-00 00:00:00',NULL,0,NULL,'shipping',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,'0.0000','456.0000','456.0000','456.0000','456.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','456.0000','456.0000',NULL,'a:0:{}',NULL,'0.0000','0.0000','456.0000','456.0000','0.0000','0.0000','0.0000',NULL,'0.0000','0.0000',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `quote_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quote_address_item`
--

DROP TABLE IF EXISTS `quote_address_item`;
CREATE TABLE `quote_address_item` (
  `address_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Address Item Id',
  `parent_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Item Id',
  `quote_address_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Address Id',
  `quote_item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Item Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_total_with_discount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Total With Discount',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `super_product_id` int(10) unsigned DEFAULT NULL COMMENT 'Super Product Id',
  `parent_product_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Product Id',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `image` varchar(255) DEFAULT NULL COMMENT 'Image',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `is_qty_decimal` int(10) unsigned DEFAULT NULL COMMENT 'Is Qty Decimal',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `discount_percent` decimal(12,4) DEFAULT NULL COMMENT 'Discount Percent',
  `no_discount` int(10) unsigned DEFAULT NULL COMMENT 'No Discount',
  `tax_percent` decimal(12,4) DEFAULT NULL COMMENT 'Tax Percent',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `free_shipping` int(11) DEFAULT NULL,
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  PRIMARY KEY (`address_item_id`),
  KEY `QUOTE_ADDRESS_ITEM_QUOTE_ADDRESS_ID` (`quote_address_id`),
  KEY `QUOTE_ADDRESS_ITEM_PARENT_ITEM_ID` (`parent_item_id`),
  KEY `QUOTE_ADDRESS_ITEM_QUOTE_ITEM_ID` (`quote_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Address Item';

--
-- Table structure for table `quote_id_mask`
--

DROP TABLE IF EXISTS `quote_id_mask`;
CREATE TABLE `quote_id_mask` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `quote_id` int(10) unsigned NOT NULL COMMENT 'Quote ID',
  `masked_id` varchar(32) DEFAULT NULL COMMENT 'Masked ID',
  PRIMARY KEY (`entity_id`,`quote_id`),
  KEY `QUOTE_ID_MASK_QUOTE_ID` (`quote_id`),
  KEY `QUOTE_ID_MASK_MASKED_ID` (`masked_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Quote ID and masked ID mapping';

--
-- Dumping data for table `quote_id_mask`
--

LOCK TABLES `quote_id_mask` WRITE;
/*!40000 ALTER TABLE `quote_id_mask` DISABLE KEYS */;
INSERT INTO `quote_id_mask` VALUES ('1','2','1172a13d0baa00948a6b404730cb9799'),('3','4','9377def588584ed28fa9b1563dcbc2d9'),('2','3','aef46ed2c749bf3bbad0e58358c03327');
/*!40000 ALTER TABLE `quote_id_mask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quote_item`
--

DROP TABLE IF EXISTS `quote_item`;
CREATE TABLE `quote_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item Id',
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `parent_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Item Id',
  `is_virtual` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Virtual',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `is_qty_decimal` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Qty Decimal',
  `no_discount` smallint(5) unsigned DEFAULT '0' COMMENT 'No Discount',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `base_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Price',
  `custom_price` decimal(12,4) DEFAULT NULL COMMENT 'Custom Price',
  `discount_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Percent',
  `discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `tax_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Percent',
  `tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_total_with_discount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Total With Discount',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `product_type` varchar(255) DEFAULT NULL COMMENT 'Product Type',
  `base_tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Before Discount',
  `tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Before Discount',
  `original_custom_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Custom Price',
  `redirect_url` varchar(255) DEFAULT NULL COMMENT 'Redirect Url',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `free_shipping` smallint(6) DEFAULT NULL,
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  PRIMARY KEY (`item_id`),
  KEY `QUOTE_ITEM_PARENT_ITEM_ID` (`parent_item_id`),
  KEY `QUOTE_ITEM_PRODUCT_ID` (`product_id`),
  KEY `QUOTE_ITEM_QUOTE_ID` (`quote_id`),
  KEY `QUOTE_ITEM_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Item';

--
-- Dumping data for table `quote_item`
--

LOCK TABLES `quote_item` WRITE;
/*!40000 ALTER TABLE `quote_item` DISABLE KEYS */;
INSERT INTO `quote_item` VALUES ('2','2','2017-08-02 09:50:26','0000-00-00 00:00:00','1',2,NULL,0,'39207','Motor Oil MOBIL Super 3000 X1 5W-40, 4L',NULL,NULL,NULL,0,0,NULL,'1.0000','456.0000','456.0000',NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','456.0000','456.0000','0.0000','0.0000','simple',NULL,NULL,NULL,NULL,NULL,'456.0000','456.0000','456.0000','456.0000','0.0000','0.0000',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('3','3','2017-08-13 14:19:39','0000-00-00 00:00:00','8',2,NULL,0,'39207-1-2','Моторное масло Castrol Magnatec 3000 X1 5W-40, 4L',NULL,NULL,NULL,0,0,NULL,'1.0000','104.0000','104.0000',NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','104.0000','104.0000','0.0000','0.0000','simple',NULL,NULL,NULL,NULL,NULL,'104.0000','104.0000','104.0000','104.0000','0.0000','0.0000',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('4','4','2017-08-17 11:34:28','0000-00-00 00:00:00','3',3,NULL,0,'39207-2','Моторна олива Shell Helix 3000 X1 5W-40, 4L',NULL,NULL,NULL,0,0,NULL,'1.0000','456.0000','456.0000',NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','456.0000','456.0000','0.0000','0.0000','simple',NULL,NULL,NULL,NULL,NULL,'456.0000','456.0000','456.0000','456.0000','0.0000','0.0000',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('7','1','2017-08-17 14:04:14','0000-00-00 00:00:00','4',2,NULL,0,'39207-4','Моторное масло Shell Helix 3000 X1 5W-40, 4л',NULL,NULL,NULL,0,0,NULL,'1.0000','456.0000','456.0000',NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','456.0000','456.0000','0.0000','0.0000','simple',NULL,NULL,NULL,NULL,NULL,'456.0000','456.0000','456.0000','456.0000','0.0000','0.0000',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('8','1','2017-08-17 14:04:15','0000-00-00 00:00:00','9',2,NULL,0,'39207-1-1-1','Моторное масло Castrol Magnatec 3000 X1 5W-40, 4L',NULL,NULL,NULL,0,0,NULL,'1.0000','104.0000','104.0000',NULL,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','104.0000','104.0000','0.0000','0.0000','simple',NULL,NULL,NULL,NULL,NULL,'104.0000','104.0000','104.0000','104.0000','0.0000','0.0000',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `quote_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quote_item_option`
--

DROP TABLE IF EXISTS `quote_item_option`;
CREATE TABLE `quote_item_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Id',
  `item_id` int(10) unsigned NOT NULL COMMENT 'Item Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`option_id`),
  KEY `QUOTE_ITEM_OPTION_ITEM_ID` (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Item Option';

--
-- Dumping data for table `quote_item_option`
--

LOCK TABLES `quote_item_option` WRITE;
/*!40000 ALTER TABLE `quote_item_option` DISABLE KEYS */;
INSERT INTO `quote_item_option` VALUES ('2','2','1','info_buyRequest','a:5:{s:4:\"uenc\";s:104:\"aHR0cDovL21hZ2VudG8yLmxvYy9hdXRvc291bmQvbW90b3Jub2UtbWFzbG8tbW9iaWwtc3VwZXItMzAwMC14MS01dy00MC00bC5odG1s\";s:7:\"product\";s:1:\"1\";s:28:\"selected_configurable_option\";s:0:\"\";s:15:\"related_product\";s:0:\"\";s:3:\"qty\";s:1:\"1\";}'),('3','3','8','info_buyRequest','a:3:{s:4:\"uenc\";s:108:\"aHR0cDovL21hZ2VudG8yLmxvYy9hdXRvc291bmQvbW90b3Jub2UtbWFzbG8tbW9iaWwtc3VwZXItMzAwMC14MS01dy00MC00bC0xLmh0bWw,\";s:7:\"product\";s:1:\"8\";s:3:\"qty\";d:1;}'),('4','4','3','info_buyRequest','a:5:{s:4:\"uenc\";s:140:\"aHR0cDovL21hZ2VudG8yLmxvYy9hdXRvc291bmQvY2F0YWxvZy9wcm9kdWN0L3ZpZXcvaWQvMy9zL21vdG9ybm9lLW1hc2xvLW1vYmlsLXN1cGVyLTMwMDAteDEtNXctNDAtNGwtMi8,\";s:7:\"product\";s:1:\"3\";s:28:\"selected_configurable_option\";s:0:\"\";s:15:\"related_product\";s:0:\"\";s:3:\"qty\";s:1:\"1\";}'),('7','7','4','info_buyRequest','a:3:{s:4:\"uenc\";s:100:\"aHR0cDovL21hZ2VudG8yLmxvYy9hdXRvc291bmQvcGFydHMtY29uc3VtYWJsZXMvb2lsL2VuZ2luZS1vaWwvbW9iaWwuaHRtbA,,\";s:7:\"product\";s:1:\"4\";s:3:\"qty\";d:1;}'),('8','8','9','info_buyRequest','a:3:{s:4:\"uenc\";s:100:\"aHR0cDovL21hZ2VudG8yLmxvYy9hdXRvc291bmQvcGFydHMtY29uc3VtYWJsZXMvb2lsL2VuZ2luZS1vaWwvbW9iaWwuaHRtbA,,\";s:7:\"product\";s:1:\"9\";s:3:\"qty\";d:1;}');
/*!40000 ALTER TABLE `quote_item_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quote_payment`
--

DROP TABLE IF EXISTS `quote_payment`;
CREATE TABLE `quote_payment` (
  `payment_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Payment Id',
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `method` varchar(255) DEFAULT NULL COMMENT 'Method',
  `cc_type` varchar(255) DEFAULT NULL COMMENT 'Cc Type',
  `cc_number_enc` varchar(255) DEFAULT NULL COMMENT 'Cc Number Enc',
  `cc_last_4` varchar(255) DEFAULT NULL COMMENT 'Cc Last 4',
  `cc_cid_enc` varchar(255) DEFAULT NULL COMMENT 'Cc Cid Enc',
  `cc_owner` varchar(255) DEFAULT NULL COMMENT 'Cc Owner',
  `cc_exp_month` varchar(255) DEFAULT NULL COMMENT 'Cc Exp Month',
  `cc_exp_year` smallint(5) unsigned DEFAULT '0' COMMENT 'Cc Exp Year',
  `cc_ss_owner` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Owner',
  `cc_ss_start_month` smallint(5) unsigned DEFAULT '0' COMMENT 'Cc Ss Start Month',
  `cc_ss_start_year` smallint(5) unsigned DEFAULT '0' COMMENT 'Cc Ss Start Year',
  `po_number` varchar(255) DEFAULT NULL COMMENT 'Po Number',
  `additional_data` text COMMENT 'Additional Data',
  `cc_ss_issue` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Issue',
  `additional_information` text COMMENT 'Additional Information',
  `paypal_payer_id` varchar(255) DEFAULT NULL COMMENT 'Paypal Payer Id',
  `paypal_payer_status` varchar(255) DEFAULT NULL COMMENT 'Paypal Payer Status',
  `paypal_correlation_id` varchar(255) DEFAULT NULL COMMENT 'Paypal Correlation Id',
  PRIMARY KEY (`payment_id`),
  KEY `QUOTE_PAYMENT_QUOTE_ID` (`quote_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Payment';

--
-- Table structure for table `quote_shipping_rate`
--

DROP TABLE IF EXISTS `quote_shipping_rate`;
CREATE TABLE `quote_shipping_rate` (
  `rate_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rate Id',
  `address_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Address Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `carrier` varchar(255) DEFAULT NULL COMMENT 'Carrier',
  `carrier_title` varchar(255) DEFAULT NULL COMMENT 'Carrier Title',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `method` varchar(255) DEFAULT NULL COMMENT 'Method',
  `method_description` text COMMENT 'Method Description',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `error_message` text COMMENT 'Error Message',
  `method_title` text COMMENT 'Method Title',
  PRIMARY KEY (`rate_id`),
  KEY `QUOTE_SHIPPING_RATE_ADDRESS_ID` (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Shipping Rate';

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
CREATE TABLE `rating` (
  `rating_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rating Id',
  `entity_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `rating_code` varchar(64) NOT NULL COMMENT 'Rating Code',
  `position` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Position On Storefront',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Rating is active.',
  PRIMARY KEY (`rating_id`),
  UNIQUE KEY `RATING_RATING_CODE` (`rating_code`),
  KEY `RATING_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Ratings';

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
INSERT INTO `rating` VALUES (1,1,'Quality',1,1),(2,1,'Value',0,0),(3,1,'Price',0,0);
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating_entity`
--

DROP TABLE IF EXISTS `rating_entity`;
CREATE TABLE `rating_entity` (
  `entity_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `entity_code` varchar(64) NOT NULL COMMENT 'Entity Code',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `RATING_ENTITY_ENTITY_CODE` (`entity_code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Rating entities';

--
-- Dumping data for table `rating_entity`
--

LOCK TABLES `rating_entity` WRITE;
/*!40000 ALTER TABLE `rating_entity` DISABLE KEYS */;
INSERT INTO `rating_entity` VALUES (1,'product'),(2,'product_review'),(3,'review');
/*!40000 ALTER TABLE `rating_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating_option`
--

DROP TABLE IF EXISTS `rating_option`;
CREATE TABLE `rating_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rating Option Id',
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Id',
  `code` varchar(32) NOT NULL COMMENT 'Rating Option Code',
  `value` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Option Value',
  `position` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Ration option position on Storefront',
  PRIMARY KEY (`option_id`),
  KEY `RATING_OPTION_RATING_ID` (`rating_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='Rating options';

--
-- Dumping data for table `rating_option`
--

LOCK TABLES `rating_option` WRITE;
/*!40000 ALTER TABLE `rating_option` DISABLE KEYS */;
INSERT INTO `rating_option` VALUES ('1',1,'1',1,1),('2',1,'2',2,2),('3',1,'3',3,3),('4',1,'4',4,4),('5',1,'5',5,5),('6',2,'1',1,1),('7',2,'2',2,2),('8',2,'3',3,3),('9',2,'4',4,4),('10',2,'5',5,5),('11',3,'1',1,1),('12',3,'2',2,2),('13',3,'3',3,3),('14',3,'4',4,4),('15',3,'5',5,5);
/*!40000 ALTER TABLE `rating_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating_option_vote`
--

DROP TABLE IF EXISTS `rating_option_vote`;
CREATE TABLE `rating_option_vote` (
  `vote_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Vote id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Vote option id',
  `remote_ip` varchar(16) NOT NULL COMMENT 'Customer IP',
  `remote_ip_long` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Customer IP converted to long integer format',
  `customer_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer Id',
  `entity_pk_value` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating id',
  `review_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Review id',
  `percent` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Percent amount',
  `value` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Vote option value',
  PRIMARY KEY (`vote_id`),
  KEY `RATING_OPTION_VOTE_OPTION_ID` (`option_id`),
  KEY `RATING_OPTION_VOTE_REVIEW_ID_REVIEW_REVIEW_ID` (`review_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='Rating option values';

--
-- Dumping data for table `rating_option_vote`
--

LOCK TABLES `rating_option_vote` WRITE;
/*!40000 ALTER TABLE `rating_option_vote` DISABLE KEYS */;
INSERT INTO `rating_option_vote` VALUES (2,'4','127.0.0.1',2130706433,NULL,1,1,2,80,4),(4,'4','127.0.0.1',2130706433,NULL,1,1,1,80,4),(6,'5','127.0.0.1',2130706433,NULL,1,1,3,100,5),(8,'4','127.0.0.1',2130706433,NULL,1,1,4,80,4),(10,'4','127.0.0.1',2130706433,NULL,1,1,5,80,4),(11,'3','127.0.0.1',2130706433,NULL,2,1,6,60,3),(12,'4','127.0.0.1',2130706433,NULL,3,1,7,80,4),(13,'3','127.0.0.1',2130706433,NULL,4,1,8,60,3),(14,'5','127.0.0.1',2130706433,NULL,5,1,9,100,5),(15,'4','127.0.0.1',2130706433,NULL,6,1,10,80,4),(16,'14','127.0.0.1',2130706433,NULL,8,3,12,80,4),(18,'5','127.0.0.1',2130706433,NULL,7,1,11,100,5);
/*!40000 ALTER TABLE `rating_option_vote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating_option_vote_aggregated`
--

DROP TABLE IF EXISTS `rating_option_vote_aggregated`;
CREATE TABLE `rating_option_vote_aggregated` (
  `primary_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Vote aggregation id',
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating id',
  `entity_pk_value` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `vote_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Vote dty',
  `vote_value_sum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'General vote sum',
  `percent` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Vote percent',
  `percent_approved` smallint(6) DEFAULT '0' COMMENT 'Vote percent approved by admin',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  PRIMARY KEY (`primary_id`),
  KEY `RATING_OPTION_VOTE_AGGREGATED_RATING_ID` (`rating_id`),
  KEY `RATING_OPTION_VOTE_AGGREGATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COMMENT='Rating vote aggregated';

--
-- Dumping data for table `rating_option_vote_aggregated`
--

LOCK TABLES `rating_option_vote_aggregated` WRITE;
/*!40000 ALTER TABLE `rating_option_vote_aggregated` DISABLE KEYS */;
INSERT INTO `rating_option_vote_aggregated` VALUES ('1',3,1,'5','22',88,88,0),('2',3,1,'5','22',88,88,2),('3',1,1,'5','21',84,84,0),('4',1,1,'5','21',84,84,2),('5',1,1,'4','16',80,80,1),('6',1,1,'4','16',80,80,3),('7',3,1,'4','17',85,85,1),('8',3,1,'4','17',85,85,3),('9',1,2,'1','3',60,60,0),('10',1,2,'1','3',60,60,1),('11',1,2,'1','3',60,60,2),('12',1,2,'1','3',60,60,3),('13',1,3,'1','4',80,80,0),('14',1,3,'1','4',80,80,1),('15',1,3,'1','4',80,80,2),('16',1,3,'1','4',80,80,3),('17',1,4,'1','3',60,60,0),('18',1,4,'1','3',60,60,1),('19',1,4,'1','3',60,60,2),('20',1,4,'1','3',60,60,3),('21',1,5,'1','5',100,100,0),('22',1,5,'1','5',100,100,1),('23',1,5,'1','5',100,100,2),('24',1,5,'1','5',100,100,3),('25',1,6,'1','4',80,80,0),('26',1,6,'1','4',80,80,1),('27',1,6,'1','4',80,80,2),('28',1,6,'1','4',80,80,3),('29',3,8,'1','4',80,80,0),('30',3,8,'1','4',80,80,1),('31',3,8,'1','4',80,80,2),('32',3,8,'1','4',80,80,3),('33',1,8,'1','5',100,100,0),('34',1,8,'1','5',100,100,1),('35',1,8,'1','5',100,100,2),('36',1,8,'1','5',100,100,3),('37',1,7,'1','5',100,100,0),('38',1,7,'1','5',100,100,1),('39',1,7,'1','5',100,100,2),('40',1,7,'1','5',100,100,3);
/*!40000 ALTER TABLE `rating_option_vote_aggregated` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating_store`
--

DROP TABLE IF EXISTS `rating_store`;
CREATE TABLE `rating_store` (
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id',
  PRIMARY KEY (`rating_id`,`store_id`),
  KEY `RATING_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating Store';

--
-- Dumping data for table `rating_store`
--

LOCK TABLES `rating_store` WRITE;
/*!40000 ALTER TABLE `rating_store` DISABLE KEYS */;
INSERT INTO `rating_store` VALUES (1,0),(2,0),(3,0),(1,1),(3,1),(1,2),(3,2),(1,3),(3,3);
/*!40000 ALTER TABLE `rating_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating_title`
--

DROP TABLE IF EXISTS `rating_title`;
CREATE TABLE `rating_title` (
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) NOT NULL COMMENT 'Rating Label',
  PRIMARY KEY (`rating_id`,`store_id`),
  KEY `RATING_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating Title';

--
-- Dumping data for table `rating_title`
--

LOCK TABLES `rating_title` WRITE;
/*!40000 ALTER TABLE `rating_title` DISABLE KEYS */;
INSERT INTO `rating_title` VALUES (1,2,'Качество'),(1,3,'Якість'),(3,2,'Цена'),(3,3,'Ціна');
/*!40000 ALTER TABLE `rating_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_compared_product_index`
--

DROP TABLE IF EXISTS `report_compared_product_index`;
CREATE TABLE `report_compared_product_index` (
  `index_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Index Id',
  `visitor_id` int(10) unsigned DEFAULT NULL COMMENT 'Visitor Id',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `added_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Added At',
  PRIMARY KEY (`index_id`),
  UNIQUE KEY `REPORT_COMPARED_PRODUCT_INDEX_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  UNIQUE KEY `REPORT_COMPARED_PRODUCT_INDEX_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  KEY `REPORT_COMPARED_PRODUCT_INDEX_STORE_ID` (`store_id`),
  KEY `REPORT_COMPARED_PRODUCT_INDEX_ADDED_AT` (`added_at`),
  KEY `REPORT_COMPARED_PRODUCT_INDEX_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='Reports Compared Product Index Table';

--
-- Dumping data for table `report_compared_product_index`
--

LOCK TABLES `report_compared_product_index` WRITE;
/*!40000 ALTER TABLE `report_compared_product_index` DISABLE KEYS */;
INSERT INTO `report_compared_product_index` VALUES (1,'8',NULL,'1',NULL,'2017-07-22 11:04:58'),(2,NULL,'1','1',2,'2017-07-22 11:56:25'),(4,'186',NULL,'1',NULL,'2017-08-03 20:49:19'),(5,'217',NULL,'1',NULL,'2017-08-07 16:32:36'),(10,'223',NULL,'1',NULL,'2017-08-07 17:25:21'),(11,'319',NULL,'6',NULL,'2017-08-12 14:54:01'),(12,'415',NULL,'3',NULL,'2017-08-17 11:35:49');
/*!40000 ALTER TABLE `report_compared_product_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_event`
--

DROP TABLE IF EXISTS `report_event`;
CREATE TABLE `report_event` (
  `event_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Event Id',
  `logged_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Logged At',
  `event_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Event Type Id',
  `object_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Object Id',
  `subject_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Subject Id',
  `subtype` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Subtype',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  PRIMARY KEY (`event_id`),
  KEY `REPORT_EVENT_EVENT_TYPE_ID` (`event_type_id`),
  KEY `REPORT_EVENT_SUBJECT_ID` (`subject_id`),
  KEY `REPORT_EVENT_OBJECT_ID` (`object_id`),
  KEY `REPORT_EVENT_SUBTYPE` (`subtype`),
  KEY `REPORT_EVENT_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1171 DEFAULT CHARSET=utf8 COMMENT='Reports Event Table';

--
-- Dumping data for table `report_event`
--

LOCK TABLES `report_event` WRITE;
/*!40000 ALTER TABLE `report_event` DISABLE KEYS */;
INSERT INTO `report_event` VALUES (1,'2017-07-22 10:45:07',1,'1','8',1,1),(2,'2017-07-22 10:46:19',1,'1','8',1,1),(3,'2017-07-22 10:49:33',1,'1','8',1,1),(4,'2017-07-22 10:52:57',1,'1','8',1,1),(5,'2017-07-22 10:56:01',1,'1','8',1,1),(6,'2017-07-22 10:56:49',1,'1','8',1,1),(7,'2017-07-22 10:57:30',1,'1','8',1,1),(8,'2017-07-22 10:59:01',1,'1','8',1,1),(9,'2017-07-22 11:04:58',3,'1','8',1,1),(10,'2017-07-22 11:56:25',3,'1','11',1,1),(11,'2017-07-22 11:58:56',3,'1','11',1,1),(12,'2017-07-22 12:14:36',5,'1','1',0,1),(13,'2017-07-22 12:48:30',5,'1','1',0,1),(14,'2017-07-22 12:50:05',3,'1','1',0,1),(15,'2017-07-26 21:16:01',5,'1','1',0,2),(16,'2017-07-26 21:19:35',1,'1','1',0,2),(17,'2017-07-26 21:19:45',3,'1','1',0,2),(18,'2017-07-26 21:20:31',4,'1','1',0,2),(19,'2017-07-26 21:20:45',1,'1','1',0,2),(20,'2017-07-29 16:19:20',1,'1','75',1,2),(21,'2017-07-29 20:59:12',1,'1','77',1,3),(22,'2017-08-02 09:50:10',1,'1','113',1,2),(23,'2017-08-02 09:50:26',4,'1','113',1,2),(24,'2017-08-02 10:13:49',1,'1','113',1,2),(25,'2017-08-02 10:15:06',1,'1','113',1,2),(26,'2017-08-02 10:21:57',1,'1','113',1,2),(27,'2017-08-02 10:26:24',1,'1','113',1,2),(28,'2017-08-02 10:29:32',1,'1','118',1,2),(29,'2017-08-02 10:47:41',1,'1','121',1,2),(30,'2017-08-02 10:49:24',1,'1','121',1,2),(31,'2017-08-02 10:57:16',1,'1','121',1,2),(32,'2017-08-02 11:01:20',1,'1','121',1,2),(33,'2017-08-02 11:07:31',1,'1','121',1,2),(34,'2017-08-02 11:08:39',1,'1','121',1,2),(35,'2017-08-02 11:23:40',1,'1','121',1,2),(36,'2017-08-02 11:26:02',1,'1','121',1,2),(37,'2017-08-02 11:29:10',1,'1','122',1,2),(38,'2017-08-02 11:30:44',1,'1','123',1,2),(39,'2017-08-02 11:31:01',1,'1','123',1,2),(40,'2017-08-02 11:31:26',1,'1','123',1,2),(41,'2017-08-02 11:32:11',1,'1','123',1,2),(42,'2017-08-02 12:14:46',1,'1','123',1,2),(43,'2017-08-02 12:18:58',1,'1','123',1,2),(44,'2017-08-02 12:20:12',1,'1','123',1,2),(45,'2017-08-02 12:24:05',1,'1','123',1,2),(46,'2017-08-02 12:26:46',1,'1','123',1,2),(47,'2017-08-02 12:28:11',1,'1','123',1,2),(48,'2017-08-02 12:32:36',1,'1','124',1,2),(49,'2017-08-02 12:48:51',1,'1','127',1,2),(50,'2017-08-02 12:50:50',1,'1','127',1,2),(51,'2017-08-02 12:51:30',1,'1','127',1,2),(52,'2017-08-02 12:52:22',1,'1','127',1,2),(53,'2017-08-02 12:56:22',1,'1','127',1,2),(54,'2017-08-02 12:58:12',1,'1','127',1,2),(55,'2017-08-02 12:58:55',1,'1','127',1,2),(56,'2017-08-02 12:59:26',1,'1','127',1,2),(57,'2017-08-02 13:00:02',1,'1','127',1,2),(58,'2017-08-02 13:39:53',1,'1','133',1,2),(59,'2017-08-02 13:42:42',1,'1','133',1,2),(60,'2017-08-02 13:44:40',1,'1','133',1,2),(61,'2017-08-02 13:48:53',1,'1','133',1,2),(62,'2017-08-02 13:50:05',1,'1','133',1,2),(63,'2017-08-02 13:51:08',1,'1','133',1,2),(64,'2017-08-02 13:53:32',1,'1','133',1,2),(65,'2017-08-02 13:56:16',1,'1','133',1,2),(66,'2017-08-02 13:58:38',1,'1','133',1,2),(67,'2017-08-02 14:01:00',1,'1','133',1,2),(68,'2017-08-02 14:02:07',1,'1','133',1,2),(69,'2017-08-02 14:02:49',1,'1','133',1,2),(70,'2017-08-02 14:04:14',1,'1','133',1,2),(71,'2017-08-02 14:05:38',1,'1','133',1,2),(72,'2017-08-02 14:08:12',1,'1','133',1,2),(73,'2017-08-02 14:09:47',1,'1','133',1,2),(74,'2017-08-02 14:10:17',1,'1','133',1,2),(75,'2017-08-02 14:11:50',1,'1','133',1,2),(76,'2017-08-02 14:12:15',1,'1','133',1,2),(77,'2017-08-02 14:13:42',1,'1','133',1,2),(78,'2017-08-02 14:14:18',1,'1','133',1,2),(79,'2017-08-02 14:15:13',1,'1','133',1,2),(80,'2017-08-02 14:15:36',1,'1','133',1,2),(81,'2017-08-02 14:16:51',1,'1','133',1,2),(82,'2017-08-02 14:18:01',1,'1','133',1,2),(83,'2017-08-02 20:15:42',1,'1','136',1,2),(84,'2017-08-02 20:20:52',1,'1','136',1,2),(85,'2017-08-02 20:22:31',1,'1','138',1,2),(86,'2017-08-02 20:28:41',1,'1','140',1,2),(87,'2017-08-02 20:36:12',1,'1','140',1,2),(88,'2017-08-02 20:37:13',1,'1','140',1,2),(89,'2017-08-02 20:37:15',1,'1','140',1,2),(90,'2017-08-02 20:40:48',1,'1','140',1,2),(91,'2017-08-02 20:41:40',1,'1','140',1,2),(92,'2017-08-02 20:44:33',1,'1','140',1,2),(93,'2017-08-02 20:46:01',1,'1','140',1,2),(94,'2017-08-02 20:49:27',1,'1','140',1,2),(95,'2017-08-02 21:14:47',1,'1','140',1,2),(96,'2017-08-02 21:17:11',1,'1','140',1,2),(97,'2017-08-02 21:29:30',1,'1','144',1,2),(98,'2017-08-02 21:31:50',1,'1','144',1,2),(99,'2017-08-02 21:35:27',1,'1','144',1,2),(100,'2017-08-02 21:53:02',1,'1','144',1,2),(101,'2017-08-02 21:58:24',1,'1','144',1,2),(102,'2017-08-02 22:16:30',1,'1','144',1,2),(103,'2017-08-02 22:24:39',1,'1','146',1,2),(104,'2017-08-02 22:25:43',1,'1','148',1,2),(105,'2017-08-02 22:35:39',1,'1','148',1,2),(106,'2017-08-02 22:38:37',1,'1','148',1,2),(107,'2017-08-02 22:41:56',1,'1','148',1,2),(108,'2017-08-02 22:53:12',1,'3','148',1,2),(109,'2017-08-02 23:32:15',1,'1','153',1,2),(110,'2017-08-02 23:32:16',1,'4','153',1,2),(111,'2017-08-02 23:32:17',1,'1','153',1,2),(112,'2017-08-02 23:35:54',1,'1','153',1,2),(113,'2017-08-02 23:37:01',1,'1','153',1,2),(114,'2017-08-02 23:40:54',1,'1','153',1,2),(115,'2017-08-02 23:44:33',1,'1','153',1,2),(116,'2017-08-02 23:47:43',1,'1','153',1,2),(117,'2017-08-02 23:49:18',1,'1','153',1,2),(118,'2017-08-02 23:49:42',1,'1','153',1,2),(119,'2017-08-02 23:50:27',1,'1','153',1,2),(120,'2017-08-02 23:51:15',1,'1','153',1,2),(121,'2017-08-02 23:53:48',1,'1','153',1,2),(122,'2017-08-02 23:54:29',1,'1','153',1,2),(123,'2017-08-03 00:05:38',1,'1','153',1,2),(124,'2017-08-03 00:13:04',1,'1','153',1,2),(125,'2017-08-03 00:14:22',1,'1','153',1,2),(126,'2017-08-03 00:15:14',1,'1','153',1,2),(127,'2017-08-03 07:09:45',1,'1','155',1,2),(128,'2017-08-03 07:18:54',1,'1','162',1,2),(129,'2017-08-03 07:25:42',1,'1','162',1,2),(130,'2017-08-03 07:26:21',1,'1','162',1,2),(131,'2017-08-03 07:29:00',1,'1','162',1,2),(132,'2017-08-03 07:31:28',1,'1','162',1,2),(133,'2017-08-03 07:32:59',1,'1','162',1,2),(134,'2017-08-03 09:36:23',1,'1','167',1,2),(135,'2017-08-03 09:44:53',1,'1','167',1,2),(136,'2017-08-03 10:20:29',1,'1','167',1,2),(137,'2017-08-03 10:21:05',1,'1','167',1,2),(138,'2017-08-03 10:21:46',1,'1','167',1,2),(139,'2017-08-03 10:22:29',1,'1','167',1,2),(140,'2017-08-03 10:28:49',1,'1','167',1,2),(141,'2017-08-03 10:28:51',1,'1','167',1,2),(142,'2017-08-03 10:29:20',1,'1','167',1,2),(143,'2017-08-03 10:36:33',1,'1','170',1,2),(144,'2017-08-03 10:37:35',1,'1','170',1,2),(145,'2017-08-03 10:44:56',1,'1','170',1,2),(146,'2017-08-03 12:06:21',1,'1','171',1,2),(147,'2017-08-03 12:07:44',1,'1','172',1,2),(148,'2017-08-03 12:10:26',1,'1','172',1,2),(149,'2017-08-03 12:12:11',1,'1','172',1,2),(150,'2017-08-03 12:13:02',1,'1','172',1,2),(151,'2017-08-03 12:16:17',1,'1','172',1,2),(152,'2017-08-03 12:18:01',1,'1','172',1,2),(153,'2017-08-03 12:22:31',1,'1','172',1,2),(154,'2017-08-03 12:26:26',1,'1','172',1,2),(155,'2017-08-03 12:26:53',1,'1','172',1,2),(156,'2017-08-03 12:30:41',1,'1','172',1,2),(157,'2017-08-03 12:31:30',1,'1','172',1,2),(158,'2017-08-03 12:32:19',1,'1','172',1,2),(159,'2017-08-03 12:38:21',1,'1','172',1,2),(160,'2017-08-03 12:38:48',1,'1','172',1,2),(161,'2017-08-03 12:39:30',1,'1','172',1,2),(162,'2017-08-03 12:48:38',1,'1','172',1,2),(163,'2017-08-03 12:49:26',1,'1','172',1,2),(164,'2017-08-03 13:22:13',1,'1','176',1,2),(165,'2017-08-03 13:27:19',1,'1','176',1,2),(166,'2017-08-03 13:28:10',1,'1','176',1,2),(167,'2017-08-03 13:29:38',1,'1','176',1,2),(168,'2017-08-03 13:30:27',1,'1','176',1,2),(169,'2017-08-03 13:38:15',1,'1','176',1,2),(170,'2017-08-03 13:39:17',1,'1','176',1,2),(171,'2017-08-03 13:41:05',1,'1','176',1,2),(172,'2017-08-03 13:43:17',1,'1','176',1,2),(173,'2017-08-03 13:46:25',1,'1','176',1,2),(174,'2017-08-03 13:47:28',1,'1','176',1,2),(175,'2017-08-03 13:50:23',1,'1','176',1,2),(176,'2017-08-03 13:50:26',1,'1','176',1,2),(177,'2017-08-03 13:51:48',1,'1','176',1,2),(178,'2017-08-03 13:52:39',1,'1','176',1,2),(179,'2017-08-03 13:53:52',1,'1','176',1,2),(180,'2017-08-03 18:34:55',1,'1','179',1,2),(181,'2017-08-03 18:37:12',1,'1','179',1,2),(182,'2017-08-03 18:39:09',1,'1','179',1,2),(183,'2017-08-03 18:39:42',1,'1','179',1,2),(184,'2017-08-03 20:19:18',1,'1','183',1,2),(185,'2017-08-03 20:24:41',1,'1','183',1,2),(186,'2017-08-03 20:26:12',1,'1','183',1,2),(187,'2017-08-03 20:33:05',1,'1','183',1,2),(188,'2017-08-03 20:44:19',1,'1','186',1,2),(189,'2017-08-03 20:49:19',3,'1','186',1,2),(190,'2017-08-03 21:11:37',1,'1','186',1,2),(191,'2017-08-03 21:12:35',1,'1','186',1,2),(192,'2017-08-03 21:14:21',1,'1','186',1,2),(193,'2017-08-03 21:16:10',1,'1','186',1,2),(194,'2017-08-03 21:19:08',1,'1','186',1,2),(195,'2017-08-03 21:26:29',1,'1','186',1,2),(196,'2017-08-03 21:27:32',1,'1','186',1,2),(197,'2017-08-03 21:29:05',1,'1','186',1,2),(198,'2017-08-03 21:30:26',1,'1','186',1,2),(199,'2017-08-03 21:36:14',1,'1','186',1,2),(200,'2017-08-03 21:39:40',1,'1','189',1,2),(201,'2017-08-03 21:41:39',1,'1','189',1,2),(202,'2017-08-03 21:42:35',1,'1','189',1,2),(203,'2017-08-03 21:56:38',1,'1','189',1,2),(204,'2017-08-03 22:11:34',1,'5','189',1,2),(205,'2017-08-04 07:47:48',1,'1','191',1,2),(206,'2017-08-04 15:30:41',1,'1','196',1,2),(207,'2017-08-04 15:31:38',1,'1','198',1,2),(208,'2017-08-04 15:34:39',1,'1','198',1,2),(209,'2017-08-04 15:37:43',1,'1','198',1,2),(210,'2017-08-04 15:46:10',1,'1','198',1,2),(211,'2017-08-04 15:52:10',1,'1','198',1,2),(212,'2017-08-04 15:52:11',1,'1','198',1,2),(213,'2017-08-04 15:55:04',1,'1','198',1,2),(214,'2017-08-04 15:57:15',1,'1','198',1,2),(215,'2017-08-04 15:58:49',1,'1','198',1,2),(216,'2017-08-04 16:00:48',1,'1','198',1,2),(217,'2017-08-04 16:03:20',1,'1','198',1,2),(218,'2017-08-04 16:06:24',1,'1','198',1,2),(219,'2017-08-04 16:10:40',1,'1','198',1,2),(220,'2017-08-04 16:11:15',1,'1','198',1,2),(221,'2017-08-04 16:19:55',1,'1','198',1,2),(222,'2017-08-04 16:20:42',1,'1','198',1,2),(223,'2017-08-04 16:34:55',1,'1','201',1,2),(224,'2017-08-04 16:35:30',1,'1','202',1,2),(225,'2017-08-04 16:36:25',1,'1','202',1,2),(226,'2017-08-04 16:37:17',1,'1','202',1,2),(227,'2017-08-04 16:41:03',1,'1','202',1,2),(228,'2017-08-04 16:42:25',1,'1','202',1,2),(229,'2017-08-04 16:44:19',1,'1','202',1,2),(230,'2017-08-04 16:45:40',1,'1','202',1,2),(231,'2017-08-04 16:47:10',1,'1','202',1,2),(232,'2017-08-04 16:47:49',1,'1','202',1,2),(233,'2017-08-04 16:49:05',1,'1','202',1,2),(234,'2017-08-04 16:50:31',1,'1','202',1,2),(235,'2017-08-04 16:56:46',1,'1','202',1,2),(236,'2017-08-07 12:54:44',1,'1','206',1,2),(237,'2017-08-07 13:08:08',1,'1','208',1,2),(238,'2017-08-07 13:28:14',1,'1','208',1,2),(239,'2017-08-07 13:28:50',1,'1','208',1,2),(240,'2017-08-07 13:31:51',1,'1','208',1,2),(241,'2017-08-07 13:33:48',1,'1','208',1,2),(242,'2017-08-07 13:46:05',1,'1','208',1,2),(243,'2017-08-07 13:51:36',1,'1','208',1,2),(244,'2017-08-07 13:51:52',1,'1','208',1,2),(245,'2017-08-07 13:53:26',1,'1','208',1,2),(246,'2017-08-07 14:00:53',1,'1','211',1,2),(247,'2017-08-07 14:01:33',1,'1','214',1,2),(248,'2017-08-07 14:02:04',1,'1','214',1,2),(249,'2017-08-07 14:02:59',1,'1','214',1,2),(250,'2017-08-07 14:03:58',1,'1','214',1,2),(251,'2017-08-07 14:05:58',1,'1','214',1,2),(252,'2017-08-07 14:08:07',1,'1','214',1,2),(253,'2017-08-07 14:08:53',1,'1','214',1,2),(254,'2017-08-07 14:09:04',1,'5','214',1,2),(255,'2017-08-07 14:09:37',1,'1','214',1,2),(256,'2017-08-07 16:09:13',1,'1','216',1,2),(257,'2017-08-07 16:09:57',1,'1','217',1,2),(258,'2017-08-07 16:12:07',1,'1','217',1,2),(259,'2017-08-07 16:19:00',1,'1','217',1,2),(260,'2017-08-07 16:19:48',1,'1','217',1,2),(261,'2017-08-07 16:20:03',1,'1','217',1,2),(262,'2017-08-07 16:20:04',1,'1','217',1,2),(263,'2017-08-07 16:20:33',1,'1','217',1,2),(264,'2017-08-07 16:21:31',1,'1','217',1,2),(265,'2017-08-07 16:27:42',1,'1','217',1,2),(266,'2017-08-07 16:28:58',1,'1','217',1,2),(267,'2017-08-07 16:30:22',1,'1','217',1,2),(268,'2017-08-07 16:32:20',1,'1','217',1,2),(269,'2017-08-07 16:32:36',3,'1','217',1,2),(270,'2017-08-07 16:36:27',1,'1','217',1,2),(271,'2017-08-07 16:37:19',3,'1','217',1,2),(272,'2017-08-07 16:38:34',3,'1','217',1,2),(273,'2017-08-07 16:39:15',3,'1','217',1,2),(274,'2017-08-07 16:40:03',3,'1','217',1,2),(275,'2017-08-07 16:47:00',1,'1','217',1,2),(276,'2017-08-07 17:07:32',1,'2','217',1,2),(277,'2017-08-07 17:08:39',1,'8','217',1,2),(278,'2017-08-07 17:25:21',3,'1','223',1,2),(279,'2017-08-08 17:29:59',1,'1','225',1,2),(280,'2017-08-08 17:31:23',1,'1','228',1,2),(281,'2017-08-08 17:32:15',1,'1','228',1,2),(282,'2017-08-08 17:33:24',1,'1','228',1,2),(283,'2017-08-08 17:34:48',1,'1','228',1,2),(284,'2017-08-08 17:36:40',1,'1','228',1,2),(285,'2017-08-08 17:37:49',1,'1','228',1,2),(286,'2017-08-08 17:38:46',1,'1','228',1,2),(287,'2017-08-08 17:45:39',1,'1','228',1,2),(288,'2017-08-08 18:10:04',1,'1','228',1,2),(289,'2017-08-08 18:11:05',1,'1','228',1,2),(290,'2017-08-08 18:13:40',1,'1','228',1,2),(291,'2017-08-08 18:14:33',1,'1','228',1,2),(292,'2017-08-08 18:15:14',1,'1','228',1,2),(293,'2017-08-08 18:15:36',1,'1','228',1,2),(294,'2017-08-08 18:16:18',1,'1','228',1,2),(295,'2017-08-08 18:17:12',1,'1','228',1,2),(296,'2017-08-08 18:17:58',1,'1','228',1,2),(297,'2017-08-08 18:18:30',1,'1','228',1,2),(298,'2017-08-08 18:19:22',1,'1','228',1,2),(299,'2017-08-08 18:19:57',1,'1','228',1,2),(300,'2017-08-08 18:21:57',1,'1','228',1,2),(301,'2017-08-08 18:22:27',1,'1','228',1,2),(302,'2017-08-08 18:23:12',1,'1','228',1,2),(303,'2017-08-08 18:24:36',1,'1','228',1,2),(304,'2017-08-08 18:25:40',1,'1','228',1,2),(305,'2017-08-08 18:26:00',1,'1','228',1,2),(306,'2017-08-08 18:30:23',1,'1','228',1,2),(307,'2017-08-08 18:41:24',1,'1','230',1,2),(308,'2017-08-08 18:42:15',1,'1','232',1,2),(309,'2017-08-08 18:46:14',1,'1','234',1,2),(310,'2017-08-08 18:50:24',1,'1','235',1,2),(311,'2017-08-08 18:52:55',1,'1','237',1,2),(312,'2017-08-08 18:54:29',1,'1','238',1,2),(313,'2017-08-08 19:00:07',1,'1','240',1,2),(314,'2017-08-08 19:11:07',1,'1','242',1,2),(315,'2017-08-08 19:12:22',1,'1','244',1,2),(316,'2017-08-08 19:15:48',1,'1','246',1,2),(317,'2017-08-08 19:17:23',1,'1','248',1,2),(318,'2017-08-08 19:18:05',1,'1','250',1,2),(319,'2017-08-08 19:18:40',1,'1','252',1,2),(320,'2017-08-08 19:19:20',1,'1','254',1,2),(321,'2017-08-08 19:20:06',1,'1','256',1,2),(322,'2017-08-08 19:20:43',1,'1','258',1,2),(323,'2017-08-08 19:23:02',1,'1','260',1,2),(324,'2017-08-08 19:23:56',1,'1','262',1,2),(325,'2017-08-08 19:25:44',1,'1','264',1,2),(326,'2017-08-09 21:07:10',1,'1','269',1,2),(327,'2017-08-09 21:43:27',1,'2','272',1,2),(328,'2017-08-11 12:06:47',1,'1','280',1,2),(329,'2017-08-11 12:52:28',1,'1','282',1,2),(330,'2017-08-11 13:31:41',1,'1','286',1,2),(331,'2017-08-11 13:33:14',1,'1','286',1,2),(332,'2017-08-11 13:34:13',1,'1','286',1,2),(333,'2017-08-11 13:35:14',1,'1','286',1,2),(334,'2017-08-11 13:36:08',1,'1','286',1,2),(335,'2017-08-11 13:40:08',1,'1','286',1,2),(336,'2017-08-11 13:42:23',1,'1','286',1,2),(337,'2017-08-11 13:45:42',1,'1','286',1,2),(338,'2017-08-11 13:52:45',1,'1','286',1,2),(339,'2017-08-11 13:53:44',1,'1','286',1,2),(340,'2017-08-11 13:55:14',1,'1','286',1,2),(341,'2017-08-11 13:57:28',1,'1','286',1,2),(342,'2017-08-11 13:58:18',1,'1','286',1,2),(343,'2017-08-11 13:59:21',1,'1','286',1,2),(344,'2017-08-11 14:00:34',1,'1','286',1,2),(345,'2017-08-11 14:01:41',1,'1','286',1,2),(346,'2017-08-11 14:04:53',1,'1','286',1,2),(347,'2017-08-11 15:05:47',1,'1','288',1,2),(348,'2017-08-11 15:07:42',1,'1','290',1,2),(349,'2017-08-11 15:18:34',1,'1','290',1,2),(350,'2017-08-11 15:20:19',1,'1','290',1,2),(351,'2017-08-11 15:24:14',1,'1','290',1,2),(352,'2017-08-11 15:25:46',1,'1','290',1,2),(353,'2017-08-11 15:40:18',1,'1','290',1,2),(354,'2017-08-11 15:59:16',1,'1','290',1,2),(355,'2017-08-11 16:01:15',1,'1','290',1,2),(356,'2017-08-11 16:18:36',1,'1','293',1,2),(357,'2017-08-11 16:20:56',1,'3','293',1,2),(358,'2017-08-11 16:24:33',1,'3','293',1,2),(359,'2017-08-11 16:26:31',1,'3','293',1,2),(360,'2017-08-11 16:27:26',1,'3','293',1,2),(361,'2017-08-11 16:28:04',1,'3','293',1,2),(362,'2017-08-11 16:29:08',1,'1','293',1,2),(363,'2017-08-11 16:40:57',1,'1','293',1,2),(364,'2017-08-11 16:48:42',1,'1','293',1,2),(365,'2017-08-11 18:21:53',1,'1','296',1,2),(366,'2017-08-11 18:32:15',1,'1','297',1,2),(367,'2017-08-11 18:43:10',1,'1','297',1,2),(368,'2017-08-11 19:11:27',1,'1','297',1,2),(369,'2017-08-11 19:12:39',1,'1','297',1,2),(370,'2017-08-11 19:29:06',1,'1','302',1,2),(371,'2017-08-11 20:08:50',1,'1','302',1,2),(372,'2017-08-11 20:12:18',1,'1','302',1,2),(373,'2017-08-11 20:15:47',1,'1','302',1,2),(374,'2017-08-11 20:16:26',1,'1','302',1,2),(375,'2017-08-11 20:17:15',1,'1','302',1,2),(376,'2017-08-11 20:22:09',1,'1','302',1,2),(377,'2017-08-11 20:53:02',1,'1','305',1,2),(378,'2017-08-11 20:53:32',1,'1','305',1,2),(379,'2017-08-11 20:54:23',1,'1','305',1,2),(380,'2017-08-11 21:02:16',1,'1','305',1,2),(381,'2017-08-11 21:10:56',1,'1','305',1,2),(382,'2017-08-11 21:11:59',1,'1','305',1,2),(383,'2017-08-11 21:19:10',1,'1','305',1,2),(384,'2017-08-11 21:20:00',1,'1','305',1,2),(385,'2017-08-12 07:04:40',1,'1','307',1,2),(386,'2017-08-12 07:05:07',1,'1','310',1,2),(387,'2017-08-12 07:05:53',1,'1','310',1,2),(388,'2017-08-12 11:54:47',1,'1','312',1,2),(389,'2017-08-12 11:55:44',1,'1','314',1,2),(390,'2017-08-12 11:56:23',1,'1','314',1,2),(391,'2017-08-12 12:07:17',1,'1','314',1,2),(392,'2017-08-12 12:08:34',1,'1','314',1,2),(393,'2017-08-12 12:09:57',1,'1','314',1,2),(394,'2017-08-12 12:17:47',1,'1','314',1,2),(395,'2017-08-12 12:19:10',1,'1','314',1,2),(396,'2017-08-12 12:20:06',1,'1','314',1,2),(397,'2017-08-12 12:22:45',1,'1','314',1,2),(398,'2017-08-12 12:23:49',1,'1','314',1,2),(399,'2017-08-12 14:33:28',1,'1','317',1,2),(400,'2017-08-12 14:36:23',1,'1','319',1,2),(401,'2017-08-12 14:37:29',1,'1','319',1,2),(402,'2017-08-12 14:37:59',1,'1','319',1,2),(403,'2017-08-12 14:43:50',1,'6','319',1,2),(404,'2017-08-12 14:54:01',3,'6','319',1,2),(405,'2017-08-12 14:56:56',1,'1','319',1,2),(406,'2017-08-12 14:57:46',1,'1','319',1,2),(407,'2017-08-12 14:59:46',1,'1','319',1,2),(408,'2017-08-12 15:12:38',1,'1','319',1,2),(409,'2017-08-12 15:55:36',1,'1','322',1,2),(410,'2017-08-12 15:56:39',1,'1','322',1,2),(411,'2017-08-12 16:29:18',1,'1','322',1,2),(412,'2017-08-12 16:36:47',1,'1','322',1,2),(413,'2017-08-12 16:37:51',1,'1','322',1,2),(414,'2017-08-12 16:39:37',1,'1','325',1,2),(415,'2017-08-12 16:43:48',1,'1','325',1,2),(416,'2017-08-12 16:46:04',1,'1','325',1,2),(417,'2017-08-12 16:47:02',1,'1','325',1,2),(418,'2017-08-12 17:09:03',1,'1','325',1,2),(419,'2017-08-12 17:10:48',1,'1','325',1,2),(420,'2017-08-12 17:11:45',1,'1','325',1,2),(421,'2017-08-12 17:13:42',1,'1','325',1,2),(422,'2017-08-12 17:15:09',1,'1','325',1,2),(423,'2017-08-12 17:16:04',1,'1','325',1,2),(424,'2017-08-12 17:17:11',1,'1','325',1,2),(425,'2017-08-12 17:17:37',1,'1','325',1,2),(426,'2017-08-12 17:27:40',1,'1','325',1,2),(427,'2017-08-12 17:34:32',1,'1','325',1,2),(428,'2017-08-12 17:36:41',1,'1','325',1,2),(429,'2017-08-12 17:38:42',1,'1','329',1,2),(430,'2017-08-12 17:39:02',1,'1','334',1,2),(431,'2017-08-12 17:42:13',1,'1','333',1,2),(432,'2017-08-12 17:43:32',1,'1','333',1,2),(433,'2017-08-12 17:44:08',1,'1','333',1,2),(434,'2017-08-12 17:45:14',1,'1','333',1,2),(435,'2017-08-12 17:45:55',1,'1','333',1,2),(436,'2017-08-12 17:47:53',1,'1','333',1,2),(437,'2017-08-12 17:49:55',1,'1','333',1,2),(438,'2017-08-12 18:11:27',1,'1','333',1,2),(439,'2017-08-12 18:11:58',1,'1','333',1,2),(440,'2017-08-12 18:13:41',1,'1','333',1,2),(441,'2017-08-12 18:14:30',1,'1','333',1,2),(442,'2017-08-12 18:15:18',1,'1','333',1,2),(443,'2017-08-12 18:43:17',1,'1','335',1,2),(444,'2017-08-12 19:14:48',1,'1','335',1,2),(445,'2017-08-12 19:53:43',1,'1','337',1,2),(446,'2017-08-12 19:54:57',1,'1','337',1,2),(447,'2017-08-12 19:55:32',1,'1','337',1,2),(448,'2017-08-12 19:58:08',1,'1','337',1,2),(449,'2017-08-12 19:58:47',1,'1','337',1,2),(450,'2017-08-12 20:03:15',1,'1','337',1,2),(451,'2017-08-12 20:04:30',1,'1','337',1,2),(452,'2017-08-12 20:07:45',1,'1','337',1,2),(453,'2017-08-12 20:08:48',1,'1','337',1,2),(454,'2017-08-12 20:10:50',1,'1','337',1,2),(455,'2017-08-12 20:11:24',1,'1','337',1,2),(456,'2017-08-12 20:11:55',1,'1','337',1,2),(457,'2017-08-12 20:12:28',1,'1','337',1,2),(458,'2017-08-12 20:12:55',1,'1','337',1,2),(459,'2017-08-12 20:13:22',1,'1','337',1,2),(460,'2017-08-12 20:16:36',1,'1','337',1,2),(461,'2017-08-12 20:17:55',1,'1','337',1,2),(462,'2017-08-13 07:49:15',1,'1','341',1,2),(463,'2017-08-13 09:02:41',1,'1','344',1,2),(464,'2017-08-13 09:27:01',1,'1','344',1,2),(465,'2017-08-13 09:42:22',1,'1','347',1,2),(466,'2017-08-13 09:43:57',1,'1','347',1,2),(467,'2017-08-13 09:45:18',1,'1','347',1,2),(468,'2017-08-13 10:20:00',1,'2','351',1,2),(469,'2017-08-13 10:20:01',1,'3','352',1,2),(470,'2017-08-13 10:20:02',1,'5','353',1,2),(471,'2017-08-13 10:21:32',1,'6','347',1,2),(472,'2017-08-13 10:21:33',1,'7','347',1,2),(473,'2017-08-13 10:26:41',1,'1','347',1,2),(474,'2017-08-13 10:26:53',1,'3','347',1,2),(475,'2017-08-13 10:32:51',1,'1','347',1,2),(476,'2017-08-13 10:35:20',1,'1','1',0,2),(477,'2017-08-13 10:35:35',1,'2','1',0,2),(478,'2017-08-13 10:35:36',1,'3','1',0,2),(479,'2017-08-13 10:35:38',1,'5','1',0,2),(480,'2017-08-13 10:35:42',1,'8','1',0,2),(481,'2017-08-13 10:35:43',1,'6','1',0,2),(482,'2017-08-13 10:35:46',1,'9','1',0,2),(483,'2017-08-13 10:37:04',1,'1','1',0,2),(484,'2017-08-13 10:40:01',1,'1','1',0,2),(485,'2017-08-13 10:40:35',1,'1','1',0,2),(486,'2017-08-13 10:43:01',1,'1','1',0,2),(487,'2017-08-13 10:43:56',1,'1','1',0,2),(488,'2017-08-13 10:45:02',1,'1','1',0,2),(489,'2017-08-13 10:46:00',1,'1','1',0,2),(490,'2017-08-13 10:46:44',1,'1','357',1,2),(491,'2017-08-13 10:54:05',1,'3','357',1,2),(492,'2017-08-13 10:56:38',1,'3','357',1,2),(493,'2017-08-13 10:57:25',1,'1','357',1,2),(494,'2017-08-13 10:57:54',1,'2','357',1,2),(495,'2017-08-13 10:57:59',1,'3','357',1,2),(496,'2017-08-13 10:58:03',1,'5','357',1,2),(497,'2017-08-13 10:58:09',1,'6','357',1,2),(498,'2017-08-13 10:58:17',1,'7','357',1,2),(499,'2017-08-13 10:58:39',1,'1','357',1,2),(500,'2017-08-13 10:59:07',1,'8','357',1,2),(501,'2017-08-13 10:59:11',1,'9','357',1,2),(502,'2017-08-13 10:59:16',1,'7','357',1,2),(503,'2017-08-13 10:59:23',1,'6','357',1,2),(504,'2017-08-13 10:59:54',1,'1','357',1,2),(505,'2017-08-13 11:04:39',1,'1','357',1,2),(506,'2017-08-13 11:05:23',1,'1','357',1,2),(507,'2017-08-13 11:06:19',1,'1','357',1,2),(508,'2017-08-13 11:07:17',1,'1','357',1,2),(509,'2017-08-13 11:11:38',1,'1','357',1,2),(510,'2017-08-13 11:14:11',1,'1','357',1,2),(511,'2017-08-13 11:14:43',1,'1','357',1,2),(512,'2017-08-13 11:20:21',1,'1','357',1,2),(513,'2017-08-13 11:30:32',1,'1','357',1,2),(514,'2017-08-13 11:34:25',1,'1','357',1,2),(515,'2017-08-13 11:35:33',1,'1','358',1,2),(516,'2017-08-13 11:46:13',1,'1','360',1,2),(517,'2017-08-13 11:48:32',1,'1','362',1,2),(518,'2017-08-13 11:54:50',1,'1','362',1,2),(519,'2017-08-13 11:55:06',1,'1','362',1,2),(520,'2017-08-13 11:56:40',1,'1','362',1,2),(521,'2017-08-13 11:56:51',1,'2','362',1,2),(522,'2017-08-13 11:56:54',1,'3','362',1,2),(523,'2017-08-13 11:56:57',1,'5','362',1,2),(524,'2017-08-13 11:57:02',1,'8','362',1,2),(525,'2017-08-13 11:57:04',1,'9','362',1,2),(526,'2017-08-13 11:57:09',1,'5','362',1,2),(527,'2017-08-13 11:57:11',1,'6','362',1,2),(528,'2017-08-13 11:57:15',1,'7','362',1,2),(529,'2017-08-13 11:59:28',1,'1','362',1,2),(530,'2017-08-13 12:00:01',1,'5','362',1,2),(531,'2017-08-13 12:03:43',1,'5','362',1,2),(532,'2017-08-13 12:04:04',1,'5','362',1,2),(533,'2017-08-13 12:04:14',1,'5','362',1,2),(534,'2017-08-13 12:04:54',1,'5','362',1,2),(535,'2017-08-13 12:05:23',1,'5','362',1,2),(536,'2017-08-13 12:05:50',1,'1','362',1,2),(537,'2017-08-13 12:07:08',1,'1','362',1,2),(538,'2017-08-13 12:10:39',1,'1','362',1,2),(539,'2017-08-13 12:11:48',1,'1','362',1,2),(540,'2017-08-13 12:12:48',1,'1','362',1,2),(541,'2017-08-13 12:15:05',1,'1','362',1,2),(542,'2017-08-13 12:23:40',1,'1','362',1,2),(543,'2017-08-13 12:24:41',1,'2','362',1,2),(544,'2017-08-13 12:27:30',1,'1','362',1,2),(545,'2017-08-13 12:35:25',1,'1','362',1,2),(546,'2017-08-13 12:35:45',1,'7','362',1,2),(547,'2017-08-13 12:36:20',1,'9','362',1,2),(548,'2017-08-13 12:36:24',1,'8','362',1,2),(549,'2017-08-13 12:36:28',1,'5','362',1,2),(550,'2017-08-13 12:37:13',1,'9','362',1,2),(551,'2017-08-13 12:39:35',1,'2','362',1,2),(552,'2017-08-13 12:39:47',1,'8','362',1,2),(553,'2017-08-13 12:40:03',1,'9','362',1,2),(554,'2017-08-13 12:40:23',1,'1','362',1,2),(555,'2017-08-13 12:40:58',1,'1','362',1,2),(556,'2017-08-13 12:42:54',1,'1','362',1,2),(557,'2017-08-13 12:43:31',1,'1','362',1,2),(558,'2017-08-13 12:44:54',1,'1','362',1,2),(559,'2017-08-13 12:46:25',1,'1','362',1,2),(560,'2017-08-13 12:47:58',1,'1','368',1,2),(561,'2017-08-13 12:48:40',1,'1','368',1,2),(562,'2017-08-13 12:48:58',1,'7','368',1,2),(563,'2017-08-13 12:49:51',1,'2','368',1,2),(564,'2017-08-13 12:49:55',1,'3','368',1,2),(565,'2017-08-13 12:49:59',1,'5','368',1,2),(566,'2017-08-13 12:50:06',1,'6','368',1,2),(567,'2017-08-13 12:50:13',1,'7','368',1,2),(568,'2017-08-13 12:50:20',1,'8','368',1,2),(569,'2017-08-13 12:50:27',1,'7','368',1,2),(570,'2017-08-13 12:50:31',1,'1','368',1,2),(571,'2017-08-13 12:51:15',1,'7','368',1,2),(572,'2017-08-13 12:51:19',1,'8','368',1,2),(573,'2017-08-13 12:51:24',1,'1','368',1,2),(574,'2017-08-13 12:52:59',1,'1','368',1,2),(575,'2017-08-13 12:53:20',1,'1','368',1,2),(576,'2017-08-13 12:54:41',1,'1','368',1,2),(577,'2017-08-13 12:55:47',1,'1','368',1,2),(578,'2017-08-13 13:11:20',1,'1','368',1,2),(579,'2017-08-13 13:13:06',1,'1','368',1,2),(580,'2017-08-13 13:15:13',1,'1','368',1,2),(581,'2017-08-13 13:16:01',1,'1','368',1,2),(582,'2017-08-13 13:17:22',1,'1','368',1,2),(583,'2017-08-13 13:19:13',1,'1','368',1,2),(584,'2017-08-13 13:23:56',1,'1','368',1,2),(585,'2017-08-13 13:26:02',1,'1','368',1,2),(586,'2017-08-13 13:28:33',1,'1','368',1,2),(587,'2017-08-13 13:29:04',1,'1','368',1,2),(588,'2017-08-13 13:29:50',1,'2','368',1,2),(589,'2017-08-13 13:30:11',1,'2','368',1,2),(590,'2017-08-13 13:30:30',1,'3','368',1,2),(591,'2017-08-13 13:30:39',1,'2','368',1,2),(592,'2017-08-13 13:36:04',1,'2','368',1,2),(593,'2017-08-13 13:36:38',1,'2','368',1,2),(594,'2017-08-13 13:37:07',1,'2','368',1,2),(595,'2017-08-13 13:37:36',1,'2','368',1,2),(596,'2017-08-13 13:38:06',1,'2','368',1,2),(597,'2017-08-13 13:38:36',1,'2','368',1,2),(598,'2017-08-13 13:39:03',1,'2','368',1,2),(599,'2017-08-13 13:39:27',1,'2','368',1,2),(600,'2017-08-13 13:39:44',1,'2','368',1,2),(601,'2017-08-13 13:41:11',1,'2','368',1,2),(602,'2017-08-13 13:41:37',1,'2','368',1,2),(603,'2017-08-13 14:06:38',1,'2','369',1,2),(604,'2017-08-13 14:07:24',1,'2','369',1,2),(605,'2017-08-13 14:07:29',1,'1','369',1,2),(606,'2017-08-13 14:07:50',1,'1','369',1,2),(607,'2017-08-13 14:08:14',1,'1','369',1,2),(608,'2017-08-13 14:10:22',1,'1','369',1,2),(609,'2017-08-13 14:10:49',1,'2','369',1,2),(610,'2017-08-13 14:11:05',1,'2','369',1,2),(611,'2017-08-13 14:11:29',1,'1','369',1,2),(612,'2017-08-13 14:11:51',1,'2','369',1,2),(613,'2017-08-13 14:11:55',1,'3','369',1,2),(614,'2017-08-13 14:11:59',1,'5','369',1,2),(615,'2017-08-13 14:12:06',1,'6','369',1,2),(616,'2017-08-13 14:12:12',1,'7','369',1,2),(617,'2017-08-13 14:12:19',1,'8','369',1,2),(618,'2017-08-13 14:12:26',1,'9','369',1,2),(619,'2017-08-13 14:12:51',1,'2','369',1,2),(620,'2017-08-13 14:13:28',1,'2','369',1,2),(621,'2017-08-13 14:14:19',1,'2','369',1,2),(622,'2017-08-13 14:15:30',1,'2','369',1,2),(623,'2017-08-13 14:16:04',1,'2','369',1,2),(624,'2017-08-13 14:17:06',1,'2','369',1,2),(625,'2017-08-13 14:19:17',1,'2','369',1,2),(626,'2017-08-13 14:19:39',4,'8','369',1,2),(627,'2017-08-13 14:21:22',1,'2','369',1,2),(628,'2017-08-13 14:22:00',1,'2','369',1,2),(629,'2017-08-13 14:31:49',1,'2','369',1,2),(630,'2017-08-13 14:33:14',1,'2','369',1,2),(631,'2017-08-13 14:34:16',1,'2','369',1,2),(632,'2017-08-13 14:35:38',1,'2','369',1,2),(633,'2017-08-13 14:36:27',1,'2','369',1,2),(634,'2017-08-13 14:40:15',1,'2','369',1,2),(635,'2017-08-13 14:40:38',1,'2','370',1,2),(636,'2017-08-13 14:40:38',1,'2','371',1,2),(637,'2017-08-13 14:41:39',1,'1','371',1,2),(638,'2017-08-13 14:43:19',1,'8','369',1,2),(639,'2017-08-13 14:49:24',1,'8','369',1,2),(640,'2017-08-13 14:49:56',1,'1','369',1,2),(641,'2017-08-13 14:50:36',1,'8','369',1,2),(642,'2017-08-13 14:51:23',1,'8','369',1,2),(643,'2017-08-13 14:56:22',1,'1','369',1,2),(644,'2017-08-13 14:56:35',1,'1','369',1,2),(645,'2017-08-13 14:57:00',1,'8','369',1,2),(646,'2017-08-13 14:58:08',1,'8','369',1,2),(647,'2017-08-13 15:15:53',1,'8','372',1,2),(648,'2017-08-13 15:16:19',1,'1','372',1,2),(649,'2017-08-13 15:16:41',1,'1','372',1,2),(650,'2017-08-13 15:16:45',1,'8','372',1,2),(651,'2017-08-13 15:17:11',1,'1','372',1,2),(652,'2017-08-14 06:29:52',1,'1','373',1,2),(653,'2017-08-14 06:30:19',1,'8','373',1,2),(654,'2017-08-14 06:31:06',1,'8','373',1,2),(655,'2017-08-14 06:31:32',1,'1','373',1,2),(656,'2017-08-14 06:32:14',1,'8','373',1,2),(657,'2017-08-14 06:33:25',1,'2','373',1,2),(658,'2017-08-14 06:33:28',1,'2','373',1,2),(659,'2017-08-14 07:16:12',1,'8','373',1,2),(660,'2017-08-14 07:18:20',1,'8','373',1,2),(661,'2017-08-14 07:19:00',1,'8','373',1,2),(662,'2017-08-14 07:19:56',1,'8','373',1,2),(663,'2017-08-14 07:23:13',1,'8','373',1,2),(664,'2017-08-14 07:23:48',1,'8','373',1,2),(665,'2017-08-14 07:24:28',1,'8','373',1,2),(666,'2017-08-14 08:07:19',1,'8','374',1,2),(667,'2017-08-14 08:10:13',1,'8','374',1,2),(668,'2017-08-14 08:10:44',1,'1','374',1,2),(669,'2017-08-14 08:12:33',1,'1','374',1,2),(670,'2017-08-14 08:13:16',1,'1','374',1,2),(671,'2017-08-14 08:18:18',1,'1','374',1,2),(672,'2017-08-14 08:18:39',1,'1','374',1,2),(673,'2017-08-14 08:19:41',1,'1','374',1,2),(674,'2017-08-14 08:34:39',1,'1','374',1,2),(675,'2017-08-14 08:34:47',1,'8','374',1,2),(676,'2017-08-14 08:34:52',1,'1','374',1,2),(677,'2017-08-14 08:36:14',1,'1','374',1,2),(678,'2017-08-14 08:38:40',1,'8','374',1,2),(679,'2017-08-14 08:41:18',1,'1','374',1,2),(680,'2017-08-14 08:42:36',1,'1','374',1,2),(681,'2017-08-14 08:47:37',1,'8','374',1,2),(682,'2017-08-14 08:49:13',1,'8','374',1,2),(683,'2017-08-14 08:50:00',1,'8','374',1,2),(684,'2017-08-14 08:50:32',1,'8','374',1,2),(685,'2017-08-14 08:50:35',1,'1','374',1,2),(686,'2017-08-14 08:52:08',1,'8','374',1,2),(687,'2017-08-14 08:52:43',1,'8','374',1,2),(688,'2017-08-14 08:53:25',1,'8','374',1,2),(689,'2017-08-14 08:53:49',1,'8','374',1,2),(690,'2017-08-14 08:54:35',1,'8','374',1,2),(691,'2017-08-14 09:08:01',1,'1','375',1,2),(692,'2017-08-14 09:12:14',1,'8','375',1,2),(693,'2017-08-14 09:18:16',1,'1','375',1,2),(694,'2017-08-14 09:19:20',1,'1','375',1,2),(695,'2017-08-14 09:22:14',1,'1','375',1,2),(696,'2017-08-14 10:08:05',1,'1','375',1,2),(697,'2017-08-14 10:12:54',1,'1','377',1,2),(698,'2017-08-14 10:14:06',1,'1','377',1,2),(699,'2017-08-14 10:29:19',1,'1','377',1,2),(700,'2017-08-14 10:29:45',1,'1','377',1,2),(701,'2017-08-14 10:30:21',1,'1','377',1,2),(702,'2017-08-14 10:31:24',1,'1','377',1,2),(703,'2017-08-14 10:32:07',1,'1','377',1,2),(704,'2017-08-14 10:34:12',1,'1','377',1,2),(705,'2017-08-14 11:36:47',1,'1','380',1,2),(706,'2017-08-14 11:51:16',1,'1','380',1,2),(707,'2017-08-14 11:56:50',1,'1','380',1,2),(708,'2017-08-14 11:57:56',1,'1','380',1,2),(709,'2017-08-14 11:59:47',1,'1','380',1,2),(710,'2017-08-14 12:00:51',1,'1','380',1,2),(711,'2017-08-14 12:01:59',1,'1','380',1,2),(712,'2017-08-14 12:06:02',1,'1','380',1,2),(713,'2017-08-14 12:06:55',1,'1','380',1,2),(714,'2017-08-14 12:08:26',1,'1','380',1,2),(715,'2017-08-14 12:11:46',1,'1','380',1,2),(716,'2017-08-14 12:14:25',1,'1','380',1,2),(717,'2017-08-14 12:15:12',1,'1','380',1,2),(718,'2017-08-14 12:15:39',1,'1','380',1,2),(719,'2017-08-14 12:19:58',1,'1','380',1,2),(720,'2017-08-14 12:20:48',1,'1','380',1,2),(721,'2017-08-14 12:38:46',1,'1','381',1,2),(722,'2017-08-14 12:40:28',1,'1','381',1,2),(723,'2017-08-14 12:44:58',1,'1','381',1,2),(724,'2017-08-14 18:43:48',1,'1','382',1,2),(725,'2017-08-14 18:45:05',1,'1','382',1,2),(726,'2017-08-14 18:46:16',1,'1','382',1,2),(727,'2017-08-14 18:56:32',1,'1','382',1,2),(728,'2017-08-14 18:56:59',1,'1','382',1,2),(729,'2017-08-14 18:57:23',1,'1','382',1,2),(730,'2017-08-14 18:58:15',1,'1','382',1,2),(731,'2017-08-14 18:59:07',1,'1','382',1,2),(732,'2017-08-14 19:02:59',1,'1','382',1,2),(733,'2017-08-14 19:03:51',1,'1','382',1,2),(734,'2017-08-14 19:04:29',1,'1','382',1,2),(735,'2017-08-14 19:06:04',1,'1','382',1,2),(736,'2017-08-14 19:08:07',1,'1','382',1,2),(737,'2017-08-14 19:11:16',1,'1','382',1,2),(738,'2017-08-14 19:16:08',1,'1','382',1,2),(739,'2017-08-14 19:17:31',1,'1','382',1,2),(740,'2017-08-14 19:19:58',1,'1','382',1,2),(741,'2017-08-14 19:28:08',1,'1','382',1,2),(742,'2017-08-14 19:29:22',1,'1','382',1,2),(743,'2017-08-14 19:30:54',1,'1','382',1,2),(744,'2017-08-14 19:32:47',1,'1','382',1,2),(745,'2017-08-14 19:40:33',1,'1','382',1,2),(746,'2017-08-14 19:44:34',1,'1','383',1,2),(747,'2017-08-14 19:44:56',1,'1','383',1,2),(748,'2017-08-14 19:46:25',1,'1','383',1,2),(749,'2017-08-14 19:46:42',1,'1','383',1,2),(750,'2017-08-14 19:47:28',1,'1','383',1,2),(751,'2017-08-14 19:47:55',1,'1','383',1,2),(752,'2017-08-14 19:48:02',1,'5','383',1,2),(753,'2017-08-14 19:48:05',1,'2','383',1,2),(754,'2017-08-14 19:48:10',1,'3','383',1,2),(755,'2017-08-14 19:48:44',1,'5','383',1,2),(756,'2017-08-14 19:54:31',1,'5','383',1,2),(757,'2017-08-14 19:56:18',1,'5','383',1,2),(758,'2017-08-14 19:58:04',1,'5','383',1,2),(759,'2017-08-15 06:29:18',1,'5','384',1,2),(760,'2017-08-15 06:30:54',1,'5','384',1,2),(761,'2017-08-15 08:19:58',1,'1','386',1,2),(762,'2017-08-15 08:22:06',1,'1','386',1,2),(763,'2017-08-15 08:22:10',1,'1','386',1,2),(764,'2017-08-15 08:22:46',1,'1','386',1,2),(765,'2017-08-15 08:22:47',1,'1','386',1,2),(766,'2017-08-15 08:22:49',1,'1','386',1,2),(767,'2017-08-15 08:22:50',1,'1','386',1,2),(768,'2017-08-15 08:22:53',1,'1','386',1,2),(769,'2017-08-15 08:23:18',1,'1','386',1,2),(770,'2017-08-15 08:24:23',1,'1','386',1,2),(771,'2017-08-15 08:25:52',1,'1','386',1,2),(772,'2017-08-15 08:26:37',1,'1','386',1,2),(773,'2017-08-15 08:27:23',1,'1','386',1,2),(774,'2017-08-15 08:27:58',1,'1','386',1,2),(775,'2017-08-15 08:31:51',1,'1','388',1,2),(776,'2017-08-15 08:33:33',1,'1','388',1,2),(777,'2017-08-15 08:33:40',1,'1','386',1,2),(778,'2017-08-15 08:36:10',1,'2','388',1,2),(779,'2017-08-15 08:38:26',1,'1','386',1,2),(780,'2017-08-15 12:50:51',1,'3','390',1,2),(781,'2017-08-15 12:51:17',1,'3','390',1,2),(782,'2017-08-15 12:51:47',1,'3','390',1,2),(783,'2017-08-15 12:52:12',1,'1','390',1,2),(784,'2017-08-15 12:52:42',1,'1','390',1,2),(785,'2017-08-15 12:53:10',1,'3','390',1,2),(786,'2017-08-15 12:54:09',1,'1','390',1,2),(787,'2017-08-15 13:33:06',1,'1','390',1,2),(788,'2017-08-15 13:33:22',1,'1','391',1,2),(789,'2017-08-15 13:33:28',1,'1','391',1,2),(790,'2017-08-15 13:33:29',1,'1','391',1,2),(791,'2017-08-15 13:33:31',1,'1','391',1,2),(792,'2017-08-15 13:33:32',1,'1','391',1,2),(793,'2017-08-15 13:33:33',1,'1','391',1,2),(794,'2017-08-15 13:33:35',1,'1','391',1,2),(795,'2017-08-15 13:35:09',1,'1','390',1,2),(796,'2017-08-15 13:35:16',1,'1','391',1,2),(797,'2017-08-15 13:36:54',1,'1','392',1,2),(798,'2017-08-15 13:37:24',1,'1','390',1,2),(799,'2017-08-15 13:38:23',1,'1','390',1,2),(800,'2017-08-15 13:41:09',1,'1','390',1,2),(801,'2017-08-15 13:41:27',1,'1','390',1,2),(802,'2017-08-15 13:51:46',1,'1','393',1,2),(803,'2017-08-15 13:57:26',1,'1','394',1,2),(804,'2017-08-15 13:57:53',1,'1','394',1,2),(805,'2017-08-15 13:58:21',1,'1','394',1,2),(806,'2017-08-15 13:58:34',1,'1','394',1,2),(807,'2017-08-15 14:01:50',1,'1','395',1,2),(808,'2017-08-15 14:02:58',1,'1','395',1,2),(809,'2017-08-15 14:03:18',1,'1','395',1,2),(810,'2017-08-15 14:03:44',1,'1','395',1,2),(811,'2017-08-15 14:58:02',1,'1','396',1,2),(812,'2017-08-15 15:04:09',1,'1','399',1,2),(813,'2017-08-15 15:05:04',1,'1','399',1,2),(814,'2017-08-15 15:05:40',1,'1','399',1,2),(815,'2017-08-15 15:06:07',1,'1','399',1,2),(816,'2017-08-15 15:06:33',1,'1','399',1,2),(817,'2017-08-15 15:07:06',1,'1','399',1,2),(818,'2017-08-15 15:11:05',1,'1','399',1,2),(819,'2017-08-15 15:12:56',1,'1','399',1,2),(820,'2017-08-15 15:13:00',1,'1','399',1,2),(821,'2017-08-15 15:14:06',1,'1','399',1,2),(822,'2017-08-15 15:14:36',1,'1','399',1,2),(823,'2017-08-15 15:17:26',1,'1','399',1,2),(824,'2017-08-15 15:17:37',1,'1','399',1,2),(825,'2017-08-15 15:20:45',1,'1','398',1,2),(826,'2017-08-15 15:21:53',1,'1','398',1,2),(827,'2017-08-15 15:22:13',1,'1','398',1,2),(828,'2017-08-15 15:22:23',1,'1','399',1,2),(829,'2017-08-15 15:28:29',1,'1','398',1,2),(830,'2017-08-15 15:28:30',1,'1','399',1,2),(831,'2017-08-15 15:31:27',1,'1','399',1,2),(832,'2017-08-15 15:34:24',1,'1','399',1,2),(833,'2017-08-15 15:34:34',1,'1','399',1,2),(834,'2017-08-15 15:35:27',1,'1','398',1,2),(835,'2017-08-15 15:35:33',1,'1','399',1,2),(836,'2017-08-15 15:37:00',1,'1','398',1,2),(837,'2017-08-15 15:37:06',1,'1','399',1,2),(838,'2017-08-15 15:37:25',1,'1','398',1,2),(839,'2017-08-15 15:37:42',1,'1','399',1,2),(840,'2017-08-15 15:59:27',1,'1','400',1,2),(841,'2017-08-15 16:07:41',1,'1','401',1,2),(842,'2017-08-15 17:04:48',1,'1','402',1,2),(843,'2017-08-15 17:05:58',1,'1','402',1,2),(844,'2017-08-15 17:07:13',1,'1','402',1,2),(845,'2017-08-15 17:15:51',1,'1','402',1,2),(846,'2017-08-15 17:26:48',1,'1','402',1,2),(847,'2017-08-15 17:32:58',1,'1','402',1,2),(848,'2017-08-15 17:34:08',1,'1','402',1,2),(849,'2017-08-15 19:49:30',1,'1','403',1,2),(850,'2017-08-15 20:05:27',1,'1','403',1,2),(851,'2017-08-15 20:05:48',1,'1','403',1,2),(852,'2017-08-15 20:06:15',1,'1','403',1,2),(853,'2017-08-15 20:06:44',1,'1','403',1,2),(854,'2017-08-15 20:07:23',1,'1','403',1,2),(855,'2017-08-15 20:13:33',1,'1','403',1,2),(856,'2017-08-15 20:14:11',1,'1','403',1,2),(857,'2017-08-15 20:15:03',1,'1','403',1,2),(858,'2017-08-15 20:15:41',1,'1','403',1,2),(859,'2017-08-15 20:19:44',1,'1','403',1,2),(860,'2017-08-15 20:21:56',1,'1','403',1,2),(861,'2017-08-15 20:22:30',1,'1','403',1,2),(862,'2017-08-15 20:33:04',1,'1','403',1,2),(863,'2017-08-15 20:33:37',1,'1','403',1,2),(864,'2017-08-15 20:34:58',1,'1','403',1,2),(865,'2017-08-15 20:37:19',1,'1','403',1,2),(866,'2017-08-15 20:40:17',1,'1','403',1,2),(867,'2017-08-15 20:40:55',1,'1','403',1,2),(868,'2017-08-15 21:48:29',1,'1','404',1,2),(869,'2017-08-15 21:51:08',1,'1','404',1,2),(870,'2017-08-15 21:51:55',1,'1','404',1,2),(871,'2017-08-15 21:53:17',1,'1','404',1,2),(872,'2017-08-15 21:53:34',1,'1','404',1,2),(873,'2017-08-15 21:55:11',1,'1','404',1,2),(874,'2017-08-15 21:55:50',1,'1','404',1,2),(875,'2017-08-15 21:57:35',1,'1','404',1,2),(876,'2017-08-15 21:58:01',1,'1','404',1,2),(877,'2017-08-15 21:58:56',1,'1','404',1,2),(878,'2017-08-15 21:59:16',1,'1','404',1,2),(879,'2017-08-15 22:00:38',1,'1','404',1,2),(880,'2017-08-15 22:02:44',1,'1','404',1,2),(881,'2017-08-15 22:03:45',1,'1','404',1,2),(882,'2017-08-16 06:36:16',1,'1','405',1,2),(883,'2017-08-16 06:37:03',1,'1','405',1,2),(884,'2017-08-16 06:38:56',1,'1','405',1,2),(885,'2017-08-16 06:40:53',1,'1','405',1,2),(886,'2017-08-16 06:41:18',1,'1','405',1,2),(887,'2017-08-16 06:42:12',1,'1','405',1,2),(888,'2017-08-16 06:42:48',1,'1','405',1,2),(889,'2017-08-16 07:33:08',1,'1','405',1,2),(890,'2017-08-16 07:34:37',1,'1','405',1,2),(891,'2017-08-16 07:39:11',1,'1','406',1,2),(892,'2017-08-16 07:44:13',1,'1','406',1,2),(893,'2017-08-16 07:44:55',1,'1','406',1,2),(894,'2017-08-16 07:46:02',1,'1','406',1,2),(895,'2017-08-16 07:46:46',1,'1','406',1,2),(896,'2017-08-16 07:47:18',1,'1','406',1,2),(897,'2017-08-16 07:50:34',1,'1','406',1,2),(898,'2017-08-16 20:19:04',1,'1','407',1,2),(899,'2017-08-16 20:23:47',1,'1','407',1,2),(900,'2017-08-16 20:24:57',1,'1','407',1,2),(901,'2017-08-16 20:26:15',1,'1','407',1,2),(902,'2017-08-16 20:33:18',1,'1','407',1,2),(903,'2017-08-16 20:33:47',1,'1','407',1,2),(904,'2017-08-16 20:40:12',1,'1','407',1,2),(905,'2017-08-16 20:42:23',1,'1','407',1,2),(906,'2017-08-16 20:44:29',1,'1','407',1,2),(907,'2017-08-16 20:46:42',1,'1','407',1,2),(908,'2017-08-16 20:48:48',1,'1','407',1,2),(909,'2017-08-16 20:54:12',1,'1','407',1,2),(910,'2017-08-16 20:55:25',1,'1','407',1,2),(911,'2017-08-16 20:56:00',1,'1','407',1,2),(912,'2017-08-16 20:59:56',1,'1','407',1,2),(913,'2017-08-16 21:01:01',1,'1','407',1,2),(914,'2017-08-16 21:01:35',1,'1','407',1,2),(915,'2017-08-16 21:01:55',1,'1','407',1,2),(916,'2017-08-16 21:05:18',1,'1','407',1,2),(917,'2017-08-16 21:07:51',1,'1','407',1,2),(918,'2017-08-16 21:08:22',1,'1','407',1,2),(919,'2017-08-16 21:10:53',1,'1','407',1,2),(920,'2017-08-16 21:13:05',1,'1','407',1,2),(921,'2017-08-16 21:14:04',1,'1','407',1,2),(922,'2017-08-16 21:15:46',1,'1','407',1,2),(923,'2017-08-16 21:17:43',1,'1','407',1,2),(924,'2017-08-16 21:18:12',1,'1','407',1,2),(925,'2017-08-16 21:23:48',1,'1','408',1,2),(926,'2017-08-16 21:24:52',1,'1','408',1,2),(927,'2017-08-16 21:27:04',1,'1','408',1,2),(928,'2017-08-16 21:28:33',1,'1','408',1,2),(929,'2017-08-16 21:33:02',1,'1','408',1,2),(930,'2017-08-16 21:33:40',1,'1','408',1,2),(931,'2017-08-16 21:37:28',1,'1','408',1,2),(932,'2017-08-16 21:40:39',1,'1','408',1,2),(933,'2017-08-16 22:02:12',1,'1','408',1,2),(934,'2017-08-16 22:04:15',1,'1','408',1,2),(935,'2017-08-16 22:07:20',1,'1','408',1,2),(936,'2017-08-17 06:23:19',1,'1','409',1,2),(937,'2017-08-17 06:25:20',1,'1','409',1,2),(938,'2017-08-17 06:26:08',1,'1','409',1,2),(939,'2017-08-17 06:26:39',1,'2','409',1,2),(940,'2017-08-17 06:26:43',1,'2','409',1,2),(941,'2017-08-17 06:26:45',1,'3','409',1,2),(942,'2017-08-17 06:26:49',1,'6','409',1,2),(943,'2017-08-17 06:27:13',1,'5','409',1,2),(944,'2017-08-17 06:27:17',1,'7','409',1,2),(945,'2017-08-17 06:27:20',1,'8','409',1,2),(946,'2017-08-17 06:27:24',1,'9','409',1,2),(947,'2017-08-17 06:27:27',1,'2','409',1,2),(948,'2017-08-17 06:27:39',1,'7','409',1,2),(949,'2017-08-17 06:27:44',1,'2','409',1,2),(950,'2017-08-17 06:27:52',1,'9','409',1,2),(951,'2017-08-17 06:30:35',1,'9','409',1,2),(952,'2017-08-17 06:31:10',1,'9','409',1,2),(953,'2017-08-17 06:35:30',1,'1','409',1,2),(954,'2017-08-17 06:38:40',1,'1','409',1,2),(955,'2017-08-17 06:39:50',1,'1','409',1,2),(956,'2017-08-17 06:42:09',1,'1','409',1,2),(957,'2017-08-17 06:42:38',1,'1','409',1,2),(958,'2017-08-17 06:43:55',1,'9','409',1,2),(959,'2017-08-17 06:45:09',1,'9','409',1,2),(960,'2017-08-17 06:46:36',1,'9','409',1,2),(961,'2017-08-17 07:05:59',1,'9','409',1,2),(962,'2017-08-17 07:06:56',1,'9','409',1,2),(963,'2017-08-17 07:07:53',1,'9','409',1,2),(964,'2017-08-17 07:08:15',1,'9','409',1,2),(965,'2017-08-17 07:08:18',1,'9','409',1,2),(966,'2017-08-17 07:08:24',1,'9','409',1,2),(967,'2017-08-17 07:08:44',1,'9','409',1,2),(968,'2017-08-17 07:09:08',1,'9','409',1,2),(969,'2017-08-17 07:10:36',1,'9','409',1,2),(970,'2017-08-17 07:11:53',1,'9','409',1,2),(971,'2017-08-17 07:12:02',1,'6','409',1,2),(972,'2017-08-17 07:12:20',1,'1','409',1,2),(973,'2017-08-17 07:23:44',1,'1','410',1,2),(974,'2017-08-17 07:23:58',1,'2','410',1,2),(975,'2017-08-17 07:24:01',1,'3','410',1,2),(976,'2017-08-17 07:24:04',1,'5','410',1,2),(977,'2017-08-17 07:24:06',1,'6','410',1,2),(978,'2017-08-17 07:24:09',1,'7','410',1,2),(979,'2017-08-17 07:24:11',1,'8','410',1,2),(980,'2017-08-17 07:24:16',1,'9','410',1,2),(981,'2017-08-17 07:24:18',1,'1','410',1,2),(982,'2017-08-17 07:27:31',1,'1','410',1,2),(983,'2017-08-17 07:30:35',1,'1','410',1,2),(984,'2017-08-17 07:35:29',1,'1','410',1,2),(985,'2017-08-17 07:36:24',1,'1','410',1,2),(986,'2017-08-17 07:44:39',1,'1','410',1,2),(987,'2017-08-17 07:44:43',1,'2','410',1,2),(988,'2017-08-17 07:44:48',1,'9','410',1,2),(989,'2017-08-17 07:44:53',1,'8','410',1,2),(990,'2017-08-17 07:44:59',1,'7','410',1,2),(991,'2017-08-17 07:45:03',1,'6','410',1,2),(992,'2017-08-17 07:45:06',1,'5','410',1,2),(993,'2017-08-17 07:45:11',1,'3','410',1,2),(994,'2017-08-17 07:56:57',1,'1','410',1,2),(995,'2017-08-17 07:58:59',1,'1','410',1,2),(996,'2017-08-17 07:59:37',1,'1','410',1,2),(997,'2017-08-17 08:00:15',1,'1','410',1,2),(998,'2017-08-17 08:01:02',1,'1','410',1,2),(999,'2017-08-17 08:20:02',1,'1','410',1,2),(1000,'2017-08-17 08:20:50',1,'1','410',1,2),(1001,'2017-08-17 08:21:32',1,'1','410',1,2),(1002,'2017-08-17 08:22:03',1,'1','410',1,2),(1003,'2017-08-17 08:22:42',1,'1','410',1,2),(1004,'2017-08-17 08:24:22',1,'1','411',1,2),(1005,'2017-08-17 08:24:33',1,'2','411',1,2),(1006,'2017-08-17 08:24:37',1,'1','411',1,2),(1007,'2017-08-17 08:25:05',1,'1','411',1,2),(1008,'2017-08-17 08:25:25',1,'1','411',1,2),(1009,'2017-08-17 08:25:54',1,'1','411',1,2),(1010,'2017-08-17 08:26:17',1,'1','411',1,2),(1011,'2017-08-17 08:26:22',1,'3','411',1,2),(1012,'2017-08-17 08:26:25',1,'5','411',1,2),(1013,'2017-08-17 08:26:28',1,'6','411',1,2),(1014,'2017-08-17 08:26:30',1,'7','411',1,2),(1015,'2017-08-17 08:26:34',1,'8','411',1,2),(1016,'2017-08-17 08:26:37',1,'9','411',1,2),(1017,'2017-08-17 08:26:43',1,'1','411',1,2),(1018,'2017-08-17 08:27:40',1,'1','411',1,2),(1019,'2017-08-17 08:28:50',1,'1','411',1,2),(1020,'2017-08-17 08:29:57',1,'1','411',1,2),(1021,'2017-08-17 08:30:44',1,'1','411',1,2),(1022,'2017-08-17 08:32:33',1,'1','411',1,2),(1023,'2017-08-17 08:33:36',1,'1','411',1,2),(1024,'2017-08-17 08:38:14',1,'1','411',1,2),(1025,'2017-08-17 08:44:28',1,'5','411',1,2),(1026,'2017-08-17 08:53:47',1,'2','411',1,2),(1027,'2017-08-17 09:38:46',1,'1','413',1,2),(1028,'2017-08-17 09:39:05',1,'1','413',1,2),(1029,'2017-08-17 09:39:18',1,'2','413',1,2),(1030,'2017-08-17 09:39:43',1,'1','413',1,2),(1031,'2017-08-17 09:40:02',1,'1','413',1,2),(1032,'2017-08-17 09:41:58',1,'1','413',1,3),(1033,'2017-08-17 10:54:08',1,'1','414',1,3),(1034,'2017-08-17 11:10:20',1,'1','415',1,3),(1035,'2017-08-17 11:19:48',1,'1','415',1,3),(1036,'2017-08-17 11:20:15',1,'1','415',1,3),(1037,'2017-08-17 11:20:37',1,'1','415',1,3),(1038,'2017-08-17 11:21:19',1,'1','415',1,3),(1039,'2017-08-17 11:22:47',1,'1','415',1,3),(1040,'2017-08-17 11:23:50',1,'1','415',1,3),(1041,'2017-08-17 11:25:38',1,'1','415',1,3),(1042,'2017-08-17 11:28:05',1,'1','415',1,3),(1043,'2017-08-17 11:28:49',1,'1','415',1,3),(1044,'2017-08-17 11:29:31',1,'1','415',1,3),(1045,'2017-08-17 11:33:24',1,'1','415',1,3),(1046,'2017-08-17 11:34:14',1,'3','415',1,3),(1047,'2017-08-17 11:34:28',4,'3','415',1,3),(1048,'2017-08-17 11:34:29',1,'3','415',1,3),(1049,'2017-08-17 11:35:49',3,'3','415',1,3),(1050,'2017-08-17 11:35:50',1,'3','415',1,3),(1051,'2017-08-17 11:37:48',1,'3','415',1,3),(1052,'2017-08-17 11:44:41',1,'3','415',1,3),(1053,'2017-08-17 11:45:08',1,'1','415',1,2),(1054,'2017-08-17 12:06:28',1,'1','416',1,2),(1055,'2017-08-17 12:29:25',1,'1','416',1,3),(1056,'2017-08-17 12:30:21',1,'1','416',1,2),(1057,'2017-08-17 12:30:41',1,'1','416',1,3),(1058,'2017-08-17 12:33:14',1,'1','416',1,3),(1059,'2017-08-17 12:38:03',1,'1','416',1,3),(1060,'2017-08-17 12:39:13',1,'1','416',1,3),(1061,'2017-08-17 12:45:35',1,'1','416',1,3),(1062,'2017-08-17 12:45:48',1,'2','416',1,3),(1063,'2017-08-17 12:45:51',1,'3','416',1,3),(1064,'2017-08-17 12:45:55',1,'5','416',1,3),(1065,'2017-08-17 12:45:58',1,'6','416',1,3),(1066,'2017-08-17 12:46:01',1,'7','416',1,3),(1067,'2017-08-17 12:46:07',1,'1','416',1,3),(1068,'2017-08-17 12:46:25',1,'8','416',1,3),(1069,'2017-08-17 12:46:27',1,'9','416',1,3),(1070,'2017-08-17 12:46:31',1,'1','416',1,3),(1071,'2017-08-17 12:46:44',1,'1','416',1,3),(1072,'2017-08-17 12:47:46',1,'1','416',1,2),(1073,'2017-08-17 12:47:53',1,'1','416',1,3),(1074,'2017-08-17 12:51:44',1,'1','416',1,3),(1075,'2017-08-17 12:52:09',1,'1','416',1,3),(1076,'2017-08-17 12:53:32',1,'1','416',1,3),(1077,'2017-08-17 12:54:13',1,'1','416',1,3),(1078,'2017-08-17 12:55:04',1,'1','416',1,2),(1079,'2017-08-17 12:55:47',1,'1','416',1,3),(1080,'2017-08-17 12:56:44',1,'1','416',1,3),(1081,'2017-08-17 13:07:59',1,'8','417',1,3),(1082,'2017-08-17 13:08:25',1,'9','417',1,2),(1083,'2017-08-17 13:08:55',1,'9','417',1,3),(1084,'2017-08-17 13:14:00',1,'1','417',1,3),(1085,'2017-08-17 13:22:16',1,'1','417',1,2),(1086,'2017-08-17 13:22:26',1,'1','417',1,3),(1087,'2017-08-17 13:25:27',1,'1','417',1,2),(1088,'2017-08-17 13:25:35',1,'1','417',1,3),(1089,'2017-08-17 13:26:09',1,'1','417',1,3),(1090,'2017-08-17 13:26:17',1,'1','417',1,2),(1091,'2017-08-17 13:34:33',3,'1','417',1,2),(1092,'2017-08-17 13:34:34',1,'1','417',1,2),(1093,'2017-08-17 13:40:33',1,'8','1',0,2),(1094,'2017-08-17 13:40:42',1,'1','1',0,2),(1095,'2017-08-17 13:41:51',1,'1','1',0,2),(1096,'2017-08-17 13:44:34',1,'1','1',0,2),(1097,'2017-08-17 13:44:47',1,'1','1',0,3),(1098,'2017-08-17 13:47:18',1,'9','1',0,3),(1099,'2017-08-17 13:47:34',1,'9','1',0,2),(1100,'2017-08-17 13:47:49',1,'1','1',0,2),(1101,'2017-08-17 13:47:57',1,'1','1',0,3),(1102,'2017-08-17 13:48:10',1,'2','1',0,3),(1103,'2017-08-17 13:48:12',1,'3','1',0,3),(1104,'2017-08-17 13:48:16',1,'5','1',0,3),(1105,'2017-08-17 13:50:41',1,'1','1',0,3),(1106,'2017-08-17 13:53:03',1,'3','1',0,3),(1107,'2017-08-17 13:54:57',1,'7','1',0,3),(1108,'2017-08-17 13:55:00',1,'1','1',0,3),(1109,'2017-08-17 13:56:14',1,'1','1',0,3),(1110,'2017-08-17 13:58:05',1,'1','1',0,2),(1111,'2017-08-17 13:58:09',1,'4','1',0,2),(1112,'2017-08-17 13:58:13',1,'6','1',0,2),(1113,'2017-08-17 13:59:53',1,'1','1',0,2),(1114,'2017-08-17 14:00:00',1,'1','1',0,3),(1115,'2017-08-17 14:00:11',1,'1','1',0,2),(1116,'2017-08-17 14:02:44',4,'6','418',1,2),(1117,'2017-08-17 14:03:11',4,'6','1',0,2),(1118,'2017-08-17 14:04:14',4,'4','1',0,2),(1119,'2017-08-17 14:04:15',4,'9','1',0,2),(1120,'2017-08-17 14:05:29',1,'1','420',1,2),(1121,'2017-08-17 18:31:47',1,'1','421',1,3),(1122,'2017-08-17 18:36:09',1,'1','421',1,3),(1123,'2017-08-18 07:34:23',1,'1','423',1,2),(1124,'2017-08-18 07:42:11',1,'1','423',1,2),(1125,'2017-08-18 11:20:37',1,'1','424',1,2),(1126,'2017-08-25 09:16:35',1,'1','435',1,2),(1127,'2017-08-25 09:17:08',1,'6','435',1,2),(1128,'2017-08-25 09:17:14',1,'1','435',1,2),(1129,'2017-08-25 09:30:11',1,'1','435',1,2),(1130,'2017-08-25 09:33:19',1,'1','435',1,2),(1131,'2017-08-25 09:37:10',1,'1','435',1,2),(1132,'2017-08-25 09:37:34',1,'1','435',1,2),(1133,'2017-08-25 09:37:56',1,'1','435',1,2),(1134,'2017-08-25 09:38:17',1,'1','435',1,2),(1135,'2017-08-25 09:38:30',1,'6','435',1,2),(1136,'2017-08-25 09:45:25',1,'1','435',1,2),(1137,'2017-08-25 18:28:05',1,'1','438',1,2),(1138,'2017-08-25 18:28:19',1,'1','438',1,3),(1139,'2017-08-25 18:29:46',1,'1','438',1,3),(1140,'2017-08-25 18:31:55',1,'1','438',1,3),(1141,'2017-08-25 18:32:22',1,'1','438',1,3),(1142,'2017-08-25 18:33:00',1,'1','438',1,3),(1143,'2017-08-25 18:35:35',1,'1','438',1,2),(1144,'2017-08-25 18:36:24',1,'1','438',1,2),(1145,'2017-08-25 18:39:32',1,'1','438',1,2),(1146,'2017-08-25 19:16:26',1,'1','438',1,2),(1147,'2017-08-25 20:00:15',1,'1','439',1,2),(1148,'2017-08-25 20:01:23',1,'1','439',1,2),(1149,'2017-08-25 20:01:56',1,'1','439',1,2),(1150,'2017-08-25 20:17:12',1,'1','439',1,2),(1151,'2017-08-25 20:17:59',1,'1','440',1,2),(1152,'2017-08-25 20:18:59',1,'1','441',1,2),(1153,'2017-08-25 20:24:25',1,'1','441',1,2),(1154,'2017-08-25 20:26:32',1,'1','441',1,2),(1155,'2017-08-25 20:27:44',1,'1','441',1,2),(1156,'2017-08-25 20:32:41',1,'1','441',1,2),(1157,'2017-08-25 20:33:01',1,'1','441',1,2),(1158,'2017-08-25 20:37:15',1,'1','441',1,2),(1159,'2017-08-25 20:38:43',1,'1','441',1,2),(1160,'2017-08-25 20:46:52',1,'1','442',1,2),(1161,'2017-08-25 20:49:12',1,'1','442',1,2),(1162,'2017-08-25 21:21:07',1,'1','442',1,2),(1163,'2017-08-25 21:26:19',1,'1','442',1,2),(1164,'2017-08-25 21:31:18',1,'1','442',1,3),(1165,'2017-08-25 21:36:51',1,'1','442',1,3),(1166,'2017-08-25 21:36:56',1,'1','442',1,2),(1167,'2017-08-25 22:03:40',1,'1','443',1,2),(1168,'2017-08-25 22:03:57',1,'1','443',1,2),(1169,'2017-08-25 22:04:09',1,'1','443',1,2),(1170,'2017-08-25 22:04:17',1,'1','443',1,2);
/*!40000 ALTER TABLE `report_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_event_types`
--

DROP TABLE IF EXISTS `report_event_types`;
CREATE TABLE `report_event_types` (
  `event_type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Event Type Id',
  `event_name` varchar(64) NOT NULL COMMENT 'Event Name',
  `customer_login` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Login',
  PRIMARY KEY (`event_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Reports Event Type Table';

--
-- Dumping data for table `report_event_types`
--

LOCK TABLES `report_event_types` WRITE;
/*!40000 ALTER TABLE `report_event_types` DISABLE KEYS */;
INSERT INTO `report_event_types` VALUES (1,'catalog_product_view',0),(2,'sendfriend_product',0),(3,'catalog_product_compare_add_product',0),(4,'checkout_cart_add_product',0),(5,'wishlist_add_product',0),(6,'wishlist_share',0);
/*!40000 ALTER TABLE `report_event_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_viewed_product_aggregated_daily`
--

DROP TABLE IF EXISTS `report_viewed_product_aggregated_daily`;
CREATE TABLE `report_viewed_product_aggregated_daily` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int(11) NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `REPORT_VIEWED_PRD_AGGRED_DAILY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `REPORT_VIEWED_PRODUCT_AGGREGATED_DAILY_STORE_ID` (`store_id`),
  KEY `REPORT_VIEWED_PRODUCT_AGGREGATED_DAILY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Most Viewed Products Aggregated Daily';

--
-- Table structure for table `report_viewed_product_aggregated_monthly`
--

DROP TABLE IF EXISTS `report_viewed_product_aggregated_monthly`;
CREATE TABLE `report_viewed_product_aggregated_monthly` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int(11) NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `REPORT_VIEWED_PRD_AGGRED_MONTHLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `REPORT_VIEWED_PRODUCT_AGGREGATED_MONTHLY_STORE_ID` (`store_id`),
  KEY `REPORT_VIEWED_PRODUCT_AGGREGATED_MONTHLY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Most Viewed Products Aggregated Monthly';

--
-- Table structure for table `report_viewed_product_aggregated_yearly`
--

DROP TABLE IF EXISTS `report_viewed_product_aggregated_yearly`;
CREATE TABLE `report_viewed_product_aggregated_yearly` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int(11) NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `REPORT_VIEWED_PRD_AGGRED_YEARLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `REPORT_VIEWED_PRODUCT_AGGREGATED_YEARLY_STORE_ID` (`store_id`),
  KEY `REPORT_VIEWED_PRODUCT_AGGREGATED_YEARLY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Most Viewed Products Aggregated Yearly';

--
-- Table structure for table `report_viewed_product_index`
--

DROP TABLE IF EXISTS `report_viewed_product_index`;
CREATE TABLE `report_viewed_product_index` (
  `index_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Index Id',
  `visitor_id` int(10) unsigned DEFAULT NULL COMMENT 'Visitor Id',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `added_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Added At',
  PRIMARY KEY (`index_id`),
  UNIQUE KEY `REPORT_VIEWED_PRODUCT_INDEX_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  UNIQUE KEY `REPORT_VIEWED_PRODUCT_INDEX_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  KEY `REPORT_VIEWED_PRODUCT_INDEX_STORE_ID` (`store_id`),
  KEY `REPORT_VIEWED_PRODUCT_INDEX_ADDED_AT` (`added_at`),
  KEY `REPORT_VIEWED_PRODUCT_INDEX_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1138 DEFAULT CHARSET=utf8 COMMENT='Reports Viewed Product Index Table';

--
-- Dumping data for table `report_viewed_product_index`
--

LOCK TABLES `report_viewed_product_index` WRITE;
/*!40000 ALTER TABLE `report_viewed_product_index` DISABLE KEYS */;
INSERT INTO `report_viewed_product_index` VALUES (1,'8',NULL,'1',1,'2017-07-22 10:45:07'),(2,NULL,'1','1',2,'2017-07-26 21:19:35'),(4,'75',NULL,'1',2,'2017-07-29 16:19:20'),(5,'77',NULL,'1',3,'2017-07-29 20:59:12'),(6,'113',NULL,'1',2,'2017-08-02 09:50:10'),(11,'118',NULL,'1',2,'2017-08-02 10:29:31'),(12,'121',NULL,'1',2,'2017-08-02 10:47:41'),(20,'122',NULL,'1',2,'2017-08-02 11:29:10'),(21,'123',NULL,'1',2,'2017-08-02 11:30:44'),(31,'124',NULL,'1',2,'2017-08-02 12:32:36'),(32,'127',NULL,'1',2,'2017-08-02 12:48:51'),(41,'133',NULL,'1',2,'2017-08-02 13:39:53'),(66,'136',NULL,'1',2,'2017-08-02 20:15:42'),(68,'138',NULL,'1',2,'2017-08-02 20:22:31'),(69,'140',NULL,'1',2,'2017-08-02 20:28:41'),(80,'144',NULL,'1',2,'2017-08-02 21:29:30'),(86,'146',NULL,'1',2,'2017-08-02 22:24:39'),(87,'148',NULL,'1',2,'2017-08-02 22:25:43'),(91,'148',NULL,'3',2,'2017-08-02 22:53:12'),(92,'153',NULL,'1',2,'2017-08-02 23:32:15'),(93,'153',NULL,'4',2,'2017-08-02 23:32:16'),(110,'155',NULL,'1',2,'2017-08-03 07:09:45'),(111,'162',NULL,'1',2,'2017-08-03 07:18:54'),(117,'167',NULL,'1',2,'2017-08-03 09:36:23'),(126,'170',NULL,'1',2,'2017-08-03 10:36:33'),(129,'171',NULL,'1',2,'2017-08-03 12:06:21'),(130,'172',NULL,'1',2,'2017-08-03 12:07:44'),(147,'176',NULL,'1',2,'2017-08-03 13:22:13'),(163,'179',NULL,'1',2,'2017-08-03 18:34:55'),(167,'183',NULL,'1',2,'2017-08-03 20:19:18'),(171,'186',NULL,'1',2,'2017-08-03 20:44:19'),(182,'189',NULL,'1',2,'2017-08-03 21:39:40'),(186,'189',NULL,'5',2,'2017-08-03 22:11:34'),(187,'191',NULL,'1',2,'2017-08-04 07:47:48'),(188,'196',NULL,'1',2,'2017-08-04 15:30:41'),(189,'198',NULL,'1',2,'2017-08-04 15:31:38'),(205,'201',NULL,'1',2,'2017-08-04 16:34:55'),(206,'202',NULL,'1',2,'2017-08-04 16:35:30'),(218,'206',NULL,'1',2,'2017-08-07 12:54:44'),(219,'208',NULL,'1',2,'2017-08-07 13:08:08'),(228,'211',NULL,'1',2,'2017-08-07 14:00:53'),(229,'214',NULL,'1',2,'2017-08-07 14:01:33'),(236,'214',NULL,'5',2,'2017-08-07 14:09:04'),(238,'216',NULL,'1',2,'2017-08-07 16:09:13'),(239,'217',NULL,'1',2,'2017-08-07 16:09:57'),(253,'217',NULL,'2',2,'2017-08-07 17:07:32'),(254,'217',NULL,'8',2,'2017-08-07 17:08:39'),(255,'225',NULL,'1',2,'2017-08-08 17:29:59'),(256,'228',NULL,'1',2,'2017-08-08 17:31:23'),(283,'230',NULL,'1',2,'2017-08-08 18:41:24'),(284,'232',NULL,'1',2,'2017-08-08 18:42:15'),(285,'234',NULL,'1',2,'2017-08-08 18:46:14'),(286,'235',NULL,'1',2,'2017-08-08 18:50:24'),(287,'237',NULL,'1',2,'2017-08-08 18:52:55'),(288,'238',NULL,'1',2,'2017-08-08 18:54:29'),(289,'240',NULL,'1',2,'2017-08-08 19:00:07'),(290,'242',NULL,'1',2,'2017-08-08 19:11:07'),(291,'244',NULL,'1',2,'2017-08-08 19:12:22'),(292,'246',NULL,'1',2,'2017-08-08 19:15:48'),(293,'248',NULL,'1',2,'2017-08-08 19:17:23'),(294,'250',NULL,'1',2,'2017-08-08 19:18:05'),(295,'252',NULL,'1',2,'2017-08-08 19:18:40'),(296,'254',NULL,'1',2,'2017-08-08 19:19:20'),(297,'256',NULL,'1',2,'2017-08-08 19:20:06'),(298,'258',NULL,'1',2,'2017-08-08 19:20:43'),(299,'260',NULL,'1',2,'2017-08-08 19:23:02'),(300,'262',NULL,'1',2,'2017-08-08 19:23:56'),(301,'264',NULL,'1',2,'2017-08-08 19:25:44'),(302,'269',NULL,'1',2,'2017-08-09 21:07:10'),(303,'272',NULL,'2',2,'2017-08-09 21:43:27'),(304,'280',NULL,'1',2,'2017-08-11 12:06:47'),(305,'282',NULL,'1',2,'2017-08-11 12:52:28'),(306,'286',NULL,'1',2,'2017-08-11 13:31:41'),(323,'288',NULL,'1',2,'2017-08-11 15:05:47'),(324,'290',NULL,'1',2,'2017-08-11 15:07:42'),(332,'293',NULL,'1',2,'2017-08-11 16:18:36'),(333,'293',NULL,'3',2,'2017-08-11 16:20:56'),(341,'296',NULL,'1',2,'2017-08-11 18:21:53'),(342,'297',NULL,'1',2,'2017-08-11 18:32:15'),(346,'302',NULL,'1',2,'2017-08-11 19:29:06'),(353,'305',NULL,'1',2,'2017-08-11 20:53:02'),(361,'307',NULL,'1',2,'2017-08-12 07:04:40'),(362,'310',NULL,'1',2,'2017-08-12 07:05:07'),(364,'312',NULL,'1',2,'2017-08-12 11:54:47'),(365,'314',NULL,'1',2,'2017-08-12 11:55:44'),(375,'317',NULL,'1',2,'2017-08-12 14:33:28'),(376,'319',NULL,'1',2,'2017-08-12 14:36:23'),(379,'319',NULL,'6',2,'2017-08-12 14:43:50'),(384,'322',NULL,'1',2,'2017-08-12 15:55:36'),(389,'325',NULL,'1',2,'2017-08-12 16:39:37'),(404,'329',NULL,'1',2,'2017-08-12 17:38:42'),(405,'334',NULL,'1',2,'2017-08-12 17:39:02'),(406,'333',NULL,'1',2,'2017-08-12 17:42:13'),(418,'335',NULL,'1',2,'2017-08-12 18:43:17'),(420,'337',NULL,'1',2,'2017-08-12 19:53:42'),(437,'341',NULL,'1',2,'2017-08-13 07:49:15'),(438,'344',NULL,'1',2,'2017-08-13 09:02:41'),(443,'351',NULL,'2',2,'2017-08-13 10:20:00'),(444,'352',NULL,'3',2,'2017-08-13 10:20:01'),(445,'353',NULL,'5',2,'2017-08-13 10:20:02'),(446,NULL,'1','6',2,'2017-08-13 10:21:32'),(447,NULL,'1','7',3,'2017-08-13 10:21:33'),(449,NULL,'1','3',3,'2017-08-13 10:26:53'),(452,NULL,'1','2',3,'2017-08-13 10:35:35'),(454,NULL,'1','5',3,'2017-08-13 10:35:38'),(455,NULL,'1','8',2,'2017-08-13 10:35:42'),(457,NULL,'1','9',2,'2017-08-13 10:35:46'),(465,'357',NULL,'1',2,'2017-08-13 10:46:44'),(466,'357',NULL,'3',2,'2017-08-13 10:54:05'),(469,'357',NULL,'2',2,'2017-08-13 10:57:54'),(471,'357',NULL,'5',2,'2017-08-13 10:58:03'),(472,'357',NULL,'6',2,'2017-08-13 10:58:09'),(473,'357',NULL,'7',2,'2017-08-13 10:58:17'),(475,'357',NULL,'8',2,'2017-08-13 10:59:07'),(476,'357',NULL,'9',2,'2017-08-13 10:59:11'),(490,'358',NULL,'1',2,'2017-08-13 11:35:33'),(491,'360',NULL,'1',2,'2017-08-13 11:46:13'),(492,'362',NULL,'1',2,'2017-08-13 11:48:32'),(496,'362',NULL,'2',2,'2017-08-13 11:56:51'),(497,'362',NULL,'3',2,'2017-08-13 11:56:54'),(498,'362',NULL,'5',2,'2017-08-13 11:56:57'),(499,'362',NULL,'8',2,'2017-08-13 11:57:02'),(500,'362',NULL,'9',2,'2017-08-13 11:57:04'),(502,'362',NULL,'6',2,'2017-08-13 11:57:11'),(503,'362',NULL,'7',2,'2017-08-13 11:57:15'),(535,'368',NULL,'1',2,'2017-08-13 12:47:58'),(537,'368',NULL,'7',2,'2017-08-13 12:48:58'),(538,'368',NULL,'2',2,'2017-08-13 12:49:51'),(539,'368',NULL,'3',2,'2017-08-13 12:49:55'),(540,'368',NULL,'5',2,'2017-08-13 12:49:59'),(541,'368',NULL,'6',2,'2017-08-13 12:50:06'),(543,'368',NULL,'8',2,'2017-08-13 12:50:20'),(578,'369',NULL,'2',2,'2017-08-13 14:06:38'),(580,'369',NULL,'1',2,'2017-08-13 14:07:29'),(588,'369',NULL,'3',2,'2017-08-13 14:11:55'),(589,'369',NULL,'5',2,'2017-08-13 14:11:59'),(590,'369',NULL,'6',2,'2017-08-13 14:12:06'),(591,'369',NULL,'7',2,'2017-08-13 14:12:12'),(592,'369',NULL,'8',2,'2017-08-13 14:12:19'),(593,'369',NULL,'9',2,'2017-08-13 14:12:26'),(609,'370',NULL,'2',2,'2017-08-13 14:40:38'),(610,'371',NULL,'2',2,'2017-08-13 14:40:38'),(611,'371',NULL,'1',2,'2017-08-13 14:41:39'),(621,'372',NULL,'8',2,'2017-08-13 15:15:53'),(622,'372',NULL,'1',2,'2017-08-13 15:16:19'),(626,'373',NULL,'1',2,'2017-08-14 06:29:52'),(627,'373',NULL,'8',2,'2017-08-14 06:30:19'),(631,'373',NULL,'2',2,'2017-08-14 06:33:25'),(640,'374',NULL,'8',2,'2017-08-14 08:07:19'),(642,'374',NULL,'1',2,'2017-08-14 08:10:44'),(665,'375',NULL,'1',2,'2017-08-14 09:08:01'),(666,'375',NULL,'8',2,'2017-08-14 09:12:14'),(671,'377',NULL,'1',2,'2017-08-14 10:12:54'),(679,'380',NULL,'1',2,'2017-08-14 11:36:47'),(695,'381',NULL,'1',2,'2017-08-14 12:38:46'),(698,'382',NULL,'1',2,'2017-08-14 18:43:48'),(720,'383',NULL,'1',2,'2017-08-14 19:44:34'),(726,'383',NULL,'5',2,'2017-08-14 19:48:02'),(727,'383',NULL,'2',2,'2017-08-14 19:48:05'),(728,'383',NULL,'3',2,'2017-08-14 19:48:10'),(733,'384',NULL,'5',2,'2017-08-15 06:29:18'),(735,'386',NULL,'1',2,'2017-08-15 08:19:58'),(749,'388',NULL,'1',2,'2017-08-15 08:31:51'),(752,'388',NULL,'2',2,'2017-08-15 08:36:10'),(754,'390',NULL,'3',2,'2017-08-15 12:50:51'),(757,'390',NULL,'1',2,'2017-08-15 12:52:12'),(762,'391',NULL,'1',2,'2017-08-15 13:33:22'),(771,'392',NULL,'1',2,'2017-08-15 13:36:54'),(776,'393',NULL,'1',2,'2017-08-15 13:51:46'),(777,'394',NULL,'1',2,'2017-08-15 13:57:26'),(781,'395',NULL,'1',2,'2017-08-15 14:01:50'),(785,'396',NULL,'1',2,'2017-08-15 14:58:02'),(786,'399',NULL,'1',2,'2017-08-15 15:04:08'),(799,'398',NULL,'1',2,'2017-08-15 15:20:45'),(814,'400',NULL,'1',2,'2017-08-15 15:59:27'),(815,'401',NULL,'1',2,'2017-08-15 16:07:41'),(816,'402',NULL,'1',2,'2017-08-15 17:04:48'),(823,'403',NULL,'1',2,'2017-08-15 19:49:30'),(842,'404',NULL,'1',2,'2017-08-15 21:48:29'),(856,'405',NULL,'1',2,'2017-08-16 06:36:16'),(865,'406',NULL,'1',2,'2017-08-16 07:39:11'),(872,'407',NULL,'1',2,'2017-08-16 20:19:04'),(899,'408',NULL,'1',2,'2017-08-16 21:23:48'),(910,'409',NULL,'1',2,'2017-08-17 06:23:19'),(913,'409',NULL,'2',2,'2017-08-17 06:26:39'),(915,'409',NULL,'3',2,'2017-08-17 06:26:45'),(916,'409',NULL,'6',2,'2017-08-17 06:26:49'),(917,'409',NULL,'5',2,'2017-08-17 06:27:13'),(918,'409',NULL,'7',2,'2017-08-17 06:27:17'),(919,'409',NULL,'8',2,'2017-08-17 06:27:20'),(920,'409',NULL,'9',2,'2017-08-17 06:27:24'),(947,'410',NULL,'1',2,'2017-08-17 07:23:44'),(948,'410',NULL,'2',2,'2017-08-17 07:23:58'),(949,'410',NULL,'3',2,'2017-08-17 07:24:01'),(950,'410',NULL,'5',2,'2017-08-17 07:24:04'),(951,'410',NULL,'6',2,'2017-08-17 07:24:06'),(952,'410',NULL,'7',2,'2017-08-17 07:24:09'),(953,'410',NULL,'8',2,'2017-08-17 07:24:11'),(954,'410',NULL,'9',2,'2017-08-17 07:24:16'),(978,'411',NULL,'1',2,'2017-08-17 08:24:22'),(979,'411',NULL,'2',2,'2017-08-17 08:24:33'),(985,'411',NULL,'3',2,'2017-08-17 08:26:22'),(986,'411',NULL,'5',2,'2017-08-17 08:26:25'),(987,'411',NULL,'6',2,'2017-08-17 08:26:28'),(988,'411',NULL,'7',2,'2017-08-17 08:26:30'),(989,'411',NULL,'8',2,'2017-08-17 08:26:34'),(990,'411',NULL,'9',2,'2017-08-17 08:26:37'),(1001,'413',NULL,'1',3,'2017-08-17 09:38:46'),(1003,'413',NULL,'2',2,'2017-08-17 09:39:18'),(1007,'414',NULL,'1',3,'2017-08-17 10:54:08'),(1008,'415',NULL,'1',2,'2017-08-17 11:10:20'),(1020,'415',NULL,'3',3,'2017-08-17 11:34:14'),(1026,'416',NULL,'1',3,'2017-08-17 12:06:28'),(1034,'416',NULL,'2',3,'2017-08-17 12:45:48'),(1035,'416',NULL,'3',3,'2017-08-17 12:45:51'),(1036,'416',NULL,'5',3,'2017-08-17 12:45:55'),(1037,'416',NULL,'6',3,'2017-08-17 12:45:58'),(1038,'416',NULL,'7',3,'2017-08-17 12:46:01'),(1040,'416',NULL,'8',3,'2017-08-17 12:46:25'),(1041,'416',NULL,'9',3,'2017-08-17 12:46:27'),(1082,NULL,'1','4',2,'2017-08-17 13:58:09'),(1087,'420',NULL,'1',2,'2017-08-17 14:05:29'),(1088,'421',NULL,'1',3,'2017-08-17 18:31:47'),(1090,'423',NULL,'1',2,'2017-08-18 07:34:23'),(1092,'424',NULL,'1',2,'2017-08-18 11:20:37'),(1093,'435',NULL,'1',2,'2017-08-25 09:16:35'),(1094,'435',NULL,'6',2,'2017-08-25 09:17:08'),(1104,'438',NULL,'1',2,'2017-08-25 18:28:05'),(1114,'439',NULL,'1',2,'2017-08-25 20:00:15'),(1118,'440',NULL,'1',2,'2017-08-25 20:17:59'),(1119,'441',NULL,'1',2,'2017-08-25 20:18:59'),(1127,'442',NULL,'1',2,'2017-08-25 20:46:52'),(1134,'443',NULL,'1',2,'2017-08-25 22:03:40');
/*!40000 ALTER TABLE `report_viewed_product_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reporting_counts`
--

DROP TABLE IF EXISTS `reporting_counts`;
CREATE TABLE `reporting_counts` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `type` varchar(255) DEFAULT NULL COMMENT 'Item Reported',
  `count` int(10) unsigned DEFAULT NULL COMMENT 'Count Value',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reporting for all count related events generated via the cron job';

--
-- Table structure for table `reporting_module_status`
--

DROP TABLE IF EXISTS `reporting_module_status`;
CREATE TABLE `reporting_module_status` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Module Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Module Name',
  `active` varchar(255) DEFAULT NULL COMMENT 'Module Active Status',
  `setup_version` varchar(255) DEFAULT NULL COMMENT 'Module Version',
  `state` varchar(255) DEFAULT NULL COMMENT 'Module State',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Module Status Table';

--
-- Table structure for table `reporting_orders`
--

DROP TABLE IF EXISTS `reporting_orders`;
CREATE TABLE `reporting_orders` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `total` decimal(20,2) DEFAULT NULL COMMENT 'Total From Store',
  `total_base` decimal(20,2) DEFAULT NULL COMMENT 'Total From Base Currency',
  `item_count` int(10) unsigned NOT NULL COMMENT 'Line Item Count',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reporting for all orders';

--
-- Table structure for table `reporting_system_updates`
--

DROP TABLE IF EXISTS `reporting_system_updates`;
CREATE TABLE `reporting_system_updates` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `type` varchar(255) DEFAULT NULL COMMENT 'Update Type',
  `action` varchar(255) DEFAULT NULL COMMENT 'Action Performed',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reporting for system updates';

--
-- Table structure for table `reporting_users`
--

DROP TABLE IF EXISTS `reporting_users`;
CREATE TABLE `reporting_users` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `type` varchar(255) DEFAULT NULL COMMENT 'User Type',
  `action` varchar(255) DEFAULT NULL COMMENT 'Action Performed',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reporting for user actions';

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
CREATE TABLE `review` (
  `review_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Review id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Review create date',
  `entity_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity id',
  `entity_pk_value` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `status_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Status code',
  PRIMARY KEY (`review_id`),
  KEY `REVIEW_ENTITY_ID` (`entity_id`),
  KEY `REVIEW_STATUS_ID` (`status_id`),
  KEY `REVIEW_ENTITY_PK_VALUE` (`entity_pk_value`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='Review base information';

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,'2017-08-12 13:42:41',1,'1',1),(2,'2017-08-12 13:50:03',1,'1',1),(3,'2017-08-12 22:38:36',1,'1',1),(4,'2017-08-12 22:41:07',1,'1',1),(5,'2017-08-12 22:41:41',1,'1',1),(6,'2017-08-13 12:23:19',1,'2',1),(7,'2017-08-13 12:29:58',1,'3',1),(8,'2017-08-13 12:30:58',1,'4',1),(9,'2017-08-13 12:32:04',1,'5',1),(10,'2017-08-13 12:33:45',1,'6',1),(11,'2017-08-13 12:34:50',1,'7',1),(12,'2017-08-13 12:38:30',1,'8',1);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_detail`
--

DROP TABLE IF EXISTS `review_detail`;
CREATE TABLE `review_detail` (
  `detail_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Review detail id',
  `review_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Review id',
  `store_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Store id',
  `title` varchar(255) NOT NULL COMMENT 'Title',
  `detail` text NOT NULL COMMENT 'Detail description',
  `nickname` varchar(128) NOT NULL COMMENT 'User nickname',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  PRIMARY KEY (`detail_id`),
  KEY `REVIEW_DETAIL_REVIEW_ID` (`review_id`),
  KEY `REVIEW_DETAIL_STORE_ID` (`store_id`),
  KEY `REVIEW_DETAIL_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='Review detail information';

--
-- Dumping data for table `review_detail`
--

LOCK TABLES `review_detail` WRITE;
/*!40000 ALTER TABLE `review_detail` DISABLE KEYS */;
INSERT INTO `review_detail` VALUES (1,1,2,'хорошая батарея, и вообще неплохой смартфон','У Huawei краща основна камера ніж в Lenovo при тому, що Lenovo ніколи не були сильні в плані фото, а також у y6 pro кращий процесор (вища частота) і, як кажуть, краща оптимізація, що позитивно впливає на тривалість роботи. До того ж, мені здається, що у Huawei менше проблем по якості ніж у Lenovo. Захист від бризг у Р1m є скоріше рекламним трюком ніж реальним захистом та і потреба в ньому виникає не часто.','Владимир',NULL),(2,2,2,'хорошая батарея, и вообще неплохой смартфон','У Huawei краща основна камера ніж в Lenovo при тому, що Lenovo ніколи не були сильні в плані фото, а також у y6 pro кращий процесор (вища частота) і, як кажуть, краща оптимізація, що позитивно впливає на тривалість роботи. До того ж, мені здається, що у Huawei менше проблем по якості ніж у Lenovo. Захист від бризг у Р1m є скоріше рекламним трюком ніж реальним захистом та і потреба в ньому виникає не часто.','Панас',NULL),(3,3,2,'хорошая батарея, и вообще неплохой смартфон','У Huawei краща основна камера ніж в Lenovo при тому, що Lenovo ніколи не були сильні в плані фото, а також у y6 pro кращий процесор (вища частота) і, як кажуть, краща оптимізація, що позитивно впливає на тривалість роботи. До того ж, мені здається, що у Huawei менше проблем по якості ніж у Lenovo. Захист від бризг у Р1m є скоріше рекламним трюком ніж реальним захистом та і потреба в ньому виникає не часто.','Анастасия',NULL),(4,4,0,'хорошая батарея, и вообще неплохой смартфон','У Huawei краща основна камера ніж в Lenovo при тому, що Lenovo ніколи не були сильні в плані фото, а також у y6 pro кращий процесор (вища частота) і, як кажуть, краща оптимізація, що позитивно впливає на тривалість роботи. До того ж, мені здається, що у Huawei менше проблем по якості ніж у Lenovo. Захист від бризг у Р1m є скоріше рекламним трюком ніж реальним захистом та і потреба в ньому виникає не часто.\r\n\r\nУ Huawei краща основна камера ніж в Lenovo при тому, що Lenovo ніколи не були сильні в плані фото, а також у y6 pro кращий процесор (вища частота) і, як кажуть, краща оптимізація, що позитивно впливає на тривалість роботи. До того ж, мені здається, що у Huawei менше проблем по якості ніж у Lenovo. Захист від бризг у Р1m є скоріше рекламним трюком ніж реальним захистом та і потреба в ньому виникає не часто.\r\n\r\nУ Huawei краща основна камера ніж в Lenovo при тому, що Lenovo ніколи не були сильні в плані фото, а також у y6 pro кращий процесор (вища частота) і, як кажуть, краща оптимізація, що позитивно впливає на тривалість роботи. До того ж, мені здається, що у Huawei менше проблем по якості ніж у Lenovo. Захист від бризг у Р1m є скоріше рекламним трюком ніж реальним захистом та і потреба в ньому виникає не часто.','Владимир',NULL),(5,5,0,'хорошая батарея, и вообще неплохой смартфон','У Huawei краща основна камера ніж в Lenovo при тому, що Lenovo ніколи не були сильні в плані фото, а також у y6 pro кращий процесор (вища частота) і, як кажуть, краща оптимізація, що позитивно впливає на тривалість роботи. До того ж, мені здається, що у Huawei менше проблем по якості ніж у Lenovo. Захист від бризг у Р1m є скоріше рекламним трюком ніж реальним захистом та і потреба в ньому виникає не часто.','Анастасия',NULL),(6,6,0,'хорошая батарея, и вообще неплохой смартфон','У Huawei краща основна камера ніж в Lenovo при тому, що Lenovo ніколи не були сильні в плані фото, а також у y6 pro кращий процесор (вища частота) і, як кажуть, краща оптимізація, що позитивно впливає на тривалість роботи. До того ж, мені здається, що у Huawei менше проблем по якості ніж у Lenovo. Захист від бризг у Р1m є скоріше рекламним трюком ніж реальним захистом та і потреба в ньому виникає не часто.','Анастасия',NULL),(7,7,0,'хорошая батарея, и вообще неплохой смартфон','У Huawei краща основна камера ніж в Lenovo при тому, що Lenovo ніколи не були сильні в плані фото, а також у y6 pro кращий процесор (вища частота) і, як кажуть, краща оптимізація, що позитивно впливає на тривалість роботи. До того ж, мені здається, що у Huawei менше проблем по якості ніж у Lenovo. Захист від бризг у Р1m є скоріше рекламним трюком ніж реальним захистом та і потреба в ньому виникає не часто.','Владимир',NULL),(8,8,0,'хорошая батарея, и вообще неплохой смартфон','У Huawei краща основна камера ніж в Lenovo при тому, що Lenovo ніколи не були сильні в плані фото, а також у y6 pro кращий процесор (вища частота) і, як кажуть, краща оптимізація, що позитивно впливає на тривалість роботи. До того ж, мені здається, що у Huawei менше проблем по якості ніж у Lenovo. Захист від бризг у Р1m є скоріше рекламним трюком ніж реальним захистом та і потреба в ньому виникає не часто.','Анастасия',NULL),(9,9,0,'хорошая батарея, и вообще неплохой смартфон','У Huawei краща основна камера ніж в Lenovo при тому, що Lenovo ніколи не були сильні в плані фото, а також у y6 pro кращий процесор (вища частота) і, як кажуть, краща оптимізація, що позитивно впливає на тривалість роботи. До того ж, мені здається, що у Huawei менше проблем по якості ніж у Lenovo. Захист від бризг у Р1m є скоріше рекламним трюком ніж реальним захистом та і потреба в ньому виникає не часто.','Анастасия',NULL),(10,10,0,'хорошая батарея, и вообще неплохой смартфон','У Huawei краща основна камера ніж в Lenovo при тому, що Lenovo ніколи не були сильні в плані фото, а також у y6 pro кращий процесор (вища частота) і, як кажуть, краща оптимізація, що позитивно впливає на тривалість роботи. До того ж, мені здається, що у Huawei менше проблем по якості ніж у Lenovo. Захист від бризг у Р1m є скоріше рекламним трюком ніж реальним захистом та і потреба в ньому виникає не часто.','Анастасия',NULL),(11,11,0,'хорошая батарея, и вообще неплохой смартфон','У Huawei краща основна камера ніж в Lenovo при тому, що Lenovo ніколи не були сильні в плані фото, а також у y6 pro кращий процесор (вища частота) і, як кажуть, краща оптимізація, що позитивно впливає на тривалість роботи. До того ж, мені здається, що у Huawei менше проблем по якості ніж у Lenovo. Захист від бризг у Р1m є скоріше рекламним трюком ніж реальним захистом та і потреба в ньому виникає не часто.','Анастасия',NULL),(12,12,0,'хорошая батарея, и вообще неплохой смартфон','У Huawei краща основна камера ніж в Lenovo при тому, що Lenovo ніколи не були сильні в плані фото, а також у y6 pro кращий процесор (вища частота) і, як кажуть, краща оптимізація, що позитивно впливає на тривалість роботи. До того ж, мені здається, що у Huawei менше проблем по якості ніж у Lenovo. Захист від бризг у Р1m є скоріше рекламним трюком ніж реальним захистом та і потреба в ньому виникає не часто.','Анастасия',NULL);
/*!40000 ALTER TABLE `review_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_entity`
--

DROP TABLE IF EXISTS `review_entity`;
CREATE TABLE `review_entity` (
  `entity_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Review entity id',
  `entity_code` varchar(32) NOT NULL COMMENT 'Review entity code',
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Review entities';

--
-- Dumping data for table `review_entity`
--

LOCK TABLES `review_entity` WRITE;
/*!40000 ALTER TABLE `review_entity` DISABLE KEYS */;
INSERT INTO `review_entity` VALUES (1,'product'),(2,'customer'),(3,'category');
/*!40000 ALTER TABLE `review_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_entity_summary`
--

DROP TABLE IF EXISTS `review_entity_summary`;
CREATE TABLE `review_entity_summary` (
  `primary_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Summary review entity id',
  `entity_pk_value` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Product id',
  `entity_type` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Entity type id',
  `reviews_count` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Qty of reviews',
  `rating_summary` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Summarized rating',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id',
  PRIMARY KEY (`primary_id`),
  KEY `REVIEW_ENTITY_SUMMARY_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='Review aggregates';

--
-- Dumping data for table `review_entity_summary`
--

LOCK TABLES `review_entity_summary` WRITE;
/*!40000 ALTER TABLE `review_entity_summary` DISABLE KEYS */;
INSERT INTO `review_entity_summary` VALUES (1,1,1,5,84,2),(2,1,1,4,80,3),(3,1,1,4,80,1),(4,1,1,5,84,0),(5,2,1,1,60,2),(6,2,1,1,60,3),(7,2,1,1,60,1),(8,2,1,1,60,0),(9,3,1,1,80,0),(10,3,1,1,80,1),(11,3,1,1,80,2),(12,3,1,1,80,3),(13,4,1,1,60,0),(14,4,1,1,60,1),(15,4,1,1,60,2),(16,4,1,1,60,3),(17,5,1,1,100,0),(18,5,1,1,100,1),(19,5,1,1,100,2),(20,5,1,1,100,3),(21,6,1,1,80,0),(22,6,1,1,80,1),(23,6,1,1,80,2),(24,6,1,1,80,3),(25,7,1,1,100,2),(26,7,1,1,100,3),(27,7,1,1,100,1),(28,8,1,1,90,0),(29,8,1,1,90,1),(30,8,1,1,90,2),(31,8,1,1,90,3),(32,7,1,1,100,0);
/*!40000 ALTER TABLE `review_entity_summary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_status`
--

DROP TABLE IF EXISTS `review_status`;
CREATE TABLE `review_status` (
  `status_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Status id',
  `status_code` varchar(32) NOT NULL COMMENT 'Status code',
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Review statuses';

--
-- Dumping data for table `review_status`
--

LOCK TABLES `review_status` WRITE;
/*!40000 ALTER TABLE `review_status` DISABLE KEYS */;
INSERT INTO `review_status` VALUES (1,'Approved'),(2,'Pending'),(3,'Not Approved');
/*!40000 ALTER TABLE `review_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_store`
--

DROP TABLE IF EXISTS `review_store`;
CREATE TABLE `review_store` (
  `review_id` bigint(20) unsigned NOT NULL COMMENT 'Review Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  PRIMARY KEY (`review_id`,`store_id`),
  KEY `REVIEW_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review Store';

--
-- Dumping data for table `review_store`
--

LOCK TABLES `review_store` WRITE;
/*!40000 ALTER TABLE `review_store` DISABLE KEYS */;
INSERT INTO `review_store` VALUES (1,0),(2,0),(3,0),(4,0),(5,0),(6,0),(7,0),(8,0),(9,0),(10,0),(11,0),(12,0),(1,1),(2,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(1,2),(2,2),(3,2),(4,2),(5,2),(6,2),(7,2),(8,2),(9,2),(10,2),(11,2),(12,2),(1,3),(2,3),(4,3),(5,3),(6,3),(7,3),(8,3),(9,3),(10,3),(11,3),(12,3);
/*!40000 ALTER TABLE `review_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_bestsellers_aggregated_daily`
--

DROP TABLE IF EXISTS `sales_bestsellers_aggregated_daily`;
CREATE TABLE `sales_bestsellers_aggregated_daily` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SALES_BESTSELLERS_AGGREGATED_DAILY_PERIOD_STORE_ID_PRODUCT_ID` (`period`,`store_id`,`product_id`),
  KEY `SALES_BESTSELLERS_AGGREGATED_DAILY_STORE_ID` (`store_id`),
  KEY `SALES_BESTSELLERS_AGGREGATED_DAILY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Daily';

--
-- Table structure for table `sales_bestsellers_aggregated_monthly`
--

DROP TABLE IF EXISTS `sales_bestsellers_aggregated_monthly`;
CREATE TABLE `sales_bestsellers_aggregated_monthly` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SALES_BESTSELLERS_AGGREGATED_MONTHLY_PERIOD_STORE_ID_PRODUCT_ID` (`period`,`store_id`,`product_id`),
  KEY `SALES_BESTSELLERS_AGGREGATED_MONTHLY_STORE_ID` (`store_id`),
  KEY `SALES_BESTSELLERS_AGGREGATED_MONTHLY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Monthly';

--
-- Table structure for table `sales_bestsellers_aggregated_yearly`
--

DROP TABLE IF EXISTS `sales_bestsellers_aggregated_yearly`;
CREATE TABLE `sales_bestsellers_aggregated_yearly` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SALES_BESTSELLERS_AGGREGATED_YEARLY_PERIOD_STORE_ID_PRODUCT_ID` (`period`,`store_id`,`product_id`),
  KEY `SALES_BESTSELLERS_AGGREGATED_YEARLY_STORE_ID` (`store_id`),
  KEY `SALES_BESTSELLERS_AGGREGATED_YEARLY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Yearly';

--
-- Table structure for table `sales_creditmemo`
--

DROP TABLE IF EXISTS `sales_creditmemo`;
CREATE TABLE `sales_creditmemo` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Positive',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `base_adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Negative',
  `base_subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Negative',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_adjustment` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `adjustment` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Positive',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `email_sent` smallint(5) unsigned DEFAULT NULL COMMENT 'Email Sent',
  `send_email` smallint(5) unsigned DEFAULT NULL COMMENT 'Send Email',
  `creditmemo_status` int(11) DEFAULT NULL COMMENT 'Creditmemo Status',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `invoice_id` int(11) DEFAULT NULL COMMENT 'Invoice Id',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `transaction_id` varchar(255) DEFAULT NULL COMMENT 'Transaction Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `shipping_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Tax Compensation Amount',
  `base_shipping_discount_tax_compensation_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Tax Compensation Amount',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `customer_note` text COMMENT 'Customer Note',
  `customer_note_notify` smallint(5) unsigned DEFAULT NULL COMMENT 'Customer Note Notify',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `SALES_CREDITMEMO_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  KEY `SALES_CREDITMEMO_STORE_ID` (`store_id`),
  KEY `SALES_CREDITMEMO_ORDER_ID` (`order_id`),
  KEY `SALES_CREDITMEMO_CREDITMEMO_STATUS` (`creditmemo_status`),
  KEY `SALES_CREDITMEMO_STATE` (`state`),
  KEY `SALES_CREDITMEMO_CREATED_AT` (`created_at`),
  KEY `SALES_CREDITMEMO_UPDATED_AT` (`updated_at`),
  KEY `SALES_CREDITMEMO_SEND_EMAIL` (`send_email`),
  KEY `SALES_CREDITMEMO_EMAIL_SENT` (`email_sent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo';

--
-- Table structure for table `sales_creditmemo_comment`
--

DROP TABLE IF EXISTS `sales_creditmemo_comment`;
CREATE TABLE `sales_creditmemo_comment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` int(11) DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  PRIMARY KEY (`entity_id`),
  KEY `SALES_CREDITMEMO_COMMENT_CREATED_AT` (`created_at`),
  KEY `SALES_CREDITMEMO_COMMENT_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo Comment';

--
-- Table structure for table `sales_creditmemo_grid`
--

DROP TABLE IF EXISTS `sales_creditmemo_grid`;
CREATE TABLE `sales_creditmemo_grid` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment Id',
  `order_created_at` timestamp NULL DEFAULT NULL COMMENT 'Order Created At',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name',
  `state` int(11) DEFAULT NULL COMMENT 'Status',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `order_status` varchar(32) DEFAULT NULL COMMENT 'Order Status',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `billing_address` varchar(255) DEFAULT NULL COMMENT 'Billing Address',
  `shipping_address` varchar(255) DEFAULT NULL COMMENT 'Shipping Address',
  `customer_name` varchar(128) NOT NULL COMMENT 'Customer Name',
  `customer_email` varchar(128) DEFAULT NULL COMMENT 'Customer Email',
  `customer_group_id` smallint(6) DEFAULT NULL COMMENT 'Customer Group Id',
  `payment_method` varchar(32) DEFAULT NULL COMMENT 'Payment Method',
  `shipping_information` varchar(255) DEFAULT NULL COMMENT 'Shipping Method Name',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `shipping_and_handling` decimal(12,4) DEFAULT NULL COMMENT 'Shipping and handling amount',
  `adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Positive',
  `adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Negative',
  `order_base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Order Grand Total',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `SALES_CREDITMEMO_GRID_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  KEY `SALES_CREDITMEMO_GRID_ORDER_INCREMENT_ID` (`order_increment_id`),
  KEY `SALES_CREDITMEMO_GRID_CREATED_AT` (`created_at`),
  KEY `SALES_CREDITMEMO_GRID_UPDATED_AT` (`updated_at`),
  KEY `SALES_CREDITMEMO_GRID_ORDER_CREATED_AT` (`order_created_at`),
  KEY `SALES_CREDITMEMO_GRID_STATE` (`state`),
  KEY `SALES_CREDITMEMO_GRID_BILLING_NAME` (`billing_name`),
  KEY `SALES_CREDITMEMO_GRID_ORDER_STATUS` (`order_status`),
  KEY `SALES_CREDITMEMO_GRID_BASE_GRAND_TOTAL` (`base_grand_total`),
  KEY `SALES_CREDITMEMO_GRID_STORE_ID` (`store_id`),
  KEY `SALES_CREDITMEMO_GRID_ORDER_BASE_GRAND_TOTAL` (`order_base_grand_total`),
  KEY `SALES_CREDITMEMO_GRID_ORDER_ID` (`order_id`),
  FULLTEXT KEY `FTI_32B7BA885941A8254EE84AE650ABDC86` (`increment_id`,`order_increment_id`,`billing_name`,`billing_address`,`shipping_address`,`customer_name`,`customer_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo Grid';

--
-- Table structure for table `sales_creditmemo_item`
--

DROP TABLE IF EXISTS `sales_creditmemo_item`;
CREATE TABLE `sales_creditmemo_item` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_row_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `row_total` decimal(12,4) DEFAULT NULL COMMENT 'Row Total',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `product_id` int(11) DEFAULT NULL COMMENT 'Product Id',
  `order_item_id` int(11) DEFAULT NULL COMMENT 'Order Item Id',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `tax_ratio` text COMMENT 'Ratio of tax in the creditmemo item over tax of the order item',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  PRIMARY KEY (`entity_id`),
  KEY `SALES_CREDITMEMO_ITEM_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo Item';

--
-- Table structure for table `sales_invoice`
--

DROP TABLE IF EXISTS `sales_invoice`;
CREATE TABLE `sales_invoice` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `base_subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `is_used_for_refund` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Used For Refund',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `email_sent` smallint(5) unsigned DEFAULT NULL COMMENT 'Email Sent',
  `send_email` smallint(5) unsigned DEFAULT NULL COMMENT 'Send Email',
  `can_void_flag` smallint(5) unsigned DEFAULT NULL COMMENT 'Can Void Flag',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `transaction_id` varchar(255) DEFAULT NULL COMMENT 'Transaction Id',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `shipping_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Tax Compensation Amount',
  `base_shipping_discount_tax_compensation_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Tax Compensation Amount',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `base_total_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Refunded',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `customer_note` text COMMENT 'Customer Note',
  `customer_note_notify` smallint(5) unsigned DEFAULT NULL COMMENT 'Customer Note Notify',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `SALES_INVOICE_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  KEY `SALES_INVOICE_STORE_ID` (`store_id`),
  KEY `SALES_INVOICE_GRAND_TOTAL` (`grand_total`),
  KEY `SALES_INVOICE_ORDER_ID` (`order_id`),
  KEY `SALES_INVOICE_STATE` (`state`),
  KEY `SALES_INVOICE_CREATED_AT` (`created_at`),
  KEY `SALES_INVOICE_UPDATED_AT` (`updated_at`),
  KEY `SALES_INVOICE_SEND_EMAIL` (`send_email`),
  KEY `SALES_INVOICE_EMAIL_SENT` (`email_sent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice';

--
-- Table structure for table `sales_invoice_comment`
--

DROP TABLE IF EXISTS `sales_invoice_comment`;
CREATE TABLE `sales_invoice_comment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  PRIMARY KEY (`entity_id`),
  KEY `SALES_INVOICE_COMMENT_CREATED_AT` (`created_at`),
  KEY `SALES_INVOICE_COMMENT_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice Comment';

--
-- Table structure for table `sales_invoice_grid`
--

DROP TABLE IF EXISTS `sales_invoice_grid`;
CREATE TABLE `sales_invoice_grid` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `store_name` varchar(255) DEFAULT NULL COMMENT 'Store Name',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment Id',
  `order_created_at` timestamp NULL DEFAULT NULL COMMENT 'Order Created At',
  `customer_name` varchar(255) DEFAULT NULL COMMENT 'Customer Name',
  `customer_email` varchar(255) DEFAULT NULL COMMENT 'Customer Email',
  `customer_group_id` smallint(6) DEFAULT NULL COMMENT 'Customer Group Id',
  `payment_method` varchar(128) DEFAULT NULL COMMENT 'Payment Method',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name',
  `billing_address` varchar(255) DEFAULT NULL COMMENT 'Billing Address',
  `shipping_address` varchar(255) DEFAULT NULL COMMENT 'Shipping Address',
  `shipping_information` varchar(255) DEFAULT NULL COMMENT 'Shipping Method Name',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `shipping_and_handling` decimal(12,4) DEFAULT NULL COMMENT 'Shipping and handling amount',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `SALES_INVOICE_GRID_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  KEY `SALES_INVOICE_GRID_STORE_ID` (`store_id`),
  KEY `SALES_INVOICE_GRID_GRAND_TOTAL` (`grand_total`),
  KEY `SALES_INVOICE_GRID_ORDER_ID` (`order_id`),
  KEY `SALES_INVOICE_GRID_STATE` (`state`),
  KEY `SALES_INVOICE_GRID_ORDER_INCREMENT_ID` (`order_increment_id`),
  KEY `SALES_INVOICE_GRID_CREATED_AT` (`created_at`),
  KEY `SALES_INVOICE_GRID_UPDATED_AT` (`updated_at`),
  KEY `SALES_INVOICE_GRID_ORDER_CREATED_AT` (`order_created_at`),
  KEY `SALES_INVOICE_GRID_BILLING_NAME` (`billing_name`),
  KEY `SALES_INVOICE_GRID_BASE_GRAND_TOTAL` (`base_grand_total`),
  FULLTEXT KEY `FTI_95D9C924DD6A8734EB8B5D01D60F90DE` (`increment_id`,`order_increment_id`,`billing_name`,`billing_address`,`shipping_address`,`customer_name`,`customer_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice Grid';

--
-- Table structure for table `sales_invoice_item`
--

DROP TABLE IF EXISTS `sales_invoice_item`;
CREATE TABLE `sales_invoice_item` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_row_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `row_total` decimal(12,4) DEFAULT NULL COMMENT 'Row Total',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `product_id` int(11) DEFAULT NULL COMMENT 'Product Id',
  `order_item_id` int(11) DEFAULT NULL COMMENT 'Order Item Id',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `tax_ratio` text COMMENT 'Ratio of tax invoiced over tax of the order item',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  PRIMARY KEY (`entity_id`),
  KEY `SALES_INVOICE_ITEM_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice Item';

--
-- Table structure for table `sales_invoiced_aggregated`
--

DROP TABLE IF EXISTS `sales_invoiced_aggregated`;
CREATE TABLE `sales_invoiced_aggregated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `orders_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Orders Invoiced',
  `invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced',
  `invoiced_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Captured',
  `invoiced_not_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Not Captured',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SALES_INVOICED_AGGREGATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `SALES_INVOICED_AGGREGATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Invoiced Aggregated';

--
-- Table structure for table `sales_invoiced_aggregated_order`
--

DROP TABLE IF EXISTS `sales_invoiced_aggregated_order`;
CREATE TABLE `sales_invoiced_aggregated_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `orders_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Orders Invoiced',
  `invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced',
  `invoiced_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Captured',
  `invoiced_not_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Not Captured',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SALES_INVOICED_AGGREGATED_ORDER_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `SALES_INVOICED_AGGREGATED_ORDER_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Invoiced Aggregated Order';

--
-- Table structure for table `sales_order`
--

DROP TABLE IF EXISTS `sales_order`;
CREATE TABLE `sales_order` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `state` varchar(32) DEFAULT NULL COMMENT 'State',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `coupon_code` varchar(255) DEFAULT NULL COMMENT 'Coupon Code',
  `protect_code` varchar(255) DEFAULT NULL COMMENT 'Protect Code',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `is_virtual` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Virtual',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_discount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Canceled',
  `base_discount_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Invoiced',
  `base_discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Refunded',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `base_shipping_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Canceled',
  `base_shipping_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Invoiced',
  `base_shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Refunded',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `base_shipping_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Refunded',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `base_subtotal_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Canceled',
  `base_subtotal_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Invoiced',
  `base_subtotal_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Refunded',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Canceled',
  `base_tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Invoiced',
  `base_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Refunded',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `base_total_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Canceled',
  `base_total_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Invoiced',
  `base_total_invoiced_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Invoiced Cost',
  `base_total_offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Offline Refunded',
  `base_total_online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Online Refunded',
  `base_total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Paid',
  `base_total_qty_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Qty Ordered',
  `base_total_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Refunded',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `discount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Discount Canceled',
  `discount_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Discount Invoiced',
  `discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Discount Refunded',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `shipping_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Canceled',
  `shipping_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Invoiced',
  `shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Refunded',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `shipping_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Refunded',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `subtotal_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Canceled',
  `subtotal_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Invoiced',
  `subtotal_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Refunded',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Tax Canceled',
  `tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Tax Invoiced',
  `tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Tax Refunded',
  `total_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Total Canceled',
  `total_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Total Invoiced',
  `total_offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Total Offline Refunded',
  `total_online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Total Online Refunded',
  `total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Total Paid',
  `total_qty_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty Ordered',
  `total_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Total Refunded',
  `can_ship_partially` smallint(5) unsigned DEFAULT NULL COMMENT 'Can Ship Partially',
  `can_ship_partially_item` smallint(5) unsigned DEFAULT NULL COMMENT 'Can Ship Partially Item',
  `customer_is_guest` smallint(5) unsigned DEFAULT NULL COMMENT 'Customer Is Guest',
  `customer_note_notify` smallint(5) unsigned DEFAULT NULL COMMENT 'Customer Note Notify',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `customer_group_id` smallint(6) DEFAULT NULL COMMENT 'Customer Group Id',
  `edit_increment` int(11) DEFAULT NULL COMMENT 'Edit Increment',
  `email_sent` smallint(5) unsigned DEFAULT NULL COMMENT 'Email Sent',
  `send_email` smallint(5) unsigned DEFAULT NULL COMMENT 'Send Email',
  `forced_shipment_with_invoice` smallint(5) unsigned DEFAULT NULL COMMENT 'Forced Do Shipment With Invoice',
  `payment_auth_expiration` int(11) DEFAULT NULL COMMENT 'Payment Authorization Expiration',
  `quote_address_id` int(11) DEFAULT NULL COMMENT 'Quote Address Id',
  `quote_id` int(11) DEFAULT NULL COMMENT 'Quote Id',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Negative',
  `adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Positive',
  `base_adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Negative',
  `base_adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Positive',
  `base_shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Amount',
  `base_subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `base_total_due` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Due',
  `payment_authorization_amount` decimal(12,4) DEFAULT NULL COMMENT 'Payment Authorization Amount',
  `shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `total_due` decimal(12,4) DEFAULT NULL COMMENT 'Total Due',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `customer_dob` datetime DEFAULT NULL COMMENT 'Customer Dob',
  `increment_id` varchar(32) DEFAULT NULL COMMENT 'Increment Id',
  `applied_rule_ids` varchar(128) DEFAULT NULL COMMENT 'Applied Rule Ids',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `customer_email` varchar(128) DEFAULT NULL COMMENT 'Customer Email',
  `customer_firstname` varchar(128) DEFAULT NULL COMMENT 'Customer Firstname',
  `customer_lastname` varchar(128) DEFAULT NULL COMMENT 'Customer Lastname',
  `customer_middlename` varchar(128) DEFAULT NULL COMMENT 'Customer Middlename',
  `customer_prefix` varchar(32) DEFAULT NULL COMMENT 'Customer Prefix',
  `customer_suffix` varchar(32) DEFAULT NULL COMMENT 'Customer Suffix',
  `customer_taxvat` varchar(32) DEFAULT NULL COMMENT 'Customer Taxvat',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `ext_customer_id` varchar(32) DEFAULT NULL COMMENT 'Ext Customer Id',
  `ext_order_id` varchar(32) DEFAULT NULL COMMENT 'Ext Order Id',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `hold_before_state` varchar(32) DEFAULT NULL COMMENT 'Hold Before State',
  `hold_before_status` varchar(32) DEFAULT NULL COMMENT 'Hold Before Status',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `original_increment_id` varchar(32) DEFAULT NULL COMMENT 'Original Increment Id',
  `relation_child_id` varchar(32) DEFAULT NULL COMMENT 'Relation Child Id',
  `relation_child_real_id` varchar(32) DEFAULT NULL COMMENT 'Relation Child Real Id',
  `relation_parent_id` varchar(32) DEFAULT NULL COMMENT 'Relation Parent Id',
  `relation_parent_real_id` varchar(32) DEFAULT NULL COMMENT 'Relation Parent Real Id',
  `remote_ip` varchar(32) DEFAULT NULL COMMENT 'Remote Ip',
  `shipping_method` varchar(32) DEFAULT NULL COMMENT 'Shipping Method',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `store_name` varchar(32) DEFAULT NULL COMMENT 'Store Name',
  `x_forwarded_for` varchar(32) DEFAULT NULL COMMENT 'X Forwarded For',
  `customer_note` text COMMENT 'Customer Note',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `total_item_count` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Total Item Count',
  `customer_gender` int(11) DEFAULT NULL COMMENT 'Customer Gender',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `shipping_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Tax Compensation Amount',
  `base_shipping_discount_tax_compensation_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Tax Compensation Amount',
  `discount_tax_compensation_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Invoiced',
  `base_discount_tax_compensation_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Invoiced',
  `discount_tax_compensation_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Refunded',
  `base_discount_tax_compensation_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Refunded',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `coupon_rule_name` varchar(255) DEFAULT NULL COMMENT 'Coupon Sales Rule Name',
  `paypal_ipn_customer_notified` int(11) DEFAULT '0' COMMENT 'Paypal Ipn Customer Notified',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `SALES_ORDER_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  KEY `SALES_ORDER_STATUS` (`status`),
  KEY `SALES_ORDER_STATE` (`state`),
  KEY `SALES_ORDER_STORE_ID` (`store_id`),
  KEY `SALES_ORDER_CREATED_AT` (`created_at`),
  KEY `SALES_ORDER_CUSTOMER_ID` (`customer_id`),
  KEY `SALES_ORDER_EXT_ORDER_ID` (`ext_order_id`),
  KEY `SALES_ORDER_QUOTE_ID` (`quote_id`),
  KEY `SALES_ORDER_UPDATED_AT` (`updated_at`),
  KEY `SALES_ORDER_SEND_EMAIL` (`send_email`),
  KEY `SALES_ORDER_EMAIL_SENT` (`email_sent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order';

--
-- Table structure for table `sales_order_address`
--

DROP TABLE IF EXISTS `sales_order_address`;
CREATE TABLE `sales_order_address` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Id',
  `customer_address_id` int(11) DEFAULT NULL COMMENT 'Customer Address Id',
  `quote_address_id` int(11) DEFAULT NULL COMMENT 'Quote Address Id',
  `region_id` int(11) DEFAULT NULL COMMENT 'Region Id',
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer Id',
  `fax` varchar(255) DEFAULT NULL COMMENT 'Fax',
  `region` varchar(255) DEFAULT NULL COMMENT 'Region',
  `postcode` varchar(255) DEFAULT NULL COMMENT 'Postcode',
  `lastname` varchar(255) DEFAULT NULL COMMENT 'Lastname',
  `street` varchar(255) DEFAULT NULL COMMENT 'Street',
  `city` varchar(255) DEFAULT NULL COMMENT 'City',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `telephone` varchar(255) DEFAULT NULL COMMENT 'Phone Number',
  `country_id` varchar(2) DEFAULT NULL COMMENT 'Country Id',
  `firstname` varchar(255) DEFAULT NULL COMMENT 'Firstname',
  `address_type` varchar(255) DEFAULT NULL COMMENT 'Address Type',
  `prefix` varchar(255) DEFAULT NULL COMMENT 'Prefix',
  `middlename` varchar(255) DEFAULT NULL COMMENT 'Middlename',
  `suffix` varchar(255) DEFAULT NULL COMMENT 'Suffix',
  `company` varchar(255) DEFAULT NULL COMMENT 'Company',
  `vat_id` text COMMENT 'Vat Id',
  `vat_is_valid` smallint(6) DEFAULT NULL COMMENT 'Vat Is Valid',
  `vat_request_id` text COMMENT 'Vat Request Id',
  `vat_request_date` text COMMENT 'Vat Request Date',
  `vat_request_success` smallint(6) DEFAULT NULL COMMENT 'Vat Request Success',
  PRIMARY KEY (`entity_id`),
  KEY `SALES_ORDER_ADDRESS_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Address';

--
-- Table structure for table `sales_order_aggregated_created`
--

DROP TABLE IF EXISTS `sales_order_aggregated_created`;
CREATE TABLE `sales_order_aggregated_created` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Ordered',
  `total_qty_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Invoiced',
  `total_income_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Income Amount',
  `total_revenue_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Revenue Amount',
  `total_profit_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Profit Amount',
  `total_invoiced_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Invoiced Amount',
  `total_canceled_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Canceled Amount',
  `total_paid_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Paid Amount',
  `total_refunded_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Refunded Amount',
  `total_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount',
  `total_tax_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount Actual',
  `total_shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount',
  `total_shipping_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount Actual',
  `total_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount',
  `total_discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SALES_ORDER_AGGREGATED_CREATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `SALES_ORDER_AGGREGATED_CREATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Aggregated Created';

--
-- Table structure for table `sales_order_aggregated_updated`
--

DROP TABLE IF EXISTS `sales_order_aggregated_updated`;
CREATE TABLE `sales_order_aggregated_updated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Ordered',
  `total_qty_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Invoiced',
  `total_income_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Income Amount',
  `total_revenue_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Revenue Amount',
  `total_profit_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Profit Amount',
  `total_invoiced_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Invoiced Amount',
  `total_canceled_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Canceled Amount',
  `total_paid_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Paid Amount',
  `total_refunded_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Refunded Amount',
  `total_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount',
  `total_tax_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount Actual',
  `total_shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount',
  `total_shipping_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount Actual',
  `total_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount',
  `total_discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SALES_ORDER_AGGREGATED_UPDATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `SALES_ORDER_AGGREGATED_UPDATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Aggregated Updated';

--
-- Table structure for table `sales_order_grid`
--

DROP TABLE IF EXISTS `sales_order_grid`;
CREATE TABLE `sales_order_grid` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `store_name` varchar(255) DEFAULT NULL COMMENT 'Store Name',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Paid',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Total Paid',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `order_currency_code` varchar(255) DEFAULT NULL COMMENT 'Order Currency Code',
  `shipping_name` varchar(255) DEFAULT NULL COMMENT 'Shipping Name',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `billing_address` varchar(255) DEFAULT NULL COMMENT 'Billing Address',
  `shipping_address` varchar(255) DEFAULT NULL COMMENT 'Shipping Address',
  `shipping_information` varchar(255) DEFAULT NULL COMMENT 'Shipping Method Name',
  `customer_email` varchar(255) DEFAULT NULL COMMENT 'Customer Email',
  `customer_group` varchar(255) DEFAULT NULL COMMENT 'Customer Group',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `shipping_and_handling` decimal(12,4) DEFAULT NULL COMMENT 'Shipping and handling amount',
  `customer_name` varchar(255) DEFAULT NULL COMMENT 'Customer Name',
  `payment_method` varchar(255) DEFAULT NULL COMMENT 'Payment Method',
  `total_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Total Refunded',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `SALES_ORDER_GRID_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  KEY `SALES_ORDER_GRID_STATUS` (`status`),
  KEY `SALES_ORDER_GRID_STORE_ID` (`store_id`),
  KEY `SALES_ORDER_GRID_BASE_GRAND_TOTAL` (`base_grand_total`),
  KEY `SALES_ORDER_GRID_BASE_TOTAL_PAID` (`base_total_paid`),
  KEY `SALES_ORDER_GRID_GRAND_TOTAL` (`grand_total`),
  KEY `SALES_ORDER_GRID_TOTAL_PAID` (`total_paid`),
  KEY `SALES_ORDER_GRID_SHIPPING_NAME` (`shipping_name`),
  KEY `SALES_ORDER_GRID_BILLING_NAME` (`billing_name`),
  KEY `SALES_ORDER_GRID_CREATED_AT` (`created_at`),
  KEY `SALES_ORDER_GRID_CUSTOMER_ID` (`customer_id`),
  KEY `SALES_ORDER_GRID_UPDATED_AT` (`updated_at`),
  FULLTEXT KEY `FTI_65B9E9925EC58F0C7C2E2F6379C233E7` (`increment_id`,`billing_name`,`shipping_name`,`shipping_address`,`billing_address`,`customer_name`,`customer_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Grid';

--
-- Table structure for table `sales_order_item`
--

DROP TABLE IF EXISTS `sales_order_item`;
CREATE TABLE `sales_order_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item Id',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Order Id',
  `parent_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Item Id',
  `quote_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Quote Item Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_type` varchar(255) DEFAULT NULL COMMENT 'Product Type',
  `product_options` text COMMENT 'Product Options',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `is_virtual` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Virtual',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `is_qty_decimal` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Qty Decimal',
  `no_discount` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'No Discount',
  `qty_backordered` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Backordered',
  `qty_canceled` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Canceled',
  `qty_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Invoiced',
  `qty_ordered` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `qty_refunded` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Refunded',
  `qty_shipped` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Shipped',
  `base_cost` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Cost',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `base_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Price',
  `original_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Price',
  `base_original_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Original Price',
  `tax_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Percent',
  `tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `tax_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Invoiced',
  `base_tax_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Invoiced',
  `discount_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Percent',
  `discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `discount_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Invoiced',
  `base_discount_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Invoiced',
  `amount_refunded` decimal(12,4) DEFAULT '0.0000' COMMENT 'Amount Refunded',
  `base_amount_refunded` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Amount Refunded',
  `row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Invoiced',
  `base_row_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Invoiced',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `base_tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Before Discount',
  `tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Before Discount',
  `ext_order_item_id` varchar(255) DEFAULT NULL COMMENT 'Ext Order Item Id',
  `locked_do_invoice` smallint(5) unsigned DEFAULT NULL COMMENT 'Locked Do Invoice',
  `locked_do_ship` smallint(5) unsigned DEFAULT NULL COMMENT 'Locked Do Ship',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `discount_tax_compensation_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Invoiced',
  `base_discount_tax_compensation_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Invoiced',
  `discount_tax_compensation_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Refunded',
  `base_discount_tax_compensation_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Refunded',
  `tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Tax Canceled',
  `discount_tax_compensation_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Canceled',
  `tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Tax Refunded',
  `base_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Refunded',
  `discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Discount Refunded',
  `base_discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Refunded',
  `free_shipping` smallint(6) DEFAULT NULL,
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  `gift_message_available` int(11) DEFAULT NULL COMMENT 'Gift Message Available',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  PRIMARY KEY (`item_id`),
  KEY `SALES_ORDER_ITEM_ORDER_ID` (`order_id`),
  KEY `SALES_ORDER_ITEM_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Item';

--
-- Table structure for table `sales_order_payment`
--

DROP TABLE IF EXISTS `sales_order_payment`;
CREATE TABLE `sales_order_payment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `base_shipping_captured` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Captured',
  `shipping_captured` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Captured',
  `amount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Amount Refunded',
  `base_amount_paid` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Paid',
  `amount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Amount Canceled',
  `base_amount_authorized` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Authorized',
  `base_amount_paid_online` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Paid Online',
  `base_amount_refunded_online` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Refunded Online',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `amount_paid` decimal(12,4) DEFAULT NULL COMMENT 'Amount Paid',
  `amount_authorized` decimal(12,4) DEFAULT NULL COMMENT 'Amount Authorized',
  `base_amount_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Ordered',
  `base_shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Refunded',
  `shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Refunded',
  `base_amount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Refunded',
  `amount_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Amount Ordered',
  `base_amount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Canceled',
  `quote_payment_id` int(11) DEFAULT NULL COMMENT 'Quote Payment Id',
  `additional_data` text COMMENT 'Additional Data',
  `cc_exp_month` varchar(12) DEFAULT NULL COMMENT 'Cc Exp Month',
  `cc_ss_start_year` varchar(12) DEFAULT NULL COMMENT 'Cc Ss Start Year',
  `echeck_bank_name` varchar(128) DEFAULT NULL COMMENT 'Echeck Bank Name',
  `method` varchar(128) DEFAULT NULL COMMENT 'Method',
  `cc_debug_request_body` varchar(32) DEFAULT NULL COMMENT 'Cc Debug Request Body',
  `cc_secure_verify` varchar(32) DEFAULT NULL COMMENT 'Cc Secure Verify',
  `protection_eligibility` varchar(32) DEFAULT NULL COMMENT 'Protection Eligibility',
  `cc_approval` varchar(32) DEFAULT NULL COMMENT 'Cc Approval',
  `cc_last_4` varchar(100) DEFAULT NULL COMMENT 'Cc Last 4',
  `cc_status_description` varchar(32) DEFAULT NULL COMMENT 'Cc Status Description',
  `echeck_type` varchar(32) DEFAULT NULL COMMENT 'Echeck Type',
  `cc_debug_response_serialized` varchar(32) DEFAULT NULL COMMENT 'Cc Debug Response Serialized',
  `cc_ss_start_month` varchar(128) DEFAULT NULL COMMENT 'Cc Ss Start Month',
  `echeck_account_type` varchar(255) DEFAULT NULL COMMENT 'Echeck Account Type',
  `last_trans_id` varchar(32) DEFAULT NULL COMMENT 'Last Trans Id',
  `cc_cid_status` varchar(32) DEFAULT NULL COMMENT 'Cc Cid Status',
  `cc_owner` varchar(128) DEFAULT NULL COMMENT 'Cc Owner',
  `cc_type` varchar(32) DEFAULT NULL COMMENT 'Cc Type',
  `po_number` varchar(32) DEFAULT NULL COMMENT 'Po Number',
  `cc_exp_year` varchar(4) DEFAULT NULL COMMENT 'Cc Exp Year',
  `cc_status` varchar(4) DEFAULT NULL COMMENT 'Cc Status',
  `echeck_routing_number` varchar(32) DEFAULT NULL COMMENT 'Echeck Routing Number',
  `account_status` varchar(32) DEFAULT NULL COMMENT 'Account Status',
  `anet_trans_method` varchar(32) DEFAULT NULL COMMENT 'Anet Trans Method',
  `cc_debug_response_body` varchar(32) DEFAULT NULL COMMENT 'Cc Debug Response Body',
  `cc_ss_issue` varchar(32) DEFAULT NULL COMMENT 'Cc Ss Issue',
  `echeck_account_name` varchar(32) DEFAULT NULL COMMENT 'Echeck Account Name',
  `cc_avs_status` varchar(32) DEFAULT NULL COMMENT 'Cc Avs Status',
  `cc_number_enc` varchar(32) DEFAULT NULL COMMENT 'Cc Number Enc',
  `cc_trans_id` varchar(32) DEFAULT NULL COMMENT 'Cc Trans Id',
  `address_status` varchar(32) DEFAULT NULL COMMENT 'Address Status',
  `additional_information` text COMMENT 'Additional Information',
  PRIMARY KEY (`entity_id`),
  KEY `SALES_ORDER_PAYMENT_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Payment';

--
-- Table structure for table `sales_order_status`
--

DROP TABLE IF EXISTS `sales_order_status`;
CREATE TABLE `sales_order_status` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `label` varchar(128) NOT NULL COMMENT 'Label',
  PRIMARY KEY (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Status Table';

--
-- Dumping data for table `sales_order_status`
--

LOCK TABLES `sales_order_status` WRITE;
/*!40000 ALTER TABLE `sales_order_status` DISABLE KEYS */;
INSERT INTO `sales_order_status` VALUES ('canceled','Canceled'),('closed','Closed'),('complete','Complete'),('fraud','Suspected Fraud'),('holded','On Hold'),('payment_review','Payment Review'),('paypal_canceled_reversal','PayPal Canceled Reversal'),('paypal_reversed','PayPal Reversed'),('pending','Pending'),('pending_payment','Pending Payment'),('pending_paypal','Pending PayPal'),('processing','Processing');
/*!40000 ALTER TABLE `sales_order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_order_status_history`
--

DROP TABLE IF EXISTS `sales_order_status_history`;
CREATE TABLE `sales_order_status_history` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` int(11) DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `entity_name` varchar(32) DEFAULT NULL COMMENT 'Shows what entity history is bind to.',
  PRIMARY KEY (`entity_id`),
  KEY `SALES_ORDER_STATUS_HISTORY_PARENT_ID` (`parent_id`),
  KEY `SALES_ORDER_STATUS_HISTORY_CREATED_AT` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Status History';

--
-- Table structure for table `sales_order_status_label`
--

DROP TABLE IF EXISTS `sales_order_status_label`;
CREATE TABLE `sales_order_status_label` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `label` varchar(128) NOT NULL COMMENT 'Label',
  PRIMARY KEY (`status`,`store_id`),
  KEY `SALES_ORDER_STATUS_LABEL_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Status Label Table';

--
-- Table structure for table `sales_order_status_state`
--

DROP TABLE IF EXISTS `sales_order_status_state`;
CREATE TABLE `sales_order_status_state` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `state` varchar(32) NOT NULL COMMENT 'Label',
  `is_default` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Default',
  `visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Visible on front',
  PRIMARY KEY (`status`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Status Table';

--
-- Dumping data for table `sales_order_status_state`
--

LOCK TABLES `sales_order_status_state` WRITE;
/*!40000 ALTER TABLE `sales_order_status_state` DISABLE KEYS */;
INSERT INTO `sales_order_status_state` VALUES ('canceled','canceled',1,1),('closed','closed',1,1),('complete','complete',1,1),('fraud','payment_review',0,1),('fraud','processing',0,1),('holded','holded',1,1),('payment_review','payment_review',1,1),('pending','new',1,1),('pending_payment','pending_payment',1,0),('processing','processing',1,1);
/*!40000 ALTER TABLE `sales_order_status_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_order_tax`
--

DROP TABLE IF EXISTS `sales_order_tax`;
CREATE TABLE `sales_order_tax` (
  `tax_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Tax Id',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  `percent` decimal(12,4) DEFAULT NULL COMMENT 'Percent',
  `amount` decimal(12,4) DEFAULT NULL COMMENT 'Amount',
  `priority` int(11) NOT NULL COMMENT 'Priority',
  `position` int(11) NOT NULL COMMENT 'Position',
  `base_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount',
  `process` smallint(6) NOT NULL COMMENT 'Process',
  `base_real_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Real Amount',
  PRIMARY KEY (`tax_id`),
  KEY `SALES_ORDER_TAX_ORDER_ID_PRIORITY_POSITION` (`order_id`,`priority`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Tax Table';

--
-- Table structure for table `sales_order_tax_item`
--

DROP TABLE IF EXISTS `sales_order_tax_item`;
CREATE TABLE `sales_order_tax_item` (
  `tax_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Tax Item Id',
  `tax_id` int(10) unsigned NOT NULL COMMENT 'Tax Id',
  `item_id` int(10) unsigned DEFAULT NULL COMMENT 'Item Id',
  `tax_percent` decimal(12,4) NOT NULL COMMENT 'Real Tax Percent For Item',
  `amount` decimal(12,4) NOT NULL COMMENT 'Tax amount for the item and tax rate',
  `base_amount` decimal(12,4) NOT NULL COMMENT 'Base tax amount for the item and tax rate',
  `real_amount` decimal(12,4) NOT NULL COMMENT 'Real tax amount for the item and tax rate',
  `real_base_amount` decimal(12,4) NOT NULL COMMENT 'Real base tax amount for the item and tax rate',
  `associated_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Id of the associated item',
  `taxable_item_type` varchar(32) NOT NULL COMMENT 'Type of the taxable item',
  PRIMARY KEY (`tax_item_id`),
  UNIQUE KEY `SALES_ORDER_TAX_ITEM_TAX_ID_ITEM_ID` (`tax_id`,`item_id`),
  KEY `SALES_ORDER_TAX_ITEM_ITEM_ID` (`item_id`),
  KEY `SALES_ORDER_TAX_ITEM_ASSOCIATED_ITEM_ID_SALES_ORDER_ITEM_ITEM_ID` (`associated_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Tax Item';

--
-- Table structure for table `sales_payment_transaction`
--

DROP TABLE IF EXISTS `sales_payment_transaction`;
CREATE TABLE `sales_payment_transaction` (
  `transaction_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Transaction Id',
  `parent_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Id',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Order Id',
  `payment_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Payment Id',
  `txn_id` varchar(100) DEFAULT NULL COMMENT 'Txn Id',
  `parent_txn_id` varchar(100) DEFAULT NULL COMMENT 'Parent Txn Id',
  `txn_type` varchar(15) DEFAULT NULL COMMENT 'Txn Type',
  `is_closed` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Closed',
  `additional_information` blob COMMENT 'Additional Information',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  PRIMARY KEY (`transaction_id`),
  UNIQUE KEY `SALES_PAYMENT_TRANSACTION_ORDER_ID_PAYMENT_ID_TXN_ID` (`order_id`,`payment_id`,`txn_id`),
  KEY `SALES_PAYMENT_TRANSACTION_PARENT_ID` (`parent_id`),
  KEY `SALES_PAYMENT_TRANSACTION_PAYMENT_ID` (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Payment Transaction';

--
-- Table structure for table `sales_refunded_aggregated`
--

DROP TABLE IF EXISTS `sales_refunded_aggregated`;
CREATE TABLE `sales_refunded_aggregated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `refunded` decimal(12,4) DEFAULT NULL COMMENT 'Refunded',
  `online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Online Refunded',
  `offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Offline Refunded',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SALES_REFUNDED_AGGREGATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `SALES_REFUNDED_AGGREGATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Refunded Aggregated';

--
-- Table structure for table `sales_refunded_aggregated_order`
--

DROP TABLE IF EXISTS `sales_refunded_aggregated_order`;
CREATE TABLE `sales_refunded_aggregated_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `refunded` decimal(12,4) DEFAULT NULL COMMENT 'Refunded',
  `online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Online Refunded',
  `offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Offline Refunded',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SALES_REFUNDED_AGGREGATED_ORDER_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `SALES_REFUNDED_AGGREGATED_ORDER_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Refunded Aggregated Order';

--
-- Table structure for table `sales_sequence_meta`
--

DROP TABLE IF EXISTS `sales_sequence_meta`;
CREATE TABLE `sales_sequence_meta` (
  `meta_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `entity_type` varchar(32) NOT NULL COMMENT 'Prefix',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `sequence_table` varchar(32) NOT NULL COMMENT 'table for sequence',
  PRIMARY KEY (`meta_id`),
  UNIQUE KEY `SALES_SEQUENCE_META_ENTITY_TYPE_STORE_ID` (`entity_type`,`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='sales_sequence_meta';

--
-- Dumping data for table `sales_sequence_meta`
--

LOCK TABLES `sales_sequence_meta` WRITE;
/*!40000 ALTER TABLE `sales_sequence_meta` DISABLE KEYS */;
INSERT INTO `sales_sequence_meta` VALUES ('1','order',0,'sequence_order_0'),('2','invoice',0,'sequence_invoice_0'),('3','creditmemo',0,'sequence_creditmemo_0'),('4','shipment',0,'sequence_shipment_0'),('5','order',1,'sequence_order_1'),('6','invoice',1,'sequence_invoice_1'),('7','creditmemo',1,'sequence_creditmemo_1'),('8','shipment',1,'sequence_shipment_1'),('9','order',2,'sequence_order_2'),('10','invoice',2,'sequence_invoice_2'),('11','creditmemo',2,'sequence_creditmemo_2'),('12','shipment',2,'sequence_shipment_2'),('13','order',3,'sequence_order_3'),('14','invoice',3,'sequence_invoice_3'),('15','creditmemo',3,'sequence_creditmemo_3'),('16','shipment',3,'sequence_shipment_3');
/*!40000 ALTER TABLE `sales_sequence_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_sequence_profile`
--

DROP TABLE IF EXISTS `sales_sequence_profile`;
CREATE TABLE `sales_sequence_profile` (
  `profile_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `meta_id` int(10) unsigned NOT NULL COMMENT 'Meta_id',
  `prefix` varchar(32) DEFAULT NULL COMMENT 'Prefix',
  `suffix` varchar(32) DEFAULT NULL COMMENT 'Suffix',
  `start_value` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'Start value for sequence',
  `step` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'Step for sequence',
  `max_value` int(10) unsigned NOT NULL COMMENT 'MaxValue for sequence',
  `warning_value` int(10) unsigned NOT NULL COMMENT 'WarningValue for sequence',
  `is_active` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'isActive flag',
  PRIMARY KEY (`profile_id`),
  UNIQUE KEY `SALES_SEQUENCE_PROFILE_META_ID_PREFIX_SUFFIX` (`meta_id`,`prefix`,`suffix`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='sales_sequence_profile';

--
-- Dumping data for table `sales_sequence_profile`
--

LOCK TABLES `sales_sequence_profile` WRITE;
/*!40000 ALTER TABLE `sales_sequence_profile` DISABLE KEYS */;
INSERT INTO `sales_sequence_profile` VALUES ('1','1',NULL,NULL,'1','1','4294967295','4294966295',1),('2','2',NULL,NULL,'1','1','4294967295','4294966295',1),('3','3',NULL,NULL,'1','1','4294967295','4294966295',1),('4','4',NULL,NULL,'1','1','4294967295','4294966295',1),('5','5',NULL,NULL,'1','1','4294967295','4294966295',1),('6','6',NULL,NULL,'1','1','4294967295','4294966295',1),('7','7',NULL,NULL,'1','1','4294967295','4294966295',1),('8','8',NULL,NULL,'1','1','4294967295','4294966295',1),('9','9','2',NULL,'1','1','4294967295','4294966295',1),('10','10','2',NULL,'1','1','4294967295','4294966295',1),('11','11','2',NULL,'1','1','4294967295','4294966295',1),('12','12','2',NULL,'1','1','4294967295','4294966295',1),('13','13','3',NULL,'1','1','4294967295','4294966295',1),('14','14','3',NULL,'1','1','4294967295','4294966295',1),('15','15','3',NULL,'1','1','4294967295','4294966295',1),('16','16','3',NULL,'1','1','4294967295','4294966295',1);
/*!40000 ALTER TABLE `sales_sequence_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_shipment`
--

DROP TABLE IF EXISTS `sales_shipment`;
CREATE TABLE `sales_shipment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `total_weight` decimal(12,4) DEFAULT NULL COMMENT 'Total Weight',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `email_sent` smallint(5) unsigned DEFAULT NULL COMMENT 'Email Sent',
  `send_email` smallint(5) unsigned DEFAULT NULL COMMENT 'Send Email',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer Id',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `shipment_status` int(11) DEFAULT NULL COMMENT 'Shipment Status',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `packages` text COMMENT 'Packed Products in Packages',
  `shipping_label` mediumblob COMMENT 'Shipping Label Content',
  `customer_note` text COMMENT 'Customer Note',
  `customer_note_notify` smallint(5) unsigned DEFAULT NULL COMMENT 'Customer Note Notify',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `SALES_SHIPMENT_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  KEY `SALES_SHIPMENT_STORE_ID` (`store_id`),
  KEY `SALES_SHIPMENT_TOTAL_QTY` (`total_qty`),
  KEY `SALES_SHIPMENT_ORDER_ID` (`order_id`),
  KEY `SALES_SHIPMENT_CREATED_AT` (`created_at`),
  KEY `SALES_SHIPMENT_UPDATED_AT` (`updated_at`),
  KEY `SALES_SHIPMENT_SEND_EMAIL` (`send_email`),
  KEY `SALES_SHIPMENT_EMAIL_SENT` (`email_sent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment';

--
-- Table structure for table `sales_shipment_comment`
--

DROP TABLE IF EXISTS `sales_shipment_comment`;
CREATE TABLE `sales_shipment_comment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` int(11) DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  PRIMARY KEY (`entity_id`),
  KEY `SALES_SHIPMENT_COMMENT_CREATED_AT` (`created_at`),
  KEY `SALES_SHIPMENT_COMMENT_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Comment';

--
-- Table structure for table `sales_shipment_grid`
--

DROP TABLE IF EXISTS `sales_shipment_grid`;
CREATE TABLE `sales_shipment_grid` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_increment_id` varchar(32) NOT NULL COMMENT 'Order Increment Id',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `order_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Order Increment Id',
  `customer_name` varchar(128) NOT NULL COMMENT 'Customer Name',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `shipment_status` int(11) DEFAULT NULL COMMENT 'Shipment Status',
  `order_status` varchar(32) DEFAULT NULL COMMENT 'Order',
  `billing_address` varchar(255) DEFAULT NULL COMMENT 'Billing Address',
  `shipping_address` varchar(255) DEFAULT NULL COMMENT 'Shipping Address',
  `billing_name` varchar(128) DEFAULT NULL COMMENT 'Billing Name',
  `shipping_name` varchar(128) DEFAULT NULL COMMENT 'Shipping Name',
  `customer_email` varchar(128) DEFAULT NULL COMMENT 'Customer Email',
  `customer_group_id` smallint(6) DEFAULT NULL COMMENT 'Customer Group Id',
  `payment_method` varchar(32) DEFAULT NULL COMMENT 'Payment Method',
  `shipping_information` varchar(255) DEFAULT NULL COMMENT 'Shipping Method Name',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `SALES_SHIPMENT_GRID_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  KEY `SALES_SHIPMENT_GRID_STORE_ID` (`store_id`),
  KEY `SALES_SHIPMENT_GRID_TOTAL_QTY` (`total_qty`),
  KEY `SALES_SHIPMENT_GRID_ORDER_INCREMENT_ID` (`order_increment_id`),
  KEY `SALES_SHIPMENT_GRID_SHIPMENT_STATUS` (`shipment_status`),
  KEY `SALES_SHIPMENT_GRID_ORDER_STATUS` (`order_status`),
  KEY `SALES_SHIPMENT_GRID_CREATED_AT` (`created_at`),
  KEY `SALES_SHIPMENT_GRID_UPDATED_AT` (`updated_at`),
  KEY `SALES_SHIPMENT_GRID_ORDER_CREATED_AT` (`order_created_at`),
  KEY `SALES_SHIPMENT_GRID_SHIPPING_NAME` (`shipping_name`),
  KEY `SALES_SHIPMENT_GRID_BILLING_NAME` (`billing_name`),
  FULLTEXT KEY `FTI_086B40C8955F167B8EA76653437879B4` (`increment_id`,`order_increment_id`,`shipping_name`,`customer_name`,`customer_email`,`billing_address`,`shipping_address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Grid';

--
-- Table structure for table `sales_shipment_item`
--

DROP TABLE IF EXISTS `sales_shipment_item`;
CREATE TABLE `sales_shipment_item` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `row_total` decimal(12,4) DEFAULT NULL COMMENT 'Row Total',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `product_id` int(11) DEFAULT NULL COMMENT 'Product Id',
  `order_item_id` int(11) DEFAULT NULL COMMENT 'Order Item Id',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  PRIMARY KEY (`entity_id`),
  KEY `SALES_SHIPMENT_ITEM_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Item';

--
-- Table structure for table `sales_shipment_track`
--

DROP TABLE IF EXISTS `sales_shipment_track`;
CREATE TABLE `sales_shipment_track` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `track_number` text COMMENT 'Number',
  `description` text COMMENT 'Description',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  `carrier_code` varchar(32) DEFAULT NULL COMMENT 'Carrier Code',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`),
  KEY `SALES_SHIPMENT_TRACK_PARENT_ID` (`parent_id`),
  KEY `SALES_SHIPMENT_TRACK_ORDER_ID` (`order_id`),
  KEY `SALES_SHIPMENT_TRACK_CREATED_AT` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Track';

--
-- Table structure for table `sales_shipping_aggregated`
--

DROP TABLE IF EXISTS `sales_shipping_aggregated`;
CREATE TABLE `sales_shipping_aggregated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_shipping` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping',
  `total_shipping_actual` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SALES_SHPP_AGGRED_PERIOD_STORE_ID_ORDER_STS_SHPP_DESCRIPTION` (`period`,`store_id`,`order_status`,`shipping_description`),
  KEY `SALES_SHIPPING_AGGREGATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Shipping Aggregated';

--
-- Table structure for table `sales_shipping_aggregated_order`
--

DROP TABLE IF EXISTS `sales_shipping_aggregated_order`;
CREATE TABLE `sales_shipping_aggregated_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_shipping` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping',
  `total_shipping_actual` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_C05FAE47282EEA68654D0924E946761F` (`period`,`store_id`,`order_status`,`shipping_description`),
  KEY `SALES_SHIPPING_AGGREGATED_ORDER_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Shipping Aggregated Order';

--
-- Table structure for table `salesrule`
--

DROP TABLE IF EXISTS `salesrule`;
CREATE TABLE `salesrule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `from_date` date DEFAULT NULL COMMENT 'From',
  `to_date` date DEFAULT NULL COMMENT 'To',
  `uses_per_customer` int(11) NOT NULL DEFAULT '0' COMMENT 'Uses Per Customer',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `conditions_serialized` mediumtext COMMENT 'Conditions Serialized',
  `actions_serialized` mediumtext COMMENT 'Actions Serialized',
  `stop_rules_processing` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Stop Rules Processing',
  `is_advanced` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Advanced',
  `product_ids` text COMMENT 'Product Ids',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `discount_qty` decimal(12,4) DEFAULT NULL COMMENT 'Discount Qty',
  `discount_step` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Discount Step',
  `apply_to_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Apply To Shipping',
  `times_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  `is_rss` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Rss',
  `coupon_type` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Coupon Type',
  `use_auto_generation` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Use Auto Generation',
  `uses_per_coupon` int(11) NOT NULL DEFAULT '0' COMMENT 'User Per Coupon',
  `simple_free_shipping` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`rule_id`),
  KEY `SALESRULE_IS_ACTIVE_SORT_ORDER_TO_DATE_FROM_DATE` (`is_active`,`sort_order`,`to_date`,`from_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule';

--
-- Table structure for table `salesrule_coupon`
--

DROP TABLE IF EXISTS `salesrule_coupon`;
CREATE TABLE `salesrule_coupon` (
  `coupon_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Coupon Id',
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `usage_limit` int(10) unsigned DEFAULT NULL COMMENT 'Usage Limit',
  `usage_per_customer` int(10) unsigned DEFAULT NULL COMMENT 'Usage Per Customer',
  `times_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  `expiration_date` timestamp NULL DEFAULT NULL COMMENT 'Expiration Date',
  `is_primary` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Primary',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Coupon Code Creation Date',
  `type` smallint(6) DEFAULT '0' COMMENT 'Coupon Code Type',
  PRIMARY KEY (`coupon_id`),
  UNIQUE KEY `SALESRULE_COUPON_CODE` (`code`),
  UNIQUE KEY `SALESRULE_COUPON_RULE_ID_IS_PRIMARY` (`rule_id`,`is_primary`),
  KEY `SALESRULE_COUPON_RULE_ID` (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Coupon';

--
-- Table structure for table `salesrule_coupon_aggregated`
--

DROP TABLE IF EXISTS `salesrule_coupon_aggregated`;
CREATE TABLE `salesrule_coupon_aggregated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `subtotal_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount Actual',
  `discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount Actual',
  `total_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount Actual',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SALESRULE_COUPON_AGGRED_PERIOD_STORE_ID_ORDER_STS_COUPON_CODE` (`period`,`store_id`,`order_status`,`coupon_code`),
  KEY `SALESRULE_COUPON_AGGREGATED_STORE_ID` (`store_id`),
  KEY `SALESRULE_COUPON_AGGREGATED_RULE_NAME` (`rule_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Coupon Aggregated';

--
-- Table structure for table `salesrule_coupon_aggregated_order`
--

DROP TABLE IF EXISTS `salesrule_coupon_aggregated_order`;
CREATE TABLE `salesrule_coupon_aggregated_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_1094D1FBBCBB11704A29DEF3ACC37D2B` (`period`,`store_id`,`order_status`,`coupon_code`),
  KEY `SALESRULE_COUPON_AGGREGATED_ORDER_STORE_ID` (`store_id`),
  KEY `SALESRULE_COUPON_AGGREGATED_ORDER_RULE_NAME` (`rule_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Coupon Aggregated Order';

--
-- Table structure for table `salesrule_coupon_aggregated_updated`
--

DROP TABLE IF EXISTS `salesrule_coupon_aggregated_updated`;
CREATE TABLE `salesrule_coupon_aggregated_updated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `subtotal_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount Actual',
  `discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount Actual',
  `total_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount Actual',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_7196FA120A4F0F84E1B66605E87E213E` (`period`,`store_id`,`order_status`,`coupon_code`),
  KEY `SALESRULE_COUPON_AGGREGATED_UPDATED_STORE_ID` (`store_id`),
  KEY `SALESRULE_COUPON_AGGREGATED_UPDATED_RULE_NAME` (`rule_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Coupon Aggregated Updated';

--
-- Table structure for table `salesrule_coupon_usage`
--

DROP TABLE IF EXISTS `salesrule_coupon_usage`;
CREATE TABLE `salesrule_coupon_usage` (
  `coupon_id` int(10) unsigned NOT NULL COMMENT 'Coupon Id',
  `customer_id` int(10) unsigned NOT NULL COMMENT 'Customer Id',
  `times_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  PRIMARY KEY (`coupon_id`,`customer_id`),
  KEY `SALESRULE_COUPON_USAGE_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Coupon Usage';

--
-- Table structure for table `salesrule_customer`
--

DROP TABLE IF EXISTS `salesrule_customer`;
CREATE TABLE `salesrule_customer` (
  `rule_customer_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Customer Id',
  `rule_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Rule Id',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Id',
  `times_used` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  PRIMARY KEY (`rule_customer_id`),
  KEY `SALESRULE_CUSTOMER_RULE_ID_CUSTOMER_ID` (`rule_id`,`customer_id`),
  KEY `SALESRULE_CUSTOMER_CUSTOMER_ID_RULE_ID` (`customer_id`,`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Customer';

--
-- Table structure for table `salesrule_customer_group`
--

DROP TABLE IF EXISTS `salesrule_customer_group`;
CREATE TABLE `salesrule_customer_group` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  PRIMARY KEY (`rule_id`,`customer_group_id`),
  KEY `SALESRULE_CUSTOMER_GROUP_CUSTOMER_GROUP_ID` (`customer_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Rules To Customer Groups Relations';

--
-- Table structure for table `salesrule_label`
--

DROP TABLE IF EXISTS `salesrule_label`;
CREATE TABLE `salesrule_label` (
  `label_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Label Id',
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `label` varchar(255) DEFAULT NULL COMMENT 'Label',
  PRIMARY KEY (`label_id`),
  UNIQUE KEY `SALESRULE_LABEL_RULE_ID_STORE_ID` (`rule_id`,`store_id`),
  KEY `SALESRULE_LABEL_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Label';

--
-- Table structure for table `salesrule_product_attribute`
--

DROP TABLE IF EXISTS `salesrule_product_attribute`;
CREATE TABLE `salesrule_product_attribute` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  PRIMARY KEY (`rule_id`,`website_id`,`customer_group_id`,`attribute_id`),
  KEY `SALESRULE_PRODUCT_ATTRIBUTE_WEBSITE_ID` (`website_id`),
  KEY `SALESRULE_PRODUCT_ATTRIBUTE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `SALESRULE_PRODUCT_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Product Attribute';

--
-- Table structure for table `salesrule_website`
--

DROP TABLE IF EXISTS `salesrule_website`;
CREATE TABLE `salesrule_website` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  PRIMARY KEY (`rule_id`,`website_id`),
  KEY `SALESRULE_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Rules To Websites Relations';

--
-- Table structure for table `search_query`
--

DROP TABLE IF EXISTS `search_query`;
CREATE TABLE `search_query` (
  `query_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Query ID',
  `query_text` varchar(255) DEFAULT NULL COMMENT 'Query text',
  `num_results` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Num results',
  `popularity` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Popularity',
  `redirect` varchar(255) DEFAULT NULL COMMENT 'Redirect',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `display_in_terms` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Display in terms',
  `is_active` smallint(6) DEFAULT '1' COMMENT 'Active status',
  `is_processed` smallint(6) DEFAULT '0' COMMENT 'Processed status',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated at',
  PRIMARY KEY (`query_id`),
  UNIQUE KEY `SEARCH_QUERY_QUERY_TEXT_STORE_ID` (`query_text`,`store_id`),
  KEY `SEARCH_QUERY_QUERY_TEXT_STORE_ID_POPULARITY` (`query_text`,`store_id`,`popularity`),
  KEY `SEARCH_QUERY_STORE_ID` (`store_id`),
  KEY `SEARCH_QUERY_IS_PROCESSED` (`is_processed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Search query table';

--
-- Table structure for table `search_synonyms`
--

DROP TABLE IF EXISTS `search_synonyms`;
CREATE TABLE `search_synonyms` (
  `group_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Synonyms Group Id',
  `synonyms` text NOT NULL COMMENT 'list of synonyms making up this group',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id - identifies the store view these synonyms belong to',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id - identifies the website id these synonyms belong to',
  PRIMARY KEY (`group_id`),
  KEY `SEARCH_SYNONYMS_STORE_ID` (`store_id`),
  KEY `SEARCH_SYNONYMS_WEBSITE_ID` (`website_id`),
  FULLTEXT KEY `SEARCH_SYNONYMS_SYNONYMS` (`synonyms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='table storing various synonyms groups';

--
-- Table structure for table `sendfriend_log`
--

DROP TABLE IF EXISTS `sendfriend_log`;
CREATE TABLE `sendfriend_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Log ID',
  `ip` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer IP address',
  `time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Log time',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  PRIMARY KEY (`log_id`),
  KEY `SENDFRIEND_LOG_IP` (`ip`),
  KEY `SENDFRIEND_LOG_TIME` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Send to friend function log storage table';

--
-- Table structure for table `sequence_creditmemo_0`
--

DROP TABLE IF EXISTS `sequence_creditmemo_0`;
CREATE TABLE `sequence_creditmemo_0` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `sequence_creditmemo_1`
--

DROP TABLE IF EXISTS `sequence_creditmemo_1`;
CREATE TABLE `sequence_creditmemo_1` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `sequence_creditmemo_2`
--

DROP TABLE IF EXISTS `sequence_creditmemo_2`;
CREATE TABLE `sequence_creditmemo_2` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `sequence_creditmemo_3`
--

DROP TABLE IF EXISTS `sequence_creditmemo_3`;
CREATE TABLE `sequence_creditmemo_3` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `sequence_invoice_0`
--

DROP TABLE IF EXISTS `sequence_invoice_0`;
CREATE TABLE `sequence_invoice_0` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `sequence_invoice_1`
--

DROP TABLE IF EXISTS `sequence_invoice_1`;
CREATE TABLE `sequence_invoice_1` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `sequence_invoice_2`
--

DROP TABLE IF EXISTS `sequence_invoice_2`;
CREATE TABLE `sequence_invoice_2` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `sequence_invoice_3`
--

DROP TABLE IF EXISTS `sequence_invoice_3`;
CREATE TABLE `sequence_invoice_3` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `sequence_order_0`
--

DROP TABLE IF EXISTS `sequence_order_0`;
CREATE TABLE `sequence_order_0` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `sequence_order_1`
--

DROP TABLE IF EXISTS `sequence_order_1`;
CREATE TABLE `sequence_order_1` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `sequence_order_2`
--

DROP TABLE IF EXISTS `sequence_order_2`;
CREATE TABLE `sequence_order_2` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `sequence_order_3`
--

DROP TABLE IF EXISTS `sequence_order_3`;
CREATE TABLE `sequence_order_3` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `sequence_shipment_0`
--

DROP TABLE IF EXISTS `sequence_shipment_0`;
CREATE TABLE `sequence_shipment_0` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `sequence_shipment_1`
--

DROP TABLE IF EXISTS `sequence_shipment_1`;
CREATE TABLE `sequence_shipment_1` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `sequence_shipment_2`
--

DROP TABLE IF EXISTS `sequence_shipment_2`;
CREATE TABLE `sequence_shipment_2` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `sequence_shipment_3`
--

DROP TABLE IF EXISTS `sequence_shipment_3`;
CREATE TABLE `sequence_shipment_3` (
  `sequence_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `session`
--

DROP TABLE IF EXISTS `session`;
CREATE TABLE `session` (
  `session_id` varchar(255) NOT NULL COMMENT 'Session Id',
  `session_expires` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Date of Session Expiration',
  `session_data` mediumblob NOT NULL COMMENT 'Session Data',
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Database Sessions Storage';

--
-- Table structure for table `setup_module`
--

DROP TABLE IF EXISTS `setup_module`;
CREATE TABLE `setup_module` (
  `module` varchar(50) NOT NULL COMMENT 'Module',
  `schema_version` varchar(50) DEFAULT NULL COMMENT 'Schema Version',
  `data_version` varchar(50) DEFAULT NULL COMMENT 'Data Version',
  PRIMARY KEY (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Module versions registry';

--
-- Dumping data for table `setup_module`
--

LOCK TABLES `setup_module` WRITE;
/*!40000 ALTER TABLE `setup_module` DISABLE KEYS */;
INSERT INTO `setup_module` VALUES ('ImproDev_EmailManager','1.0.0','1.0.0'),('ImproDev_ServiceModule','1.0.0','1.0.0'),('Magento_AdminNotification','2.0.0','2.0.0'),('Magento_AdvancedPricingImportExport','2.0.0','2.0.0'),('Magento_Authorization','2.0.0','2.0.0'),('Magento_Authorizenet','2.0.0','2.0.0'),('Magento_Backend','2.0.0','2.0.0'),('Magento_Backup','2.0.0','2.0.0'),('Magento_Braintree','2.0.0','2.0.0'),('Magento_Bundle','2.0.2','2.0.2'),('Magento_BundleImportExport','2.0.0','2.0.0'),('Magento_CacheInvalidate','2.0.0','2.0.0'),('Magento_Captcha','2.0.0','2.0.0'),('Magento_Catalog','2.1.3','2.1.3'),('Magento_CatalogImportExport','2.0.0','2.0.0'),('Magento_CatalogInventory','2.0.1','2.0.1'),('Magento_CatalogRule','2.0.1','2.0.1'),('Magento_CatalogRuleConfigurable','2.0.0','2.0.0'),('Magento_CatalogSearch','2.0.0','2.0.0'),('Magento_CatalogUrlRewrite','2.0.0','2.0.0'),('Magento_CatalogWidget','2.0.0','2.0.0'),('Magento_Checkout','2.0.0','2.0.0'),('Magento_CheckoutAgreements','2.0.1','2.0.1'),('Magento_Cms','2.0.1','2.0.1'),('Magento_CmsUrlRewrite','2.0.0','2.0.0'),('Magento_Config','2.0.0','2.0.0'),('Magento_ConfigurableImportExport','2.0.0','2.0.0'),('Magento_ConfigurableProduct','2.0.0','2.0.0'),('Magento_Contact','2.0.0','2.0.0'),('Magento_Cookie','2.0.0','2.0.0'),('Magento_Cron','2.0.0','2.0.0'),('Magento_CurrencySymbol','2.0.0','2.0.0'),('Magento_Customer','2.0.9','2.0.9'),('Magento_CustomerImportExport','2.0.0','2.0.0'),('Magento_Deploy','2.0.0','2.0.0'),('Magento_Developer','2.0.0','2.0.0'),('Magento_Dhl','2.0.0','2.0.0'),('Magento_Directory','2.0.0','2.0.0'),('Magento_Downloadable','2.0.1','2.0.1'),('Magento_DownloadableImportExport','2.0.0','2.0.0'),('Magento_Eav','2.0.0','2.0.0'),('Magento_Email','2.0.0','2.0.0'),('Magento_EncryptionKey','2.0.0','2.0.0'),('Magento_Fedex','2.0.0','2.0.0'),('Magento_GiftMessage','2.0.1','2.0.1'),('Magento_GoogleAdwords','2.0.0','2.0.0'),('Magento_GoogleAnalytics','2.0.0','2.0.0'),('Magento_GoogleOptimizer','2.0.0','2.0.0'),('Magento_GroupedImportExport','2.0.0','2.0.0'),('Magento_GroupedProduct','2.0.1','2.0.1'),('Magento_ImportExport','2.0.1','2.0.1'),('Magento_Indexer','2.0.0','2.0.0'),('Magento_Integration','2.2.0','2.2.0'),('Magento_LayeredNavigation','2.0.0','2.0.0'),('Magento_Marketplace','1.0.0','1.0.0'),('Magento_MediaStorage','2.0.0','2.0.0'),('Magento_Msrp','2.1.3','2.1.3'),('Magento_Multishipping','2.0.0','2.0.0'),('Magento_NewRelicReporting','2.0.0','2.0.0'),('Magento_Newsletter','2.0.0','2.0.0'),('Magento_OfflinePayments','2.0.0','2.0.0'),('Magento_OfflineShipping','2.0.0','2.0.0'),('Magento_PageCache','2.0.0','2.0.0'),('Magento_Payment','2.0.0','2.0.0'),('Magento_Paypal','2.0.0','2.0.0'),('Magento_Persistent','2.0.0','2.0.0'),('Magento_ProductAlert','2.0.0','2.0.0'),('Magento_ProductVideo','2.0.0.2','2.0.0.2'),('Magento_Quote','2.0.3','2.0.3'),('Magento_Reports','2.0.0','2.0.0'),('Magento_RequireJs','2.0.0','2.0.0'),('Magento_Review','2.0.0','2.0.0'),('Magento_Rss','2.0.0','2.0.0'),('Magento_Rule','2.0.0','2.0.0'),('Magento_Sales','2.0.3','2.0.3'),('Magento_SalesInventory','1.0.0','1.0.0'),('Magento_SalesRule','2.0.1','2.0.1'),('Magento_SalesSequence','2.0.0','2.0.0'),('Magento_SampleData','2.0.0','2.0.0'),('Magento_Search','2.0.4','2.0.4'),('Magento_Security','2.0.1','2.0.1'),('Magento_SendFriend','2.0.0','2.0.0'),('Magento_Shipping','2.0.0','2.0.0'),('Magento_Sitemap','2.0.0','2.0.0'),('Magento_Store','2.0.0','2.0.0'),('Magento_Swagger','2.0.0','2.0.0'),('Magento_Swatches','2.0.1','2.0.1'),('Magento_SwatchesLayeredNavigation','2.0.0','2.0.0'),('Magento_Tax','2.0.1','2.0.1'),('Magento_TaxImportExport','2.0.0','2.0.0'),('Magento_Theme','2.0.1','2.0.1'),('Magento_Translation','2.0.0','2.0.0'),('Magento_Ui','2.0.0','2.0.0'),('Magento_Ups','2.0.0','2.0.0'),('Magento_UrlRewrite','2.0.0','2.0.0'),('Magento_User','2.0.1','2.0.1'),('Magento_Usps','2.0.0','2.0.0'),('Magento_Variable','2.0.0','2.0.0'),('Magento_Vault','2.0.2','2.0.2'),('Magento_Version','2.0.0','2.0.0'),('Magento_Webapi','2.0.0','2.0.0'),('Magento_WebapiSecurity','2.0.0','2.0.0'),('Magento_Weee','2.0.0','2.0.0'),('Magento_Widget','2.0.0','2.0.0'),('Magento_Wishlist','2.0.0','2.0.0'),('Smile_ContactUs','2.0.0','2.0.0'),('TemplateMonster_Parallax','1.0.2','1.0.2');
/*!40000 ALTER TABLE `setup_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_tablerate`
--

DROP TABLE IF EXISTS `shipping_tablerate`;
CREATE TABLE `shipping_tablerate` (
  `pk` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `website_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `dest_country_id` varchar(4) NOT NULL DEFAULT '0' COMMENT 'Destination coutry ISO/2 or ISO/3 code',
  `dest_region_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Destination Region Id',
  `dest_zip` varchar(10) NOT NULL DEFAULT '*' COMMENT 'Destination Post Code (Zip)',
  `condition_name` varchar(20) NOT NULL COMMENT 'Rate Condition name',
  `condition_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Rate condition value',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `cost` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Cost',
  PRIMARY KEY (`pk`),
  UNIQUE KEY `UNQ_D60821CDB2AFACEE1566CFC02D0D4CAA` (`website_id`,`dest_country_id`,`dest_region_id`,`dest_zip`,`condition_name`,`condition_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Shipping Tablerate';

--
-- Table structure for table `sitemap`
--

DROP TABLE IF EXISTS `sitemap`;
CREATE TABLE `sitemap` (
  `sitemap_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Sitemap Id',
  `sitemap_type` varchar(32) DEFAULT NULL COMMENT 'Sitemap Type',
  `sitemap_filename` varchar(32) DEFAULT NULL COMMENT 'Sitemap Filename',
  `sitemap_path` varchar(255) DEFAULT NULL COMMENT 'Sitemap Path',
  `sitemap_time` timestamp NULL DEFAULT NULL COMMENT 'Sitemap Time',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id',
  PRIMARY KEY (`sitemap_id`),
  KEY `SITEMAP_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='XML Sitemap';

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
CREATE TABLE `store` (
  `store_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Store Id',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Group Id',
  `name` varchar(255) NOT NULL COMMENT 'Store Name',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Sort Order',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Activity',
  PRIMARY KEY (`store_id`),
  UNIQUE KEY `STORE_CODE` (`code`),
  KEY `STORE_WEBSITE_ID` (`website_id`),
  KEY `STORE_IS_ACTIVE_SORT_ORDER` (`is_active`,`sort_order`),
  KEY `STORE_GROUP_ID` (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Stores';

--
-- Dumping data for table `store`
--

LOCK TABLES `store` WRITE;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
INSERT INTO `store` VALUES (0,'admin',0,0,'Admin',0,1),(1,'english',1,1,'Eng',3,0),(2,'russian',1,1,'Rus',1,1),(3,'ukrainian',1,1,'Ukr',2,1);
/*!40000 ALTER TABLE `store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_group`
--

DROP TABLE IF EXISTS `store_group`;
CREATE TABLE `store_group` (
  `group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Group Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `name` varchar(255) NOT NULL COMMENT 'Store Group Name',
  `root_category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Root Category Id',
  `default_store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Default Store Id',
  PRIMARY KEY (`group_id`),
  KEY `STORE_GROUP_WEBSITE_ID` (`website_id`),
  KEY `STORE_GROUP_DEFAULT_STORE_ID` (`default_store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Store Groups';

--
-- Dumping data for table `store_group`
--

LOCK TABLES `store_group` WRITE;
/*!40000 ALTER TABLE `store_group` DISABLE KEYS */;
INSERT INTO `store_group` VALUES (0,0,'Default','0',0),(1,1,'Main Website Store','2',2);
/*!40000 ALTER TABLE `store_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_website`
--

DROP TABLE IF EXISTS `store_website`;
CREATE TABLE `store_website` (
  `website_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Website Id',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code',
  `name` varchar(64) DEFAULT NULL COMMENT 'Website Name',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `default_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Default Group Id',
  `is_default` smallint(5) unsigned DEFAULT '0' COMMENT 'Defines Is Website Default',
  PRIMARY KEY (`website_id`),
  UNIQUE KEY `STORE_WEBSITE_CODE` (`code`),
  KEY `STORE_WEBSITE_SORT_ORDER` (`sort_order`),
  KEY `STORE_WEBSITE_DEFAULT_GROUP_ID` (`default_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Websites';

--
-- Dumping data for table `store_website`
--

LOCK TABLES `store_website` WRITE;
/*!40000 ALTER TABLE `store_website` DISABLE KEYS */;
INSERT INTO `store_website` VALUES (0,'admin','Admin',0,0,0),(1,'base','Main Website',0,1,1);
/*!40000 ALTER TABLE `store_website` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax_calculation`
--

DROP TABLE IF EXISTS `tax_calculation`;
CREATE TABLE `tax_calculation` (
  `tax_calculation_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Id',
  `tax_calculation_rate_id` int(11) NOT NULL COMMENT 'Tax Calculation Rate Id',
  `tax_calculation_rule_id` int(11) NOT NULL COMMENT 'Tax Calculation Rule Id',
  `customer_tax_class_id` smallint(6) NOT NULL COMMENT 'Customer Tax Class Id',
  `product_tax_class_id` smallint(6) NOT NULL COMMENT 'Product Tax Class Id',
  PRIMARY KEY (`tax_calculation_id`),
  KEY `TAX_CALCULATION_TAX_CALCULATION_RULE_ID` (`tax_calculation_rule_id`),
  KEY `TAX_CALCULATION_CUSTOMER_TAX_CLASS_ID` (`customer_tax_class_id`),
  KEY `TAX_CALCULATION_PRODUCT_TAX_CLASS_ID` (`product_tax_class_id`),
  KEY `TAX_CALC_TAX_CALC_RATE_ID_CSTR_TAX_CLASS_ID_PRD_TAX_CLASS_ID` (`tax_calculation_rate_id`,`customer_tax_class_id`,`product_tax_class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Calculation';

--
-- Table structure for table `tax_calculation_rate`
--

DROP TABLE IF EXISTS `tax_calculation_rate`;
CREATE TABLE `tax_calculation_rate` (
  `tax_calculation_rate_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rate Id',
  `tax_country_id` varchar(2) NOT NULL COMMENT 'Tax Country Id',
  `tax_region_id` int(11) NOT NULL COMMENT 'Tax Region Id',
  `tax_postcode` varchar(21) DEFAULT NULL COMMENT 'Tax Postcode',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `rate` decimal(12,4) NOT NULL COMMENT 'Rate',
  `zip_is_range` smallint(6) DEFAULT NULL COMMENT 'Zip Is Range',
  `zip_from` int(10) unsigned DEFAULT NULL COMMENT 'Zip From',
  `zip_to` int(10) unsigned DEFAULT NULL COMMENT 'Zip To',
  PRIMARY KEY (`tax_calculation_rate_id`),
  KEY `TAX_CALCULATION_RATE_TAX_COUNTRY_ID_TAX_REGION_ID_TAX_POSTCODE` (`tax_country_id`,`tax_region_id`,`tax_postcode`),
  KEY `TAX_CALCULATION_RATE_CODE` (`code`),
  KEY `IDX_CA799F1E2CB843495F601E56C84A626D` (`tax_calculation_rate_id`,`tax_country_id`,`tax_region_id`,`zip_is_range`,`tax_postcode`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rate';

--
-- Dumping data for table `tax_calculation_rate`
--

LOCK TABLES `tax_calculation_rate` WRITE;
/*!40000 ALTER TABLE `tax_calculation_rate` DISABLE KEYS */;
INSERT INTO `tax_calculation_rate` VALUES ('1','US','12','*','US-CA-*-Rate 1','8.2500',NULL,NULL,NULL),('2','US','43','*','US-NY-*-Rate 1','8.3750',NULL,NULL,NULL);
/*!40000 ALTER TABLE `tax_calculation_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax_calculation_rate_title`
--

DROP TABLE IF EXISTS `tax_calculation_rate_title`;
CREATE TABLE `tax_calculation_rate_title` (
  `tax_calculation_rate_title_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rate Title Id',
  `tax_calculation_rate_id` int(11) NOT NULL COMMENT 'Tax Calculation Rate Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `value` varchar(255) NOT NULL COMMENT 'Value',
  PRIMARY KEY (`tax_calculation_rate_title_id`),
  KEY `TAX_CALCULATION_RATE_TITLE_TAX_CALCULATION_RATE_ID_STORE_ID` (`tax_calculation_rate_id`,`store_id`),
  KEY `TAX_CALCULATION_RATE_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rate Title';

--
-- Table structure for table `tax_calculation_rule`
--

DROP TABLE IF EXISTS `tax_calculation_rule`;
CREATE TABLE `tax_calculation_rule` (
  `tax_calculation_rule_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rule Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `priority` int(11) NOT NULL COMMENT 'Priority',
  `position` int(11) NOT NULL COMMENT 'Position',
  `calculate_subtotal` int(11) NOT NULL COMMENT 'Calculate off subtotal option',
  PRIMARY KEY (`tax_calculation_rule_id`),
  KEY `TAX_CALCULATION_RULE_PRIORITY_POSITION` (`priority`,`position`),
  KEY `TAX_CALCULATION_RULE_CODE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rule';

--
-- Table structure for table `tax_class`
--

DROP TABLE IF EXISTS `tax_class`;
CREATE TABLE `tax_class` (
  `class_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Class Id',
  `class_name` varchar(255) NOT NULL COMMENT 'Class Name',
  `class_type` varchar(8) NOT NULL DEFAULT 'CUSTOMER' COMMENT 'Class Type',
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Tax Class';

--
-- Dumping data for table `tax_class`
--

LOCK TABLES `tax_class` WRITE;
/*!40000 ALTER TABLE `tax_class` DISABLE KEYS */;
INSERT INTO `tax_class` VALUES (2,'Taxable Goods','PRODUCT'),(3,'Retail Customer','CUSTOMER');
/*!40000 ALTER TABLE `tax_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax_order_aggregated_created`
--

DROP TABLE IF EXISTS `tax_order_aggregated_created`;
CREATE TABLE `tax_order_aggregated_created` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `percent` float DEFAULT NULL COMMENT 'Percent',
  `orders_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `tax_base_amount_sum` float DEFAULT NULL COMMENT 'Tax Base Amount Sum',
  PRIMARY KEY (`id`),
  UNIQUE KEY `TAX_ORDER_AGGRED_CREATED_PERIOD_STORE_ID_CODE_PERCENT_ORDER_STS` (`period`,`store_id`,`code`,`percent`,`order_status`),
  KEY `TAX_ORDER_AGGREGATED_CREATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Order Aggregation';

--
-- Table structure for table `tax_order_aggregated_updated`
--

DROP TABLE IF EXISTS `tax_order_aggregated_updated`;
CREATE TABLE `tax_order_aggregated_updated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `percent` float DEFAULT NULL COMMENT 'Percent',
  `orders_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `tax_base_amount_sum` float DEFAULT NULL COMMENT 'Tax Base Amount Sum',
  PRIMARY KEY (`id`),
  UNIQUE KEY `TAX_ORDER_AGGRED_UPDATED_PERIOD_STORE_ID_CODE_PERCENT_ORDER_STS` (`period`,`store_id`,`code`,`percent`,`order_status`),
  KEY `TAX_ORDER_AGGREGATED_UPDATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Order Aggregated Updated';

--
-- Table structure for table `theme`
--

DROP TABLE IF EXISTS `theme`;
CREATE TABLE `theme` (
  `theme_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Theme identifier',
  `parent_id` int(11) DEFAULT NULL COMMENT 'Parent Id',
  `theme_path` varchar(255) DEFAULT NULL COMMENT 'Theme Path',
  `theme_title` varchar(255) NOT NULL COMMENT 'Theme Title',
  `preview_image` varchar(255) DEFAULT NULL COMMENT 'Preview Image',
  `is_featured` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Is Theme Featured',
  `area` varchar(255) NOT NULL COMMENT 'Theme Area',
  `type` smallint(6) NOT NULL COMMENT 'Theme type: 0:physical, 1:virtual, 2:staging',
  `code` text COMMENT 'Full theme code, including package',
  PRIMARY KEY (`theme_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Core theme';

--
-- Dumping data for table `theme`
--

LOCK TABLES `theme` WRITE;
/*!40000 ALTER TABLE `theme` DISABLE KEYS */;
INSERT INTO `theme` VALUES ('1',NULL,'Magento/blank','Magento Blank','preview_image_597342a0bd38a.jpeg',0,'frontend',0,'Magento/blank'),('2','1','Magento/luma','Magento Luma','preview_image_597342a0cfc6e.jpeg',0,'frontend',0,'Magento/luma'),('3',NULL,'Magento/backend','Magento 2 backend',NULL,0,'adminhtml',0,'Magento/backend'),('4','1','ImproDev/autosound','ImproDev AutoSound','preview_image_597347e70243f.jpeg',0,'frontend',0,'ImproDev/autosound');
/*!40000 ALTER TABLE `theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theme_file`
--

DROP TABLE IF EXISTS `theme_file`;
CREATE TABLE `theme_file` (
  `theme_files_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Theme files identifier',
  `theme_id` int(10) unsigned NOT NULL COMMENT 'Theme Id',
  `file_path` varchar(255) DEFAULT NULL COMMENT 'Relative path to file',
  `file_type` varchar(32) NOT NULL COMMENT 'File Type',
  `content` longtext NOT NULL COMMENT 'File Content',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `is_temporary` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Is Temporary File',
  PRIMARY KEY (`theme_files_id`),
  KEY `THEME_FILE_THEME_ID_THEME_THEME_ID` (`theme_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Core theme files';

--
-- Table structure for table `translation`
--

DROP TABLE IF EXISTS `translation`;
CREATE TABLE `translation` (
  `key_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Key Id of Translation',
  `string` varchar(255) NOT NULL DEFAULT 'Translate String' COMMENT 'Translation String',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `translate` varchar(255) DEFAULT NULL COMMENT 'Translate',
  `locale` varchar(20) NOT NULL DEFAULT 'en_US' COMMENT 'Locale',
  `crc_string` bigint(20) NOT NULL DEFAULT '1591228201' COMMENT 'Translation String CRC32 Hash',
  PRIMARY KEY (`key_id`),
  UNIQUE KEY `TRANSLATION_STORE_ID_LOCALE_CRC_STRING_STRING` (`store_id`,`locale`,`crc_string`,`string`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Translations';

--
-- Table structure for table `ui_bookmark`
--

DROP TABLE IF EXISTS `ui_bookmark`;
CREATE TABLE `ui_bookmark` (
  `bookmark_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Bookmark identifier',
  `user_id` int(10) unsigned NOT NULL COMMENT 'User Id',
  `namespace` varchar(255) NOT NULL COMMENT 'Bookmark namespace',
  `identifier` varchar(255) NOT NULL COMMENT 'Bookmark Identifier',
  `current` smallint(6) NOT NULL COMMENT 'Mark current bookmark per user and identifier',
  `title` varchar(255) DEFAULT NULL COMMENT 'Bookmark title',
  `config` longtext COMMENT 'Bookmark config',
  `created_at` datetime NOT NULL COMMENT 'Bookmark created at',
  `updated_at` datetime NOT NULL COMMENT 'Bookmark updated at',
  PRIMARY KEY (`bookmark_id`),
  KEY `UI_BOOKMARK_USER_ID_NAMESPACE_IDENTIFIER` (`user_id`,`namespace`,`identifier`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='Bookmark';

--
-- Dumping data for table `ui_bookmark`
--

LOCK TABLES `ui_bookmark` WRITE;
/*!40000 ALTER TABLE `ui_bookmark` DISABLE KEYS */;
INSERT INTO `ui_bookmark` VALUES ('1','1','design_config_listing','current',0,NULL,'{\"current\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"columns\":{\"default\":{\"visible\":true,\"sorting\":false},\"store_website_id\":{\"visible\":true,\"sorting\":false},\"store_group_id\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":true,\"sorting\":false},\"theme_theme_id\":{\"visible\":true,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false}},\"paging\":{\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"displayMode\":\"grid\",\"positions\":{\"default\":0,\"store_website_id\":1,\"store_group_id\":2,\"store_id\":3,\"theme_theme_id\":4,\"actions\":5}}}','0000-00-00 00:00:00','0000-00-00 00:00:00'),('2','1','cms_block_listing','current',0,NULL,'{\"current\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"columns\":{\"block_id\":{\"visible\":true,\"sorting\":false},\"title\":{\"visible\":true,\"sorting\":false},\"identifier\":{\"visible\":true,\"sorting\":\"asc\"},\"store_id\":{\"visible\":true,\"sorting\":false},\"is_active\":{\"visible\":true,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"creation_time\":{\"visible\":true,\"sorting\":false},\"update_time\":{\"visible\":true,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"paging\":{\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"search\":{\"value\":\"\"},\"positions\":{\"ids\":0,\"block_id\":1,\"title\":2,\"identifier\":3,\"store_id\":4,\"is_active\":5,\"creation_time\":6,\"update_time\":7,\"actions\":8}}}','0000-00-00 00:00:00','0000-00-00 00:00:00'),('3','1','cms_block_listing','default',1,'Default View','{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"columns\":{\"block_id\":{\"visible\":true,\"sorting\":\"asc\"},\"title\":{\"visible\":true,\"sorting\":false},\"identifier\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":true,\"sorting\":false},\"is_active\":{\"visible\":true,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"creation_time\":{\"visible\":true,\"sorting\":false},\"update_time\":{\"visible\":true,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"paging\":{\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"search\":{\"value\":\"\"},\"positions\":{\"ids\":0,\"block_id\":1,\"title\":2,\"identifier\":3,\"store_id\":4,\"is_active\":5,\"creation_time\":6,\"update_time\":7,\"actions\":8}},\"value\":\"Default View\"}}}','0000-00-00 00:00:00','0000-00-00 00:00:00'),('4','1','product_listing','current',0,NULL,'{\"current\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"columns\":{\"entity_id\":{\"visible\":true,\"sorting\":\"asc\"},\"name\":{\"visible\":true,\"sorting\":false},\"sku\":{\"visible\":true,\"sorting\":false},\"price\":{\"visible\":true,\"sorting\":false},\"websites\":{\"visible\":true,\"sorting\":false},\"qty\":{\"visible\":true,\"sorting\":false},\"short_description\":{\"visible\":false,\"sorting\":false},\"special_price\":{\"visible\":false,\"sorting\":false},\"cost\":{\"visible\":false,\"sorting\":false},\"weight\":{\"visible\":false,\"sorting\":false},\"meta_title\":{\"visible\":false,\"sorting\":false},\"meta_keyword\":{\"visible\":false,\"sorting\":false},\"meta_description\":{\"visible\":false,\"sorting\":false},\"url_key\":{\"visible\":false,\"sorting\":false},\"msrp\":{\"visible\":false,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"type_id\":{\"visible\":true,\"sorting\":false},\"attribute_set_id\":{\"visible\":true,\"sorting\":false},\"visibility\":{\"visible\":true,\"sorting\":false},\"status\":{\"visible\":true,\"sorting\":false},\"manufacturer\":{\"visible\":false,\"sorting\":false},\"color\":{\"visible\":false,\"sorting\":false},\"custom_design\":{\"visible\":false,\"sorting\":false},\"page_layout\":{\"visible\":false,\"sorting\":false},\"country_of_manufacture\":{\"visible\":false,\"sorting\":false},\"custom_layout\":{\"visible\":false,\"sorting\":false},\"tax_class_id\":{\"visible\":false,\"sorting\":false},\"gift_message_available\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"special_from_date\":{\"visible\":false,\"sorting\":false},\"special_to_date\":{\"visible\":false,\"sorting\":false},\"news_from_date\":{\"visible\":false,\"sorting\":false},\"news_to_date\":{\"visible\":false,\"sorting\":false},\"custom_design_from\":{\"visible\":false,\"sorting\":false},\"custom_design_to\":{\"visible\":false,\"sorting\":false},\"thumbnail\":{\"visible\":true,\"sorting\":false},\"viscosity_class\":{\"visible\":true,\"sorting\":false},\"sst_with_40_c\":{\"visible\":true,\"sorting\":false},\"sst_with_100_c\":{\"visible\":true,\"sorting\":false},\"ash_sulphate_mas_astm_d_874\":{\"visible\":true,\"sorting\":false},\"phosphorus_content\":{\"visible\":true,\"sorting\":false},\"flash_point_c_astm_d_92\":{\"visible\":true,\"sorting\":false},\"pour_point_c_astm_d_97\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"paging\":{\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"positions\":{\"ids\":0,\"entity_id\":1,\"thumbnail\":2,\"name\":3,\"type_id\":4,\"attribute_set_id\":5,\"sku\":6,\"price\":7,\"qty\":8,\"visibility\":9,\"status\":10,\"websites\":11,\"short_description\":12,\"special_price\":13,\"special_from_date\":14,\"special_to_date\":15,\"cost\":16,\"weight\":17,\"manufacturer\":18,\"meta_title\":19,\"meta_keyword\":20,\"meta_description\":21,\"color\":22,\"news_from_date\":23,\"news_to_date\":24,\"custom_design\":25,\"custom_design_from\":26,\"custom_design_to\":27,\"page_layout\":28,\"country_of_manufacture\":29,\"custom_layout\":30,\"url_key\":31,\"msrp\":32,\"tax_class_id\":33,\"gift_message_available\":34,\"actions\":35,\"viscosity_class\":36,\"sst_with_40_c\":37,\"sst_with_100_c\":38,\"ash_sulphate_mas_astm_d_874\":39,\"phosphorus_content\":40,\"flash_point_c_astm_d_92\":41,\"pour_point_c_astm_d_97\":42}}}','0000-00-00 00:00:00','0000-00-00 00:00:00'),('5','1','product_listing','default',1,'Default View','{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"columns\":{\"entity_id\":{\"visible\":true,\"sorting\":\"asc\"},\"name\":{\"visible\":true,\"sorting\":false},\"sku\":{\"visible\":true,\"sorting\":false},\"price\":{\"visible\":true,\"sorting\":false},\"websites\":{\"visible\":true,\"sorting\":false},\"qty\":{\"visible\":true,\"sorting\":false},\"short_description\":{\"visible\":false,\"sorting\":false},\"special_price\":{\"visible\":false,\"sorting\":false},\"cost\":{\"visible\":false,\"sorting\":false},\"weight\":{\"visible\":false,\"sorting\":false},\"meta_title\":{\"visible\":false,\"sorting\":false},\"meta_keyword\":{\"visible\":false,\"sorting\":false},\"meta_description\":{\"visible\":false,\"sorting\":false},\"url_key\":{\"visible\":false,\"sorting\":false},\"msrp\":{\"visible\":false,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"type_id\":{\"visible\":true,\"sorting\":false},\"attribute_set_id\":{\"visible\":true,\"sorting\":false},\"visibility\":{\"visible\":true,\"sorting\":false},\"status\":{\"visible\":true,\"sorting\":false},\"manufacturer\":{\"visible\":false,\"sorting\":false},\"color\":{\"visible\":false,\"sorting\":false},\"custom_design\":{\"visible\":false,\"sorting\":false},\"page_layout\":{\"visible\":false,\"sorting\":false},\"country_of_manufacture\":{\"visible\":false,\"sorting\":false},\"custom_layout\":{\"visible\":false,\"sorting\":false},\"tax_class_id\":{\"visible\":false,\"sorting\":false},\"gift_message_available\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"special_from_date\":{\"visible\":false,\"sorting\":false},\"special_to_date\":{\"visible\":false,\"sorting\":false},\"news_from_date\":{\"visible\":false,\"sorting\":false},\"news_to_date\":{\"visible\":false,\"sorting\":false},\"custom_design_from\":{\"visible\":false,\"sorting\":false},\"custom_design_to\":{\"visible\":false,\"sorting\":false},\"thumbnail\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"paging\":{\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"positions\":{\"ids\":0,\"entity_id\":1,\"thumbnail\":2,\"name\":3,\"type_id\":4,\"attribute_set_id\":5,\"sku\":6,\"price\":7,\"qty\":8,\"visibility\":9,\"status\":10,\"websites\":11,\"short_description\":12,\"special_price\":13,\"special_from_date\":14,\"special_to_date\":15,\"cost\":16,\"weight\":17,\"manufacturer\":18,\"meta_title\":19,\"meta_keyword\":20,\"meta_description\":21,\"color\":22,\"news_from_date\":23,\"news_to_date\":24,\"custom_design\":25,\"custom_design_from\":26,\"custom_design_to\":27,\"page_layout\":28,\"country_of_manufacture\":29,\"custom_layout\":30,\"url_key\":31,\"msrp\":32,\"tax_class_id\":33,\"gift_message_available\":34,\"actions\":35}},\"value\":\"Default View\"}}}','0000-00-00 00:00:00','0000-00-00 00:00:00'),('6','1','cms_page_listing','current',0,NULL,'{\"current\":{\"search\":{\"value\":\"\"},\"filters\":{\"applied\":{\"placeholder\":true}},\"columns\":{\"page_id\":{\"visible\":true,\"sorting\":\"asc\"},\"title\":{\"visible\":true,\"sorting\":false},\"identifier\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":true,\"sorting\":false},\"meta_title\":{\"visible\":false,\"sorting\":false},\"meta_keywords\":{\"visible\":false,\"sorting\":false},\"meta_description\":{\"visible\":false,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"page_layout\":{\"visible\":true,\"sorting\":false},\"is_active\":{\"visible\":true,\"sorting\":false},\"custom_theme\":{\"visible\":false,\"sorting\":false},\"custom_root_template\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"creation_time\":{\"visible\":true,\"sorting\":false},\"update_time\":{\"visible\":true,\"sorting\":false},\"custom_theme_from\":{\"visible\":false,\"sorting\":false},\"custom_theme_to\":{\"visible\":false,\"sorting\":false}},\"displayMode\":\"grid\",\"paging\":{\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"positions\":{\"ids\":0,\"page_id\":1,\"title\":2,\"identifier\":3,\"page_layout\":4,\"store_id\":5,\"is_active\":6,\"creation_time\":7,\"update_time\":8,\"custom_theme_from\":9,\"custom_theme_to\":10,\"custom_theme\":11,\"custom_root_template\":12,\"meta_title\":13,\"meta_keywords\":14,\"meta_description\":15,\"actions\":16}}}','0000-00-00 00:00:00','0000-00-00 00:00:00'),('7','1','cms_page_listing','default',1,'Default View','{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"search\":{\"value\":\"\"},\"filters\":{\"applied\":{\"placeholder\":true}},\"columns\":{\"page_id\":{\"visible\":true,\"sorting\":\"asc\"},\"title\":{\"visible\":true,\"sorting\":false},\"identifier\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":true,\"sorting\":false},\"meta_title\":{\"visible\":false,\"sorting\":false},\"meta_keywords\":{\"visible\":false,\"sorting\":false},\"meta_description\":{\"visible\":false,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"page_layout\":{\"visible\":true,\"sorting\":false},\"is_active\":{\"visible\":true,\"sorting\":false},\"custom_theme\":{\"visible\":false,\"sorting\":false},\"custom_root_template\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"creation_time\":{\"visible\":true,\"sorting\":false},\"update_time\":{\"visible\":true,\"sorting\":false},\"custom_theme_from\":{\"visible\":false,\"sorting\":false},\"custom_theme_to\":{\"visible\":false,\"sorting\":false}},\"displayMode\":\"grid\",\"paging\":{\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"positions\":{\"ids\":0,\"page_id\":1,\"title\":2,\"identifier\":3,\"page_layout\":4,\"store_id\":5,\"is_active\":6,\"creation_time\":7,\"update_time\":8,\"custom_theme_from\":9,\"custom_theme_to\":10,\"custom_theme\":11,\"custom_root_template\":12,\"meta_title\":13,\"meta_keywords\":14,\"meta_description\":15,\"actions\":16}},\"value\":\"Default View\"}}}','0000-00-00 00:00:00','0000-00-00 00:00:00'),('8','1','contact_message_listing','current',0,NULL,'{\"current\":{\"search\":{\"value\":\"\"},\"filters\":{\"applied\":{\"placeholder\":true}},\"columns\":{\"message_id\":{\"visible\":true,\"sorting\":\"asc\"},\"name\":{\"visible\":true,\"sorting\":false},\"email\":{\"visible\":true,\"sorting\":false},\"telephone\":{\"visible\":true,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"status\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"positions\":{\"ids\":0,\"message_id\":1,\"name\":2,\"email\":3,\"telephone\":4,\"status\":5,\"actions\":6},\"paging\":{\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20}}}','0000-00-00 00:00:00','0000-00-00 00:00:00'),('9','1','contact_message_listing','default',1,'Default View','{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"search\":{\"value\":\"\"},\"filters\":{\"applied\":{\"placeholder\":true}},\"columns\":{\"message_id\":{\"visible\":true,\"sorting\":\"asc\"},\"name\":{\"visible\":true,\"sorting\":false},\"email\":{\"visible\":true,\"sorting\":false},\"telephone\":{\"visible\":true,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"status\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"positions\":{\"ids\":0,\"message_id\":1,\"name\":2,\"email\":3,\"telephone\":4,\"status\":5,\"actions\":6},\"paging\":{\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20}},\"value\":\"Default View\"}}}','0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `ui_bookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `url_rewrite`
--

DROP TABLE IF EXISTS `url_rewrite`;
CREATE TABLE `url_rewrite` (
  `url_rewrite_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rewrite Id',
  `entity_type` varchar(32) NOT NULL COMMENT 'Entity type code',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `request_path` varchar(255) DEFAULT NULL COMMENT 'Request Path',
  `target_path` varchar(255) DEFAULT NULL COMMENT 'Target Path',
  `redirect_type` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Redirect Type',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `description` varchar(255) DEFAULT NULL COMMENT 'Description',
  `is_autogenerated` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is rewrite generated automatically flag',
  `metadata` varchar(255) DEFAULT NULL COMMENT 'Meta data for url rewrite',
  PRIMARY KEY (`url_rewrite_id`),
  UNIQUE KEY `URL_REWRITE_REQUEST_PATH_STORE_ID` (`request_path`,`store_id`),
  KEY `URL_REWRITE_TARGET_PATH` (`target_path`),
  KEY `URL_REWRITE_STORE_ID_ENTITY_ID` (`store_id`,`entity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1478 DEFAULT CHARSET=utf8 COMMENT='Url Rewrites';

--
-- Dumping data for table `url_rewrite`
--

LOCK TABLES `url_rewrite` WRITE;
/*!40000 ALTER TABLE `url_rewrite` DISABLE KEYS */;
INSERT INTO `url_rewrite` VALUES ('1','cms-page','1','no-route','cms/page/view/page_id/1',0,1,NULL,1,NULL),('2','cms-page','2','home','cms/page/view/page_id/2',0,1,NULL,1,NULL),('3','cms-page','3','enable-cookies','cms/page/view/page_id/3',0,1,NULL,1,NULL),('4','cms-page','4','privacy-policy-cookie-restriction-mode','cms/page/view/page_id/4',0,1,NULL,1,NULL),('19','category','6','lighting.html','catalog/category/view/id/6',0,1,NULL,1,NULL),('61','cms-page','5','garage','cms/page/view/page_id/5',0,1,NULL,1,NULL),('62','cms-page','6','garage','cms/page/view/page_id/6',0,2,NULL,1,NULL),('71','category','4','electronics.html','catalog/category/view/id/4',0,1,NULL,1,NULL),('72','category','4','interior.html','electronics.html',301,1,NULL,0,NULL),('77','category','5','sound-and-video.html','catalog/category/view/id/5',0,1,NULL,1,NULL),('78','category','5','exterior.html','sound-and-video.html',301,1,NULL,0,NULL),('90','category','15','interiors.html','catalog/category/view/id/15',0,1,NULL,1,NULL),('93','category','16','exteriors.html','catalog/category/view/id/16',0,1,NULL,1,NULL),('96','category','17','wheels.html','catalog/category/view/id/17',0,1,NULL,1,NULL),('99','category','18','baggage-and-fastening.html','catalog/category/view/id/18',0,1,NULL,1,NULL),('102','category','19','car-chemical.html','catalog/category/view/id/19',0,1,NULL,1,NULL),('105','category','20','technical-assistance.html','catalog/category/view/id/20',0,1,NULL,1,NULL),('108','category','21','tools.html','catalog/category/view/id/21',0,1,NULL,1,NULL),('111','category','22','tourism.html','catalog/category/view/id/22',0,1,NULL,1,NULL),('114','category','23','4x4-jeeping.html','catalog/category/view/id/23',0,1,NULL,1,NULL),('120','category','24','moto.html','catalog/category/view/id/24',0,1,NULL,1,NULL),('219','product','3','motornoe-maslo-mobil-super-3000-x1-5w-40-4l-2.html','catalog/product/view/id/3',0,2,NULL,1,NULL),('220','product','3','parts-and-consumables/oil/engine-oil/mobil/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-2.html','catalog/product/view/id/3/category/9',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"9\";}'),('221','product','3','parts-and-consumables/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-2.html','catalog/product/view/id/3/category/3',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('222','product','3','parts-and-consumables/oil/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-2.html','catalog/product/view/id/3/category/7',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"7\";}'),('223','product','3','parts-and-consumables/oil/engine-oil/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-2.html','catalog/product/view/id/3/category/8',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"8\";}'),('234','product','4','motornoe-maslo-mobil-super-3000-x1-5w-40-4l-3.html','catalog/product/view/id/4',0,2,NULL,1,NULL),('235','product','4','parts-and-consumables/oil/engine-oil/mobil/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-3.html','catalog/product/view/id/4/category/9',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"9\";}'),('236','product','4','parts-and-consumables/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-3.html','catalog/product/view/id/4/category/3',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('237','product','4','parts-and-consumables/oil/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-3.html','catalog/product/view/id/4/category/7',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"7\";}'),('238','product','4','parts-and-consumables/oil/engine-oil/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-3.html','catalog/product/view/id/4/category/8',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"8\";}'),('294','product','5','motornoe-maslo-mobil-super-3000-x1-5w-40-4l-4.html','catalog/product/view/id/5',0,2,NULL,1,NULL),('295','product','5','parts-and-consumables/oil/engine-oil/mobil/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-4.html','catalog/product/view/id/5/category/9',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"9\";}'),('296','product','5','parts-and-consumables/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-4.html','catalog/product/view/id/5/category/3',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('297','product','5','parts-and-consumables/oil/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-4.html','catalog/product/view/id/5/category/7',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"7\";}'),('298','product','5','parts-and-consumables/oil/engine-oil/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-4.html','catalog/product/view/id/5/category/8',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"8\";}'),('354','product','6','motornoe-maslo-mobil-super-3000-x1-5w-40-4l-5.html','catalog/product/view/id/6',0,2,NULL,1,NULL),('355','product','6','parts-and-consumables/oil/engine-oil/mobil/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-5.html','catalog/product/view/id/6/category/9',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"9\";}'),('356','product','6','parts-and-consumables/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-5.html','catalog/product/view/id/6/category/3',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('357','product','6','parts-and-consumables/oil/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-5.html','catalog/product/view/id/6/category/7',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"7\";}'),('358','product','6','parts-and-consumables/oil/engine-oil/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-5.html','catalog/product/view/id/6/category/8',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"8\";}'),('468','product','7','motornoe-maslo-mobil-super-3000-x1-5w-40-4l-6.html','catalog/product/view/id/7',0,2,NULL,1,NULL),('469','product','7','parts-and-consumables/oil/engine-oil/mobil/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-6.html','catalog/product/view/id/7/category/9',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"9\";}'),('470','product','7','parts-and-consumables/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-6.html','catalog/product/view/id/7/category/3',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('471','product','7','parts-and-consumables/oil/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-6.html','catalog/product/view/id/7/category/7',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"7\";}'),('472','product','7','parts-and-consumables/oil/engine-oil/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-6.html','catalog/product/view/id/7/category/8',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"8\";}'),('558','product','8','motornoe-maslo-mobil-super-3000-x1-5w-40-4l-7.html','catalog/product/view/id/8',0,2,NULL,1,NULL),('559','product','8','parts-and-consumables/oil/engine-oil/mobil/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-7.html','catalog/product/view/id/8/category/9',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"9\";}'),('560','product','8','parts-and-consumables/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-7.html','catalog/product/view/id/8/category/3',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('561','product','8','parts-and-consumables/oil/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-7.html','catalog/product/view/id/8/category/7',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"7\";}'),('562','product','8','parts-and-consumables/oil/engine-oil/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-7.html','catalog/product/view/id/8/category/8',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"8\";}'),('603','product','9','motornoe-maslo-mobil-super-3000-x1-5w-40-4l-8.html','catalog/product/view/id/9',0,2,NULL,1,NULL),('604','product','9','parts-and-consumables/oil/engine-oil/mobil/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-8.html','catalog/product/view/id/9/category/9',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"9\";}'),('605','product','9','parts-and-consumables/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-8.html','catalog/product/view/id/9/category/3',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('606','product','9','parts-and-consumables/oil/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-8.html','catalog/product/view/id/9/category/7',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"7\";}'),('607','product','9','parts-and-consumables/oil/engine-oil/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-8.html','catalog/product/view/id/9/category/8',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"8\";}'),('618','cms-page','8','viewed-products','cms/page/view/page_id/8',0,2,NULL,1,NULL),('619','cms-page','8','viewed-products','cms/page/view/page_id/8',0,3,NULL,1,NULL),('620','cms-page','8','viewed-products','cms/page/view/page_id/8',0,1,NULL,1,NULL),('630','category','4','electronics.html','catalog/category/view/id/4',0,2,NULL,1,NULL),('631','category','4','jelektronika.html','electronics.html',301,2,NULL,0,NULL),('632','category','4','interior.html','electronics.html',301,2,NULL,0,'a:0:{}'),('633','category','5','sound-and-video.html','catalog/category/view/id/5',0,2,NULL,1,NULL),('634','category','5','zvuk-i-video.html','sound-and-video.html',301,2,NULL,0,NULL),('635','category','5','exterior.html','sound-and-video.html',301,2,NULL,0,'a:0:{}'),('784','category','3','parts-consumables.html','catalog/category/view/id/3',0,1,NULL,1,NULL),('785','category','7','parts-consumables/oil.html','catalog/category/view/id/7',0,1,NULL,1,NULL),('786','category','8','parts-consumables/oil/engine-oil.html','catalog/category/view/id/8',0,1,NULL,1,NULL),('789','category','10','parts-consumables/oil/engine-oil/castrol.html','catalog/category/view/id/10',0,1,NULL,1,NULL),('790','category','10','parts-and-consumables/oil/engine-oil/castrol.html','parts-consumables/oil/engine-oil/castrol.html',301,1,NULL,0,NULL),('791','category','11','parts-consumables/oil/engine-oil/shell.html','catalog/category/view/id/11',0,1,NULL,1,NULL),('792','category','11','parts-and-consumables/oil/engine-oil/shell.html','parts-consumables/oil/engine-oil/shell.html',301,1,NULL,0,NULL),('793','category','8','parts-and-consumables/oil/engine-oil.html','parts-consumables/oil/engine-oil.html',301,1,NULL,0,NULL),('794','category','7','parts-and-consumables/oil.html','parts-consumables/oil.html',301,1,NULL,0,NULL),('795','category','3','parts-and-consumables.html','parts-consumables.html',301,1,NULL,0,NULL),('1081','category','3','parts-consumables.html','catalog/category/view/id/3',0,2,NULL,1,NULL),('1102','category','3','zapchasti-i-rashodniki.html','parts-consumables.html',301,2,NULL,0,NULL),('1103','category','3','parts-and-consumables.html','parts-consumables.html',301,2,NULL,0,'a:0:{}'),('1104','category','7','parts-consumables/oil.html','catalog/category/view/id/7',0,2,NULL,1,NULL),('1126','category','7','parts-consumables/maslo.html','parts-consumables/oil.html',301,2,NULL,0,NULL),('1127','category','7','zapchasti-i-rashodniki/maslo.html','parts-consumables/oil.html',301,2,NULL,0,'a:0:{}'),('1128','category','7','parts-and-consumables/oil.html','parts-consumables/oil.html',301,2,NULL,0,'a:0:{}'),('1129','category','8','parts-consumables/oil/engine-oil.html','catalog/category/view/id/8',0,2,NULL,1,NULL),('1136','category','10','parts-consumables/oil/engine-oil/castrol.html','catalog/category/view/id/10',0,2,NULL,1,NULL),('1137','category','10','parts-consumables/oil/motornoe-maslo/castrol.html','parts-consumables/oil/engine-oil/castrol.html',301,2,NULL,0,NULL),('1138','category','10','parts-consumables/maslo/motornoe-maslo/castrol.html','parts-consumables/oil/engine-oil/castrol.html',301,2,NULL,0,'a:0:{}'),('1139','category','10','zapchasti-i-rashodniki/maslo/motornoe-maslo/castrol.html','parts-consumables/oil/engine-oil/castrol.html',301,2,NULL,0,'a:0:{}'),('1140','category','10','zapchasti-i-rashodniki/maslo/engine-oil/castrol.html','parts-consumables/oil/engine-oil/castrol.html',301,2,NULL,0,'a:0:{}'),('1141','category','10','parts-and-consumables/oil/engine-oil/castrol.html','parts-consumables/oil/engine-oil/castrol.html',301,2,NULL,0,'a:0:{}'),('1142','category','11','parts-consumables/oil/engine-oil/shell.html','catalog/category/view/id/11',0,2,NULL,1,NULL),('1143','category','11','parts-consumables/oil/motornoe-maslo/shell.html','parts-consumables/oil/engine-oil/shell.html',301,2,NULL,0,NULL),('1144','category','11','parts-consumables/maslo/motornoe-maslo/shell.html','parts-consumables/oil/engine-oil/shell.html',301,2,NULL,0,'a:0:{}'),('1145','category','11','zapchasti-i-rashodniki/maslo/motornoe-maslo/shell.html','parts-consumables/oil/engine-oil/shell.html',301,2,NULL,0,'a:0:{}'),('1146','category','11','zapchasti-i-rashodniki/maslo/engine-oil/shell.html','parts-consumables/oil/engine-oil/shell.html',301,2,NULL,0,'a:0:{}'),('1147','category','11','parts-and-consumables/oil/engine-oil/shell.html','parts-consumables/oil/engine-oil/shell.html',301,2,NULL,0,'a:0:{}'),('1148','category','8','parts-consumables/oil/motornoe-maslo.html','parts-consumables/oil/engine-oil.html',301,2,NULL,0,NULL),('1149','category','8','parts-consumables/maslo/motornoe-maslo.html','parts-consumables/oil/engine-oil.html',301,2,NULL,0,'a:0:{}'),('1150','category','8','zapchasti-i-rashodniki/maslo/motornoe-maslo.html','parts-consumables/oil/engine-oil.html',301,2,NULL,0,'a:0:{}'),('1151','category','8','zapchasti-i-rashodniki/maslo/engine-oil.html','parts-consumables/oil/engine-oil.html',301,2,NULL,0,'a:0:{}'),('1152','category','8','parts-and-consumables/oil/engine-oil.html','parts-consumables/oil/engine-oil.html',301,2,NULL,0,'a:0:{}'),('1153','category','6','lighting.html','catalog/category/view/id/6',0,2,NULL,1,NULL),('1154','category','6','svet-osveschenie.html','lighting.html',301,2,NULL,0,NULL),('1155','category','15','interiors.html','catalog/category/view/id/15',0,2,NULL,1,NULL),('1156','category','15','inter-er.html','interiors.html',301,2,NULL,0,'a:0:{}'),('1157','category','16','exteriors.html','catalog/category/view/id/16',0,2,NULL,1,NULL),('1158','category','16','jekster-er.html','exteriors.html',301,2,NULL,0,NULL),('1159','category','17','wheels.html','catalog/category/view/id/17',0,2,NULL,1,NULL),('1160','category','17','kolesa.html','wheels.html',301,2,NULL,0,NULL),('1161','category','18','baggage-and-fastening.html','catalog/category/view/id/18',0,2,NULL,1,NULL),('1162','category','18','bagazh-i-kreplenie.html','baggage-and-fastening.html',301,2,NULL,0,NULL),('1163','category','19','car-chemical.html','catalog/category/view/id/19',0,2,NULL,1,NULL),('1164','category','19','avtohimija.html','car-chemical.html',301,2,NULL,0,NULL),('1165','category','20','technical-assistance.html','catalog/category/view/id/20',0,2,NULL,1,NULL),('1166','category','20','tehpomosch.html','technical-assistance.html',301,2,NULL,0,NULL),('1169','category','21','tools.html','catalog/category/view/id/21',0,2,NULL,1,NULL),('1170','category','21','instrument.html','tools.html',301,2,NULL,0,NULL),('1171','category','22','tourism.html','catalog/category/view/id/22',0,2,NULL,1,NULL),('1172','category','22','turizm.html','tourism.html',301,2,NULL,0,NULL),('1173','category','23','4x4-jeeping.html','catalog/category/view/id/23',0,2,NULL,1,NULL),('1174','category','23','4h4-dzhiping.html','4x4-jeeping.html',301,2,NULL,0,NULL),('1175','category','24','moto.html','catalog/category/view/id/24',0,2,NULL,1,NULL),('1239','category','4','electronics.html','catalog/category/view/id/4',0,3,NULL,1,NULL),('1240','category','4','elektronika.html','electronics.html',301,3,NULL,0,NULL),('1241','category','4','interior.html','electronics.html',301,3,NULL,0,'a:0:{}'),('1245','category','5','sound-and-video.html','catalog/category/view/id/5',0,3,NULL,1,NULL),('1246','category','5','zvuk-i-video.html','sound-and-video.html',301,3,NULL,0,NULL),('1247','category','5','exterior.html','sound-and-video.html',301,3,NULL,0,'a:0:{}'),('1305','category','6','lighting.html','catalog/category/view/id/6',0,3,NULL,1,NULL),('1306','category','15','interiors.html','catalog/category/view/id/15',0,3,NULL,1,NULL),('1307','category','16','exteriors.html','catalog/category/view/id/16',0,3,NULL,1,NULL),('1308','category','17','wheels.html','catalog/category/view/id/17',0,3,NULL,1,NULL),('1309','category','18','baggage-and-fastening.html','catalog/category/view/id/18',0,3,NULL,1,NULL),('1310','category','19','car-chemical.html','catalog/category/view/id/19',0,3,NULL,1,NULL),('1311','category','20','technical-assistance.html','catalog/category/view/id/20',0,3,NULL,1,NULL),('1312','category','21','tools.html','catalog/category/view/id/21',0,3,NULL,1,NULL),('1313','category','22','tourism.html','catalog/category/view/id/22',0,3,NULL,1,NULL),('1314','category','23','4x4-jeeping.html','catalog/category/view/id/23',0,3,NULL,1,NULL),('1315','category','24','moto.html','catalog/category/view/id/24',0,3,NULL,1,NULL),('1336','category','3','parts-consumables.html','catalog/category/view/id/3',0,3,NULL,1,NULL),('1347','category','3','parts-and-consumables.html','parts-consumables.html',301,3,NULL,0,'a:0:{}'),('1348','category','7','parts-consumables/oil.html','catalog/category/view/id/7',0,3,NULL,1,NULL),('1357','category','7','parts-and-consumables/oil.html','parts-consumables/oil.html',301,3,NULL,0,'a:0:{}'),('1358','category','8','parts-consumables/oil/engine-oil.html','catalog/category/view/id/8',0,3,NULL,1,NULL),('1361','category','10','parts-consumables/oil/engine-oil/castrol.html','catalog/category/view/id/10',0,3,NULL,1,NULL),('1362','category','10','parts-and-consumables/oil/engine-oil/castrol.html','parts-consumables/oil/engine-oil/castrol.html',301,3,NULL,0,'a:0:{}'),('1363','category','11','parts-consumables/oil/engine-oil/shell.html','catalog/category/view/id/11',0,3,NULL,1,NULL),('1364','category','11','parts-and-consumables/oil/engine-oil/shell.html','parts-consumables/oil/engine-oil/shell.html',301,3,NULL,0,'a:0:{}'),('1365','category','8','parts-and-consumables/oil/engine-oil.html','parts-consumables/oil/engine-oil.html',301,3,NULL,0,'a:0:{}'),('1366','category','9','parts-consumables/oil/engine-oil/mobil.html','catalog/category/view/id/9',0,2,NULL,1,NULL),('1367','category','9','parts-consumables/oil/motornoe-maslo/mobil.html','parts-consumables/oil/engine-oil/mobil.html',301,2,NULL,0,'a:0:{}'),('1368','category','9','parts-consumables/maslo/motornoe-maslo/mobil.html','parts-consumables/oil/engine-oil/mobil.html',301,2,NULL,0,'a:0:{}'),('1369','category','9','zapchasti-i-rashodniki/maslo/motornoe-maslo/mobil.html','parts-consumables/oil/engine-oil/mobil.html',301,2,NULL,0,'a:0:{}'),('1370','category','9','zapchasti-i-rashodniki/maslo/engine-oil/mobil.html','parts-consumables/oil/engine-oil/mobil.html',301,2,NULL,0,'a:0:{}'),('1371','category','9','parts-and-consumables/oil/engine-oil/mobil.html','parts-consumables/oil/engine-oil/mobil.html',301,2,NULL,0,'a:0:{}'),('1372','category','9','parts-consumables/oil/engine-oil/mobil.html','catalog/category/view/id/9',0,3,NULL,1,NULL),('1373','category','9','parts-and-consumables/oil/engine-oil/mobil.html','parts-consumables/oil/engine-oil/mobil.html',301,3,NULL,0,'a:0:{}'),('1374','category','9','parts-consumables/oil/engine-oil/mobil.html','catalog/category/view/id/9',0,1,NULL,1,NULL),('1375','category','9','parts-and-consumables/oil/engine-oil/mobil.html','parts-consumables/oil/engine-oil/mobil.html',301,1,NULL,0,'a:0:{}'),('1391','product','3','motornoe-maslo-mobil-super-3000-x1-5w-40-4l-2.html','catalog/product/view/id/3',0,1,NULL,1,NULL),('1392','product','3','parts-consumables/oil/engine-oil/mobil/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-2.html','catalog/product/view/id/3/category/9',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"9\";}'),('1393','product','3','parts-consumables/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-2.html','catalog/product/view/id/3/category/3',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('1394','product','3','parts-consumables/oil/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-2.html','catalog/product/view/id/3/category/7',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"7\";}'),('1395','product','3','parts-consumables/oil/engine-oil/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-2.html','catalog/product/view/id/3/category/8',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"8\";}'),('1396','product','4','motornoe-maslo-mobil-super-3000-x1-5w-40-4l-3.html','catalog/product/view/id/4',0,1,NULL,1,NULL),('1397','product','4','parts-consumables/oil/engine-oil/mobil/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-3.html','catalog/product/view/id/4/category/9',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"9\";}'),('1398','product','4','parts-consumables/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-3.html','catalog/product/view/id/4/category/3',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('1399','product','4','parts-consumables/oil/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-3.html','catalog/product/view/id/4/category/7',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"7\";}'),('1400','product','4','parts-consumables/oil/engine-oil/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-3.html','catalog/product/view/id/4/category/8',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"8\";}'),('1401','product','5','motornoe-maslo-mobil-super-3000-x1-5w-40-4l-4.html','catalog/product/view/id/5',0,1,NULL,1,NULL),('1402','product','5','parts-consumables/oil/engine-oil/mobil/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-4.html','catalog/product/view/id/5/category/9',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"9\";}'),('1403','product','5','parts-consumables/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-4.html','catalog/product/view/id/5/category/3',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('1404','product','5','parts-consumables/oil/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-4.html','catalog/product/view/id/5/category/7',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"7\";}'),('1405','product','5','parts-consumables/oil/engine-oil/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-4.html','catalog/product/view/id/5/category/8',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"8\";}'),('1406','product','6','motornoe-maslo-mobil-super-3000-x1-5w-40-4l-5.html','catalog/product/view/id/6',0,1,NULL,1,NULL),('1407','product','6','parts-consumables/oil/engine-oil/mobil/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-5.html','catalog/product/view/id/6/category/9',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"9\";}'),('1408','product','6','parts-consumables/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-5.html','catalog/product/view/id/6/category/3',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('1409','product','6','parts-consumables/oil/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-5.html','catalog/product/view/id/6/category/7',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"7\";}'),('1410','product','6','parts-consumables/oil/engine-oil/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-5.html','catalog/product/view/id/6/category/8',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"8\";}'),('1411','product','7','motornoe-maslo-mobil-super-3000-x1-5w-40-4l-6.html','catalog/product/view/id/7',0,1,NULL,1,NULL),('1412','product','7','parts-consumables/oil/engine-oil/mobil/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-6.html','catalog/product/view/id/7/category/9',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"9\";}'),('1413','product','7','parts-consumables/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-6.html','catalog/product/view/id/7/category/3',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('1414','product','7','parts-consumables/oil/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-6.html','catalog/product/view/id/7/category/7',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"7\";}'),('1415','product','7','parts-consumables/oil/engine-oil/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-6.html','catalog/product/view/id/7/category/8',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"8\";}'),('1416','product','8','motornoe-maslo-mobil-super-3000-x1-5w-40-4l-7.html','catalog/product/view/id/8',0,1,NULL,1,NULL),('1417','product','8','parts-consumables/oil/engine-oil/mobil/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-7.html','catalog/product/view/id/8/category/9',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"9\";}'),('1418','product','8','parts-consumables/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-7.html','catalog/product/view/id/8/category/3',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('1419','product','8','parts-consumables/oil/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-7.html','catalog/product/view/id/8/category/7',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"7\";}'),('1420','product','8','parts-consumables/oil/engine-oil/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-7.html','catalog/product/view/id/8/category/8',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"8\";}'),('1421','product','9','motornoe-maslo-mobil-super-3000-x1-5w-40-4l-8.html','catalog/product/view/id/9',0,1,NULL,1,NULL),('1422','product','9','parts-consumables/oil/engine-oil/mobil/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-8.html','catalog/product/view/id/9/category/9',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"9\";}'),('1423','product','9','parts-consumables/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-8.html','catalog/product/view/id/9/category/3',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('1424','product','9','parts-consumables/oil/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-8.html','catalog/product/view/id/9/category/7',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"7\";}'),('1425','product','9','parts-consumables/oil/engine-oil/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-8.html','catalog/product/view/id/9/category/8',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"8\";}'),('1426','product','1','motor-oil-mobil-super-3000-x1-5w-40-4l.html','catalog/product/view/id/1',0,3,NULL,1,NULL),('1427','product','1','parts-consumables/oil/engine-oil/mobil/motor-oil-mobil-super-3000-x1-5w-40-4l.html','catalog/product/view/id/1/category/9',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"9\";}'),('1428','product','1','motornoe-maslo-mobil-super-3000-x1-5w-40-4l.html','motor-oil-mobil-super-3000-x1-5w-40-4l.html',301,3,NULL,0,'a:0:{}'),('1429','product','1','parts-consumables/oil/engine-oil/mobil/motornoe-maslo-mobil-super-3000-x1-5w-40-4l.html','parts-consumables/oil/engine-oil/mobil/motor-oil-mobil-super-3000-x1-5w-40-4l.html',301,3,NULL,0,'a:1:{s:11:\"category_id\";s:1:\"9\";}'),('1430','product','1','parts-consumables/motor-oil-mobil-super-3000-x1-5w-40-4l.html','catalog/product/view/id/1/category/3',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('1431','product','1','parts-consumables/oil/motor-oil-mobil-super-3000-x1-5w-40-4l.html','catalog/product/view/id/1/category/7',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"7\";}'),('1432','product','1','parts-consumables/oil/engine-oil/motor-oil-mobil-super-3000-x1-5w-40-4l.html','catalog/product/view/id/1/category/8',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"8\";}'),('1433','product','1','motor-oil-mobil-super-3000-x1-5w-40-4l.html','catalog/product/view/id/1',0,1,NULL,1,NULL),('1434','product','1','parts-consumables/oil/engine-oil/mobil/motor-oil-mobil-super-3000-x1-5w-40-4l.html','catalog/product/view/id/1/category/9',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"9\";}'),('1435','product','1','motornoe-maslo-mobil-super-3000-x1-5w-40-4l.html','motor-oil-mobil-super-3000-x1-5w-40-4l.html',301,1,NULL,0,'a:0:{}'),('1436','product','1','parts-consumables/oil/engine-oil/mobil/motornoe-maslo-mobil-super-3000-x1-5w-40-4l.html','parts-consumables/oil/engine-oil/mobil/motor-oil-mobil-super-3000-x1-5w-40-4l.html',301,1,NULL,0,'a:1:{s:11:\"category_id\";s:1:\"9\";}'),('1437','product','1','parts-consumables/motor-oil-mobil-super-3000-x1-5w-40-4l.html','catalog/product/view/id/1/category/3',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('1438','product','1','parts-consumables/oil/motor-oil-mobil-super-3000-x1-5w-40-4l.html','catalog/product/view/id/1/category/7',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"7\";}'),('1439','product','1','parts-consumables/oil/engine-oil/motor-oil-mobil-super-3000-x1-5w-40-4l.html','catalog/product/view/id/1/category/8',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"8\";}'),('1440','product','2','motor-oil-mobil-super-3000-x1-5w-40-4l-1.html','catalog/product/view/id/2',0,1,NULL,1,NULL),('1441','product','2','parts-consumables/oil/engine-oil/mobil/motor-oil-mobil-super-3000-x1-5w-40-4l-1.html','catalog/product/view/id/2/category/9',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"9\";}'),('1442','product','2','motornoe-maslo-mobil-super-3000-x1-5w-40-4l-1.html','motor-oil-mobil-super-3000-x1-5w-40-4l-1.html',301,1,NULL,0,'a:0:{}'),('1443','product','2','parts-consumables/oil/engine-oil/mobil/motornoe-maslo-mobil-super-3000-x1-5w-40-4l-1.html','parts-consumables/oil/engine-oil/mobil/motor-oil-mobil-super-3000-x1-5w-40-4l-1.html',301,1,NULL,0,'a:1:{s:11:\"category_id\";s:1:\"9\";}'),('1444','product','2','parts-consumables/motor-oil-mobil-super-3000-x1-5w-40-4l-1.html','catalog/product/view/id/2/category/3',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('1445','product','2','parts-consumables/oil/motor-oil-mobil-super-3000-x1-5w-40-4l-1.html','catalog/product/view/id/2/category/7',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"7\";}'),('1446','product','2','parts-consumables/oil/engine-oil/motor-oil-mobil-super-3000-x1-5w-40-4l-1.html','catalog/product/view/id/2/category/8',0,1,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"8\";}'),('1447','product','2','motor-oil-mobil-super-3000-x1-5w-40-4l.html','catalog/product/view/id/2',0,2,NULL,1,NULL),('1448','product','2','parts-consumables/oil/engine-oil/mobil/motor-oil-mobil-super-3000-x1-5w-40-4l.html','catalog/product/view/id/2/category/9',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"9\";}'),('1449','product','2','parts-consumables/motor-oil-mobil-super-3000-x1-5w-40-4l.html','catalog/product/view/id/2/category/3',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('1450','product','2','parts-consumables/oil/motor-oil-mobil-super-3000-x1-5w-40-4l.html','catalog/product/view/id/2/category/7',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"7\";}'),('1451','product','2','parts-consumables/oil/engine-oil/motor-oil-mobil-super-3000-x1-5w-40-4l.html','catalog/product/view/id/2/category/8',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"8\";}'),('1452','product','2','motor-oil-mobil-super-3000-x1-5w-40-4l-1.html','catalog/product/view/id/2',0,3,NULL,1,NULL),('1453','product','2','parts-consumables/oil/engine-oil/mobil/motor-oil-mobil-super-3000-x1-5w-40-4l-1.html','catalog/product/view/id/2/category/9',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"9\";}'),('1454','product','2','parts-consumables/motor-oil-mobil-super-3000-x1-5w-40-4l-1.html','catalog/product/view/id/2/category/3',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('1455','product','2','parts-consumables/oil/motor-oil-mobil-super-3000-x1-5w-40-4l-1.html','catalog/product/view/id/2/category/7',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"7\";}'),('1456','product','2','parts-consumables/oil/engine-oil/motor-oil-mobil-super-3000-x1-5w-40-4l-1.html','catalog/product/view/id/2/category/8',0,3,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"8\";}'),('1469','product','1','motornoe-maslo-mobil-super-3000-x1-5w-40-4l.html','catalog/product/view/id/1',0,2,NULL,1,NULL),('1470','product','1','parts-consumables/oil/engine-oil/mobil/motornoe-maslo-mobil-super-3000-x1-5w-40-4l.html','catalog/product/view/id/1/category/9',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"9\";}'),('1471','product','1','parts-and-consumables/oil/engine-oil/mobil/motornoe-maslo-mobil-super-3000-x1-5w-40-4l.html','parts-consumables/oil/engine-oil/mobil/motornoe-maslo-mobil-super-3000-x1-5w-40-4l.html',301,2,NULL,0,'a:1:{s:11:\"category_id\";s:1:\"9\";}'),('1472','product','1','parts-consumables/motornoe-maslo-mobil-super-3000-x1-5w-40-4l.html','catalog/product/view/id/1/category/3',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"3\";}'),('1473','product','1','parts-consumables/oil/motornoe-maslo-mobil-super-3000-x1-5w-40-4l.html','catalog/product/view/id/1/category/7',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"7\";}'),('1474','product','1','parts-consumables/oil/engine-oil/motornoe-maslo-mobil-super-3000-x1-5w-40-4l.html','catalog/product/view/id/1/category/8',0,2,NULL,1,'a:1:{s:11:\"category_id\";s:1:\"8\";}'),('1475','cms-page','9','summary','cms/page/view/page_id/9',0,2,NULL,1,NULL),('1476','cms-page','9','summary','cms/page/view/page_id/9',0,3,NULL,1,NULL),('1477','cms-page','9','summary','cms/page/view/page_id/9',0,1,NULL,1,NULL);
/*!40000 ALTER TABLE `url_rewrite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variable`
--

DROP TABLE IF EXISTS `variable`;
CREATE TABLE `variable` (
  `variable_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Variable Id',
  `code` varchar(255) DEFAULT NULL COMMENT 'Variable Code',
  `name` varchar(255) DEFAULT NULL COMMENT 'Variable Name',
  PRIMARY KEY (`variable_id`),
  UNIQUE KEY `VARIABLE_CODE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Variables';

--
-- Table structure for table `variable_value`
--

DROP TABLE IF EXISTS `variable_value`;
CREATE TABLE `variable_value` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Variable Value Id',
  `variable_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Variable Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `plain_value` text COMMENT 'Plain Text Value',
  `html_value` text COMMENT 'Html Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `VARIABLE_VALUE_VARIABLE_ID_STORE_ID` (`variable_id`,`store_id`),
  KEY `VARIABLE_VALUE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Variable Value';

--
-- Table structure for table `vault_payment_token`
--

DROP TABLE IF EXISTS `vault_payment_token`;
CREATE TABLE `vault_payment_token` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `public_hash` varchar(128) NOT NULL COMMENT 'Hash code for using on frontend',
  `payment_method_code` varchar(128) NOT NULL COMMENT 'Payment method code',
  `type` varchar(128) NOT NULL COMMENT 'Type',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `expires_at` timestamp NULL DEFAULT NULL COMMENT 'Expires At',
  `gateway_token` varchar(255) NOT NULL COMMENT 'Gateway Token',
  `details` text COMMENT 'Details',
  `is_active` tinyint(1) NOT NULL COMMENT 'Is active flag',
  `is_visible` tinyint(1) NOT NULL COMMENT 'Is visible flag',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `VAULT_PAYMENT_TOKEN_HASH_UNIQUE_INDEX_PUBLIC_HASH` (`public_hash`),
  UNIQUE KEY `UNQ_54DCE14AEAEA03B587F9EF723EB10A10` (`payment_method_code`,`customer_id`,`gateway_token`),
  KEY `VAULT_PAYMENT_TOKEN_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Vault tokens of payment';

--
-- Table structure for table `vault_payment_token_order_payment_link`
--

DROP TABLE IF EXISTS `vault_payment_token_order_payment_link`;
CREATE TABLE `vault_payment_token_order_payment_link` (
  `order_payment_id` int(10) unsigned NOT NULL COMMENT 'Order payment Id',
  `payment_token_id` int(10) unsigned NOT NULL COMMENT 'Payment token Id',
  PRIMARY KEY (`order_payment_id`,`payment_token_id`),
  KEY `FK_4ED894655446D385894580BECA993862` (`payment_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Order payments to vault token';

--
-- Table structure for table `weee_tax`
--

DROP TABLE IF EXISTS `weee_tax`;
CREATE TABLE `weee_tax` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `country` varchar(2) DEFAULT NULL COMMENT 'Country',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  `state` int(11) NOT NULL DEFAULT '0' COMMENT 'State',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  PRIMARY KEY (`value_id`),
  KEY `WEEE_TAX_WEBSITE_ID` (`website_id`),
  KEY `WEEE_TAX_ENTITY_ID` (`entity_id`),
  KEY `WEEE_TAX_COUNTRY` (`country`),
  KEY `WEEE_TAX_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Weee Tax';

--
-- Table structure for table `widget`
--

DROP TABLE IF EXISTS `widget`;
CREATE TABLE `widget` (
  `widget_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Widget Id',
  `widget_code` varchar(255) DEFAULT NULL COMMENT 'Widget code for template directive',
  `widget_type` varchar(255) DEFAULT NULL COMMENT 'Widget Type',
  `parameters` text COMMENT 'Parameters',
  PRIMARY KEY (`widget_id`),
  KEY `WIDGET_WIDGET_CODE` (`widget_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Preconfigured Widgets';

--
-- Table structure for table `widget_instance`
--

DROP TABLE IF EXISTS `widget_instance`;
CREATE TABLE `widget_instance` (
  `instance_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Instance Id',
  `instance_type` varchar(255) DEFAULT NULL COMMENT 'Instance Type',
  `theme_id` int(10) unsigned NOT NULL COMMENT 'Theme id',
  `title` varchar(255) DEFAULT NULL COMMENT 'Widget Title',
  `store_ids` varchar(255) NOT NULL DEFAULT '0' COMMENT 'Store ids',
  `widget_parameters` text COMMENT 'Widget parameters',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort order',
  PRIMARY KEY (`instance_id`),
  KEY `WIDGET_INSTANCE_THEME_ID_THEME_THEME_ID` (`theme_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Instances of Widget for Package Theme';

--
-- Dumping data for table `widget_instance`
--

LOCK TABLES `widget_instance` WRITE;
/*!40000 ALTER TABLE `widget_instance` DISABLE KEYS */;
INSERT INTO `widget_instance` VALUES ('1','Magento\\Reports\\Block\\Product\\Widget\\Viewed','4','Viewed Products','0','a:1:{s:9:\"page_size\";s:1:\"9\";}',10);
/*!40000 ALTER TABLE `widget_instance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widget_instance_page`
--

DROP TABLE IF EXISTS `widget_instance_page`;
CREATE TABLE `widget_instance_page` (
  `page_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Page Id',
  `instance_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Id',
  `page_group` varchar(25) DEFAULT NULL COMMENT 'Block Group Type',
  `layout_handle` varchar(255) DEFAULT NULL COMMENT 'Layout Handle',
  `block_reference` varchar(255) DEFAULT NULL COMMENT 'Container',
  `page_for` varchar(25) DEFAULT NULL COMMENT 'For instance entities',
  `entities` text COMMENT 'Catalog entities (comma separated)',
  `page_template` varchar(255) DEFAULT NULL COMMENT 'Path to widget template',
  PRIMARY KEY (`page_id`),
  KEY `WIDGET_INSTANCE_PAGE_INSTANCE_ID` (`instance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Instance of Widget on Page';

--
-- Dumping data for table `widget_instance_page`
--

LOCK TABLES `widget_instance_page` WRITE;
/*!40000 ALTER TABLE `widget_instance_page` DISABLE KEYS */;
INSERT INTO `widget_instance_page` VALUES ('1','1','pages','catalog_product_view','content','all','','widget/viewed/content/viewed_grid.phtml');
/*!40000 ALTER TABLE `widget_instance_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widget_instance_page_layout`
--

DROP TABLE IF EXISTS `widget_instance_page_layout`;
CREATE TABLE `widget_instance_page_layout` (
  `page_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Page Id',
  `layout_update_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Layout Update Id',
  UNIQUE KEY `WIDGET_INSTANCE_PAGE_LAYOUT_LAYOUT_UPDATE_ID_PAGE_ID` (`layout_update_id`,`page_id`),
  KEY `WIDGET_INSTANCE_PAGE_LAYOUT_PAGE_ID` (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout updates';

--
-- Dumping data for table `widget_instance_page_layout`
--

LOCK TABLES `widget_instance_page_layout` WRITE;
/*!40000 ALTER TABLE `widget_instance_page_layout` DISABLE KEYS */;
INSERT INTO `widget_instance_page_layout` VALUES ('1','1');
/*!40000 ALTER TABLE `widget_instance_page_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE `wishlist` (
  `wishlist_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Wishlist ID',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer ID',
  `shared` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sharing flag (0 or 1)',
  `sharing_code` varchar(32) DEFAULT NULL COMMENT 'Sharing encrypted code',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Last updated date',
  PRIMARY KEY (`wishlist_id`),
  UNIQUE KEY `WISHLIST_CUSTOMER_ID` (`customer_id`),
  KEY `WISHLIST_SHARED` (`shared`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Wishlist main Table';

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` VALUES ('1','1',0,'76b03b8ab56948c563a7dab85a8f7bbd','2017-07-26 21:16:01');
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist_item`
--

DROP TABLE IF EXISTS `wishlist_item`;
CREATE TABLE `wishlist_item` (
  `wishlist_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Wishlist item ID',
  `wishlist_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Wishlist ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  `added_at` timestamp NULL DEFAULT NULL COMMENT 'Add date and time',
  `description` text COMMENT 'Short description of wish list item',
  `qty` decimal(12,4) NOT NULL COMMENT 'Qty',
  PRIMARY KEY (`wishlist_item_id`),
  KEY `WISHLIST_ITEM_WISHLIST_ID` (`wishlist_id`),
  KEY `WISHLIST_ITEM_PRODUCT_ID` (`product_id`),
  KEY `WISHLIST_ITEM_STORE_ID` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Wishlist items';

--
-- Dumping data for table `wishlist_item`
--

LOCK TABLES `wishlist_item` WRITE;
/*!40000 ALTER TABLE `wishlist_item` DISABLE KEYS */;
INSERT INTO `wishlist_item` VALUES ('1','1','1',1,'2017-07-22 12:14:36',NULL,'3.0000');
/*!40000 ALTER TABLE `wishlist_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist_item_option`
--

DROP TABLE IF EXISTS `wishlist_item_option`;
CREATE TABLE `wishlist_item_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Id',
  `wishlist_item_id` int(10) unsigned NOT NULL COMMENT 'Wishlist Item Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`option_id`),
  KEY `FK_A014B30B04B72DD0EAB3EECD779728D6` (`wishlist_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Wishlist Item Option Table';

--
-- Dumping data for table `wishlist_item_option`
--

LOCK TABLES `wishlist_item_option` WRITE;
/*!40000 ALTER TABLE `wishlist_item_option` DISABLE KEYS */;
INSERT INTO `wishlist_item_option` VALUES ('1','1','1','info_buyRequest','a:3:{s:7:\"product\";s:1:\"1\";s:4:\"uenc\";s:108:\"aHR0cDovL2xvY2FsaG9zdC9hdXRvLXNvdW5kLXRoZW1lL3BhcnRzLWFuZC1jb25zdW1hYmxlcy9vaWwvZW5naW5lLW9pbC9tb2JpbC5odG1s\";s:8:\"form_key\";s:16:\"gU6DCwOyKbgPhN6O\";}');
/*!40000 ALTER TABLE `wishlist_item_option` ENABLE KEYS */;
UNLOCK TABLES;

ALTER TABLE `admin_passwords`
  ADD CONSTRAINT `ADMIN_PASSWORDS_USER_ID_ADMIN_USER_USER_ID` FOREIGN KEY (`user_id`) REFERENCES `admin_user` (`user_id`) ON DELETE CASCADE;

ALTER TABLE `admin_user_session`
  ADD CONSTRAINT `ADMIN_USER_SESSION_USER_ID_ADMIN_USER_USER_ID` FOREIGN KEY (`user_id`) REFERENCES `admin_user` (`user_id`) ON DELETE CASCADE;

ALTER TABLE `authorization_rule`
  ADD CONSTRAINT `AUTHORIZATION_RULE_ROLE_ID_AUTHORIZATION_ROLE_ROLE_ID` FOREIGN KEY (`role_id`) REFERENCES `authorization_role` (`role_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_category_entity_datetime`
  ADD CONSTRAINT `CATALOG_CATEGORY_ENTITY_DATETIME_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_DTIME_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_category_entity_decimal`
  ADD CONSTRAINT `CATALOG_CATEGORY_ENTITY_DECIMAL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_DEC_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_category_entity_int`
  ADD CONSTRAINT `CATALOG_CATEGORY_ENTITY_INT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_INT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_INT_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_category_entity_text`
  ADD CONSTRAINT `CATALOG_CATEGORY_ENTITY_TEXT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_TEXT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_TEXT_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_category_entity_varchar`
  ADD CONSTRAINT `CATALOG_CATEGORY_ENTITY_VARCHAR_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_VCHR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_VCHR_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_category_product`
  ADD CONSTRAINT `CAT_CTGR_PRD_CTGR_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`category_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_PRD_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_compare_item`
  ADD CONSTRAINT `CATALOG_COMPARE_ITEM_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CATALOG_COMPARE_ITEM_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CATALOG_COMPARE_ITEM_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `catalog_eav_attribute`
  ADD CONSTRAINT `CATALOG_EAV_ATTRIBUTE_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_bundle_option`
  ADD CONSTRAINT `CAT_PRD_BNDL_OPT_PARENT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_bundle_option_value`
  ADD CONSTRAINT `CAT_PRD_BNDL_OPT_VAL_OPT_ID_CAT_PRD_BNDL_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_bundle_option` (`option_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_bundle_price_index`
  ADD CONSTRAINT `CAT_PRD_BNDL_PRICE_IDX_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_BNDL_PRICE_IDX_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_BNDL_PRICE_IDX_WS_ID_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_bundle_selection`
  ADD CONSTRAINT `CAT_PRD_BNDL_SELECTION_OPT_ID_CAT_PRD_BNDL_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_bundle_option` (`option_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_BNDL_SELECTION_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_bundle_selection_price`
  ADD CONSTRAINT `CAT_PRD_BNDL_SELECTION_PRICE_WS_ID_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_DCF37523AA05D770A70AA4ED7C2616E4` FOREIGN KEY (`selection_id`) REFERENCES `catalog_product_bundle_selection` (`selection_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_entity`
  ADD CONSTRAINT `CAT_PRD_ENTT_ATTR_SET_ID_EAV_ATTR_SET_ATTR_SET_ID` FOREIGN KEY (`attribute_set_id`) REFERENCES `eav_attribute_set` (`attribute_set_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_entity_datetime`
  ADD CONSTRAINT `CATALOG_PRODUCT_ENTITY_DATETIME_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_DTIME_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_entity_decimal`
  ADD CONSTRAINT `CATALOG_PRODUCT_ENTITY_DECIMAL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_DEC_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_entity_gallery`
  ADD CONSTRAINT `CATALOG_PRODUCT_ENTITY_GALLERY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_GLR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_GLR_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_entity_int`
  ADD CONSTRAINT `CATALOG_PRODUCT_ENTITY_INT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_INT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_INT_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_entity_media_gallery`
  ADD CONSTRAINT `CAT_PRD_ENTT_MDA_GLR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_entity_media_gallery_value`
  ADD CONSTRAINT `CAT_PRD_ENTT_MDA_GLR_VAL_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_MDA_GLR_VAL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_MDA_GLR_VAL_VAL_ID_CAT_PRD_ENTT_MDA_GLR_VAL_ID` FOREIGN KEY (`value_id`) REFERENCES `catalog_product_entity_media_gallery` (`value_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_entity_media_gallery_value_to_entity`
  ADD CONSTRAINT `CAT_PRD_ENTT_MDA_GLR_VAL_TO_ENTT_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_A6C6C8FAA386736921D3A7C4B50B1185` FOREIGN KEY (`value_id`) REFERENCES `catalog_product_entity_media_gallery` (`value_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_entity_media_gallery_value_video`
  ADD CONSTRAINT `CAT_PRD_ENTT_MDA_GLR_VAL_VIDEO_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_6FDF205946906B0E653E60AA769899F8` FOREIGN KEY (`value_id`) REFERENCES `catalog_product_entity_media_gallery` (`value_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_entity_text`
  ADD CONSTRAINT `CATALOG_PRODUCT_ENTITY_TEXT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_TEXT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_TEXT_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_entity_tier_price`
  ADD CONSTRAINT `CAT_PRD_ENTT_TIER_PRICE_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_TIER_PRICE_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_TIER_PRICE_WS_ID_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_entity_varchar`
  ADD CONSTRAINT `CATALOG_PRODUCT_ENTITY_VARCHAR_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_VCHR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_VCHR_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_index_price`
  ADD CONSTRAINT `CATALOG_PRODUCT_INDEX_PRICE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_IDX_PRICE_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_IDX_PRICE_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_index_tier_price`
  ADD CONSTRAINT `CAT_PRD_IDX_TIER_PRICE_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_IDX_TIER_PRICE_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_IDX_TIER_PRICE_WS_ID_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_index_website`
  ADD CONSTRAINT `CAT_PRD_IDX_WS_WS_ID_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_link`
  ADD CONSTRAINT `CATALOG_PRODUCT_LINK_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_LNK_LNKED_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`linked_product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_LNK_LNK_TYPE_ID_CAT_PRD_LNK_TYPE_LNK_TYPE_ID` FOREIGN KEY (`link_type_id`) REFERENCES `catalog_product_link_type` (`link_type_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_link_attribute`
  ADD CONSTRAINT `CAT_PRD_LNK_ATTR_LNK_TYPE_ID_CAT_PRD_LNK_TYPE_LNK_TYPE_ID` FOREIGN KEY (`link_type_id`) REFERENCES `catalog_product_link_type` (`link_type_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_link_attribute_decimal`
  ADD CONSTRAINT `CAT_PRD_LNK_ATTR_DEC_LNK_ID_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `catalog_product_link` (`link_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AB2EFA9A14F7BCF1D5400056203D14B6` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_link_attribute_int`
  ADD CONSTRAINT `CAT_PRD_LNK_ATTR_INT_LNK_ID_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `catalog_product_link` (`link_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D6D878F8BA2A4282F8DDED7E6E3DE35C` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_link_attribute_varchar`
  ADD CONSTRAINT `CAT_PRD_LNK_ATTR_VCHR_LNK_ID_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `catalog_product_link` (`link_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_DEE9C4DA61CFCC01DFCF50F0D79CEA51` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_option`
  ADD CONSTRAINT `CAT_PRD_OPT_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_option_price`
  ADD CONSTRAINT `CATALOG_PRODUCT_OPTION_PRICE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_OPT_PRICE_OPT_ID_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_option` (`option_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_option_title`
  ADD CONSTRAINT `CATALOG_PRODUCT_OPTION_TITLE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_OPT_TTL_OPT_ID_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_option` (`option_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_option_type_price`
  ADD CONSTRAINT `CATALOG_PRODUCT_OPTION_TYPE_PRICE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_B523E3378E8602F376CC415825576B7F` FOREIGN KEY (`option_type_id`) REFERENCES `catalog_product_option_type_value` (`option_type_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_option_type_title`
  ADD CONSTRAINT `CATALOG_PRODUCT_OPTION_TYPE_TITLE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_C085B9CF2C2A302E8043FDEA1937D6A2` FOREIGN KEY (`option_type_id`) REFERENCES `catalog_product_option_type_value` (`option_type_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_option_type_value`
  ADD CONSTRAINT `CAT_PRD_OPT_TYPE_VAL_OPT_ID_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_option` (`option_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_relation`
  ADD CONSTRAINT `CAT_PRD_RELATION_CHILD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`child_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_RELATION_PARENT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_super_attribute`
  ADD CONSTRAINT `CAT_PRD_SPR_ATTR_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_super_attribute_label`
  ADD CONSTRAINT `CATALOG_PRODUCT_SUPER_ATTRIBUTE_LABEL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_309442281DF7784210ED82B2CC51E5D5` FOREIGN KEY (`product_super_attribute_id`) REFERENCES `catalog_product_super_attribute` (`product_super_attribute_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_super_link`
  ADD CONSTRAINT `CAT_PRD_SPR_LNK_PARENT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_SPR_LNK_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_product_website`
  ADD CONSTRAINT `CATALOG_PRODUCT_WEBSITE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_WS_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `catalog_url_rewrite_product_category`
  ADD CONSTRAINT `CAT_URL_REWRITE_PRD_CTGR_CTGR_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`category_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_URL_REWRITE_PRD_CTGR_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_BB79E64705D7F17FE181F23144528FC8` FOREIGN KEY (`url_rewrite_id`) REFERENCES `url_rewrite` (`url_rewrite_id`) ON DELETE CASCADE;

ALTER TABLE `cataloginventory_stock_item`
  ADD CONSTRAINT `CATINV_STOCK_ITEM_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CATINV_STOCK_ITEM_STOCK_ID_CATINV_STOCK_STOCK_ID` FOREIGN KEY (`stock_id`) REFERENCES `cataloginventory_stock` (`stock_id`) ON DELETE CASCADE;

ALTER TABLE `catalogrule_customer_group`
  ADD CONSTRAINT `CATALOGRULE_CUSTOMER_GROUP_RULE_ID_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `catalogrule` (`rule_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CATRULE_CSTR_GROUP_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE;

ALTER TABLE `catalogrule_group_website`
  ADD CONSTRAINT `CATALOGRULE_GROUP_WEBSITE_RULE_ID_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `catalogrule` (`rule_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CATALOGRULE_GROUP_WEBSITE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CATRULE_GROUP_WS_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE;

ALTER TABLE `catalogrule_website`
  ADD CONSTRAINT `CATALOGRULE_WEBSITE_RULE_ID_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `catalogrule` (`rule_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CATALOGRULE_WEBSITE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `checkout_agreement_store`
  ADD CONSTRAINT `CHECKOUT_AGREEMENT_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CHKT_AGRT_STORE_AGRT_ID_CHKT_AGRT_AGRT_ID` FOREIGN KEY (`agreement_id`) REFERENCES `checkout_agreement` (`agreement_id`) ON DELETE CASCADE;

ALTER TABLE `cms_block_store`
  ADD CONSTRAINT `CMS_BLOCK_STORE_BLOCK_ID_CMS_BLOCK_BLOCK_ID` FOREIGN KEY (`block_id`) REFERENCES `cms_block` (`block_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CMS_BLOCK_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `cms_page_store`
  ADD CONSTRAINT `CMS_PAGE_STORE_PAGE_ID_CMS_PAGE_PAGE_ID` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`page_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CMS_PAGE_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `customer_address_entity`
  ADD CONSTRAINT `CUSTOMER_ADDRESS_ENTITY_PARENT_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `customer_address_entity_datetime`
  ADD CONSTRAINT `CSTR_ADDR_ENTT_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CSTR_ADDR_ENTT_DTIME_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `customer_address_entity_decimal`
  ADD CONSTRAINT `CSTR_ADDR_ENTT_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CSTR_ADDR_ENTT_DEC_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `customer_address_entity_int`
  ADD CONSTRAINT `CSTR_ADDR_ENTT_INT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CSTR_ADDR_ENTT_INT_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `customer_address_entity_text`
  ADD CONSTRAINT `CSTR_ADDR_ENTT_TEXT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CSTR_ADDR_ENTT_TEXT_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `customer_address_entity_varchar`
  ADD CONSTRAINT `CSTR_ADDR_ENTT_VCHR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CSTR_ADDR_ENTT_VCHR_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `customer_eav_attribute`
  ADD CONSTRAINT `CUSTOMER_EAV_ATTRIBUTE_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE;

ALTER TABLE `customer_eav_attribute_website`
  ADD CONSTRAINT `CSTR_EAV_ATTR_WS_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CSTR_EAV_ATTR_WS_WS_ID_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `customer_entity`
  ADD CONSTRAINT `CUSTOMER_ENTITY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `CUSTOMER_ENTITY_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE SET NULL;

ALTER TABLE `customer_entity_datetime`
  ADD CONSTRAINT `CUSTOMER_ENTITY_DATETIME_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CUSTOMER_ENTITY_DATETIME_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `customer_entity_decimal`
  ADD CONSTRAINT `CUSTOMER_ENTITY_DECIMAL_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `customer_entity_int`
  ADD CONSTRAINT `CUSTOMER_ENTITY_INT_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CUSTOMER_ENTITY_INT_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `customer_entity_text`
  ADD CONSTRAINT `CUSTOMER_ENTITY_TEXT_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CUSTOMER_ENTITY_TEXT_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `customer_entity_varchar`
  ADD CONSTRAINT `CUSTOMER_ENTITY_VARCHAR_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `customer_form_attribute`
  ADD CONSTRAINT `CUSTOMER_FORM_ATTRIBUTE_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE;

ALTER TABLE `design_change`
  ADD CONSTRAINT `DESIGN_CHANGE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `directory_country_region_name`
  ADD CONSTRAINT `DIR_COUNTRY_REGION_NAME_REGION_ID_DIR_COUNTRY_REGION_REGION_ID` FOREIGN KEY (`region_id`) REFERENCES `directory_country_region` (`region_id`) ON DELETE CASCADE;

ALTER TABLE `downloadable_link`
  ADD CONSTRAINT `DOWNLOADABLE_LINK_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `downloadable_link_price`
  ADD CONSTRAINT `DOWNLOADABLE_LINK_PRICE_LINK_ID_DOWNLOADABLE_LINK_LINK_ID` FOREIGN KEY (`link_id`) REFERENCES `downloadable_link` (`link_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `DOWNLOADABLE_LINK_PRICE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `downloadable_link_purchased`
  ADD CONSTRAINT `DL_LNK_PURCHASED_CSTR_ID_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `DOWNLOADABLE_LINK_PURCHASED_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE SET NULL;

ALTER TABLE `downloadable_link_purchased_item`
  ADD CONSTRAINT `DL_LNK_PURCHASED_ITEM_ORDER_ITEM_ID_SALES_ORDER_ITEM_ITEM_ID` FOREIGN KEY (`order_item_id`) REFERENCES `sales_order_item` (`item_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `DL_LNK_PURCHASED_ITEM_PURCHASED_ID_DL_LNK_PURCHASED_PURCHASED_ID` FOREIGN KEY (`purchased_id`) REFERENCES `downloadable_link_purchased` (`purchased_id`) ON DELETE CASCADE;

ALTER TABLE `downloadable_link_title`
  ADD CONSTRAINT `DOWNLOADABLE_LINK_TITLE_LINK_ID_DOWNLOADABLE_LINK_LINK_ID` FOREIGN KEY (`link_id`) REFERENCES `downloadable_link` (`link_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `DOWNLOADABLE_LINK_TITLE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `downloadable_sample`
  ADD CONSTRAINT `DOWNLOADABLE_SAMPLE_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `downloadable_sample_title`
  ADD CONSTRAINT `DL_SAMPLE_TTL_SAMPLE_ID_DL_SAMPLE_SAMPLE_ID` FOREIGN KEY (`sample_id`) REFERENCES `downloadable_sample` (`sample_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `DOWNLOADABLE_SAMPLE_TITLE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `eav_attribute`
  ADD CONSTRAINT `EAV_ATTRIBUTE_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE;

ALTER TABLE `eav_attribute_group`
  ADD CONSTRAINT `EAV_ATTR_GROUP_ATTR_SET_ID_EAV_ATTR_SET_ATTR_SET_ID` FOREIGN KEY (`attribute_set_id`) REFERENCES `eav_attribute_set` (`attribute_set_id`) ON DELETE CASCADE;

ALTER TABLE `eav_attribute_label`
  ADD CONSTRAINT `EAV_ATTRIBUTE_LABEL_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ATTRIBUTE_LABEL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `eav_attribute_option`
  ADD CONSTRAINT `EAV_ATTRIBUTE_OPTION_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE;

ALTER TABLE `eav_attribute_option_swatch`
  ADD CONSTRAINT `EAV_ATTRIBUTE_OPTION_SWATCH_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ATTR_OPT_SWATCH_OPT_ID_EAV_ATTR_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `eav_attribute_option` (`option_id`) ON DELETE CASCADE;

ALTER TABLE `eav_attribute_option_value`
  ADD CONSTRAINT `EAV_ATTRIBUTE_OPTION_VALUE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ATTR_OPT_VAL_OPT_ID_EAV_ATTR_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `eav_attribute_option` (`option_id`) ON DELETE CASCADE;

ALTER TABLE `eav_attribute_set`
  ADD CONSTRAINT `EAV_ATTRIBUTE_SET_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE;

ALTER TABLE `eav_entity`
  ADD CONSTRAINT `EAV_ENTITY_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `eav_entity_attribute`
  ADD CONSTRAINT `EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTT_ATTR_ATTR_GROUP_ID_EAV_ATTR_GROUP_ATTR_GROUP_ID` FOREIGN KEY (`attribute_group_id`) REFERENCES `eav_attribute_group` (`attribute_group_id`) ON DELETE CASCADE;

ALTER TABLE `eav_entity_datetime`
  ADD CONSTRAINT `EAV_ENTITY_DATETIME_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_DATETIME_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTT_DTIME_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE;

ALTER TABLE `eav_entity_decimal`
  ADD CONSTRAINT `EAV_ENTITY_DECIMAL_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_DECIMAL_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_DECIMAL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `eav_entity_int`
  ADD CONSTRAINT `EAV_ENTITY_INT_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_INT_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_INT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `eav_entity_store`
  ADD CONSTRAINT `EAV_ENTITY_STORE_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `eav_entity_text`
  ADD CONSTRAINT `EAV_ENTITY_TEXT_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_TEXT_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_TEXT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `eav_entity_varchar`
  ADD CONSTRAINT `EAV_ENTITY_VARCHAR_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_VARCHAR_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_VARCHAR_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `eav_form_element`
  ADD CONSTRAINT `EAV_FORM_ELEMENT_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_FORM_ELEMENT_FIELDSET_ID_EAV_FORM_FIELDSET_FIELDSET_ID` FOREIGN KEY (`fieldset_id`) REFERENCES `eav_form_fieldset` (`fieldset_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `EAV_FORM_ELEMENT_TYPE_ID_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `eav_form_type` (`type_id`) ON DELETE CASCADE;

ALTER TABLE `eav_form_fieldset`
  ADD CONSTRAINT `EAV_FORM_FIELDSET_TYPE_ID_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `eav_form_type` (`type_id`) ON DELETE CASCADE;

ALTER TABLE `eav_form_fieldset_label`
  ADD CONSTRAINT `EAV_FORM_FIELDSET_LABEL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_FORM_FSET_LBL_FSET_ID_EAV_FORM_FSET_FSET_ID` FOREIGN KEY (`fieldset_id`) REFERENCES `eav_form_fieldset` (`fieldset_id`) ON DELETE CASCADE;

ALTER TABLE `eav_form_type`
  ADD CONSTRAINT `EAV_FORM_TYPE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `eav_form_type_entity`
  ADD CONSTRAINT `EAV_FORM_TYPE_ENTITY_TYPE_ID_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `eav_form_type` (`type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_FORM_TYPE_ENTT_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE;

ALTER TABLE `googleoptimizer_code`
  ADD CONSTRAINT `GOOGLEOPTIMIZER_CODE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `integration`
  ADD CONSTRAINT `INTEGRATION_CONSUMER_ID_OAUTH_CONSUMER_ENTITY_ID` FOREIGN KEY (`consumer_id`) REFERENCES `oauth_consumer` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `layout_link`
  ADD CONSTRAINT `LAYOUT_LINK_LAYOUT_UPDATE_ID_LAYOUT_UPDATE_LAYOUT_UPDATE_ID` FOREIGN KEY (`layout_update_id`) REFERENCES `layout_update` (`layout_update_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `LAYOUT_LINK_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `LAYOUT_LINK_THEME_ID_THEME_THEME_ID` FOREIGN KEY (`theme_id`) REFERENCES `theme` (`theme_id`) ON DELETE CASCADE;

ALTER TABLE `newsletter_problem`
  ADD CONSTRAINT `NEWSLETTER_PROBLEM_QUEUE_ID_NEWSLETTER_QUEUE_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `newsletter_queue` (`queue_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `NLTTR_PROBLEM_SUBSCRIBER_ID_NLTTR_SUBSCRIBER_SUBSCRIBER_ID` FOREIGN KEY (`subscriber_id`) REFERENCES `newsletter_subscriber` (`subscriber_id`) ON DELETE CASCADE;

ALTER TABLE `newsletter_queue`
  ADD CONSTRAINT `NEWSLETTER_QUEUE_TEMPLATE_ID_NEWSLETTER_TEMPLATE_TEMPLATE_ID` FOREIGN KEY (`template_id`) REFERENCES `newsletter_template` (`template_id`) ON DELETE CASCADE;

ALTER TABLE `newsletter_queue_link`
  ADD CONSTRAINT `NEWSLETTER_QUEUE_LINK_QUEUE_ID_NEWSLETTER_QUEUE_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `newsletter_queue` (`queue_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `NLTTR_QUEUE_LNK_SUBSCRIBER_ID_NLTTR_SUBSCRIBER_SUBSCRIBER_ID` FOREIGN KEY (`subscriber_id`) REFERENCES `newsletter_subscriber` (`subscriber_id`) ON DELETE CASCADE;

ALTER TABLE `newsletter_queue_store_link`
  ADD CONSTRAINT `NEWSLETTER_QUEUE_STORE_LINK_QUEUE_ID_NEWSLETTER_QUEUE_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `newsletter_queue` (`queue_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `NEWSLETTER_QUEUE_STORE_LINK_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `newsletter_subscriber`
  ADD CONSTRAINT `NEWSLETTER_SUBSCRIBER_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `oauth_nonce`
  ADD CONSTRAINT `OAUTH_NONCE_CONSUMER_ID_OAUTH_CONSUMER_ENTITY_ID` FOREIGN KEY (`consumer_id`) REFERENCES `oauth_consumer` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `oauth_token`
  ADD CONSTRAINT `OAUTH_TOKEN_ADMIN_ID_ADMIN_USER_USER_ID` FOREIGN KEY (`admin_id`) REFERENCES `admin_user` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `OAUTH_TOKEN_CONSUMER_ID_OAUTH_CONSUMER_ENTITY_ID` FOREIGN KEY (`consumer_id`) REFERENCES `oauth_consumer` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `OAUTH_TOKEN_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `paypal_billing_agreement`
  ADD CONSTRAINT `PAYPAL_BILLING_AGREEMENT_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PAYPAL_BILLING_AGREEMENT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `paypal_billing_agreement_order`
  ADD CONSTRAINT `PAYPAL_BILLING_AGREEMENT_ORDER_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PAYPAL_BILLING_AGRT_ORDER_AGRT_ID_PAYPAL_BILLING_AGRT_AGRT_ID` FOREIGN KEY (`agreement_id`) REFERENCES `paypal_billing_agreement` (`agreement_id`) ON DELETE CASCADE;

ALTER TABLE `paypal_cert`
  ADD CONSTRAINT `PAYPAL_CERT_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `paypal_settlement_report_row`
  ADD CONSTRAINT `FK_E183E488F593E0DE10C6EBFFEBAC9B55` FOREIGN KEY (`report_id`) REFERENCES `paypal_settlement_report` (`report_id`) ON DELETE CASCADE;

ALTER TABLE `persistent_session`
  ADD CONSTRAINT `PERSISTENT_SESSION_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PERSISTENT_SESSION_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `product_alert_price`
  ADD CONSTRAINT `PRODUCT_ALERT_PRICE_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PRODUCT_ALERT_PRICE_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PRODUCT_ALERT_PRICE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `product_alert_stock`
  ADD CONSTRAINT `PRODUCT_ALERT_STOCK_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PRODUCT_ALERT_STOCK_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PRODUCT_ALERT_STOCK_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `quote`
  ADD CONSTRAINT `QUOTE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `quote_address`
  ADD CONSTRAINT `QUOTE_ADDRESS_QUOTE_ID_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `quote` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `quote_address_item`
  ADD CONSTRAINT `QUOTE_ADDRESS_ITEM_QUOTE_ADDRESS_ID_QUOTE_ADDRESS_ADDRESS_ID` FOREIGN KEY (`quote_address_id`) REFERENCES `quote_address` (`address_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `QUOTE_ADDRESS_ITEM_QUOTE_ITEM_ID_QUOTE_ITEM_ITEM_ID` FOREIGN KEY (`quote_item_id`) REFERENCES `quote_item` (`item_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `QUOTE_ADDR_ITEM_PARENT_ITEM_ID_QUOTE_ADDR_ITEM_ADDR_ITEM_ID` FOREIGN KEY (`parent_item_id`) REFERENCES `quote_address_item` (`address_item_id`) ON DELETE CASCADE;

ALTER TABLE `quote_id_mask`
  ADD CONSTRAINT `QUOTE_ID_MASK_QUOTE_ID_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `quote` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `quote_item`
  ADD CONSTRAINT `QUOTE_ITEM_PARENT_ITEM_ID_QUOTE_ITEM_ITEM_ID` FOREIGN KEY (`parent_item_id`) REFERENCES `quote_item` (`item_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `QUOTE_ITEM_QUOTE_ID_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `quote` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `QUOTE_ITEM_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `quote_item_option`
  ADD CONSTRAINT `QUOTE_ITEM_OPTION_ITEM_ID_QUOTE_ITEM_ITEM_ID` FOREIGN KEY (`item_id`) REFERENCES `quote_item` (`item_id`) ON DELETE CASCADE;

ALTER TABLE `quote_payment`
  ADD CONSTRAINT `QUOTE_PAYMENT_QUOTE_ID_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `quote` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `quote_shipping_rate`
  ADD CONSTRAINT `QUOTE_SHIPPING_RATE_ADDRESS_ID_QUOTE_ADDRESS_ADDRESS_ID` FOREIGN KEY (`address_id`) REFERENCES `quote_address` (`address_id`) ON DELETE CASCADE;

ALTER TABLE `rating`
  ADD CONSTRAINT `RATING_ENTITY_ID_RATING_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `rating_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `rating_option`
  ADD CONSTRAINT `RATING_OPTION_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE;

ALTER TABLE `rating_option_vote`
  ADD CONSTRAINT `RATING_OPTION_VOTE_OPTION_ID_RATING_OPTION_OPTION_ID` FOREIGN KEY (`option_id`) REFERENCES `rating_option` (`option_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `RATING_OPTION_VOTE_REVIEW_ID_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`) ON DELETE CASCADE;

ALTER TABLE `rating_option_vote_aggregated`
  ADD CONSTRAINT `RATING_OPTION_VOTE_AGGREGATED_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `RATING_OPTION_VOTE_AGGREGATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `rating_store`
  ADD CONSTRAINT `RATING_STORE_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `RATING_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `rating_title`
  ADD CONSTRAINT `RATING_TITLE_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `RATING_TITLE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `report_compared_product_index`
  ADD CONSTRAINT `REPORT_CMPD_PRD_IDX_CSTR_ID_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_CMPD_PRD_IDX_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_COMPARED_PRODUCT_INDEX_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `report_event`
  ADD CONSTRAINT `REPORT_EVENT_EVENT_TYPE_ID_REPORT_EVENT_TYPES_EVENT_TYPE_ID` FOREIGN KEY (`event_type_id`) REFERENCES `report_event_types` (`event_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_EVENT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `report_viewed_product_aggregated_daily`
  ADD CONSTRAINT `REPORT_VIEWED_PRD_AGGRED_DAILY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_VIEWED_PRODUCT_AGGREGATED_DAILY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `report_viewed_product_aggregated_monthly`
  ADD CONSTRAINT `REPORT_VIEWED_PRD_AGGRED_MONTHLY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_VIEWED_PRODUCT_AGGREGATED_MONTHLY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `report_viewed_product_aggregated_yearly`
  ADD CONSTRAINT `REPORT_VIEWED_PRD_AGGRED_YEARLY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_VIEWED_PRODUCT_AGGREGATED_YEARLY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `report_viewed_product_index`
  ADD CONSTRAINT `REPORT_VIEWED_PRD_IDX_CSTR_ID_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_VIEWED_PRD_IDX_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_VIEWED_PRODUCT_INDEX_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `review`
  ADD CONSTRAINT `REVIEW_ENTITY_ID_REVIEW_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `review_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REVIEW_STATUS_ID_REVIEW_STATUS_STATUS_ID` FOREIGN KEY (`status_id`) REFERENCES `review_status` (`status_id`) ON DELETE NO ACTION;

ALTER TABLE `review_detail`
  ADD CONSTRAINT `REVIEW_DETAIL_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `REVIEW_DETAIL_REVIEW_ID_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REVIEW_DETAIL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `review_entity_summary`
  ADD CONSTRAINT `REVIEW_ENTITY_SUMMARY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `review_store`
  ADD CONSTRAINT `REVIEW_STORE_REVIEW_ID_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REVIEW_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `sales_bestsellers_aggregated_daily`
  ADD CONSTRAINT `SALES_BESTSELLERS_AGGREGATED_DAILY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `sales_bestsellers_aggregated_monthly`
  ADD CONSTRAINT `SALES_BESTSELLERS_AGGREGATED_MONTHLY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `sales_bestsellers_aggregated_yearly`
  ADD CONSTRAINT `SALES_BESTSELLERS_AGGREGATED_YEARLY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `sales_creditmemo`
  ADD CONSTRAINT `SALES_CREDITMEMO_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_CREDITMEMO_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `sales_creditmemo_comment`
  ADD CONSTRAINT `SALES_CREDITMEMO_COMMENT_PARENT_ID_SALES_CREDITMEMO_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_creditmemo` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `sales_creditmemo_item`
  ADD CONSTRAINT `SALES_CREDITMEMO_ITEM_PARENT_ID_SALES_CREDITMEMO_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_creditmemo` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `sales_invoice`
  ADD CONSTRAINT `SALES_INVOICE_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_INVOICE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `sales_invoice_comment`
  ADD CONSTRAINT `SALES_INVOICE_COMMENT_PARENT_ID_SALES_INVOICE_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_invoice` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `sales_invoice_item`
  ADD CONSTRAINT `SALES_INVOICE_ITEM_PARENT_ID_SALES_INVOICE_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_invoice` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `sales_invoiced_aggregated`
  ADD CONSTRAINT `SALES_INVOICED_AGGREGATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `sales_invoiced_aggregated_order`
  ADD CONSTRAINT `SALES_INVOICED_AGGREGATED_ORDER_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `sales_order`
  ADD CONSTRAINT `SALES_ORDER_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `SALES_ORDER_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `sales_order_address`
  ADD CONSTRAINT `SALES_ORDER_ADDRESS_PARENT_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `sales_order_aggregated_created`
  ADD CONSTRAINT `SALES_ORDER_AGGREGATED_CREATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `sales_order_aggregated_updated`
  ADD CONSTRAINT `SALES_ORDER_AGGREGATED_UPDATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `sales_order_item`
  ADD CONSTRAINT `SALES_ORDER_ITEM_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_ORDER_ITEM_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `sales_order_payment`
  ADD CONSTRAINT `SALES_ORDER_PAYMENT_PARENT_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `sales_order_status_history`
  ADD CONSTRAINT `SALES_ORDER_STATUS_HISTORY_PARENT_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `sales_order_status_label`
  ADD CONSTRAINT `SALES_ORDER_STATUS_LABEL_STATUS_SALES_ORDER_STATUS_STATUS` FOREIGN KEY (`status`) REFERENCES `sales_order_status` (`status`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_ORDER_STATUS_LABEL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `sales_order_status_state`
  ADD CONSTRAINT `SALES_ORDER_STATUS_STATE_STATUS_SALES_ORDER_STATUS_STATUS` FOREIGN KEY (`status`) REFERENCES `sales_order_status` (`status`) ON DELETE CASCADE;

ALTER TABLE `sales_order_tax_item`
  ADD CONSTRAINT `SALES_ORDER_TAX_ITEM_ASSOCIATED_ITEM_ID_SALES_ORDER_ITEM_ITEM_ID` FOREIGN KEY (`associated_item_id`) REFERENCES `sales_order_item` (`item_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_ORDER_TAX_ITEM_ITEM_ID_SALES_ORDER_ITEM_ITEM_ID` FOREIGN KEY (`item_id`) REFERENCES `sales_order_item` (`item_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_ORDER_TAX_ITEM_TAX_ID_SALES_ORDER_TAX_TAX_ID` FOREIGN KEY (`tax_id`) REFERENCES `sales_order_tax` (`tax_id`) ON DELETE CASCADE;

ALTER TABLE `sales_payment_transaction`
  ADD CONSTRAINT `FK_B99FF1A06402D725EBDB0F3A7ECD47A2` FOREIGN KEY (`parent_id`) REFERENCES `sales_payment_transaction` (`transaction_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_PAYMENT_TRANSACTION_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_PAYMENT_TRANSACTION_PAYMENT_ID_SALES_ORDER_PAYMENT_ENTT_ID` FOREIGN KEY (`payment_id`) REFERENCES `sales_order_payment` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `sales_refunded_aggregated`
  ADD CONSTRAINT `SALES_REFUNDED_AGGREGATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `sales_refunded_aggregated_order`
  ADD CONSTRAINT `SALES_REFUNDED_AGGREGATED_ORDER_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `sales_sequence_profile`
  ADD CONSTRAINT `SALES_SEQUENCE_PROFILE_META_ID_SALES_SEQUENCE_META_META_ID` FOREIGN KEY (`meta_id`) REFERENCES `sales_sequence_meta` (`meta_id`) ON DELETE CASCADE;

ALTER TABLE `sales_shipment`
  ADD CONSTRAINT `SALES_SHIPMENT_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_SHIPMENT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `sales_shipment_comment`
  ADD CONSTRAINT `SALES_SHIPMENT_COMMENT_PARENT_ID_SALES_SHIPMENT_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_shipment` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `sales_shipment_item`
  ADD CONSTRAINT `SALES_SHIPMENT_ITEM_PARENT_ID_SALES_SHIPMENT_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_shipment` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `sales_shipment_track`
  ADD CONSTRAINT `SALES_SHIPMENT_TRACK_PARENT_ID_SALES_SHIPMENT_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_shipment` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `sales_shipping_aggregated`
  ADD CONSTRAINT `SALES_SHIPPING_AGGREGATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `sales_shipping_aggregated_order`
  ADD CONSTRAINT `SALES_SHIPPING_AGGREGATED_ORDER_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

ALTER TABLE `salesrule_coupon`
  ADD CONSTRAINT `SALESRULE_COUPON_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE;

ALTER TABLE `salesrule_coupon_aggregated`
  ADD CONSTRAINT `SALESRULE_COUPON_AGGREGATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `salesrule_coupon_aggregated_order`
  ADD CONSTRAINT `SALESRULE_COUPON_AGGREGATED_ORDER_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `salesrule_coupon_aggregated_updated`
  ADD CONSTRAINT `SALESRULE_COUPON_AGGREGATED_UPDATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `salesrule_coupon_usage`
  ADD CONSTRAINT `SALESRULE_COUPON_USAGE_COUPON_ID_SALESRULE_COUPON_COUPON_ID` FOREIGN KEY (`coupon_id`) REFERENCES `salesrule_coupon` (`coupon_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_COUPON_USAGE_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `salesrule_customer`
  ADD CONSTRAINT `SALESRULE_CUSTOMER_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_CUSTOMER_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE;

ALTER TABLE `salesrule_customer_group`
  ADD CONSTRAINT `SALESRULE_CSTR_GROUP_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_CUSTOMER_GROUP_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE;

ALTER TABLE `salesrule_label`
  ADD CONSTRAINT `SALESRULE_LABEL_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_LABEL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `salesrule_product_attribute`
  ADD CONSTRAINT `SALESRULE_PRD_ATTR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_PRD_ATTR_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_PRODUCT_ATTRIBUTE_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_PRODUCT_ATTRIBUTE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `salesrule_website`
  ADD CONSTRAINT `SALESRULE_WEBSITE_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_WEBSITE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `search_query`
  ADD CONSTRAINT `SEARCH_QUERY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `search_synonyms`
  ADD CONSTRAINT `SEARCH_SYNONYMS_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SEARCH_SYNONYMS_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `sitemap`
  ADD CONSTRAINT `SITEMAP_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `store`
  ADD CONSTRAINT `STORE_GROUP_ID_STORE_GROUP_GROUP_ID` FOREIGN KEY (`group_id`) REFERENCES `store_group` (`group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `STORE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `store_group`
  ADD CONSTRAINT `STORE_GROUP_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `tax_calculation`
  ADD CONSTRAINT `TAX_CALCULATION_CUSTOMER_TAX_CLASS_ID_TAX_CLASS_CLASS_ID` FOREIGN KEY (`customer_tax_class_id`) REFERENCES `tax_class` (`class_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `TAX_CALCULATION_PRODUCT_TAX_CLASS_ID_TAX_CLASS_CLASS_ID` FOREIGN KEY (`product_tax_class_id`) REFERENCES `tax_class` (`class_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `TAX_CALC_TAX_CALC_RATE_ID_TAX_CALC_RATE_TAX_CALC_RATE_ID` FOREIGN KEY (`tax_calculation_rate_id`) REFERENCES `tax_calculation_rate` (`tax_calculation_rate_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `TAX_CALC_TAX_CALC_RULE_ID_TAX_CALC_RULE_TAX_CALC_RULE_ID` FOREIGN KEY (`tax_calculation_rule_id`) REFERENCES `tax_calculation_rule` (`tax_calculation_rule_id`) ON DELETE CASCADE;

ALTER TABLE `tax_calculation_rate_title`
  ADD CONSTRAINT `FK_37FB965F786AD5897BB3AE90470C42AB` FOREIGN KEY (`tax_calculation_rate_id`) REFERENCES `tax_calculation_rate` (`tax_calculation_rate_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `TAX_CALCULATION_RATE_TITLE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `tax_order_aggregated_created`
  ADD CONSTRAINT `TAX_ORDER_AGGREGATED_CREATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `tax_order_aggregated_updated`
  ADD CONSTRAINT `TAX_ORDER_AGGREGATED_UPDATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `theme_file`
  ADD CONSTRAINT `THEME_FILE_THEME_ID_THEME_THEME_ID` FOREIGN KEY (`theme_id`) REFERENCES `theme` (`theme_id`) ON DELETE CASCADE;

ALTER TABLE `translation`
  ADD CONSTRAINT `TRANSLATION_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

ALTER TABLE `ui_bookmark`
  ADD CONSTRAINT `UI_BOOKMARK_USER_ID_ADMIN_USER_USER_ID` FOREIGN KEY (`user_id`) REFERENCES `admin_user` (`user_id`) ON DELETE CASCADE;

ALTER TABLE `variable_value`
  ADD CONSTRAINT `VARIABLE_VALUE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `VARIABLE_VALUE_VARIABLE_ID_VARIABLE_VARIABLE_ID` FOREIGN KEY (`variable_id`) REFERENCES `variable` (`variable_id`) ON DELETE CASCADE;

ALTER TABLE `vault_payment_token`
  ADD CONSTRAINT `VAULT_PAYMENT_TOKEN_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `vault_payment_token_order_payment_link`
  ADD CONSTRAINT `FK_4ED894655446D385894580BECA993862` FOREIGN KEY (`payment_token_id`) REFERENCES `vault_payment_token` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_CF37B9D854256534BE23C818F6291CA2` FOREIGN KEY (`order_payment_id`) REFERENCES `sales_order_payment` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `weee_tax`
  ADD CONSTRAINT `WEEE_TAX_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `WEEE_TAX_COUNTRY_DIRECTORY_COUNTRY_COUNTRY_ID` FOREIGN KEY (`country`) REFERENCES `directory_country` (`country_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `WEEE_TAX_ENTITY_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `WEEE_TAX_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

ALTER TABLE `widget_instance`
  ADD CONSTRAINT `WIDGET_INSTANCE_THEME_ID_THEME_THEME_ID` FOREIGN KEY (`theme_id`) REFERENCES `theme` (`theme_id`) ON DELETE CASCADE;

ALTER TABLE `widget_instance_page`
  ADD CONSTRAINT `WIDGET_INSTANCE_PAGE_INSTANCE_ID_WIDGET_INSTANCE_INSTANCE_ID` FOREIGN KEY (`instance_id`) REFERENCES `widget_instance` (`instance_id`) ON DELETE CASCADE;

ALTER TABLE `widget_instance_page_layout`
  ADD CONSTRAINT `WIDGET_INSTANCE_PAGE_LAYOUT_PAGE_ID_WIDGET_INSTANCE_PAGE_PAGE_ID` FOREIGN KEY (`page_id`) REFERENCES `widget_instance_page` (`page_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `WIDGET_INSTANCE_PAGE_LYT_LYT_UPDATE_ID_LYT_UPDATE_LYT_UPDATE_ID` FOREIGN KEY (`layout_update_id`) REFERENCES `layout_update` (`layout_update_id`) ON DELETE CASCADE;

ALTER TABLE `wishlist`
  ADD CONSTRAINT `WISHLIST_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

ALTER TABLE `wishlist_item`
  ADD CONSTRAINT `WISHLIST_ITEM_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `WISHLIST_ITEM_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `WISHLIST_ITEM_WISHLIST_ID_WISHLIST_WISHLIST_ID` FOREIGN KEY (`wishlist_id`) REFERENCES `wishlist` (`wishlist_id`) ON DELETE CASCADE;

ALTER TABLE `wishlist_item_option`
  ADD CONSTRAINT `FK_A014B30B04B72DD0EAB3EECD779728D6` FOREIGN KEY (`wishlist_item_id`) REFERENCES `wishlist_item` (`wishlist_item_id`) ON DELETE CASCADE;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */; 
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-25 22:08:12 GMT