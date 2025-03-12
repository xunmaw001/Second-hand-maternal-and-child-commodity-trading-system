-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm5gyjb
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611529243460 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2021-01-24 13:51:53',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-01-24 13:51:53',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-01-24 13:51:53',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-01-24 13:51:53',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-01-24 13:51:53',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-01-24 13:51:53',6,'宇宙银河系月球1号','月某','13823888886','是'),(1611529079723,'2021-01-24 22:57:59',42,'内蒙古自治区呼和浩特市清水河县韮菜庄乡正沟村','小吴','16459878988','是'),(1611529243459,'2021-01-24 23:00:42',1611529195955,'贵州省毕节市金沙县柳塘镇马路湾子','小李','16459878988','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'rexiaoshangpin' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611529314150 DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611529630066 DEFAULT CHARSET=utf8 COMMENT='在线咨询';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (61,'2021-01-24 13:51:53',1,1,'提问1','回复1',1),(62,'2021-01-24 13:51:53',2,2,'提问2','回复2',2),(63,'2021-01-24 13:51:53',3,3,'提问3','回复3',3),(64,'2021-01-24 13:51:53',4,4,'提问4','回复4',4),(65,'2021-01-24 13:51:53',5,5,'提问5','回复5',5),(66,'2021-01-24 13:51:53',6,6,'提问6','回复6',6),(1611529403893,'2021-01-24 23:03:23',1611529195955,NULL,'这里可以在线咨询',NULL,0),(1611529630065,'2021-01-24 23:07:09',1611529195955,1,NULL,'这里回复用户的咨询',NULL);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssm5gyjb/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm5gyjb/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm5gyjb/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dingdanpingjia`
--

DROP TABLE IF EXISTS `dingdanpingjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dingdanpingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `pingjiabiaoti` varchar(200) NOT NULL COMMENT '评价标题',
  `dingdanpingfen` varchar(200) DEFAULT NULL COMMENT '订单评分',
  `dingdanpingjia` longtext COMMENT '订单评价',
  `pingjiariqi` date DEFAULT NULL COMMENT '评价日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611529729072 DEFAULT CHARSET=utf8 COMMENT='订单评价';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dingdanpingjia`
--

LOCK TABLES `dingdanpingjia` WRITE;
/*!40000 ALTER TABLE `dingdanpingjia` DISABLE KEYS */;
INSERT INTO `dingdanpingjia` VALUES (51,'2021-01-24 13:51:53','订单编号1','评价标题1','1','订单评价1','2021-01-24','用户名1','手机1','是',''),(52,'2021-01-24 13:51:53','订单编号2','评价标题2','1','订单评价2','2021-01-24','用户名2','手机2','是',''),(53,'2021-01-24 13:51:53','订单编号3','评价标题3','1','订单评价3','2021-01-24','用户名3','手机3','是',''),(54,'2021-01-24 13:51:53','订单编号4','评价标题4','1','订单评价4','2021-01-24','用户名4','手机4','是',''),(55,'2021-01-24 13:51:53','订单编号5','评价标题5','1','订单评价5','2021-01-24','用户名5','手机5','是',''),(56,'2021-01-24 13:51:53','订单编号6','评价标题6','1','订单评价6','2021-01-24','用户名6','手机6','是',''),(1611529729071,'2021-01-24 23:08:48','2021125713689958458','收货后在这里评价','5','<p>666</p>','2021-01-30','666','16459878985','是','管理员在这里回复评价');
/*!40000 ALTER TABLE `dingdanpingjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussrexiaoshangpin`
--

DROP TABLE IF EXISTS `discussrexiaoshangpin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussrexiaoshangpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611529285787 DEFAULT CHARSET=utf8 COMMENT='热销商品评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussrexiaoshangpin`
--

LOCK TABLES `discussrexiaoshangpin` WRITE;
/*!40000 ALTER TABLE `discussrexiaoshangpin` DISABLE KEYS */;
INSERT INTO `discussrexiaoshangpin` VALUES (141,'2021-01-24 13:51:53',1,1,'评论内容1','回复内容1'),(142,'2021-01-24 13:51:53',2,2,'评论内容2','回复内容2'),(143,'2021-01-24 13:51:53',3,3,'评论内容3','回复内容3'),(144,'2021-01-24 13:51:53',4,4,'评论内容4','回复内容4'),(145,'2021-01-24 13:51:53',5,5,'评论内容5','回复内容5'),(146,'2021-01-24 13:51:53',6,6,'评论内容6','回复内容6'),(1611529285786,'2021-01-24 23:01:25',31,1611529195955,'用户登录后可以收藏  购买 交流 咨询等操作','这里可以回复用户在前台的评论');
/*!40000 ALTER TABLE `discussrexiaoshangpin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussshangjiaxinxi`
--

DROP TABLE IF EXISTS `discussshangjiaxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussshangjiaxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='商家信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussshangjiaxinxi`
--

LOCK TABLES `discussshangjiaxinxi` WRITE;
/*!40000 ALTER TABLE `discussshangjiaxinxi` DISABLE KEYS */;
INSERT INTO `discussshangjiaxinxi` VALUES (131,'2021-01-24 13:51:53',1,1,'评论内容1','回复内容1'),(132,'2021-01-24 13:51:53',2,2,'评论内容2','回复内容2'),(133,'2021-01-24 13:51:53',3,3,'评论内容3','回复内容3'),(134,'2021-01-24 13:51:53',4,4,'评论内容4','回复内容4'),(135,'2021-01-24 13:51:53',5,5,'评论内容5','回复内容5'),(136,'2021-01-24 13:51:53',6,6,'评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussshangjiaxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=1611529369652 DEFAULT CHARSET=utf8 COMMENT='交流中心';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (1611529020253,'2021-01-24 22:56:59','“大头娃娃”事件频出，母婴行业乱象丛生……可怜天下父母心','<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">如何照顾好自己的孩子几乎是每位母亲最为关注的话题。近日，有微博博主爆料称，有家长在市面上购买了含有激素的婴儿霜，导致孩子出现“大头娃娃”现象，引起轩然大波。据了解，此次涉事产品的售卖来源是实体母婴店。2020年5月发生的另一起“大头娃娃”事件也与母婴店有关。诸多母婴行业产品质量新闻的背后“真凶”，是实体母婴店的混乱。</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\"><img src=\"../../../upload/1611529018358.jpg\"></span></p><p><br></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">这里查看用户的交流  针对敏感性话题或者敏感字眼  可以修改  或者删除</span></p>',0,42,'001','开放'),(1611529354352,'2021-01-24 23:02:33','这里可以分享自己育儿经验','<p>发帖后其它用户可以回复</p>\n<p><img src=\"../../../upload/1611529351921.jpg\" /></p>',0,1611529195955,'666','开放'),(1611529369651,'2021-01-24 23:02:49',NULL,'评论回复在这里操作',1611529020253,1611529195955,'666',NULL);
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='母婴资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (121,'2021-01-24 13:51:53','什么是母婴行业新动销？','连终极武器都失效了','http://localhost:8080/ssm5gyjb/upload/news_picture1.jpg','<p class=\"ql-align-justify\">我们中童传媒在7年前进入母婴行业不久，就提出了“动销”问题，尽管那时候对大部分母婴店来说，动销根本不成为一个问题，如何卖出更高的毛利，赚更多的钱，才是能让店老板烧点脑的问题。</p><p class=\"ql-align-justify\">但是我们深知，连媒体都发现母婴行业好赚钱，那这个行业离供过于求也就没多久了。</p><p class=\"ql-align-justify\">动销，很快就会成为大问题。</p><p class=\"ql-align-justify\">大概三四年前，地县级的母婴连锁开始感觉到动销压力，周转没那么快了，但是那种压力主要来自同行，也就是隔壁和对门的母婴店。毕竟，自我们开始关注这个行业，中国母婴店总数就从20万家，猛增至今天的30多万家，僧多粥少，自然动销困难。相比之下，对其他消费品行业冲击巨大的电商，在母婴行业倒不是太明显。</p><p><img src=\"http://localhost:8080/ssm5gyjb/upload/1611528921144.jpg\"></p>'),(122,'2021-01-24 13:51:53','有些母婴用品就是交智商税，又贵又鸡肋','很多父母在生第1个宝宝的时候，由于没有太多的经验，所以很多都是按照书上来教育孩子的。','http://localhost:8080/ssm5gyjb/upload/news_picture2.jpg','<p class=\"ql-align-justify\">而且孩子的衣、食、住、行所有用的都想要买最好的，而且去母婴店买东西的时候，再经过销售人员一介绍，那么准父母就很想把整个母婴店都搬回家，买很多的东西，<strong>但是这些东西都未必是能够用得上的</strong>，也未必适合孩子用。</p><p class=\"ql-align-justify\">父母们买很多东西回家，觉得总有一天都会用上的，但是发现买回来的东西当孩子长大了也都没有用上，<strong>父母也全都是在买教训</strong>。</p><p><br></p>'),(123,'2021-01-24 13:51:53','哪些母婴品牌才货真价实？','二胎宝妈咳血吐槽，我娃上辈子就是家里的财神爷，这辈子反过来上家里敛财了！','http://localhost:8080/ssm5gyjb/upload/news_picture3.jpg','<p class=\"ql-align-justify\">眼睛一闭一睁，小几千下水，只听到丁点儿水花...</p><p class=\"ql-align-justify\">生娃前唯一的休闲时间就是孕末期2-3个月，有孩子后每天的日子就跟打了“鸡血”似的，过的真是特别充实！</p><p class=\"ql-align-justify\">我的待产历程：</p><p><br></p>'),(124,'2021-01-24 13:51:53','去母婴店买产品有什么好处？','粉哥导读：母婴店作为一类服务于母婴人群的线下门店，是消费者购买母婴产品的主要渠道。据尼尔森数据显示，2020年1-5月，母婴渠道的婴幼儿配方奶粉销售占比最高，达58%。此外，我们从奶粉智库宝妈群中发现很多妈妈对母婴店也情有独钟，那去母婴店买产品究竟有什么好处？下面我们一起来看看10位宝妈的理由吧~','http://localhost:8080/ssm5gyjb/upload/news_picture4.jpg','<p class=\"ql-align-justify\"><strong>01关键词：更热情</strong></p><p class=\"ql-align-justify\">作为新手妈妈，我第一次去母婴店买奶粉时，啥都不懂。进去前并不抱希望，结果店员真的好热情，问我家宝宝的体质如何、母乳情况，还让我坚持母乳喂养，如果没有母乳再来买奶粉，店员热情的态度增添了几分我对养娃的激情。</p><p><br></p>'),(125,'2021-01-24 13:51:53','标题5','简介5','http://localhost:8080/ssm5gyjb/upload/news_picture5.jpg','内容5'),(126,'2021-01-24 13:51:53','标题6','简介6','http://localhost:8080/ssm5gyjb/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'rexiaoshangpin' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1611529322860 DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1611529112268,'2021-01-24 22:58:31','20211256583023941381','rexiaoshangpin',42,36,'商品名称6','http://localhost:8080/ssm5gyjb/upload/rexiaoshangpin_tupian6.jpg',1,99.9,99.9,99.9,99.9,1,'已发货','内蒙古自治区呼和浩特市清水河县韮菜庄乡正沟村'),(1611529298099,'2021-01-24 23:01:38','2021125713689958458','rexiaoshangpin',1611529195955,31,'合生元奶粉','http://localhost:8080/ssm5gyjb/upload/rexiaoshangpin_tupian1.jpg',2,128,128,256,256,1,'已完成','贵州省毕节市金沙县柳塘镇马路湾子'),(1611529322859,'2021-01-24 23:02:02','202112572115432323','rexiaoshangpin',1611529195955,34,'商品名称4','http://localhost:8080/ssm5gyjb/upload/rexiaoshangpin_tupian4.jpg',1,99.9,99.9,99.9,99.9,1,'已完成','贵州省毕节市金沙县柳塘镇马路湾子');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rexiaoshangpin`
--

DROP TABLE IF EXISTS `rexiaoshangpin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rexiaoshangpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shiyongxingbie` varchar(200) DEFAULT NULL COMMENT '适用性别',
  `shiyongjieduan` varchar(200) DEFAULT NULL COMMENT '适用阶段',
  `shangpinchengse` varchar(200) NOT NULL COMMENT '商品成色',
  `shangpinguige` varchar(200) DEFAULT NULL COMMENT '商品规格',
  `shangpinpinpai` varchar(200) DEFAULT NULL COMMENT '商品品牌',
  `shangjiabianhao` varchar(200) DEFAULT NULL COMMENT '商家编号',
  `shangjiamingcheng` varchar(200) DEFAULT NULL COMMENT '商家名称',
  `zixundianhua` varchar(200) DEFAULT NULL COMMENT '咨询电话',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611529533144 DEFAULT CHARSET=utf8 COMMENT='热销商品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rexiaoshangpin`
--

LOCK TABLES `rexiaoshangpin` WRITE;
/*!40000 ALTER TABLE `rexiaoshangpin` DISABLE KEYS */;
INSERT INTO `rexiaoshangpin` VALUES (31,'2021-01-24 13:51:53','合生元奶粉','奶粉','http://localhost:8080/ssm5gyjb/upload/rexiaoshangpin_tupian1.jpg','通用','适用阶段1','全新','500g','商品品牌1','商家编号1','商家名称1','020-89819991','<p><img src=\"http://localhost:8080/ssm5gyjb/upload/1611528795529.jpg\"></p>','2021-01-25 07:07:49',7,128),(32,'2021-01-24 13:51:53','商品名称2','分类2','http://localhost:8080/ssm5gyjb/upload/rexiaoshangpin_tupian2.jpg','通用','适用阶段2','全新','商品规格2','商品品牌2','商家编号2','商家名称2','咨询电话2','商品详情2','2021-01-24 21:51:53',2,99.9),(33,'2021-01-24 13:51:53','商品名称3','分类3','http://localhost:8080/ssm5gyjb/upload/rexiaoshangpin_tupian3.jpg','通用','适用阶段3','全新','商品规格3','商品品牌3','商家编号3','商家名称3','咨询电话3','商品详情3','2021-01-24 21:51:53',3,99.9),(34,'2021-01-24 13:51:53','商品名称4','分类4','http://localhost:8080/ssm5gyjb/upload/rexiaoshangpin_tupian4.jpg','通用','适用阶段4','全新','商品规格4','商品品牌4','商家编号4','商家名称4','咨询电话4','商品详情4','2021-01-25 07:02:02',7,99.9),(35,'2021-01-24 13:51:53','商品名称5','分类5','http://localhost:8080/ssm5gyjb/upload/rexiaoshangpin_tupian5.jpg','通用','适用阶段5','全新','商品规格5','商品品牌5','商家编号5','商家名称5','咨询电话5','商品详情5','2021-01-24 21:51:53',5,99.9),(36,'2021-01-24 13:51:53','商品名称6','分类6','http://localhost:8080/ssm5gyjb/upload/rexiaoshangpin_tupian6.jpg','通用','适用阶段6','全新','商品规格6','商品品牌6','商家编号6','商家名称6','咨询电话6','商品详情6','2021-01-25 06:58:31',8,99.9),(1611529533143,'2021-01-24 23:05:32','11','用具','http://localhost:8080/ssm5gyjb/upload/1611529503349.jpg','通用','一岁内','全新','套','AA','商家编号3','商家名称3','020-89819993','<p><img src=\"http://localhost:8080/ssm5gyjb/upload/1611529530649.jpg\"></p>','2021-01-25 07:07:42',1,22);
/*!40000 ALTER TABLE `rexiaoshangpin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangjiaxinxi`
--

DROP TABLE IF EXISTS `shangjiaxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangjiaxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangjiabianhao` varchar(200) NOT NULL COMMENT '商家编号',
  `shangjiamingcheng` varchar(200) NOT NULL COMMENT '商家名称',
  `shangjialeixing` varchar(200) NOT NULL COMMENT '商家类型',
  `jingyingfanwei` varchar(200) DEFAULT NULL COMMENT '经营范围',
  `shangjiatupian` varchar(200) DEFAULT NULL COMMENT '商家图片',
  `zixundianhua` varchar(200) DEFAULT NULL COMMENT '咨询电话',
  `shangjiajieshao` longtext COMMENT '商家介绍',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangjiabianhao` (`shangjiabianhao`),
  UNIQUE KEY `shangjiamingcheng` (`shangjiamingcheng`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='商家信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangjiaxinxi`
--

LOCK TABLES `shangjiaxinxi` WRITE;
/*!40000 ALTER TABLE `shangjiaxinxi` DISABLE KEYS */;
INSERT INTO `shangjiaxinxi` VALUES (21,'2021-01-24 13:51:53','商家编号1','商家名称1','商家类型1','经营范围1','http://localhost:8080/ssm5gyjb/upload/shangjiaxinxi_shangjiatupian1.jpg','020-89819991','商家介绍1'),(22,'2021-01-24 13:51:53','商家编号2','商家名称2','商家类型2','经营范围2','http://localhost:8080/ssm5gyjb/upload/shangjiaxinxi_shangjiatupian2.jpg','020-89819992','商家介绍2'),(23,'2021-01-24 13:51:53','商家编号3','商家名称3','商家类型3','经营范围3','http://localhost:8080/ssm5gyjb/upload/shangjiaxinxi_shangjiatupian3.jpg','020-89819993','商家介绍3'),(24,'2021-01-24 13:51:53','商家编号4','商家名称4','商家类型4','经营范围4','http://localhost:8080/ssm5gyjb/upload/shangjiaxinxi_shangjiatupian4.jpg','020-89819994','商家介绍4'),(25,'2021-01-24 13:51:53','商家编号5','商家名称5','商家类型5','经营范围5','http://localhost:8080/ssm5gyjb/upload/shangjiaxinxi_shangjiatupian5.jpg','020-89819995','商家介绍5'),(26,'2021-01-24 13:51:53','商家编号6','商家名称6','商家类型6','经营范围6','http://localhost:8080/ssm5gyjb/upload/shangjiaxinxi_shangjiatupian6.jpg','020-89819996','商家介绍6');
/*!40000 ALTER TABLE `shangjiaxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinfenlei`
--

DROP TABLE IF EXISTS `shangpinfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fenlei` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1611529453043 DEFAULT CHARSET=utf8 COMMENT='商品分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinfenlei`
--

LOCK TABLES `shangpinfenlei` WRITE;
/*!40000 ALTER TABLE `shangpinfenlei` DISABLE KEYS */;
INSERT INTO `shangpinfenlei` VALUES (11,'2021-01-24 13:51:53','衣服'),(12,'2021-01-24 13:51:53','辅食'),(13,'2021-01-24 13:51:53','用具'),(14,'2021-01-24 13:51:53','安全'),(15,'2021-01-24 13:51:53','奶粉'),(16,'2021-01-24 13:51:53','分类6'),(1611529453042,'2021-01-24 23:04:12','婴儿玩具');
/*!40000 ALTER TABLE `shangpinfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611529328999 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1611529254611,'2021-01-24 23:00:54',1611529195955,31,'rexiaoshangpin','合生元奶粉','http://localhost:8080/ssm5gyjb/upload/rexiaoshangpin_tupian1.jpg'),(1611529328998,'2021-01-24 23:02:08',1611529195955,21,'shangjiaxinxi','商家名称1','http://localhost:8080/ssm5gyjb/upload/shangjiaxinxi_shangjiatupian1.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','nkki1vwbckr2xbpz15eblncg2vx23w9v','2021-01-24 22:51:31','2021-01-25 00:08:56'),(2,42,'001','yonghu','用户','srg4rc8i4ddsqnds8mbr2o8c48row3a1','2021-01-24 22:56:30','2021-01-24 23:56:31'),(3,1611529195955,'666','yonghu','用户','w3u25su8l0tfra72il9oh98d01cswdqp','2021-01-24 23:00:02','2021-01-25 00:09:15');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-01-24 13:51:53'),(2,'000','000','管理员','2021-01-24 23:06:06');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1611529195956 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (42,'2021-01-24 13:51:53','001','001','小吴','女','http://localhost:8080/ssm5gyjb/upload/yonghu_touxiang2.jpg','13823888882','773890002@qq.com',600.1),(43,'2021-01-24 13:51:53','用户3','123456','姓名3','男','http://localhost:8080/ssm5gyjb/upload/yonghu_touxiang3.jpg','13823888883','773890003@qq.com',100),(44,'2021-01-24 13:51:53','用户4','123456','姓名4','男','http://localhost:8080/ssm5gyjb/upload/yonghu_touxiang4.jpg','13823888884','773890004@qq.com',100),(45,'2021-01-24 13:51:53','用户5','123456','姓名5','男','http://localhost:8080/ssm5gyjb/upload/yonghu_touxiang5.jpg','13823888885','773890005@qq.com',100),(46,'2021-01-24 13:51:53','用户6','123456','姓名6','男','http://localhost:8080/ssm5gyjb/upload/yonghu_touxiang6.jpg','13823888886','773890006@qq.com',100),(1611529195955,'2021-01-24 22:59:55','666','666','小李','女','http://localhost:8080/ssm5gyjb/upload/1611529206007.jpg','16459878985','16232@123.com',444.1);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-26 17:15:25
