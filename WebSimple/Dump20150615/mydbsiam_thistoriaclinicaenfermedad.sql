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
-- Table structure for table `thistoriaclinicaenfermedad`
--

USE mydbsiam;

DROP TABLE IF EXISTS `thistoriaclinicaenfermedad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thistoriaclinicaenfermedad` (
  `TEnfermedad_cod_enfer` int(11) NOT NULL,
  `THistoriaClinica_TPaciente_dni` int(8) NOT NULL,
  PRIMARY KEY (`TEnfermedad_cod_enfer`,`THistoriaClinica_TPaciente_dni`),
  KEY `fk_TEnfermedad_has_THistoriaClinica_THistoriaClinica1_idx` (`THistoriaClinica_TPaciente_dni`),
  KEY `fk_TEnfermedad_has_THistoriaClinica_TEnfermedad1_idx` (`TEnfermedad_cod_enfer`),
  CONSTRAINT `fk_TEnfermedad_has_THistoriaClinica_TEnfermedad1` FOREIGN KEY (`TEnfermedad_cod_enfer`) REFERENCES `tenfermedad` (`cod_enfer`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_TEnfermedad_has_THistoriaClinica_THistoriaClinica1` FOREIGN KEY (`THistoriaClinica_TPaciente_dni`) REFERENCES `thistoriaclinica` (`TPaciente_dni`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thistoriaclinicaenfermedad`
--

LOCK TABLES `thistoriaclinicaenfermedad` WRITE;
/*!40000 ALTER TABLE `thistoriaclinicaenfermedad` DISABLE KEYS */;
INSERT INTO `thistoriaclinicaenfermedad` VALUES (1,47964408),(2,47964408);
/*!40000 ALTER TABLE `thistoriaclinicaenfermedad` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-15  7:47:16
