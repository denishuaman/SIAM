-- MySQL dump 10.13  Distrib 5.6.23, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: mydbsiam
-- ------------------------------------------------------
-- Server version	5.5.42

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
-- Table structure for table `tpaciente`
--

USE mydbsiam;

DROP TABLE IF EXISTS `tpaciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tpaciente` (
  `dni` int(8) NOT NULL,
  `nombres` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `sexo` varchar(1) NOT NULL,
  `estado_civil` varchar(1) DEFAULT NULL,
  `fecha_nac` date DEFAULT NULL,
  `lugar_nac` varchar(45) DEFAULT NULL,
  `direccion` varchar(80) DEFAULT NULL,
  `celular` int(11) DEFAULT NULL,
  PRIMARY KEY (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpaciente`
--

LOCK TABLES `tpaciente` WRITE;
/*!40000 ALTER TABLE `tpaciente` DISABLE KEYS */;
INSERT INTO `tpaciente` VALUES (12,'Hola','dond pe','F','S','2014-08-08','','',3432432),(12345678,'Benito','Camela Panduro','M','S','1999-02-12','Lima','Lima',123456789),(45891391,'Jean Boris','Perez Cuba','M','S','1989-06-20','Hospital General María Auxiliadora','Heroes de San Juan',986258304),(47964408,'Denis Gianpier','Huaman Acuña','M','S','1993-10-07','Maternidad de Lima','Av. Alcazar',961963145),(47964409,'Dennis José','Misahuaman Zavaleta','M','S','1990-10-25','Maternidad de Lima','Los Olivos',986116783),(47964411,'Ronal Raul','Ricse Perez','M','S','1992-04-16','Hospital Gral María Auxiliadora','SECTOR 3 MZA. J LOTE. 15 GRU. 25 (ALTURA AV BOLIVAR TERCER SECTOR)',991010481),(70147347,'Florencia','Flores De Ramos','F','S','1996-06-06','Clínica San Felipe','Calle Los Jasmines 69',955558178),(987654321,'Pepito','Dos  Cañones','X','V','1995-11-01','Hospital ...','Su casa...',123456783);
/*!40000 ALTER TABLE `tpaciente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-15  7:47:15
