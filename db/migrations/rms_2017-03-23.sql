# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.13-log)
# Database: rms
# Generation Time: 2017-03-23 15:44:22 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table acl_permission_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `acl_permission_groups`;

CREATE TABLE `acl_permission_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `acl_permission_groups` WRITE;
/*!40000 ALTER TABLE `acl_permission_groups` DISABLE KEYS */;

INSERT INTO `acl_permission_groups` (`id`, `name`)
VALUES
	(1,'Quản lý đại lý'),
	(2,' 	Quản lý mặt hàng'),
	(3,'Quản lý kho'),
	(4,'Quản lý báo cáo'),
	(6,'Quản lý đơn hàng'),
	(7,'Quản lý bán hàng'),
	(8,'Quản lý chính sách chiết khấu'),
	(9,'Hệ thống cửa hàng'),
	(10,'Bảo vệ giá & hàng tồn kho'),
	(11,'Báo cáo thống kê'),
	(12,'Thông báo');

/*!40000 ALTER TABLE `acl_permission_groups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table acl_permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `acl_permissions`;

CREATE TABLE `acl_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ident` varchar(255) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `acl_permissions` WRITE;
/*!40000 ALTER TABLE `acl_permissions` DISABLE KEYS */;

INSERT INTO `acl_permissions` (`id`, `ident`, `title`, `group_id`)
VALUES
	(6,'QLDH-XDSDH','Xem danh sách đơn hàng ',6),
	(7,'QLDH-TDH','Tạo đơn hàng ',6),
	(8,'QLDH-HDTH',' Huỷ/đổi trả hàng ',6),
	(9,'QLK-CNSTOCK','Cập nhật stock ',3),
	(10,'QLK-XTK','Xem tồn kho ',3),
	(11,'QLBH-XDSSPB','Xem danh sách sản phẩm bán ',7),
	(12,'QLBH-EXPORT',' Export',7),
	(13,'QLCK-XTTCK','Xem thông tin chiết khấu ',8),
	(14,'BVGHTK-XTTCX','Xem thông tin chính xác',10),
	(15,'HTCH-XDSCH','Xem danh sách cửa hàng',9),
	(16,'HTCH-CNHTCH',' Cập nhật hệ thống cửa hàng ',9),
	(17,'BCTK-XBCTK','Xem báo cáo thống kê ',11),
	(18,'BCTK-EXPORT','Export',11);

