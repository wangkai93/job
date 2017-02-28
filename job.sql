-- MySQL dump 10.13  Distrib 5.6.10, for Win64 (x86_64)
--
-- Host: localhost    Database: jyqz
-- ------------------------------------------------------
-- Server version	5.6.10

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
-- Table structure for table `tbl_ad`
--

DROP TABLE IF EXISTS `tbl_ad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `place` varchar(50) NOT NULL,
  `title` varchar(250) NOT NULL,
  `picurl` varchar(150) NOT NULL,
  `linkurl` varchar(150) NOT NULL,
  `intro` varchar(200) NOT NULL,
  `stime` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `etime` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `ifhide` int(10) NOT NULL,
  `remark` text,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ad`
--

LOCK TABLES `tbl_ad` WRITE;
/*!40000 ALTER TABLE `tbl_ad` DISABLE KEYS */;
INSERT INTO `tbl_ad` VALUES (2,'INDEX_2','????','images/ad/middlead.jpg','http://www.163.com/','????','2008-01-28 16:00:00.000000','2008-01-30 16:00:00.000000',1,'?????13888888888','pic'),(3,'INDEX_1','????','images/a.swf','http://www.163.com/','????','2008-01-28 16:00:00.000000','2008-01-30 16:00:00.000000',1,'?','flash');
/*!40000 ALTER TABLE `tbl_ad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_admin`
--

DROP TABLE IF EXISTS `tbl_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `creattime` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `flag` int(10) NOT NULL,
  `isuse` int(10) NOT NULL,
  `logintimes` int(10) NOT NULL,
  `quanxian` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_admin`
--

LOCK TABLES `tbl_admin` WRITE;
/*!40000 ALTER TABLE `tbl_admin` DISABLE KEYS */;
INSERT INTO `tbl_admin` VALUES (1,'admin','21232F297A57A5A743894A0E4A801FC3','2017-02-22 13:24:59.447239',1,1,1140,'1');
/*!40000 ALTER TABLE `tbl_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_adminlog`
--

DROP TABLE IF EXISTS `tbl_adminlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_adminlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `logintime` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `loginip` varchar(50) NOT NULL,
  `useros` varchar(50) NOT NULL,
  `ok` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=332 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_adminlog`
--

LOCK TABLES `tbl_adminlog` WRITE;
/*!40000 ALTER TABLE `tbl_adminlog` DISABLE KEYS */;
INSERT INTO `tbl_adminlog` VALUES (299,'admin','e00cf25ad42683b3df678c61f42c6bda','2008-03-07 12:16:27.000000','Mozilla/4.0 (compatible','127.0.0.1','true'),(300,'admin','e00cf25ad42683b3df678c61f42c6bda','2008-03-07 12:38:22.000000','Mozilla/4.0 (compatible','127.0.0.1','true'),(303,'admin','e00cf25ad42683b3df678c61f42c6bda','2008-03-07 13:28:56.000000','Mozilla/4.0 (compatible','127.0.0.1','true'),(304,'admin','e00cf25ad42683b3df678c61f42c6bda','2008-03-07 13:29:30.000000','Mozilla/4.0 (compatible','127.0.0.1','true'),(305,'admin','e00cf25ad42683b3df678c61f42c6bda','2008-03-07 13:30:28.000000','Mozilla/4.0 (compatible','127.0.0.1','true'),(306,'admin','e00cf25ad42683b3df678c61f42c6bda','2008-03-07 13:31:45.000000','Mozilla/4.0 (compatible','127.0.0.1','true'),(307,'admin','e00cf25ad42683b3df678c61f42c6bda','2008-03-07 13:33:37.000000','Mozilla/4.0 (compatible','127.0.0.1','true'),(308,'admin','e00cf25ad42683b3df678c61f42c6bda','2008-03-07 13:34:18.000000','Mozilla/4.0 (compatible','127.0.0.1','true'),(309,'admin','e00cf25ad42683b3df678c61f42c6bda','2008-03-07 13:38:23.000000','Mozilla/4.0 (compatible','127.0.0.1','true'),(310,'admin','e00cf25ad42683b3df678c61f42c6bda','2008-03-07 13:41:12.000000','Mozilla/4.0 (compatible','127.0.0.1','true'),(311,'admin','e00cf25ad42683b3df678c61f42c6bda','2008-03-07 13:44:53.000000','Mozilla/4.0 (compatible','127.0.0.1','true'),(312,'admin','e00cf25ad42683b3df678c61f42c6bda','2008-03-07 13:46:12.000000','Mozilla/4.0 (compatible','127.0.0.1','true'),(313,'admin','e00cf25ad42683b3df678c61f42c6bda','2008-03-07 13:58:14.000000','Mozilla/4.0 (compatible','127.0.0.1','true'),(314,'admin','e00cf25ad42683b3df678c61f42c6bda','2008-03-07 14:02:24.000000','Mozilla/4.0 (compatible','127.0.0.1','true'),(315,'admin','e00cf25ad42683b3df678c61f42c6bda','2008-03-07 14:40:43.000000','Mozilla/4.0 (compatible','127.0.0.1','true'),(316,'admin','admin','2008-03-07 16:56:33.000000','Mozilla/4.0 (compatible','127.0.0.1','false'),(317,'admin','e00cf25ad42683b3df678c61f42c6bda','2008-03-07 16:56:43.000000','Mozilla/4.0 (compatible','127.0.0.1','true'),(318,'admin','e00cf25ad42683b3df678c61f42c6bda','2008-03-07 17:41:05.000000','Mozilla/4.0 (compatible','127.0.0.1','true'),(319,'admin','e00cf25ad42683b3df678c61f42c6bda','2008-03-07 17:46:35.000000','Mozilla/4.0 (compatible','127.0.0.1','true'),(320,'admin','e00cf25ad42683b3df678c61f42c6bda','2008-03-07 17:48:23.000000','Mozilla/4.0 (compatible','127.0.0.1','true'),(321,'admin','e00cf25ad42683b3df678c61f42c6bda','2008-03-07 17:49:06.000000','Mozilla/4.0 (compatible','127.0.0.1','true'),(322,'admin','e00cf25ad42683b3df678c61f42c6bda','2008-03-07 18:46:52.000000','Mozilla/4.0 (compatible','127.0.0.1','true'),(323,'admin','e00cf25ad42683b3df678c61f42c6bda','2008-03-07 21:33:05.000000','Mozilla/4.0 (compatible','127.0.0.1','true'),(324,'admin','e00cf25ad42683b3df678c61f42c6bda','2008-03-13 16:14:19.000000','Mozilla/4.0 (compatible','127.0.0.1','true'),(325,'admin','024admin','2008-03-30 03:15:49.000000','Mozilla/4.0 (compatible','127.0.0.1','false'),(326,'admin','e00cf25ad42683b3df678c61f42c6bda','2008-03-30 03:15:57.000000','Mozilla/4.0 (compatible','127.0.0.1','true'),(327,'admin','e00cf25ad42683b3df678c61f42c6bda','2010-07-11 04:28:20.000000','Mozilla/4.0 (compatible','192.168.1.50','true'),(328,'admin','e00cf25ad42683b3df678c61f42c6bda','2010-09-15 09:35:38.000000','Mozilla/4.0 (compatible','127.0.0.1','true'),(329,'admin','024admin','2014-01-11 02:50:56.000000','Mozilla/4.0 (compatible','127.0.0.1','false'),(330,'admin','024admin','2014-01-11 02:51:11.000000','Mozilla/4.0 (compatible','127.0.0.1','false'),(331,'admin','e00cf25ad42683b3df678c61f42c6bda','2014-01-11 02:51:31.000000','Mozilla/4.0 (compatible','127.0.0.1','true');
/*!40000 ALTER TABLE `tbl_adminlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_affiche`
--

DROP TABLE IF EXISTS `tbl_affiche`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_affiche` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` varchar(200) NOT NULL,
  `addtime` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `adder` varchar(50) NOT NULL,
  `ifhide` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_affiche`
--

LOCK TABLES `tbl_affiche` WRITE;
/*!40000 ALTER TABLE `tbl_affiche` DISABLE KEYS */;
INSERT INTO `tbl_affiche` VALUES (3,'欢迎光临学生就业求职网','欢迎光临学生就业求职网','2008-03-07 17:47:22.000000','admin',1),(4,'本站正式运营','本站正式开始运营','2008-03-07 17:49:35.000000','admin',1);
/*!40000 ALTER TABLE `tbl_affiche` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_company`
--

DROP TABLE IF EXISTS `tbl_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(10) NOT NULL,
  `coname` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `postnum` int(10) NOT NULL,
  `tel` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `question` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL,
  `intro` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_company`
--

LOCK TABLES `tbl_company` WRITE;
/*!40000 ALTER TABLE `tbl_company` DISABLE KEYS */;
INSERT INTO `tbl_company` VALUES (1,15,'???????????','??????',800800,'88888888','ksf@163.com','??????','???','????????'),(8,30,'????','????180?',112500,'21474832321323213131223647','jinxin@163.com','????','????','?????????????????'),(11,40,'111432443','11111',111111,'11111111','33@163.COM','111','111222','3213dfaf'),(13,44,'联想公司','北京',100000,'010222222','222@163.com','dd','gg','ddddddddd'),(51,51,'芝麻开花','上海张江',200000,'111111111','kai@kai.com','kai','wang','大家离开罚单上两节课就离开打发时间了就离开打算发你啦兰考');
/*!40000 ALTER TABLE `tbl_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_friendlink`
--

DROP TABLE IF EXISTS `tbl_friendlink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_friendlink` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `linkname` varchar(50) NOT NULL,
  `linkurl` varchar(200) NOT NULL,
  `linkpic` varchar(200) NOT NULL,
  `intero` varchar(200) NOT NULL,
  `ifhide` int(10) NOT NULL,
  `ordervalue` int(10) NOT NULL,
  `addtime` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_friendlink`
--

LOCK TABLES `tbl_friendlink` WRITE;
/*!40000 ALTER TABLE `tbl_friendlink` DISABLE KEYS */;
INSERT INTO `tbl_friendlink` VALUES (1,'学生就业求职网','http://localhost:8080/JYQZ','logo.gif','学生就业求职网',1,10,'2000-12-31 17:01:01.000000'),(2,'学生就业求职网','http://localhost:8080/JYQZ','logo.gif','学生就业求职网',1,9,'2000-12-31 17:01:01.000000'),(3,'学生就业求职网','http://localhost:8080/JYQZ','logo.gif','学生就业求职网',1,6,'2000-12-31 17:01:01.000000');
/*!40000 ALTER TABLE `tbl_friendlink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_guestbook`
--

DROP TABLE IF EXISTS `tbl_guestbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_guestbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(100) NOT NULL,
  `pic` varchar(100) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `qq` varchar(50) DEFAULT NULL,
  `weburl` varchar(100) DEFAULT NULL,
  `blogurl` varchar(100) DEFAULT NULL,
  `expressions` varchar(100) NOT NULL,
  `content` varchar(200) NOT NULL,
  `addtime` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `ip` varchar(50) NOT NULL,
  `replay` int(10) NOT NULL,
  `ifhide` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_guestbook`
--

LOCK TABLES `tbl_guestbook` WRITE;
/*!40000 ALTER TABLE `tbl_guestbook` DISABLE KEYS */;
INSERT INTO `tbl_guestbook` VALUES (22,'游客','images/nobody.gif','','','fafa','','images/face/10.gif','fadfsfdfsf','2008-03-07 17:37:05.000000','127.0.0.1',0,1),(23,'游客','images/nobody.gif','','123','http://www.163.com','','images/face/1.gif','很高兴见到你','2008-03-07 17:37:39.000000','127.0.0.1',1,1);
/*!40000 ALTER TABLE `tbl_guestbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_job`
--

DROP TABLE IF EXISTS `tbl_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `need` varchar(60) DEFAULT NULL,
  `num` int(10) DEFAULT NULL,
  `danwei` varchar(60) DEFAULT NULL,
  `linkman` varchar(50) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `place` varchar(60) DEFAULT NULL,
  `pay` varchar(50) DEFAULT NULL,
  `yxq` int(10) DEFAULT NULL,
  `otherneed` text,
  `member` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `addtime` timestamp(6) NULL DEFAULT NULL,
  `ifhide` int(10) DEFAULT NULL,
  `visit` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_job`
--

LOCK TABLES `tbl_job` WRITE;
/*!40000 ALTER TABLE `tbl_job` DISABLE KEYS */;
INSERT INTO `tbl_job` VALUES (1,'美国微软认证的软件工程师',10,'百度公司','李彦宏','010-22233344 88899912','海淀区100号','10000',10,'会黑客技术优先\r\n????\r\n???25???\r\n???165?? \r\n?????????????????','vvvv','co','2008-02-10 05:38:45.000000',1,33),(2,'多年工作经验的采编人员',30,'电视台','台长','010-6667777','中央电视台','1800',30,'博士后毕业','tttt','person','2008-02-10 05:39:18.000000',1,45),(4,'诚聘高级业务人员',11,'某公司','张三','010-131232131','第一贸易公司','5000',12,'有市场营销经验','bbbb','co','2008-03-07 16:36:12.000000',1,0),(5,'诚聘高级业务人员',43,'某公司','张三','010-131232131','第一贸易公司','4000',12,'有市场营销经验','bbbb','co','2008-03-07 16:38:13.000000',1,1),(6,'诚聘高级业务人员',33,'某公司','张三','010-131232131','第一贸易公司','4000',3,'有市场营销经验','bbbb','co','2008-03-07 16:44:47.000000',1,1),(7,'本刊基地学校召开作文研讨会',33,'某公司','张三','010-131232131','第一贸易公司','4000',10,'有市场营销经验','vvvv','co','2008-03-07 16:44:47.000000',1,1),(8,'本刊基地学校召开作文研讨会',33,'某公司','张三','010-131232131','第一贸易公司','4000',10,'有市场营销经验','vvvv','co','2008-03-07 16:44:47.000000',1,1),(9,'本刊基地学校召开作文研讨会',33,'某公司','张三','010-131232131','第一贸易公司','4000',10,'有市场营销经验','vvvv','co','2008-03-07 16:44:47.000000',1,1),(10,'本刊基地学校召开作文研讨会',33,'某公司','张三','010-131232131','第一贸易公司','4000',10,'有市场营销经验','vvvv','co','2008-03-07 16:44:47.000000',1,1),(11,'本刊基地学校召开作文研讨会',33,'某公司','张三','010-131232131','第一贸易公司','4000',10,'有市场营销经验','vvvv','co','2008-03-07 16:44:47.000000',1,1),(12,'本刊基地学校召开作文研讨会',33,'某公司','张三','010-131232131','第一贸易公司','4000',10,'有市场营销经验','vvvv','co','2008-03-07 16:44:47.000000',1,2),(13,'本刊基地学校召开作文研讨会',33,'某公司','张三','010-131232131','第一贸易公司','4000',10,'有市场营销经验','vvvv','co','2008-03-07 16:44:47.000000',1,1),(14,'本刊基地学校召开作文研讨会',33,'某公司','张三','010-131232131','第一贸易公司','4000',10,'有市场营销经验','vvvv','co','2008-03-07 16:44:47.000000',1,1),(15,'本刊基地学校召开作文研讨会',33,'某公司','张三','010-131232131','第一贸易公司','4000',10,'有市场营销经验','vvvv','co','2008-03-07 16:44:47.000000',1,2),(16,'本刊基地学校召开作文研讨会',33,'某公司','张三','010-131232131','第一贸易公司','4000',10,'有市场营销经验','vvvv','co','2008-03-07 16:44:47.000000',1,2),(17,'本刊基地学校召开作文研讨会',33,'某公司','张三','010-131232131','第一贸易公司','4000',10,'有市场营销经验','vvvv','co','2008-03-07 16:44:47.000000',1,1),(18,'本刊基地学校召开作文研讨会',33,'某公司','张三','010-131232131','第一贸易公司','4000',10,'有市场营销经验','vvvv','co','2008-03-07 16:44:47.000000',1,1),(19,'本刊基地学校召开作文研讨会',33,'某公司','张三','010-131232131','第一贸易公司','4000',10,'有市场营销经验','vvvv','co','2008-03-07 16:44:47.000000',1,2),(21,'工程师',2,'联想','联杨','2222222','北京','2000',20,'木木木木要','222222','co','2014-01-11 02:50:24.000000',1,0);
/*!40000 ALTER TABLE `tbl_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_menu`
--

DROP TABLE IF EXISTS `tbl_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menuname` varchar(50) NOT NULL,
  `pic` varchar(100) NOT NULL,
  `linkurl` varchar(100) NOT NULL,
  `wordcolor` varchar(50) NOT NULL,
  `targettype` varchar(50) NOT NULL,
  `hide` int(10) NOT NULL,
  `ordernum` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_menu`
--

LOCK TABLES `tbl_menu` WRITE;
/*!40000 ALTER TABLE `tbl_menu` DISABLE KEYS */;
INSERT INTO `tbl_menu` VALUES (1,'首    页','images/ico/ico_1.gif','index.jsp','#000000','_parent',1,15),(2,'新闻中心','images/ico/ico_2.gif','news.jsp','#000000','_parent',1,14),(3,'招聘信息','images/ico/ico_4.gif','zhao.jsp','#000000','_parent',1,13),(5,'求职信息','images/ico/ico_5.gif','qiu.jsp','#000000','_parent',1,12),(8,'会员中心','images/ico/ico_6.gif','login.jsp','#000000','_parent',1,11),(19,'留言板','null','guestbook.jsp','#000000','_parent',1,0);
/*!40000 ALTER TABLE `tbl_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_menupic`
--

DROP TABLE IF EXISTS `tbl_menupic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_menupic` (
  `isoff` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_menupic`
--

LOCK TABLES `tbl_menupic` WRITE;
/*!40000 ALTER TABLE `tbl_menupic` DISABLE KEYS */;
INSERT INTO `tbl_menupic` VALUES (1);
/*!40000 ALTER TABLE `tbl_menupic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_news`
--

DROP TABLE IF EXISTS `tbl_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `pic` varchar(150) NOT NULL,
  `content` text NOT NULL,
  `addtime` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `adder` varchar(50) NOT NULL,
  `ifhide` int(10) NOT NULL,
  `visit` int(10) NOT NULL,
  `up` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_news`
--

LOCK TABLES `tbl_news` WRITE;
/*!40000 ALTER TABLE `tbl_news` DISABLE KEYS */;
INSERT INTO `tbl_news` VALUES (10,'老师，请走进您的练功房！','无','<div style=\"text-indent: 21pt\">\r\n<p><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></p>\r\n<p><span style=\"font-size: 14pt\"><img height=\"200\" width=\"200\" alt=\"\" src=\"/FZFC/UserFiles/Image/f(1).gif\" /></span></p>\r\n<p><span style=\"font-size: 14pt\">??</span><span style=\"font-size: 14pt\">IT</span><span style=\"font-size: 14pt\">?????</span></p>\r\n</div>\r\n<div style=\"text-indent: 21pt\">&nbsp;</div>\r\n<div style=\"text-indent: 21pt\">????????Internet????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????</div>\r\n<div><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>?????????????????????????????????????????????????????????Internet?????????????????90????????????????????????????????????????????????????????</div>\r\n<div><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>?????????????????????????????????????????????????????????????????????????????????</div>\r\n<div style=\"text-indent: 21pt\">??IT??????????????????????????????????&ldquo;?????????&rdquo;????????????????????????????????????????????????????????????????????????????????????????????????</div>\r\n<div style=\"text-indent: 21pt\">??????????????????????????????????????????????????????????????????????????????????????????????????????-??????-????-????-???????????????????????????????????????????????</div>\r\n<div><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>??IT????&ldquo;???????&rdquo;??????????????????????????????????????????????????????????????????????????????????????????</div>\r\n<div>&nbsp;</div>\r\n<div><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>??IT???</div>\r\n<div><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; www.sy6666.com</span></div>','2008-01-30 13:41:46.000000','admin',1,1,1),(12,'老师，请走进您的练功房！','无','<p>老师，请走进您的练功房！老师，请走进您的练功房！老师，请走进您的练功房！老师，请走进您的练功房！老师，请走进您的练功房！老师，请走进您的练功房！老师，请走进您的练功房！老师，请走进您的练功房！老师，请走进您的练功房！老师，请走进您的练功房！老师，请走进您的练功房！老师，请走进您的练功房！老师，请走进您的练功房！老师，请走进您的练功房！老师，请走进您的练功房！老师，请走进您的练功房！老师，请走进您的练功房！</p>','2008-03-07 18:47:24.000000','admin',1,1,0),(13,'挖掘高中语文教学中的生命因子','无','<p>挖掘高中语文教学中的生命因子挖掘高中语文教学中的生命因子挖掘高中语文教学中的生命因子挖掘高中语文教学中的生命因子挖掘高中语文教学中的生命因子挖掘高中语文教学中的生命因子挖掘高中语文教学中的生命因子挖掘高中语文教学中的生命因子</p>','2008-03-07 18:47:37.000000','admin',1,0,0),(14,'谈语文教学中的德育渗透','无','<p>谈语文教学中的德育渗透谈语文教学中的德育渗透谈语文教学中的德育渗透谈语文教学中的德育渗透谈语文教学中的德育渗透谈语文教学中的德育渗透谈语文教学中的德育渗透</p>','2008-03-07 18:48:02.000000','admin',1,0,0),(15,'语文教学要体现人文精神','无','<p>语文教学要体现人文精神语文教学要体现人文精神语文教学要体现人文精神语文教学要体现人文精神语文教学要体现人文精神语文教学要体现人文精神语文教学要体现人文精神语文教学要体现人文精神语文教学要体现人文精神语文教学要体现人文精神语文教学要体现人文精神语文教学要体现人文精神语文教学要体现人文精神语文教学要体现人文精神语文教学要体现人文精神语文教学要体现人文精神语文教学要体现人文精神语文教学要体现人文精神语文教学要体现人文精神</p>','2008-03-07 18:48:13.000000','admin',1,4,0),(16,'谈谈数学教学中实施素质教育的几点做','无','<p>谈谈数学教学中实施素质教育的几点做谈谈数学教学中实施素质教育的几点做谈谈数学教学中实施素质教育的几点做谈谈数学教学中实施素质教育的几点做谈谈数学教学中实施素质教育的几点做谈谈数学教学中实施素质教育的几点做谈谈数学教学中实施素质教育的几点做谈谈数学教学中实施素质教育的几点做谈谈数学教学中实施素质教育的几点做谈谈数学教学中实施素质教育的几点做谈谈数学教学中实施素质教育的几点做谈谈数学教学中实施素质教育的几点做谈谈数学教学中实施素质教育的几点做谈谈数学教学中实施素质教育的几点做谈谈数学教学中实施素质教育的几点做</p>','2008-03-07 18:48:24.000000','admin',1,1,0),(17,'论高中英语新教材中学生学习策略的培','无','<p>论高中英语新教材中学生学习策略的培论高中英语新教材中学生学习策略的培论高中英语新教材中学生学习策略的培论高中英语新教材中学生学习策略的培论高中英语新教材中学生学习策略的培论高中英语新教材中学生学习策略的培论高中英语新教材中学生学习策略的培</p>','2008-03-07 18:48:36.000000','admin',1,1,0),(18,'在体育教学中建立良好师生关系的有效','无','<p>在体育教学中建立良好师生关系的有效在体育教学中建立良好师生关系的有效在体育教学中建立良好师生关系的有效在体育教学中建立良好师生关系的有效在体育教学中建立良好师生关系的有效在体育教学中建立良好师生关系的有效在体育教学中建立良好师生关系的有效在体育教学中建立良好师生关系的有效</p>','2008-03-07 18:48:48.000000','admin',1,0,0),(19,'谈教育创新也是创造稀缺(卷首语)','无','<p>谈教育创新也是创造稀缺(卷首语)谈教育创新也是创造稀缺(卷首语)谈教育创新也是创造稀缺(卷首语)谈教育创新也是创造稀缺(卷首语)谈教育创新也是创造稀缺(卷首语)谈教育创新也是创造稀缺(卷首语)谈教育创新也是创造稀缺(卷首语)谈教育创新也是创造稀缺(卷首语)谈教育创新也是创造稀缺(卷首语)</p>','2008-03-07 18:49:00.000000','admin',1,0,0),(20,'对新课程理念下的小学数学学习评价的','无','<p>对新课程理念下的小学数学学习评价的对新课程理念下的小学数学学习评价的对新课程理念下的小学数学学习评价的对新课程理念下的小学数学学习评价的对新课程理念下的小学数学学习评价的对新课程理念下的小学数学学习评价的对新课程理念下的小学数学学习评价的对新课程理念下的小学数学学习评价的</p>','2008-03-07 18:49:10.000000','admin',1,8,0),(21,'关于开展第八届“苏步青数学教育奖”','无','<p>关于开展第八届&ldquo;苏步青数学教育奖&rdquo;关于开展第八届&ldquo;苏步青数学教育奖&rdquo;关于开展第八届&ldquo;苏步青数学教育奖&rdquo;关于开展第八届&ldquo;苏步青数学教育奖&rdquo;关于开展第八届&ldquo;苏步青数学教育奖&rdquo;关于开展第八届&ldquo;苏步青数学教育奖&rdquo;</p>','2008-03-13 16:16:46.000000','admin',1,11,0);
/*!40000 ALTER TABLE `tbl_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_replay`
--

DROP TABLE IF EXISTS `tbl_replay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_replay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(10) NOT NULL,
  `replay` varchar(200) NOT NULL,
  `replayer` varchar(50) NOT NULL,
  `replaytime` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_replay`
--

LOCK TABLES `tbl_replay` WRITE;
/*!40000 ALTER TABLE `tbl_replay` DISABLE KEYS */;
INSERT INTO `tbl_replay` VALUES (2,23,'aaa','admin','2008-03-07 17:41:53.000000');
/*!40000 ALTER TABLE `tbl_replay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_resume`
--

DROP TABLE IF EXISTS `tbl_resume`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_resume` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job` varchar(50) DEFAULT NULL,
  `pay` varchar(50) DEFAULT NULL,
  `school` varchar(50) DEFAULT NULL,
  `sex` varchar(50) DEFAULT NULL,
  `age` int(10) DEFAULT NULL,
  `sheng` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `linkman` varchar(50) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `yxq` int(10) DEFAULT NULL,
  `intro` text,
  `member` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `addtime` timestamp(6) NULL DEFAULT NULL,
  `ifhide` int(10) DEFAULT NULL,
  `visit` int(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_resume`
--

LOCK TABLES `tbl_resume` WRITE;
/*!40000 ALTER TABLE `tbl_resume` DISABLE KEYS */;
INSERT INTO `tbl_resume` VALUES (1,'证券公司保安','4000','本科','男',33,'北京','北京','张飞','0434-9999999',60,'身体强壮','tttt','person','2008-02-10 08:19:42.000000',1,1,'aa@163.com'),(3,'五星级酒店总经理','2000','高中','男',21,'宁夏','银川','李斯','010-1232123',23,'头脑灵活','abcd','person','2008-03-07 16:10:24.000000',1,0,'aa@163.com'),(4,'超级企业人事主管','3000','高中','男',34,'贵州','贵阳','关羽','022-45234343',33,'有特异功能','abcd','person','2008-03-07 16:13:56.000000',1,0,'aa@163.com'),(5,'财务总监','4000','高中','女',43,'新疆','乌鲁木齐','刘备','098-4324324',33,'人品不咋地','abcd','person','2008-03-07 16:54:52.000000',1,3,'aa@163.com'),(6,'美国微软认证的软件工程师','4000','本科','女',21,'贵州','贵阳','刘备','010-1232123',23,'有特异功能','abcd','person','2008-03-07 16:54:52.000000',1,1,'aa@163.com'),(7,'美国微软认证的软件工程师','4000','本科','女',21,'贵州','贵阳','刘备','010-1232123',60,'有特异功能','abcd','person','2008-03-07 16:54:52.000000',1,1,'aa@163.com'),(8,'美国微软认证的软件工程师','4000','本科','女',21,'贵州','贵阳','刘备','010-1232123',60,'有特异功能','abcd','person','2008-03-07 16:54:52.000000',1,1,'aa@163.com'),(9,'美国微软认证的软件工程师','4000','本科','女',21,'贵州','贵阳','刘备','010-1232123',60,'有特异功能','abcd','person','2008-03-07 16:54:52.000000',1,1,'aa@163.com'),(10,'美国微软认证的软件工程师','4000','本科','女',21,'贵州','贵阳','刘备','010-1232123',60,'有特异功能','abcd','person','2008-03-07 16:54:52.000000',1,1,'aa@163.com'),(11,'美国微软认证的软件工程师','4000','本科','女',21,'贵州','贵阳','刘备','010-1232123',60,'有特异功能','abcd','person','2008-03-07 16:54:52.000000',1,2,'aa@163.com'),(12,'美国微软认证的软件工程师','4000','本科','女',21,'贵州','贵阳','刘备','010-1232123',60,'有特异功能','abcd','person','2008-03-07 16:54:52.000000',1,1,'aa@163.com'),(13,'美国微软认证的软件工程师','4000','本科','女',21,'贵州','贵阳','刘备','010-1232123',60,'有特异功能','abcd','person','2008-03-07 16:54:52.000000',1,1,'aa@163.com'),(14,'美国微软认证的软件工程师','4000','本科','女',21,'贵州','贵阳','刘备','010-1232123',60,'有特异功能','abcd','person','2008-03-07 16:54:52.000000',1,2,'aa@163.com'),(15,'美国微软认证的软件工程师','4000','本科','女',21,'贵州','贵阳','刘备','010-1232123',60,'有特异功能','abcd','person','2008-03-07 16:54:52.000000',1,1,'aa@163.com'),(16,'美国微软认证的软件工程师','4000','本科','女',21,'贵州','贵阳','刘备','010-1232123',60,'有特异功能','abcd','person','2008-03-07 16:54:52.000000',1,1,'aa@163.com'),(17,'美国微软认证的软件工程师','4000','本科','女',21,'贵州','贵阳','刘备','010-1232123',60,'有特异功能','abcd','person','2008-03-07 16:54:52.000000',1,2,'aa@163.com'),(18,'美国微软认证的软件工程师','4000','本科','女',21,'贵州','贵阳','刘备','010-1232123',60,'有特异功能','abcd','person','2008-03-07 16:54:52.000000',1,1,'aa@163.com'),(19,'美国微软认证的软件工程师','4000','本科','女',21,'贵州','贵阳','刘备','010-1232123',60,'有特异功能','abcd','person','2008-03-07 16:54:52.000000',1,2,'aa@163.com'),(21,'设计师','10000','本科以上','男',25,'云南','昆明','张飞','13588888888',100,'898989','4567','person','2010-07-11 04:27:47.000000',1,1,'8888@163.com'),(22,'工程师','2000','本科','男',22,'陕西','西安','张三','1111111',30,'大大大大大大大','111111','person','2014-01-11 02:49:34.000000',1,0,'11@163.com'),(24,'Android开发工程师','10000/月','本科','男',24,'黑龙江','牡丹江','王凯','23480924820',5,'卡卡是法律敬老卡解放路口欧文龙','abccc','person','2017-02-25 04:37:33.936000',1,0,'kai@kai.com');
/*!40000 ALTER TABLE `tbl_resume` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_student`
--

DROP TABLE IF EXISTS `tbl_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(10) NOT NULL,
  `realname` varchar(100) NOT NULL,
  `sex` varchar(50) NOT NULL,
  `bir` varchar(50) DEFAULT NULL,
  `sheng` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `telphone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `question` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_student`
--

LOCK TABLES `tbl_student` WRITE;
/*!40000 ALTER TABLE `tbl_student` DISABLE KEYS */;
INSERT INTO `tbl_student` VALUES (12,29,'11','m','2008-02-05','??','??','213213213321','1244@1f.com','3213','222222'),(14,37,'33','f','2008-02-06','??','??','33333333','333@163.com','rewrewr','rewrewrer'),(15,38,'111111','m','2008-03-20','北京','北京','432423324','423@163.com','111','2222'),(16,39,'aaaa','m','2008-03-06','甘肃','兰州','432432423','33@163.com','432432','4324'),(17,42,'56','m','','北京','北京','656798134646','1111@163.com','132','123456'),(18,43,'张三','m','1981-01-21','青海','海南州','1111111','11@163.com','dd','gg'),(49,49,'carter','m','2017-02-09','辽宁','抚顺','5245245245','kai901315@sina.com','carter','wang');
/*!40000 ALTER TABLE `tbl_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_system`
--

DROP TABLE IF EXISTS `tbl_system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_system` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sitename` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `keyword` text NOT NULL,
  `description` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `state` varchar(50) NOT NULL,
  `reasons` varchar(100) NOT NULL,
  `dir` varchar(100) NOT NULL,
  `record` varchar(50) NOT NULL,
  `copyright` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_system`
--

LOCK TABLES `tbl_system` WRITE;
/*!40000 ALTER TABLE `tbl_system` DISABLE KEYS */;
INSERT INTO `tbl_system` VALUES (1,'学生就业求职网','http://localhost:8080/JYQZ/','学生就业求职网','学生就业求职网，采用时下流行的MVC模式，用jsp+servlet+bean技术，速度更快，功能更强，稳定性更好','admin@admin.com','open','网站维护中，请稍后访问','admin','辽ICP备00000000号','学生就业求职网 Copyright &copy;  版权所有');
/*!40000 ALTER TABLE `tbl_system` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `regtime` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `ifuse` int(10) NOT NULL,
  `logintimes` int(11) NOT NULL DEFAULT '0',
  `lasttime` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `lastip` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user`
--

LOCK TABLES `tbl_user` WRITE;
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` VALUES (15,'ssss','af15d5fdacd5fdfea300e88a8e253e82','co','2008-02-02 04:11:20.000000',1,4,'2008-02-02 04:59:47.000000','127.0.0.1'),(30,'vvvv','4693fbb215b8ca15a6900f0cfa164cdc','co','2008-02-08 09:00:05.000000',1,4,'2008-02-10 15:31:58.000000','127.0.0.1'),(37,'tttt','1a100d2c0dab19c4430e7d73762b3423','person','2008-02-13 05:55:55.000000',1,0,'2008-02-13 05:55:55.000000','127.0.0.1'),(38,'abcd','96e79218965eb72c92a549dd5a330112','person','2008-03-07 15:37:14.000000',1,13,'2008-03-07 21:03:21.000000','127.0.0.1'),(39,'abcdaa','0b4e7a0e5fe84ad35fb5f95b9ceeac79','person','2008-03-07 15:39:17.000000',1,0,'2008-03-07 15:39:17.000000','127.0.0.1'),(40,'bbbb','875f26fdb1cecf20ceb4ca028263dec6','co','2008-03-07 15:46:31.000000',1,2,'2008-03-07 16:24:56.000000','127.0.0.1'),(42,'4567','e10adc3949ba59abbe56e057f20f883e','person','2010-07-11 04:03:15.000000',1,2,'2010-07-11 04:26:39.000000','192.168.1.50'),(43,'111111','96e79218965eb72c92a549dd5a330112','person','2014-01-11 02:47:37.000000',1,1,'2014-01-11 02:48:56.000000','127.0.0.1'),(44,'222222','e3ceb5881a0a1fdaad01296d7554868d','co','2014-01-11 02:48:46.000000',1,1,'2014-01-11 02:49:56.000000','127.0.0.1'),(49,'abccc','96E79218965EB72C92A549DD5A330112','person','2017-02-21 11:25:21.891000',1,17,'2014-01-11 02:49:56.000000','0:0:0:0:0:0:0:1'),(51,'carter','E10ADC3949BA59ABBE56E057F20F883E','co','2017-02-22 12:55:16.853768',1,0,'0000-00-00 00:00:00.000000','0:0:0:0:0:0:0:1');
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-28  9:50:29
