# Host: localhost  (Version 5.5.5-10.4.14-MariaDB)
# Date: 2020-12-01 15:15:48
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "answers"
#

DROP TABLE IF EXISTS `answers`;
CREATE TABLE `answers` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `answer` tinytext DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "answers"
#

INSERT INTO `answers` VALUES (1,'Esta é uma pergunta',2,1,'2020-12-01 19:10:56','2020-12-01 19:10:56',NULL);

#
# Structure for table "questions"
#

DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `question` tinytext DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Data for table "questions"
#

INSERT INTO `questions` VALUES (1,NULL,1,'2020-12-01 19:04:14','2020-12-01 19:04:14',NULL),(2,'Você realmente é um programador?',1,'2020-12-01 19:05:12','2020-12-01 19:05:12',NULL),(3,'Você realmente é um programador?',1,'2020-12-01 19:08:27','2020-12-01 19:08:27',NULL);

#
# Structure for table "upvotes"
#

DROP TABLE IF EXISTS `upvotes`;
CREATE TABLE `upvotes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `answer_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "upvotes"
#


#
# Structure for table "users"
#

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

#
# Data for table "users"
#

INSERT INTO `users` VALUES (1,'patrick','patrick@example.com',NULL,'2020-11-30 17:34:36','2020-11-30 17:34:36',NULL),(2,'patrick','patrick@example.com','patrick_pass','2020-11-30 17:35:53','2020-11-30 17:35:53',NULL),(3,'patrick','patrick@example.com','patrick_pass','2020-11-30 17:36:57','2020-11-30 17:36:57',NULL),(4,'patrick','patrick@example.com','patrick_pass','2020-11-30 17:36:58','2020-11-30 17:36:58',NULL),(5,'patrick','patrick@example.com','patrick_pass','2020-11-30 17:36:58','2020-11-30 17:36:58',NULL),(6,'patrick','patrick@example.com','patrick_pass','2020-11-30 17:36:59','2020-11-30 17:36:59',NULL),(7,'patrick','patrick@example.com','patrick_pass','2020-11-30 17:37:00','2020-11-30 17:37:00',NULL);
