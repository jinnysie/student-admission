-- MySQL dump 10.13  Distrib 8.4.8, for Win64 (x86_64)
--
-- Host: localhost    Database: student_administration
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
-- Table structure for table `location_reference`
--

DROP TABLE IF EXISTS `location_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location_reference` (
  `location_id` int NOT NULL,
  `country_code` varchar(10) DEFAULT NULL,
  `location_type` varchar(30) DEFAULT NULL,
  `location_name` varchar(150) DEFAULT NULL,
  `delete_flag` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location_reference`
--

LOCK TABLES `location_reference` WRITE;
/*!40000 ALTER TABLE `location_reference` DISABLE KEYS */;
INSERT INTO `location_reference` VALUES (1,'ID','PROVINCE','West Kalimantan',0),(2,'ID','CITY','Pontianak',0),(3,'ID','DISTRICT','Pontianak Selatan',0),(4,'ID','VILLAGE','Benua Melayu Darat',0),(5,'ID','CITY','Singkawang',0),(6,'ID','DISTRICT','Singkawang Barat',0),(7,'ID','VILLAGE','Pasiran',0),(8,'ID','PROVINCE','Central Java',0),(9,'ID','CITY','Semarang',0),(10,'ID','DISTRICT','Banyumanik',0),(11,'ID','VILLAGE','Srondol Wetan',0),(12,'ID','PROVINCE','East Java',0),(13,'ID','CITY','Surabaya',0),(14,'ID','DISTRICT','Wonokromo',0),(15,'ID','VILLAGE','Darmo',0),(16,'ID','PROVINCE','West Java',0),(17,'ID','CITY','Bandung',0),(18,'ID','DISTRICT','Coblong',0),(19,'ID','VILLAGE','Dago',0),(20,'ID','PROVINCE','Special Region of Yogyakarta',0),(21,'ID','CITY','Yogyakarta',0),(22,'ID','DISTRICT','Depok',0),(23,'ID','VILLAGE','Caturtunggal',0),(24,'ID','PROVINCE','Bali',0),(25,'ID','CITY','Denpasar',0),(26,'ID','DISTRICT','Denpasar Selatan',0),(27,'ID','VILLAGE','Panjer',0),(28,'ID','PROVINCE','North Sumatra',0),(29,'ID','CITY','Medan',0),(30,'ID','DISTRICT','Medan Baru',0),(31,'ID','VILLAGE','Padang Bulan',0),(32,'ID','PROVINCE','South Sulawesi',0),(33,'ID','CITY','Makassar',0),(34,'ID','DISTRICT','Rappocini',0),(35,'ID','VILLAGE','Banta-Bantaeng',0),(36,'ID','PROVINCE','South Kalimantan',0),(37,'ID','CITY','Banjarmasin',0),(38,'ID','DISTRICT','Banjarmasin Tengah',0),(39,'ID','VILLAGE','Kertak Baru Ulu',0),(40,'ID','OTHER','Other',0);
/*!40000 ALTER TABLE `location_reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `program_reference`
--

DROP TABLE IF EXISTS `program_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `program_reference` (
  `program_id` int NOT NULL,
  `program_name` varchar(100) DEFAULT NULL,
  `program_code` varchar(20) DEFAULT NULL,
  `delete_flag` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`program_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `program_reference`
--

LOCK TABLES `program_reference` WRITE;
/*!40000 ALTER TABLE `program_reference` DISABLE KEYS */;
INSERT INTO `program_reference` VALUES (1,'Information Technology','IT',0),(2,'Management','MGT',0),(3,'Accounting','ACC',0),(4,'Information Systems','IS',0);
/*!40000 ALTER TABLE `program_reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `religion_reference`
--

DROP TABLE IF EXISTS `religion_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `religion_reference` (
  `religion_id` int NOT NULL,
  `religion_code` varchar(20) DEFAULT NULL,
  `religion_name` varchar(100) DEFAULT NULL,
  `delete_flag` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`religion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `religion_reference`
--

LOCK TABLES `religion_reference` WRITE;
/*!40000 ALTER TABLE `religion_reference` DISABLE KEYS */;
INSERT INTO `religion_reference` VALUES (1,'REL-01','Islam',0),(2,'REL-02','Protestant Christianity',0),(3,'REL-03','Catholic Christianity',0),(4,'REL-04','Hinduism',0),(5,'REL-05','Buddhism',0),(6,'REL-06','Other',0);
/*!40000 ALTER TABLE `religion_reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `id` int NOT NULL,
  `student_number` varchar(20) NOT NULL,
  `program_code` varchar(20) DEFAULT NULL,
  `program_name` varchar(100) DEFAULT NULL,
  `program_track` varchar(100) DEFAULT NULL,
  `student_name` varchar(150) DEFAULT NULL,
  `class_group` varchar(50) DEFAULT NULL,
  `academic_advisor` varchar(150) DEFAULT NULL,
  `delete_flag` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1001,'243200001','IT','Information Technology','Software Engineering','Raka Pratama','IT-24-A','Daniel Hartono',0),(1002,'243100001','MGT','Management','Business Management','Nadia Permatasari','MGT-24-A','Maya Suryani',0),(1003,'243300001','ACC','Accounting','Financial Accounting','Fajar Maulana','ACC-24-A','Adrian Wijaya',0),(1004,'243400001','IS','Information Systems','Information Systems Management','Clara Maharani','IS-24-A','Rina Kurniawati',0),(1006,'243200002','IT','Information Technology','Software Engineering','Alya Safitri','IT-24-A','Daniel Hartono',0),(1007,'243100002','MGT','Management','Business Management','Dimas Kurniawan','MGT-24-A','Maya Suryani',0),(1008,'243400002','IS','Information Systems','Information Systems Management','Kevin Wijaya','IS-24-A','Rina Kurniawati',0),(1009,'243300002','ACC','Accounting','Financial Accounting','Maya Anggraini','ACC-24-A','Adrian Wijaya',0),(1010,'243100003','MGT','Management','Business Management','Rizky Haryanto','MGT-24-A','Maya Suryani',0),(1011,'243200003','IT','Information Technology','Software Engineering','Putri Amelia','IT-24-A','Daniel Hartono',0),(1012,'243400003','IS','Information Systems','Information Systems Management','Arman Nugraha','IS-24-A','Rina Kurniawati',0),(1013,'243100004','MGT','Management','Business Management','Nabila Fitria','MGT-24-B','Maya Suryani',0),(1014,'243300003','ACC','Accounting','Financial Accounting','Yoga Prasetyo','ACC-24-B','Adrian Wijaya',0),(1015,'243200004','IT','Information Technology','Software Engineering','Made Aditya','IT-24-B','Daniel Hartono',0),(1016,'243400004','IS','Information Systems','Information Systems Management','Ayu Laksmi','IS-24-A','Rina Kurniawati',0),(1017,'243100005','MGT','Management','Business Management','Samuel Pardede','MGT-24-B','Maya Suryani',0),(1018,'243300004','ACC','Accounting','Financial Accounting','Jessica Natalia','ACC-24-B','Adrian Wijaya',0),(1019,'243200005','IT','Information Technology','Software Engineering','Andi Ramadhan','IT-24-B','Daniel Hartono',0);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-13 18:15:43