/*!40000 ALTER TABLE `acl_permissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table acl_role_permission
# ------------------------------------------------------------

DROP TABLE IF EXISTS `acl_role_permission`;

CREATE TABLE `acl_role_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table acl_roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `acl_roles`;

CREATE TABLE `acl_roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `agency_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table acl_user_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `acl_user_role`;

CREATE TABLE `acl_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table activity
# ------------------------------------------------------------

DROP TABLE IF EXISTS `activity`;

CREATE TABLE `activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `content` text,
  `attachment` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `request_id` int(11) DEFAULT NULL,
  `booking_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `proposal_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `activity` WRITE;
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;

INSERT INTO `activity` (`id`, `user_id`, `project_id`, `content`, `attachment`, `created_at`, `updated_at`, `request_id`, `booking_id`, `employee_id`, `proposal_id`)
VALUES
	(1,25,1,'  created new an project Project 1',NULL,'2017-02-19 10:58:51','2017-02-19 10:58:51',NULL,NULL,NULL,NULL),
	(2,25,1,'  created new request resource on Project 1 project',NULL,'2017-02-19 10:59:05','2017-02-19 10:59:05',1,NULL,NULL,NULL),
	(3,24,1,'Thieu Le Quang proposal Quynh Diep Lan role Product Owner',NULL,'2017-02-19 10:59:21','2017-02-19 10:59:21',NULL,NULL,777,1),
	(4,24,1,'Thieu Le Quang proposal Anh Nguyen Thien role Product Owner',NULL,'2017-02-19 10:59:21','2017-02-19 10:59:21',NULL,NULL,776,2),
	(5,25,1,'Phu Ha add Anh Nguyen Thien role Product Owner',NULL,'2017-02-19 11:00:36','2017-02-19 11:00:36',NULL,NULL,776,NULL),
	(6,24,1,'Thieu Le Quang proposal Thanh Luu Truong role Product Owner',NULL,'2017-02-19 11:02:40','2017-02-19 11:02:40',NULL,NULL,774,3),
	(7,24,1,'Thieu Le Quang proposal Quynh Diep Lan role Product Owner',NULL,'2017-02-20 06:51:00','2017-02-20 06:51:00',NULL,NULL,777,4),
	(8,24,1,'Thieu Le Quang proposal Tuan Truong Minh Anh role Product Owner',NULL,'2017-02-20 06:51:00','2017-02-20 06:51:00',NULL,NULL,772,5);

/*!40000 ALTER TABLE `activity` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table employee
# ------------------------------------------------------------

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `skills` text,
  `introduction_short` text,
  `address` text,
  `join_date` date DEFAULT NULL,
  `sex` tinyint(4) DEFAULT NULL,
  `brithday` date DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `marital_status` tinyint(4) DEFAULT NULL,
  `office_id` int(11) DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `position_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `cv_file` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `github` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;

INSERT INTO `employee` (`id`, `code`, `last_name`, `first_name`, `full_name`, `email`, `phone`, `avatar`, `skills`, `introduction_short`, `address`, `join_date`, `sex`, `brithday`, `user_id`, `marital_status`, `office_id`, `manager_id`, `position_id`, `role_id`, `updated_at`, `created_at`, `cv_file`, `facebook`, `linkedin`, `github`)
VALUES
	(528,'SD0104','Ngo Gia Bao','Oai',NULL,NULL,NULL,NULL,'VB',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:44','2016-12-14 16:16:44',NULL,NULL,NULL,'https://github.com/thieule'),
	(529,'SD0108','Nguyen Thi Thanh ','Ha',NULL,NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:44','2016-12-14 16:16:44',NULL,NULL,NULL,'https://github.com/thieule'),
	(530,'SD0110','Doan Thi Ngoc','Hoa',NULL,NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:44','2016-12-14 16:16:44',NULL,NULL,NULL,'https://github.com/thieule'),
	(531,'SD0309','Cao Thanh','Tuan','Cao Thanh Tu_n',NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:44','2016-12-14 16:16:44',NULL,NULL,NULL,'https://github.com/thieule'),
	(532,'SD0114','Mai Hoang','Thang',NULL,NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:44','2016-12-14 16:16:44',NULL,NULL,NULL,'https://github.com/thieule'),
	(533,'SD0116','To Gia','Phuong',NULL,NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:44','2016-12-14 16:16:44',NULL,NULL,NULL,'https://github.com/thieule'),
	(534,'SD0115','Luong Thi Kim','Hanh','L__ng Th_ Kim H_nh',NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:44','2016-12-14 16:16:44',NULL,NULL,NULL,'https://github.com/thieule'),
	(535,'SD0118','Do Thi Thu','Huong','__ Th_ Thu H__ng',NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:44','2016-12-14 16:16:44',NULL,NULL,NULL,'https://github.com/thieule'),
	(536,'SD0122','Dang Minh','Hai','__ng Minh H_i',NULL,NULL,NULL,'VB',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:44','2016-12-14 16:16:44',NULL,NULL,NULL,'https://github.com/thieule'),
	(537,'SD0123','Phan Thi ','Dieu','Phan Th_ Di_u',NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:44','2016-12-14 16:16:44',NULL,NULL,NULL,'https://github.com/thieule'),
	(538,'SD0124','Nguyen Thi Minh','Khan','Nguy_n Th_ Minh Kh_n',NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:44','2016-12-14 16:16:44',NULL,NULL,NULL,'https://github.com/thieule'),
	(539,'SD0127','Pham Thi Ngoc ','Thuy',NULL,NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:44','2016-12-14 16:16:44',NULL,NULL,NULL,'https://github.com/thieule'),
	(540,'SD0315','Phan Thi Yen','Nhu','Phan Th_ Y_n Nh_',NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:44','2016-12-14 16:16:44',NULL,NULL,NULL,'https://github.com/thieule'),
	(541,'SD0038','Ngo Thi Hoang','Lan',NULL,NULL,NULL,NULL,'QC NT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:44','2016-12-14 16:16:44',NULL,NULL,NULL,'https://github.com/thieule'),
	(542,'SD0037','Dinh Le','Duc',NULL,NULL,NULL,NULL,'C++',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:44','2016-12-14 16:16:44',NULL,NULL,NULL,'https://github.com/thieule'),
	(543,'SD0041','Nguyen Quoc','Huy','Nguy_n Qu_c Huy',NULL,NULL,NULL,'C++',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:44','2016-12-14 16:16:44',NULL,NULL,NULL,'https://github.com/thieule'),
	(544,'SD0042','Nguyen Dinh','Thanh',NULL,NULL,NULL,NULL,'QC NT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:44','2016-12-14 16:16:44',NULL,NULL,NULL,'https://github.com/thieule'),
	(545,'SD0043','Nguyen Phuoc','An',NULL,NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:44','2016-12-14 16:16:44',NULL,NULL,NULL,'https://github.com/thieule'),
	(546,'SD0045','Doan Xuan','Cuong',NULL,NULL,NULL,NULL,'C++',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:44','2016-12-14 16:16:44',NULL,NULL,NULL,'https://github.com/thieule'),
	(547,'SD0047','Huynh Tan','Hien','Hu_nh T_n Hi_n',NULL,NULL,NULL,'C++',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:44','2016-12-14 16:16:44',NULL,NULL,NULL,'https://github.com/thieule'),
	(548,'SD0049','Nguyen Thi Phi','Yen','Nguy_n Th_ Phi Y_n',NULL,NULL,NULL,'C++',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:44','2016-12-14 16:16:44',NULL,NULL,NULL,'https://github.com/thieule'),
	(549,'SD0050','Pham Thi','Lanh',NULL,NULL,NULL,NULL,'C++',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:44','2016-12-14 16:16:44',NULL,NULL,NULL,'https://github.com/thieule'),
	(550,'SD0051','Nguyen The','Vu','Nguy_n Th_ V_',NULL,NULL,NULL,'Mobile',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:44','2016-12-14 16:16:44',NULL,NULL,NULL,'https://github.com/thieule'),
	(551,'SD0052','Le Hoang Vinh','Phuc',NULL,NULL,NULL,NULL,'QC NT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:44','2016-12-14 16:16:44',NULL,NULL,NULL,'https://github.com/thieule'),
	(552,'SD0053','Nguyen Dinh','Chinh',NULL,NULL,NULL,NULL,'QC NT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:44','2016-12-14 16:16:44',NULL,NULL,NULL,'https://github.com/thieule'),
	(553,'SD0054','Le Kim','Ngoc',NULL,NULL,NULL,NULL,'C++',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:44','2016-12-14 16:16:44',NULL,NULL,NULL,'https://github.com/thieule'),
	(554,'SD0056','Nguyen Ba','Tinh',NULL,NULL,NULL,NULL,'QC NT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:44','2016-12-14 16:16:44',NULL,NULL,NULL,'https://github.com/thieule'),
	(555,'SD0060','Le Van','Khanh',NULL,NULL,NULL,NULL,'C++',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:44','2016-12-14 16:16:44',NULL,NULL,NULL,'https://github.com/thieule'),
	(556,'SD0058','Le Thanh','Hai',NULL,NULL,NULL,NULL,'QC NT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:44','2016-12-14 16:16:44',NULL,NULL,NULL,'https://github.com/thieule'),
	(557,'SD0062','Pham Thanh','Lich','Ph_m Thanh L_ch',NULL,NULL,NULL,'QC NT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:44','2016-12-14 16:16:44',NULL,NULL,NULL,'https://github.com/thieule'),
	(558,'SD0063','Trinh Minh','Hien','Tr_nh Minh Hi_n',NULL,NULL,NULL,'QC NT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:44','2016-12-14 16:16:44',NULL,NULL,NULL,'https://github.com/thieule'),
	(559,'SD0132','Do Tien','Dung','__ Ti_n D_ng',NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:44','2016-12-14 16:16:44',NULL,NULL,NULL,'https://github.com/thieule'),
	(560,'SD0136','Van Quoc ','Khanh',NULL,NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:44','2016-12-14 16:16:44',NULL,NULL,NULL,'https://github.com/thieule'),
	(561,'SD0065','Bui Thanh','Huy',NULL,NULL,NULL,NULL,'C++',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:44','2016-12-14 16:16:44',NULL,NULL,NULL,'https://github.com/thieule'),
	(562,'SD0138','Pham Minh','Tam',NULL,NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:44','2016-12-14 16:16:44',NULL,NULL,NULL,'https://github.com/thieule'),
	(563,'SD0066','Nguyen Thi Bao','Khanh',NULL,NULL,NULL,NULL,'QC NT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:44','2016-12-14 16:16:44',NULL,NULL,NULL,'https://github.com/thieule'),
	(564,'SD0142','Cao Minh','Quan',NULL,NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:44','2016-12-14 16:16:44',NULL,NULL,NULL,'https://github.com/thieule'),
	(565,'SD0067','Nguyen Thi Thu','Ngan',NULL,NULL,NULL,NULL,'QC NT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:44','2016-12-14 16:16:44',NULL,NULL,NULL,'https://github.com/thieule'),
	(566,'SD0144','Vu Dinh','Phong ',NULL,NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:44','2016-12-14 16:16:44',NULL,NULL,NULL,'https://github.com/thieule'),
	(567,'SD0145','Nguyen Ngoc Lam','Anh','Nguy_n Ng_c Lam Anh',NULL,NULL,NULL,'PHP',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:44','2016-12-14 16:16:44',NULL,NULL,NULL,'https://github.com/thieule'),
	(568,'SD0068','Dang Nguyen Kim','Anh','__ng Nguy_n Kim Anh',NULL,NULL,NULL,'C++',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:44','2016-12-14 16:16:44',NULL,NULL,NULL,'https://github.com/thieule'),
	(569,'SD0069','Nguyen Khanh','Trinh',NULL,NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:44','2016-12-14 16:16:44',NULL,NULL,NULL,'https://github.com/thieule'),
	(570,'SD0151','Nguyen Thi Thu','Hien','Nguy_n Th_ Thu Hi_n ',NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:44','2016-12-14 16:16:44',NULL,NULL,NULL,'https://github.com/thieule'),
	(571,'SD0153','Nguyen Hue','Nghi','Nguy_n Hu_ Nghi',NULL,NULL,NULL,'DBA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(572,'SD0071','Pham Tan','Khoa','Ph_m T_n Khoa',NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(573,'SD0323','Le Thi My ','Linh',NULL,NULL,NULL,NULL,'Front-End',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(574,'SD0324','Nguyen Thi Nguyet ','Kieu','Nguy_n Th_ Nguy_t Ki_u',NULL,NULL,NULL,'Front-End',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(575,'SD0328','Luong Quy ','Quang','L__ng Qu_ Quang',NULL,NULL,NULL,'PHP',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(576,'SD0158','Huynh Chi ','Nhan',NULL,NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(577,'SD0162','Vo Minh','Trong',NULL,NULL,NULL,NULL,'PHP',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(578,'SD0329','Le Thi Kim ','Thuy',NULL,NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(579,'SD0159','Huynh Minh','Man','Hu_nh Minh M_n',NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(580,'SD0330','Le Thi Lan','Anh',NULL,NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(581,'SD0166','Truong Thanh ','Hai','Tr__ng Thanh H_i',NULL,NULL,NULL,'Front-End',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(582,'SD0167','Nguyen Chi','Thanh',NULL,NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(583,'SD0169','Huynh Phat','Loc',NULL,NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(584,'SD0332','Tran Quoc','Tuan','Tr_n Qu_c Tu_n',NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(585,'SD0172','Nguyen Hoang','Quang',NULL,NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(586,'SD0334','Nguyen Hoang','Oanh',NULL,NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(587,'SD0181','Nguyen Thi Phuong','Thi','Nguy_n Th_ Ph__ng Thi',NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(588,'SD0179','Tran Hoang','Son',NULL,NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(589,'SD0176','Lam Thanh','Bong',NULL,NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(590,'SD0178','Nguyen Cong','Khanh',NULL,NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(591,'SD0074','Le Binh Duy','Tho',NULL,NULL,NULL,NULL,'Java',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(592,'SD0187','Nguyen Quang ','Phuong','Nguy_n Quang Ph__ng',NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(593,'SD0338','Nguyen Thi My ','Dung','Nguy_n Th_ M_ Dung',NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(594,'SD0186','Tran Quoc ','Cuong','Tr_n Qu_c C__ng',NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(595,'SD0188','Hong Gia ','Cuong','H_ng Gia C__ng',NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(596,'SD0339','Nguyen Minh ','Khoa','Nguy_n Minh Khoa',NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(597,'SD0191','Tran Thanh','Tu',NULL,NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(598,'SD0193','Nguyen Thi Thu ','Hong','Nguy_n Th_ Thu H_ng',NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(599,'SD0075','Nguyen Tran Quang','Hieu','Nguy_n Tr_n Quang Hi_u',NULL,NULL,NULL,'C++',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(600,'SD0343','Le Thanh','Hien',NULL,NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(601,'SD0344','Nguyen Thi Cam','Thi','Nguy_n Th_ C_m Thi',NULL,NULL,NULL,'Java',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(602,'SD0197','Dang Ho Dang','Khoa','__ng H_ __ng Khoa',NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(603,'SD0198','Lu The ','Hung',NULL,NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(604,'SD0196','Cu Trinh Hoang','Chinh',NULL,NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(605,'SD0201','Le Ngoc Hoang','Minh',NULL,NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(606,'SD0202','Phan Hoang','Anh',NULL,NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(607,'SD0208','Le Thi Que','Lam',NULL,NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(608,'SD0346','Vu Nguyen Van ','Khanh',NULL,NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(609,'SD0345','Lam Thi','Hao',NULL,NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(610,'SD0205','Vu Thai ','Anh',NULL,NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(611,'SD0204','Vo Thanh','Phong ',NULL,NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(612,'SD0209','Tran Hoang','Trung',NULL,NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(613,'SD0349','Nguyen Hoang','Doanh',NULL,NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(614,'SD0076','Pham Thanh','Vinh',NULL,NULL,NULL,NULL,'QC NT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(615,'SD0352','Nguyen Quynh ','Mai','Nguy_n Qu_nh Mai',NULL,NULL,NULL,'Front-End',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(616,'SD0214','Tran Nhu ','Phuong','Tr_n Nh_ Ph__ng',NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(617,'SD0215','Le Thi Bich','Lieu',NULL,NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(618,'SD0216','Ngo Anh','Tuan',NULL,NULL,NULL,NULL,'Java',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(619,'SD0217','Nguyen Xuan Bao','Khanh',NULL,NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(620,'SD0354','Nguyen Phuong Hong ','Chau',NULL,NULL,NULL,NULL,'Java',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(621,'SD0220','Bui Huu ','Tuu',NULL,NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(622,'SD0385','Nguyen Hoang','Vinh',NULL,NULL,NULL,NULL,'Java',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(623,'SD0379','Tran Bao','Toan',NULL,NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(624,'SD0395','Tran Huu','Tai',NULL,NULL,NULL,NULL,'Java',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(625,'SD0375','Hoang Mai','Phuong',NULL,NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(626,'SD0409','Phan Quang ','Nhan',NULL,NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(627,'SD0374','Vu Hong','Nam','V_ H_ng Nam',NULL,NULL,NULL,'Java',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(628,'SD0401','Nguyen Thi','Loan','Nguy_n Th_ Loan',NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(629,'SD0389','Nguyen Thi Phuong','Lien',NULL,NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(630,'SD0380','Tran The','Hien','Tr_n Th_ Hi_n',NULL,NULL,NULL,'DBA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(631,'SD0399','Duong Thi','Chinh',NULL,NULL,NULL,NULL,'Java',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(632,'SD0222','Nguyen Van','Bao','Nguy_n V_n B_o',NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(633,'SD0227','Nguyen Ngoc','Thien','Nguy_n Ng_c Thi_n',NULL,NULL,NULL,'UI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(634,'SD0231','Pham Nguyen Hong ','Thanh','Ph_m Nguy_n H_ng Thanh',NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(635,'SD0233','Tran Thi Ngoc','Ha',NULL,NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(636,'SD0358','Do Minh ','Dung','__ Minh D_ng',NULL,NULL,NULL,'Front-End',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(637,'SD0360','Nguyen Dinh','Van',NULL,NULL,NULL,NULL,'Front-End',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(638,'SD0359','Nguyen Minh ','Tuan','Nguy_n Minh Tu_n',NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(639,'SD0234','Tran To','Tran ',NULL,NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(640,'SD0236','Nguyen Thi','Ngoc','Nguy_n Th_ Ng_c',NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(641,'SD0237','Vu Minh Khanh','Loc',NULL,NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(642,'SD0242','Trinh Le Hoang Duy','Tan',NULL,NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(643,'SD0241','Doan Nam','Hai',NULL,NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(644,'SD0079','Pham Quang ','Vinh','Ph_m Quang Vinh',NULL,NULL,NULL,'C++',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(645,'SD0362','Nguyen Anh','Khoa','Nguy_n Anh Khoa',NULL,NULL,NULL,'DBA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(646,'SD0244','Le Tan','Nghia',NULL,NULL,NULL,NULL,'Front-End',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(647,'SD0246','Nguyen Van','Hieu 1','Nguy_n V_n Hi_u 1',NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(648,'SD0080','Le Minh','Viet',NULL,NULL,NULL,NULL,'C++',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(649,'SD0247','Huynh Quang','Dieu','Hu_nh Quang Di_u',NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(650,'SD0249','Tran Tho','Cuong','Tr_n Th_ C__ng',NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(651,'SD0250','Vo Quang ','Truong',NULL,NULL,NULL,NULL,'PHP',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(652,'SD0364','Dinh Duy','Linh','_inh Duy Linh',NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(653,'SD0256','Pham Thi My','Kieu','Ph_m Th_ M_ Ki_u',NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(654,'SD0251','Nguyen Anh','Dao',NULL,NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(655,'SD0365','Huynh Thi Ngoc','Tuyet','Hu_nh Th_ Ng_c Tuy_t',NULL,NULL,NULL,'DBA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(656,'SD0258','Tran Thi Thanh','Suong','Tr_n Th_ Thanh S__ng',NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(657,'SD0257','La Ngoc ','Hoa',NULL,NULL,NULL,NULL,'PHP',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(658,'SD0366','Vo Ngoc','Phuong',NULL,NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(659,'SD0263','Nguyen Hai','Son','Nguy_n H_i S_n',NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(660,'SD0262','Hoang Van','Nam',NULL,NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(661,'SD0083','Pham Tuan ','Anh 2','Ph_m Tu_n Anh',NULL,NULL,NULL,'C++',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(662,'SD0084','Nguyen Thi Ngoc ','Tram',NULL,NULL,NULL,NULL,'C++',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(663,'SD0085','Nguyen Canh','Hat','Nguy_n C_nh H_t',NULL,NULL,NULL,'C++',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(664,'SD0086','Le Thanh','Tam 2',NULL,NULL,NULL,NULL,'C++',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(665,'SD0273','Pham Thi Tra','My',NULL,NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(666,'SD0091','Le Nguyen Hoai','Thu',NULL,NULL,NULL,NULL,'C++',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(667,'SD0093','Nguyen Xuan  ','Vinh',NULL,NULL,NULL,NULL,'C++',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(668,'SD0281','Huynh Duy','Quang','Hu_nh Duy Quang',NULL,NULL,NULL,'DBA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(669,'SD0097','Ton That Nam','Tran',NULL,NULL,NULL,NULL,'Support Analyst',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(670,'SD0417','Nguyen Thi Cam','Nhung','Nguy_n Th_ C_m Nhung',NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(671,'SD0429','Nguyen Thi Thanh','Huyen','Nguy_n Th_ Thanh Huy_n',NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(672,'SD0430','Nguyen Quang ','Phuoc','Nguy_n Quang Ph__c',NULL,NULL,NULL,'PHP',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(673,'SD0424','Nguyen Xuan','Duy',NULL,NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(674,'SD0440','Dang The ','Phu',NULL,NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(675,'SD0446','Nguyen Thanh ','Tung',NULL,NULL,NULL,NULL,'Java',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(676,'SD0450','Ngo Anh ','Duong',NULL,NULL,NULL,NULL,'Mobile',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(677,'SD0457','Diep','Tu',NULL,NULL,NULL,NULL,'PHP',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(678,'SD0458','Dang Anh ','Toan',NULL,NULL,NULL,NULL,'DBA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(679,'SD0472','Mohamed Aly ','Pasha','Mohamed Aly Pasha',NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(680,'SD0471','Nguyen Anh','Kiet','Nguy_n Anh Ki_t -QC',NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(681,'SD0477','Doan Van','An',NULL,NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(682,'SD0479','Dam Chi ','Thoai',NULL,NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(683,'SD0485','Nguyen Phuoc','Duy','Nguy_n Ph__c Duy',NULL,NULL,NULL,'Front-End',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(684,'SD0489','Tran Tuong','Van',NULL,NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(685,'SD0490','Doan Tien','Minh',NULL,NULL,NULL,NULL,'QC NT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(686,'SD0512','Luong Dai Quoc','Nam','L__ng __i Qu_c Nam',NULL,NULL,NULL,'Front-End',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(687,'SD0513','Pham Do Duc','Anh','Ph_m __ __c Anh',NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(688,'SD0516','Nguyen Thi Thuy','Loan',NULL,NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(689,'SD0507','Ho Thi Thanh','Truc',NULL,NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(690,'SD0506','Nguyen Thi Minh ','Thu','Nguy_n Th_ Minh Th_',NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(691,'SD0528','Trang Thanh','Loc','Trang Thanh L_c',NULL,NULL,NULL,'DBA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(692,'SD0501','Nguyen Tuan','Hai','Nguy_n Tu_n H_i',NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(693,'SD0534','Le Quang','Thieu Update',NULL,NULL,NULL,',?PHP',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,3,1,1,6,'2016-12-19 17:47:26',NULL,'693_cv_file_2016-12-19-05-47-26.docx',NULL,NULL,'https://github.com/thieule'),
	(694,'SD0547','Pham Thi Tuyet','Trinh','Ph_m Th_ Tuy_t Trinh',NULL,NULL,NULL,'Mobile',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(695,'SD0549','Phan Huy','Thanh',NULL,NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(696,'SD0545','Nguyen Tuong','Duy','Nguy_n T__ng Duy',NULL,NULL,NULL,'Front-End',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(697,'SD0562','Lam Dao','Vinh',NULL,NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(698,'SD0564','Nguyen Ngoc Phuong','Thao','Nguy_n Ng_c Ph__ng Th_o',NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(699,'SD0566','Nguyen Thanh','Son',NULL,NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(700,'SD0569','Nguyen Minh ','Khoa','Nguy_n Minh Khoa 2',NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(701,'SD0568','Vu Ngoc','Hai','V_ Ng_c H_i',NULL,NULL,NULL,'Mobile',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(702,'SD0565','Nguyen Thanh','Danh','Nguy_n Thanh Danh',NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(703,'SD0578','Vo Manh ','Tuan',NULL,NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(704,'SD0571','Nong Thi Anh','Thu',NULL,NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(705,'SD0572','Tai Dai Che','Phuong',NULL,NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(706,'SD0588','Ngo Quang','Vu',NULL,NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(707,'SD0584','Hoang Quoc','Viet',NULL,NULL,NULL,NULL,'PHP',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(708,'SD0585','Tran Ngoc','Thuy','Tr_n Ng_c Th_y',NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(709,'SD0586','Nguyen Minh ','Hoang',NULL,NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(710,'SD0576','Pham Thi Thuy','Huong',NULL,NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(711,'SD0583','Phan Tan Quang','Nam','Phan T_n Quang Nam',NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(712,'SD0581','Pham Tran Trong','Minh','Ph_m Tr_n Tr_ng Minh',NULL,NULL,NULL,'PHP',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(713,'SD0590','Nguyen Van','Tung','Nguy_n V_n Tung',NULL,NULL,NULL,'java',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(714,'SD0596','Truong Trong','Quan',NULL,NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(715,'SD0593','Luu Phuong','Anh','L_u Ph__ng Anh',NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(716,'SD0607','Nguyen Thi','Thuc','Nguy_n Th_ Th_c',NULL,NULL,NULL,'PHP',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(717,'SD0608','Bui Thien ','Tho',NULL,NULL,NULL,NULL,'Front-End',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(718,'SD0610','Tran Nhung ','Thuy','Tr_n Nhung Th_y',NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(719,'SD0616','Le Hong ','Phong',NULL,NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(720,'SD0613','Truong Minh An ','Hoa',NULL,NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(721,'SD0612','Vo Thi Truong','An',NULL,NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(722,'SD0621','Tran Thi Kim ','Tuyen','Tr_n Th_ Kim Tuy_n',NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(723,'SD0620','Huynh Tran Quoc ','Buu','Hu_nh Tr_n Qu_c B_u',NULL,NULL,NULL,'Java',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(724,'SD0627','Lam Thi Thu ','Truc',NULL,NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(725,'SD0626','Nguyen Hoai ','Nam',NULL,NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(726,'SD0632','Tran Minh','Truc','Tr_n Minh Tr_c',NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(727,'SD0629','Le Trong','Tin',NULL,NULL,NULL,NULL,'Front-End',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(728,'SD0637','Duong Thanh','Tri','D__ng Th_nh Tr_',NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(729,'SD0643','Tran Thu','Thao','Tr_n Thu Th_o',NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(730,'SD0641','Nguyen Anh ','Quoc','Nguy_n Anh Qu_c',NULL,NULL,NULL,'C++',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(731,'SD0642','Vu Thi Tram','Anh',NULL,NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(732,'SD0670','Truong Thi Thuy ','Trang',NULL,NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(733,'SD0664','Nguyen Hong ','Linh','Nguy_n H_ng Linh',NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(734,'SD0660','Cao Thi Hoang','Le',NULL,NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(735,'SD0668','Tran Hai','Lam',NULL,NULL,NULL,NULL,'Java',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(736,'SD0667','Ta Thi Ngoc ','Hang','T_ Th_ Ng_c H_ng',NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(737,'SD0669','Trinh Khac ','Duy','Tr_nh Kh_c Duy',NULL,NULL,NULL,'Mobile',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(738,'SD0672','Nguyen Anh','Tuan 1','Nguy_n Anh Tu_n 1',NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(739,'SD0675','Vo Van ','Thien',NULL,NULL,NULL,NULL,'Front-End',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(740,'SD0676','Vu Manh ','Hung',NULL,NULL,NULL,NULL,'Java',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(741,'SD0673','Nguyen Duc ','Hanh','Nguy_n __c H_nh',NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(742,'SD0677','Le Tran Yen ','Ngoc',NULL,NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(743,'SD0686','Truong Cam ','Vinh','Tr__ng C_m Vinh',NULL,NULL,NULL,'Java',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(744,'SD0684','Nguyen Van','Trong','Nguy_n V_n Tr_ng',NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(745,'SD0682','Nguyen Thi Hong ','Thuan','Nguy_n Th_ H_ng Thu_n',NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(746,'SD0679','Do Huu ','Quang','__ H_u Quang',NULL,NULL,NULL,'PHP',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(747,'SD0683','Nguyen Thuy Kim ','Ngan',NULL,NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(748,'SD0689','Do Nguyen Nguyet','Ngan',NULL,NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(749,'SD0680','Le Huynh Quang','Khanh',NULL,NULL,NULL,NULL,'QC NT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(750,'SD0685','Tran Nam ','Khang','Tr_n Nam Khang',NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(751,'SD0687','Vo Van ','Dung',NULL,NULL,NULL,NULL,'PHP',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(752,'SD0681','Dao Duy ','Vu',NULL,NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(753,'SD0656','Tran Minh ','Tuan','Tr_n Minh Tu_n',NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(754,'SD0690','Ly Thuy Phuong','Thao','L_ Th_y Ph__ng Th_o',NULL,NULL,NULL,'UI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(755,'SD0655','Hua Thai ','Phong',NULL,NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(756,'SD0694','Nguyen Trung','Nguyen',NULL,NULL,NULL,NULL,'Mobile',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(757,'SD0634','Bui Duy','Hoa',NULL,NULL,NULL,NULL,'Mobile',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(758,'SD0692','Nguyen Anh','Duy','Nguy_n Anh Duy',NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(759,'SD0702','Nguyen Anh','Tuan 2','Nguy_n Anh Tu_n 2',NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(760,'SD0718','Nguyen Hoang','Quan',NULL,NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(761,'SD0714','Huynh Tan ','Loc','Hu_nh T_n L_c',NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(762,'SD0715','Luu Xuan','Huy',NULL,NULL,NULL,NULL,'Mobile',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(763,'SD0719','Nguyen Le Hoang','An',NULL,NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(764,'SD0727','Do Thanh ','Trung',NULL,NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(765,'SD0732','Nguyen Le Quang','Hung',NULL,NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(766,'SD0730','Tran Quoc','Dung','Tr_n Qu_c D_ng',NULL,NULL,NULL,'Mobile',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(767,'SD0733','Dang Ngoc ','Binh',NULL,NULL,NULL,NULL,'Mobile',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(768,'SD0737','Vu Thanh','Lam',NULL,NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(769,'SD0739','Dinh Nguyen Minh ','Duc','_inh Nguy_n Minh __c',NULL,NULL,NULL,'Mobile',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(770,'SD0752','Nguyen Thi Thu','Bong',NULL,NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(771,'SD0753','Pham Tran ','Tien','Ph_m Tr_n Ti_n',NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(772,'SD0755','Truong Minh Anh','Tuan','Tr__ng Minh Anh Tu_n',NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(773,'SD0756','Tran Quoc','Viet','Tr_n Qu_c Vi_t',NULL,NULL,NULL,'PHP',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(774,'SD0757','Luu Truong','Thanh',NULL,NULL,NULL,NULL,'PHP',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(775,'SD0760','Le Xuan ','Tac',NULL,NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-14 16:16:45','2016-12-14 16:16:45',NULL,NULL,NULL,'https://github.com/thieule'),
	(776,'SD0761','Nguyen Thien','Anh',NULL,NULL,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2017-02-18 08:03:34','2016-12-14 16:16:45','776_cv_file_2017-02-18-08-03-34.pdf',NULL,NULL,'https://github.com/thieule'),
	(777,'SD0762','Diep Lan','Quynh','Di_p Lan Qu_nh',NULL,NULL,NULL,'QC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2016-12-20 04:05:18','2016-12-14 16:16:45','777_cv_file_2016-12-20-04-05-18.docx',NULL,NULL,'https://github.com/thieule');

/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table employee_exp
# ------------------------------------------------------------

DROP TABLE IF EXISTS `employee_exp`;

CREATE TABLE `employee_exp` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `employee_exp` WRITE;
/*!40000 ALTER TABLE `employee_exp` DISABLE KEYS */;

