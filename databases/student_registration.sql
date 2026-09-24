-- MySQL dump 10.13  Distrib 8.4.8, for Win64 (x86_64)
--
-- Host: localhost    Database: student_registration
-- ------------------------------------------------------
-- Server version	8.4.8

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
-- Table structure for table `applicant_registration`
--

DROP TABLE IF EXISTS `applicant_registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `applicant_registration` (
  `id` int NOT NULL,
  `registration_year` year NOT NULL,
  `registration_id` varchar(30) DEFAULT NULL,
  `registration_num` varchar(30) DEFAULT NULL,
  `national_id` varchar(20) DEFAULT NULL,
  `full_name` varchar(150) DEFAULT NULL,
  `mother_name` varchar(150) DEFAULT NULL,
  `program` varchar(100) DEFAULT NULL,
  `birth_place` varchar(150) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `phone_number` varchar(30) DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `religion` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `village` varchar(100) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `regency` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `province` varchar(100) DEFAULT NULL,
  `previous_school` varchar(150) DEFAULT NULL,
  `national_student_id` varchar(30) DEFAULT NULL,
  `last_status` int DEFAULT NULL,
  `delete_flag` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_applicant_year_status` (`registration_year`,`last_status`),
  KEY `idx_applicant_national_student_id` (`national_student_id`),
  KEY `idx_applicant_phone_name` (`full_name`,`phone_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicant_registration`
--

LOCK TABLES `applicant_registration` WRITE;
/*!40000 ALTER TABLE `applicant_registration` DISABLE KEYS */;
INSERT INTO `applicant_registration` VALUES (1001,2024,'REG-2024-0001-F','2400001','617100000824001','Raka Pratama','Siti Rahmawati','Information Technology','Pontianak','2006-08-24','Male','081256781234','Indonesian','Islam','Gajah Mada Street Block 4A','Benua Melayu Darat','Pontianak Selatan','Pontianak Regency','Pontianak','West Kalimantan','Northbridge High School','0067823412',12,0),(1002,2024,'REG-2024-0002-O','2400002','6171000007120002','Nadia Permatasari','Lilis Handayani','Management','Pontianak','2024-07-12','Female','081357924681','Indonesian','Catholic Christianity','Danau Sentarum Street Block 8B','Pasiran','Singkawang Barat','Sambas Regency','Singkawang','West Kalimantan','Riverside High School','0054938217',12,0),(1003,2024,'REG-2024-0003-O','2400003','3374000009230003','Fajar Maulana','Nur Aini','Accounting','Semarang','2024-09-23','Male','082198765432','Indonesian','Islam','Setiabudi Street Block 12C','Srondol Wetan','Banyumanik','Semarang Regency','Semarang','Central Java','Meridian High School','004821736',12,0),(1004,2024,'REG-2024-0004-F','2400004','3578000008150004','Clara Maharani','Yuliana Sari','Information Systems','Surabaya, 2006-08-15','2006-08-15','Female','083845612907','Indonesian','Protestant Christianity','Diponegoro Street Block 5A','Darmo','Wonokromo','Sidoarjo Regency','Surabaya','East Java','Westfield High School','0063148290',12,0),(1005,2024,'REG-2024-0005-O','2400005','6171000003110005','Bagas Saputra','Maya Kusumawati','Accounting','Singkawang','2006-03-11','Male','081256781234','Indonesian','Buddhism','Ahmad Yani Street Block 21B','Pasiran','Singkawang Barat','Sambas Regency','Singkawang','West Kalimantan','Greenwood High School',NULL,7,0),(1006,2024,'REG-2024-0006-F','2400006','6171000006250006','Alya Safitri','Dewi Lestari','Information Technology','Pontianak','2006-06-25','Female','082311450678','Indonesian','Islam','Sungai Raya Street Block 7A','Benua Melayu Darat','Pontianak Selatan','Kubu Raya Regency','Pontianak','West Kalimantan','Lakeside High School','0065217843',12,0),(1007,2024,'REG-2024-0007-F','2400007','6171000009140007','Dimas Kurniawan','Rina Marlina','Management','Pontianak','2006-09-14','Male','085712340956','Indonesian','Islam','Sepakat Street Block 3C','Benua Melayu Darat','Pontianak Selatan','Kubu Raya Regency','Pontianak','West Kalimantan','Harborview High School','0068742159',12,0),(1008,2024,'REG-2024-0008-F','2400008','3374000004020008','Kevin Wijaya','Marlina Wijaya','Information Systems','Semarang','2004-04-02','Male','081945670321','Indonesian','Buddhism','Kaliurang Street Block 10A','Srondol Wetan','Banyumanik','Semarang Regency','Semarang','Central Java','Brighton High School','0042756198',12,0),(1009,2024,'REG-2024-0009-F','2400009','3374000001180009','Maya Anggraini','Sri Wahyuni','Accounting','Semarang','2005-01-18','Female','083812459760','Indonesian','Hinduism','Pandanaran Street Block 6B','Srondol Wetan','Banyumanik','Semarang Regency','Semarang','Central Java','Cedar Hill High School','0051837426',12,0),(1010,2024,'REG-2024-0010-O','2400010','3578000007190010','Rizky Haryanto','Endah Puspitasari','Management','Surabaya','2006-07-19','Male','082145670983','Indonesian','Islam','Merr Street Block 9C','Darmo','Wonokromo','Sidoarjo Regency','Surabaya','East Java','Oakridge High School','0067412395',12,0),(1011,2024,'REG-2024-0011-F','2400011','3273000005030011','Putri Amelia','Lina Kartika','Information Technology','Bandung','2005-05-03','Female','081398745612','Indonesian','Islam','Dago Street Block 11A','Dago','Coblong','Bandung Regency','Bandung','West Java','Summit High School','0053178642',12,0),(1012,2024,'REG-2024-0012-F','2400012','3273000008210012','Arman Nugraha','Yuni Astuti','Information Systems','Bandung','2005-08-21','Male','085612309478','Indonesian','Protestant Christianity','Cihampelas Street Block 2B','Dago','Coblong','Bandung Regency','Bandung','West Java','Pinecrest High School','0056284137',12,0),(1013,2024,'REG-2024-0013-F','2400013','3471000002100013','Nabila Fitria','Erna Susanti','Management','Yogyakarta','2006-02-10','Female','082267541903','Indonesian','Islam','Kaliurang Street Block 14A','Caturtunggal','Depok','Sleman Regency','Yogyakarta','Special Region of Yogyakarta','Maple High School','0062847315',12,0),(1014,2024,'REG-2024-0014-F','2400014','3471000006270014','Yoga Prasetyo','Wulan Sari','Accounting','Yogyakarta','2005-06-27','Male','081723456908','Indonesian','Catholic Christianity','Gejayan Street Block 5B','Caturtunggal','Depok','Sleman Regency','Yogyakarta','Special Region of Yogyakarta','Oakwood High School','0057632184',12,0),(1015,2024,'REG-2024-0015-F','2400015','517100000911001','Made Aditya','Komang Sriani','Information Technology','Denpasar','2006-09-11','Male','083176450298','Indonesian','Hinduism','Sudirman Street Block 8C','Panjer','Denpasar Selatan','Badung Regency','Denpasar','Bali','Sunrise High School','0064928173',12,0),(1016,2024,'REG-2024-0016-F','2400016','5171000004250016','Ayu Laksmi','Ni Made Ratih','Information Systems','Denpasar','2005-04-25','Female','081254783619','Indonesian','Hinduism','Teuku Umar Street Block 16A','Panjer','Denpasar Selatan','Badung Regency','Denpasar','Bali','Coral Bay High School','0058412763',12,0),(1017,2024,'REG-2024-0017-F','2400017','1271000007160017','Samuel Pardede','Maria Sihombing','Management','Medan','2006-07-16','Male','082167904532','Indonesian','Protestant Christianity','Iskandar Muda Street Block 7B','Padang Bulan','Medan Baru','Deli Serdang Regency','Medan','North Sumatra','Evergreen High School','0067318245',12,0),(1018,2024,'REG-2024-0018-F','2400018','1271000003290018','Jessica Natalia','Martha Simanjuntak','Accounting','Medan','2005-03-29','Female','085276413908','Indonesian','Catholic Christianity','Sisingamangaraja Street Block 18C','Padang Bulan','Medan Baru','Deli Serdang Regency','Medan','North Sumatra','Lakeview High School','0053927148',10,0),(1019,2024,'REG-2024-0019-F','2400019','7371000005120019','Andi Ramadhan','Hasnah Yusuf','Information Technology','Makassar','2005-05-12','Male','081934567205','Indonesian','Islam','Alauddin Street Block 4B','Banta-Bantaeng','Rappocini','Gowa Regency','Makassar','South Sulawesi','Southgate High School','0054178392',9,0),(1020,2024,'REG-2024-0020-F','2400020','7371000008270020','Nurul Azzahra','Rahmawati Yusuf','Management','Makassar','2006-08-27','Female','082356719804','Indonesian','Islam','Hertasning Street Block 13A','Banta-Bantaeng','Rappocini','Gowa Regency','Makassar','South Sulawesi','Millennium High School','0062854317',8,0),(1021,2024,'REG-2024-0021-F','2400021','6371000006140021','Bima Saputra','Ningsih Hartati','Accounting','Banjarmasin','2006-06-14','Male','083145678209','Indonesian','Other','A. Yani Street Block 20B','Kertak Baru Ulu','Banjarmasin Tengah','Banjar Regency','Banjarmasin','South Kalimantan','Riverdale High School','0065182734',6,0),(1022,2024,'REG-2024-0022-F','2400022','6171000001030022','Salsa Maharani','Fitri Handayani','Information Systems','Pontianak','2006-01-03','Female','081467203915','Indonesian','Islam','Imam Bonjol Street Block 6A','Benua Melayu Darat','Pontianak Selatan','Kubu Raya Regency','Pontianak','West Kalimantan','Silver Oak High School','0061478253',5,0),(1023,2024,'REG-2024-0023-F','2400023','6171000005220023','Reza Firmansyah','Dian Anggraini','Information Technology','Pontianak','2005-05-22','Male','085314729608','Indonesian','Islam','Ahmad Yani Street Block 15C','Benua Melayu Darat','Pontianak Selatan','Kubu Raya Regency','Pontianak','West Kalimantan','Harapan High School','0057246813',4,0),(1024,2024,'REG-2024-0024-F','2400024','0000000000000024','Citra Wulandari','Maya Lestari','Management','','2006-11-30','Female','080000000024','Indonesian','Other','Unknown Street Block 0A','Other','Other','Other Regency','Other','Other','Unknown High School',NULL,2,1),(1025,2024,'REG-2024-0025-F','2400025','3578000005270025','Dewangga Putra','Rina Kurniati','Accounting','Surabaya','2024-05-27','Male','082145670983','Indonesian','Buddhism','Darmo Street Block 22B','Darmo','Wonokromo','Sidoarjo Regency','Surabaya','East Java','Harborview High School','12345',3,0),(1026,2024,'REG-2024-0026-O','2400026','6171000005220023','Reza Firmansyah','Dian Anggraini','Information Technology','Pontianak, 2005-05-22','2005-05-22','Male','085314729608','Indonesian','Islam','Ahmad Yani Street Block 15C','Benua Melayu Darat','Pontianak Selatan','Kubu Raya Regency','Pontianak','West Kalimantan','Harapan High School','0057246813',4,0);
/*!40000 ALTER TABLE `applicant_registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_attempt`
--

DROP TABLE IF EXISTS `test_attempt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_attempt` (
  `test_id` varchar(10) NOT NULL,
  `id` int NOT NULL,
  `test_pin` varchar(20) DEFAULT NULL,
  `test_session` varchar(50) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `validity_period` datetime DEFAULT NULL,
  `correct_answers` int DEFAULT NULL,
  `answered_answers` int DEFAULT NULL,
  `total_questions` int DEFAULT NULL,
  `delete_flag` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`test_id`),
  UNIQUE KEY `id` (`id`),
  KEY `idx_test_attempt_start_time` (`start_time`),
  KEY `idx_test_attempt_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_attempt`
--

LOCK TABLES `test_attempt` WRITE;
/*!40000 ALTER TABLE `test_attempt` DISABLE KEYS */;
INSERT INTO `test_attempt` VALUES ('t001',1001,'A7K9P2XM','SESSION-01',NULL,NULL,NULL,NULL,NULL,105,0),('t002',1002,'Q4N8ZT1B','SESSION-01','2024-05-27 08:05:00','2024-05-27 08:52:00','2024-05-27 08:52:03',87,102,105,0),('t003',1003,'M6R2X9KD','SESSION-01','2024-05-27 08:10:00','2024-05-27 08:55:00','2024-05-27 08:55:03',92,105,105,0),('t004',1004,'7HPL3A8Q','SESSION-01',NULL,NULL,NULL,NULL,NULL,105,0),('t005',1005,'K8V3N6RT','SESSION-01','2024-05-27 08:20:00','2024-05-27 09:15:00','2024-05-27 09:15:03',81,97,105,0),('t006',1006,'C5X9W2LF','SESSION-01',NULL,NULL,NULL,NULL,NULL,105,0),('t007',1007,'R3D7N8QP','SESSION-01',NULL,NULL,NULL,NULL,NULL,105,0),('t008',1008,'B6T4Y9KM','SESSION-01',NULL,NULL,NULL,NULL,NULL,105,0),('t009',1009,'P2F8H5ZW','SESSION-01',NULL,NULL,NULL,NULL,NULL,105,0),('t010',1010,'N9Q3K7XC','SESSION-01','2024-05-27 08:35:00','2024-05-27 09:20:00','2024-05-27 09:20:03',74,91,105,0),('t011',1011,'V4M6R2TJ','SESSION-01',NULL,NULL,NULL,NULL,NULL,105,0),('t012',1012,'L8W5P3ND','SESSION-01',NULL,NULL,NULL,NULL,NULL,105,0),('t013',1013,'H7Z2C9FK','SESSION-01',NULL,NULL,NULL,NULL,NULL,105,0),('t014',1014,'T5N8B4RQ','SESSION-01',NULL,NULL,NULL,NULL,NULL,105,0),('t015',1015,'X3K6M9PV','SESSION-01',NULL,NULL,NULL,NULL,NULL,105,0),('t016',1016,'D9F2W7HL','SESSION-01',NULL,NULL,NULL,NULL,NULL,105,0),('t017',1017,'J4R8T5ZN','SESSION-01',NULL,NULL,NULL,NULL,NULL,105,0),('t018',1018,'W6P3K9MQ','SESSION-01',NULL,NULL,NULL,NULL,NULL,105,0),('t019',1019,'F8N5X2VC','SESSION-01',NULL,NULL,NULL,NULL,NULL,105,0),('t020',1020,'Z5C8W2NF','SESSION-01',NULL,NULL,NULL,NULL,NULL,105,0),('t021',1021,'G7M4Q9KT','SESSION-01',NULL,NULL,NULL,NULL,NULL,105,0),('t022',1022,'Y2H6R8PD','SESSION-01',NULL,NULL,NULL,NULL,NULL,105,0),('t023',1023,'S9V3N5LX','SESSION-01',NULL,NULL,NULL,NULL,NULL,105,0),('t024',1024,'E4K7T2ZW','SESSION-01',NULL,NULL,NULL,NULL,NULL,105,0),('t025',1025,'U8P5C3MR','SESSION-01',NULL,NULL,NULL,NULL,NULL,105,0),('t026',1026,'A6F9N4QX','SESSION-01',NULL,NULL,NULL,NULL,NULL,105,0);
/*!40000 ALTER TABLE `test_attempt` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-13 18:15:24
