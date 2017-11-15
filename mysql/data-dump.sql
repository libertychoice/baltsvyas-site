-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: wp_database
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.17.10.1

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
-- Table structure for table `wp_UPCP_Catalogue_Items`
--

DROP TABLE IF EXISTS `wp_UPCP_Catalogue_Items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_UPCP_Catalogue_Items` (
  `Catalogue_Item_ID` mediumint(9) NOT NULL AUTO_INCREMENT,
  `Catalogue_ID` mediumint(9) DEFAULT '0',
  `Item_ID` mediumint(9) DEFAULT '0',
  `Category_ID` mediumint(9) DEFAULT '0',
  `SubCategory_ID` mediumint(9) DEFAULT '0',
  `Position` mediumint(9) NOT NULL DEFAULT '0',
  UNIQUE KEY `id` (`Catalogue_Item_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_UPCP_Catalogue_Items`
--

LOCK TABLES `wp_UPCP_Catalogue_Items` WRITE;
/*!40000 ALTER TABLE `wp_UPCP_Catalogue_Items` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_UPCP_Catalogue_Items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_UPCP_Catalogues`
--

DROP TABLE IF EXISTS `wp_UPCP_Catalogues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_UPCP_Catalogues` (
  `Catalogue_ID` mediumint(9) NOT NULL AUTO_INCREMENT,
  `Catalogue_Name` text NOT NULL,
  `Catalogue_Description` text NOT NULL,
  `Catalogue_Layout_Format` text NOT NULL,
  `Catalogue_Custom_CSS` text NOT NULL,
  `Catalogue_Item_Count` mediumint(9) NOT NULL DEFAULT '0',
  `Catalogue_Date_Created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  UNIQUE KEY `id` (`Catalogue_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_UPCP_Catalogues`
--

LOCK TABLES `wp_UPCP_Catalogues` WRITE;
/*!40000 ALTER TABLE `wp_UPCP_Catalogues` DISABLE KEYS */;
INSERT INTO `wp_UPCP_Catalogues` VALUES (1,'Sample Catalogue','This is where your description of this catalogue would go.','','',0,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `wp_UPCP_Catalogues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_UPCP_Categories`
--

DROP TABLE IF EXISTS `wp_UPCP_Categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_UPCP_Categories` (
  `Category_ID` mediumint(9) NOT NULL AUTO_INCREMENT,
  `Category_Name` text NOT NULL,
  `Category_Description` text NOT NULL,
  `Category_Image` text NOT NULL,
  `Category_Item_Count` mediumint(9) DEFAULT '0',
  `Category_Sidebar_Order` mediumint(9) DEFAULT '9999',
  `Category_Date_Created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Category_WC_ID` mediumint(9) DEFAULT '0',
  UNIQUE KEY `id` (`Category_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_UPCP_Categories`
--

LOCK TABLES `wp_UPCP_Categories` WRITE;
/*!40000 ALTER TABLE `wp_UPCP_Categories` DISABLE KEYS */;
INSERT INTO `wp_UPCP_Categories` VALUES (1,'Sample Category','This is where your description of this category would go.','',1,9999,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `wp_UPCP_Categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_UPCP_Custom_Fields`
--

DROP TABLE IF EXISTS `wp_UPCP_Custom_Fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_UPCP_Custom_Fields` (
  `Field_ID` mediumint(9) NOT NULL AUTO_INCREMENT,
  `Field_Name` text NOT NULL,
  `Field_Slug` text NOT NULL,
  `Field_Type` text NOT NULL,
  `Field_Description` text NOT NULL,
  `Field_Values` text NOT NULL,
  `Field_Displays` text NOT NULL,
  `Field_Searchable` text NOT NULL,
  `Field_Sidebar_Order` mediumint(9) DEFAULT '9999',
  `Field_Display_Tabbed` text NOT NULL,
  `Field_Control_Type` text NOT NULL,
  `Field_Date_Created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Field_WC_ID` mediumint(9) DEFAULT '0',
  UNIQUE KEY `id` (`Field_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_UPCP_Custom_Fields`
--

LOCK TABLES `wp_UPCP_Custom_Fields` WRITE;
/*!40000 ALTER TABLE `wp_UPCP_Custom_Fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_UPCP_Custom_Fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_UPCP_Fields_Meta`
--

DROP TABLE IF EXISTS `wp_UPCP_Fields_Meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_UPCP_Fields_Meta` (
  `Meta_ID` mediumint(9) NOT NULL AUTO_INCREMENT,
  `Field_ID` mediumint(9) DEFAULT '0',
  `Item_ID` mediumint(9) DEFAULT '0',
  `Meta_Value` text NOT NULL,
  UNIQUE KEY `id` (`Meta_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_UPCP_Fields_Meta`
--

LOCK TABLES `wp_UPCP_Fields_Meta` WRITE;
/*!40000 ALTER TABLE `wp_UPCP_Fields_Meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_UPCP_Fields_Meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_UPCP_Item_Images`
--

DROP TABLE IF EXISTS `wp_UPCP_Item_Images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_UPCP_Item_Images` (
  `Item_Image_ID` mediumint(9) NOT NULL AUTO_INCREMENT,
  `Item_ID` mediumint(9) NOT NULL DEFAULT '0',
  `Item_Image_URL` text,
  `Item_Image_Description` text,
  `Item_Image_Order` mediumint(9) NOT NULL DEFAULT '0',
  UNIQUE KEY `id` (`Item_Image_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_UPCP_Item_Images`
--

LOCK TABLES `wp_UPCP_Item_Images` WRITE;
/*!40000 ALTER TABLE `wp_UPCP_Item_Images` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_UPCP_Item_Images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_UPCP_Items`
--

DROP TABLE IF EXISTS `wp_UPCP_Items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_UPCP_Items` (
  `Item_ID` mediumint(9) NOT NULL AUTO_INCREMENT,
  `Item_Name` text NOT NULL,
  `Item_Slug` text NOT NULL,
  `Item_Description` text,
  `Item_Price` text NOT NULL,
  `Item_Sale_Price` text NOT NULL,
  `Item_Sale_Mode` text NOT NULL,
  `Item_Link` text,
  `Item_Photo_URL` text,
  `Category_ID` mediumint(9) DEFAULT '0',
  `Category_Name` text,
  `Global_Item_ID` mediumint(9) DEFAULT '0',
  `Item_Special_Attr` text,
  `SubCategory_ID` mediumint(9) DEFAULT '0',
  `SubCategory_Name` text,
  `Item_Date_Created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Item_Views` mediumint(9) DEFAULT '0',
  `Item_Display_Status` text,
  `Item_Related_Products` text,
  `Item_Next_Previous` text,
  `Item_SEO_Description` text,
  `Item_Category_Product_Order` mediumint(9) DEFAULT '9999',
  `Item_WC_ID` mediumint(9) DEFAULT '0',
  UNIQUE KEY `id` (`Item_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_UPCP_Items`
--

LOCK TABLES `wp_UPCP_Items` WRITE;
/*!40000 ALTER TABLE `wp_UPCP_Items` DISABLE KEYS */;
INSERT INTO `wp_UPCP_Items` VALUES (1,'Sample Item','','This is where your description of this product would go.','9.99','','',NULL,'http://127.0.0.1/wp-content/plugins/ultimate-product-catalogue/images/sample_image.jpg',1,'Sample Category',0,NULL,0,NULL,'0000-00-00 00:00:00',0,NULL,NULL,NULL,NULL,9999,0);
/*!40000 ALTER TABLE `wp_UPCP_Items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_UPCP_SubCategories`
--

DROP TABLE IF EXISTS `wp_UPCP_SubCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_UPCP_SubCategories` (
  `SubCategory_ID` mediumint(9) NOT NULL AUTO_INCREMENT,
  `Category_ID` mediumint(9) NOT NULL DEFAULT '0',
  `Category_Name` text NOT NULL,
  `SubCategory_Name` text NOT NULL,
  `SubCategory_Description` text NOT NULL,
  `SubCategory_Image` text NOT NULL,
  `SubCategory_Item_Count` mediumint(9) NOT NULL DEFAULT '0',
  `SubCategory_Sidebar_Order` mediumint(9) DEFAULT '9999',
  `SubCategory_Date_Created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SubCategory_WC_ID` mediumint(9) DEFAULT '0',
  UNIQUE KEY `id` (`SubCategory_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_UPCP_SubCategories`
--

LOCK TABLES `wp_UPCP_SubCategories` WRITE;
/*!40000 ALTER TABLE `wp_UPCP_SubCategories` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_UPCP_SubCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_UPCP_Tag_Groups`
--

DROP TABLE IF EXISTS `wp_UPCP_Tag_Groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_UPCP_Tag_Groups` (
  `Tag_Group_ID` mediumint(9) NOT NULL AUTO_INCREMENT,
  `Tag_Group_Name` text NOT NULL,
  `Tag_Group_Description` text NOT NULL,
  `Display_Tag_Group` text NOT NULL,
  `Tag_Group_Order` mediumint(9) NOT NULL DEFAULT '0',
  UNIQUE KEY `id` (`Tag_Group_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_UPCP_Tag_Groups`
--

LOCK TABLES `wp_UPCP_Tag_Groups` WRITE;
/*!40000 ALTER TABLE `wp_UPCP_Tag_Groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_UPCP_Tag_Groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_UPCP_Tagged_Items`
--

DROP TABLE IF EXISTS `wp_UPCP_Tagged_Items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_UPCP_Tagged_Items` (
  `Tagged_Item_ID` mediumint(9) NOT NULL AUTO_INCREMENT,
  `Tag_ID` mediumint(9) NOT NULL DEFAULT '0',
  `Item_ID` mediumint(9) NOT NULL DEFAULT '0',
  UNIQUE KEY `id` (`Tagged_Item_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_UPCP_Tagged_Items`
--

LOCK TABLES `wp_UPCP_Tagged_Items` WRITE;
/*!40000 ALTER TABLE `wp_UPCP_Tagged_Items` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_UPCP_Tagged_Items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_UPCP_Tags`
--

DROP TABLE IF EXISTS `wp_UPCP_Tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_UPCP_Tags` (
  `Tag_ID` mediumint(9) NOT NULL AUTO_INCREMENT,
  `Tag_Name` text NOT NULL,
  `Tag_Description` text NOT NULL,
  `Tag_Item_Count` text NOT NULL,
  `Tag_Group_ID` mediumint(9) NOT NULL DEFAULT '0',
  `Tag_Sidebar_Order` mediumint(9) DEFAULT '9999',
  `Tag_Date_Created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Tag_WC_ID` mediumint(9) DEFAULT '0',
  UNIQUE KEY `id` (`Tag_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_UPCP_Tags`
--

LOCK TABLES `wp_UPCP_Tags` WRITE;
/*!40000 ALTER TABLE `wp_UPCP_Tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_UPCP_Tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_UPCP_Videos`
--

DROP TABLE IF EXISTS `wp_UPCP_Videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_UPCP_Videos` (
  `Item_Video_ID` mediumint(9) NOT NULL AUTO_INCREMENT,
  `Item_ID` mediumint(9) NOT NULL DEFAULT '0',
  `Item_Video_URL` text,
  `Item_Video_Type` text,
  `Item_Video_Order` mediumint(9) NOT NULL DEFAULT '0',
  UNIQUE KEY `id` (`Item_Video_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_UPCP_Videos`
--

LOCK TABLES `wp_UPCP_Videos` WRITE;
/*!40000 ALTER TABLE `wp_UPCP_Videos` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_UPCP_Videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10)),
  KEY `woo_idx_comment_type` (`comment_type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'Автор комментария','wapuu@wordpress.example','https://wordpress.org/','','2017-11-01 18:22:19','2017-11-01 15:22:19','Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.',0,'1','','',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=462 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://127.0.0.1','yes'),(2,'home','http://127.0.0.1','yes'),(3,'blogname','БалтСвязь','yes'),(4,'blogdescription','','yes'),(5,'users_can_register','0','yes'),(6,'admin_email','libertychoice@mail.ru','yes'),(7,'start_of_week','1','yes'),(8,'use_balanceTags','0','yes'),(9,'use_smilies','1','yes'),(10,'require_name_email','1','yes'),(11,'comments_notify','1','yes'),(12,'posts_per_rss','10','yes'),(13,'rss_use_excerpt','0','yes'),(14,'mailserver_url','mail.example.com','yes'),(15,'mailserver_login','login@example.com','yes'),(16,'mailserver_pass','password','yes'),(17,'mailserver_port','110','yes'),(18,'default_category','1','yes'),(19,'default_comment_status','open','yes'),(20,'default_ping_status','open','yes'),(21,'default_pingback_flag','0','yes'),(22,'posts_per_page','10','yes'),(23,'date_format','d.m.Y','yes'),(24,'time_format','H:i','yes'),(25,'links_updated_date_format','d.m.Y H:i','yes'),(26,'comment_moderation','0','yes'),(27,'moderation_notify','1','yes'),(28,'permalink_structure','','yes'),(29,'rewrite_rules','','yes'),(30,'hack_file','0','yes'),(31,'blog_charset','UTF-8','yes'),(32,'moderation_keys','','no'),(33,'active_plugins','a:2:{i:0;s:23:\"ml-slider/ml-slider.php\";i:1;s:27:\"woocommerce/woocommerce.php\";}','yes'),(34,'category_base','','yes'),(35,'ping_sites','http://rpc.pingomatic.com/','yes'),(36,'comment_max_links','2','yes'),(37,'gmt_offset','3','yes'),(38,'default_email_category','1','yes'),(39,'recently_edited','a:5:{i:0;s:52:\"/var/www/html/wp-content/themes/storevilla/style.css\";i:2;s:64:\"/var/www/html/wp-content/themes/storevilla/inc/template-tags.php\";i:3;s:74:\"/var/www/html/wp-content/themes/storevilla/template-parts/content-page.php\";i:4;s:56:\"/var/www/html/wp-content/themes/storevilla/functions.php\";i:5;s:62:\"/var/www/html/wp-content/themes/storevilla/welcome/welcome.php\";}','no'),(40,'template','storevilla','yes'),(41,'stylesheet','storevilla','yes'),(42,'comment_whitelist','1','yes'),(43,'blacklist_keys','','no'),(44,'comment_registration','0','yes'),(45,'html_type','text/html','yes'),(46,'use_trackback','0','yes'),(47,'default_role','subscriber','yes'),(48,'db_version','38590','yes'),(49,'uploads_use_yearmonth_folders','1','yes'),(50,'upload_path','','yes'),(51,'blog_public','0','yes'),(52,'default_link_category','2','yes'),(53,'show_on_front','page','yes'),(54,'tag_base','','yes'),(55,'show_avatars','1','yes'),(56,'avatar_rating','G','yes'),(57,'upload_url_path','','yes'),(58,'thumbnail_size_w','150','yes'),(59,'thumbnail_size_h','150','yes'),(60,'thumbnail_crop','1','yes'),(61,'medium_size_w','300','yes'),(62,'medium_size_h','300','yes'),(63,'avatar_default','mystery','yes'),(64,'large_size_w','1024','yes'),(65,'large_size_h','1024','yes'),(66,'image_default_link_type','none','yes'),(67,'image_default_size','','yes'),(68,'image_default_align','','yes'),(69,'close_comments_for_old_posts','0','yes'),(70,'close_comments_days_old','14','yes'),(71,'thread_comments','1','yes'),(72,'thread_comments_depth','5','yes'),(73,'page_comments','0','yes'),(74,'comments_per_page','50','yes'),(75,'default_comments_page','newest','yes'),(76,'comment_order','asc','yes'),(77,'sticky_posts','a:0:{}','yes'),(78,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(79,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(80,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(81,'uninstall_plugins','a:0:{}','no'),(82,'timezone_string','','yes'),(83,'page_for_posts','0','yes'),(84,'page_on_front','2','yes'),(85,'default_post_format','0','yes'),(86,'link_manager_enabled','0','yes'),(87,'finished_splitting_shared_terms','1','yes'),(88,'site_icon','0','yes'),(89,'medium_large_size_w','768','yes'),(90,'medium_large_size_h','0','yes'),(91,'initial_db_version','38590','yes'),(92,'wp_user_roles','a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:131:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:17:\"edit_shop_webhook\";b:1;s:17:\"read_shop_webhook\";b:1;s:19:\"delete_shop_webhook\";b:1;s:18:\"edit_shop_webhooks\";b:1;s:25:\"edit_others_shop_webhooks\";b:1;s:21:\"publish_shop_webhooks\";b:1;s:26:\"read_private_shop_webhooks\";b:1;s:20:\"delete_shop_webhooks\";b:1;s:28:\"delete_private_shop_webhooks\";b:1;s:30:\"delete_published_shop_webhooks\";b:1;s:27:\"delete_others_shop_webhooks\";b:1;s:26:\"edit_private_shop_webhooks\";b:1;s:28:\"edit_published_shop_webhooks\";b:1;s:25:\"manage_shop_webhook_terms\";b:1;s:23:\"edit_shop_webhook_terms\";b:1;s:25:\"delete_shop_webhook_terms\";b:1;s:25:\"assign_shop_webhook_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:12:\"Клиент\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:33:\"Менеджер магазина\";s:12:\"capabilities\";a:109:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:17:\"edit_shop_webhook\";b:1;s:17:\"read_shop_webhook\";b:1;s:19:\"delete_shop_webhook\";b:1;s:18:\"edit_shop_webhooks\";b:1;s:25:\"edit_others_shop_webhooks\";b:1;s:21:\"publish_shop_webhooks\";b:1;s:26:\"read_private_shop_webhooks\";b:1;s:20:\"delete_shop_webhooks\";b:1;s:28:\"delete_private_shop_webhooks\";b:1;s:30:\"delete_published_shop_webhooks\";b:1;s:27:\"delete_others_shop_webhooks\";b:1;s:26:\"edit_private_shop_webhooks\";b:1;s:28:\"edit_published_shop_webhooks\";b:1;s:25:\"manage_shop_webhook_terms\";b:1;s:23:\"edit_shop_webhook_terms\";b:1;s:25:\"delete_shop_webhook_terms\";b:1;s:25:\"assign_shop_webhook_terms\";b:1;}}}','yes'),(93,'fresh_site','0','yes'),(94,'WPLANG','ru_RU','yes'),(95,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(96,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(97,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(98,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(99,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(100,'sidebars_widgets','a:12:{s:19:\"wp_inactive_widgets\";a:0:{}s:20:\"storevillasidebarone\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:20:\"storevillasidebartwo\";a:0:{}s:19:\"storevillaheaderone\";a:0:{}s:20:\"storevillamainwidget\";N;s:18:\"storevillafooter-1\";N;s:18:\"storevillafooter-2\";N;s:18:\"storevillafooter-3\";N;s:18:\"storevillafooter-4\";N;s:18:\"storevillafooter-5\";N;s:19:\"storevillaquickinfo\";N;s:13:\"array_version\";i:3;}','yes'),(101,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(102,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(103,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(104,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(105,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(106,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(107,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(108,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(109,'cron','a:10:{i:1510756053;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1510759341;a:2:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1510759342;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1510759349;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1510760417;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1510779600;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1510781793;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1510824994;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1512432000;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}','yes'),(110,'nonce_key','js4>MxB.{q=XCECb|F(HW][2y<5Bp:88Z,Fi<8ON}/vsX? W`HRxiau!nF+x$6!6','no'),(111,'nonce_salt','{15z{5tzNf)4):na-H-w3A{FOyp_!)D^[o_pDbA;i3Kd^iS7(8&C:GY@<vLkIB@M','no'),(112,'theme_mods_twentyseventeen','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1509550572;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}','yes'),(118,'auth_key','53I+w:cM*SjCbBEuFoB>[fA6]]|,yMhG.Jwjl%6Qh:?62=1naw2?FN$4$l^VdJ@m','no'),(119,'auth_salt','L^HxK=n*(,rxd*4?,N PlD^1%,1Hu9S4Z7b+c)LFH_oS=Y&~`gfVw3Hw3D5_4g6A','no'),(120,'logged_in_key','&E6fzX@S2g`svk|6Tmci{w^(m8nnypqEhcg`b[Q7?^KBxRZLqQB|:v_*BF7yVuz&','no'),(121,'logged_in_salt','&!g;_R<#_BoxxJ]&_*,2*$CuY=K!lrVk-$zBU+si)5$*$Y3;x?gm:Gx&)_pU^-QY','no'),(130,'can_compress_scripts','0','no'),(141,'auto_core_update_notified','a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:21:\"libertychoice@mail.ru\";s:7:\"version\";s:5:\"4.8.3\";s:9:\"timestamp\";i:1509549783;}','no'),(147,'current_theme','StoreVilla','yes'),(148,'theme_mods_storevilla','a:3:{i:0;b:0;s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:3:{s:17:\"storevillatopmenu\";i:0;s:17:\"storevillaprimary\";i:2;s:18:\"storevillaprimary1\";i:3;}}','yes'),(149,'theme_switched','','yes'),(150,'widget_storevilla_contact_info_area','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(151,'widget_storevilla_aboutus_info_area','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(152,'widget_storevilla_blog_widget_area','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(153,'widget_storevilla_testimonial_widget_area','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(154,'storevilla_plugin_installed_notif','0','yes'),(159,'_transient_timeout_plugin_slugs','1510565919','no'),(160,'_transient_plugin_slugs','a:4:{i:0;s:19:\"akismet/akismet.php\";i:1;s:9:\"hello.php\";i:2;s:23:\"ml-slider/ml-slider.php\";i:3;s:27:\"woocommerce/woocommerce.php\";}','no'),(161,'recently_activated','a:0:{}','yes'),(166,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes'),(209,'widget_metaslider_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(210,'metaslider_systemcheck','a:2:{s:16:\"wordPressVersion\";b:0;s:12:\"imageLibrary\";b:0;}','no'),(224,'_site_transient_timeout_browser_b0e14a603fb7485782db9b8afe25c280','1510762202','no'),(225,'_site_transient_browser_b0e14a603fb7485782db9b8afe25c280','a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"56.0\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no'),(242,'_site_transient_timeout_available_translations','1510489624','no'),(243,'_site_transient_available_translations','a:111:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-11-09 10:36:40\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.3/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-07-29 08:49:40\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.3/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.7/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-22 18:59:07\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-11-08 13:11:50\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.3/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-09 09:24:45\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:22:\"Продължение\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-10-01 12:57:10\";s:12:\"english_name\";s:7:\"Bengali\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-05 09:44:12\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"མུ་མཐུད།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-04 20:20:28\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-08 21:01:45\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.3/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 08:46:26\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:12:\"Čeština‎\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-11-04 20:41:47\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.3/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-10-03 23:25:51\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Forts&#230;t\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-11-05 15:54:18\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/4.8.3/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-11-05 15:55:17\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-09-09 11:51:58\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-09-09 11:53:31\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/4.8.3/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-10-25 16:30:54\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.3/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-11-06 02:09:59\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-11-06 21:51:20\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-11-06 04:53:41\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-11-06 08:21:28\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:53:43\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.7/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-11-09 01:07:24\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.3/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-10-01 17:54:52\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/es_CR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-13 17:00:30\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/es_CO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-07-30 16:09:17\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/es_VE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-11-06 08:53:02\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/es_ES.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"es\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-09 09:36:22\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-28 20:09:49\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/es_CL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-07-31 15:12:02\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/es_MX.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-10-05 17:50:24\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/es_GT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-01 04:48:11\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/es_AR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 16:37:11\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-11-05 15:31:51\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.3/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:3:\"4.8\";s:7:\"updated\";s:19:\"2017-06-09 15:50:45\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-07-28 11:00:29\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.3/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-11-05 14:21:50\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-07-28 09:14:18\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-07-28 12:37:07\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-11-06 16:43:49\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-10-17 14:23:13\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.3/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-09-12 21:37:24\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"להמשיך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-07-28 10:29:26\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-11-07 15:11:19\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.3/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:48:39\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Tovább\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-07-28 12:45:08\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-04-13 13:55:54\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.7/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-11-07 11:16:13\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-10-09 07:51:37\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.3/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-11-10 10:29:02\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nutugne\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-10-09 06:06:41\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-22 15:33:00\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.3/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-07 02:07:59\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-11-10 13:54:32\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:48:25\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ຕໍ່\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-07-28 11:02:15\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-03-17 20:40:40\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.7/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:54:41\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.7/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-09-30 06:25:41\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.3/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-03-05 09:45:10\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.7/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ေဆာင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-02 21:02:39\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-10-05 06:45:20\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"जारीराख्नु \";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-30 07:58:32\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/4.8.3/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-11-09 07:31:43\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-10-13 12:25:56\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-09-25 10:02:16\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.3/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-09-20 08:02:58\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.20/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"دوام\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-10-13 11:55:41\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-11-06 13:10:35\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-09-29 08:57:23\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/4.8.3/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-11-11 07:32:16\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-11-05 14:14:27\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-10-29 12:16:07\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-09-12 12:51:50\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Nadaljujte\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-11-07 10:21:58\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.3/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-07-28 12:07:44\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-11-05 15:02:50\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-10-07 02:08:56\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.3/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-30 02:38:08\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-10-12 12:20:32\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-05 09:23:39\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:9:\"Uyƣurqə\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-11-02 17:05:02\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.3/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-11-06 09:15:16\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.3/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-10-15 05:40:58\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-10-03 09:08:47\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.3/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-09-12 11:35:05\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-11-06 00:37:03\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-04 07:53:05\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}}','no'),(249,'_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a','1510490113','no'),(250,'_site_transient_poptags_40cd750bba9870f18aada2478b24840a','O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4397;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2517;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:2393;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2380;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1842;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1613;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1604;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1437;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1363;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1362;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1347;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1283;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1273;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1154;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1066;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1056;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1001;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:966;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:832;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:830;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:816;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:782;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:774;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:680;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:674;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:669;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:658;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:657;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:647;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:642;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:637;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:619;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:610;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:599;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:591;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:587;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:585;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:582;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:566;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:566;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:551;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:540;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:529;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:525;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:508;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:503;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:503;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:493;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:483;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:479;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:478;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:474;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:455;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:455;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:453;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:448;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:446;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:443;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:425;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:417;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:414;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:413;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:411;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:407;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:407;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:399;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:390;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:388;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:385;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:375;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:358;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:349;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:345;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:344;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:334;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:333;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:332;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:331;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:330;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:330;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:325;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:324;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:324;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:318;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:314;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:305;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:301;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:301;}s:3:\"tag\";a:3:{s:4:\"name\";s:3:\"tag\";s:4:\"slug\";s:3:\"tag\";s:5:\"count\";i:298;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:297;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:296;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:289;}s:7:\"adsense\";a:3:{s:4:\"name\";s:7:\"adsense\";s:4:\"slug\";s:7:\"adsense\";s:5:\"count\";i:287;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:285;}s:6:\"author\";a:3:{s:4:\"name\";s:6:\"author\";s:4:\"slug\";s:6:\"author\";s:5:\"count\";i:283;}s:8:\"lightbox\";a:3:{s:4:\"name\";s:8:\"lightbox\";s:4:\"slug\";s:8:\"lightbox\";s:5:\"count\";i:281;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:277;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:277;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:276;}s:7:\"tinymce\";a:3:{s:4:\"name\";s:7:\"tinyMCE\";s:4:\"slug\";s:7:\"tinymce\";s:5:\"count\";i:275;}}','no'),(252,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-4.8.3.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-4.8.3.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.8.3\";s:7:\"version\";s:5:\"4.8.3\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1510729336;s:15:\"version_checked\";s:5:\"4.8.3\";s:12:\"translations\";a:0:{}}','no'),(254,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1510746381;s:7:\"checked\";a:4:{s:10:\"storevilla\";s:5:\"1.2.2\";s:13:\"twentyfifteen\";s:3:\"1.8\";s:15:\"twentyseventeen\";s:3:\"1.3\";s:13:\"twentysixteen\";s:3:\"1.3\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','no'),(257,'woocommerce_store_address','','yes'),(258,'woocommerce_store_address_2','','yes'),(259,'woocommerce_store_city','','yes'),(260,'woocommerce_default_country','GB','yes'),(261,'woocommerce_store_postcode','','yes'),(262,'woocommerce_allowed_countries','all','yes'),(263,'woocommerce_all_except_countries','','yes'),(264,'woocommerce_specific_allowed_countries','','yes'),(265,'woocommerce_ship_to_countries','','yes'),(266,'woocommerce_specific_ship_to_countries','','yes'),(267,'woocommerce_default_customer_address','geolocation','yes'),(268,'woocommerce_calc_taxes','no','yes'),(269,'woocommerce_demo_store','no','yes'),(270,'woocommerce_demo_store_notice','Это демо-магазин для тестирования &mdash; заказы не исполняются.','no'),(271,'woocommerce_currency','GBP','yes'),(272,'woocommerce_currency_pos','left','yes'),(273,'woocommerce_price_thousand_sep',',','yes'),(274,'woocommerce_price_decimal_sep','.','yes'),(275,'woocommerce_price_num_decimals','2','yes'),(276,'woocommerce_weight_unit','kg','yes'),(277,'woocommerce_dimension_unit','cm','yes'),(278,'woocommerce_enable_reviews','yes','yes'),(279,'woocommerce_review_rating_verification_label','no','no'),(280,'woocommerce_review_rating_verification_required','no','no'),(281,'woocommerce_enable_review_rating','no','yes'),(282,'woocommerce_review_rating_required','yes','no'),(283,'woocommerce_shop_page_id','5','yes'),(284,'woocommerce_shop_page_display','subcategories','yes'),(285,'woocommerce_category_archive_display','','yes'),(286,'woocommerce_default_catalog_orderby','menu_order','yes'),(287,'woocommerce_cart_redirect_after_add','no','yes'),(288,'woocommerce_enable_ajax_add_to_cart','yes','yes'),(289,'shop_catalog_image_size','a:3:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";i:1;}','yes'),(290,'shop_single_image_size','a:3:{s:5:\"width\";s:3:\"600\";s:6:\"height\";s:3:\"600\";s:4:\"crop\";i:1;}','yes'),(291,'shop_thumbnail_image_size','a:3:{s:5:\"width\";s:3:\"180\";s:6:\"height\";s:3:\"180\";s:4:\"crop\";i:1;}','yes'),(292,'woocommerce_manage_stock','yes','yes'),(293,'woocommerce_hold_stock_minutes','60','no'),(294,'woocommerce_notify_low_stock','yes','no'),(295,'woocommerce_notify_no_stock','yes','no'),(296,'woocommerce_stock_email_recipient','libertychoice@mail.ru','no'),(297,'woocommerce_notify_low_stock_amount','2','no'),(298,'woocommerce_notify_no_stock_amount','0','yes'),(299,'woocommerce_hide_out_of_stock_items','no','yes'),(300,'woocommerce_stock_format','','yes'),(301,'woocommerce_file_download_method','force','no'),(302,'woocommerce_downloads_require_login','no','no'),(303,'woocommerce_downloads_grant_access_after_payment','yes','no'),(304,'woocommerce_prices_include_tax','no','yes'),(305,'woocommerce_tax_based_on','shipping','yes'),(306,'woocommerce_shipping_tax_class','inherit','yes'),(307,'woocommerce_tax_round_at_subtotal','no','yes'),(308,'woocommerce_tax_classes','Пониженная ставка\nНулевая ставка','yes'),(309,'woocommerce_tax_display_shop','excl','yes'),(310,'woocommerce_tax_display_cart','excl','no'),(311,'woocommerce_price_display_suffix','','yes'),(312,'woocommerce_tax_total_display','itemized','no'),(313,'woocommerce_enable_shipping_calc','yes','no'),(314,'woocommerce_shipping_cost_requires_address','no','no'),(315,'woocommerce_ship_to_destination','billing','no'),(316,'woocommerce_shipping_debug_mode','no','no'),(317,'woocommerce_enable_coupons','yes','yes'),(318,'woocommerce_calc_discounts_sequentially','no','no'),(319,'woocommerce_enable_guest_checkout','yes','no'),(320,'woocommerce_force_ssl_checkout','no','yes'),(321,'woocommerce_unforce_ssl_checkout','no','yes'),(322,'woocommerce_cart_page_id','','yes'),(323,'woocommerce_checkout_page_id','','yes'),(324,'woocommerce_terms_page_id','','no'),(325,'woocommerce_checkout_pay_endpoint','order-pay','yes'),(326,'woocommerce_checkout_order_received_endpoint','order-received','yes'),(327,'woocommerce_myaccount_add_payment_method_endpoint','add-payment-method','yes'),(328,'woocommerce_myaccount_delete_payment_method_endpoint','delete-payment-method','yes'),(329,'woocommerce_myaccount_set_default_payment_method_endpoint','set-default-payment-method','yes'),(330,'woocommerce_myaccount_page_id','','yes'),(331,'woocommerce_enable_signup_and_login_from_checkout','yes','no'),(332,'woocommerce_enable_myaccount_registration','no','no'),(333,'woocommerce_enable_checkout_login_reminder','yes','no'),(334,'woocommerce_registration_generate_username','yes','no'),(335,'woocommerce_registration_generate_password','no','no'),(336,'woocommerce_myaccount_orders_endpoint','orders','yes'),(337,'woocommerce_myaccount_view_order_endpoint','view-order','yes'),(338,'woocommerce_myaccount_downloads_endpoint','downloads','yes'),(339,'woocommerce_myaccount_edit_account_endpoint','edit-account','yes'),(340,'woocommerce_myaccount_edit_address_endpoint','edit-address','yes'),(341,'woocommerce_myaccount_payment_methods_endpoint','payment-methods','yes'),(342,'woocommerce_myaccount_lost_password_endpoint','lost-password','yes'),(343,'woocommerce_logout_endpoint','customer-logout','yes'),(344,'woocommerce_email_from_name','БалтСвязь','no'),(345,'woocommerce_email_from_address','libertychoice@mail.ru','no'),(346,'woocommerce_email_header_image','','no'),(347,'woocommerce_email_footer_text','БалтСвязь','no'),(348,'woocommerce_email_base_color','#96588a','no'),(349,'woocommerce_email_background_color','#f7f7f7','no'),(350,'woocommerce_email_body_background_color','#ffffff','no'),(351,'woocommerce_email_text_color','#3c3c3c','no'),(352,'woocommerce_api_enabled','yes','yes'),(353,'_transient_wc_attribute_taxonomies','a:0:{}','yes'),(356,'woocommerce_version','3.2.3','yes'),(357,'woocommerce_db_version','3.2.3','yes'),(358,'woocommerce_admin_notices','a:0:{}','yes'),(359,'_transient_woocommerce_webhook_ids','a:0:{}','yes'),(360,'widget_woocommerce_widget_cart','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(361,'widget_woocommerce_layered_nav_filters','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(362,'widget_woocommerce_layered_nav','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(363,'widget_woocommerce_price_filter','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(364,'widget_woocommerce_product_categories','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(365,'widget_woocommerce_product_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(366,'widget_woocommerce_product_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(367,'widget_woocommerce_products','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(368,'widget_woocommerce_recently_viewed_products','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(369,'widget_woocommerce_top_rated_products','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(370,'widget_woocommerce_recent_reviews','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(371,'widget_woocommerce_rating_filter','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(372,'widget_storevilla_latest_product_cat_widget_area','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(373,'widget_storevilla_cat_with_product_widget_area','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(374,'widget_storevilla_cat_widget_area','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(375,'widget_storevilla_product_widget_area','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(376,'widget_storevilla_column_product_widget_area','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(378,'_transient_wc_count_comments','O:8:\"stdClass\":7:{s:8:\"approved\";s:1:\"1\";s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}','yes'),(379,'_transient_timeout_external_ip_address_127.0.0.1','1511084198','no'),(380,'_transient_external_ip_address_127.0.0.1','5.18.201.89','no'),(381,'woocommerce_meta_box_errors','a:0:{}','yes'),(382,'_transient_timeout_wc_report_sales_by_date','1510565904','no'),(383,'_transient_wc_report_sales_by_date','a:8:{s:32:\"4e156c3456cb38642633e68855b20cd7\";a:0:{}s:32:\"2f1b54d59f00b0d58d2125e66e74a4c9\";a:0:{}s:32:\"3ccced2eec3d15c8cd383fe6121d1b25\";a:0:{}s:32:\"e990036bc72be37f33030bd86e7ac533\";N;s:32:\"81c8755753979b93dece01537891365c\";a:0:{}s:32:\"d14691ec3ab4c23e4b7f9e5a87df202f\";a:0:{}s:32:\"600106c49507b59a890f487d8f781a34\";a:0:{}s:32:\"593055a5db17957159e8d1ec043f4034\";a:0:{}}','no'),(384,'_transient_timeout_wc_admin_report','1510565904','no'),(385,'_transient_wc_admin_report','a:1:{s:32:\"b2f519db6e220d6d2300fdf50ddbf8dd\";a:0:{}}','no'),(390,'_transient_timeout_dash_v2_f69de0bbfe7eaa113146875f40c02000','1510522705','no'),(391,'_transient_dash_v2_f69de0bbfe7eaa113146875f40c02000','<div class=\"rss-widget\"><ul><li>Произошла ошибка; возможно, лента недоступна. Повторите попытку позже.</li></ul></div><div class=\"rss-widget\"><ul><li>Произошла ошибка; возможно, лента недоступна. Повторите попытку позже.</li></ul></div>','no'),(392,'_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e','1510522706','no'),(393,'_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e','a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}s:6:\"events\";a:1:{i:0;a:7:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:11:\"WordCamp US\";s:3:\"url\";s:29:\"https://2017.us.wordcamp.org/\";s:6:\"meetup\";s:0:\"\";s:10:\"meetup_url\";s:0:\"\";s:4:\"date\";s:19:\"2017-12-01 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:18:\"Nashville, TN, USA\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:36.156608499999997;s:9:\"longitude\";d:-86.778490899999994;}}}}','no'),(394,'_transient_product_query-transient-version','1510747689','yes'),(395,'_transient_product-transient-version','1510747689','yes'),(397,'product_cat_children','a:0:{}','yes'),(409,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1510729342;s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.1.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:7:\"default\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";s:7:\"default\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"4.9\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:23:\"ml-slider/ml-slider.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:23:\"w.org/plugins/ml-slider\";s:4:\"slug\";s:9:\"ml-slider\";s:6:\"plugin\";s:23:\"ml-slider/ml-slider.php\";s:11:\"new_version\";s:5:\"3.6.1\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/ml-slider/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/ml-slider.3.6.1.zip\";s:5:\"icons\";a:4:{s:2:\"1x\";s:62:\"https://ps.w.org/ml-slider/assets/icon-128x128.png?rev=1000654\";s:2:\"2x\";s:62:\"https://ps.w.org/ml-slider/assets/icon-256x256.png?rev=1000654\";s:3:\"svg\";s:54:\"https://ps.w.org/ml-slider/assets/icon.svg?rev=1000654\";s:7:\"default\";s:54:\"https://ps.w.org/ml-slider/assets/icon.svg?rev=1000654\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:65:\"https://ps.w.org/ml-slider/assets/banner-1544x500.png?rev=1686195\";s:2:\"1x\";s:64:\"https://ps.w.org/ml-slider/assets/banner-772x250.png?rev=1686195\";s:7:\"default\";s:65:\"https://ps.w.org/ml-slider/assets/banner-1544x500.png?rev=1686195\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"4.9\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:40:\"ultimate-product-catalogue/UPCP_Main.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:40:\"w.org/plugins/ultimate-product-catalogue\";s:4:\"slug\";s:26:\"ultimate-product-catalogue\";s:6:\"plugin\";s:40:\"ultimate-product-catalogue/UPCP_Main.php\";s:11:\"new_version\";s:6:\"4.2.26\";s:3:\"url\";s:57:\"https://wordpress.org/plugins/ultimate-product-catalogue/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/ultimate-product-catalogue.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:79:\"https://ps.w.org/ultimate-product-catalogue/assets/icon-128x128.png?rev=1320320\";s:7:\"default\";s:79:\"https://ps.w.org/ultimate-product-catalogue/assets/icon-128x128.png?rev=1320320\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:81:\"https://ps.w.org/ultimate-product-catalogue/assets/banner-772x250.png?rev=1313880\";s:7:\"default\";s:81:\"https://ps.w.org/ultimate-product-catalogue/assets/banner-772x250.png?rev=1313880\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.2.3\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.2.3.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=1440831\";s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";s:7:\"default\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=1629184\";s:7:\"default\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"woocommerce-cart-tab/cart-tab.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:34:\"w.org/plugins/woocommerce-cart-tab\";s:4:\"slug\";s:20:\"woocommerce-cart-tab\";s:6:\"plugin\";s:33:\"woocommerce-cart-tab/cart-tab.php\";s:11:\"new_version\";s:5:\"1.1.1\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/woocommerce-cart-tab/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/woocommerce-cart-tab.1.1.1.zip\";s:5:\"icons\";a:0:{}s:7:\"banners\";a:3:{s:2:\"2x\";s:75:\"https://ps.w.org/woocommerce-cart-tab/assets/banner-1544x500.png?rev=666266\";s:2:\"1x\";s:74:\"https://ps.w.org/woocommerce-cart-tab/assets/banner-772x250.png?rev=666266\";s:7:\"default\";s:75:\"https://ps.w.org/woocommerce-cart-tab/assets/banner-1544x500.png?rev=666266\";}s:11:\"banners_rtl\";a:0:{}}}}','no'),(421,'_transient_timeout__woocommerce_helper_updates','1510777837','no'),(422,'_transient__woocommerce_helper_updates','a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1510734637;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}','no'),(426,'ml-slider_children','a:0:{}','yes'),(446,'_site_transient_timeout_theme_roots','1510748180','no'),(447,'_site_transient_theme_roots','a:4:{s:10:\"storevilla\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}','no'),(450,'_site_transient_timeout_wporg_theme_feature_list','1510757193','no'),(451,'_site_transient_wporg_theme_feature_list','a:3:{s:6:\"Layout\";a:7:{i:0;s:11:\"grid-layout\";i:1;s:10:\"one-column\";i:2;s:11:\"two-columns\";i:3;s:13:\"three-columns\";i:4;s:12:\"four-columns\";i:5;s:12:\"left-sidebar\";i:6;s:13:\"right-sidebar\";}s:8:\"Features\";a:20:{i:0;s:19:\"accessibility-ready\";i:1;s:10:\"buddypress\";i:2;s:17:\"custom-background\";i:3;s:13:\"custom-colors\";i:4;s:13:\"custom-header\";i:5;s:11:\"custom-menu\";i:6;s:12:\"editor-style\";i:7;s:21:\"featured-image-header\";i:8;s:15:\"featured-images\";i:9;s:15:\"flexible-header\";i:10;s:14:\"footer-widgets\";i:11;s:20:\"front-page-post-form\";i:12;s:19:\"full-width-template\";i:13;s:12:\"microformats\";i:14;s:12:\"post-formats\";i:15;s:20:\"rtl-language-support\";i:16;s:11:\"sticky-post\";i:17;s:13:\"theme-options\";i:18;s:17:\"threaded-comments\";i:19;s:17:\"translation-ready\";}s:7:\"Subject\";a:9:{i:0;s:4:\"blog\";i:1;s:10:\"e-commerce\";i:2;s:9:\"education\";i:3;s:13:\"entertainment\";i:4;s:14:\"food-and-drink\";i:5;s:7:\"holiday\";i:6;s:4:\"news\";i:7;s:11:\"photography\";i:8;s:9:\"portfolio\";}}','no'),(455,'_transient_timeout_wc_term_counts','1513339692','no'),(456,'_transient_wc_term_counts','a:2:{i:18;s:1:\"1\";i:19;s:1:\"2\";}','no'),(457,'_transient_timeout_wc_related_60','1510834125','no'),(458,'_transient_wc_related_60','a:0:{}','no'),(459,'_transient_is_multi_author','0','yes');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=304 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default'),(4,5,'_edit_last','1'),(5,5,'_edit_lock','1510747831:1'),(6,5,'_wp_page_template','default'),(7,5,'storevilla_page_layouts','nosidebar'),(8,7,'_edit_last','1'),(9,7,'_wp_page_template','default'),(10,7,'storevilla_page_layouts','rightsidebar'),(11,7,'_edit_lock','1509551011:1'),(12,9,'_edit_last','1'),(13,9,'_wp_page_template','default'),(14,9,'storevilla_page_layouts','rightsidebar'),(15,9,'_edit_lock','1509554324:1'),(16,2,'_edit_lock','1510747682:1'),(17,2,'_edit_last','1'),(18,2,'storevilla_page_layouts','nosidebar'),(37,14,'_wp_trash_meta_status','publish'),(38,14,'_wp_trash_meta_time','1509551648'),(39,15,'_menu_item_type','post_type'),(40,15,'_menu_item_menu_item_parent','0'),(41,15,'_menu_item_object_id','9'),(42,15,'_menu_item_object','page'),(43,15,'_menu_item_target',''),(44,15,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(45,15,'_menu_item_xfn',''),(46,15,'_menu_item_url',''),(48,16,'_menu_item_type','post_type'),(49,16,'_menu_item_menu_item_parent','0'),(50,16,'_menu_item_object_id','7'),(51,16,'_menu_item_object','page'),(52,16,'_menu_item_target',''),(53,16,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(54,16,'_menu_item_xfn',''),(55,16,'_menu_item_url',''),(57,17,'_menu_item_type','post_type'),(58,17,'_menu_item_menu_item_parent','0'),(59,17,'_menu_item_object_id','5'),(60,17,'_menu_item_object','page'),(61,17,'_menu_item_target',''),(62,17,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(63,17,'_menu_item_xfn',''),(64,17,'_menu_item_url',''),(66,18,'_menu_item_type','post_type'),(67,18,'_menu_item_menu_item_parent','0'),(68,18,'_menu_item_object_id','2'),(69,18,'_menu_item_object','page'),(70,18,'_menu_item_target',''),(71,18,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(72,18,'_menu_item_xfn',''),(73,18,'_menu_item_url',''),(75,19,'_wp_trash_meta_status','publish'),(76,19,'_wp_trash_meta_time','1509552470'),(77,33,'_edit_last','1'),(78,33,'_wp_page_template','default'),(88,35,'storevilla_page_layouts','rightsidebar'),(89,35,'_menu_item_type','post_type'),(90,35,'_menu_item_menu_item_parent','0'),(91,35,'_menu_item_object_id','33'),(92,35,'_menu_item_object','page'),(93,35,'_menu_item_target',''),(94,35,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(95,35,'_menu_item_xfn',''),(96,35,'_menu_item_url',''),(97,33,'storevilla_page_layouts','rightsidebar'),(98,33,'_edit_lock','1510153963:1'),(99,37,'_edit_last','1'),(100,37,'_wp_page_template','default'),(110,39,'storevilla_page_layouts','rightsidebar'),(111,39,'_menu_item_type','post_type'),(112,39,'_menu_item_menu_item_parent','0'),(113,39,'_menu_item_object_id','37'),(114,39,'_menu_item_object','page'),(115,39,'_menu_item_target',''),(116,39,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(117,39,'_menu_item_xfn',''),(118,39,'_menu_item_url',''),(119,37,'storevilla_page_layouts','rightsidebar'),(120,37,'_edit_lock','1510153980:1'),(121,41,'_edit_last','1'),(122,41,'_wp_page_template','default'),(132,43,'storevilla_page_layouts','rightsidebar'),(133,43,'_menu_item_type','post_type'),(134,43,'_menu_item_menu_item_parent','0'),(135,43,'_menu_item_object_id','41'),(136,43,'_menu_item_object','page'),(137,43,'_menu_item_target',''),(138,43,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(139,43,'_menu_item_xfn',''),(140,43,'_menu_item_url',''),(141,41,'storevilla_page_layouts','rightsidebar'),(142,41,'_edit_lock','1510153995:1'),(143,45,'_edit_last','1'),(144,45,'_wp_page_template','default'),(154,47,'storevilla_page_layouts','rightsidebar'),(155,47,'_menu_item_type','post_type'),(156,47,'_menu_item_menu_item_parent','0'),(157,47,'_menu_item_object_id','45'),(158,47,'_menu_item_object','page'),(159,47,'_menu_item_target',''),(160,47,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(161,47,'_menu_item_xfn',''),(162,47,'_menu_item_url',''),(163,45,'storevilla_page_layouts','rightsidebar'),(164,45,'_edit_lock','1510154010:1'),(165,49,'ml-slider_settings','a:35:{s:4:\"type\";s:4:\"flex\";s:6:\"random\";s:5:\"false\";s:8:\"cssClass\";s:0:\"\";s:8:\"printCss\";s:4:\"true\";s:7:\"printJs\";s:4:\"true\";s:5:\"width\";s:4:\"1000\";s:6:\"height\";s:3:\"300\";s:3:\"spw\";i:7;s:3:\"sph\";i:5;s:5:\"delay\";s:4:\"3000\";s:6:\"sDelay\";i:30;s:7:\"opacity\";d:0.7;s:10:\"titleSpeed\";i:500;s:6:\"effect\";s:4:\"fade\";s:10:\"navigation\";s:4:\"true\";s:5:\"links\";s:5:\"false\";s:10:\"hoverPause\";s:4:\"true\";s:5:\"theme\";s:7:\"default\";s:9:\"direction\";s:10:\"horizontal\";s:7:\"reverse\";s:5:\"false\";s:14:\"animationSpeed\";s:3:\"600\";s:8:\"prevText\";s:1:\"<\";s:8:\"nextText\";s:1:\">\";s:6:\"slices\";i:15;s:6:\"center\";s:5:\"false\";s:9:\"smartCrop\";s:4:\"true\";s:12:\"carouselMode\";s:5:\"false\";s:14:\"carouselMargin\";s:1:\"5\";s:6:\"easing\";s:6:\"linear\";s:8:\"autoPlay\";s:4:\"true\";s:11:\"thumb_width\";i:150;s:12:\"thumb_height\";i:100;s:9:\"fullWidth\";s:5:\"false\";s:10:\"noConflict\";s:4:\"true\";s:12:\"smoothHeight\";s:5:\"false\";}'),(166,50,'_wp_attached_file','2017/11/3_value.jpg'),(167,50,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:3495;s:6:\"height\";i:1737;s:4:\"file\";s:19:\"2017/11/3_value.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"3_value-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"3_value-300x149.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:149;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"3_value-768x382.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:382;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"3_value-1024x509.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:509;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-cat-image\";a:4:{s:4:\"file\";s:19:\"3_value-275x370.jpg\";s:5:\"width\";i:275;s:6:\"height\";i:370;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:19:\"3_value-255x160.jpg\";s:5:\"width\";i:255;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"storevilla-blog-image\";a:4:{s:4:\"file\";s:20:\"3_value-1170x470.jpg\";s:5:\"width\";i:1170;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"storevilla-slider-image\";a:4:{s:4:\"file\";s:19:\"3_value-760x510.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:19:\"3_value-350x175.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-700x300\";a:4:{s:4:\"file\";s:19:\"3_value-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"2\";s:6:\"credit\";s:7:\"unknown\";s:6:\"camera\";s:13:\"Canon EOS 30D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1256651745\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:4:\"0.04\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(168,51,'_wp_attached_file','2017/11/elec.jpg'),(169,51,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1071;s:4:\"file\";s:16:\"2017/11/elec.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"elec-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"elec-300x201.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:201;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"elec-768x514.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:514;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"elec-1024x685.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:685;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-cat-image\";a:4:{s:4:\"file\";s:16:\"elec-275x370.jpg\";s:5:\"width\";i:275;s:6:\"height\";i:370;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:16:\"elec-255x160.jpg\";s:5:\"width\";i:255;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"storevilla-blog-image\";a:4:{s:4:\"file\";s:17:\"elec-1170x470.jpg\";s:5:\"width\";i:1170;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"storevilla-slider-image\";a:4:{s:4:\"file\";s:16:\"elec-760x510.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:16:\"elec-261x175.jpg\";s:5:\"width\";i:261;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-700x300\";a:4:{s:4:\"file\";s:16:\"elec-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(170,52,'_wp_attached_file','2017/11/f17d09ad875aab6a2566680dea71c56a.jpg'),(171,52,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1680;s:6:\"height\";i:1050;s:4:\"file\";s:44:\"2017/11/f17d09ad875aab6a2566680dea71c56a.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"f17d09ad875aab6a2566680dea71c56a-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"f17d09ad875aab6a2566680dea71c56a-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"f17d09ad875aab6a2566680dea71c56a-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"f17d09ad875aab6a2566680dea71c56a-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-cat-image\";a:4:{s:4:\"file\";s:44:\"f17d09ad875aab6a2566680dea71c56a-275x370.jpg\";s:5:\"width\";i:275;s:6:\"height\";i:370;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:44:\"f17d09ad875aab6a2566680dea71c56a-255x160.jpg\";s:5:\"width\";i:255;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"storevilla-blog-image\";a:4:{s:4:\"file\";s:45:\"f17d09ad875aab6a2566680dea71c56a-1170x470.jpg\";s:5:\"width\";i:1170;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"storevilla-slider-image\";a:4:{s:4:\"file\";s:44:\"f17d09ad875aab6a2566680dea71c56a-760x510.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:44:\"f17d09ad875aab6a2566680dea71c56a-280x175.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-700x300\";a:4:{s:4:\"file\";s:44:\"f17d09ad875aab6a2566680dea71c56a-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(172,53,'_thumbnail_id','50'),(173,53,'_wp_attachment_image_alt',''),(174,53,'ml-slider_type','image'),(175,54,'_thumbnail_id','51'),(176,54,'_wp_attachment_image_alt',''),(177,54,'ml-slider_type','image'),(178,55,'_thumbnail_id','52'),(179,55,'_wp_attachment_image_alt',''),(180,55,'ml-slider_type','image'),(181,50,'_wp_attachment_backup_sizes','a:1:{s:15:\"resized-700x300\";a:5:{s:4:\"path\";s:60:\"/var/www/html/wp-content/uploads/2017/11/3_value-700x300.jpg\";s:4:\"file\";s:19:\"3_value-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),(182,51,'_wp_attachment_backup_sizes','a:1:{s:15:\"resized-700x300\";a:5:{s:4:\"path\";s:57:\"/var/www/html/wp-content/uploads/2017/11/elec-700x300.jpg\";s:4:\"file\";s:16:\"elec-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),(183,52,'_wp_attachment_backup_sizes','a:1:{s:15:\"resized-700x300\";a:5:{s:4:\"path\";s:85:\"/var/www/html/wp-content/uploads/2017/11/f17d09ad875aab6a2566680dea71c56a-700x300.jpg\";s:4:\"file\";s:44:\"f17d09ad875aab6a2566680dea71c56a-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),(184,53,'ml-slider_crop_position','center-center'),(185,54,'ml-slider_crop_position','center-center'),(186,55,'ml-slider_crop_position','center-center'),(187,58,'_wp_trash_meta_status','publish'),(188,58,'_wp_trash_meta_time','1510157652'),(189,1,'_edit_lock','1510478645:1'),(190,59,'_wp_trash_meta_status','publish'),(191,59,'_wp_trash_meta_time','1510478993'),(192,60,'_wc_review_count','0'),(193,60,'_wc_rating_count','a:0:{}'),(194,60,'_wc_average_rating','0'),(195,60,'_edit_last','1'),(196,60,'_edit_lock','1510747689:1'),(197,60,'_sku',''),(198,60,'_regular_price','10'),(199,60,'_sale_price',''),(200,60,'_sale_price_dates_from',''),(201,60,'_sale_price_dates_to',''),(202,60,'total_sales','0'),(203,60,'_tax_status','taxable'),(204,60,'_tax_class',''),(205,60,'_manage_stock','no'),(206,60,'_backorders','no'),(207,60,'_sold_individually','no'),(208,60,'_weight',''),(209,60,'_length',''),(210,60,'_width',''),(211,60,'_height',''),(212,60,'_upsell_ids','a:0:{}'),(213,60,'_crosssell_ids','a:0:{}'),(214,60,'_purchase_note',''),(215,60,'_default_attributes','a:0:{}'),(216,60,'_virtual','no'),(217,60,'_downloadable','no'),(218,60,'_product_image_gallery',''),(219,60,'_download_limit','-1'),(220,60,'_download_expiry','-1'),(221,60,'_stock',NULL),(222,60,'_stock_status','instock'),(223,60,'_product_version','3.2.3'),(224,60,'_price','10'),(225,61,'_wc_review_count','0'),(226,61,'_wc_rating_count','a:0:{}'),(227,61,'_wc_average_rating','0'),(228,61,'_edit_last','1'),(229,61,'_sku',''),(230,61,'_regular_price','20'),(231,61,'_sale_price',''),(232,61,'_sale_price_dates_from',''),(233,61,'_sale_price_dates_to',''),(234,61,'total_sales','0'),(235,61,'_tax_status','taxable'),(236,61,'_tax_class',''),(237,61,'_manage_stock','no'),(238,61,'_backorders','no'),(239,61,'_sold_individually','no'),(240,61,'_weight',''),(241,61,'_length',''),(242,61,'_width',''),(243,61,'_height',''),(244,61,'_upsell_ids','a:0:{}'),(245,61,'_crosssell_ids','a:0:{}'),(246,61,'_purchase_note',''),(247,61,'_default_attributes','a:0:{}'),(248,61,'_virtual','no'),(249,61,'_downloadable','no'),(250,61,'_product_image_gallery',''),(251,61,'_download_limit','-1'),(252,61,'_download_expiry','-1'),(253,61,'_stock',NULL),(254,61,'_stock_status','instock'),(255,61,'_product_version','3.2.3'),(256,61,'_price','20'),(257,61,'_edit_lock','1510747533:1'),(258,62,'_wc_review_count','0'),(259,62,'_wc_rating_count','a:0:{}'),(260,62,'_wc_average_rating','0'),(261,62,'_edit_last','1'),(262,62,'_sku',''),(263,62,'_regular_price','50'),(264,62,'_sale_price',''),(265,62,'_sale_price_dates_from',''),(266,62,'_sale_price_dates_to',''),(267,62,'total_sales','0'),(268,62,'_tax_status','taxable'),(269,62,'_tax_class',''),(270,62,'_manage_stock','no'),(271,62,'_backorders','no'),(272,62,'_sold_individually','no'),(273,62,'_weight',''),(274,62,'_length',''),(275,62,'_width',''),(276,62,'_height',''),(277,62,'_upsell_ids','a:0:{}'),(278,62,'_crosssell_ids','a:0:{}'),(279,62,'_purchase_note',''),(280,62,'_default_attributes','a:0:{}'),(281,62,'_virtual','no'),(282,62,'_downloadable','no'),(283,62,'_product_image_gallery',''),(284,62,'_download_limit','-1'),(285,62,'_download_expiry','-1'),(286,62,'_stock',NULL),(287,62,'_stock_status','instock'),(288,62,'_product_version','3.2.3'),(289,62,'_price','50'),(290,62,'_edit_lock','1510747501:1'),(291,64,'ml-slider_settings','a:35:{s:4:\"type\";s:4:\"flex\";s:6:\"random\";s:5:\"false\";s:8:\"cssClass\";s:0:\"\";s:8:\"printCss\";s:4:\"true\";s:7:\"printJs\";s:4:\"true\";s:5:\"width\";s:3:\"600\";s:6:\"height\";s:3:\"200\";s:3:\"spw\";i:7;s:3:\"sph\";i:5;s:5:\"delay\";s:4:\"3000\";s:6:\"sDelay\";i:30;s:7:\"opacity\";d:0.7;s:10:\"titleSpeed\";i:500;s:6:\"effect\";s:4:\"fade\";s:10:\"navigation\";s:4:\"true\";s:5:\"links\";s:5:\"false\";s:10:\"hoverPause\";s:4:\"true\";s:5:\"theme\";s:7:\"default\";s:9:\"direction\";s:10:\"horizontal\";s:7:\"reverse\";s:5:\"false\";s:14:\"animationSpeed\";s:3:\"600\";s:8:\"prevText\";s:1:\"<\";s:8:\"nextText\";s:1:\">\";s:6:\"slices\";i:15;s:6:\"center\";s:5:\"false\";s:9:\"smartCrop\";s:4:\"true\";s:12:\"carouselMode\";s:5:\"false\";s:14:\"carouselMargin\";s:1:\"5\";s:6:\"easing\";s:6:\"linear\";s:8:\"autoPlay\";s:4:\"true\";s:11:\"thumb_width\";i:150;s:12:\"thumb_height\";i:100;s:9:\"fullWidth\";s:4:\"true\";s:10:\"noConflict\";s:4:\"true\";s:12:\"smoothHeight\";s:5:\"false\";}'),(292,65,'_thumbnail_id','52'),(293,65,'_wp_attachment_image_alt',''),(294,65,'ml-slider_type','image'),(295,66,'_thumbnail_id','51'),(296,66,'_wp_attachment_image_alt',''),(297,66,'ml-slider_type','image'),(298,67,'_thumbnail_id','50'),(299,67,'_wp_attachment_image_alt',''),(300,67,'ml-slider_type','image'),(301,65,'ml-slider_crop_position','center-center'),(302,66,'ml-slider_crop_position','center-center'),(303,67,'ml-slider_crop_position','center-center');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2017-11-01 18:22:19','2017-11-01 15:22:19','Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!','Привет, мир!','','publish','open','open','','%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80','','','2017-11-01 18:22:19','2017-11-01 15:22:19','',0,'http://127.0.0.1/?p=1',0,'post','',1),(2,1,'2017-11-01 18:22:19','2017-11-01 15:22:19','<h5 align=\"center\">[metaslider id=49]</h5>\r\n<h5 class=\"vidglm\" align=\"center\"><span class=\"vidgl1\">ООО \"Компания БАЛТСВЯЗЬ\"</span> <span class=\"vidgl\">занимается</span> <span class=\"vidk\"> оптовой</span> <span class=\"vidgl\">поставкой и реализацией в Северо-Западном регионе кабельной продукции.</span></h5>\r\n<h5 class=\"vidgl\" align=\"center\"><em>Изготавливаем под заказ витые шнуры из микрофонных, телефонных и других кабелей, длиной до 6,5 м. </em></h5>\r\n<p class=\"vidgl\" style=\"text-align: left;\" align=\"center\"><strong>Кабель</strong></p>\r\n\r\n<ul>\r\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены радиочастотых кабелей\" href=\"http://baltsvyas.spb.ru/prise.htm#n1\"><strong>радиочастотный</strong></a></li>\r\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены кабелей для систем видеонаблюдения\" href=\"http://baltsvyas.spb.ru/prise.htm#n5\"><strong>специальный, для систем видеонаблюдения</strong></a></li>\r\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены микрофонных и радиочастотных кабелей\" href=\"http://baltsvyas.spb.ru/prise.htm#n2\"><strong>микрофонный, радиочастотный</strong></a></li>\r\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены кабелей телефонных и для систем контроля доступа\" href=\"http://baltsvyas.spb.ru/prise.htm#n3\"><strong>телефонный, специальный для систем контроля доступа</strong></a></li>\r\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены кабелей сетевых\" href=\"http://baltsvyas.spb.ru/prise.htm#n4\"><strong>сетевой (предназначен для блоков питания) </strong></a></li>\r\n</ul>\r\n&nbsp;\r\n\r\n&nbsp;','Главная','','publish','closed','open','','sample-page','','','2017-11-15 14:40:21','2017-11-15 11:40:21','',0,'http://127.0.0.1/?page_id=2',0,'page','',0),(5,1,'2017-11-01 18:45:08','2017-11-01 15:45:08','','Продукция','','publish','closed','closed','','%d0%9f%d1%80%d0%be%d0%b4%d1%83%d0%ba%d1%86%d0%b8%d1%8f','','','2017-11-15 15:09:52','2017-11-15 12:09:52','',0,'http://127.0.0.1/?page_id=5',0,'page','',0),(6,1,'2017-11-01 18:45:08','2017-11-01 15:45:08','','Продукция','','inherit','closed','closed','','5-revision-v1','','','2017-11-01 18:45:08','2017-11-01 15:45:08','',5,'http://127.0.0.1/?p=6',0,'revision','',0),(7,1,'2017-11-01 18:45:52','2017-11-01 15:45:52','','Доставка и оплата','','publish','closed','closed','','%d0%94%d0%be%d1%81%d1%82%d0%b0%d0%b2%d0%ba%d0%b0-%d0%b8-%d0%be%d0%bf%d0%bb%d0%b0%d1%82%d0%b0','','','2017-11-01 18:45:52','2017-11-01 15:45:52','',0,'http://127.0.0.1/?page_id=7',0,'page','',0),(8,1,'2017-11-01 18:45:52','2017-11-01 15:45:52','','Доставка и оплата','','inherit','closed','closed','','7-revision-v1','','','2017-11-01 18:45:52','2017-11-01 15:45:52','',7,'http://127.0.0.1/?p=8',0,'revision','',0),(9,1,'2017-11-01 18:48:28','2017-11-01 15:48:28','г. Санкт-Петербург, ул. Бумажая, д.9, к.1, лит.А, оф. 306\r\n\r\nст. м. Нарвская\r\n\r\nТелефон: (812) 447-97-54; 937-38-55, факс: (812) 447-97-54\r\nЧасы работы:\r\nпн. - чт. :  8.00-16.30\r\nпт. :  8.00-15.30\r\n\r\nr@baltsvyas.spb.ru\r\nr@9373855.ru\r\n\r\n\r\n<script type=\"text/javascript\" charset=\"utf-8\" async src=\"https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3A2b38f3d7dddc2804c59a3f1863724995c482410a5b1c13179fc4b3e70261fd5f&amp;width=652&amp;height=506&amp;lang=ru_RU&amp;scroll=true\"></script>','Контакты','','publish','closed','closed','','%d0%9a%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d1%8b','','','2017-11-01 19:39:47','2017-11-01 16:39:47','',0,'http://127.0.0.1/?page_id=9',0,'page','',0),(10,1,'2017-11-01 18:48:28','2017-11-01 15:48:28','','Контакты','','inherit','closed','closed','','9-revision-v1','','','2017-11-01 18:48:28','2017-11-01 15:48:28','',9,'http://127.0.0.1/?p=10',0,'revision','',0),(11,1,'2017-11-01 18:49:11','2017-11-01 15:49:11','Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице «Детали» владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\r\n<blockquote>Привет! Днём я курьер, а вечером — подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\r\n...или так:\r\n<blockquote>Компания «Штучки XYZ» была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\r\nПерейдите <a href=\"http://127.0.0.1/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!','Главная','','inherit','closed','closed','','2-revision-v1','','','2017-11-01 18:49:11','2017-11-01 15:49:11','',2,'http://127.0.0.1/?p=11',0,'revision','',0),(14,1,'2017-11-01 18:54:08','2017-11-01 15:54:08','{\n    \"storevilla::nav_menu_locations[storevillatopmenu]\": {\n        \"value\": 2,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}','','','trash','closed','closed','','5abd6051-3eb4-407e-8b63-6b71c1757ef0','','','2017-11-01 18:54:08','2017-11-01 15:54:08','',0,'http://127.0.0.1/?p=14',0,'customize_changeset','',0),(15,1,'2017-11-01 18:55:31','2017-11-01 15:55:31',' ','','','publish','closed','closed','','15','','','2017-11-08 18:17:41','2017-11-08 15:17:41','',0,'http://127.0.0.1/?p=15',4,'nav_menu_item','',0),(16,1,'2017-11-01 18:55:31','2017-11-01 15:55:31',' ','','','publish','closed','closed','','16','','','2017-11-08 18:17:41','2017-11-08 15:17:41','',0,'http://127.0.0.1/?p=16',3,'nav_menu_item','',0),(17,1,'2017-11-01 18:55:31','2017-11-01 15:55:31',' ','','','publish','closed','closed','','17','','','2017-11-08 18:17:41','2017-11-08 15:17:41','',0,'http://127.0.0.1/?p=17',2,'nav_menu_item','',0),(18,1,'2017-11-01 18:55:31','2017-11-01 15:55:31',' ','','','publish','closed','closed','','18','','','2017-11-08 18:17:41','2017-11-08 15:17:41','',0,'http://127.0.0.1/?p=18',1,'nav_menu_item','',0),(19,1,'2017-11-01 19:07:50','2017-11-01 16:07:50','{\n    \"storevilla::nav_menu_locations[storevillatopmenu]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"storevilla::nav_menu_locations[storevillaprimary]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"storevilla::nav_menu_locations[storevillaprimary1]\": {\n        \"value\": 3,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"nav_menu[3]\": {\n        \"value\": {\n            \"name\": \"\\u041a\\u0430\\u0431\\u0435\\u043b\\u0438\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": true\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1\n    }\n}','','','trash','closed','closed','','e69d6e10-f11e-4f3c-ab65-9951f46e223b','','','2017-11-01 19:07:50','2017-11-01 16:07:50','',0,'http://127.0.0.1/?p=19',0,'customize_changeset','',0),(21,1,'2017-11-15 12:03:35','2017-11-15 09:03:35','<h5 align=\"center\">[metaslider id=49]</h5>\n<h5 class=\"vidglm\" align=\"center\"><span class=\"vidgl1\">ООО \"Компания БАЛТСВЯЗЬ\"</span> <span class=\"vidgl\">занимается</span> <span class=\"vidk\"> оптовой</span> <span class=\"vidgl\">поставкой и реализацией в Северо-Западном регионе кабельной продукции.</span></h5>\n<h5 class=\"vidgl\" align=\"center\"><em>Изготавливаем под заказ витые шнуры из микрофонных, телефонных и других кабелей, длиной до 6,5 м. </em></h5>\n<p class=\"vidgl\" style=\"text-align: left;\" align=\"center\"><strong>Кабель</strong></p>\n\n<ul>\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены радиочастотых кабелей\" href=\"http://baltsvyas.spb.ru/prise.htm#n1\"><strong>радиочастотный</strong></a></li>\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены кабелей для систем видеонаблюдения\" href=\"http://baltsvyas.spb.ru/prise.htm#n5\"><strong>специальный, для систем видеонаблюдения</strong></a></li>\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены микрофонных и радиочастотных кабелей\" href=\"http://baltsvyas.spb.ru/prise.htm#n2\"><strong>микрофонный, радиочастотный</strong></a></li>\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены кабелей телефонных и для систем контроля доступа\" href=\"http://baltsvyas.spb.ru/prise.htm#n3\"><strong>телефонный, специальный для систем контроля доступа</strong></a></li>\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены кабелей сетевых\" href=\"http://baltsvyas.spb.ru/prise.htm#n4\"><strong>сетевой (предназначен для блоков питания) </strong></a></li>\n</ul>\n&nbsp;\n\n&nbsp;','Главная','','inherit','closed','closed','','2-autosave-v1','','','2017-11-15 12:03:35','2017-11-15 09:03:35','',2,'http://127.0.0.1/?p=21',0,'revision','',0),(22,1,'2017-11-01 19:19:31','2017-11-01 16:19:31','<p class=\"vidglm\" align=\"center\"><span class=\"vidgl1\">ООО \"БАЛТСВЯЗЬ\"</span> <span class=\"vidgl\">занимается</span> <span class=\"vidk\"> оптовой</span> <span class=\"vidgl\">поставкой и реализацией в Северо-Западном регионе кабельной продукции.</span></p>\r\n<p class=\"vidgl\" align=\"center\"><em>Изготавливаем под заказ витые шнуры из микрофонных, телефонных и других кабелей, длиной до 6,5 м. </em></p>\r\n<p class=\"vidgl\" style=\"text-align: left;\" align=\"center\"><strong>Кабель</strong></p>\r\n\r\n<ul>\r\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены радиочастотых кабелей\" href=\"http://baltsvyas.spb.ru/prise.htm#n1\"><strong>радиочастотный</strong></a></li>\r\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены кабелей для систем видеонаблюдения\" href=\"http://baltsvyas.spb.ru/prise.htm#n5\"><strong>специальный, для систем видеонаблюдения</strong></a></li>\r\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены микрофонных и радиочастотных кабелей\" href=\"http://baltsvyas.spb.ru/prise.htm#n2\"><strong>микрофонный, радиочастотный</strong></a></li>\r\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены кабелей  телефонных и для систем контроля доступа\" href=\"http://baltsvyas.spb.ru/prise.htm#n3\"><strong>телефонный, специальный для систем контроля доступа</strong></a></li>\r\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и  цены кабелей сетевых\" href=\"http://baltsvyas.spb.ru/prise.htm#n4\"><strong>сетевой (предназначен для блоков питания) </strong></a></li>\r\n</ul>\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nЭто пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице «Детали» владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\r\n<blockquote>Привет! Днём я курьер, а вечером — подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\r\n...или так:\r\n<blockquote>Компания «Штучки XYZ» была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\r\nПерейдите <a href=\"http://127.0.0.1/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!','Главная','','inherit','closed','closed','','2-revision-v1','','','2017-11-01 19:19:31','2017-11-01 16:19:31','',2,'http://127.0.0.1/?p=22',0,'revision','',0),(23,1,'2017-11-01 19:21:01','2017-11-01 16:21:01','<h3 class=\"vidglm\" align=\"center\"><span class=\"vidgl1\">ООО \"Компания БАЛТСВЯЗЬ\"</span> <span class=\"vidgl\">занимается</span> <span class=\"vidk\"> оптовой</span> <span class=\"vidgl\">поставкой и реализацией в Северо-Западном регионе кабельной продукции.</span></h3>\r\n<h3 class=\"vidgl\" align=\"center\"><em>Изготавливаем под заказ витые шнуры из микрофонных, телефонных и других кабелей, длиной до 6,5 м. </em></h3>\r\n<p class=\"vidgl\" style=\"text-align: left;\" align=\"center\"><strong>Кабель</strong></p>\r\n\r\n<ul>\r\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены радиочастотых кабелей\" href=\"http://baltsvyas.spb.ru/prise.htm#n1\"><strong>радиочастотный</strong></a></li>\r\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены кабелей для систем видеонаблюдения\" href=\"http://baltsvyas.spb.ru/prise.htm#n5\"><strong>специальный, для систем видеонаблюдения</strong></a></li>\r\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены микрофонных и радиочастотных кабелей\" href=\"http://baltsvyas.spb.ru/prise.htm#n2\"><strong>микрофонный, радиочастотный</strong></a></li>\r\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены кабелей телефонных и для систем контроля доступа\" href=\"http://baltsvyas.spb.ru/prise.htm#n3\"><strong>телефонный, специальный для систем контроля доступа</strong></a></li>\r\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены кабелей сетевых\" href=\"http://baltsvyas.spb.ru/prise.htm#n4\"><strong>сетевой (предназначен для блоков питания) </strong></a></li>\r\n</ul>\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nЭто пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице «Детали» владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\r\n<blockquote>Привет! Днём я курьер, а вечером — подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\r\n...или так:\r\n<blockquote>Компания «Штучки XYZ» была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\r\nПерейдите <a href=\"http://127.0.0.1/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!','Главная','','inherit','closed','closed','','2-revision-v1','','','2017-11-01 19:21:01','2017-11-01 16:21:01','',2,'http://127.0.0.1/?p=23',0,'revision','',0),(24,1,'2017-11-01 19:21:21','2017-11-01 16:21:21','<h4 class=\"vidglm\" align=\"center\"><span class=\"vidgl1\">ООО \"Компания БАЛТСВЯЗЬ\"</span> <span class=\"vidgl\">занимается</span> <span class=\"vidk\"> оптовой</span> <span class=\"vidgl\">поставкой и реализацией в Северо-Западном регионе кабельной продукции.</span></h4>\r\n<h4 class=\"vidgl\" align=\"center\"><em>Изготавливаем под заказ витые шнуры из микрофонных, телефонных и других кабелей, длиной до 6,5 м. </em></h4>\r\n<p class=\"vidgl\" style=\"text-align: left;\" align=\"center\"><strong>Кабель</strong></p>\r\n\r\n<ul>\r\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены радиочастотых кабелей\" href=\"http://baltsvyas.spb.ru/prise.htm#n1\"><strong>радиочастотный</strong></a></li>\r\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены кабелей для систем видеонаблюдения\" href=\"http://baltsvyas.spb.ru/prise.htm#n5\"><strong>специальный, для систем видеонаблюдения</strong></a></li>\r\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены микрофонных и радиочастотных кабелей\" href=\"http://baltsvyas.spb.ru/prise.htm#n2\"><strong>микрофонный, радиочастотный</strong></a></li>\r\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены кабелей телефонных и для систем контроля доступа\" href=\"http://baltsvyas.spb.ru/prise.htm#n3\"><strong>телефонный, специальный для систем контроля доступа</strong></a></li>\r\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены кабелей сетевых\" href=\"http://baltsvyas.spb.ru/prise.htm#n4\"><strong>сетевой (предназначен для блоков питания) </strong></a></li>\r\n</ul>\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nЭто пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице «Детали» владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\r\n<blockquote>Привет! Днём я курьер, а вечером — подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\r\n...или так:\r\n<blockquote>Компания «Штучки XYZ» была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\r\nПерейдите <a href=\"http://127.0.0.1/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!','Главная','','inherit','closed','closed','','2-revision-v1','','','2017-11-01 19:21:21','2017-11-01 16:21:21','',2,'http://127.0.0.1/?p=24',0,'revision','',0),(25,1,'2017-11-01 19:21:46','2017-11-01 16:21:46','<h5 class=\"vidglm\" align=\"center\"><span class=\"vidgl1\">ООО \"Компания БАЛТСВЯЗЬ\"</span> <span class=\"vidgl\">занимается</span> <span class=\"vidk\"> оптовой</span> <span class=\"vidgl\">поставкой и реализацией в Северо-Западном регионе кабельной продукции.</span></h5>\r\n<h5 class=\"vidgl\" align=\"center\"><em>Изготавливаем под заказ витые шнуры из микрофонных, телефонных и других кабелей, длиной до 6,5 м. </em></h5>\r\n<p class=\"vidgl\" style=\"text-align: left;\" align=\"center\"><strong>Кабель</strong></p>\r\n\r\n<ul>\r\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены радиочастотых кабелей\" href=\"http://baltsvyas.spb.ru/prise.htm#n1\"><strong>радиочастотный</strong></a></li>\r\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены кабелей для систем видеонаблюдения\" href=\"http://baltsvyas.spb.ru/prise.htm#n5\"><strong>специальный, для систем видеонаблюдения</strong></a></li>\r\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены микрофонных и радиочастотных кабелей\" href=\"http://baltsvyas.spb.ru/prise.htm#n2\"><strong>микрофонный, радиочастотный</strong></a></li>\r\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены кабелей телефонных и для систем контроля доступа\" href=\"http://baltsvyas.spb.ru/prise.htm#n3\"><strong>телефонный, специальный для систем контроля доступа</strong></a></li>\r\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены кабелей сетевых\" href=\"http://baltsvyas.spb.ru/prise.htm#n4\"><strong>сетевой (предназначен для блоков питания) </strong></a></li>\r\n</ul>\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nЭто пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице «Детали» владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\r\n<blockquote>Привет! Днём я курьер, а вечером — подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\r\n...или так:\r\n<blockquote>Компания «Штучки XYZ» была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\r\nПерейдите <a href=\"http://127.0.0.1/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!','Главная','','inherit','closed','closed','','2-revision-v1','','','2017-11-01 19:21:46','2017-11-01 16:21:46','',2,'http://127.0.0.1/?p=25',0,'revision','',0),(26,1,'2017-11-01 19:22:47','2017-11-01 16:22:47','<h5 class=\"vidglm\" align=\"center\"><span class=\"vidgl1\">ООО \"Компания БАЛТСВЯЗЬ\"</span> <span class=\"vidgl\">занимается</span> <span class=\"vidk\"> оптовой</span> <span class=\"vidgl\">поставкой и реализацией в Северо-Западном регионе кабельной продукции.</span></h5>\r\n<h5 class=\"vidgl\" align=\"center\"><em>Изготавливаем под заказ витые шнуры из микрофонных, телефонных и других кабелей, длиной до 6,5 м. </em></h5>\r\n<p class=\"vidgl\" style=\"text-align: left;\" align=\"center\"><strong>Кабель</strong></p>\r\n\r\n<ul>\r\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены радиочастотых кабелей\" href=\"http://baltsvyas.spb.ru/prise.htm#n1\"><strong>радиочастотный</strong></a></li>\r\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены кабелей для систем видеонаблюдения\" href=\"http://baltsvyas.spb.ru/prise.htm#n5\"><strong>специальный, для систем видеонаблюдения</strong></a></li>\r\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены микрофонных и радиочастотных кабелей\" href=\"http://baltsvyas.spb.ru/prise.htm#n2\"><strong>микрофонный, радиочастотный</strong></a></li>\r\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены кабелей телефонных и для систем контроля доступа\" href=\"http://baltsvyas.spb.ru/prise.htm#n3\"><strong>телефонный, специальный для систем контроля доступа</strong></a></li>\r\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены кабелей сетевых\" href=\"http://baltsvyas.spb.ru/prise.htm#n4\"><strong>сетевой (предназначен для блоков питания) </strong></a></li>\r\n</ul>\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nЭто пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице «Детали» владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\r\n<blockquote>Привет! Днём я курьер, а вечером — подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\r\n...или так:\r\n<blockquote>Компания «Штучки XYZ» была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\r\nПерейдите <a href=\"http://127.0.0.1/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!','','','inherit','closed','closed','','2-revision-v1','','','2017-11-01 19:22:47','2017-11-01 16:22:47','',2,'http://127.0.0.1/?p=26',0,'revision','',0),(27,1,'2017-11-01 19:23:08','2017-11-01 16:23:08','<h5 class=\"vidglm\" align=\"center\"><span class=\"vidgl1\">ООО \"Компания БАЛТСВЯЗЬ\"</span> <span class=\"vidgl\">занимается</span> <span class=\"vidk\"> оптовой</span> <span class=\"vidgl\">поставкой и реализацией в Северо-Западном регионе кабельной продукции.</span></h5>\r\n<h5 class=\"vidgl\" align=\"center\"><em>Изготавливаем под заказ витые шнуры из микрофонных, телефонных и других кабелей, длиной до 6,5 м. </em></h5>\r\n<p class=\"vidgl\" style=\"text-align: left;\" align=\"center\"><strong>Кабель</strong></p>\r\n\r\n<ul>\r\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены радиочастотых кабелей\" href=\"http://baltsvyas.spb.ru/prise.htm#n1\"><strong>радиочастотный</strong></a></li>\r\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены кабелей для систем видеонаблюдения\" href=\"http://baltsvyas.spb.ru/prise.htm#n5\"><strong>специальный, для систем видеонаблюдения</strong></a></li>\r\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены микрофонных и радиочастотных кабелей\" href=\"http://baltsvyas.spb.ru/prise.htm#n2\"><strong>микрофонный, радиочастотный</strong></a></li>\r\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены кабелей телефонных и для систем контроля доступа\" href=\"http://baltsvyas.spb.ru/prise.htm#n3\"><strong>телефонный, специальный для систем контроля доступа</strong></a></li>\r\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены кабелей сетевых\" href=\"http://baltsvyas.spb.ru/prise.htm#n4\"><strong>сетевой (предназначен для блоков питания) </strong></a></li>\r\n</ul>\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nЭто пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице «Детали» владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\r\n<blockquote>Привет! Днём я курьер, а вечером — подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\r\n...или так:\r\n<blockquote>Компания «Штучки XYZ» была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\r\nПерейдите <a href=\"http://127.0.0.1/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!','Главная','','inherit','closed','closed','','2-revision-v1','','','2017-11-01 19:23:08','2017-11-01 16:23:08','',2,'http://127.0.0.1/?p=27',0,'revision','',0),(28,1,'2017-11-01 19:28:05','2017-11-01 16:28:05','г. Санкт-Петербург, ул. Бумажая, д.9, к.1, лит.А, оф. 306\r\n\r\nст. м. Нарвская\r\n\r\nТелефон: (812) 447-97-54; 937-38-55, факс: (812) 447-97-54\r\nчасы работы -\r\nпн. - чт. - 8.00-16.30\r\nпт. - 8.00-15.30\r\n\r\nr@baltsvyas.spb.ru\r\nr@9373855.ru','Контакты','','inherit','closed','closed','','9-revision-v1','','','2017-11-01 19:28:05','2017-11-01 16:28:05','',9,'http://127.0.0.1/?p=28',0,'revision','',0),(29,1,'2017-11-01 19:28:54','2017-11-01 16:28:54','г. Санкт-Петербург, ул. Бумажая, д.9, к.1, лит.А, оф. 306\r\n\r\nст. м. Нарвская\r\n\r\nТелефон: (812) 447-97-54; 937-38-55, факс: (812) 447-97-54\r\nЧасы работы:\r\nпн. - чт. : 8.00-16.30\r\nпт. : 8.00-15.30\r\n\r\nr@baltsvyas.spb.ru\r\nr@9373855.ru','Контакты','','inherit','closed','closed','','9-revision-v1','','','2017-11-01 19:28:54','2017-11-01 16:28:54','',9,'http://127.0.0.1/?p=29',0,'revision','',0),(30,1,'2017-11-01 19:31:24','2017-11-01 16:31:24','г. Санкт-Петербург, ул. Бумажая, д.9, к.1, лит.А, оф. 306\n\nст. м. Нарвская\n\nТелефон: (812) 447-97-54; 937-38-55, факс: (812) 447-97-54\nЧасы работы:\nпн. - чт. :  8.00-16.30\nпт. : 8.00-15.30\n\nr@baltsvyas.spb.ru\nr@9373855.ru','Контакты','','inherit','closed','closed','','9-autosave-v1','','','2017-11-01 19:31:24','2017-11-01 16:31:24','',9,'http://127.0.0.1/?p=30',0,'revision','',0),(31,1,'2017-11-01 19:31:28','2017-11-01 16:31:28','г. Санкт-Петербург, ул. Бумажая, д.9, к.1, лит.А, оф. 306\r\n\r\nст. м. Нарвская\r\n\r\nТелефон: (812) 447-97-54; 937-38-55, факс: (812) 447-97-54\r\nЧасы работы:\r\nпн. - чт. :  8.00-16.30\r\nпт. :  8.00-15.30\r\n\r\nr@baltsvyas.spb.ru\r\nr@9373855.ru','Контакты','','inherit','closed','closed','','9-revision-v1','','','2017-11-01 19:31:28','2017-11-01 16:31:28','',9,'http://127.0.0.1/?p=31',0,'revision','',0),(32,1,'2017-11-01 19:39:47','2017-11-01 16:39:47','г. Санкт-Петербург, ул. Бумажая, д.9, к.1, лит.А, оф. 306\r\n\r\nст. м. Нарвская\r\n\r\nТелефон: (812) 447-97-54; 937-38-55, факс: (812) 447-97-54\r\nЧасы работы:\r\nпн. - чт. :  8.00-16.30\r\nпт. :  8.00-15.30\r\n\r\nr@baltsvyas.spb.ru\r\nr@9373855.ru\r\n\r\n\r\n<script type=\"text/javascript\" charset=\"utf-8\" async src=\"https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3A2b38f3d7dddc2804c59a3f1863724995c482410a5b1c13179fc4b3e70261fd5f&amp;width=652&amp;height=506&amp;lang=ru_RU&amp;scroll=true\"></script>','Контакты','','inherit','closed','closed','','9-revision-v1','','','2017-11-01 19:39:47','2017-11-01 16:39:47','',9,'http://127.0.0.1/?p=32',0,'revision','',0),(33,1,'2017-11-08 18:14:19','2017-11-08 15:14:19','','Радиочастотный кабель','','publish','closed','closed','','%d0%a0%d0%b0%d0%b4%d0%b8%d0%be%d1%87%d0%b0%d1%81%d1%82%d0%be%d1%82%d0%bd%d1%8b%d0%b9-%d0%ba%d0%b0%d0%b1%d0%b5%d0%bb%d1%8c','','','2017-11-08 18:14:19','2017-11-08 15:14:19','',0,'http://127.0.0.1/?page_id=33',0,'page','',0),(35,1,'2017-11-08 18:14:20','2017-11-08 15:14:20',' ','','','publish','closed','closed','','35','','','2017-11-08 18:17:32','2017-11-08 15:17:32','',0,'http://127.0.0.1/?p=35',1,'nav_menu_item','',0),(36,1,'2017-11-08 18:14:19','2017-11-08 15:14:19','','Радиочастотный кабель','','inherit','closed','closed','','33-revision-v1','','','2017-11-08 18:14:19','2017-11-08 15:14:19','',33,'http://127.0.0.1/?p=36',0,'revision','',0),(37,1,'2017-11-08 18:15:11','2017-11-08 15:15:11','','Микрофонный низкочастотный кабель','','publish','closed','closed','','%d0%9c%d0%b8%d0%ba%d1%80%d0%be%d1%84%d0%be%d0%bd%d0%bd%d1%8b%d0%b9-%d0%bd%d0%b8%d0%b7%d0%ba%d0%be%d1%87%d0%b0%d1%81%d1%82%d0%be%d1%82%d0%bd%d1%8b%d0%b9-%d0%ba%d0%b0%d0%b1%d0%b5%d0%bb%d1%8c','','','2017-11-08 18:15:11','2017-11-08 15:15:11','',0,'http://127.0.0.1/?page_id=37',0,'page','',0),(39,1,'2017-11-08 18:15:13','2017-11-08 15:15:13',' ','','','publish','closed','closed','','39','','','2017-11-08 18:17:32','2017-11-08 15:17:32','',0,'http://127.0.0.1/?p=39',2,'nav_menu_item','',0),(40,1,'2017-11-08 18:15:11','2017-11-08 15:15:11','','Микрофонный низкочастотный кабель','','inherit','closed','closed','','37-revision-v1','','','2017-11-08 18:15:11','2017-11-08 15:15:11','',37,'http://127.0.0.1/?p=40',0,'revision','',0),(41,1,'2017-11-08 18:15:28','2017-11-08 15:15:28','','Телефонный кабель','','publish','closed','closed','','%d0%a2%d0%b5%d0%bb%d0%b5%d1%84%d0%be%d0%bd%d0%bd%d1%8b%d0%b9-%d0%ba%d0%b0%d0%b1%d0%b5%d0%bb%d1%8c','','','2017-11-08 18:15:28','2017-11-08 15:15:28','',0,'http://127.0.0.1/?page_id=41',0,'page','',0),(43,1,'2017-11-08 18:15:29','2017-11-08 15:15:29',' ','','','publish','closed','closed','','43','','','2017-11-08 18:17:32','2017-11-08 15:17:32','',0,'http://127.0.0.1/?p=43',3,'nav_menu_item','',0),(44,1,'2017-11-08 18:15:28','2017-11-08 15:15:28','','Телефонный кабель','','inherit','closed','closed','','41-revision-v1','','','2017-11-08 18:15:28','2017-11-08 15:15:28','',41,'http://127.0.0.1/?p=44',0,'revision','',0),(45,1,'2017-11-08 18:15:43','2017-11-08 15:15:43','','Сетевой кабель','','publish','closed','closed','','%d0%a1%d0%b5%d1%82%d0%b5%d0%b2%d0%be%d0%b9-%d0%ba%d0%b0%d0%b1%d0%b5%d0%bb%d1%8c','','','2017-11-08 18:15:43','2017-11-08 15:15:43','',0,'http://127.0.0.1/?page_id=45',0,'page','',0),(47,1,'2017-11-08 18:15:44','2017-11-08 15:15:44',' ','','','publish','closed','closed','','47','','','2017-11-08 18:17:32','2017-11-08 15:17:32','',0,'http://127.0.0.1/?p=47',4,'nav_menu_item','',0),(48,1,'2017-11-08 18:15:43','2017-11-08 15:15:43','','Сетевой кабель','','inherit','closed','closed','','45-revision-v1','','','2017-11-08 18:15:43','2017-11-08 15:15:43','',45,'http://127.0.0.1/?p=48',0,'revision','',0),(49,1,'2017-11-08 18:22:58','2017-11-08 15:22:58','','Новый слайдер','','publish','closed','closed','','%d0%9d%d0%be%d0%b2%d1%8b%d0%b9-%d1%81%d0%bb%d0%b0%d0%b9%d0%b4%d0%b5%d1%80','','','2017-11-15 14:39:27','2017-11-15 11:39:27','',0,'http://127.0.0.1/?post_type=ml-slider&#038;p=49',0,'ml-slider','',0),(50,1,'2017-11-08 18:23:19','2017-11-08 15:23:19','','3_value','','inherit','open','closed','','3_value','','','2017-11-08 18:23:19','2017-11-08 15:23:19','',0,'http://127.0.0.1/wp-content/uploads/2017/11/3_value.jpg',0,'attachment','image/jpeg',0),(51,1,'2017-11-08 18:23:21','2017-11-08 15:23:21','','elec','','inherit','open','closed','','elec','','','2017-11-08 18:23:21','2017-11-08 15:23:21','',0,'http://127.0.0.1/wp-content/uploads/2017/11/elec.jpg',0,'attachment','image/jpeg',0),(52,1,'2017-11-08 18:23:24','2017-11-08 15:23:24','','f17d09ad875aab6a2566680dea71c56a','','inherit','open','closed','','f17d09ad875aab6a2566680dea71c56a','','','2017-11-08 18:23:24','2017-11-08 15:23:24','',0,'http://127.0.0.1/wp-content/uploads/2017/11/f17d09ad875aab6a2566680dea71c56a.jpg',0,'attachment','image/jpeg',0),(53,1,'2017-11-08 18:23:40','2017-11-08 15:23:40','','Slider 49 - image','','publish','closed','closed','','slider-49-image','','','2017-11-15 14:39:27','2017-11-15 11:39:27','',0,'http://127.0.0.1/?post_type=ml-slide&#038;p=53',0,'ml-slide','',0),(54,1,'2017-11-08 18:23:41','2017-11-08 15:23:41','','Slider 49 - image','','publish','closed','closed','','slider-49-image-2','','','2017-11-15 14:39:27','2017-11-15 11:39:27','',0,'http://127.0.0.1/?post_type=ml-slide&#038;p=54',1,'ml-slide','',0),(55,1,'2017-11-08 18:23:42','2017-11-08 15:23:42','','Slider 49 - image','','publish','closed','closed','','slider-49-image-3','','','2017-11-15 14:39:27','2017-11-15 11:39:27','',0,'http://127.0.0.1/?post_type=ml-slide&#038;p=55',2,'ml-slide','',0),(56,1,'2017-11-08 18:25:12','2017-11-08 15:25:12','<h5 align=\"center\">[metaslider id=49]</h5>\r\n<h5 class=\"vidglm\" align=\"center\"><span class=\"vidgl1\">ООО \"Компания БАЛТСВЯЗЬ\"</span> <span class=\"vidgl\">занимается</span> <span class=\"vidk\"> оптовой</span> <span class=\"vidgl\">поставкой и реализацией в Северо-Западном регионе кабельной продукции.</span></h5>\r\n<h5 class=\"vidgl\" align=\"center\"><em>Изготавливаем под заказ витые шнуры из микрофонных, телефонных и других кабелей, длиной до 6,5 м. </em></h5>\r\n<p class=\"vidgl\" style=\"text-align: left;\" align=\"center\"><strong>Кабель</strong></p>\r\n\r\n<ul>\r\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены радиочастотых кабелей\" href=\"http://baltsvyas.spb.ru/prise.htm#n1\"><strong>радиочастотный</strong></a></li>\r\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены кабелей для систем видеонаблюдения\" href=\"http://baltsvyas.spb.ru/prise.htm#n5\"><strong>специальный, для систем видеонаблюдения</strong></a></li>\r\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены микрофонных и радиочастотных кабелей\" href=\"http://baltsvyas.spb.ru/prise.htm#n2\"><strong>микрофонный, радиочастотный</strong></a></li>\r\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены кабелей телефонных и для систем контроля доступа\" href=\"http://baltsvyas.spb.ru/prise.htm#n3\"><strong>телефонный, специальный для систем контроля доступа</strong></a></li>\r\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены кабелей сетевых\" href=\"http://baltsvyas.spb.ru/prise.htm#n4\"><strong>сетевой (предназначен для блоков питания) </strong></a></li>\r\n</ul>\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nЭто пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице «Детали» владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\r\n<blockquote>Привет! Днём я курьер, а вечером — подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\r\n...или так:\r\n<blockquote>Компания «Штучки XYZ» была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\r\nПерейдите <a href=\"http://127.0.0.1/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!','Главная','','inherit','closed','closed','','2-revision-v1','','','2017-11-08 18:25:12','2017-11-08 15:25:12','',2,'http://127.0.0.1/?p=56',0,'revision','',0),(57,1,'2017-11-08 19:10:02','0000-00-00 00:00:00','','Черновик','','auto-draft','open','open','','','','','2017-11-08 19:10:02','0000-00-00 00:00:00','',0,'http://127.0.0.1/?p=57',0,'post','',0),(58,1,'2017-11-08 19:14:11','2017-11-08 16:14:11','{\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1\n    }\n}','','','trash','closed','closed','','b2c8a9c8-a5ff-4372-aa78-aff2015b6499','','','2017-11-08 19:14:11','2017-11-08 16:14:11','',0,'http://127.0.0.1/?p=58',0,'customize_changeset','',0),(59,1,'2017-11-12 12:29:52','2017-11-12 09:29:52','{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"page_on_front\": {\n        \"value\": \"2\",\n        \"type\": \"option\",\n        \"user_id\": 1\n    }\n}','','','trash','closed','closed','','44100cd2-d1de-4031-be54-c0367c841d51','','','2017-11-12 12:29:52','2017-11-12 09:29:52','',0,'http://127.0.0.1/?p=59',0,'customize_changeset','',0),(60,1,'2017-11-12 12:40:43','2017-11-12 09:40:43','','Товар 1','','publish','open','closed','','%d0%a2%d0%be%d0%b2%d0%b0%d1%80%d1%8c-1','','','2017-11-15 15:08:09','2017-11-15 12:08:09','',0,'http://127.0.0.1/?post_type=product&#038;p=60',0,'product','',0),(61,1,'2017-11-12 12:41:05','2017-11-12 09:41:05','','Товар 2','','publish','open','closed','','%d0%a2%d0%be%d0%b2%d0%b0%d1%80-2','','','2017-11-15 15:07:55','2017-11-15 12:07:55','',0,'http://127.0.0.1/?post_type=product&#038;p=61',0,'product','',0),(62,1,'2017-11-12 12:41:15','2017-11-12 09:41:15','','Товар 3','','publish','open','closed','','%d0%a2%d0%be%d0%b2%d0%b0%d1%80-3','','','2017-11-15 15:07:18','2017-11-15 12:07:18','',0,'http://127.0.0.1/?post_type=product&#038;p=62',0,'product','',0),(63,1,'2017-11-15 10:46:55','2017-11-15 07:46:55','<h5 align=\"center\">[metaslider id=49]</h5>\r\n<h5 class=\"vidglm\" align=\"center\"><span class=\"vidgl1\">ООО \"Компания БАЛТСВЯЗЬ\"</span> <span class=\"vidgl\">занимается</span> <span class=\"vidk\"> оптовой</span> <span class=\"vidgl\">поставкой и реализацией в Северо-Западном регионе кабельной продукции.</span></h5>\r\n<h5 class=\"vidgl\" align=\"center\"><em>Изготавливаем под заказ витые шнуры из микрофонных, телефонных и других кабелей, длиной до 6,5 м. </em></h5>\r\n<p class=\"vidgl\" style=\"text-align: left;\" align=\"center\"><strong>Кабель</strong></p>\r\n\r\n<ul>\r\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены радиочастотых кабелей\" href=\"http://baltsvyas.spb.ru/prise.htm#n1\"><strong>радиочастотный</strong></a></li>\r\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены кабелей для систем видеонаблюдения\" href=\"http://baltsvyas.spb.ru/prise.htm#n5\"><strong>специальный, для систем видеонаблюдения</strong></a></li>\r\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены микрофонных и радиочастотных кабелей\" href=\"http://baltsvyas.spb.ru/prise.htm#n2\"><strong>микрофонный, радиочастотный</strong></a></li>\r\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены кабелей телефонных и для систем контроля доступа\" href=\"http://baltsvyas.spb.ru/prise.htm#n3\"><strong>телефонный, специальный для систем контроля доступа</strong></a></li>\r\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены кабелей сетевых\" href=\"http://baltsvyas.spb.ru/prise.htm#n4\"><strong>сетевой (предназначен для блоков питания) </strong></a></li>\r\n</ul>\r\n&nbsp;\r\n\r\n&nbsp;','Главная','','inherit','closed','closed','','2-revision-v1','','','2017-11-15 10:46:55','2017-11-15 07:46:55','',2,'http://127.0.0.1/?p=63',0,'revision','',0),(64,1,'2017-11-15 12:00:20','2017-11-15 09:00:20','','Новый слайдер','','publish','closed','closed','','%d0%9d%d0%be%d0%b2%d1%8b%d0%b9-%d1%81%d0%bb%d0%b0%d0%b9%d0%b4%d0%b5%d1%80-2','','','2017-11-15 12:00:36','2017-11-15 09:00:36','',0,'http://127.0.0.1/?post_type=ml-slider&#038;p=64',0,'ml-slider','',0),(65,1,'2017-11-15 12:00:32','2017-11-15 09:00:32','','Slider 64 - image','','publish','closed','closed','','slider-64-image','','','2017-11-15 12:00:36','2017-11-15 09:00:36','',0,'http://127.0.0.1/?post_type=ml-slide&#038;p=65',0,'ml-slide','',0),(66,1,'2017-11-15 12:00:32','2017-11-15 09:00:32','','Slider 64 - image','','publish','closed','closed','','slider-64-image-2','','','2017-11-15 12:00:36','2017-11-15 09:00:36','',0,'http://127.0.0.1/?post_type=ml-slide&#038;p=66',1,'ml-slide','',0),(67,1,'2017-11-15 12:00:32','2017-11-15 09:00:32','','Slider 64 - image','','publish','closed','closed','','slider-64-image-3','','','2017-11-15 12:00:36','2017-11-15 09:00:36','',0,'http://127.0.0.1/?post_type=ml-slide&#038;p=67',2,'ml-slide','',0),(68,1,'2017-11-15 12:01:07','2017-11-15 09:01:07','<h5 align=\"center\">[metaslider id=64]</h5>\r\n<h5 align=\"center\">gg[//meta//slider id=49]</h5>\r\n<h5 class=\"vidglm\" align=\"center\"><span class=\"vidgl1\">ООО \"Компания БАЛТСВЯЗЬ\"</span> <span class=\"vidgl\">занимается</span> <span class=\"vidk\"> оптовой</span> <span class=\"vidgl\">поставкой и реализацией в Северо-Западном регионе кабельной продукции.</span></h5>\r\n<h5 class=\"vidgl\" align=\"center\"><em>Изготавливаем под заказ витые шнуры из микрофонных, телефонных и других кабелей, длиной до 6,5 м. </em></h5>\r\n<p class=\"vidgl\" style=\"text-align: left;\" align=\"center\"><strong>Кабель</strong></p>\r\n\r\n<ul>\r\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены радиочастотых кабелей\" href=\"http://baltsvyas.spb.ru/prise.htm#n1\"><strong>радиочастотный</strong></a></li>\r\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены кабелей для систем видеонаблюдения\" href=\"http://baltsvyas.spb.ru/prise.htm#n5\"><strong>специальный, для систем видеонаблюдения</strong></a></li>\r\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены микрофонных и радиочастотных кабелей\" href=\"http://baltsvyas.spb.ru/prise.htm#n2\"><strong>микрофонный, радиочастотный</strong></a></li>\r\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены кабелей телефонных и для систем контроля доступа\" href=\"http://baltsvyas.spb.ru/prise.htm#n3\"><strong>телефонный, специальный для систем контроля доступа</strong></a></li>\r\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены кабелей сетевых\" href=\"http://baltsvyas.spb.ru/prise.htm#n4\"><strong>сетевой (предназначен для блоков питания) </strong></a></li>\r\n</ul>\r\n&nbsp;\r\n\r\n&nbsp;','Главная','','inherit','closed','closed','','2-revision-v1','','','2017-11-15 12:01:07','2017-11-15 09:01:07','',2,'http://127.0.0.1/?p=68',0,'revision','',0),(69,1,'2017-11-15 12:03:36','2017-11-15 09:03:36','<h5 align=\"center\">[metaslider id=49]</h5>\r\n<h5 class=\"vidglm\" align=\"center\"><span class=\"vidgl1\">ООО \"Компания БАЛТСВЯЗЬ\"</span> <span class=\"vidgl\">занимается</span> <span class=\"vidk\"> оптовой</span> <span class=\"vidgl\">поставкой и реализацией в Северо-Западном регионе кабельной продукции.</span></h5>\r\n<h5 class=\"vidgl\" align=\"center\"><em>Изготавливаем под заказ витые шнуры из микрофонных, телефонных и других кабелей, длиной до 6,5 м. </em></h5>\r\n<p class=\"vidgl\" style=\"text-align: left;\" align=\"center\"><strong>Кабель</strong></p>\r\n\r\n<ul>\r\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены радиочастотых кабелей\" href=\"http://baltsvyas.spb.ru/prise.htm#n1\"><strong>радиочастотный</strong></a></li>\r\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены кабелей для систем видеонаблюдения\" href=\"http://baltsvyas.spb.ru/prise.htm#n5\"><strong>специальный, для систем видеонаблюдения</strong></a></li>\r\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены микрофонных и радиочастотных кабелей\" href=\"http://baltsvyas.spb.ru/prise.htm#n2\"><strong>микрофонный, радиочастотный</strong></a></li>\r\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены кабелей телефонных и для систем контроля доступа\" href=\"http://baltsvyas.spb.ru/prise.htm#n3\"><strong>телефонный, специальный для систем контроля доступа</strong></a></li>\r\n 	<li class=\"vidgl\" style=\"text-align: left;\"><a class=\"menu\" title=\"марки и цены кабелей сетевых\" href=\"http://baltsvyas.spb.ru/prise.htm#n4\"><strong>сетевой (предназначен для блоков питания) </strong></a></li>\r\n</ul>\r\n&nbsp;\r\n\r\n&nbsp;','Главная','','inherit','closed','closed','','2-revision-v1','','','2017-11-15 12:03:36','2017-11-15 09:03:36','',2,'http://127.0.0.1/?p=69',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0),(15,2,0),(16,2,0),(17,2,0),(18,2,0),(35,3,0),(39,3,0),(43,3,0),(47,3,0),(53,4,0),(54,4,0),(55,4,0),(60,5,0),(60,18,0),(61,5,0),(61,19,0),(62,5,0),(62,19,0),(65,20,0),(66,20,0),(67,20,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1),(2,2,'nav_menu','',0,4),(3,3,'nav_menu','',0,4),(4,4,'ml-slider','',0,3),(5,5,'product_type','',0,3),(6,6,'product_type','',0,0),(7,7,'product_type','',0,0),(8,8,'product_type','',0,0),(9,9,'product_visibility','',0,0),(10,10,'product_visibility','',0,0),(11,11,'product_visibility','',0,0),(12,12,'product_visibility','',0,0),(13,13,'product_visibility','',0,0),(14,14,'product_visibility','',0,0),(15,15,'product_visibility','',0,0),(16,16,'product_visibility','',0,0),(17,17,'product_visibility','',0,0),(18,18,'product_cat','',0,1),(19,19,'product_cat','',0,2),(20,20,'ml-slider','',0,3);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
INSERT INTO `wp_termmeta` VALUES (1,18,'order','0'),(2,18,'display_type','products'),(3,18,'thumbnail_id','0'),(4,19,'order','0'),(5,19,'display_type',''),(6,19,'thumbnail_id','0'),(7,18,'product_count_product_cat','1'),(8,19,'product_count_product_cat','2');
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Без рубрики','%d0%91%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8',0),(2,'Главное','%d0%93%d0%bb%d0%b0%d0%b2%d0%bd%d0%be%d0%b5',0),(3,'Кабели','%d0%9a%d0%b0%d0%b1%d0%b5%d0%bb%d0%b8',0),(4,'49','49',0),(5,'simple','simple',0),(6,'grouped','grouped',0),(7,'variable','variable',0),(8,'external','external',0),(9,'exclude-from-search','exclude-from-search',0),(10,'exclude-from-catalog','exclude-from-catalog',0),(11,'featured','featured',0),(12,'outofstock','outofstock',0),(13,'rated-1','rated-1',0),(14,'rated-2','rated-2',0),(15,'rated-3','rated-3',0),(16,'rated-4','rated-4',0),(17,'rated-5','rated-5',0),(18,'Категория 1','%d0%9a%d0%b0%d1%82%d0%b5%d0%b3%d0%be%d1%80%d0%b8%d1%8f-1',0),(19,'Категория 2','%d0%9a%d0%b0%d1%82%d0%b5%d0%b3%d0%be%d1%80%d0%b8%d1%8f-2',0),(20,'64','64',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','user'),(2,1,'first_name',''),(3,1,'last_name',''),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'comment_shortcuts','false'),(7,1,'admin_color','fresh'),(8,1,'use_ssl','0'),(9,1,'show_admin_bar_front','true'),(10,1,'locale',''),(11,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(12,1,'wp_user_level','10'),(13,1,'dismissed_wp_pointers',''),(14,1,'show_welcome_panel','1'),(16,1,'wp_dashboard_quick_press_last_post_id','57'),(17,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),(18,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),(19,1,'metaboxhidden_nav-menus','a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),(20,1,'nav_menu_recently_edited','2'),(21,1,'wp_user-settings','editor=tinymce&libraryContent=browse'),(22,1,'wp_user-settings-time','1510154708'),(23,1,'_woocommerce_persistent_cart_1','a:1:{s:4:\"cart\";a:0:{}}'),(24,1,'session_tokens','a:3:{s:64:\"fb9409802f56ee5ca63966f8084c2ebc843e0b4e8c053b1d34e849966be47161\";a:4:{s:10:\"expiration\";i:1510904488;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:56.0) Gecko/20100101 Firefox/56.0\";s:5:\"login\";i:1510731688;}s:64:\"480d0ca4aa57340f5a62c4c96bf0913eddc97259b21c4fd13f680d33542c4956\";a:4:{s:10:\"expiration\";i:1510904666;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:56.0) Gecko/20100101 Firefox/56.0\";s:5:\"login\";i:1510731866;}s:64:\"0d186c90aaa0d02e952f556773f7011a8a339084a6fdfb5c5516383fbc8d794c\";a:4:{s:10:\"expiration\";i:1510907436;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:56.0) Gecko/20100101 Firefox/56.0\";s:5:\"login\";i:1510734636;}}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'user','$P$B39Bgdk2DEl0PLDJXgXPa/KkIm2no41','user','libertychoice@mail.ru','','2017-11-01 15:22:17','',0,'user');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_api_keys`
--

DROP TABLE IF EXISTS `wp_woocommerce_api_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  KEY `consumer_key` (`consumer_key`),
  KEY `consumer_secret` (`consumer_secret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_api_keys`
--

LOCK TABLES `wp_woocommerce_api_keys` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_api_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_api_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

DROP TABLE IF EXISTS `wp_woocommerce_attribute_taxonomies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_attribute_taxonomies`
--

LOCK TABLES `wp_woocommerce_attribute_taxonomies` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_attribute_taxonomies` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_attribute_taxonomies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

DROP TABLE IF EXISTS `wp_woocommerce_downloadable_product_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `download_id` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_downloadable_product_permissions`
--

LOCK TABLES `wp_woocommerce_downloadable_product_permissions` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_downloadable_product_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_downloadable_product_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_log`
--

DROP TABLE IF EXISTS `wp_woocommerce_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`log_id`),
  KEY `level` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_log`
--

LOCK TABLES `wp_woocommerce_log` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

DROP TABLE IF EXISTS `wp_woocommerce_order_itemmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_order_itemmeta`
--

LOCK TABLES `wp_woocommerce_order_itemmeta` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_order_itemmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_order_itemmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_order_items`
--

DROP TABLE IF EXISTS `wp_woocommerce_order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_order_items`
--

LOCK TABLES `wp_woocommerce_order_items` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_order_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokenmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `payment_token_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `payment_token_id` (`payment_token_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_payment_tokenmeta`
--

LOCK TABLES `wp_woocommerce_payment_tokenmeta` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokenmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokenmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`token_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_payment_tokens`
--

LOCK TABLES `wp_woocommerce_payment_tokens` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_sessions`
--

DROP TABLE IF EXISTS `wp_woocommerce_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`session_key`),
  UNIQUE KEY `session_id` (`session_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

LOCK TABLES `wp_woocommerce_sessions` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_sessions` DISABLE KEYS */;
INSERT INTO `wp_woocommerce_sessions` VALUES (4,'1','a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:671:\"a:25:{s:2:\"id\";i:1;s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"RU\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"RU\";s:13:\"is_vat_exempt\";b:0;s:19:\"calculated_shipping\";b:0;s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:21:\"libertychoice@mail.ru\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}',1510904490);
/*!40000 ALTER TABLE `wp_woocommerce_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_id` bigint(20) unsigned NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `location_id` (`location_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_locations`
--

LOCK TABLES `wp_woocommerce_shipping_zone_locations` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) unsigned NOT NULL,
  `instance_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) unsigned NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_methods`
--

LOCK TABLES `wp_woocommerce_shipping_zone_methods` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_methods` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_shipping_zones`
--

LOCK TABLES `wp_woocommerce_shipping_zones` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zones` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

DROP TABLE IF EXISTS `wp_woocommerce_tax_rate_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_tax_rate_locations`
--

LOCK TABLES `wp_woocommerce_tax_rate_locations` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rate_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rate_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

DROP TABLE IF EXISTS `wp_woocommerce_tax_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) unsigned NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) unsigned NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`),
  KEY `tax_rate_state` (`tax_rate_state`(2)),
  KEY `tax_rate_class` (`tax_rate_class`(10)),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_tax_rates`
--

LOCK TABLES `wp_woocommerce_tax_rates` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rates` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rates` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-15 16:47:47