INSERT INTO `employee_exp` (`id`, `name`, `type`, `created_at`, `updated_at`)
VALUES
	(1,'PHP','lang',NULL,NULL),
	(2,'RUBY','lang',NULL,NULL),
	(3,'ZEND framework','fw',NULL,NULL),
	(4,'design parttern ','other',NULL,NULL);

/*!40000 ALTER TABLE `employee_exp` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table employee_exp_matrix
# ------------------------------------------------------------

DROP TABLE IF EXISTS `employee_exp_matrix`;

CREATE TABLE `employee_exp_matrix` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `exp_id` int(11) NOT NULL,
  `level` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `note` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `employee_exp_matrix` WRITE;
/*!40000 ALTER TABLE `employee_exp_matrix` DISABLE KEYS */;

INSERT INTO `employee_exp_matrix` (`id`, `employee_id`, `exp_id`, `level`, `month`, `note`, `created_at`, `updated_at`)
VALUES
	(8,777,3,3,2,NULL,'2016-12-20 06:01:34','2016-12-20 06:01:34');

/*!40000 ALTER TABLE `employee_exp_matrix` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table employee_position
# ------------------------------------------------------------

DROP TABLE IF EXISTS `employee_position`;

CREATE TABLE `employee_position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `employee_position` WRITE;
/*!40000 ALTER TABLE `employee_position` DISABLE KEYS */;

