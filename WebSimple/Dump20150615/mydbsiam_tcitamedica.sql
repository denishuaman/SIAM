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
-- Table structure for table `tcitamedica`
--

USE mydbsiam;

DROP TABLE IF EXISTS `tcitamedica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcitamedica` (
  `TPaciente_dni` int(8) NOT NULL,
  `TDispCitaMed_cod_dispo` int(11) NOT NULL,
  `TDispCitaMed_cod_medico` int(11) NOT NULL,
  `fecha_cita_creada` date NOT NULL,
  `num_turno` int(11) NOT NULL,
  `estado_pago` int(11) NOT NULL,
  `estado_atencion` int(11) NOT NULL,
  `fecha_cita_prog` date NOT NULL,
  `costo` double DEFAULT NULL,
  PRIMARY KEY (`TPaciente_dni`,`TDispCitaMed_cod_dispo`,`TDispCitaMed_cod_medico`,`fecha_cita_creada`),
  KEY `fk_TPaciente_has_TDispCitaMed_TDisponibilidadC_idx` (`TDispCitaMed_cod_dispo`,`TDispCitaMed_cod_medico`),
  KEY `fk_TPaciente_has_TDisCitaMed_TPaciente1_idx` (`TPaciente_dni`),
  CONSTRAINT `fk_TPaciente_has_TDisCitaMed_TDisponibilidadCit1` FOREIGN KEY (`TDispCitaMed_cod_dispo`, `TDispCitaMed_cod_medico`) REFERENCES `tdisponibilidadcitamedica` (`TDis_cod_dispo`, `TMed_cod_medico`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_TPaciente_has_TDisCitaMed_TPaciente1` FOREIGN KEY (`TPaciente_dni`) REFERENCES `tpaciente` (`dni`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tcitamedica`
--

LOCK TABLES `tcitamedica` WRITE;
/*!40000 ALTER TABLE `tcitamedica` DISABLE KEYS */;
INSERT INTO `tcitamedica` VALUES (12345678,2,3,'2015-06-14',2,1,0,'2015-06-17',10),(45891391,1,1,'2015-06-08',1,0,0,'2015-06-15',8),(47964408,1,1,'2015-06-09',2,1,0,'2015-06-15',10),(47964409,2,1,'2015-06-13',1,0,0,'2015-06-17',10),(47964411,1,1,'2015-06-13',1,1,0,'2015-06-22',10),(70147347,1,2,'2015-06-14',1,1,0,'2015-06-15',35),(987654321,2,3,'2015-06-14',1,0,0,'2015-06-17',10);
/*!40000 ALTER TABLE `tcitamedica` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-15  7:47:17
