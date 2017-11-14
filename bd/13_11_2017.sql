DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `files` (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  name varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  path varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  created datetime NOT NULL,
  modified datetime NOT NULL,
  status tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 = Active, 0 = Inactive'
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


CREATE TABLE users (
	id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	username VARCHAR(50) NOT NULL,
	password VARCHAR(255) NOT NULL,
	role VARCHAR(20) NOT NULL,
	image INT UNSIGNED NOT NULL,
	created DATETIME DEFAULT NULL,
	modified DATETIME DEFAULT NULL,
	KEY `user_image` (`image`),
    CONSTRAINT `user_image` FOREIGN KEY (`image`) REFERENCES `files` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);