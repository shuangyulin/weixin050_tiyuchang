/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmh8649
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmh8649` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmh8649`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmh8649/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmh8649/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmh8649/upload/picture3.jpg'),(6,'homepage','http://localhost:8080/ssmh8649/upload/1612236986332.jpg');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1612237896345 DEFAULT CHARSET=utf8 COMMENT='交流论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (81,'2021-02-02 11:13:44','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(82,'2021-02-02 11:13:44','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(83,'2021-02-02 11:13:44','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(84,'2021-02-02 11:13:44','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(85,'2021-02-02 11:13:44','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(1612237713744,'2021-02-02 11:48:33','11','111',0,1612237559421,'125','开放'),(1612237810498,'2021-02-02 11:50:09',NULL,'213213123',1612237713744,1612237592115,'13613616333',NULL),(1612237863401,'2021-02-02 11:51:02','dfsf','fdsafdsaf',0,1612237592115,'13613616333','开放'),(1612237891641,'2021-02-02 11:51:30',NULL,'fdsf',1612237863401,1612237559421,'125',NULL),(1612237896344,'2021-02-02 11:51:36',NULL,'fdsafdf',1612237810498,1612237559421,'125',NULL);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1612236976200 DEFAULT CHARSET=utf8 COMMENT='系统公告';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (101,'2021-02-02 11:13:44','标题1','简介1','http://localhost:8080/ssmh8649/upload/news_picture1.jpg','内容1'),(102,'2021-02-02 11:13:44','标题2','简介2','http://localhost:8080/ssmh8649/upload/news_picture2.jpg','内容2'),(103,'2021-02-02 11:13:44','标题3','简介3','http://localhost:8080/ssmh8649/upload/news_picture3.jpg','内容3'),(104,'2021-02-02 11:13:44','标题4','简介4','http://localhost:8080/ssmh8649/upload/news_picture4.jpg','内容4'),(105,'2021-02-02 11:13:44','标题5','简介5','http://localhost:8080/ssmh8649/upload/news_picture5.jpg','内容5'),(106,'2021-02-02 11:13:44','标题6','简介6','http://localhost:8080/ssmh8649/upload/news_picture6.jpg','内容6'),(1612236976199,'2021-02-02 11:36:15','最新公告','法撒旦富士达范德萨范德萨','http://localhost:8080/ssmh8649/upload/1612236969066.jpg','<p>法撒旦范德萨范德萨范德萨JFK绿茶圣诞快乐反抗拉萨的克劳福德是卡洛夫开始大力开发里的撒疯狂的撒了范德萨范德萨法撒旦</p>');

/*Table structure for table `pingjiaxinxi` */

DROP TABLE IF EXISTS `pingjiaxinxi`;

CREATE TABLE `pingjiaxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuyuebianhao` varchar(200) DEFAULT NULL COMMENT '预约编号',
  `pingfen` varchar(200) DEFAULT NULL COMMENT '评分',
  `pingyu` varchar(200) DEFAULT NULL COMMENT '评语',
  `changdibianhao` varchar(200) DEFAULT NULL COMMENT '场地编号',
  `changdimingcheng` varchar(200) DEFAULT NULL COMMENT '场地名称',
  `pingjiashijian` datetime DEFAULT NULL COMMENT '评价时间',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1612237850506 DEFAULT CHARSET=utf8 COMMENT='评价信息';

/*Data for the table `pingjiaxinxi` */

