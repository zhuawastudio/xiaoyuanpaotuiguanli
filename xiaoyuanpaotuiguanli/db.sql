/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xiaoyuanpaotuiguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xiaoyuanpaotuiguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xiaoyuanpaotuiguanli`;

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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'renwu_types','任务类型',1,'任务类型1',NULL,NULL,'2022-03-17 21:13:27'),(2,'renwu_types','任务类型',2,'任务类型2',NULL,NULL,'2022-03-17 21:13:27'),(3,'renwu_types','任务类型',3,'任务类型3',NULL,NULL,'2022-03-17 21:13:27'),(4,'renwu_status_types','任务状态',1,'可接单',NULL,NULL,'2022-03-17 21:13:27'),(5,'renwu_status_types','任务状态',2,'已接单',NULL,NULL,'2022-03-17 21:13:27'),(6,'jiedan_status_types','接单状态',1,'进行中',NULL,NULL,'2022-03-17 21:13:27'),(7,'jiedan_status_types','接单状态',2,'已完成',NULL,NULL,'2022-03-17 21:13:27'),(8,'tosu_yesno_types','投诉状态',1,'处理中',NULL,NULL,'2022-03-17 21:13:27'),(9,'tosu_yesno_types','投诉状态',2,'已处理',NULL,NULL,'2022-03-17 21:13:27'),(10,'tosu_yesno_types','投诉状态',3,'拒绝',NULL,NULL,'2022-03-17 21:13:27'),(11,'tosu_types','投诉类型',1,'投诉类型1',NULL,NULL,'2022-03-17 21:13:27'),(12,'tosu_types','投诉类型',2,'投诉类型2',NULL,NULL,'2022-03-17 21:13:27'),(13,'tosu_types','投诉类型',3,'投诉类型3',NULL,NULL,'2022-03-17 21:13:27'),(14,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2022-03-17 21:13:27'),(15,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2022-03-17 21:13:28'),(16,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2022-03-17 21:13:28'),(17,'sex_types','性别',1,'男',NULL,NULL,'2022-03-17 21:13:28'),(18,'sex_types','性别',2,'女',NULL,NULL,'2022-03-17 21:13:28');

/*Table structure for table `jiedan` */

DROP TABLE IF EXISTS `jiedan`;

CREATE TABLE `jiedan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `renwu_id` int(11) DEFAULT NULL COMMENT '任务',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jiedan_status_types` int(11) DEFAULT NULL COMMENT '接单状态 Search111',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='接单信息';

/*Data for the table `jiedan` */

insert  into `jiedan`(`id`,`renwu_id`,`yonghu_id`,`jiedan_status_types`,`create_time`) values (6,4,1,2,'2022-03-17 21:49:06'),(7,2,1,2,'2022-03-18 09:34:17');

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

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',2,'http://localhost:8080/xiaoyuanpaotuiguanli/upload/news1.jpg','2022-03-17 21:13:32','公告详情1','2022-03-17 21:13:32'),(2,'公告标题2',2,'http://localhost:8080/xiaoyuanpaotuiguanli/upload/news2.jpg','2022-03-17 21:13:32','公告详情2','2022-03-17 21:13:32'),(3,'公告标题3',3,'http://localhost:8080/xiaoyuanpaotuiguanli/upload/news3.jpg','2022-03-17 21:13:32','公告详情3','2022-03-17 21:13:32'),(4,'公告标题4',1,'http://localhost:8080/xiaoyuanpaotuiguanli/upload/news4.jpg','2022-03-17 21:13:32','公告详情4','2022-03-17 21:13:32'),(5,'公告标题5',3,'http://localhost:8080/xiaoyuanpaotuiguanli/upload/news5.jpg','2022-03-17 21:13:32','公告详情5','2022-03-17 21:13:32');

/*Table structure for table `renwu` */

DROP TABLE IF EXISTS `renwu`;

CREATE TABLE `renwu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `renwu_uuid_number` varchar(200) DEFAULT NULL COMMENT '任务编号',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `renwu_name` varchar(200) DEFAULT NULL COMMENT '任务标题 Search111',
  `renwu_types` int(11) DEFAULT NULL COMMENT '任务类型 Search111',
  `renwu_money` decimal(10,2) DEFAULT NULL COMMENT '单价',
  `renwu_status_types` int(11) DEFAULT NULL COMMENT '任务状态 Search111',
  `renwu_content` text COMMENT '任务详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='任务信息';

