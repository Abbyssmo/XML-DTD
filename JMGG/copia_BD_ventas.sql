-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: ventas
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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `ID_Cliente` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre_CL` varchar(60) NOT NULL,
  `Apellido1_CL` varchar(60) NOT NULL,
  `APellido2_CL` varchar(60) DEFAULT NULL,
  `Ciudad_CL` varchar(60) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `TLF_CL` int DEFAULT NULL,
  PRIMARY KEY (`ID_Cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Aarón','Rivero','Gómez','Almería','aaronrivero@gmail.com',922531020),(2,'Adela','Salas','Díaz','Granada','adelasalasdiaz@yahoo.com',922584700),(3,'Adolfo','Rubio','Flores','Sevilla','adolfito@gmail.com',NULL),(4,'Adrián','Suárez',NULL,'Jaén','adrisuarez@yahoo.es',928526300),(5,'Marcos','Loyola','Méndez','Tenerife','marcosloyo@cipcampus.com',92822200),(6,'María','Santana','Moreno','Las palmas',NULL,NULL),(7,'Pilar','Ruiz',NULL,'Las palmas',NULL,9227853),(8,'Pepe','Ruiz','Santana','Tenerife','pepe@hotmail.com',NULL),(9,'Guillermo','López','Gómez','Granada','guille@hotmail.com',92222225),(10,'Daniel','Santana','Loyola','Sevilla','danielsantana@gmail.com',9282125);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comerciales`
--

DROP TABLE IF EXISTS `comerciales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comerciales` (
  `ID_Comercial` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre_CO` varchar(60) NOT NULL,
  `Apellido1_CO` varchar(60) NOT NULL,
  `APellido2_CO` varchar(60) DEFAULT NULL,
  `Comision` decimal(3,2) DEFAULT NULL,
  `TLF_CO` int NOT NULL,
  PRIMARY KEY (`ID_Comercial`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comerciales`
--

LOCK TABLES `comerciales` WRITE;
/*!40000 ALTER TABLE `comerciales` DISABLE KEYS */;
INSERT INTO `comerciales` VALUES (1,'Daniel','Sáez','Vega',0.15,922584769),(2,'Juan','Gómez','López',0.13,928235689),(3,'Diego','Flores','Salas',0.11,91657489),(4,'Marta','Herrera','Gil',0.14,928718293),(5,'Antonio','Carretero','Ortega',0.12,928639874),(6,'Manuel','Domínguez','Hernández',0.13,600789641),(8,'Alfredo','Ruiz','Flores',0.05,633451263);
/*!40000 ALTER TABLE `comerciales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `importe_pedidos`
--

DROP TABLE IF EXISTS `importe_pedidos`;
/*!50001 DROP VIEW IF EXISTS `importe_pedidos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `importe_pedidos` AS SELECT 
 1 AS `ID_Cliente`,
 1 AS `Nombre_CL`,
 1 AS `Apellido1_CL`,
 1 AS `APellido2_CL`,
 1 AS `SUM(pedidos.importe)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `importe_pedidos_clientes`
--

DROP TABLE IF EXISTS `importe_pedidos_clientes`;
/*!50001 DROP VIEW IF EXISTS `importe_pedidos_clientes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `importe_pedidos_clientes` AS SELECT 
 1 AS `ID_Cliente`,
 1 AS `Nombre_CL`,
 1 AS `Apellido1_CL`,
 1 AS `APellido2_CL`,
 1 AS `SUM(pedidos.importe)`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `id_pedido` int unsigned NOT NULL AUTO_INCREMENT,
  `importe` decimal(10,2) NOT NULL,
  `fecha` datetime NOT NULL,
  `ID_Cliente` int unsigned NOT NULL,
  `ID_Comercial` int unsigned NOT NULL,
  PRIMARY KEY (`id_pedido`),
  KEY `ID_Cliente` (`ID_Cliente`),
  KEY `ID_Comercial` (`ID_Comercial`),
  CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`ID_Cliente`) REFERENCES `clientes` (`ID_Cliente`),
  CONSTRAINT `pedidos_ibfk_2` FOREIGN KEY (`ID_Comercial`) REFERENCES `comerciales` (`ID_Comercial`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,150.50,'2017-10-05 00:00:00',5,2),(2,270.65,'2016-09-10 00:00:00',1,5),(3,65.26,'2017-10-05 00:00:00',2,1),(4,110.50,'2016-08-17 00:00:00',8,3),(5,948.50,'2017-09-10 00:00:00',5,2),(6,2400.60,'2016-07-27 00:00:00',7,1),(7,5760.00,'2015-09-10 00:00:00',2,1),(8,1983.43,'2017-10-10 00:00:00',4,6),(9,2480.40,'2016-10-10 00:00:00',8,3),(10,250.45,'2015-06-27 00:00:00',8,2),(12,3045.60,'2017-04-25 00:00:00',2,1),(13,545.75,'2019-01-25 00:00:00',6,1),(14,145.82,'2017-02-02 00:00:00',6,1),(15,370.85,'2019-03-11 00:00:00',1,5),(16,2389.23,'2019-03-11 00:00:00',1,5);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `trampita`
--

DROP TABLE IF EXISTS `trampita`;
/*!50001 DROP VIEW IF EXISTS `trampita`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `trampita` AS SELECT 
 1 AS `Nombre_CL`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `importe_pedidos`
--

/*!50001 DROP VIEW IF EXISTS `importe_pedidos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `importe_pedidos` AS select `clientes`.`ID_Cliente` AS `ID_Cliente`,`clientes`.`Nombre_CL` AS `Nombre_CL`,`clientes`.`Apellido1_CL` AS `Apellido1_CL`,`clientes`.`APellido2_CL` AS `APellido2_CL`,sum(`pedidos`.`importe`) AS `SUM(pedidos.importe)` from (`clientes` left join `pedidos` on((`clientes`.`ID_Cliente` = `pedidos`.`ID_Cliente`))) group by `clientes`.`ID_Cliente`,`clientes`.`Nombre_CL` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `importe_pedidos_clientes`
--

/*!50001 DROP VIEW IF EXISTS `importe_pedidos_clientes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `importe_pedidos_clientes` AS select `clientes`.`ID_Cliente` AS `ID_Cliente`,`clientes`.`Nombre_CL` AS `Nombre_CL`,`clientes`.`Apellido1_CL` AS `Apellido1_CL`,`clientes`.`APellido2_CL` AS `APellido2_CL`,sum(`pedidos`.`importe`) AS `SUM(pedidos.importe)` from (`clientes` left join `pedidos` on((`clientes`.`ID_Cliente` = `pedidos`.`ID_Cliente`))) group by `clientes`.`ID_Cliente`,`clientes`.`Nombre_CL` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `trampita`
--

/*!50001 DROP VIEW IF EXISTS `trampita`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `trampita` AS select `clientes`.`Nombre_CL` AS `Nombre_CL` from `clientes` where (not((`clientes`.`Nombre_CL` like 'A%'))) order by `clientes`.`Nombre_CL` */;
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

-- Dump completed on 2024-07-01 20:17:47