insert  into `pingjiaxinxi`(`id`,`addtime`,`yuyuebianhao`,`pingfen`,`pingyu`,`changdibianhao`,`changdimingcheng`,`pingjiashijian`,`fengmian`) values (71,'2021-02-02 11:13:44','预约编号1','1','评语1','场地编号1','场地名称1','2021-02-02 11:13:44','http://localhost:8080/ssmh8649/upload/pingjiaxinxi_fengmian1.jpg'),(72,'2021-02-02 11:13:44','预约编号2','1','评语2','场地编号2','场地名称2','2021-02-02 11:13:44','http://localhost:8080/ssmh8649/upload/pingjiaxinxi_fengmian2.jpg'),(73,'2021-02-02 11:13:44','预约编号3','1','评语3','场地编号3','场地名称3','2021-02-02 11:13:44','http://localhost:8080/ssmh8649/upload/pingjiaxinxi_fengmian3.jpg'),(74,'2021-02-02 11:13:44','预约编号4','1','评语4','场地编号4','场地名称4','2021-02-02 11:13:44','http://localhost:8080/ssmh8649/upload/pingjiaxinxi_fengmian4.jpg'),(75,'2021-02-02 11:13:44','预约编号5','1','评语5','场地编号5','场地名称5','2021-02-02 11:13:44','http://localhost:8080/ssmh8649/upload/pingjiaxinxi_fengmian5.jpg'),(76,'2021-02-02 11:13:44','预约编号6','1','评语6','场地编号6','场地名称6','2021-02-02 11:13:44','http://localhost:8080/ssmh8649/upload/pingjiaxinxi_fengmian6.jpg'),(1612237698697,'2021-02-02 11:48:18','1612238052813','3','11','1612237307132','篮球场','2021-02-02 11:55:13','http://localhost:8080/ssmh8649/upload/1612236903058.jpg'),(1612237850505,'2021-02-02 11:50:50','1612238217753','4','22','场地编号4','场地名称4','2021-02-02 11:57:43','http://localhost:8080/ssmh8649/upload/tiyuchang_fengmian4.jpg');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1612237787983 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1612237627261,'2021-02-02 11:47:06',1612237559421,1612236938031,'tiyuchang','篮球场','http://localhost:8080/ssmh8649/upload/1612236903058.jpg'),(1612237787982,'2021-02-02 11:49:47',1612237592115,1612236938031,'tiyuchang','篮球场','http://localhost:8080/ssmh8649/upload/1612236903058.jpg');

/*Table structure for table `tiyuchang` */

DROP TABLE IF EXISTS `tiyuchang`;