/*Data for the table `renwu` */

insert  into `renwu`(`id`,`renwu_uuid_number`,`yonghu_id`,`renwu_name`,`renwu_types`,`renwu_money`,`renwu_status_types`,`renwu_content`,`create_time`) values (1,'164752281235419',2,'任务标题1',3,'316.47',1,'任务详情1','2022-03-17 21:13:32'),(2,'164752281235410',3,'任务标题2',3,'757.49',2,'任务详情2','2022-03-17 21:13:32'),(3,'164752281235412',1,'任务标题3',3,'464.22',1,'任务详情3','2022-03-17 21:13:32'),(4,'164752281235410',3,'任务标题4',2,'612.32',2,'任务详情4','2022-03-17 21:13:32'),(5,'16475228123549',1,'任务标题5',1,'771.30',1,'任务详情5','2022-03-17 21:13:32');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','ji9zg7b3iwccchob66cv7z5cona9d3h1','2022-03-17 21:17:34','2022-03-18 10:38:56'),(2,1,'a1','yonghu','用户','hyb9dpdivs8aot19c1g094nklw9beher','2022-03-17 21:34:39','2022-03-18 10:33:15'),(3,2,'a2','yonghu','用户','me4ng4dqqu0c93bsrsl6uhi0gvdptz4k','2022-03-17 21:47:26','2022-03-17 22:49:16'),(4,3,'a3','yonghu','用户','xurhlwoc9qff3m1jb6rmu8c4apysxsdw','2022-03-17 21:55:21','2022-03-18 10:37:14');

/*Table structure for table `tosu` */

DROP TABLE IF EXISTS `tosu`;

CREATE TABLE `tosu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `tosu_name` varchar(200) DEFAULT NULL COMMENT '投诉标题 Search111',
  `tosu_types` int(11) DEFAULT NULL COMMENT '投诉类型 Search111',
  `tosu_text` text COMMENT '投诉原因',
  `tosu_yesno_types` int(11) DEFAULT NULL COMMENT '投诉状态 Search111',
  `tosu_yesno_text` text COMMENT '投诉详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='投诉信息';

/*Data for the table `tosu` */

insert  into `tosu`(`id`,`yonghu_id`,`tosu_name`,`tosu_types`,`tosu_text`,`tosu_yesno_types`,`tosu_yesno_text`,`create_time`) values (1,2,'投诉标题1',1,'投诉原因1',1,NULL,'2022-03-17 21:13:32'),(2,2,'投诉标题2',3,'投诉原因2',1,NULL,'2022-03-17 21:13:32'),(3,2,'投诉标题3',1,'投诉原因3',1,NULL,'2022-03-17 21:13:32'),(4,3,'投诉标题4',1,'投诉原因4',3,'7','2022-03-17 21:13:32'),(5,2,'投诉标题5',3,'投诉原因5',2,'13','2022-03-17 21:13:32'),(6,3,'123',3,'投诉用户11111 接单然后跑路',2,'已处理','2022-03-18 09:19:13'),(7,1,'投诉用户3333',2,'发布诈骗信息任务',3,'不属实','2022-03-18 09:37:04');

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

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`sex_types`,`yonghu_phone`,`yonghu_id_number`,`yonghu_email`,`yonghu_delete`,`create_time`) values (1,'a1','123456','用户姓名1','http://localhost:8080/xiaoyuanpaotuiguanli/upload/yonghu1.jpg',1,'17703786901','410224199610232001','1@qq.com',1,'2022-03-17 21:13:32'),(2,'a2','123456','用户姓名2','http://localhost:8080/xiaoyuanpaotuiguanli/upload/yonghu2.jpg',2,'17703786902','410224199610232002','2@qq.com',1,'2022-03-17 21:13:32'),(3,'a3','123456','用户姓名3','http://localhost:8080/xiaoyuanpaotuiguanli/upload/yonghu3.jpg',2,'17703786903','410224199610232003','3@qq.com',1,'2022-03-17 21:13:32');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
