/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.6.15 : Database - springsecuritytest
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springsecuritytest` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `springsecuritytest`;

/*Table structure for table `authorities` */

DROP TABLE IF EXISTS `authorities`;

CREATE TABLE `authorities` (
  `USERNAME` varchar(45) NOT NULL,
  `AUTHORITY` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`USERNAME`),
  CONSTRAINT `AUTHORITIES_ibfk_1` FOREIGN KEY (`USERNAME`) REFERENCES `users` (`USERNAME`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `authorities` */

insert  into `authorities`(`USERNAME`,`AUTHORITY`) values ('admin','ROLE_ADMIN'),('danang','ROLE_ADMIN'),('member','ROLE_MEMBER');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `USERNAME` varchar(45) NOT NULL,
  `PASSWORD` varchar(45) DEFAULT NULL,
  `ENABLED` enum('true','false') DEFAULT 'true',
  PRIMARY KEY (`USERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`USERNAME`,`PASSWORD`,`ENABLED`) values ('admin','admin','true'),('danang','123','true'),('member','member','true');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