CREATE TABLE `tiyuchang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mianji` varchar(200) DEFAULT NULL COMMENT '面积',
  `changdibianhao` varchar(200) DEFAULT NULL COMMENT '场地编号',
  `changdimingcheng` varchar(200) DEFAULT NULL COMMENT '场地名称',
  `zhuangtai` varchar(200) DEFAULT NULL COMMENT '状态',
  `rongnarenshu` varchar(200) DEFAULT NULL COMMENT '容纳人数',
  `feiyong` int(11) DEFAULT NULL COMMENT '费用',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `changdijieshao` longtext COMMENT '场地介绍',
  PRIMARY KEY (`id`),
  UNIQUE KEY `changdibianhao` (`changdibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1612236938032 DEFAULT CHARSET=utf8 COMMENT='体育场';

/*Data for the table `tiyuchang` */

insert  into `tiyuchang`(`id`,`addtime`,`mianji`,`changdibianhao`,`changdimingcheng`,`zhuangtai`,`rongnarenshu`,`feiyong`,`fengmian`,`changdijieshao`) values (41,'2021-02-02 11:13:44','面积1','场地编号1','场地名称1','已预定','容纳人数1',100,'http://localhost:8080/ssmh8649/upload/tiyuchang_fengmian1.jpg','<p>场地介绍1</p>'),(42,'2021-02-02 11:13:44','面积2','场地编号2','场地名称2','未预约','容纳人数2',100,'http://localhost:8080/ssmh8649/upload/tiyuchang_fengmian2.jpg','<p>场地介绍2</p>'),(43,'2021-02-02 11:13:44','面积3','场地编号3','场地名称3','未预约','容纳人数3',111,'http://localhost:8080/ssmh8649/upload/tiyuchang_fengmian3.jpg','<p>场地介绍3</p>'),(44,'2021-02-02 11:13:44','面积4','场地编号4','场地名称4','未预约','容纳人数4',111,'http://localhost:8080/ssmh8649/upload/tiyuchang_fengmian4.jpg','<p>场地介绍4</p>'),(45,'2021-02-02 11:13:44','面积5','场地编号5','场地名称5','未预约','容纳人数5',111,'http://localhost:8080/ssmh8649/upload/tiyuchang_fengmian5.jpg','<p>场地介绍5</p>'),(46,'2021-02-02 11:13:44','面积6','场地编号6','场地名称6','未预约','容纳人数6',100,'http://localhost:8080/ssmh8649/upload/tiyuchang_fengmian6.jpg','<p>场地介绍6</p>'),(1612236938031,'2021-02-02 11:35:37','500平方米','1612237307132','篮球场','未预约','300',200,'http://localhost:8080/ssmh8649/upload/1612236903058.jpg','<p>范德萨范德萨范德萨范德萨范德萨方式打开链接非常快速打开法律上打开了开发力度萨科了反对凯撒了防空雷达萨科理发师打开了饭卡里说的富士达<img src=\"http://localhost:8080/ssmh8649/upload/1612236937136.jpg\"></p>');

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','6tr3pevbd9gbaa5snxo7gpartrrw0d78','2021-02-02 11:17:28','2021-02-02 12:49:15'),(2,1612237559421,'125','xuesheng','学生','issry6a3lb76l861t3sm7k43rnznuda3','2021-02-02 11:46:50','2021-02-02 12:51:26'),(3,1612237592115,'13613616333','yonghu','用户','zteeotlchakh61uu7bohizs2zc14kjrs','2021-02-02 11:49:40','2021-02-02 12:49:40');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-02-02 11:13:44');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuejihao` varchar(200) DEFAULT NULL COMMENT '学籍号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuejihao` (`xuejihao`)
) ENGINE=InnoDB AUTO_INCREMENT=1612237559422 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xuejihao`,`xueshengxingming`,`mima`,`xingbie`,`lianxidianhua`,`youxiang`,`shenfenzheng`) values (21,'2021-02-02 11:13:44','学生1','学生姓名1','123456','男','13823888881','773890001@qq.com','440300199101010001'),(22,'2021-02-02 11:13:44','学生2','学生姓名2','123456','男','13823888882','773890002@qq.com','440300199202020002'),(23,'2021-02-02 11:13:44','学生3','学生姓名3','123456','男','13823888883','773890003@qq.com','440300199303030003'),(24,'2021-02-02 11:13:44','学生4','学生姓名4','123456','男','13823888884','773890004@qq.com','440300199404040004'),(25,'2021-02-02 11:13:44','学生5','学生姓名5','123456','男','13823888885','773890005@qq.com','440300199505050005'),(26,'2021-02-02 11:13:44','学生6','学生姓名6','123456','男','13823888886','773890006@qq.com','440300199606060006'),(1612237559421,'2021-02-02 11:45:59','125','李月','125','女','13613613633','26325656@qq.com','123123123123123');

/*Table structure for table `xueshengdingdan` */

DROP TABLE IF EXISTS `xueshengdingdan`;

CREATE TABLE `xueshengdingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuyuebianhao` varchar(200) DEFAULT NULL COMMENT '预约编号',
  `changdibianhao` varchar(200) DEFAULT NULL COMMENT '场地编号',
  `changdimingcheng` varchar(200) DEFAULT NULL COMMENT '场地名称',
  `xuejihao` varchar(200) DEFAULT NULL COMMENT '学籍号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `feiyong` int(11) DEFAULT NULL COMMENT '费用',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `yuyueshijian` datetime DEFAULT NULL COMMENT '预约时间',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuyuebianhao` (`yuyuebianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1612237640433 DEFAULT CHARSET=utf8 COMMENT='学生订单';

/*Data for the table `xueshengdingdan` */

insert  into `xueshengdingdan`(`id`,`addtime`,`yuyuebianhao`,`changdibianhao`,`changdimingcheng`,`xuejihao`,`xueshengxingming`,`feiyong`,`lianxidianhua`,`yuyueshijian`,`fengmian`,`ispay`,`userid`) values (61,'2021-02-02 11:13:44','预约编号1','场地编号1','场地名称1','学籍号1','学生姓名1',1,'联系电话1','2021-02-02 11:13:44','http://localhost:8080/ssmh8649/upload/xueshengdingdan_fengmian1.jpg','未支付',1),(62,'2021-02-02 11:13:44','预约编号2','场地编号2','场地名称2','学籍号2','学生姓名2',2,'联系电话2','2021-02-02 11:13:44','http://localhost:8080/ssmh8649/upload/xueshengdingdan_fengmian2.jpg','未支付',2),(63,'2021-02-02 11:13:44','预约编号3','场地编号3','场地名称3','学籍号3','学生姓名3',3,'联系电话3','2021-02-02 11:13:44','http://localhost:8080/ssmh8649/upload/xueshengdingdan_fengmian3.jpg','未支付',3),(64,'2021-02-02 11:13:44','预约编号4','场地编号4','场地名称4','学籍号4','学生姓名4',4,'联系电话4','2021-02-02 11:13:44','http://localhost:8080/ssmh8649/upload/xueshengdingdan_fengmian4.jpg','未支付',4),(65,'2021-02-02 11:13:44','预约编号5','场地编号5','场地名称5','学籍号5','学生姓名5',5,'联系电话5','2021-02-02 11:13:44','http://localhost:8080/ssmh8649/upload/xueshengdingdan_fengmian5.jpg','未支付',5),(66,'2021-02-02 11:13:44','预约编号6','场地编号6','场地名称6','学籍号6','学生姓名6',6,'联系电话6','2021-02-02 11:13:44','http://localhost:8080/ssmh8649/upload/xueshengdingdan_fengmian6.jpg','未支付',6),(1612237640432,'2021-02-02 11:47:19','1612238052813','1612237307132','篮球场','125','李月',200,'13613613633','2021-02-02 11:54:12','http://localhost:8080/ssmh8649/upload/1612236903058.jpg','已支付',1612237559421);

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `gerenzhaopian` varchar(200) DEFAULT NULL COMMENT '个人照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1612237592116 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`mima`,`yonghuxingming`,`yonghuzhanghao`,`lianxidianhua`,`xingbie`,`gerenzhaopian`) values (31,'2021-02-02 11:13:44','123456','用户姓名1','用户1','13823888881','男','http://localhost:8080/ssmh8649/upload/yonghu_gerenzhaopian1.jpg'),(32,'2021-02-02 11:13:44','123456','用户姓名2','用户2','13823888882','男','http://localhost:8080/ssmh8649/upload/yonghu_gerenzhaopian2.jpg'),(33,'2021-02-02 11:13:44','123456','用户姓名3','用户3','13823888883','男','http://localhost:8080/ssmh8649/upload/yonghu_gerenzhaopian3.jpg'),(34,'2021-02-02 11:13:44','123456','用户姓名4','用户4','13823888884','男','http://localhost:8080/ssmh8649/upload/yonghu_gerenzhaopian4.jpg'),(35,'2021-02-02 11:13:44','123456','用户姓名5','用户5','13823888885','男','http://localhost:8080/ssmh8649/upload/yonghu_gerenzhaopian5.jpg'),(36,'2021-02-02 11:13:44','123456','用户姓名6','用户6','13823888886','男','http://localhost:8080/ssmh8649/upload/yonghu_gerenzhaopian6.jpg'),(1612237592115,'2021-02-02 11:46:32','111','李月','13613616333','13613616333','女','http://localhost:8080/ssmh8649/upload/1612237827428.jpg');

/*Table structure for table `yonghudingdan` */

DROP TABLE IF EXISTS `yonghudingdan`;

CREATE TABLE `yonghudingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuyuebianhao` varchar(200) DEFAULT NULL COMMENT '预约编号',
  `changdibianhao` varchar(200) DEFAULT NULL COMMENT '场地编号',
  `changdimingcheng` varchar(200) DEFAULT NULL COMMENT '场地名称',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `feiyong` int(11) DEFAULT NULL COMMENT '费用',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `yuyueshijian` datetime DEFAULT NULL COMMENT '预约时间',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuyuebianhao` (`yuyuebianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1612237802878 DEFAULT CHARSET=utf8 COMMENT='用户订单';

/*Data for the table `yonghudingdan` */

insert  into `yonghudingdan`(`id`,`addtime`,`yuyuebianhao`,`changdibianhao`,`changdimingcheng`,`yonghuzhanghao`,`yonghuxingming`,`feiyong`,`lianxidianhua`,`yuyueshijian`,`fengmian`,`ispay`,`userid`) values (51,'2021-02-02 11:13:44','预约编号1','场地编号1','场地名称1','用户账号1','用户姓名1',1,'联系电话1','2021-02-02 11:13:44','http://localhost:8080/ssmh8649/upload/yonghudingdan_fengmian1.jpg','未支付',1),(52,'2021-02-02 11:13:44','预约编号2','场地编号2','场地名称2','用户账号2','用户姓名2',2,'联系电话2','2021-02-02 11:13:44','http://localhost:8080/ssmh8649/upload/yonghudingdan_fengmian2.jpg','未支付',2),(53,'2021-02-02 11:13:44','预约编号3','场地编号3','场地名称3','用户账号3','用户姓名3',3,'联系电话3','2021-02-02 11:13:44','http://localhost:8080/ssmh8649/upload/yonghudingdan_fengmian3.jpg','未支付',3),(54,'2021-02-02 11:13:44','预约编号4','场地编号4','场地名称4','用户账号4','用户姓名4',4,'联系电话4','2021-02-02 11:13:44','http://localhost:8080/ssmh8649/upload/yonghudingdan_fengmian4.jpg','未支付',4),(55,'2021-02-02 11:13:44','预约编号5','场地编号5','场地名称5','用户账号5','用户姓名5',5,'联系电话5','2021-02-02 11:13:44','http://localhost:8080/ssmh8649/upload/yonghudingdan_fengmian5.jpg','未支付',5),(56,'2021-02-02 11:13:44','预约编号6','场地编号6','场地名称6','用户账号6','用户姓名6',6,'联系电话6','2021-02-02 11:13:44','http://localhost:8080/ssmh8649/upload/yonghudingdan_fengmian6.jpg','未支付',6),(1612237802877,'2021-02-02 11:50:01','1612238217753','场地编号4','场地名称4','13613616333','李月',111,'13513613633','2021-02-02 11:56:57','http://localhost:8080/ssmh8649/upload/tiyuchang_fengmian4.jpg','已支付',1612237592115);

/*Table structure for table `zhuangtai` */

DROP TABLE IF EXISTS `zhuangtai`;

CREATE TABLE `zhuangtai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhuangtai` varchar(200) NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhuangtai` (`zhuangtai`)
) ENGINE=InnoDB AUTO_INCREMENT=1612236875779 DEFAULT CHARSET=utf8 COMMENT='状态';

/*Data for the table `zhuangtai` */

insert  into `zhuangtai`(`id`,`addtime`,`zhuangtai`) values (1612235938615,'2021-02-02 11:18:57','已预定'),(1612236214959,'2021-02-02 11:23:34','未预约'),(1612236267455,'2021-02-02 11:24:26','暂停使用'),(1612236875778,'2021-02-02 11:34:34','维护中');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