INSERT INTO `employee_position` (`id`, `code`, `name`, `level`, `created_at`, `updated_at`)
VALUES
	(1,'SE','Software Engineer',NULL,NULL,NULL),
	(2,'SSE','Senior Software Engineer',NULL,NULL,NULL),
	(3,'ACCOUNTAND','Accountant',NULL,NULL,NULL),
	(4,'CEO','Chief Executive Officer (CEO)',NULL,NULL,NULL),
	(5,'JTA','Junior Technical Author',NULL,NULL,NULL),
	(6,'SA','Sales Assistant',NULL,NULL,NULL),
	(8,NULL,NULL,NULL,'2016-12-17 08:55:27','2016-12-17 08:55:27');

/*!40000 ALTER TABLE `employee_position` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table employee_proposal
# ------------------------------------------------------------

DROP TABLE IF EXISTS `employee_proposal`;

CREATE TABLE `employee_proposal` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `proposal_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `take_part_per` int(11) DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `employee_proposal` WRITE;
/*!40000 ALTER TABLE `employee_proposal` DISABLE KEYS */;

INSERT INTO `employee_proposal` (`id`, `role_id`, `start_date`, `end_date`, `proposal_id`, `employee_id`, `take_part_per`, `updated_at`, `created_at`, `user_id`)
VALUES
	(1,1,'2017-02-19','2017-03-04',1,777,100,'2017-02-19 10:59:21','2017-02-19 10:59:21',24),
	(2,1,'2017-02-19','2017-03-04',1,776,100,'2017-02-19 10:59:21','2017-02-19 10:59:21',24),
	(3,1,'2017-02-19','2017-03-04',2,774,100,'2017-02-19 11:02:40','2017-02-19 11:02:40',24),
	(4,1,'2017-02-20','2018-02-20',3,777,90,'2017-02-20 06:51:00','2017-02-20 06:51:00',24),
	(5,1,'2017-02-19','2017-03-04',3,772,100,'2017-02-20 06:51:00','2017-02-20 06:51:00',24),
	(6,1,'2017-03-11','2017-03-24',4,777,100,'2017-03-11 10:51:08','2017-03-11 10:51:08',24),
	(7,1,'2017-03-11','2017-03-24',4,775,100,'2017-03-11 10:51:08','2017-03-11 10:51:08',24),
	(8,1,'2017-03-11','2017-03-24',5,773,100,'2017-03-11 11:14:05','2017-03-11 11:14:05',24);

