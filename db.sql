/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - chongwumaorenyang
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`chongwumaorenyang` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `chongwumaorenyang`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(20) NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int(11) NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='收货地址';

/*Data for the table `address` */

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_phone`,`address_dizhi`,`isdefault_types`,`insert_time`,`update_time`,`create_time`) values (1,2,'收货人1','17703786901','地址1',1,'2023-03-04 13:10:01','2023-03-04 13:10:01','2023-03-04 13:10:01'),(2,2,'收货人2','17703786902','地址2',1,'2023-03-04 13:10:01','2023-03-04 13:10:01','2023-03-04 13:10:01'),(3,1,'收货人3','17703786903','地址3',1,'2023-03-04 13:10:01','2023-03-04 13:10:01','2023-03-04 13:10:01'),(4,2,'收货人4','17703786904','地址4',1,'2023-03-04 13:10:01','2023-03-04 13:10:01','2023-03-04 13:10:01'),(5,1,'收货人5','17703786905','地址5',1,'2023-03-04 13:10:01','2023-03-04 13:10:01','2023-03-04 13:10:01'),(6,2,'收货人6','17703786906','地址6',1,'2023-03-04 13:10:01','2023-03-04 13:10:01','2023-03-04 13:10:01'),(7,2,'收货人7','17703786907','地址7',1,'2023-03-04 13:10:01','2023-03-04 13:10:01','2023-03-04 13:10:01'),(8,1,'收货人8','17703786908','地址8',1,'2023-03-04 13:10:01','2023-03-04 13:10:01','2023-03-04 13:10:01'),(9,2,'收货人9','17703786909','地址9',1,'2023-03-04 13:10:01','2023-03-04 13:10:01','2023-03-04 13:10:01'),(10,2,'收货人10','17703786910','地址10',1,'2023-03-04 13:10:01','2023-03-04 13:10:01','2023-03-04 13:10:01'),(11,3,'收货人11','17703786911','地址11',1,'2023-03-04 13:10:01','2023-03-04 13:10:01','2023-03-04 13:10:01'),(12,1,'收货人12','17703786912','地址12',2,'2023-03-04 13:10:01','2023-03-04 14:11:59','2023-03-04 13:10:01'),(13,1,'收货人13','17703786913','地址13',1,'2023-03-04 13:10:01','2023-03-04 13:10:01','2023-03-04 13:10:01'),(14,2,'收货人14','17703786914','地址14',1,'2023-03-04 13:10:01','2023-03-04 13:10:01','2023-03-04 13:10:01');

/*Table structure for table `chongwu` */

DROP TABLE IF EXISTS `chongwu`;

CREATE TABLE `chongwu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chongwu_name` varchar(200) DEFAULT NULL COMMENT '宠物名称 Search111',
  `chongwu_photo` varchar(200) DEFAULT NULL COMMENT '宠物照片',
  `chongwu_types` int(11) DEFAULT NULL COMMENT '宠物品种 Search111',
  `chongwuleix_types` int(11) DEFAULT NULL COMMENT '宠物类型 Search111',
  `chongwu_age` int(11) DEFAULT NULL COMMENT '宠物年龄',
  `xingbie_types` int(11) DEFAULT NULL COMMENT '宠物性别 Search111',
  `chongwu_tezheng` varchar(200) DEFAULT NULL COMMENT '宠物特征',
  `dongwu_types` int(11) DEFAULT NULL COMMENT '宠物状态 Search111',
  `chongwu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `chongwu_content` text COMMENT '宠物简介 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow homeMain',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='宠物';

/*Data for the table `chongwu` */

