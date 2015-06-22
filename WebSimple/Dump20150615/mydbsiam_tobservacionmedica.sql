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
-- Table structure for table `tobservacionmedica`
--

USE mydbsiam;

DROP TABLE IF EXISTS `tobservacionmedica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tobservacionmedica` (
  `TDH_fecha_atencion` date NOT NULL,
  `TDH_THistoriaPaciente_dni` int(8) NOT NULL,
  `patologia` varchar(120) DEFAULT NULL,
  `med_prescritos` varchar(120) DEFAULT NULL,
  `diagnostico` varchar(120) NOT NULL,
  `fecha_sintoma` date NOT NULL,
  `TMedico_cod_medico` int(11) NOT NULL,
  PRIMARY KEY (`TDH_fecha_atencion`,`TDH_THistoriaPaciente_dni`),
  KEY `fk_TObservacionMedica_TMedico1_idx` (`TMedico_cod_medico`),
  CONSTRAINT `fk_TObservacionMedica_TDetalleHistoria1` FOREIGN KEY (`TDH_fecha_atencion`, `TDH_THistoriaPaciente_dni`) REFERENCES `tdetallehistoria` (`fecha_atencion`, `THistoriaPaciente_dni`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_TObservacionMedica_TMedico1` FOREIGN KEY (`TMedico_cod_medico`) REFERENCES `tmedico` (`cod_medico`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tobservacionmedica`
--

LOCK TABLES `tobservacionmedica` WRITE;
/*!40000 ALTER TABLE `tobservacionmedica` DISABLE KEYS */;
/*!40000 ALTER TABLE `tobservacionmedica` ENABLE KEYS */;
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