/*!40000 ALTER TABLE `employee_proposal` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table employee_proposal_status
# ------------------------------------------------------------

DROP TABLE IF EXISTS `employee_proposal_status`;

CREATE TABLE `employee_proposal_status` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `employee_proposal_id` int(11) DEFAULT NULL,
  `status` enum('Request Interview','New','Rejected','Accepted') DEFAULT NULL,
  `comment` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `employee_proposal_status` WRITE;
/*!40000 ALTER TABLE `employee_proposal_status` DISABLE KEYS */;

INSERT INTO `employee_proposal_status` (`id`, `user_id`, `employee_proposal_id`, `status`, `comment`, `created_at`, `updated_at`)
VALUES
	(1,24,1,'New',NULL,'2017-02-19 10:59:21','2017-02-19 10:59:21'),
	(2,24,2,'New',NULL,'2017-02-19 10:59:21','2017-02-19 10:59:21'),
	(3,25,1,'Request Interview',NULL,'2017-02-19 10:59:33','2017-02-19 10:59:33'),
	(4,25,2,'Request Interview',NULL,'2017-02-19 10:59:37','2017-02-19 10:59:37'),
	(5,25,2,'Accepted',NULL,'2017-02-19 11:00:36','2017-02-19 11:00:36'),
	(6,25,1,'Rejected','Ngu quá','2017-02-19 11:00:53','2017-02-19 11:00:53'),
	(7,24,3,'New',NULL,'2017-02-19 11:02:40','2017-02-19 11:02:40'),
	(8,24,3,'Rejected','Reason 1','2017-02-19 11:15:26','2017-02-19 11:15:26'),
	(9,24,4,'New',NULL,'2017-02-20 06:51:00','2017-02-20 06:51:00'),
	(10,24,5,'New',NULL,'2017-02-20 06:51:00','2017-02-20 06:51:00'),
	(11,24,6,'New',NULL,'2017-03-11 10:51:08','2017-03-11 10:51:08'),
	(12,24,7,'New',NULL,'2017-03-11 10:51:08','2017-03-11 10:51:08'),
	(13,25,6,'Request Interview',NULL,'2017-03-11 10:53:08','2017-03-11 10:53:08'),
	(14,25,7,'Request Interview',NULL,'2017-03-11 10:56:01','2017-03-11 10:56:01'),
	(15,25,7,'Accepted',NULL,'2017-03-11 10:57:49','2017-03-11 10:57:49'),
	(16,25,6,'Accepted',NULL,'2017-03-11 11:11:56','2017-03-11 11:11:56'),
	(17,24,8,'New',NULL,'2017-03-11 11:14:05','2017-03-11 11:14:05'),
	(18,25,8,'Request Interview',NULL,'2017-03-11 11:14:33','2017-03-11 11:14:33'),
	(19,25,8,'Request Interview',NULL,'2017-03-11 11:27:19','2017-03-11 11:27:19'),
	(20,25,8,'Request Interview',NULL,'2017-03-11 11:28:11','2017-03-11 11:28:11'),
	(21,25,8,'Request Interview',NULL,'2017-03-11 11:29:25','2017-03-11 11:29:25'),
	(22,25,8,'Request Interview',NULL,'2017-03-11 11:30:57','2017-03-11 11:30:57');

/*!40000 ALTER TABLE `employee_proposal_status` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table employee_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `employee_role`;

CREATE TABLE `employee_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `employee_role` WRITE;
/*!40000 ALTER TABLE `employee_role` DISABLE KEYS */;

INSERT INTO `employee_role` (`id`, `code`, `name`, `created_at`, `updated_at`)
VALUES
	(1,'JSE','Junior Software Engineer',NULL,NULL),
	(2,'SE','Software Engineer',NULL,NULL),
	(3,'SSE','Senior Software Engineer',NULL,NULL),
	(4,'PSE','Principle Software Engineer',NULL,NULL),
	(5,NULL,NULL,'2016-12-17 08:55:27','2016-12-17 08:55:27'),
	(6,NULL,'2016-12-14 16:16:45','2016-12-17 14:19:24','2016-12-17 14:19:24');

