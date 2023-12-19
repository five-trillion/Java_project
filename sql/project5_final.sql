-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: shop
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `answer`
--

DROP TABLE IF EXISTS `answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answer` (
  `boardNo` int NOT NULL,
  `ansTitle` varchar(50) NOT NULL,
  `ansContent` varchar(1000) NOT NULL,
  `ansReg` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`boardNo`),
  CONSTRAINT `answer_ibfk_1` FOREIGN KEY (`boardNo`) REFERENCES `board` (`boardNo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer`
--

LOCK TABLES `answer` WRITE;
/*!40000 ALTER TABLE `answer` DISABLE KEYS */;
INSERT INTO `answer` VALUES (19,'답변드립니다.','안녕하세요. 관심 가져주셔서 감사합니다.\r\n\r\n다른 용량은 내년 출시 예정입니다.\r\n\r\n앞으로도 많은 관심 부탁드립니다.','2023-12-19 13:13:16');
/*!40000 ALTER TABLE `answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board` (
  `boardNo` int NOT NULL AUTO_INCREMENT,
  `userNo` int NOT NULL,
  `boardClass` int NOT NULL,
  `boardTitle` varchar(50) NOT NULL,
  `boardContent` varchar(1000) NOT NULL,
  `boardReg` datetime DEFAULT CURRENT_TIMESTAMP,
  `boardUpdate` datetime DEFAULT CURRENT_TIMESTAMP,
  `boardImg` varchar(1000) DEFAULT NULL,
  `boardCnt` int DEFAULT NULL,
  `secretYn` int DEFAULT '1',
  `secretPw` int DEFAULT NULL,
  PRIMARY KEY (`boardNo`),
  KEY `userNo` (`userNo`),
  CONSTRAINT `board_ibfk_1` FOREIGN KEY (`userNo`) REFERENCES `users` (`userNo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (13,13,3,'추워서 콧물이 얼어버렸어요','다행히 털뚠이라 추워하는 기색은 없었는데\r\n산책하고나니 코에 얼음이 잔뜩 ㅋㅋㅋ;;;\r\n날이 많이 춥긴 했나봐요','2023-12-19 09:25:37','2023-12-19 09:25:37','bc833b7b-4ab8-402f-b88d-7f4f3420777c_498-image_picker_DE5FC0D4-F9E6-4339-BB37-F522BF65A655-17961-000008D39956F0D5-min.jpg',9,1,NULL),(14,6,3,'저희집 강쥐 ㅎㅎ','강아지의 시간은 빨리 흘러가서 너무 슬퍼여ㅠㅠ\r\n불과 2년전인데 지금은 잠만 자기 바쁘네요','2023-12-19 09:28:27','2023-12-19 09:28:27','d53e0f69-a62a-4a4d-bf64-60b077f75d52_351-image_picker_7C3D4C7A-062B-495B-993B-2CBF4991C631-18258-000011D0B3FAFDED.png',3,1,NULL),(15,6,3,'아픈건가요','집에 보일러두 안 틀었구 서늘한게 추운데 계속어제부터 헥헥 거리구 물도 평소에 마실때 마다 코에 물이 들어가서 거위소리두 내구여 코도 심하게 핡아요 ㅜㅜ 코도 좀 뜨겁구 열나는것 같아요 ㅜㅜ\r\n그리구 자꾸 골골거리는 소리를 내요 숨쉬는것도 불편해보이구 ㅜㅜ(강아지는 말티즈 남자 4킬로에여 ㅜㅜ)','2023-12-19 09:29:39','2023-12-19 09:29:39',NULL,2,1,NULL),(16,6,3,'추위에 강한 댕댕이??','저는 추워서 덜덜인데 코코는 추위에\r\n강해서 나가면 신나서 지칠줄 모르더라구요\r\nㅋㅋㅋ 집에서도 더워서 현관문가서ㅜ자는\r\n댕댕이.. ㅋㅋㅋ','2023-12-19 09:30:54','2023-12-19 09:30:54','ed1f6f4c-8ba9-4007-8ccf-4506697821bb_222-image_picker_7A991ED0-FE1D-4B62-811F-B49FE3199733-7888-00000521A1E50586.jpg',11,1,NULL),(17,1,1,'<이벤트> 리뷰 작성하고 적립금 받아가세요!',' ','2023-12-19 09:35:38','2023-12-19 09:35:38','384350E18491E185B3E186ABE18491E185B3E186AB_E1848CE185A5E186A8E18485E185B5E186B8E18480E185B3E186B7_E18489E185A1E186BCE18489E185A6E18487E185A2E18482E185A5_Mjs3_Ady1.jpg',7,NULL,NULL),(18,1,1,' <공지> 교환/환불 공지',' ','2023-12-19 09:36:01','2023-12-19 09:36:01','937062ED9998EBB688EBB0B0EB848828EBACB8EAB5ACEC8898ECA095329_220715.jpg',2,NULL,NULL),(19,1,2,'담당자님 문의드립니다.','에코 10 베지테리안 강아지 건식사료 6kg\r\n\r\n다른 용량 출시 계획은 없는지 궁금합니다.','2023-12-19 09:40:16','2023-12-19 09:40:16',NULL,2,1,NULL),(21,1,1,'개인정보처리방침 사전 변경 안내','고객님께 제공되는 서비스 이용약관이 아래와 같이 일부 변경될 예정으로 사전 안내드리오니, 이용에 참고하여 주시기 바랍니다. \r\n\r\n\r\n\r\n- 변경되는 약관 : 픈픈 개인정보처리방침\r\n\r\n- 변경 사유 : 개인정보처리방침 담당자 변경\r\n\r\n- 변경 약관의 효력 발생일 : 2023년 3월 24일\r\n\r\n\r\n총 칙\r\n\r\n㈜이삼오구는 고객의 정보를 소중하게 생각하며, ‘정보통신망 이용 촉진 및 정보보호 등에 관한 법률‘, ‘개인정보보호법’ 등 개인정보보호법령을 철저히 준수합니다.\r\n\r\n 또한 아래와 같은 [개인정보 처리방침]을 제정하고 이를 준수하고 있습니다. 본 개인정보처리방침은 개인정보와 관련한 법령의 변경이 있는 경우 또는 ㈜이삼오구의 정책 변경 등의 이유로 변경 될 수 있습니다.\r\n 고객 여러분들께서는 픈픈 사이트 방문 시 수시로 확인하여 주시기 바랍니다.\r\n\r\n※ 위탁 업체 리스트는 해당 서비스 변경 및 계약기간에 따라 변경될 수 있으며 변경 시 공지사항을 통해 사전 공지합니다. 단기 이벤트는 참여 시에 개별 공지됩니다.\r\n\r\n제1조 개인정보의 수집항목 및 이용 목적\r\n\r\n\"고객은 사이트 회원 가입시 회원 약관, 개인정보 수집 및 이용 내용에 대해 「동의함」 버튼을 클릭할 수 있는 절차를 마련하여,\r\n 「동의함」 버튼을 클릭하면 개인정보 수집 및 이용에 대해 동의한 것으로 봅니다.\"','2023-12-19 13:22:12','2023-12-19 13:22:12',NULL,0,NULL,NULL);
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_reply`
--

DROP TABLE IF EXISTS `board_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_reply` (
  `boRepNo` int NOT NULL AUTO_INCREMENT,
  `boardNo` int NOT NULL,
  `userNo` int NOT NULL,
  `boRepContent` varchar(1000) DEFAULT NULL,
  `boRepReg` datetime DEFAULT CURRENT_TIMESTAMP,
  `boRepUpdate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`boRepNo`),
  KEY `boardNo` (`boardNo`),
  KEY `userNo` (`userNo`),
  CONSTRAINT `board_reply_ibfk_1` FOREIGN KEY (`boardNo`) REFERENCES `board` (`boardNo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `board_reply_ibfk_2` FOREIGN KEY (`userNo`) REFERENCES `users` (`userNo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_reply`
--

LOCK TABLES `board_reply` WRITE;
/*!40000 ALTER TABLE `board_reply` DISABLE KEYS */;
INSERT INTO `board_reply` VALUES (41,13,4,'콧물이 얼었다...ㅋㅋㅋ 귀엽네요!','2023-12-19 09:27:00','2023-12-19 09:27:00'),(42,13,6,'영하 15~16도에도 추워하지 않는 스피츠 멍멍이... 귀여워요 ㅎㅎ','2023-12-19 09:27:28','2023-12-19 09:27:28'),(43,14,13,'ㅎㅎ귀엽네요','2023-12-19 11:48:28','2023-12-19 11:48:28'),(44,16,16,'너무귀여워요','2023-12-19 13:19:31','2023-12-19 13:19:31');
/*!40000 ALTER TABLE `board_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `cartNo` int NOT NULL AUTO_INCREMENT,
  `userNo` int NOT NULL,
  `prodNo` varchar(20) NOT NULL,
  `orderCnt` int DEFAULT NULL,
  `cartReg` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`cartNo`),
  KEY `userNo` (`userNo`),
  KEY `prodNo` (`prodNo`),
  CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`userNo`) REFERENCES `users` (`userNo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`prodNo`) REFERENCES `product` (`prodNo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `code`
--

DROP TABLE IF EXISTS `code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `code` (
  `codeId` varchar(20) NOT NULL,
  `codeNum` varchar(5) NOT NULL,
  `codeName` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`codeId`,`codeNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `code`
--

LOCK TABLES `code` WRITE;
/*!40000 ALTER TABLE `code` DISABLE KEYS */;
INSERT INTO `code` VALUES ('admin','0','관리자'),('admin','1','고객'),('boardClass','1','공지'),('boardClass','2','질의'),('boardClass','3','자유'),('brand','ae','애니멀에센셜'),('brand','an','애니먼'),('brand','bp','벅스펫'),('brand','dk','달링키친'),('brand','it','ITI'),('brand','jf','조피쉬'),('brand','lo','로투스'),('brand','nc','네츄럴코어'),('category','fe','간식'),('category','nf','사료'),('category','sn','영양제'),('eventYn','0','yes'),('eventYn','1','no'),('orderSta','0','주문완료'),('orderSta','1','배송준비중'),('orderSta','2','배송중'),('orderSta','3','배송완료'),('orderSta','4','교환신청'),('orderSta','5','교환완료'),('orderSta','6','반품신청'),('orderSta','7','반품완료'),('orderSta','9','주문취소'),('processingYn','0','yes'),('processingYn','1','no'),('secretYn','0','yes'),('secretYn','1','no');
/*!40000 ALTER TABLE `code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery` (
  `deliNo` int NOT NULL AUTO_INCREMENT,
  `orderNo` varchar(20) NOT NULL,
  `deliStart` datetime DEFAULT NULL,
  `deliInfo` varchar(10) DEFAULT NULL,
  `orderzip` varchar(10) DEFAULT NULL,
  `orderAddr` varchar(100) DEFAULT NULL,
  `recipient` varchar(20) DEFAULT NULL,
  `recipientTel` varchar(20) DEFAULT NULL,
  `recPhone` varchar(20) DEFAULT NULL,
  `recEmail` varchar(30) DEFAULT NULL,
  `deliMsg` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`deliNo`),
  KEY `orderNo` (`orderNo`),
  CONSTRAINT `delivery_ibfk_1` FOREIGN KEY (`orderNo`) REFERENCES `order_info` (`orderNo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery`
--

LOCK TABLES `delivery` WRITE;
/*!40000 ALTER TABLE `delivery` DISABLE KEYS */;
INSERT INTO `delivery` VALUES (63,'20231219_582639','2023-12-19 12:06:50','11111111','16206','경수대로 1110-39  110동 1401호','박주영','--','010-3555-9999','jypark0819@naver.com',''),(64,'20231219_280842','2023-12-19 12:34:22','222222','16491','경기도 수원시 팔달구 권광로 146 벽산그랜드코아 4층 401호','일관리','031-548-4664','031-548-4664','ezen1234@naver.com',''),(65,'20231219_813808',NULL,NULL,'33333','내 위치는 3호','김삼젠','031-333-3333','031-333-3333','threezen1234@naver.com',''),(66,'20231219_315186',NULL,NULL,'22222','내 위치는 2호','김이젠','031-222-22222','031-222-2222','twozen1234@naver.com',''),(67,'20231219_376700',NULL,NULL,'22222','내 위치는 2호','김이젠','031-222-22222','031-222-2222','twozen1234@naver.com',''),(68,'20231219_771655',NULL,NULL,'22222','내 위치는 2호','김이젠','031-222-22222','031-222-2222','twozen1234@naver.com',''),(69,'20231219_739800',NULL,NULL,'08773','서울 관악구 남부순환로166길 1  101호','박주영','031-255-1111','010-3999-1111','ezen1235@naver.com','부재시 집앞에 보관해주세요'),(70,'20231219_967157','2023-12-19 13:20:25','','08773','서울 관악구 남부순환로166길 1  101호','박이젠','031-255-2222','010-2345-2345','ezen2222@naver.com','부재시 집앞에 보관해주세요');
/*!40000 ALTER TABLE `delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_detail` (
  `orderListNo` int NOT NULL AUTO_INCREMENT,
  `orderNo` varchar(20) NOT NULL,
  `prodNo` varchar(20) NOT NULL,
  `orderCnt` int NOT NULL,
  `prodSum` int DEFAULT NULL,
  PRIMARY KEY (`orderListNo`,`orderNo`),
  KEY `prodNo` (`prodNo`),
  KEY `orderNo` (`orderNo`),
  CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`prodNo`) REFERENCES `product` (`prodNo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`orderNo`) REFERENCES `order_info` (`orderNo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` VALUES (46,'20231219_582639','AN-NU-EY-25',2,46800),(47,'20231219_280842','AE-NU-HA-30',3,99000),(48,'20231219_280842','AE-NU-HW-30',3,99000),(50,'20231219_813808','AN-SN-AU-MI',2,48000),(51,'20231219_813808','BP-FE-FT-50',3,15000),(53,'20231219_315186','AN-NU-MU-25',3,70200),(54,'20231219_376700','BP-FE-BP-1K',1,29500),(55,'20231219_771655','DK-FE-NA-HU',2,9600),(56,'20231219_739800','AN-SN-AP-SI',2,24000),(57,'20231219_739800','AN-SN-AU-MI',2,48000),(59,'20231219_967157','AN-NU-EY-25',2,46800);
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_info`
--

DROP TABLE IF EXISTS `order_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_info` (
  `orderNo` varchar(20) NOT NULL,
  `userNo` int DEFAULT NULL,
  `orderDate` datetime DEFAULT NULL,
  `orderSum` int DEFAULT NULL,
  `userPoint` int DEFAULT NULL,
  `orderFee` int DEFAULT NULL,
  `orderSta` int DEFAULT NULL,
  PRIMARY KEY (`orderNo`),
  KEY `userNo` (`userNo`),
  CONSTRAINT `order_info_ibfk_1` FOREIGN KEY (`userNo`) REFERENCES `users` (`userNo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_info`
--

LOCK TABLES `order_info` WRITE;
/*!40000 ALTER TABLE `order_info` DISABLE KEYS */;
INSERT INTO `order_info` VALUES ('20231219_280842',1,'2023-12-19 12:29:35',198000,0,3000,3),('20231219_315186',4,'2023-12-19 12:32:24',70200,0,3000,0),('20231219_376700',4,'2023-12-19 12:32:35',29500,0,3000,0),('20231219_582639',13,'2023-12-19 12:02:51',46800,0,3000,3),('20231219_739800',15,'2023-12-19 12:51:11',72000,0,3000,0),('20231219_771655',4,'2023-12-19 12:32:55',9600,0,3000,0),('20231219_813808',5,'2023-12-19 12:30:17',63000,0,3000,0),('20231219_967157',16,'2023-12-19 13:18:28',46800,0,3000,3);
/*!40000 ALTER TABLE `order_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page`
--

DROP TABLE IF EXISTS `page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `page` (
  `pagenum` int NOT NULL,
  `countperpage` int DEFAULT NULL,
  PRIMARY KEY (`pagenum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page`
--

LOCK TABLES `page` WRITE;
/*!40000 ALTER TABLE `page` DISABLE KEYS */;
/*!40000 ALTER TABLE `page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pet`
--

DROP TABLE IF EXISTS `pet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pet` (
  `petNo` int NOT NULL AUTO_INCREMENT,
  `userNo` int DEFAULT NULL,
  `petName` varchar(10) DEFAULT NULL,
  `petKind` varchar(10) DEFAULT NULL,
  `petAge` int DEFAULT NULL,
  PRIMARY KEY (`petNo`),
  KEY `userNo` (`userNo`),
  CONSTRAINT `pet_ibfk_1` FOREIGN KEY (`userNo`) REFERENCES `users` (`userNo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pet`
--

LOCK TABLES `pet` WRITE;
/*!40000 ALTER TABLE `pet` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `prodNo` varchar(20) NOT NULL,
  `category` varchar(20) NOT NULL,
  `brand` varchar(20) NOT NULL,
  `prodName` varchar(50) NOT NULL,
  `costPrice` int NOT NULL,
  `netPrice` int NOT NULL,
  `salePrice` int NOT NULL,
  `prodMainImg` varchar(50) DEFAULT NULL,
  `prodImg1` varchar(50) DEFAULT NULL,
  `prodImg2` varchar(50) DEFAULT NULL,
  `prodImg3` varchar(50) DEFAULT NULL,
  `prodImg4` varchar(50) DEFAULT NULL,
  `detailImg` varchar(50) DEFAULT NULL,
  `prodInfo` longtext,
  `prodReg` datetime DEFAULT CURRENT_TIMESTAMP,
  `prodUpdate` datetime DEFAULT CURRENT_TIMESTAMP,
  `prodRest` int DEFAULT NULL,
  `prodCnt` int DEFAULT NULL,
  PRIMARY KEY (`prodNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('AE-NU-HA-30','NU','AE','심장 팅크 30ml',63000,44000,33000,'0ccb122a35799.jpg','bae87c6936716.jpg','','','','5.jpg','천연재배 허브&약초 블랜딩   휴지기 없는 액상 영양보조제   부위별 영양보충','2023-12-15 17:32:37','2023-12-15 17:32:37',3,23),('AE-NU-HW-30','NU','AE','활력 간 팅크 30ml',63000,44000,33000,'846fe2d8c8e60.jpg','4516c1494e439.jpg','','','','8.jpg','천연재배 허브&약초 블랜딩   휴지기 없는 액상 영양보조제   부위별 영양보충','2023-12-15 17:32:37','2023-12-15 17:32:37',3,6),('AE-NU-JH-30','NU','AE','장과 호흡기 팅크 30ml',63000,44000,33000,'f79888a240ce0.jpg','ded3b39f36316.jpg','','','','9.jpg','천연재배 허브&약초 블랜딩   휴지기 없는 액상 영양보조제   부위별 영양보충','2023-12-15 17:32:37','2023-12-15 17:32:37',3,0),('AE-NU-JM-30','NU','AE','장수만세 팅크 30ml',63000,44000,33000,'11e85cfef3639.jpg','c4a97aaba1698.jpg','','','','6.jpg','천연재배 허브&약초 블랜딩   휴지기 없는 액상 영양보조제   부위별 영양보충','2023-12-15 17:32:37','2023-12-15 17:32:37',3,0),('AE-NU-JO-30','NU','AE','관절 팅크 30ml',63000,44000,33000,'1a18aa4663b82.jpg','4f36345ad08cb.jpg','','','','11.jpg','천연재배 허브&약초 블랜딩   휴지기 없는 액상 영양보조제   부위별 영양보충','2023-12-15 17:32:37','2023-12-15 17:32:37',3,4),('AE-NU-LE-30','NU','AE','밝은 눈 팅크 30ml',63000,44000,33000,'4056a8027d1bd.jpg','906d1f703fb48.jpg','','','','10.jpg','천연재배 허브&약초 블랜딩   휴지기 없는 액상 영양보조제   부위별 영양보충','2023-12-15 17:32:37','2023-12-15 17:32:37',3,1),('AE-NU-PP-10','NU','AE','플랜트엔자임 앤 프로바이오틱스 100g',63000,44000,33000,'bbf115aba5cf9.jpg','e1d370920d44a.jpg','57f4fe8ab1339.jpg','2907ca0c377d1.jpg','','4.jpg','소화효소   유산균   소화불량 완화','2023-12-15 17:32:37','2023-12-15 17:32:37',3,0),('AE-NU-SF-10','NU','AE','해조칼슘 100g',53000,37000,27500,'cbca842195cd3.jpg','e5b5822c831fd.jpg','069a92683301f.jpg','','','3.jpg','청정해역 해조류   식물성 순수 칼슘   무취 무미 가루형','2023-12-15 17:32:37','2023-12-15 17:32:37',3,2),('AE-NU-SF-34','NU','AE','해조칼슘 340g',132000,92000,69000,'07b8a9ce782e7.jpg','b8c43045eae60.jpg','11d96468f7b72.jpg','97fb1fd7cb673.jpg','','3.jpg','청정해역 해조류   식물성 순수 칼슘   무취 무미 가루형','2023-12-15 17:32:37','2023-12-15 17:32:37',3,2),('AE-NU-SO-30','NU','AE','소변 팅크 30ml',63000,44000,33000,'d71517ee8f25b.jpg','2cd319758affb.jpg','','','','7.jpg','천연재배 허브&약초 블랜딩   휴지기 없는 액상 영양보조제   부위별 영양보충','2023-12-15 17:32:37','2023-12-15 17:32:37',3,0),('AN-NU-EY-25','NU','AN','잘보일걸 눈 눈물 영양제 250g',40000,28000,23400,'f31ff0f4110f9.png','11d05ed00020b.png','c7605cb74d3c0.jpg','c7ac91098a7a6.png','eceff219ba19a.png','c224d3286bae9.png','비타민A, B, 철분으로 눈물샘 자극 완화   망막 유리, 관리   풍부한 베타카로틴','2023-12-15 17:32:41','2023-12-15 17:32:41',32,7),('AN-NU-JO-25','NU','AN','잘달릴걸 관절 골격 250g',40000,28000,23400,'dbece3d1143f0.png','e2f306da18dbb.png','3311f77eeb115.jpg','253c5b095e7d6.png','140bd19a6f812.png','2e23920d8ff3b.jpg','류마티스, 퇴행성 관절염 통증완화   염증 생성 억제   풍부한 비타민 D 칼슘 흡수력 상승','2023-12-15 17:32:41','2023-12-15 17:32:41',32,1),('AN-NU-LI-25','NU','AN','튼튼하군 간 심장 영양제 250g',40000,28000,23400,'06eaaa7db46b2.png','56f23736aa16c.png','e3fb178205d5b.jpg','c89cfdf90940a.png','8184bce4c8139.png','c5ea9bee0a5ba.jpg','하이포 알러지   휴먼 그레이드   그레인, 글루텐 프리','2023-12-15 17:32:41','2023-12-15 17:32:41',32,0),('AN-NU-MU-25','NU','AN','올인원 강아지 종합영양제 250g',40000,28000,23400,'2de6481172f5a.png','8b0cfcc4cfb4e.png','f015009cd647a.jpg','701340517bb36.png','d734c6896df6d.png','Cookie06_Cut_01.jpg','곤충 단백질, 비타민, 무기물까지 올인원 종합영양제   피모, 장건강, 눈건강, 관절, 골격, 간, 심장   밀웜 오일 코팅','2023-12-15 17:32:41','2023-12-15 17:32:41',32,1),('AN-NU-SK-25','NU','AN','매끈하군 피부 피모 250g',40000,28000,23400,'618f29ac8987e.png','c35170c395867.png','b5a7e03a51789.jpg','37ece2928c4a0.png','3b9ecca30c282.png','47e1cc9a3a58f.png','하이포 알러지   휴먼 그레이드   그레인, 글루텐 프리','2023-12-15 17:32:41','2023-12-15 17:32:41',32,0),('AN-SN-AP-SI','SN','AN','애니팝 반려견 전용 간식 시리얼 100g',22000,15000,12000,'e75910c797ac9.jpg','f1e67a8ae0434.jpg','','','','6014501cb2509.jpg','면역력, 관절건강, 눈건강, 피부건강   저칼로리 간식   맛은 기본 비쥬얼까지','2023-12-15 17:32:35','2023-12-15 17:32:35',43,5),('AN-SN-AU-MI','SN','AN','애니유 펫밀크 강아지 고양이 우유 180ml 10개입',42000,29000,24000,'04460d47423d4.jpg','febddf1e60747.jpg','8107c8d8cbe36.jpg','59ac1ad1b45ca.jpg','3876a23b0bfc8.jpg','a0fd4b0423e7d.png','단백질, 탄수화물, 지방 균형잡힌 식단   음수량 증가   1A 등급 프리미엄 원유 사용','2023-12-15 17:32:35','2023-12-15 17:32:35',45,4),('BP-FE-BG-1K','FE','BP','베지믹스 비건테라피 1kg 야채토핑후레이크',80000,56000,50000,'95192ecaead2e.jpg','dcd947e068dc5.jpg','c49ed6c0b5a09.jpg','8889145e45534.png','83485662135a6.jpg','819ee90f0072c.jpg','하이포알러제닉   수제 간식 야채 재료   국내산 농산물','2023-12-15 17:32:28','2023-12-15 17:32:28',10,1),('BP-FE-BG-50','FE','BP','베지믹스 비건테라피 50g 야채토핑후레이크',9000,6000,5000,'908c08f44332f.jpg','5d73a413631b2.jpg','3dc7a1d940b75.jpg','ce1aa5acfb8b3.jpg','75f59a926323f.png','8ab9a4efde070.jpg','하이포알러제닉   수제 간식 야채 재료   국내산 농산물','2023-12-15 17:32:28','2023-12-15 17:32:28',10,2),('BP-FE-BG-ST','FE','BP','베지믹스 베지스틱 120개입 낱개포장',65000,45000,40000,'7e8dc2c7913ad.jpg','2ecf880c29ea5.jpg','aff3aea602469.jpg','80ec4fdf5ae1c.jpg','','dc1888563697c.jpg','당근, 양배추, 단호박, 밀웜   수제 간식 야채 재료   작은 입자   국내산 농산물','2023-12-15 17:32:28','2023-12-15 17:32:28',10,0),('BP-FE-BP-1K','FE','BP','벅스독 비건포뮬러 1.2kg',48000,33000,29500,'5e51c8c47804e.jpg','80e4e8d4b15d5.jpg','c4526c1aaafdd.jpg','07fc1f9a14024.jpg','41c31603d21fa.jpg','433631a6eece7.jpg','비건사료 체중조절   9가지 야채 40%함유   오븐베이크   하이포알러제닉   휴먼그레이드','2023-12-15 17:32:28','2023-12-15 17:32:28',10,1),('BP-FE-FT-1K','FE','BP','베지믹스 푸드테라피 1kg 야채토핑후레이크',80000,56000,50000,'3a151385d49ab.jpg','c202deb2a4e84.jpg','de111b249ebaf.jpg','e6a5c1c92a15e.png','96162693869e5.jpg','819ee90f0072c.jpg','하이포알러제닉   수제 간식 야채 재료   국내산 농산물   인섹트 사료','2023-12-15 17:32:28','2023-12-15 17:32:28',10,0),('BP-FE-FT-50','FE','BP','베지믹스 푸드테라피 50g 야채토핑후레이크 인섹트 단백질포함',9000,6000,5000,'14457111eabf6.jpg','bb13dd5ea4ea5.jpg','1a7443c5400e2.jpg','4f64f78259856.jpg','41ed6fdc1f5ee.png','8ab9a4efde070.jpg','하이포알러제닉   수제 간식 야채 재료   국내산 농산물   인섹트 단백질','2023-12-15 17:32:28','2023-12-15 17:32:28',10,1),('BP-FE-OR-1K','FE','BP','벅스독 오리지널 1.2kg',48000,33000,29500,'acff95ec3ef35.jpg','905a90f40938e.jpg','7f479c7935df4.jpg','8270a49985349.jpg','dcdcbe84ba468.jpg','d3a9cce26a9ee.jpg','육류/가금류0% 곤충단백질 활용   휴먼그레이드   오븐베이크   그레인프리   하이포알러제닉','2023-12-15 17:32:28','2023-12-15 17:32:28',10,0),('BP-SN-CH-BI','SN','BP','인섹트 베지츄 비트&양배추 덴탈껌 10개입',13000,9000,8000,'5bfeae314d283.jpg','09a97170084ea.jpg','1c75e2eff0110.jpg','d390bf4163be3.jpg','231320c65ef21.jpg','cc26fa23f0824.png','1억 유산균 함유   장&면역   휴먼그레이드   치석제거   6free(글루텐,가금류,인공색소,인공량,인공감미료,호르몬제) ','2023-12-15 17:32:33','2023-12-15 17:32:33',23,0),('BP-SN-CH-BR','SN','BP','인섹트 베지츄 브로콜리&시금치 덴탈껌 10개입',13000,9000,8000,'0de12e8bec134.jpg','ddae1d7c0d9d4.jpg','db404fdd14262.jpg','d390bf4163be3.jpg','231320c65ef21.jpg','cc26fa23f0824.png','초록입홍합 함유   뼈&관절   휴먼그레이드   치석제거   6free(글루텐,가금류,인공색소,인공량,인공감미료,호르몬제) ','2023-12-15 17:32:33','2023-12-15 17:32:33',21,0),('BP-SN-CH-CA','SN','BP','인섹트 베지츄 당근&단호박 덴탈껌 10개입',13000,9000,8000,'76f6c341fcb74.jpg','6c0d52d8d91aa.jpg','5afd6352847cf.jpgS','d390bf4163be3.jpg','231320c65ef21.jpg','cc26fa23f0824.png','루테인 함유   눈&눈물 건강   휴먼그레이드   치석제거   6free(글루텐,가금류,인공색소,인공량,인공감미료,호르몬제) ','2023-12-15 17:32:33','2023-12-15 17:32:33',11,0),('DK-FE-NA-CK','FE','DK','강아지 레토르트 자연화식 닭고기',10000,7000,4800,'e4143a427e196.jpg','06bf9bed2f181.jpg','5d267d1b7c37d.jpg','1ec47e9d38848.jpg','be0e49e132c1b.jpg','ca899c001c804.jpg','상온 보관 화식   채소와 과일, 천연 재료 사용   무방부제, 무인공향료, 무착색료, 무감미료   100g 기준 205Kcal','2023-11-10 00:00:00','2023-11-10 00:00:00',10,2),('DK-FE-NA-CO','FE','DK','강아지 레토르트 자연화식 소고기&닭고기',10000,7000,4800,'fb21bc393336a.jpg','a83b187e863db.jpg','2b3064de7d5b4.jpg','fbef66c086d7d.jpg','fc67fe20278fc.jpg','dad307bf1c11f.jpg','상온 보관 화식   채소와 과일, 천연 재료 사용   무방부제, 무인공향료, 무착색료, 무감미료   100g 기준 205Kcal','2023-11-10 00:00:00','2023-11-10 00:00:00',10,0),('DK-FE-NA-HU','FE','DK','강아지 레토르트 자연화식 오리고기',10000,7000,4800,'7fec0e7fa2bd2.jpg','d17766ef6c44f.jpg','801deb486f906.jpg','4afe6d355ab03.jpg','3fafe34fe34ce.jpg','2edbd51775018.jpg','상온 보관 화식   채소와 과일, 천연 재료 사용   무방부제, 무인공향료, 무착색료, 무감미료   100g 기준 205Kcal','2023-11-10 00:00:00','2023-11-10 00:00:00',10,1),('DK-FE-NA-SM','FE','DK','강아지 레토르트 자연화식 연어',10000,7000,4800,'c484425746178.jpg','f5bf015a2758e.jpg','2bbf84600539e.jpg','e61e8cd5c8455.jpg','84bfe14fb9786.jpg','34f9b36a87a2b.jpg','상온 보관 화식   채소와 과일, 천연 재료 사용   무방부제, 무인공향료, 무착색료, 무감미료   100g 기준 205Kcal','2023-11-10 00:00:00','2023-11-10 00:00:00',10,0),('DK-FE-SS-SM','FE','DK','강아지 습식 영양포켓 연어 2캔 1세트 (36세트)',275000,192000,144000,'ba0d2da056a76.jpg','89d42f86d9573.jpg','38e29f4c4bd88.jpg','6f1fbbe3ef183.jpg','3124ee851e286.jpg','50f8e0e89c7ff.jpg','피모건강 & 숙면   코엔자임 Q10함유   수분 함량 90% 수분공급','2023-11-11 00:00:00','2023-11-12 00:00:00',40,0),('IT-SN-CU-CK','SN','IT','컷츠 치킨 앤 마누카허니 100g 그레인프리 간식',19000,13000,10000,'f247c1c71faae.jpg','844b13a4df91a.jpg','','','','770cb66663f54.jpg','자연건조   그레인프리   90%생고기   강아지 고양이 동시급여   인공첨가물 무첨가 GMO 무첨가','2023-12-15 17:32:29','2023-12-15 17:32:29',12,3),('IT-SN-HJ-CO','SN','IT','힙 앤 조인트 소고기 져키 100g 그레인프리 간식',19000,13000,10000,'170a066627814.jpg','8a3fcf7031a0e.jpg','','','','f9a42357bb4c2.jpg','자연건조   그레인프리   90%생고기   강아지 고양이 동시급여   인공첨가물 무첨가 GMO 무첨가','2023-11-16 00:00:00','2023-11-16 00:00:00',15,2),('IT-SN-QC-CO','SN','IT','큐레이티드 컷츠 소고기 100g 그레인프리 간식',19000,13000,10000,'0bac93eeaabb4.jpg','f9d32f0df1800.jpg','','','','760b1fd28a3fb.jpg','자연건조   그레인프리   90%생고기   강아지 고양이 동시급여   인공첨가물 무첨가 GMO 무첨가','2023-12-15 17:32:29','2023-12-15 17:32:29',14,0),('IT-SN-SC-SH','SN','IT','스킨 앤 코트 양고기 저키 100g 그레인프리 간식',19000,13000,10000,'715284e8abca4.jpg','71addb57c5ac8.jpg','','','','d8970f5d36888.jpg','자연건조   그레인프리   90%생고기   강아지 고양이 동시급여   인공첨가물 무첨가 GMO 무첨가','2023-11-16 00:00:00','2023-11-17 00:00:00',10,0),('JF-SN-ID-CD','SN','JF','조피쉬 동결건조 대구 트릿 8g 30개',155000,108000,75000,'e840b6446be60.jpg','4207afad60119.jpg','e23692e602424.jpg','','','a12a1aa3f8213.jpg','위생 낱개포장   휴대용 산책용   첨가물 ZERO   강아지 고양이 동시 급여가능','2023-12-15 17:32:31','2023-12-15 17:32:31',35,0),('JF-SN-ID-CK','SN','JF','조피쉬 동결건조 닭고기 트릿 12g 30개',155000,108000,75000,'d7c7eaee51278.jpg','3c7a71489ad82.jpg','8bae49b74c74d.jpg','','','4a7b333d7ed0d.jpg','위생 낱개포장   휴대용 산책용   첨가물 ZERO   강아지 고양이 동시 급여가능','2023-12-15 17:32:31','2023-12-15 17:32:31',35,0),('JF-SN-ID-CO','SN','JF','조피쉬 동결건조 트릿 콤보 30개',155000,108000,75000,'5aeb1fd726109.jpg','4df95c4bf2af8.jpg','','','','0bd912b2f28c7.jpg','위생 낱개포장   휴대용 산책용   첨가물 ZERO   강아지 고양이 동시 급여가능','2023-11-10 00:00:00','2023-11-12 00:00:00',30,0),('JF-SN-ID-DU','SN','JF','조피쉬 동결건조 오리 트릿 9g 30개',155000,108000,75000,'d574832cd9513.jpg','a44057e243b0d.jpg','e4159e4087c07.jpg','','','e05d97eebc2c3.jpg','위생 낱개포장   휴대용 산책용   첨가물 ZERO   강아지 고양이 동시 급여가능','2023-11-10 00:00:00','2023-11-13 00:00:00',20,0),('JF-SN-ID-LV','SN','JF','조피쉬 동결건조 닭고기간 트릿 12g 30개',129000,90000,63000,'8af9092b18731.jpg','cb84bd092bf0a.jpg','ea0403d3d0848.jpg','','','38398773dbc18.jpg','위생 낱개포장   휴대용 산책용   첨가물 ZERO   강아지 고양이 동시 급여가능','2023-12-15 17:32:31','2023-12-15 17:32:31',35,0),('JF-SN-ID-SM','SN','JF','조피쉬 동결건조 연어 트릿 12g 30개',190000,133000,93000,'853dfb271b0e3.jpg','ac033ff7eea11.jpg','5e458decd495a.jpg','','','76a3e946289fc.jpg','위생 낱개포장   휴대용 산책용   첨가물 ZERO   강아지 고양이 동시 급여가능','2023-12-15 17:32:31','2023-12-15 17:32:31',35,0),('LO-FE-AC-2K','FE','LO','오븐 베이키드 도그 치킨 전연령 2.27kg 강아지 베이크사료',143000,100000,70000,'2eb83c1cf76a7.jpg','7890c80f41ea9.jpg','','','','49b132437d241.jpg','로우 전분 함량   오븐 베이킹   칼슘&인 비용 최적화   인공착향료 무첨가','2023-11-10 00:00:00','2023-11-10 00:00:00',30,0),('LO-FE-AC-5K','FE','LO','오븐 베이키드 도그 치킨 전연령 5.67kg 강아지 베이크사료',246000,172000,120000,'8fa434a695478.jpg','ef2e915860aed.jpg','','','','49b132437d241.jpg','로우 전분 함량   오븐 베이킹   칼슘&인 비용 최적화   인공착향료 무첨가','2023-11-10 00:00:00','2023-11-10 00:00:00',30,1),('LO-FE-LI-5K','FE','LO','오븐 베이키드 그레인프리 강아지 LID 사료 1.81kg 정어리앤청어',148000,103000,72000,'f6bc90cf0c124.jpg','fe5c1588d4ced.jpg','','','','eb8da156e00a8.jpg','오븐베이크   그레인프리   LID','2023-11-10 00:00:00','2023-11-10 00:00:00',30,0),('LO-FE-LJ-5K','FE','LO','오븐 베이키드 그레인프리 강아지 LID 사료 1.81kg 오리앤카사바',148000,103000,72000,'de1491c891edb.jpg','f28603e8fc78c.jpg','','','','02ddccde8f5a5.jpg','오븐베이크   그레인프리   LID','2023-11-10 00:00:00','2023-11-10 00:00:00',30,0),('LO-FE-LK-5K','FE','LO','오븐 베이키드 그레인프리 강아지 LID 사료 1.81kg 칠면조',148000,103000,720000,'7af33377bc91b.jpg','714e4b57db39d.jpg','','','','e782c42428c0d.jpg','오븐베이크   그레인프리   LID','2023-11-10 00:00:00','2023-11-10 00:00:00',30,1),('LO-FE-SC-2K','FE','LO','오븐 베이키드 도그 시니어 치킨 2.27kg 다이어트 및 고령견용 강아지 베이크사료',143000,100000,70000,'ca09c5dcf6867.jpg','2fd70ee84bda0.jpg','','','','f15300fa4cc7d.jpg','로우 전분 함량   오븐 베이킹   칼슘&인 비용 최적화   인공착향료 무첨가','2023-11-10 00:00:00','2023-11-10 00:00:00',30,0),('LO-FE-SC-5K','FE','LO','오븐 베이키드 도그 시니어 치킨 5.67kg 다이어트 및 고령견용 강아지 베이크사료',246000,172000,120000,'867657144c8f4.jpg','f04a2fc1b3f0b.jpg','','','','f15300fa4cc7d.jpg','로우 전분 함량   오븐 베이킹   칼슘&인 비용 최적화   인공착향료 무첨가','2023-11-10 00:00:00','2023-11-10 00:00:00',30,0),('NC-FE-E0-BG','FE','NC','에코 10 베지테리안 강아지 건식사료 6kg',146000,102000,66000,'b73c8651c3982.jpg','3a0c0748b41e6.jpg','d4765746c611d.jpg','65c16b2df9bbd.jpg','5096e8cc2b5fd.jpg','28e23da9a1318.jpg','육류 미포함   유기농 베지테리언 포뮬라   항생제, 살충제, 호르몬제, 인공항산화제, 인공색소 무첨가','2023-11-10 00:00:00','2023-11-10 00:00:00',20,6),('NC-FE-E1-SH','FE','NC','에코 1 양고기 하이포알러지 강아지 건식사료',63000,44000,28000,'ae04bda9df384.jpg','8a2df1225793a.jpg','9a77938f43144.jpg','66f45a2f2b154.jpg','2baee3f04857c.jpg','6fe0b1a48c994.jpg','어린강아지 전용    가수분해   항생제, 살충제, 호르몬제, 인공항산화제, 인공색소 무첨가','2023-11-10 00:00:00','2023-11-10 00:00:00',30,0),('NC-FE-E2-DU','FE','NC','에코 2 오리고기 하이포알러지 강아지 건식사료',63000,44000,28000,'dc625a63b4648.jpg','0951c73c42a3e.jpg','c7a48ac07e41c.jpg','c0ddc5b1bf8b5.jpg','70fb4d7390fd2.jpg','b3b04f338cf80.jpg','하이포알러지   유기농 야채   항생제, 살충제, 호르몬제, 인공항산화제, 인공색소 무첨가','2023-11-10 00:00:00','2023-11-10 00:00:00',30,0),('NC-FE-E4-DU','FE','NC','에코 4 s/p 오리고기 다이어트 강아지 건식사료',35000,24000,15000,'30effdf23080a.jpg','e08c989455ac1.jpg','229e1c1cd9d65.jpg','ba9500baa27ad.jpg','8ccc40eba8749.jpg','ae841c8d7c7d7.jpg','다이어트 식단   가수분해   항생제, 살충제, 호르몬제, 인공항산화제, 인공색소 무첨가','2023-11-10 00:00:00','2023-11-10 00:00:00',30,0),('NC-FE-E5-SH','FE','NC','에코 5a 양고기 퍼피 강아지 건식사료',36000,25000,16000,'ef5af4f304940.jpg','55a20b7a128ff.jpg','9012a1deb9e6c.jpg','405e2609e4fba.jpg','a921a11fb6264.jpg','5b3b78f1177fe.jpg','어린강아지 전용   유기농 양살코기, 닭살코기 함유   항생제, 살충제, 호르몬제, 인공항산화제, 인공색소 무첨가','2023-11-10 00:00:00','2023-11-10 00:00:00',30,0),('NC-FE-E5-SM','FE','NC','에코 5b 연어 퍼피 강아지 건식사료',36000,25000,16000,'37c401c70e238.jpg','9a26119217c2e.jpg','16f5c7cf8c942.jpg','1d00f7d9f62de.jpg','a1e4d64e9e08a.jpg','df40c63d8e8f9.jpg','시니어 전용   모질, 관절 영양   항생제, 살충제, 호르몬제, 인공항산화제, 인공색소 무첨가','2023-11-10 00:00:00','2023-11-10 00:00:00',30,0),('NC-FE-E6-SM','FE','NC','에코 6 연어 센스티브 솔루션 강아지 건식사료',36000,25000,16000,'7d360a12e34db.jpg','333c7acae2a9b.jpg','84471864b87e0.jpg','c74c15881cc2a.jpg','e31a85586684e.jpg','49edba01dda76.jpg','육류 미포함   유기농 베지테리언 포뮬라   항생제, 살충제, 호르몬제, 인공항산화제, 인공색소 무첨가','2023-11-10 00:00:00','2023-11-10 00:00:00',30,0),('NC-FE-E7-SH','FE','NC','에코 7 양고기 센스티브 솔루션 강아지 건식사료',36000,25000,16000,'9be7a13e3f967.jpg','179a28b0962d5.jpg','5e2c484b55d51.jpg','4ec92e16c242b.jpg','56de18f74cf8c.jpg','bacb2d4f1de73.jpg','식이 알러지 개선   야수분해   항생제, 살충제, 호르몬제, 인공항산화제, 인공색소 무첨가','2023-11-10 00:00:00','2023-11-10 00:00:00',30,0),('NC-FE-E9-SM','FE','NC','에코 9b 연어 시니어 강아지 건식사료',36000,25000,16000,'99f58ca811817.jpg','bb31ab52ff824.jpg','a5a2599ad9919.jpg','79e1d88a96153.jpg','2769bd3917fb0.jpg','799c3ecb98264.jpg','가수분해   유기농 원료   항생제, 살충제, 호르몬제, 인공항산화제, 인공색소 무첨가','2023-11-10 00:00:00','2023-11-10 00:00:00',30,0),('NC-FE-SR-CK','FE','NC','슈레드 치킨 25g 10개',49000,34000,22000,'21294f3f59334.jpg','78bf5597d3a8a.jpg','f82db277e9192.jpg','','','938741d531c4b.jpg','국내산 닭가슴살   기호에 맞게 찢어 급여   다이어트 토핑','2023-11-10 00:00:00','2023-11-10 00:00:00',30,0),('NC-SN-11-11','SN','NC','치킨 치즈 컷트',0,5000,3500,'65140test_main.jpg','1486564b04ca21e8bc5.jpg','1167782c2b5a417c32d.jpg','2797413c744ec9637dc.png','1831713c582954d787d.jpg','223479304e9b3c2a0df0.jpg','국내산 닭고기\r\n고다치즈\r\n100% 휴먼그레이드','2023-12-19 13:21:19','2023-12-19 13:21:19',0,1),('NF-NU-EY-CA','NU','NF','반려동물 영양제 아이즈케어 눈건강',29000,20000,18000,'eefff24d0d65e.jpg','d89dd3be8ddc5.jpg','c8cfbfb449bfe.jpg','','','302596aae2991.jpg','빌베리 루테인 함유   눈기능 개선   백내장 예방','2023-12-15 17:35:08','2023-12-15 17:35:08',12,0),('NF-NU-JO-CA','NU','NF','반려동물 영양제 조인트케어 관절',29000,20000,18000,'fcb8b26b71e34.jpg','e22a5cb35ba44.jpg','c8cfbfb449bfe.jpg','','','4b1c2c229757b.jpg','슬개골 탈구 영양공급   뼈, 관절 케어   관절염 완화','2023-12-15 17:35:08','2023-12-15 17:35:08',12,0),('NF-NU-LI-CA','NU','NF','반려동물 영양제 리버케어 간건강',29000,20000,18000,'9d5236922fc06.jpg','4b9a9712c9115.jpg','c8cfbfb449bfe.jpg','','','5fb6f11043b57.jpg','밀크씨슬 추출물   간건강케어   독성물질 해독','2023-12-15 17:35:08','2023-12-15 17:35:08',12,0),('NF-NU-MT-CA','NU','NF','반려동물 종합영양제 멀티케어 노령케어',29000,20000,18000,'b390222cab124.jpg','ec9a0696cda26.jpg','c8cfbfb449bfe.jpg','','','84eaf6eb46495.jpg','올인원 멀티케어   눈, 장, 관절, 면역   성장기, 노령 반려동물','2023-12-15 17:35:08','2023-12-15 17:35:08',12,0),('NF-NU-RE-CA','NU','NF','반려동물 영양제 릴렉스케어 스트레스 완화',29000,20000,18000,'b79cd0dfd7ed2.jpg','13ec7dfdca2ed.jpg','c8cfbfb449bfe.jpg','','','e7d4a14b69791.jpg','심리안정   스트레스 케어   미배아추출물','2023-12-15 17:35:08','2023-12-15 17:35:08',12,0);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report` (
  `repoNo` int NOT NULL AUTO_INCREMENT,
  `boardNo` int DEFAULT NULL,
  `boRepNo` int DEFAULT NULL,
  `reviRepNo` int DEFAULT NULL,
  `userNo` int NOT NULL,
  `repoReason` varchar(100) DEFAULT NULL,
  `repoDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `processingYn` int DEFAULT '0',
  PRIMARY KEY (`repoNo`),
  KEY `boardNo` (`boardNo`),
  KEY `userNo` (`userNo`),
  CONSTRAINT `report_ibfk_1` FOREIGN KEY (`boardNo`) REFERENCES `board` (`boardNo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `report_ibfk_2` FOREIGN KEY (`userNo`) REFERENCES `users` (`userNo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
INSERT INTO `report` VALUES (2,NULL,11,NULL,3,'이상한 글이예요2','2023-12-06 11:29:22',1),(4,NULL,12,NULL,4,'이상한 글이예요4','2023-12-06 11:29:22',1),(6,NULL,23,NULL,6,'이상한 글이예요6','2023-12-06 11:29:22',1),(8,NULL,6,NULL,9,'이상한 글이예요8','2023-12-06 11:29:22',0),(9,NULL,6,NULL,9,'이상한 글이예요9','2023-12-06 11:29:22',0),(10,NULL,3,NULL,11,'이상한 글이예요10','2023-12-06 11:29:22',0),(11,NULL,NULL,5,3,'이상한 글이예요10','2023-12-06 11:29:22',0),(12,NULL,NULL,3,5,'이상한 글이예요10','2023-12-06 11:29:22',0),(13,NULL,NULL,2,7,'이상한 글이예요10','2023-12-06 11:29:22',0),(14,NULL,NULL,1,8,'이상한 글이예요10','2023-12-06 11:29:22',0),(15,NULL,NULL,9,12,'이상한 글이예요10','2023-12-06 11:29:22',0);
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `reviNo` int NOT NULL AUTO_INCREMENT,
  `userNo` int NOT NULL,
  `prodNo` varchar(20) NOT NULL,
  `reviTitle` varchar(50) NOT NULL,
  `reviContent` varchar(1000) NOT NULL,
  `reviReg` datetime DEFAULT CURRENT_TIMESTAMP,
  `reviUpdate` datetime DEFAULT CURRENT_TIMESTAMP,
  `rating` int DEFAULT '10',
  `userImg` varchar(50) DEFAULT NULL,
  `reviCnt` int DEFAULT NULL,
  PRIMARY KEY (`reviNo`),
  KEY `userNo` (`userNo`),
  KEY `prodNo` (`prodNo`),
  CONSTRAINT `review_ibfk_1` FOREIGN KEY (`userNo`) REFERENCES `users` (`userNo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `review_ibfk_2` FOREIGN KEY (`prodNo`) REFERENCES `product` (`prodNo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (14,13,'AN-NU-EY-25','너무 좋습니다','최고!','2023-12-19 12:08:25','2023-12-19 12:08:25',4,NULL,0);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_reply`
--

DROP TABLE IF EXISTS `review_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review_reply` (
  `reviRepNo` int NOT NULL AUTO_INCREMENT,
  `reviNo` int NOT NULL,
  `userNo` int NOT NULL,
  `reviRepContent` varchar(1000) NOT NULL,
  `reviRepReg` datetime DEFAULT CURRENT_TIMESTAMP,
  `reviRepUpdate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`reviRepNo`),
  KEY `userNo` (`userNo`),
  KEY `reviNo` (`reviNo`),
  CONSTRAINT `review_reply_ibfk_1` FOREIGN KEY (`userNo`) REFERENCES `users` (`userNo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `review_reply_ibfk_2` FOREIGN KEY (`reviNo`) REFERENCES `review` (`reviNo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_reply`
--

LOCK TABLES `review_reply` WRITE;
/*!40000 ALTER TABLE `review_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `review_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `userNo` int NOT NULL AUTO_INCREMENT,
  `userId` varchar(20) NOT NULL,
  `userPw` varchar(20) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `zip` varchar(10) NOT NULL,
  `nick` varchar(20) DEFAULT NULL,
  `eventYn` int NOT NULL,
  `regDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `birth` date DEFAULT NULL,
  `point` int DEFAULT NULL,
  `admin` int NOT NULL,
  PRIMARY KEY (`userNo`),
  UNIQUE KEY `userId` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','1234','일관리','031-548-4664','031-548-4664','ezen1234@naver.com','경기도 수원시 팔달구 권광로 146 벽산그랜드코아 4층 401호','16491','관리자',1,'2023-12-06 10:35:38','2022-05-08',0,0),(2,'admin2','1234','이관리','031-548-4664','031-548-4664','Secondezen1234@naver.com','경기도 수원시 팔달구 권광로 146 벽산그랜드코아 4층 401호','16491','관리자2',1,'2023-12-06 10:35:38','2022-05-08',0,0),(3,'ezen11','wpqkf33@','김일젠','031-111-1111','031-111-1111','onezen1234@naver.com','내 위치는 1호','11111','인조인간1호',1,'2023-12-06 10:35:38',NULL,0,1),(4,'ezen22','1234','김이젠','031-222-22222','031-222-2222','twozen1234@naver.com','내 위치는 2호','22222','인조인간2호',1,'2023-12-06 10:35:38','2012-02-11',0,1),(5,'ezen33','1234','김삼젠','031-333-3333','031-333-3333','threezen1234@naver.com','내 위치는 3호','33333','인조인간3호',1,'2023-12-06 10:35:38','2012-03-11',0,1),(6,'ezen44','1234','김사젠','031-444-4444','031-444-4444','fourzen1234@naver.com','내 위치는 4호','44444','인조인간4호',1,'2023-12-06 10:35:38','2012-04-11',0,1),(7,'ezen55','1234','김오젠','031-555-5555','031-555-5555','fivezen1234@naver.com','내 위치는 5호','55555','인조인간5호',1,'2023-12-06 10:35:38','2012-05-11',0,1),(8,'ezen66','1234','김육젠','031-666-6666','031-666-6666','sixzen1234@naver.com','내 위치는 6호','66666','인조인간6호',1,'2023-12-06 10:35:38','2012-06-11',0,1),(9,'ezen77','1234','김칠젠','031-777-7777','031-777-7777','sevenzen1234@naver.com','내 위치는 7호','77777','인조인간7호',1,'2023-12-06 10:35:38','2012-07-11',0,0),(10,'ezen88','1234','김팔젠','031-888-8888','031-888-8888','eightzen1234@naver.com','내 위치는 8호','88888','인조인간8호',1,'2023-12-06 10:35:38','2012-08-11',0,0),(11,'ezen99','1234','김구젠','031-999-9999','031-999-9999','ninezen1234@naver.com','내 위치는 9호','99999','인조인간9호',1,'2023-12-06 10:35:38','2012-09-11',0,1),(12,'ezen00','1234','김영젠','031-000-0000','031-000-0000','tenzen1234@naver.com','내 위치는 10호','00000','인조인간10호',1,'2023-12-06 10:35:38','2012-10-11',0,1),(13,'j00yang','dlwps@11','박주영','--','010-3555-9999','jypark0819@naver.com','경수대로 1110-39  110동 1401호','16206','어도러블몽',1,'2023-12-19 09:16:49','2000-08-19',10000,1),(14,'ezen1234','dlwps1234!','박주영','031-255-1111','010-3999-1111','ezen1234@naver.com','서울 관악구 시흥대로166길 14  101호','08769','주양',0,'2023-12-19 12:44:56','2002-05-21',10000,1),(15,'ezen1235','dlwps1234!','김일호','031-255-1111','010-3999-1111','ezen1235@naver.com','서울 관악구 남부순환로166길 1  101호','08773','도도',0,'2023-12-19 12:49:44',NULL,10000,1),(16,'ezen2222','dlwps2222@','박이젠','031-255-2222','010-2345-2345','ezen2222@naver.com','서울 관악구 남부순환로166길 1  101호','08773','이젠',0,'2023-12-19 13:17:17',NULL,10000,1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-19 16:31:03
