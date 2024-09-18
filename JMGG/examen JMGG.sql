CREATE DATABASE  IF NOT EXISTS `examen_jmgg` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `examen_jmgg`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: examen_jmgg
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamento` (
  `idDepartamento` int NOT NULL AUTO_INCREMENT,
  `Nomb_Dep` varchar(45) NOT NULL,
  PRIMARY KEY (`idDepartamento`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (101,'Recursos Humanos'),(102,'Finanzas'),(103,'Tecnologia'),(104,'Recursos Humanos'),(105,'Finanzas'),(106,'Tecnologia'),(107,'Recursos Humanos'),(108,'Finanzas'),(109,'Tecnologia');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado` (
  `idEmpleado` int NOT NULL AUTO_INCREMENT,
  `Nomb_emple` varchar(45) NOT NULL,
  `Apellido` varchar(45) NOT NULL,
  `Id_Departamento` int NOT NULL,
  PRIMARY KEY (`idEmpleado`,`Id_Departamento`),
  KEY `fk_Empleado_Departamento_idx` (`Id_Departamento`),
  CONSTRAINT `fk_Empleado_Departamento` FOREIGN KEY (`Id_Departamento`) REFERENCES `departamento` (`idDepartamento`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1,'Juan','Perez',101),(2,'Maria','Gomez',102),(3,'Luis','Fernandez',103),(4,'Ana','Martinez',101),(5,'Carlos','Rodriguez',102),(6,'Elena','Sánchez',103),(7,'Juan','Perez',101),(8,'Maria','Gomez',102),(9,'Luis','Fernandez',103),(10,'Ana','Martinez',101),(11,'Carlos','Rodriguez',102),(12,'Elena','Sánchez',103),(13,'Juan','Perez',101),(14,'Maria','Gomez',102),(15,'Luis','Fernandez',103),(16,'Ana','Martinez',101),(17,'Carlos','Rodriguez',102),(18,'Elena','Sánchez',103);
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `empleado_departamento`
--

DROP TABLE IF EXISTS `empleado_departamento`;
/*!50001 DROP VIEW IF EXISTS `empleado_departamento`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `empleado_departamento` AS SELECT 
 1 AS `nombre`,
 1 AS `apellido`,
 1 AS `departamento`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `salario`
--

DROP TABLE IF EXISTS `salario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salario` (
  `idSalario` int NOT NULL AUTO_INCREMENT,
  `Salario_base` decimal(10,0) NOT NULL,
  `Bono` decimal(10,0) NOT NULL,
  `Fecha_Inicio` date NOT NULL,
  `Fecha_Fin` date DEFAULT NULL,
  `Id_Empleado` int NOT NULL,
  `salario_antiguo` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`idSalario`,`Id_Empleado`),
  KEY `fk_Salario_Empleado1_idx` (`Id_Empleado`),
  CONSTRAINT `fk_Salario_Empleado1` FOREIGN KEY (`Id_Empleado`) REFERENCES `empleado` (`idEmpleado`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salario`
--

LOCK TABLES `salario` WRITE;
/*!40000 ALTER TABLE `salario` DISABLE KEYS */;
INSERT INTO `salario` VALUES (1,3100,500,'2021-01-15',NULL,1,3100),(2,3200,600,'2020-06-10',NULL,2,NULL),(3,3500,700,'2019-11-05',NULL,3,NULL),(4,3100,500,'2021-03-20',NULL,4,NULL),(5,3400,600,'2020-07-15',NULL,5,3400),(6,3600,700,'2019-12-01','2020-12-01',6,NULL),(7,3000,500,'2021-01-15',NULL,1,NULL),(8,3200,600,'2020-06-10',NULL,2,NULL),(9,3500,700,'2019-11-05',NULL,3,NULL),(10,3100,500,'2021-03-20',NULL,4,NULL),(11,3300,600,'2020-07-15',NULL,5,NULL),(12,3600,700,'2019-12-01','2020-12-01',6,NULL);
/*!40000 ALTER TABLE `salario` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tgr_cambio_de_sueldo` BEFORE UPDATE ON `salario` FOR EACH ROW begin 
	set new.salario_antiguo= old.Salario_base;
    
End */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `salario_empleado`
--

DROP TABLE IF EXISTS `salario_empleado`;
/*!50001 DROP VIEW IF EXISTS `salario_empleado`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `salario_empleado` AS SELECT 
 1 AS `Apellido`,
 1 AS `Nomb_emple`,
 1 AS `salario_actual`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'examen_jmgg'
--

--
-- Dumping routines for database 'examen_jmgg'
--

--
-- Final view structure for view `empleado_departamento`
--

/*!50001 DROP VIEW IF EXISTS `empleado_departamento`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `empleado_departamento` AS select `empleado`.`Nomb_emple` AS `nombre`,`empleado`.`Apellido` AS `apellido`,`departamento`.`idDepartamento` AS `departamento` from (`empleado` join `departamento` on((`departamento`.`idDepartamento` = `empleado`.`Id_Departamento`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `salario_empleado`
--

/*!50001 DROP VIEW IF EXISTS `salario_empleado`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `salario_empleado` AS select `empleado`.`Apellido` AS `Apellido`,`empleado`.`Nomb_emple` AS `Nomb_emple`,(`salario`.`Salario_base` + `salario`.`Bono`) AS `salario_actual` from (`empleado` join `salario` on((`empleado`.`idEmpleado` = `salario`.`Id_Empleado`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-30 21:33:45