/*!40000 ALTER TABLE `employee_role` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table inventory
# ------------------------------------------------------------

DROP TABLE IF EXISTS `inventory`;

CREATE TABLE `inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(50) NOT NULL,
  `sku` varchar(50) NOT NULL,
  `in_stock` int(11) NOT NULL,
  `sales` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sold` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table inventory_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `inventory_log`;

CREATE TABLE `inventory_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dealer_id` varchar(50) NOT NULL,
  `sku` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL,
  `date` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table notification
# ------------------------------------------------------------

DROP TABLE IF EXISTS `notification`;

CREATE TABLE `notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `send_to` int(11) DEFAULT NULL,
  `content` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `has_attachment` tinyint(4) NOT NULL DEFAULT '0',
  `status_read` tinyint(4) NOT NULL DEFAULT '0',
  `status_seen` tinyint(4) NOT NULL DEFAULT '0',
  `user_id` int(11) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `request_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;

INSERT INTO `notification` (`id`, `title`, `send_to`, `content`, `created_at`, `updated_at`, `has_attachment`, `status_read`, `status_seen`, `user_id`, `link`, `request_id`)
VALUES
	(1,'Create new request resource on Project 1 project',24,'Phu Ha created new request resource on Project 1 project','2017-02-19 10:59:05','2017-02-19 10:59:13',0,0,1,25,'http://rms.local/request/booking?project_id=1&request_id=1',NULL),
	(2,'Thieu Le Quang have proposal Quynh Diep Lan to project Project 1',25,'Thieu Le Quang have proposal Quynh Diep Lan to project Project 1','2017-02-19 10:59:21','2017-02-19 11:05:21',0,0,1,24,'http://rms.local/project/details/1',NULL),
	(3,'Thieu Le Quang have proposal Anh Nguyen Thien to project Project 1',25,'Thieu Le Quang have proposal Anh Nguyen Thien to project Project 1','2017-02-19 10:59:21','2017-02-19 11:05:21',0,0,1,24,'http://rms.local/project/details/1',NULL),
	(4,'New assign member to project Project 1',25,'Phu Ha assign Anh Nguyen Thien role Product Owner','2017-02-19 11:00:36','2017-02-19 11:05:21',0,0,1,25,'http://rms.local/project/details/1',NULL),
	(5,'Thieu Le Quang have proposal Thanh Luu Truong to project Project 1',25,'Thieu Le Quang have proposal Thanh Luu Truong to project Project 1','2017-02-19 11:02:40','2017-02-19 11:05:21',0,0,1,24,'http://rms.local/project/details/1',NULL),
	(6,'Thieu Le Quang have proposal Quynh Diep Lan to project Project 1',25,'Thieu Le Quang have proposal Quynh Diep Lan to project Project 1','2017-02-20 06:51:00','2017-02-20 06:51:00',0,0,0,24,'http://rms.local/project/details/1',NULL),
	(7,'Thieu Le Quang have proposal Tuan Truong Minh Anh to project Project 1',25,'Thieu Le Quang have proposal Tuan Truong Minh Anh to project Project 1','2017-02-20 06:51:00','2017-02-20 06:51:00',0,0,0,24,'http://rms.local/project/details/1',NULL);

/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table office
# ------------------------------------------------------------

DROP TABLE IF EXISTS `office`;

CREATE TABLE `office` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `is_primary` tinyint(4) DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `office` WRITE;
/*!40000 ALTER TABLE `office` DISABLE KEYS */;

INSERT INTO `office` (`id`, `code`, `name`, `address`, `phone`, `email`, `is_primary`, `updated_at`, `created_at`)
VALUES
	(1,'HCM','Ho Chi Minh','9 Dinh Tien Hoang, Quan 1, Ho Chi Minh',NULL,NULL,0,NULL,NULL),
	(2,NULL,'2016-12-14 16:16:45',NULL,NULL,NULL,0,'2016-12-17 08:55:27','2016-12-17 08:55:27'),
	(3,NULL,NULL,NULL,NULL,NULL,0,'2016-12-17 14:19:24','2016-12-17 14:19:24');

/*!40000 ALTER TABLE `office` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table order
# ------------------------------------------------------------

DROP TABLE IF EXISTS `order`;

CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(50) DEFAULT NULL,
  `xman_order_id` varchar(50) DEFAULT NULL,
  `order_date` varchar(20) NOT NULL,
  `cust_id` varchar(50) NOT NULL,
  `req_date` varchar(20) NOT NULL,
  `ship_addr` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `total_amt` int(50) NOT NULL,
  `vat_amt` int(50) NOT NULL,
  `discount` int(50) NOT NULL,
  `payment_method` char(5) NOT NULL,
  `debt_days` int(11) NOT NULL,
  `remarks` varchar(255) NOT NULL,
  `status` char(20) DEFAULT '1',
  `cust_name` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `delivered` tinyint(2) DEFAULT NULL,
  `payed` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;

INSERT INTO `order` (`id`, `order_id`, `xman_order_id`, `order_date`, `cust_id`, `req_date`, `ship_addr`, `phone`, `total_amt`, `vat_amt`, `discount`, `payment_method`, `debt_days`, `remarks`, `status`, `cust_name`, `updated_at`, `created_at`, `delivered`, `payed`)
VALUES
	(62,'00181891',NULL,'14/09/2015','HCM03','12/09/2015','Phu Nhuan','0967217522',222080000,0,0,'PAY',0,'','O',NULL,NULL,NULL,NULL,NULL),
	(63,'00181892',NULL,'14/09/2015','HCM03','12/09/2015','Phu Nhuan','0967217522',76990000,0,0,'PAY',0,'test','S',NULL,NULL,NULL,NULL,NULL),
	(64,'00181893',NULL,'14/09/2015','HCM03','12/09/2015','Phu Nhuan  ','0967217522',36580000,0,0,'PAY',0,'test','O',NULL,NULL,NULL,NULL,NULL),
	(68,'00181899',NULL,'15/09/2015','HCM02','12/12/2015','Phu Nhuan','0967217522',321420000,0,0,'DEBT',0,'','O',NULL,NULL,NULL,NULL,NULL),
	(69,'00181900',NULL,'15/09/2015','HCM02','12/12/2015','Phu Nhuan','0967217522',321420000,0,0,'DEBT',0,'','O',NULL,NULL,NULL,NULL,NULL),
	(70,'00181901',NULL,'15/09/2015','HCM02','12/12/2015','Phu Nhuan','0967217522',0,0,0,'DEBT',0,'gjf','O',NULL,NULL,NULL,NULL,NULL),
	(73,'BO15091600001',NULL,'16/09/2015','HCM123','12/12/2015','Etown, C?ng Hòa','0986684184',16990000,16990000,0,'DEBT',0,'','O',NULL,'2015-09-18 08:54:19',NULL,NULL,NULL),
	(74,'BO15091600002',NULL,'16/09/2015','HCM02','12/12/2015','reyry','0967217522',100550000,0,0,'DEBT',0,'rtyrtyrt','O','B2B ',NULL,NULL,NULL,NULL),
	(75,'00181906',NULL,'16/09/2015','HCM02','12/12/2015','test','0967217522',36580000,36580000,0,'DEBT',1,'','O','B2B ','2015-09-18 08:28:08',NULL,NULL,NULL),
	(76,'BO15091800001',NULL,'18/09/2015','DLC0001.1','18/09/2015','11','0909213325',50970000,0,0,'DEBT',0,'','O','Agency01',NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table order_item
# ------------------------------------------------------------

DROP TABLE IF EXISTS `order_item`;

CREATE TABLE `order_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_join_id` int(11) NOT NULL,
  `order_id` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `item_id` varchar(50) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `prod_id` varchar(50) NOT NULL,
  `unit_price` int(11) DEFAULT NULL,
  `vat_price` int(11) DEFAULT NULL,
  `promotion` varchar(50) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `order_item` WRITE;
/*!40000 ALTER TABLE `order_item` DISABLE KEYS */;

INSERT INTO `order_item` (`id`, `order_join_id`, `order_id`, `model`, `item_id`, `name`, `prod_id`, `unit_price`, `vat_price`, `promotion`, `discount`, `qty`, `updated_at`, `created_at`)
VALUES
	(83,62,'BO15091400001','A31','BQA31___BL','iPhone 6 16GB Gold','BQA31___BL',16990000,16990000,'N',0,5,NULL,NULL),
	(84,62,'BO15091400001','C31','BQC31___BL','iPhone 6 Plus 16GB Gray','BQC31___BL',19590000,19590000,'N',0,7,NULL,NULL),
	(85,63,'BO15091481892','A31','BQA31___BL','iPhone 6 16GB Gold','BQA31___BL',16990000,16990000,'N',0,1,NULL,NULL),
	(86,63,'BO15091481892','EF71','BQEF71__PI','Sony Xperia M4 Aqua Dual (Tr?ng)','BQEF71__PI',6000000,6000000,'N',0,10,NULL,NULL),
	(87,64,'BO15091481893','A31','BQA31___BL','iPhone 6 16GB Gold','BQA31___BL',16990000,16990000,'N',0,1,NULL,NULL),
	(88,64,'BO15091481893','C31','BQC31___BL','iPhone 6 Plus 16GB Gray','BQC31___BL',19590000,19590000,'N',0,1,NULL,NULL),
	(89,65,'BO15091500001','C31','BQC31___BL','iPhone 6 Plus 16GB Gray','BQC31___BL',19590000,19590000,'N',0,1,NULL,NULL),
	(90,65,'BO15091500001','A31','BQA31___BL','iPhone 6 16GB Gold','BQA31___BL',16990000,16990000,'N',0,9,NULL,NULL),
	(91,65,'BO15091500001','E61','BQE61___BY','iPhone 6 Plus 64GB Gold','BQE61___BY',22190000,22190000,'N',0,5,NULL,NULL),
	(92,69,'BO15091581900','A31','BQA31___BL','iPhone 6 16GB Gold','BQA31___BL',16990000,16990000,'N',0,12,NULL,NULL),
	(93,69,'BO15091581900','C31','BQC31___BL','iPhone 6 Plus 16GB Gray','BQC31___BL',19590000,19590000,'N',0,2,NULL,NULL),
	(94,69,'BO15091581900','E52','BQE52___BL','iPhone 6 64GB Gray','BQE52___BL',19590000,19590000,'N',0,4,NULL,NULL),
	(95,70,'BO15091581901','A31','BQA31___BL','iPhone 6 16GB Gold','BQA31___BL',16990000,16990000,'N',0,0,NULL,NULL),
	(115,75,'00181906','75','BQA31___BL','iPhone 6 16GB Gold','BQA31___BL',16990000,16990000,NULL,0,3,'2015-09-18 08:28:07','2015-09-18 08:28:07'),
	(116,75,'00181906','75','BQC31___BL','iPhone 6 Plus 16GB Gray','BQC31___BL',19590000,19590000,NULL,0,3,'2015-09-18 08:28:07','2015-09-18 08:28:07'),
	(117,73,'BO15091600001','73','BQA31___BL','iPhone 6 16GB Gold','BQA31___BL',16990000,16990000,NULL,0,4,'2015-09-18 08:54:19','2015-09-18 08:54:19');

