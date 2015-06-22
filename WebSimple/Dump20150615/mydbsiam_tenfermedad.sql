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
-- Table structure for table `tenfermedad`
--
USE mydbsiam;


DROP TABLE IF EXISTS `tenfermedad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tenfermedad` (
  `cod_enfer` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`cod_enfer`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenfermedad`
--

LOCK TABLES `tenfermedad` WRITE;
/*!40000 ALTER TABLE `tenfermedad` DISABLE KEYS */;
INSERT INTO `tenfermedad` VALUES (1,'Psoriasis','La psoriasis es una enfermedad de la piel que causa descamación e inflamación (dolor, hinchazón, calentamiento y coloración).'),(2,'Diabetes mellitus tipo 1','Es una enfermedad autoinmune y metabólica caracterizada por una destrucción selectiva de las células beta del páncreas causando una deficiencia absoluta de insulina. Se diferencia de la diabetes mellitus tipo 2 porque es un tipo de diabetes caracterizada por darse en época temprana de la vida, generalmente antes de los 30 años'),(3,'Diabetes mellitus tipo 2','En la diabetes tipo 1, el páncreas no produce insulina. Sin la insulina, hay un exceso de glucosa que permanece en la sangre. Con el tiempo, los altos niveles de glucosa en la sangre pueden causarle problemas serios en el corazón, los ojos, los riñones, los nervios, las encías y los dientes.');
/*!40000 ALTER TABLE `tenfermedad` ENABLE KEYS */;
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
