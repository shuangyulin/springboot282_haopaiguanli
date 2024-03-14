/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.26 : Database - jidongchepaihao
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jidongchepaihao` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jidongchepaihao`;

/*Table structure for table `cheliang` */

DROP TABLE IF EXISTS `cheliang`;

CREATE TABLE `cheliang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `cheliang_name` varchar(200) DEFAULT NULL COMMENT '车辆名称 Search111',
  `cheliang_types` int(11) DEFAULT NULL COMMENT '车辆类型 Search111',
  `cheliang_paizhao` varchar(200) DEFAULT NULL COMMENT '车辆牌照',
  `paizhao_types` int(11) DEFAULT NULL COMMENT '牌照类型 Search111',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='车辆信息';

/*Data for the table `cheliang` */

insert  into `cheliang`(`id`,`cheliang_name`,`cheliang_types`,`cheliang_paizhao`,`paizhao_types`,`yonghu_id`,`create_time`) values (1,'车辆名称1',2,'牌照112233',1,1,'2022-03-31 15:15:02'),(3,'车辆名称3',1,'无牌照',1,2,'2022-03-31 15:15:02'),(4,'车辆名称4',3,'刚刚申请的正式牌照4',2,2,'2022-03-31 15:15:02'),(5,'车辆名称5',2,'车辆牌照5',1,3,'2022-03-31 15:15:02');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'cheliang_types','车辆类型',1,'车辆类型1',NULL,NULL,'2022-03-31 15:14:57'),(2,'cheliang_types','车辆类型',2,'车辆类型2',NULL,NULL,'2022-03-31 15:14:57'),(3,'cheliang_types','车辆类型',3,'车辆类型3',NULL,NULL,'2022-03-31 15:14:57'),(4,'paizhao_types','牌照类型',1,'无牌照',NULL,NULL,'2022-03-31 15:14:57'),(5,'paizhao_types','牌照类型',2,'临时牌照',NULL,NULL,'2022-03-31 15:14:57'),(6,'paizhao_types','牌照类型',3,'正式牌照',NULL,NULL,'2022-03-31 15:14:57'),(7,'paizhaoshenqing_yesno_types','申请状态',1,'处理中',NULL,NULL,'2022-03-31 15:14:57'),(8,'paizhaoshenqing_yesno_types','申请状态',2,'同意',NULL,NULL,'2022-03-31 15:14:57'),(9,'paizhaoshenqing_yesno_types','申请状态',3,'拒绝',NULL,NULL,'2022-03-31 15:14:57'),(10,'paizhaoshenqing_types','申请牌照类型',2,'临时牌照',NULL,NULL,'2022-03-31 15:14:57'),(11,'paizhaoshenqing_types','申请牌照类型',3,'正式牌照',NULL,NULL,'2022-03-31 15:14:57'),(12,'paizhaohuanbu_yesno_types','申请状态',1,'处理中',NULL,NULL,'2022-03-31 15:14:57'),(13,'paizhaohuanbu_yesno_types','申请状态',2,'同意',NULL,NULL,'2022-03-31 15:14:57'),(14,'paizhaohuanbu_yesno_types','申请状态',3,'拒绝',NULL,NULL,'2022-03-31 15:14:57'),(15,'paizhaohuanbu_types','申请类型',1,'换',NULL,NULL,'2022-03-31 15:14:57'),(16,'paizhaohuanbu_types','申请类型',2,'补',NULL,NULL,'2022-03-31 15:14:57'),(17,'paizhaozuanyi_yesno_types','申请状态',1,'处理中',NULL,NULL,'2022-03-31 15:14:57'),(18,'paizhaozuanyi_yesno_types','申请状态',2,'同意',NULL,NULL,'2022-03-31 15:14:58'),(19,'paizhaozuanyi_yesno_types','申请状态',3,'拒绝',NULL,NULL,'2022-03-31 15:14:58'),(20,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2022-03-31 15:14:58'),(21,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2022-03-31 15:14:58'),(22,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2022-03-31 15:14:58'),(23,'sex_types','性别',1,'男',NULL,NULL,'2022-03-31 15:14:58'),(24,'sex_types','性别',2,'女',NULL,NULL,'2022-03-31 15:14:58');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',3,'http://localhost:8080/jidongchepaihao/upload/news1.jpg','2022-03-31 15:15:02','公告详情1','2022-03-31 15:15:02'),(2,'公告标题2',1,'http://localhost:8080/jidongchepaihao/upload/news2.jpg','2022-03-31 15:15:02','公告详情2','2022-03-31 15:15:02'),(3,'公告标题3',2,'http://localhost:8080/jidongchepaihao/upload/news3.jpg','2022-03-31 15:15:02','公告详情3','2022-03-31 15:15:02'),(4,'公告标题4',3,'http://localhost:8080/jidongchepaihao/upload/news4.jpg','2022-03-31 15:15:02','公告详情4','2022-03-31 15:15:02'),(5,'公告标题5',3,'http://localhost:8080/jidongchepaihao/upload/news5.jpg','2022-03-31 15:15:02','公告详情5','2022-03-31 15:15:02');

/*Table structure for table `paizhaohuanbu` */

DROP TABLE IF EXISTS `paizhaohuanbu`;

CREATE TABLE `paizhaohuanbu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `cheliang_id` int(11) DEFAULT NULL COMMENT '车辆',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `paizhaohuanbu_types` int(11) DEFAULT NULL COMMENT '申请类型',
  `paizhaohuanbu_paizhao` varchar(200) DEFAULT NULL COMMENT '牌照',
  `paizhaohuanbu_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态',
  `paizhaohuanbu_yesno_text` text COMMENT '申请结果',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='牌照换补申请';

/*Data for the table `paizhaohuanbu` */

insert  into `paizhaohuanbu`(`id`,`cheliang_id`,`yonghu_id`,`paizhaohuanbu_types`,`paizhaohuanbu_paizhao`,`paizhaohuanbu_yesno_types`,`paizhaohuanbu_yesno_text`,`create_time`) values (7,3,2,1,'333333拍照',2,'333333','2022-03-31 15:24:27');

/*Table structure for table `paizhaoshenqing` */

DROP TABLE IF EXISTS `paizhaoshenqing`;

CREATE TABLE `paizhaoshenqing` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `cheliang_id` int(11) DEFAULT NULL COMMENT '车辆',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `paizhaoshenqing_types` int(11) DEFAULT NULL COMMENT '申请牌照类型',
  `paizhaoshenqing_paizhao` varchar(200) DEFAULT NULL COMMENT '申请牌照',
  `paizhaoshenqing_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态',
  `paizhaoshenqing_yesno_text` text COMMENT '申请结果',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='牌照申请';