/*!40000 ALTER TABLE `order_item` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table order_return
# ------------------------------------------------------------

DROP TABLE IF EXISTS `order_return`;

CREATE TABLE `order_return` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dealer_id` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `order_return` WRITE;
/*!40000 ALTER TABLE `order_return` DISABLE KEYS */;

INSERT INTO `order_return` (`id`, `dealer_id`, `created_at`, `updated_at`)
VALUES
	(65,'HCM03','2015-09-18 08:35:17','2015-09-18 08:35:17'),
	(66,'HCM03','2015-09-18 08:37:38','2015-09-18 08:37:38'),
	(67,'HCM02','2015-09-18 08:42:24','2015-09-18 08:42:24'),
	(68,'DLC0001.1','2015-09-18 08:52:17','2015-09-18 08:52:17');

/*!40000 ALTER TABLE `order_return` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table order_return_items
# ------------------------------------------------------------

DROP TABLE IF EXISTS `order_return_items`;

CREATE TABLE `order_return_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_return_id` varchar(20) NOT NULL,
  `sku` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `quantity` int(11) NOT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `order_return_items` WRITE;
/*!40000 ALTER TABLE `order_return_items` DISABLE KEYS */;

INSERT INTO `order_return_items` (`id`, `order_return_id`, `sku`, `name`, `price`, `quantity`, `remarks`, `created_at`, `updated_at`)
VALUES
	(97,'65','BQA31___BL','iPhone 6 16GB Gold',16990000,7,'','2015-09-18 15:35:17','0000-00-00 00:00:00'),
	(98,'65','BQC31___BL','iPhone 6 Plus 16GB Gray',19590000,9,'','2015-09-18 15:35:17','0000-00-00 00:00:00'),
	(99,'66','BQA31___BL','iPhone 6 16GB Gold',16990000,7,'hu cam ung','2015-09-18 15:37:38','0000-00-00 00:00:00'),
	(100,'66','BQC31___BL','iPhone 6 Plus 16GB Gray',19590000,9,'hu loa','2015-09-18 15:37:38','0000-00-00 00:00:00'),
	(101,'67','BQA31___BL','iPhone 6 16GB Gold',16990000,1,'','2015-09-18 15:42:24','0000-00-00 00:00:00'),
	(102,'68','BQA31___BL','iPhone 6 16GB Gold',16990000,3,'','2015-09-18 15:52:17','0000-00-00 00:00:00');

/*!40000 ALTER TABLE `order_return_items` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table project
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project`;

CREATE TABLE `project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `client` varchar(255) DEFAULT NULL,
  `desc` text,
  `created_at` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL COMMENT 'Nam of Icon',
  `status` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `estimate` float DEFAULT NULL,
  `estimate_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;

INSERT INTO `project` (`id`, `name`, `client`, `desc`, `created_at`, `user_id`, `icon`, `status`, `updated_at`, `estimate`, `estimate_type`)
VALUES
	(1,'Project 1','thieu test',NULL,'2017-02-19 10:58:51',25,NULL,'2','2017-02-19 10:58:51',121,1),
	(2,'project 2','HVN',NULL,'2017-03-11 10:42:35',24,NULL,'2','2017-03-11 10:42:35',121,1),
	(3,'project 2','HVN',NULL,'2017-03-11 10:44:49',24,NULL,'2','2017-03-11 10:44:49',121,1),
	(4,'Project 2','phu ha test',NULL,'2017-03-11 10:49:31',25,NULL,'2','2017-03-11 10:49:31',121,1);

/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table project_booking
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_booking`;

CREATE TABLE `project_booking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `take_part_per` int(11) DEFAULT NULL,
  `project_role_id` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `spent_hour` float DEFAULT NULL,
  `request_type` enum('Chargeable','Non-chargeable') DEFAULT 'Chargeable',
  `book_type` enum('Official','Reserve') DEFAULT 'Reserve',
  `user_id` int(11) DEFAULT NULL,
  `note` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `remove` tinyint(4) DEFAULT '0',
  `remove_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `project_booking` WRITE;
/*!40000 ALTER TABLE `project_booking` DISABLE KEYS */;

INSERT INTO `project_booking` (`id`, `employee_id`, `project_id`, `take_part_per`, `project_role_id`, `start_date`, `end_date`, `spent_hour`, `request_type`, `book_type`, `user_id`, `note`, `created_at`, `updated_at`, `remove`, `remove_by`)
VALUES
	(1,776,1,100,1,'2017-02-19','2017-03-04',NULL,'Chargeable','Official',25,NULL,'2017-02-19 11:00:36','2017-02-19 11:00:36',0,NULL),
	(2,775,4,100,1,'2017-03-11','2017-03-24',NULL,'Chargeable','Official',25,NULL,'2017-03-11 10:57:49','2017-03-11 10:57:49',0,NULL),
	(3,777,4,100,1,'2017-03-11','2017-03-24',NULL,'Chargeable','Official',25,NULL,'2017-03-11 11:11:56','2017-03-11 11:11:56',0,NULL);

/*!40000 ALTER TABLE `project_booking` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table project_request
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_request`;

CREATE TABLE `project_request` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `params` text,
  `note` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `project_request` WRITE;
/*!40000 ALTER TABLE `project_request` DISABLE KEYS */;

INSERT INTO `project_request` (`id`, `user_id`, `project_id`, `type`, `params`, `note`, `created_at`, `updated_at`, `start_date`, `end_date`)
VALUES
	(1,25,1,NULL,'[{\"role\":\"Product Owner\",\"number\":\"1\",\"skill\":[\"RUBY\"],\"year_of_exp\":\"12\"}]',NULL,'2017-02-19 10:59:05','2017-02-19 10:59:05','2017-02-19','2017-03-04'),
	(2,25,4,NULL,'[{\"role\":\"Product Owner\",\"number\":\"12\",\"skill\":[\"RUBY\",\"ZEND framework\"],\"year_of_exp\":\"11\"}]',NULL,'2017-03-11 10:49:59','2017-03-11 10:49:59','2017-03-11','2017-03-24');

/*!40000 ALTER TABLE `project_request` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table project_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_role`;

CREATE TABLE `project_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `color` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `project_role` WRITE;
/*!40000 ALTER TABLE `project_role` DISABLE KEYS */;

INSERT INTO `project_role` (`id`, `name`, `code`, `level`, `color`, `created_at`, `updated_at`)
VALUES
	(1,'Product Owner','PO',1,NULL,NULL,NULL),
	(2,'Project Manager','PM',2,NULL,NULL,NULL),
	(3,'Technical Lead','TL',3,NULL,NULL,NULL),
	(4,'Developer','DEV',4,NULL,NULL,NULL),
	(5,'Quality Control (Engineer)','QC',5,NULL,NULL,NULL),
	(6,'Designer','DES',6,NULL,NULL,NULL),
	(7,'Quality Assurance (Engineer)','QA',7,NULL,NULL,NULL);

/*!40000 ALTER TABLE `project_role` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table proposal
# ------------------------------------------------------------

DROP TABLE IF EXISTS `proposal`;

CREATE TABLE `proposal` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `request_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `proposal` WRITE;
/*!40000 ALTER TABLE `proposal` DISABLE KEYS */;