insert  into `chongwu`(`id`,`chongwu_name`,`chongwu_photo`,`chongwu_types`,`chongwuleix_types`,`chongwu_age`,`xingbie_types`,`chongwu_tezheng`,`dongwu_types`,`chongwu_delete`,`chongwu_content`,`create_time`) values (1,'宠物名称1','upload/chongwu1.jpg',3,2,388,2,'宠物特征1',1,1,'宠物简介1','2023-03-04 13:10:01'),(2,'宠物名称2','upload/chongwu2.jpg',3,2,374,1,'宠物特征2',1,1,'宠物简介2','2023-03-04 13:10:01'),(3,'宠物名称3','upload/chongwu3.jpg',1,1,275,1,'宠物特征3',2,1,'宠物简介3','2023-03-04 13:10:01'),(4,'宠物名称4','upload/chongwu4.jpg',3,1,177,1,'宠物特征4',1,1,'宠物简介4','2023-03-04 13:10:01'),(5,'宠物名称5','upload/chongwu5.jpg',3,1,293,1,'宠物特征5',2,1,'宠物简介5','2023-03-04 13:10:01'),(6,'宠物名称6','upload/chongwu6.jpg',1,2,36,1,'宠物特征6',1,1,'宠物简介6','2023-03-04 13:10:01'),(7,'宠物名称7','upload/chongwu7.jpg',3,2,64,2,'宠物特征7',1,1,'宠物简介7','2023-03-04 13:10:01'),(8,'宠物名称8','upload/chongwu1.jpg',1,1,177,1,'宠物特征8',2,1,'宠物简介8','2023-03-04 13:10:01'),(9,'宠物名称9','upload/chongwu2.jpg',3,2,408,1,'宠物特征9',2,1,'宠物简介9','2023-03-04 13:10:01'),(10,'宠物名称10','upload/chongwu3.jpg',2,3,137,2,'宠物特征10',2,1,'宠物简介10','2023-03-04 13:10:01'),(11,'宠物名称11','upload/chongwu4.jpg',2,3,153,1,'宠物特征11',2,1,'宠物简介11','2023-03-04 13:10:01'),(12,'宠物名称12','upload/chongwu5.jpg',1,2,318,1,'宠物特征12',1,1,'宠物简介12','2023-03-04 13:10:01'),(13,'宠物名称13','upload/chongwu6.jpg',1,1,448,1,'宠物特征13',2,1,'宠物简介13','2023-03-04 13:10:01'),(14,'宠物名称14','upload/chongwu7.jpg',3,3,457,2,'宠物特征14',1,1,'宠物简介14','2023-03-04 13:10:01');

/*Table structure for table `chongwu_yuyue` */

DROP TABLE IF EXISTS `chongwu_yuyue`;

CREATE TABLE `chongwu_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chongwu_id` int(11) DEFAULT NULL COMMENT '宠物',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `chongwu_yuyue_text` text COMMENT '领养原因 ',
  `chongwu_yuyue_types` int(11) DEFAULT NULL COMMENT '领养状态 Search111',
  `chongwu_yuyue_yesno_types` int(11) DEFAULT NULL COMMENT '领养审核 Search111',
  `chongwu_yuyue_yesno_text` text COMMENT '审核结果',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='宠物领养申请';

/*Data for the table `chongwu_yuyue` */

insert  into `chongwu_yuyue`(`id`,`chongwu_id`,`yonghu_id`,`chongwu_yuyue_text`,`chongwu_yuyue_types`,`chongwu_yuyue_yesno_types`,`chongwu_yuyue_yesno_text`,`insert_time`,`create_time`) values (1,1,3,'领养原因1',102,1,NULL,'2023-03-04 13:10:01','2023-03-04 13:10:01'),(2,2,2,'领养原因2',104,1,NULL,'2023-03-04 13:10:01','2023-03-04 13:10:01'),(3,3,1,'领养原因3',104,2,'123','2023-03-04 13:10:01','2023-03-04 13:10:01'),(16,8,1,'123123123',104,2,'123','2023-03-04 14:12:30','2023-03-04 14:12:30');

/*Table structure for table `chongwuyongpin` */

DROP TABLE IF EXISTS `chongwuyongpin`;

