-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: cuarentena
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `consulta`
--

DROP TABLE IF EXISTS `consulta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consulta` (
  `PacienteID` int NOT NULL,
  `DoctorID` int NOT NULL,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`PacienteID`,`DoctorID`),
  KEY `DoctorID` (`DoctorID`),
  CONSTRAINT `consulta_ibfk_1` FOREIGN KEY (`PacienteID`) REFERENCES `paciente` (`ID`),
  CONSTRAINT `consulta_ibfk_2` FOREIGN KEY (`DoctorID`) REFERENCES `doctor` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consulta`
--

LOCK TABLES `consulta` WRITE;
/*!40000 ALTER TABLE `consulta` DISABLE KEYS */;
INSERT INTO `consulta` VALUES (10163,2014,'2020-07-08 00:00:00'),(10164,2013,'2019-07-23 00:00:00'),(10165,2012,'2019-08-21 00:00:00'),(10167,2010,'2019-03-12 00:00:00'),(10168,2011,'2020-03-02 00:00:00');
/*!40000 ALTER TABLE `consulta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consultorio`
--

DROP TABLE IF EXISTS `consultorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consultorio` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `piso` int NOT NULL,
  `nro` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consultorio`
--

LOCK TABLES `consultorio` WRITE;
/*!40000 ALTER TABLE `consultorio` DISABLE KEYS */;
INSERT INTO `consultorio` VALUES (1,3,12),(2,2,6),(3,4,7),(4,3,8),(5,4,10);
/*!40000 ALTER TABLE `consultorio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `personaID` int NOT NULL,
  `consultorioID` int NOT NULL,
  `especialidadID` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `personaID` (`personaID`),
  KEY `consultorioID` (`consultorioID`),
  KEY `especialidadID` (`especialidadID`),
  CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`personaID`) REFERENCES `persona` (`CI`),
  CONSTRAINT `doctor_ibfk_2` FOREIGN KEY (`consultorioID`) REFERENCES `consultorio` (`ID`),
  CONSTRAINT `doctor_ibfk_3` FOREIGN KEY (`especialidadID`) REFERENCES `especialidad` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2015 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (2010,9456,1,789),(2011,12345,2,956),(2012,98765,3,490),(2013,39576,4,678),(2014,5238,5,301);
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especialidad`
--

DROP TABLE IF EXISTS `especialidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `especialidad` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=958 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidad`
--

LOCK TABLES `especialidad` WRITE;
/*!40000 ALTER TABLE `especialidad` DISABLE KEYS */;
INSERT INTO `especialidad` VALUES (301,'Oftalmologia'),(490,'Odontologia'),(678,'Gastroenterologia'),(789,'Medicina_General'),(956,'Pediatria');
/*!40000 ALTER TABLE `especialidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paciente`
--

DROP TABLE IF EXISTS `paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paciente` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `personaID` int NOT NULL,
  `fechaIngreso` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `personaID` (`personaID`),
  CONSTRAINT `paciente_ibfk_1` FOREIGN KEY (`personaID`) REFERENCES `persona` (`CI`)
) ENGINE=InnoDB AUTO_INCREMENT=10169 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente`
--

LOCK TABLES `paciente` WRITE;
/*!40000 ALTER TABLE `paciente` DISABLE KEYS */;
INSERT INTO `paciente` VALUES (10163,36450,'2020-02-12 00:00:00'),(10164,38092,'2020-12-25 00:00:00'),(10165,34958,'2019-12-30 00:00:00'),(10167,56575,'2020-03-15 00:00:00'),(10168,78594,'2020-01-12 00:00:00');
/*!40000 ALTER TABLE `paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona` (
  `CI` int NOT NULL,
  `nombres` varchar(30) DEFAULT NULL,
  `apellidos` varchar(30) DEFAULT NULL,
  `fechaNacimiento` datetime DEFAULT NULL,
  PRIMARY KEY (`CI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (5238,'Rodrigo','Jove','1978-03-04 00:00:00'),(9456,'Pedro','Mamani','1947-08-08 00:00:00'),(12345,'Juan','Camargo','1968-06-06 00:00:00'),(34958,'Julian','Andrade','2002-07-09 00:00:00'),(36450,'Ignacio','Palma','1999-08-09 00:00:00'),(38092,'Jaime','Camacho','2005-08-12 00:00:00'),(39576,'Hernado','Solares','1978-07-12 00:00:00'),(56575,'Juan','Rodriguez','2000-05-06 00:00:00'),(78594,'Rodrigo','Perez','1989-07-08 00:00:00'),(98765,'Alberto','Ramirez','1970-08-08 00:00:00');
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-17 12:42:14