INSERT INTO `proposal` (`id`, `project_id`, `user_id`, `request_id`, `created_at`, `updated_at`, `status`)
VALUES
	(1,1,24,1,'2017-02-19 10:59:21','2017-02-19 10:59:21',0),
	(2,1,24,1,'2017-02-19 11:02:40','2017-02-19 11:02:40',0),
	(3,1,24,1,'2017-02-20 06:51:00','2017-02-20 06:51:00',0),
	(4,4,24,2,'2017-03-11 10:51:08','2017-03-11 10:51:08',0),
	(5,4,24,2,'2017-03-11 11:14:04','2017-03-11 11:14:04',0);

/*!40000 ALTER TABLE `proposal` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table resetpass_token
# ------------------------------------------------------------

DROP TABLE IF EXISTS `resetpass_token`;

CREATE TABLE `resetpass_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expire_date` datetime NOT NULL,
  `create_date` datetime NOT NULL,
  `last_change` datetime NOT NULL,
  `status` tinyint(4) NOT NULL,
  `user_type` enum('member','agency') NOT NULL DEFAULT 'member',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `resetpass_token` WRITE;
/*!40000 ALTER TABLE `resetpass_token` DISABLE KEYS */;

INSERT INTO `resetpass_token` (`id`, `email`, `token`, `expire_date`, `create_date`, `last_change`, `status`, `user_type`)
VALUES
	(29,'quangthieuagu@gmail.com','28af1b88b828d0ba1b0cc7ae41ef28d6','2015-09-20 10:38:47','2015-09-17 10:38:47','2015-09-17 10:38:47',0,'agency'),
	(30,'quangthieuagu@gmail.com','d7667ec1cb50fbfbf5e62c3886c063e1','2015-09-20 14:07:15','2015-09-17 14:07:15','2015-09-17 14:07:15',0,'agency'),
	(31,'quangthieuagu@gmail.com','cc4ff0e2274871c98793733d79e74abb','2015-09-20 17:29:54','2015-09-17 17:29:54','2015-09-17 17:29:54',0,'member'),
	(32,'quangthieuagu@gmail.com','b24d59caf2ff1b2e359de7622eb242d0','2015-09-20 17:31:27','2015-09-17 17:31:27','2015-09-17 17:31:27',0,'member'),
	(33,'quangthieuagu@gmail.com','f8738abe1cafe860e25c6c95f86b9f34','2015-09-21 05:20:58','2015-09-18 05:20:58','2015-09-18 05:20:58',0,'agency'),
	(34,'quangthieuagu@gmail.com','6c05380436940e4fb03e93f279c46e42','2015-09-21 05:27:08','2015-09-18 05:27:08','2015-09-18 05:27:08',0,'agency'),
	(35,'quangthieuagu@gmail.com','087871988d356490670c3d4d1c9d5473','2015-09-21 06:22:36','2015-09-18 06:22:36','2015-09-18 06:22:36',0,'member');

/*!40000 ALTER TABLE `resetpass_token` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_activity
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_activity`;

CREATE TABLE `user_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `content` text,
  `attachment` varchar(255) DEFAULT NULL,
  `request_id` int(11) DEFAULT NULL,
  `booking_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `proposal_employee_status_id` int(11) DEFAULT NULL,
  `proposal_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `user_activity` WRITE;
/*!40000 ALTER TABLE `user_activity` DISABLE KEYS */;

INSERT INTO `user_activity` (`id`, `user_id`, `project_id`, `type`, `content`, `attachment`, `request_id`, `booking_id`, `employee_id`, `proposal_employee_status_id`, `proposal_id`, `created_at`, `updated_at`)
VALUES
	(1,25,4,5,'Phu Ha have Request Interview Viet Tran Quoc',NULL,NULL,NULL,773,22,5,'2017-03-11 11:30:57','2017-03-11 11:30:57');

/*!40000 ALTER TABLE `user_activity` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_activity_involved
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_activity_involved`;

CREATE TABLE `user_activity_involved` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `user_activity_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `read` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `user_activity_involved` WRITE;
/*!40000 ALTER TABLE `user_activity_involved` DISABLE KEYS */;

INSERT INTO `user_activity_involved` (`id`, `user_id`, `user_activity_id`, `created_at`, `updated_at`, `read`)
VALUES
	(1,24,9,'2017-03-11 10:44:50','2017-03-11 10:44:50',0),
	(2,24,1,'2017-03-11 10:49:31','2017-03-11 10:49:31',0),
	(3,24,2,'2017-03-11 10:49:59','2017-03-11 10:49:59',0),
	(4,25,3,'2017-03-11 10:51:08','2017-03-11 10:51:08',0),
	(5,25,4,'2017-03-11 10:51:08','2017-03-11 10:51:08',0),
	(6,25,5,'2017-03-11 10:57:49','2017-03-11 10:57:49',0),
	(7,25,6,'2017-03-11 11:11:56','2017-03-11 11:11:56',0),
	(8,25,7,'2017-03-11 11:14:05','2017-03-11 11:14:05',0),
	(9,25,8,'2017-03-11 11:28:11','2017-03-11 11:28:11',0),
	(10,25,9,'2017-03-11 11:29:25','2017-03-11 11:29:25',0),
	(11,25,1,'2017-03-11 11:30:57','2017-03-11 11:30:57',0);

/*!40000 ALTER TABLE `user_activity_involved` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_event_handle
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_event_handle`;

CREATE TABLE `user_event_handle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `resource` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table user_group_permission
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_group_permission`;

CREATE TABLE `user_group_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `user_group_permission` WRITE;
/*!40000 ALTER TABLE `user_group_permission` DISABLE KEYS */;

INSERT INTO `user_group_permission` (`id`, `permission_id`, `group_id`)
VALUES
	(60,6,5),
	(61,7,5),
	(62,8,5),
	(63,9,5),
	(64,10,5),
	(65,11,5),
	(66,12,5),
	(67,13,5),
	(68,14,5),
	(69,15,5),
	(70,16,5),
	(71,17,5),
	(72,18,5),
	(75,6,7),
	(76,7,7),
	(77,8,7),
	(78,6,8),
	(79,7,8),
	(80,8,8),
	(81,9,8),
	(82,10,8),
	(83,11,8),
	(84,12,8),
	(85,13,8),
	(86,14,8),
	(87,15,8),
	(88,16,8),
	(89,17,8),
	(90,18,8),
	(103,9,10),
	(104,10,10);

/*!40000 ALTER TABLE `user_group_permission` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_groups`;

CREATE TABLE `user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `agency_id` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `user_groups` WRITE;
/*!40000 ALTER TABLE `user_groups` DISABLE KEYS */;

INSERT INTO `user_groups` (`id`, `name`, `agency_id`)
VALUES
	(5,'Qu?n lý ??i lý','HCM123'),
	(7,'Qu?n lý ??n hàng','HCM123'),
	(8,'Tài kho?n thành viên','HCM123'),
	(10,'Qu?n lý kho','HCM1985'),
	(11,'r','HCM02');

/*!40000 ALTER TABLE `user_groups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_notification_condition
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_notification_condition`;

CREATE TABLE `user_notification_condition` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `logic` varchar(255) DEFAULT NULL,
  `param` varchar(255) DEFAULT NULL,
  `user_notification_config_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table user_notification_config
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_notification_config`;

CREATE TABLE `user_notification_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text,
  `all_is_net` tinyint(4) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `action_param` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `user_notification_config` WRITE;
/*!40000 ALTER TABLE `user_notification_config` DISABLE KEYS */;

INSERT INTO `user_notification_config` (`id`, `description`, `all_is_net`, `user_id`, `action`, `action_param`, `created_at`, `updated_at`)
VALUES
	(1,'Proposal reminder',1,24,'send_mail',NULL,'2017-03-11 11:30:57','2017-03-11 11:30:57');

/*!40000 ALTER TABLE `user_notification_config` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_notification_message
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_notification_message`;

CREATE TABLE `user_notification_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `function` varchar(225) DEFAULT NULL,
  `params` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `message` text,
  `send_to` int(11) DEFAULT NULL,
  `user_activity_id` int(11) DEFAULT NULL,
  `seen` tinyint(4) NOT NULL DEFAULT '0',
  `read` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `has_send` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('member','admin') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'member',
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `email_confirm` tinyint(4) NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `email`, `password`, `type`, `active`, `email_confirm`, `group_id`, `remember_token`, `created_at`, `updated_at`, `avatar`, `last_login`)
VALUES
	(24,'Thieu Le Quang','quangthieuagu@gmail.com','25d55ad283aa400af464c76d713c07ad','admin',1,1,10,'64eabde55be6fc85d8d930e959d2e9be','2015-09-17 07:51:00','2017-03-23 14:02:56','13001135_1184094464968147_4322744635787176826_n.jpg','2017-03-23 14:02:56'),
	(25,'Phu Ha','phuha@gmail.com','25d55ad283aa400af464c76d713c07ad','member',1,1,10,'64eabde55be6fc85d8d930e959d2e9be','2015-09-17 07:51:00','2017-03-23 14:54:43',NULL,'2017-03-23 14:54:43');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
