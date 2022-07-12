-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: xiaomi
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `consumer`
--

DROP TABLE IF EXISTS `consumer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consumer` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `username` varchar(50) NOT NULL COMMENT '用户账号',
  `password` varchar(50) NOT NULL COMMENT '用户密码',
  `email` varchar(50) DEFAULT '待完善' COMMENT '电子邮箱',
  `phone` varchar(20) DEFAULT '待完善' COMMENT '联系方式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumer`
--

LOCK TABLES `consumer` WRITE;
/*!40000 ALTER TABLE `consumer` DISABLE KEYS */;
INSERT INTO `consumer` (`id`, `username`, `password`, `email`, `phone`) VALUES (1,'monster','123456','monster@monster.com','18202775432'),(3,'monsterwolf','123456','wolfwolf@wolf.com','13312345672');
/*!40000 ALTER TABLE `consumer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goods` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '商品编号',
  `name` varchar(100) NOT NULL COMMENT '商品名称',
  `price` double NOT NULL COMMENT '商品单价',
  `stock` int DEFAULT '0' COMMENT '商品库存',
  `goods_type_id` int NOT NULL COMMENT '商品类型',
  `remark` text COMMENT '商品描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=123126 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` (`id`, `name`, `price`, `stock`, `goods_type_id`, `remark`) VALUES (1,'小米11',3199,100,10001,'骁龙888｜2K AMOLED 四曲面柔性屏｜1亿像素三摄｜时尚轻薄机身｜55W 有线闪充｜50W 无线闪充｜10W 无线反充｜LPDDR5｜WiFi6（增强版）｜视频「超级夜景」｜哈曼卡顿音频认证｜立体声双扬声器'),(2,'小米10至尊纪念版',5599,100,10001,'120X 超远变焦 / 120W 秒充科技 / 120Hz刷新率 + 240Hz采样率 / 骁龙865旗舰处理器 / 双模5G / 10倍混合光学变焦 / OIS光学防抖+EIS数字防抖 / 2000万超清前置相机 / 双串蝶式石墨烯基锂离子电池 / 等效4500mAh大电量 / 120W 有线秒充+50W无线秒充+10W无线反充 / WiFi 6 / 多功能NFC / 红外遥控'),(3,'小米Civi',2599,100,10001,'轻薄潮流设计 | 丝绒AG工艺 | 原生美肌人像 | 像素级肌肤焕新技术 | 3200万高清质感自拍 | 双柔光灯+自动对焦 | 3D曲面OLED柔性屏 | 120Hz+Dolby Vision | 4500mAh 大电量 | 55W有线闪充 | 立体声双扬声器 | 多功能NFC'),(4,'小米11 Pro',3399,100,10001,'1/1.12\'\'GN2｜骁龙888｜2K四微曲屏｜IP68级防水｜67W 有线闪充｜67W 无线闪充｜10W 无线反充｜5000mAh超大电池｜LPDDR5｜WiFi6（增强版）｜哈曼卡顿音频认证｜立体声双扬声器'),(5,'小米MIX4',4499,100,10001,'CUP全面屏 | 真彩原色 + 120Hz | 一体化轻量陶瓷机身 | 高通骁龙™888+ | WiFi 6 增强版 | 石墨烯「冰封」散热系统4500mAh 大电量 | 常温 120W 快充 | 50W 无线快充 | 1 亿像素电影相机'),(6,'小米MIX FOLD',6999,100,10001,'8.01\'\'折叠大屏｜澎湃C1自研专业影像芯片｜液态镜头｜1亿像素｜骁龙888｜67W快充｜5020mAh超大电池｜LPDDR5满血版｜WiFi6（增强版）｜哈曼卡顿立体声四扬声器'),(7,'小米12X',2699,100,10001,'骁龙870｜12bit 超视感屏｜黄金尺寸｜5000万疾速影像，3200万自拍｜对称立体声'),(8,'小米11 Ultra',3999,100,10001,'1/1.12\'\'GN2｜128°超广角｜120X超长焦｜2K四微曲屏｜骁龙888｜IP68级防水｜67W 有线闪充｜67W 无线闪充｜10W 无线反充｜5000mAh超大电池｜LPDDR5｜WiFi6（增强版）｜哈曼卡顿音频认证｜立体声双扬声器'),(9,'Redmi Note9',1149,100,10002,'天玑 800U处理器｜4800万像素主摄｜6.53英寸超高清小孔全面屏｜小金刚品质｜5000mAh+18W快充｜双5G待机｜侧边指纹识别｜线性马达｜红外遥控'),(10,'Redmi K50',2199,100,10002,'天玑8100｜67W快充｜5500mAh大电池｜2K超清直屏｜像素加倍｜清晰加倍｜VC液冷散热｜OIS光学防抖｜杜比视界｜索尼4800万像素相机'),(11,'Redmi K50 Pro',2699,100,10002,'天玑9000｜120W秒充｜5000mAh电池｜三星2K直屏｜VC液冷散热｜OIS光学防抖｜1亿像素'),(12,'Redmi 10A',649,100,10002,'6.53\"大尺寸屏幕｜1300万超清主摄｜Helio G25八核处理器｜5000mAh充电宝级大电量｜观看轻松也清晰｜支持大字阅读｜聊天看书更省力'),(13,'Redmi Note 11T Pro',1699,100,10002,'天玑8100｜144Hz高配LCD屏幕｜6400万像素｜VC液冷散热'),(14,'Redmi 9A',599,100,10002,'6.53\"超大护眼屏幕｜ 5000mAh长循环大电量｜ 大音量扬声器 ｜1300万AI相机 ｜人脸解锁｜G25八核处理器'),(15,'Redmi K40S',1899,100,10002,'骁龙870｜三星 E4直屏｜67W旗舰快充｜OIS光学防抖｜电竞级VC液冷｜4500mAh｜杜比全景声｜立体双扬声器｜潮流小立边'),(16,'小米电视4A 60英寸',2499,100,20001,'4K超高清 | 语音控制 | 2+8GB大存储'),(17,'小米电视4A 70英寸 ',3199,100,20001,'4K超高清 | 人工智能语音系统 | 蓝牙语音遥控器'),(18,'小米电视EA55 2022款55英寸',1499,100,20001,'金属全面屏 | 4K超高清 | 远场语音'),(19,'小米电视EA70 2022款70英寸',2399,100,20001,'金属全面屏 | 4K超高清 | 远场语音'),(20,'小米电视EA50 2022款50英寸',1299,100,20001,'金属全面屏 | 4K超高清 | 远场语音'),(21,'小米电视EA43 2022款43英寸',899,100,20001,'金属全面屏 | 蓝牙语音 | 全高清'),(22,'Redmi AI智能电视 X65 65英寸',2599,100,20002,'4K超高清画质 | MEMC运动补偿 | 2GB+32GB'),(23,'红米电视 X55 55英寸',1679,100,20002,'金属全面屏 | MEMC运动补偿 | 远场语音'),(24,'Redmi Max 98英寸',19999,100,20002,'120Hz高刷新率 | 4GB+64GB | MEMC运动补偿'),(25,'Redmi MAX 100\" 巨屏电视',19999,100,20002,'100吋超大屏 | 双120Hz高刷屏 | 金属全面屏'),(26,'RedmiBook Pro 14 2022 锐龙版',4499,100,30002,'全新锐龙6000H处理器！618直降800！到手价4499起！晒单再赢100元红包大礼！可选全新R7 6800H处理器，2.5K 120Hz高清屏，CNC一体精雕工艺'),(27,'RedmiBook Pro 15 2022 锐龙版',4699,100,30002,'超级上新！全新锐龙6000H处理器！618直降800！到手价4699起！晒单再赢100元红包大礼！可选全新R7 6800H处理器，3.2K 90Hz高清屏，RTX 2050高性能独立显卡，CNC一体精雕工艺'),(28,'Redmibook Pro 14 锐龙版',3799,100,30002,'2.5K超视网膜全面屏 | 一体精雕工艺'),(29,'小米笔记本 Pro 14 锐龙版',4299,100,30001,'特惠4299起！限时米金兑换券再减120元，到手价4179起！货源有限，即刻相拥>>超视网膜流速屏，动力升级全「芯」超越'),(30,'小米笔记本Pro X 14',7499,100,30001,'将一块高性能光追显卡装入轻薄本，超视网膜屏、高端工艺、智能体验，轻薄性能，小米笔记本Pro X 14，由此诞生。'),(31,'Redmi G 2021 锐龙版',6499,100,30002,'RTX™ 3060光追独显与硬核锐龙芯梦幻联合，迎来游戏性能释放新境界。视野再突破，天生为赢而战，全方位为热爱进阶，Redmi G 2021 锐龙版，实力超能打。');
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_cart`
--

DROP TABLE IF EXISTS `goods_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goods_cart` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '购物编号',
  `goods_id` int NOT NULL COMMENT '商品编号',
  `buy_count` int DEFAULT '1' COMMENT '购买数量',
  `add_date` datetime DEFAULT NULL COMMENT '添加时间',
  `subtotal` double DEFAULT NULL COMMENT '小计金额',
  `consumer_id` int NOT NULL COMMENT '所属用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_cart`
--

LOCK TABLES `goods_cart` WRITE;
/*!40000 ALTER TABLE `goods_cart` DISABLE KEYS */;
INSERT INTO `goods_cart` (`id`, `goods_id`, `buy_count`, `add_date`, `subtotal`, `consumer_id`) VALUES (18,2,1,'2022-06-03 19:52:08',5599,1),(24,1,1,'2022-06-07 09:19:49',3199,1),(25,11,1,'2022-06-07 09:19:53',2699,1),(27,1,1,'2022-06-12 16:03:51',3199,3);
/*!40000 ALTER TABLE `goods_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_images`
--

DROP TABLE IF EXISTS `goods_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goods_images` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '图片编号',
  `path` varchar(200) NOT NULL COMMENT '图片路径',
  `title` varchar(100) DEFAULT '小米品质' COMMENT '图片主题',
  `alt` varchar(100) DEFAULT '小米品质' COMMENT '图片描述',
  `goods_id` int NOT NULL COMMENT '所属商品',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_images`
--

LOCK TABLES `goods_images` WRITE;
/*!40000 ALTER TABLE `goods_images` DISABLE KEYS */;
INSERT INTO `goods_images` (`id`, `path`, `title`, `alt`, `goods_id`) VALUES (1,'images/goods1.jpg','小米11','8GB+256GB',1),(2,'images/goods2.jpg','小米10至尊纪念版','8GB+256GB',2),(3,'images/goods3.jpg','小米Civi','8GB+128GB',3),(4,'images/goods4.png','小米11 Pro','8GB+256GB',4),(5,'images/goods5.jpg','小米MIX4','8GB+256GB',5),(6,'images/goods6.jpg','小米MIX FOLD','8GB+256GB',6),(7,'images/goods7.png','小米12X','8GB+128GB',7),(8,'images/goods8.png','小米11 Ultra','8GB+256GB',8),(9,'images/goods9.png','Redmi Note9','8GB+128GB',9),(60,'images/goods10.png','Redmi K50','8GB+128GB',10),(61,'images/goods11.png','Redmi K50 Pro','8GB+128GB',11),(62,'images/goods12.jpg','Redmi 10A','8GB+128GB',12),(63,'images/goods13.png','Redmi Note 11T Pro','8GB+128GB',13),(64,'images/goods14.jpg','Redmi 9A','8GB+128GB',14),(65,'images/goods15.png','Redmi K40S','8GB+128GB',15),(66,'images/goods16.png','小米电视4A 60英寸','小米品质',16),(67,'images/goods17.jpg','小米电视4A 70英寸 ','小米品质',17),(68,'images/goods18.png','小米电视EA55 2022款55英寸','小米品质',18),(69,'images/goods19.png','小米电视EA70 2022款70英寸','小米品质',19),(70,'images/goods20.png','小米电视EA50 2022款50英寸','小米品质',20),(71,'images/goods21.png','小米电视EA43 2022款43英寸','小米品质',21),(72,'images/goods22.png','Redmi AI智能电视 X65 65英寸','小米品质',22),(73,'images/goods23.jpg','红米电视 X55 55英寸','小米品质',23),(74,'images/goods24.jpg','Redmi Max 98英寸','小米品质',24),(75,'images/goods25.jpg','Redmi MAX 100\" 巨屏电视','小米品质',25),(76,'images/goods26.jpg','RedmiBook Pro 14 2022 锐龙版','小米品质',26),(77,'images/goods27.jpg','RedmiBook Pro 15 2022 锐龙版','小米品质',27),(78,'images/goods28.jpg','Redmibook Pro 14 锐龙版','小米品质',28),(79,'images/goods29.jpg','小米笔记本 Pro 14 锐龙版','小米品质',29),(80,'images/goods30.jpg','小米笔记本Pro X 14','小米品质',30),(81,'images/goods31.jpg','Redmi G 2021 锐龙版','小米品质',31),(85,'/images/53e13627546846a9a6adaaeb5293d068.jpeg','Redmi测试手机','测试专用哦',123124);
/*!40000 ALTER TABLE `goods_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_order`
--

DROP TABLE IF EXISTS `goods_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goods_order` (
  `id` varchar(50) NOT NULL COMMENT '订单编号',
  `order_date` datetime DEFAULT NULL COMMENT '下单时间',
  `consumer_id` int NOT NULL COMMENT '所属用户',
  `status` varchar(10) DEFAULT '待付款' COMMENT '订单状态(待付款|已付款|已发货|已收货)',
  `goods_shipping_address_id` int NOT NULL COMMENT '收货地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_order`
--

LOCK TABLES `goods_order` WRITE;
/*!40000 ALTER TABLE `goods_order` DISABLE KEYS */;
INSERT INTO `goods_order` (`id`, `order_date`, `consumer_id`, `status`, `goods_shipping_address_id`) VALUES ('1654342336074','2022-06-04 19:32:16',1,'待付款',1),('1654356840156','2022-06-04 23:34:00',1,'待付款',1),('1654518150643','2022-06-06 20:22:31',1,'待付款',1),('1654529414088','2022-06-06 23:30:14',1,'待付款',1),('1654561405471','2022-06-07 08:23:25',1,'待付款',1),('1654561464905','2022-06-07 08:24:25',1,'待付款',1),('1654561540838','2022-06-07 08:25:41',1,'待付款',1),('1654951633206','2022-06-11 20:47:13',3,'待付款',3),('1655022730959','2022-06-12 16:32:11',3,'待付款',3);
/*!40000 ALTER TABLE `goods_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_order_item`
--

DROP TABLE IF EXISTS `goods_order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goods_order_item` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '订单编号',
  `goods_id` int NOT NULL COMMENT '购买商品编号',
  `goods_img` varchar(200) NOT NULL COMMENT '商品图片',
  `goods_price` double NOT NULL COMMENT '成交金额',
  `goods_count` int NOT NULL COMMENT '成交数量',
  `goods_subtotal` double DEFAULT NULL COMMENT '小计金额',
  `goods_order_id` varchar(50) NOT NULL COMMENT '所属订单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_order_item`
--

LOCK TABLES `goods_order_item` WRITE;
/*!40000 ALTER TABLE `goods_order_item` DISABLE KEYS */;
INSERT INTO `goods_order_item` (`id`, `goods_id`, `goods_img`, `goods_price`, `goods_count`, `goods_subtotal`, `goods_order_id`) VALUES (6,7,'images/goods7.png',2699,3,8097,'1654342336074'),(7,2,'images/goods2.jpg',5599,1,5599,'1654342336074'),(8,2,'images/goods2.jpg',5599,1,5599,'1654356840156'),(9,16,'images/goods16.png',2499,3,7497,'1654356840156'),(10,14,'images/goods14.jpg',599,2,1198,'1654518150643'),(11,2,'images/goods2.jpg',5599,1,5599,'1654518150643'),(12,9,'images/goods9.png',1149,2,2298,'1654518150643'),(13,16,'images/goods16.png',2499,3,7497,'1654529414088'),(14,9,'images/goods9.png',1149,2,2298,'1654529414088'),(15,3,'images/goods3.jpg',2599,1,2599,'1654529414088'),(16,3,'images/goods3.jpg',2599,1,2599,'1654561405471'),(17,14,'images/goods14.jpg',599,2,1198,'1654561464905'),(18,13,'images/goods13.png',1699,1,1699,'1654561540838'),(19,2,'images/goods2.jpg',5599,1,5599,'1654951633206'),(20,29,'images/goods29.jpg',4299,1,4299,'1654951633206'),(21,29,'images/goods29.jpg',4299,1,4299,'1655022730959'),(22,20,'images/goods20.png',1299,1,1299,'1655022730959');
/*!40000 ALTER TABLE `goods_order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_shipping_address`
--

DROP TABLE IF EXISTS `goods_shipping_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goods_shipping_address` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '地址编号',
  `name` varchar(50) NOT NULL COMMENT '收货人姓名',
  `phone` varchar(20) NOT NULL COMMENT '收货人联系方式',
  `email` varchar(20) DEFAULT NULL COMMENT '收货人电子邮箱',
  `province` varchar(10) DEFAULT NULL COMMENT '省区',
  `city` varchar(10) DEFAULT NULL COMMENT '市区',
  `country` varchar(10) DEFAULT NULL COMMENT '县区',
  `street` varchar(100) DEFAULT NULL COMMENT '街道',
  `remark` text COMMENT '描述',
  `consumer_id` int NOT NULL COMMENT '所属用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_shipping_address`
--

LOCK TABLES `goods_shipping_address` WRITE;
/*!40000 ALTER TABLE `goods_shipping_address` DISABLE KEYS */;
INSERT INTO `goods_shipping_address` (`id`, `name`, `phone`, `email`, `province`, `city`, `country`, `street`, `remark`, `consumer_id`) VALUES (1,'严格啊','18212387465','yange@yange.com','安徽省','安庆市','宜秀区','一宿街道','安庆市火车站',1),(3,'严格','13312345678','wolf@wolf.com','湖北省','孝感市','孝南区','广场街道','湖北工程学院',3);
/*!40000 ALTER TABLE `goods_shipping_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_type`
--

DROP TABLE IF EXISTS `goods_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goods_type` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '商品类型编号',
  `name` varchar(100) NOT NULL COMMENT '商品类型名称',
  `pid` int DEFAULT NULL COMMENT '上级类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1234556 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_type`
--

LOCK TABLES `goods_type` WRITE;
/*!40000 ALTER TABLE `goods_type` DISABLE KEYS */;
INSERT INTO `goods_type` (`id`, `name`, `pid`) VALUES (101,'手机',NULL),(102,'电视 盒子',NULL),(103,'笔记本 平板',NULL),(104,'家电 插线板',NULL),(105,'出行 穿戴',NULL),(106,'智能 路由器',NULL),(107,'电源 配件',NULL),(108,'健康 儿童',NULL),(109,'耳机 音箱',NULL),(110,'生活 箱包',NULL),(10001,'小米手机',101),(10002,'Redmi手机',101),(20001,'小米电视',102),(20002,'Redmi电视',102),(30001,'小米笔记本',103),(30002,'Redmi笔记本',103);
/*!40000 ALTER TABLE `goods_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poweruser`
--

DROP TABLE IF EXISTS `poweruser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `poweruser` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '管理员ID,默认主键',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名默认admin,不建议修改',
  `password` varchar(255) DEFAULT NULL COMMENT '管理员密码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `poweruser_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poweruser`
--

LOCK TABLES `poweruser` WRITE;
/*!40000 ALTER TABLE `poweruser` DISABLE KEYS */;
INSERT INTO `poweruser` (`id`, `username`, `password`) VALUES (1,'admin','admin');
/*!40000 ALTER TABLE `poweruser` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-12 23:46:42