CREATE TABLE `chongwuyongpin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chongwuyongpin_name` varchar(200) DEFAULT NULL COMMENT '宠物用品名称 Search111',
  `chongwuyongpin_photo` varchar(200) DEFAULT NULL COMMENT '宠物用品照片',
  `chongwuyongpin_types` int(11) DEFAULT NULL COMMENT '宠物用品类型 Search111',
  `chongwuyongpin_kucun_number` int(11) DEFAULT NULL COMMENT '宠物用品库存',
  `chongwuyongpin_old_money` decimal(10,2) DEFAULT NULL COMMENT '原价 ',
  `chongwuyongpin_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `chongwuyongpin_clicknum` int(11) DEFAULT NULL COMMENT '点击次数',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `chongwuyongpin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `chongwuyongpin_content` text COMMENT '宠物用品简介 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='宠物用品';

/*Data for the table `chongwuyongpin` */

insert  into `chongwuyongpin`(`id`,`chongwuyongpin_name`,`chongwuyongpin_photo`,`chongwuyongpin_types`,`chongwuyongpin_kucun_number`,`chongwuyongpin_old_money`,`chongwuyongpin_new_money`,`chongwuyongpin_clicknum`,`shangxia_types`,`chongwuyongpin_delete`,`chongwuyongpin_content`,`create_time`) values (1,'宠物用品名称1','upload/chongwuyongpin1.jpg',1,101,'777.29','488.66',246,1,1,'宠物用品简介1','2023-03-04 13:10:01'),(2,'宠物用品名称2','upload/chongwuyongpin2.jpg',3,102,'522.99','461.23',277,1,1,'宠物用品简介2','2023-03-04 13:10:01'),(3,'宠物用品名称3','upload/chongwuyongpin3.jpg',1,103,'923.16','215.39',385,1,1,'宠物用品简介3','2023-03-04 13:10:01'),(4,'宠物用品名称4','upload/chongwuyongpin4.jpg',1,104,'805.05','453.46',279,1,1,'宠物用品简介4','2023-03-04 13:10:01'),(5,'宠物用品名称5','upload/chongwuyongpin5.jpg',2,104,'533.06','94.79',209,1,1,'宠物用品简介5','2023-03-04 13:10:01'),(6,'宠物用品名称6','upload/chongwuyongpin6.jpg',2,106,'729.79','214.99',377,1,1,'宠物用品简介6','2023-03-04 13:10:01'),(7,'宠物用品名称7','upload/chongwuyongpin7.jpg',3,107,'906.58','404.15',381,1,1,'宠物用品简介7','2023-03-04 13:10:01'),(8,'宠物用品名称8','upload/chongwuyongpin8.jpg',2,108,'764.63','333.78',493,1,1,'宠物用品简介8','2023-03-04 13:10:01'),(9,'宠物用品名称9','upload/chongwuyongpin9.jpg',2,108,'564.91','143.26',354,1,1,'宠物用品简介9','2023-03-04 13:10:01'),(10,'宠物用品名称10','upload/chongwuyongpin10.jpg',3,1010,'779.40','415.22',164,1,1,'宠物用品简介10','2023-03-04 13:10:01'),(11,'宠物用品名称11','upload/chongwuyongpin11.jpg',3,1011,'856.37','382.81',15,1,1,'宠物用品简介11','2023-03-04 13:10:01'),(12,'宠物用品名称12','upload/chongwuyongpin12.jpg',3,1012,'982.42','314.00',475,1,1,'宠物用品简介12','2023-03-04 13:10:01'),(13,'宠物用品名称13','upload/chongwuyongpin13.jpg',2,1013,'708.34','217.11',131,1,1,'宠物用品简介13','2023-03-04 13:10:01'),(14,'宠物用品名称14','upload/chongwuyongpin14.jpg',1,1014,'734.51','384.54',114,2,1,'宠物用品简介14','2023-03-04 13:10:01');

/*Table structure for table `chongwuyongpin_collection` */