/*Data for the table `paizhaoshenqing` */

insert  into `paizhaoshenqing`(`id`,`cheliang_id`,`yonghu_id`,`paizhaoshenqing_types`,`paizhaoshenqing_paizhao`,`paizhaoshenqing_yesno_types`,`paizhaoshenqing_yesno_text`,`create_time`) values (6,2,1,2,'123',2,'123','2022-03-31 15:22:19'),(7,4,2,2,'刚刚申请的正式牌照4',2,'13331','2022-03-31 15:24:51');

/*Table structure for table `paizhaozuanyi` */

DROP TABLE IF EXISTS `paizhaozuanyi`;

CREATE TABLE `paizhaozuanyi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `cheliang_id` int(11) DEFAULT NULL COMMENT '车辆',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `paizhaozuanyi_name` varchar(200) DEFAULT NULL COMMENT '转移用户名称',
  `paizhaozuanyi_paizhao` varchar(200) DEFAULT NULL COMMENT '牌照',
  `paizhaozuanyi_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态',
  `paizhaozuanyi_yesno_text` text COMMENT '申请结果',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='牌照转移申请';

/*Data for the table `paizhaozuanyi` */

insert  into `paizhaozuanyi`(`id`,`cheliang_id`,`yonghu_id`,`paizhaozuanyi_name`,`paizhaozuanyi_paizhao`,`paizhaozuanyi_yesno_types`,`paizhaozuanyi_yesno_text`,`create_time`) values (7,3,2,'张三','转移走的拍照号',2,'拒绝啥也不会发生 用户需要再次申请','2022-03-31 15:25:13');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','zzobotafowwij0aipqt1t0voexch3rxn','2022-03-31 14:37:15','2022-03-31 16:25:18'),(2,1,'a1','yonghu','用户','ya4nzi4rquhbkag4ki8pc2mdd8wykhx4','2022-03-31 15:09:54','2022-03-31 16:23:27'),(3,2,'a2','yonghu','用户','by1r9sih8qq9zhgr5qvmk9t8tsw9m3lf','2022-03-31 15:24:03','2022-03-31 16:24:04');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`sex_types`,`yonghu_phone`,`yonghu_id_number`,`yonghu_email`,`yonghu_delete`,`create_time`) values (1,'a1','123456','用户姓名1','http://localhost:8080/jidongchepaihao/upload/yonghu1.jpg',1,'17703786901','410224199610232001','1@qq.com',1,'2022-03-31 15:15:02'),(2,'a2','123456','用户姓名2','http://localhost:8080/jidongchepaihao/upload/yonghu2.jpg',1,'17703786902','410224199610232002','2@qq.com',1,'2022-03-31 15:15:02'),(3,'a3','123456','用户姓名3','http://localhost:8080/jidongchepaihao/upload/yonghu3.jpg',2,'17703786903','410224199610232003','3@qq.com',1,'2022-03-31 15:15:02');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
