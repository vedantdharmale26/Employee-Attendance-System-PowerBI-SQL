-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: employee_attendance
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance` (
  `attendance_id` int NOT NULL AUTO_INCREMENT,
  `emp_id` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  `check_in` time DEFAULT NULL,
  `check_out` time DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`attendance_id`),
  KEY `emp_id` (`emp_id`),
  CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES (1,101,'2025-01-01','09:05:00','18:01:00','Present'),(2,102,'2025-01-01',NULL,NULL,'Absent'),(3,103,'2025-01-01','09:50:00','17:40:00','Late'),(4,104,'2025-01-01','09:10:00','18:05:00','Present'),(5,105,'2025-01-01','09:00:00','18:00:00','Present'),(6,106,'2025-01-02','09:20:00','18:00:00','Present'),(7,107,'2025-01-02','09:00:00','18:10:00','Present'),(8,108,'2025-01-02',NULL,NULL,'Absent'),(9,109,'2025-01-02','09:45:00','17:30:00','Late'),(10,110,'2025-01-02','09:05:00','18:00:00','Present'),(11,111,'2025-01-03','09:00:00','18:00:00','Present'),(12,112,'2025-01-03','09:55:00','17:20:00','Late'),(13,113,'2025-01-03','09:10:00','18:15:00','Present'),(14,114,'2025-01-03',NULL,NULL,'Absent'),(15,115,'2025-01-03','09:05:00','18:00:00','Present'),(16,116,'2025-01-04','09:00:00','18:00:00','Present'),(17,117,'2025-01-04','09:35:00','17:40:00','Late'),(18,118,'2025-01-04','09:10:00','18:05:00','Present'),(19,119,'2025-01-04',NULL,NULL,'Absent'),(20,120,'2025-01-04','09:00:00','18:00:00','Present');
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `emp_id` int NOT NULL,
  `emp_name` varchar(100) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `designation` varchar(50) DEFAULT NULL,
  `join_date` date DEFAULT NULL,
  `salary` int DEFAULT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (101,'Rahul Sharma','IT','Software Developer','2022-03-10',50000),(102,'Priya Verma','HR','HR Executive','2021-06-05',42000),(103,'Amit Patil','Finance','Accountant','2020-01-15',48000),(104,'Neha Singh','Sales','Sales Executive','2023-01-20',38000),(105,'Rohit Mehta','IT','QA Tester','2022-08-12',45000),(106,'Sneha Kulkarni','Marketing','Marketing Analyst','2021-09-18',43000),(107,'Karan Malhotra','Operations','Operations Manager','2019-11-25',60000),(108,'Pooja Nair','IT','UI/UX Designer','2022-05-30',47000),(109,'Suresh Iyer','Support','Technical Support','2020-07-14',36000),(110,'Anjali Deshmukh','Finance','Financial Analyst','2021-02-09',52000),(111,'Vikram Joshi','Sales','Sales Manager','2019-04-17',65000),(112,'Ritu Kapoor','HR','Recruiter','2022-10-01',40000),(113,'Nikhil Rao','IT','Backend Developer','2020-06-22',58000),(114,'Manisha Patil','Admin','Office Administrator','2018-12-11',35000),(115,'Akash Gupta','Marketing','SEO Specialist','2023-03-19',37000),(116,'Deepa Menon','Support','Customer Support','2021-08-07',34000),(117,'Arjun Khanna','Operations','Process Executive','2022-01-13',39000),(118,'Shweta Pandey','IT','Data Analyst','2023-07-03',55000),(119,'Ramesh Choudhary','Finance','Accounts Executive','2020-09-28',41000),(120,'Kavita Kulkarni','Sales','Business Development Executive','2021-11-16',46000);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-17 17:05:11