DROP TABLE IF EXISTS `chongwuyongpin_collection`;

CREATE TABLE `chongwuyongpin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chongwuyongpin_id` int(11) DEFAULT NULL COMMENT '宠物用品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `chongwuyongpin_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='宠物用品收藏';

/*Data for the table `chongwuyongpin_collection` */

insert  into `chongwuyongpin_collection`(`id`,`chongwuyongpin_id`,`yonghu_id`,`chongwuyongpin_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2023-03-04 13:10:01','2023-03-04 13:10:01'),(3,3,2,1,'2023-03-04 13:10:01','2023-03-04 13:10:01'),(4,4,2,1,'2023-03-04 13:10:01','2023-03-04 13:10:01'),(5,5,1,1,'2023-03-04 13:10:01','2023-03-04 13:10:01'),(6,6,3,1,'2023-03-04 13:10:01','2023-03-04 13:10:01'),(7,7,1,1,'2023-03-04 13:10:01','2023-03-04 13:10:01'),(8,8,3,1,'2023-03-04 13:10:01','2023-03-04 13:10:01'),(9,9,3,1,'2023-03-04 13:10:01','2023-03-04 13:10:01'),(10,10,2,1,'2023-03-04 13:10:01','2023-03-04 13:10:01'),(11,11,3,1,'2023-03-04 13:10:01','2023-03-04 13:10:01'),(12,12,2,1,'2023-03-04 13:10:01','2023-03-04 13:10:01'),(13,13,1,1,'2023-03-04 13:10:01','2023-03-04 13:10:01'),(14,14,1,1,'2023-03-04 13:10:01','2023-03-04 13:10:01');

/*Table structure for table `chongwuyongpin_order` */

DROP TABLE IF EXISTS `chongwuyongpin_order`;

CREATE TABLE `chongwuyongpin_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chongwuyongpin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号',
  `address_id` int(11) DEFAULT NULL COMMENT '收货地址 ',
  `chongwuyongpin_id` int(11) DEFAULT NULL COMMENT '宠物用品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `chongwuyongpin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `chongwuyongpin_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111',
  `chongwuyongpin_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='宠物用品订单';

/*Data for the table `chongwuyongpin_order` */

insert  into `chongwuyongpin_order`(`id`,`chongwuyongpin_order_uuid_number`,`address_id`,`chongwuyongpin_id`,`yonghu_id`,`buy_number`,`chongwuyongpin_order_true_price`,`chongwuyongpin_order_types`,`chongwuyongpin_order_payment_types`,`insert_time`,`create_time`) values (7,'1677910310713',3,9,1,1,'143.26',104,1,'2023-03-04 14:11:51','2023-03-04 14:11:51'),(8,'1677910333218',12,5,1,1,'94.79',104,1,'2023-03-04 14:12:13','2023-03-04 14:12:13');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (42,'chongwu_types','宠物品种',1,'宠物品种1',NULL,NULL,'2023-03-04 13:09:12'),(43,'chongwu_types','宠物品种',2,'宠物品种2',NULL,NULL,'2023-03-04 13:09:12'),(44,'chongwu_types','宠物品种',3,'宠物品种3',NULL,NULL,'2023-03-04 13:09:12'),(45,'chongwuleix_types','宠物类型',1,'宠物类型1',NULL,NULL,'2023-03-04 13:09:12'),(46,'chongwuleix_types','宠物类型',2,'宠物类型2',NULL,NULL,'2023-03-04 13:09:12'),(47,'chongwuleix_types','宠物类型',3,'宠物类型3',NULL,NULL,'2023-03-04 13:09:12'),(48,'xingbie_types','宠物性别',1,'公',NULL,NULL,'2023-03-04 13:09:12'),(49,'xingbie_types','宠物性别',2,'母',NULL,NULL,'2023-03-04 13:09:12'),(50,'dongwu_types','宠物状态',1,'待领养',NULL,NULL,'2023-03-04 13:09:12'),(51,'dongwu_types','宠物状态',2,'已领养',NULL,NULL,'2023-03-04 13:09:12'),(52,'chongwu_yuyue_yesno_types','领养审核',1,'待审核',NULL,NULL,'2023-03-04 13:09:12'),(53,'chongwu_yuyue_yesno_types','领养审核',2,'通过',NULL,NULL,'2023-03-04 13:09:12'),(54,'chongwu_yuyue_yesno_types','领养审核',3,'拒绝',NULL,NULL,'2023-03-04 13:09:12'),(55,'chongwu_yuyue_types','领养状态',101,'已申请领养',NULL,NULL,'2023-03-04 13:09:12'),(56,'chongwu_yuyue_types','领养状态',100,'拒绝领养申请',NULL,NULL,'2023-03-04 13:09:12'),(57,'chongwu_yuyue_types','领养状态',99,'同意领养申请',NULL,NULL,'2023-03-04 13:09:12'),(58,'chongwu_yuyue_types','领养状态',102,'取消领养',NULL,NULL,'2023-03-04 13:09:12'),(59,'chongwu_yuyue_types','领养状态',103,'已寄送',NULL,NULL,'2023-03-04 13:09:12'),(60,'chongwu_yuyue_types','领养状态',104,'已收到',NULL,NULL,'2023-03-04 13:09:12'),(61,'shangxia_types','上下架',1,'上架',NULL,NULL,'2023-03-04 13:09:12'),(62,'shangxia_types','上下架',2,'下架',NULL,NULL,'2023-03-04 13:09:12'),(63,'chongwuyongpin_types','宠物用品类型',1,'宠物用品类型1',NULL,NULL,'2023-03-04 13:09:13'),(64,'chongwuyongpin_types','宠物用品类型',2,'宠物用品类型2',NULL,NULL,'2023-03-04 13:09:13'),(65,'chongwuyongpin_types','宠物用品类型',3,'宠物用品类型3',NULL,NULL,'2023-03-04 13:09:13'),(66,'chongwuyongpin_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-03-04 13:09:13'),(67,'isdefault_types','是否默认地址',1,'否',NULL,NULL,'2023-03-04 13:09:13'),(68,'isdefault_types','是否默认地址',2,'是',NULL,NULL,'2023-03-04 13:09:13'),(69,'chongwuyongpin_order_types','订单类型',101,'已支付',NULL,NULL,'2023-03-04 13:09:13'),(70,'chongwuyongpin_order_types','订单类型',102,'退款',NULL,NULL,'2023-03-04 13:09:13'),(71,'chongwuyongpin_order_types','订单类型',103,'已发货',NULL,NULL,'2023-03-04 13:09:13'),(72,'chongwuyongpin_order_types','订单类型',104,'已收货',NULL,NULL,'2023-03-04 13:09:13'),(73,'chongwuyongpin_order_payment_types','订单支付类型',1,'余额',NULL,NULL,'2023-03-04 13:09:13'),(74,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-03-04 13:09:13'),(75,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-03-04 13:09:13'),(76,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2023-03-04 13:09:13'),(77,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2023-03-04 13:09:13'),(78,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2023-03-04 13:09:13'),(79,'sex_types','性别',1,'男',NULL,NULL,'2023-03-04 13:09:13'),(80,'sex_types','性别',2,'女',NULL,NULL,'2023-03-04 13:09:13');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='萌宠讨论';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',1,NULL,'发布内容1',371,1,'2023-03-04 13:10:01','2023-03-04 13:10:01','2023-03-04 13:10:01'),(2,'帖子标题2',2,NULL,'发布内容2',317,1,'2023-03-04 13:10:01','2023-03-04 13:10:01','2023-03-04 13:10:01'),(3,'帖子标题3',3,NULL,'发布内容3',101,1,'2023-03-04 13:10:01','2023-03-04 13:10:01','2023-03-04 13:10:01'),(4,'帖子标题4',1,NULL,'发布内容4',416,1,'2023-03-04 13:10:01','2023-03-04 13:10:01','2023-03-04 13:10:01'),(5,'帖子标题5',2,NULL,'发布内容5',319,1,'2023-03-04 13:10:01','2023-03-04 13:10:01','2023-03-04 13:10:01'),(6,'帖子标题6',1,NULL,'发布内容6',404,1,'2023-03-04 13:10:01','2023-03-04 13:10:01','2023-03-04 13:10:01'),(7,'帖子标题7',2,NULL,'发布内容7',314,1,'2023-03-04 13:10:01','2023-03-04 13:10:01','2023-03-04 13:10:01'),(8,'帖子标题8',1,NULL,'发布内容8',464,1,'2023-03-04 13:10:01','2023-03-04 13:10:01','2023-03-04 13:10:01'),(9,'帖子标题9',1,NULL,'发布内容9',256,1,'2023-03-04 13:10:01','2023-03-04 13:10:01','2023-03-04 13:10:01'),(10,'帖子标题10',1,NULL,'发布内容10',108,1,'2023-03-04 13:10:01','2023-03-04 13:10:01','2023-03-04 13:10:01'),(11,'帖子标题11',1,NULL,'发布内容11',95,1,'2023-03-04 13:10:01','2023-03-04 13:10:01','2023-03-04 13:10:01'),(12,'帖子标题12',2,NULL,'发布内容12',59,1,'2023-03-04 13:10:01','2023-03-04 13:10:01','2023-03-04 13:10:01'),(13,'帖子标题13',1,NULL,'发布内容13',122,1,'2023-03-04 13:10:01','2023-03-04 13:10:01','2023-03-04 13:10:01'),(14,'帖子标题14',1,NULL,'发布内容14',83,1,'2023-03-04 13:10:01','2023-03-04 13:10:01','2023-03-04 13:10:01'),(15,NULL,1,NULL,'132123123',14,2,'2023-03-04 14:13:32',NULL,'2023-03-04 14:13:32'),(16,NULL,NULL,1,'123123',14,2,'2023-03-04 14:17:57',NULL,'2023-03-04 14:17:57');

/*Table structure for table `liuyan` */

DROP TABLE IF EXISTS `liuyan`;

CREATE TABLE `liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `liuyan_name` varchar(200) DEFAULT NULL COMMENT '留言标题  Search111 ',
  `liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='留言反馈';

/*Data for the table `liuyan` */

insert  into `liuyan`(`id`,`yonghu_id`,`liuyan_name`,`liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,'留言标题1','留言内容1','2023-03-04 13:10:01','回复信息1','2023-03-04 13:10:01','2023-03-04 13:10:01'),(2,1,'留言标题2','留言内容2','2023-03-04 13:10:01','回复信息2','2023-03-04 13:10:01','2023-03-04 13:10:01'),(3,3,'留言标题3','留言内容3','2023-03-04 13:10:01','回复信息3','2023-03-04 13:10:01','2023-03-04 13:10:01'),(4,2,'留言标题4','留言内容4','2023-03-04 13:10:01','回复信息4','2023-03-04 13:10:01','2023-03-04 13:10:01'),(5,2,'留言标题5','留言内容5','2023-03-04 13:10:01','回复信息5','2023-03-04 13:10:01','2023-03-04 13:10:01'),(6,1,'留言标题6','留言内容6','2023-03-04 13:10:01','回复信息6','2023-03-04 13:10:01','2023-03-04 13:10:01'),(7,1,'留言标题7','留言内容7','2023-03-04 13:10:01','回复信息7','2023-03-04 13:10:01','2023-03-04 13:10:01'),(8,2,'留言标题8','留言内容8','2023-03-04 13:10:01','回复信息8','2023-03-04 13:10:01','2023-03-04 13:10:01'),(9,2,'留言标题9','留言内容9','2023-03-04 13:10:01','回复信息9','2023-03-04 13:10:01','2023-03-04 13:10:01'),(10,1,'留言标题10','留言内容10','2023-03-04 13:10:01','回复信息10','2023-03-04 13:10:01','2023-03-04 13:10:01'),(11,1,'留言标题11','留言内容11','2023-03-04 13:10:01','回复信息11','2023-03-04 13:10:01','2023-03-04 13:10:01'),(12,2,'留言标题12','留言内容12','2023-03-04 13:10:01','回复信息12','2023-03-04 13:10:01','2023-03-04 13:10:01'),(13,3,'留言标题13','留言内容13','2023-03-04 13:10:01','回复信息13','2023-03-04 13:10:01','2023-03-04 13:10:01'),(14,2,'留言标题14','留言内容14','2023-03-04 13:10:01','回复信息14','2023-03-04 13:10:01','2023-03-04 13:10:01'),(15,1,'123','123','2023-03-04 14:13:24','123','2023-03-04 14:18:04','2023-03-04 14:13:24');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='通知公告';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',1,'upload/news1.jpg','2023-03-04 13:10:01','公告详情1','2023-03-04 13:10:01'),(2,'公告标题2',3,'upload/news2.jpg','2023-03-04 13:10:01','公告详情2','2023-03-04 13:10:01'),(3,'公告标题3',1,'upload/news3.jpg','2023-03-04 13:10:01','公告详情3','2023-03-04 13:10:01'),(4,'公告标题4',3,'upload/news4.jpg','2023-03-04 13:10:01','公告详情4','2023-03-04 13:10:01'),(5,'公告标题5',1,'upload/news5.jpg','2023-03-04 13:10:01','公告详情5','2023-03-04 13:10:01'),(6,'公告标题6',1,'upload/news6.jpg','2023-03-04 13:10:01','公告详情6','2023-03-04 13:10:01'),(7,'公告标题7',1,'upload/news7.jpg','2023-03-04 13:10:01','公告详情7','2023-03-04 13:10:01'),(8,'公告标题8',3,'upload/news8.jpg','2023-03-04 13:10:01','公告详情8','2023-03-04 13:10:01'),(9,'公告标题9',1,'upload/news9.jpg','2023-03-04 13:10:01','公告详情9','2023-03-04 13:10:01'),(10,'公告标题10',2,'upload/news10.jpg','2023-03-04 13:10:01','公告详情10','2023-03-04 13:10:01'),(11,'公告标题11',1,'upload/news11.jpg','2023-03-04 13:10:01','公告详情11','2023-03-04 13:10:01'),(12,'公告标题12',3,'upload/news12.jpg','2023-03-04 13:10:01','公告详情12','2023-03-04 13:10:01'),(13,'公告标题13',1,'upload/news13.jpg','2023-03-04 13:10:01','公告详情13','2023-03-04 13:10:01'),(14,'公告标题14',1,'upload/news14.jpg','2023-03-04 13:10:01','公告详情14','2023-03-04 13:10:01');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','isbyrx2zggns1gbeeuqykv5ersccgatr','2023-03-04 13:23:22','2023-03-04 15:11:33'),(2,1,'admin','users','管理员','ptqnwixp38dgw68185rl49byvey5ajy4','2023-03-04 13:56:45','2023-03-04 15:17:26');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_photo`,`yonghu_id_number`,`yonghu_phone`,`yonghu_email`,`new_money`,`yonghu_delete`,`create_time`) values (1,'a1','123456','用户姓名1',1,'upload/yonghu1.jpg','410224199010102001','17703786901','1@qq.com','104.25',1,'2023-03-04 13:10:01'),(2,'a2','123456','用户姓名2',1,'upload/yonghu2.jpg','410224199010102002','17703786902','2@qq.com','805.00',1,'2023-03-04 13:10:01'),(3,'a3','123456','用户姓名3',1,'upload/yonghu3.jpg','410224199010102003','17703786903','3@qq.com','294.59',1,'2023-03-04 13:10:01');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
