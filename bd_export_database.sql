CREATE DATABASE  IF NOT EXISTS `proyectobd` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `proyectobd`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: proyectobd
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `calificaciones`
--

DROP TABLE IF EXISTS `calificaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calificaciones` (
  `Id_calif` varchar(10) NOT NULL,
  `Nota_cali` float NOT NULL,
  `Comentario` varchar(250) DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  `cliente_Cedula` varchar(25) NOT NULL,
  `Ced_Pas` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Id_calif`),
  KEY `Ced_Pas` (`Ced_Pas`),
  KEY `cliente_Cedula` (`cliente_Cedula`),
  KEY `indice1` (`Nota_cali`),
  CONSTRAINT `calificaciones_ibfk_1` FOREIGN KEY (`Ced_Pas`) REFERENCES `pastelero` (`CedulaPanadero`),
  CONSTRAINT `calificaciones_ibfk_2` FOREIGN KEY (`cliente_Cedula`) REFERENCES `cliente` (`Cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calificaciones`
--

LOCK TABLES `calificaciones` WRITE;
/*!40000 ALTER TABLE `calificaciones` DISABLE KEYS */;
INSERT INTO `calificaciones` VALUES ('001',5,'Buen trabajo','2020-02-20','983364848','095121344'),('002',4.5,'Buen trabajo','2020-02-20','983364848','095121344'),('003',3.5,'Buen trabajo','2020-02-20','983364848','095121344'),('004',4.5,'Buen trabajo','2020-02-20','983364848','231485959'),('005',4.5,'Buen trabajo','2020-02-20','983364848','231485959'),('006',5,'Buen trabajo','2020-02-20','098724923','231485959'),('007',4.5,'Buen trabajo','2020-02-20','098724923','797737848'),('008',5,'Buen trabajo','2020-02-20','098724923','797737848'),('009',4.5,'Buen trabajo','2020-02-20','098724923','797737848'),('010',5,'Buen trabajo','2020-02-20','983364848','797737848'),('011',5,'Buen trabajo','2020-02-20','000000010','095121344'),('012',4.5,'Buen trabajo','2020-02-20','000000011','095121344'),('013',3.5,'Buen trabajo','2020-02-20','000000012','095121344'),('014',4.5,'Buen trabajo','2020-02-20','000000013','231485959'),('015',4.5,'Buen trabajo','2020-02-20','000000014','231485959'),('016',5,'Buen trabajo','2020-02-20','000000015','231485959'),('017',4.5,'Buen trabajo','2020-02-20','000000016','797737848'),('018',5,'Buen trabajo','2020-02-20','000000017','797737848'),('019',4.5,'Buen trabajo','2020-02-20','000000018','797737848'),('020',5,'Buen trabajo','2020-02-20','000000019','797737848'),('021',5,'Buen trabajo','2020-02-20','000000020','095121344'),('022',4.5,'Buen trabajo','2020-02-20','000000021','095121344'),('023',3.5,'Buen trabajo','2020-02-20','000000022','095121344'),('024',4.5,'Buen trabajo','2020-02-20','000000023','231485959'),('025',4.5,'Buen trabajo','2020-02-20','000000024','231485959'),('026',5,'Buen trabajo','2020-02-20','000000026','231485959'),('027',4.5,'Buen trabajo','2020-02-20','000000027','797737848'),('028',5,'Buen trabajo','2020-02-20','000000028','797737848'),('029',4.5,'Buen trabajo','2020-02-20','000000029','797737848'),('030',5,'Buen trabajo','2020-02-20','000000030','797737848'),('031',5,'Buen trabajo','2020-02-20','000000031','095121344'),('032',4.5,'Buen trabajo','2020-02-20','000000032','095121344'),('033',3.5,'Buen trabajo','2020-02-20','000000033','095121344'),('034',4.5,'Buen trabajo','2020-02-20','000000034','231485959'),('035',4.5,'Buen trabajo','2020-02-20','000000035','231485959'),('036',5,'Buen trabajo','2020-02-20','000000036','231485959'),('037',4.5,'Buen trabajo','2020-02-20','000000037','797737848'),('038',5,'Buen trabajo','2020-02-20','000000038','797737848'),('039',4.5,'Buen trabajo','2020-02-20','000000039','797737848'),('040',5,'Buen trabajo','2020-02-20','000000040','797737848'),('041',5,'Buen trabajo','2020-02-20','000000041','095121344'),('042',4.5,'Buen trabajo','2020-02-20','000000042','095121344'),('043',3.5,'Buen trabajo','2020-02-20','000000043','095121344'),('044',4.5,'Buen trabajo','2020-02-20','000000044','231485959'),('045',4.5,'Buen trabajo','2020-02-20','000000045','231485959'),('046',5,'Buen trabajo','2020-02-20','000000046','231485959'),('047',4.5,'Buen trabajo','2020-02-20','000000047','797737848'),('048',5,'Buen trabajo','2020-02-20','000000048','797737848'),('049',4.5,'Buen trabajo','2020-02-20','000000049','797737848'),('050',5,'Buen trabajo','2020-02-20','000000045','797737848'),('2027',5,'SSS','2021-01-26','293857398','000000101'),('2602',4,'PRUEBA','2021-01-26','293857398','000000101'),('4688',5,'PRUEBAPERIDIDO','2021-01-26','293857398','099737492'),('4728',4,'prueba','2021-01-26','293857398','099737492'),('6995',5,'prueba','2021-01-26','293857398','000000101');
/*!40000 ALTER TABLE `calificaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `cargarcalificaciones`
--

DROP TABLE IF EXISTS `cargarcalificaciones`;
/*!50001 DROP VIEW IF EXISTS `cargarcalificaciones`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cargarcalificaciones` AS SELECT 
 1 AS `Id_calif`,
 1 AS `Nota_cali`,
 1 AS `Comentario`,
 1 AS `Fecha`,
 1 AS `cliente_Cedula`,
 1 AS `Ced_Pas`,
 1 AS `Nombre`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `Id_Categoria` int NOT NULL,
  `Nombre_categoria` varchar(50) NOT NULL,
  PRIMARY KEY (`Id_Categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (11111,'Tortas'),(22222,'Cheescake'),(32323,'Panes');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `Cedula` varchar(25) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `telefono` int DEFAULT NULL,
  `Correo` varchar(50) NOT NULL,
  `Contraseña` varchar(50) NOT NULL,
  PRIMARY KEY (`Cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES ('000000010','Juan',2392401,'juan1@gmail.com','kjdskjds'),('000000011','Pedro',2839320,'pedr2o@gmail.com','kjdskjds'),('000000012','Daniel',2213020,'dani3el@gmail.com','kjdskjds'),('000000013','David',2223111,'david4@gmail.com','kjdskjds'),('000000014','Paul',3332422,'paul5@gmail.com','kjdskjds'),('000000015','Mabel',4434111,'mab4el@gmail.com','kjdskjds'),('000000016','Daniela',4344222,'da4niela@gmail.com','kjdskjds'),('000000017','Javier',5525533,'javi53er@gmail.com','kjdskjds'),('000000018','Xavier',9864324,'xavier@43gmail.com','kjdskjds'),('000000019','Jordan',9833749,'jordan@g3mail.com','kjdskjds'),('000000020','Juan',2392201,'juan3@gmail.com','kjdskjds'),('000000021','Pedro',2833920,'ped3ro@gmail.com','kjdskjds'),('000000022','Daniel',2213020,'dan3iel@gmail.com','kjdskjds'),('000000023','David',2222111,'davi3d43@gmail.com','kjdskjds'),('000000024','Paul',3334222,'pau4l@gmail.com','kjdskjds'),('000000025','Mabel',4434111,'ma3bel@gmail.com','kjdskjds'),('000000026','Daniela',444222,'d45aniela@gmail.com','kjdskjds'),('000000027','Javier',5555533,'javi34er@gmail.com','kjdskjds'),('000000028','Xavier',9836324,'xavier4334@gmail.com','kjdskjds'),('000000029','Jordan',9843749,'jordan@g43mail.com','kjdskjds'),('000000030','Juan',2392201,'juan@gmail.343com','kjdskjds'),('000000031','Pedro',2833920,'pedr343o@gmail.com','kjdskjds'),('000000032','Daniel',2143020,'danie4334l@gmail.com','kjdskjds'),('000000033','David',222111,'david34@gmail.com','kjdskjds'),('000000034','Paul',3332222,'paul@gm34ail.com','kjdskjds'),('000000035','Mabel',4446111,'mabe3l@gmail.com','kjdskjds'),('000000036','Daniela',4454222,'dan34iela@gmail.com','kjdskjds'),('000000037','Javier',5556533,'javie222r@gmail.com','kjdskjds'),('000000038','Xavier',9846324,'xavier343@gmail.com','kjdskjds'),('000000039','Jordan',983749,'jordan232@gmail.com','kjdskjds'),('000000040','Juan',2393201,'jua343n@gmail.com','kjdskjds'),('000000041','Pedro',2834920,'pedr232o@gmail.com','kjdskjds'),('000000042','Daniel',2163020,'danie232l@gmail.com','kjdskjds'),('000000043','David',2221611,'davi324d@gmail.com','kjdskjds'),('000000044','Paul',3335222,'paul@gma23233il.com','kjdskjds'),('000000045','Mabel',4444111,'mabe322l@gmail.com','kjdskjds'),('000000046','Daniela',4434222,'dani32ela@gmail.com','kjdskjds'),('000000047','Javier',5555233,'javier@32gmail.com','kjdskjds'),('000000048','Xavier',9863124,'xavier@g32345mail.com','kjdskjds'),('000000049','Jordan',9837149,'jordan434@gmail.com','kjdskjds'),('092737492','Xavier',986324,'xavier@gmail.com','kjdskjds'),('093121344','Juan',239201,'juan@gmail.com','kjdskjds'),('093732773','Pedro',283920,'pedro@gmail.com','kjdskjds'),('098332832','Daniela',444222,'daniela@gmail.com','kjdskjds'),('098724923','Javier',555533,'javier@gmail.com','kjdskjds'),('1','kdkdkdk',6852,'ssasddew','jordan'),('123483837','Daniel',213020,'daniel@gmail.com','kjdskjds'),('238485959','David',222111,'david@gmail.com','kjdskjds'),('293857398','Jordan',983749,'jordan@gmail.com','kjdskjds'),('58545','kordj',455888,'jsjsjsj','jsjsjs'),('794737848','Paul',333222,'paul@gmail.com','kjdskjds'),('8452120','kordj',455888,'jsjsjsj','jsjsjs'),('983364848','Mabel',444111,'mabel@gmail.com','kjdskjds');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `consultapanaderos`
--

DROP TABLE IF EXISTS `consultapanaderos`;
/*!50001 DROP VIEW IF EXISTS `consultapanaderos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consultapanaderos` AS SELECT 
 1 AS `CedulaPanadero`,
 1 AS `Nombre`,
 1 AS `telefono`,
 1 AS `Correo`,
 1 AS `Contraseña`,
 1 AS `Cod_postal`,
 1 AS `Calle_Principal`,
 1 AS `Calle_Secundaria`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `consultarpedidos`
--

DROP TABLE IF EXISTS `consultarpedidos`;
/*!50001 DROP VIEW IF EXISTS `consultarpedidos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consultarpedidos` AS SELECT 
 1 AS `Pedido_id`,
 1 AS `Fecha`,
 1 AS `Total`,
 1 AS `Estado`,
 1 AS `cliente_Cedula`,
 1 AS `pastelero_CedulaPanadero`,
 1 AS `Nombre_pastelero`,
 1 AS `telefono_pastelero`,
 1 AS `calificado`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `consultarproductos`
--

DROP TABLE IF EXISTS `consultarproductos`;
/*!50001 DROP VIEW IF EXISTS `consultarproductos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consultarproductos` AS SELECT 
 1 AS `Prod_Id`,
 1 AS `Nombre`,
 1 AS `Canti`,
 1 AS `Precio`,
 1 AS `Nombre_categoria`,
 1 AS `pastelero_CedulaPanadero`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `cuentabancaria`
--

DROP TABLE IF EXISTS `cuentabancaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuentabancaria` (
  `Numero_cuenta` int NOT NULL,
  `Tipo_de_cuenta` varchar(25) NOT NULL,
  `Ced_clie` varchar(25) NOT NULL,
  `saldo` float NOT NULL,
  PRIMARY KEY (`Numero_cuenta`),
  KEY `Ced_clie` (`Ced_clie`),
  KEY `indice2` (`saldo`),
  CONSTRAINT `cuentabancaria_ibfk_1` FOREIGN KEY (`Ced_clie`) REFERENCES `cliente` (`Cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuentabancaria`
--

LOCK TABLES `cuentabancaria` WRITE;
/*!40000 ALTER TABLE `cuentabancaria` DISABLE KEYS */;
INSERT INTO `cuentabancaria` VALUES (1,'Corriente','000000010',110),(2,'Ahorro','000000011',110),(3,'Corriente','000000012',110),(4,'Ahorro','000000013',110),(5,'Corriente','000000014',110),(6,'Ahorro','000000015',110),(7,'Corriente','000000016',110),(8,'Ahorro','000000017',110),(9,'Corriente','000000018',110),(10,'Ahorro','000000019',110),(11,'Corriente','000000020',110),(12,'Ahorro','000000021',110),(13,'Corriente','000000022',110),(14,'Ahorro','000000023',110),(15,'Corriente','000000024',110),(16,'Ahorro','000000025',110),(17,'Corriente','000000026',110),(18,'Ahorro','000000027',110),(19,'Corriente','000000028',110),(20,'Ahorro','000000029',110),(21,'Corriente','000000030',110),(22,'Ahorro','000000031',110),(23,'Corriente','000000032',110),(24,'Ahorro','000000033',110),(25,'Corriente','000000034',110),(26,'Ahorro','000000035',110),(27,'Corriente','000000036',110),(28,'Ahorro','000000037',110),(29,'Corriente','000000038',110),(30,'Ahorro','000000039',110),(31,'Corriente','000000040',110),(32,'Ahorro','000000041',110),(33,'Corriente','000000042',110),(34,'Ahorro','000000043',110),(35,'Corriente','000000044',110),(36,'Ahorro','000000045',110),(37,'Corriente','000000046',110),(38,'Ahorro','000000047',110),(39,'Corriente','000000048',110),(40,'Ahorro','000000049',110),(11111111,'Corriente','093121344',110),(11111112,'Ahorro','098724923',110),(22222222,'Ahorro','093732773',110),(33333333,'Corriente','093732773',110),(44444444,'Ahorro','093121344',110),(55555555,'Corriente','098332832',110),(66666666,'Ahorro','983364848',110),(77777777,'Corriente','794737848',110),(88888888,'Ahorro','293857398',110),(99999999,'Corriente','123483837',110);
/*!40000 ALTER TABLE `cuentabancaria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entrega_domicilio`
--

DROP TABLE IF EXISTS `entrega_domicilio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entrega_domicilio` (
  `Codigo` int NOT NULL,
  `Domicilio` varchar(50) NOT NULL,
  `Fecha` date NOT NULL,
  `hora` time NOT NULL,
  `Ced_clie` varchar(25) NOT NULL,
  `pastelero_CedulaPanadero` varchar(25) NOT NULL,
  PRIMARY KEY (`Codigo`),
  KEY `Ced_clie` (`Ced_clie`),
  KEY `pastelero_CedulaPanadero` (`pastelero_CedulaPanadero`),
  KEY `indice3` (`Fecha`),
  CONSTRAINT `entrega_domicilio_ibfk_1` FOREIGN KEY (`Ced_clie`) REFERENCES `cliente` (`Cedula`),
  CONSTRAINT `entrega_domicilio_ibfk_2` FOREIGN KEY (`pastelero_CedulaPanadero`) REFERENCES `pastelero` (`CedulaPanadero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrega_domicilio`
--

LOCK TABLES `entrega_domicilio` WRITE;
/*!40000 ALTER TABLE `entrega_domicilio` DISABLE KEYS */;
INSERT INTO `entrega_domicilio` VALUES (100,'Prosperina','2020-03-21','18:30:00','093121344','099737492'),(101,'Espol peñas','2020-03-21','11:30:00','093732773','099737492'),(102,'Sauces','2020-03-21','12:30:00','123483837','299857398'),(103,'Alborada','2020-03-21','10:30:00','238485959','299857398'),(104,'Urdesa','2020-03-21','12:35:00','794737848','099737492'),(105,'Urdesa','2020-03-21','18:40:00','983364848','986364848'),(106,'Urdesa','2020-03-21','19:30:00','098332832','986364848'),(107,'Samanes','2020-03-21','19:00:00','098724923','797737848'),(108,'Monte Sinai','2020-03-21','18:00:00','092737492','797737848'),(109,'Prosperina','2020-03-21','18:00:00','293857398','797737848'),(110,'Prosperina','2020-03-21','18:30:00','093121344','099737492'),(111,'Espol peñas','2020-03-21','11:30:00','093732773','099737492'),(112,'Sauces','2020-03-21','12:30:00','123483837','299857398'),(113,'Alborada','2020-03-21','10:30:00','238485959','299857398'),(114,'Urdesa','2020-03-21','12:35:00','794737848','099737492'),(115,'Urdesa','2020-03-21','18:40:00','983364848','986364848'),(116,'Urdesa','2020-03-21','19:30:00','098332832','986364848'),(117,'Samanes','2020-03-21','19:00:00','098724923','797737848'),(118,'Monte Sinai','2020-03-21','18:00:00','092737492','797737848'),(119,'Prosperina','2020-03-21','18:00:00','293857398','797737848'),(120,'Prosperina','2020-03-21','18:30:00','093121344','099737492'),(121,'Espol peñas','2020-03-21','11:30:00','093732773','099737492'),(122,'Sauces','2020-03-21','12:30:00','123483837','299857398'),(123,'Alborada','2020-03-21','10:30:00','238485959','299857398'),(124,'Urdesa','2020-03-21','12:35:00','794737848','099737492'),(125,'Urdesa','2020-03-21','18:40:00','983364848','986364848'),(126,'Urdesa','2020-03-21','19:30:00','098332832','986364848'),(127,'Samanes','2020-03-21','19:00:00','098724923','797737848'),(128,'Monte Sinai','2020-03-21','18:00:00','092737492','797737848'),(129,'Prosperina','2020-03-21','18:00:00','293857398','797737848'),(130,'Prosperina','2020-03-21','18:30:00','093121344','099737492'),(131,'Espol peñas','2020-03-21','11:30:00','093732773','099737492'),(132,'Sauces','2020-03-21','12:30:00','123483837','299857398'),(133,'Alborada','2020-03-21','10:30:00','238485959','299857398'),(134,'Urdesa','2020-03-21','12:35:00','794737848','099737492'),(135,'Urdesa','2020-03-21','18:40:00','983364848','986364848'),(136,'Urdesa','2020-03-21','19:30:00','098332832','986364848'),(137,'Samanes','2020-03-21','19:00:00','098724923','797737848'),(138,'Monte Sinai','2020-03-21','18:00:00','092737492','797737848'),(139,'Prosperina','2020-03-21','18:00:00','293857398','797737848'),(140,'Prosperina','2020-03-21','18:30:00','093121344','099737492'),(141,'Espol peñas','2020-03-21','11:30:00','093732773','099737492'),(142,'Sauces','2020-03-21','12:30:00','123483837','299857398'),(143,'Alborada','2020-03-21','10:30:00','238485959','299857398'),(144,'Urdesa','2020-03-21','12:35:00','794737848','099737492'),(145,'Urdesa','2020-03-21','18:40:00','983364848','986364848'),(146,'Urdesa','2020-03-21','19:30:00','098332832','986364848'),(147,'Samanes','2020-03-21','19:00:00','098724923','797737848'),(148,'Monte Sinai','2020-03-21','18:00:00','092737492','797737848'),(149,'Prosperina','2020-03-21','18:00:00','293857398','797737848'),(1341111,'Prosperina','2020-03-21','18:30:00','093121344','099737492'),(2522222,'Espol peñas','2020-03-21','11:30:00','093732773','099737492'),(3233433,'Sauces','2020-03-21','12:30:00','123483837','299857398'),(3234639,'Monte Sinai','2020-03-21','18:00:00','092737492','797737848'),(3423217,'Urdesa','2020-03-21','19:30:00','098332832','986364848'),(3546786,'Urdesa','2020-03-21','18:40:00','983364848','986364848'),(4565438,'Samanes','2020-03-21','19:00:00','098724923','797737848'),(4787444,'Alborada','2020-03-21','10:30:00','238485959','299857398'),(5342155,'Urdesa','2020-03-21','12:35:00','794737848','099737492'),(9836460,'Prosperina','2020-03-21','18:00:00','293857398','797737848');
/*!40000 ALTER TABLE `entrega_domicilio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `localizacion`
--

DROP TABLE IF EXISTS `localizacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `localizacion` (
  `CodigoPostal` int NOT NULL,
  `Numero` int NOT NULL,
  `Calle_Principal` varchar(50) NOT NULL,
  `Calle_Secundaria` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CodigoPostal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `localizacion`
--

LOCK TABLES `localizacion` WRITE;
/*!40000 ALTER TABLE `localizacion` DISABLE KEYS */;
INSERT INTO `localizacion` VALUES (1,12,'Prosperina',NULL),(2,34,'Espol peñas','aula123'),(3,132,'Sauces','sauces9'),(4,344,'Alborada','5ta etapa'),(5,44,'Urdesa',NULL),(6,43,'Urdesa',NULL),(7,22,'Urdesa',NULL),(8,35,'Samanes',NULL),(9,126,'Monte Sinai','hospital monte sinai'),(10,239,'Prosperina','Mercador la prosperina'),(11,12,'Prosperina',NULL),(12,34,'Espol peñas','aula123'),(13,132,'Sauces','sauces9'),(14,344,'Alborada','5ta etapa'),(15,44,'Urdesa',NULL),(16,43,'Urdesa',NULL),(17,22,'Urdesa',NULL),(18,35,'Samanes',NULL),(19,126,'Monte Sinai','hospital monte sinai'),(20,239,'Prosperina','Mercador la prosperina'),(21,12,'Prosperina',NULL),(22,34,'Espol peñas','aula123'),(23,132,'Sauces','sauces9'),(24,344,'Alborada','5ta etapa'),(25,44,'Urdesa',NULL),(26,43,'Urdesa',NULL),(27,22,'Urdesa',NULL),(28,35,'Samanes',NULL),(29,126,'Monte Sinai','hospital monte sinai'),(30,239,'Prosperina','Mercador la prosperina'),(31,12,'Prosperina',NULL),(32,34,'Espol peñas','aula123'),(33,132,'Sauces','sauces9'),(34,344,'Alborada','5ta etapa'),(35,44,'Urdesa',NULL),(36,43,'Urdesa',NULL),(37,22,'Urdesa',NULL),(38,35,'Samanes',NULL),(39,126,'Monte Sinai','hospital monte sinai'),(40,239,'Prosperina','Mercador la prosperina'),(41,12,'Prosperina',NULL),(42,34,'Espol peñas','aula123'),(43,132,'Sauces','sauces9'),(44,344,'Alborada','5ta etapa'),(45,44,'Urdesa',NULL),(46,43,'Urdesa',NULL),(47,22,'Urdesa',NULL),(48,35,'Samanes',NULL),(49,126,'Monte Sinai','hospital monte sinai'),(50,239,'Prosperina','Mercador la prosperina'),(656,3737,'jdjdj','jdjdjjd'),(1341,12,'Prosperina',NULL),(2155,44,'Urdesa',NULL),(2522,34,'Espol peñas','aula123'),(3427,22,'Urdesa',NULL),(3433,132,'Sauces','sauces9'),(3546,43,'Urdesa',NULL),(3639,126,'Monte Sinai','hospital monte sinai'),(4438,35,'Samanes',NULL),(7444,344,'Alborada','5ta etapa'),(7474,56,'jdjdj','hdhdh'),(9460,239,'Prosperina','Mercador la prosperina'),(9834,848,'jordan','jordan'),(64646,643,'hdhdh','jsjsjsj');
/*!40000 ALTER TABLE `localizacion` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `actualizaciondireccion` BEFORE UPDATE ON `localizacion` FOR EACH ROW BEGIN
if new.CodigoPostal<>old.CodigoPostal then
update pastelero set Cod_postal=new.CodigoPostal;
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `pastelero`
--

DROP TABLE IF EXISTS `pastelero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pastelero` (
  `CedulaPanadero` varchar(25) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `telefono` int DEFAULT NULL,
  `Correo` varchar(50) NOT NULL,
  `Contraseña` varchar(50) NOT NULL,
  `Cod_postal` int DEFAULT NULL,
  PRIMARY KEY (`CedulaPanadero`),
  KEY `Cod_postal` (`Cod_postal`),
  KEY `indice4` (`Nombre`),
  CONSTRAINT `pastelero_ibfk_1` FOREIGN KEY (`Cod_postal`) REFERENCES `localizacion` (`CodigoPostal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pastelero`
--

LOCK TABLES `pastelero` WRITE;
/*!40000 ALTER TABLE `pastelero` DISABLE KEYS */;
INSERT INTO `pastelero` VALUES ('000000100','Carlos',239221,'carlos@gmail.com','kjdskjds',1),('000000101','Ismael',234822,'ismael@gmail.com','kjdskjds',2),('000000102','Daniel',398321,'daniel2@gmail.com','kjdskjds',3),('000000103','David',382989,'david2@gmail.com','kjdskjds',4),('000000104','Paul',283839,'paul2@gmail.com','kjdskjds',5),('000000105','Mabel',283939,'mabel2@gmail.com','kjdskjds',6),('000000106','Daniela',102039,'daniela2@gmail.com','kjdskjds',7),('000000107','Javier',139202,'javier2@gmail.com','kjdskjds',8),('000000108','Xavier',239210,'xavier2@gmail.com','kjdskjds',9),('000000109','Jordan',923432,'jordan2@gmail.com','kjdskjds',10),('000000110','Carlos',239221,'carlos@gmail.com','kjdskjds',11),('000000111','Ismael',234822,'ismael@gmail.com','kjdskjds',12),('000000112','Daniel',398321,'daniel2@gmail.com','kjdskjds',13),('000000113','David',382989,'david2@gmail.com','kjdskjds',14),('000000114','Paul',283839,'paul2@gmail.com','kjdskjds',15),('000000115','Mabel',283939,'mabel2@gmail.com','kjdskjds',16),('000000116','Daniela',102039,'daniela2@gmail.com','kjdskjds',17),('000000117','Javier',139202,'javier2@gmail.com','kjdskjds',18),('000000118','Xavier',239210,'xavier2@gmail.com','kjdskjds',19),('000000119','Jordan',923432,'jordan2@gmail.com','kjdskjds',21),('000000120','Carlos',239221,'carlos@gmail.com','kjdskjds',22),('000000121','Ismael',234822,'ismael@gmail.com','kjdskjds',23),('000000122','Daniel',398321,'daniel2@gmail.com','kjdskjds',24),('000000123','David',382989,'david2@gmail.com','kjdskjds',25),('000000124','Paul',283839,'paul2@gmail.com','kjdskjds',26),('000000125','Mabel',283939,'mabel2@gmail.com','kjdskjds',27),('000000126','Daniela',102039,'daniela2@gmail.com','kjdskjds',28),('000000127','Javier',139202,'javier2@gmail.com','kjdskjds',29),('000000128','Xavier',239210,'xavier2@gmail.com','kjdskjds',30),('000000129','Jordan',923432,'jordan2@gmail.com','kjdskjds',31),('000000130','Carlos',239221,'carlos@gmail.com','kjdskjds',32),('000000131','Ismael',234822,'ismael@gmail.com','kjdskjds',33),('000000132','Daniel',398321,'daniel2@gmail.com','kjdskjds',34),('000000133','David',382989,'david2@gmail.com','kjdskjds',35),('000000134','Paul',283839,'paul2@gmail.com','kjdskjds',36),('000000135','Mabel',283939,'mabel2@gmail.com','kjdskjds',37),('000000136','Daniela',102039,'daniela2@gmail.com','kjdskjds',38),('000000137','Javier',139202,'javier2@gmail.com','kjdskjds',39),('000000138','Xavier',239210,'xavier2@gmail.com','kjdskjds',40),('000000139','Jordan',923432,'jordan2@gmail.com','kjdskjds',41),('000000140','Carlos',239221,'carlos@gmail.com','kjdskjds',42),('000000141','Ismael',234822,'ismael@gmail.com','kjdskjds',43),('000000142','Daniel',398321,'daniel2@gmail.com','kjdskjds',44),('000000143','David',382989,'david2@gmail.com','kjdskjds',45),('000000144','Paul',283839,'paul2@gmail.com','kjdskjds',46),('000000145','Mabel',283939,'mabel2@gmail.com','kjdskjds',47),('000000146','Daniela',102039,'daniela2@gmail.com','kjdskjds',48),('000000147','Javier',139202,'javier2@gmail.com','kjdskjds',49),('000000148','Xavier',239210,'xavier2@gmail.com','kjdskjds',50),('093332832','Daniela',102039,'daniela2@gmail.com','kjdskjds',3427),('095121344','Carlos',239221,'carlos@gmail.com','kjdskjds',1341),('096724923','Javier',139202,'javier2@gmail.com','kjdskjds',4438),('096732773','Ismael',234822,'ismael@gmail.com','kjdskjds',2522),('099737492','Xavier',239210,'xavier2@gmail.com','kjdskjds',3639),('122483837','Daniel',398321,'daniel2@gmail.com','kjdskjds',3433),('231485959','David',382989,'david2@gmail.com','kjdskjds',7444),('299857398','Jordan',923432,'jordan2@gmail.com','kjdskjds',9460),('4545454','prueba',848484,'jordna','jordan',7474),('6666','jordane',4444,'jdjjdjd','jordan',656),('7636363','jdjjdjd',76347643,'hdhjshgd','jordan',64646),('797737848','Paul',283839,'paul2@gmail.com','kjdskjds',2155),('986364848','Mabel',283939,'mabel2@gmail.com','kjdskjds',3546),('99999','ujord',7777,'dsjhsdh','jordan',9834);
/*!40000 ALTER TABLE `pastelero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `Pedido_id` varchar(10) NOT NULL,
  `Fecha` date NOT NULL,
  `Total` float NOT NULL,
  `Estado` varchar(45) NOT NULL,
  `cliente_Cedula` varchar(25) NOT NULL,
  `pastelero_CedulaPanadero` varchar(25) NOT NULL,
  `calificado` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Pedido_id`,`cliente_Cedula`),
  KEY `cliente_Cedula` (`cliente_Cedula`),
  KEY `pastelero_CedulaPanadero` (`pastelero_CedulaPanadero`),
  CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`cliente_Cedula`) REFERENCES `cliente` (`Cedula`),
  CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`pastelero_CedulaPanadero`) REFERENCES `pastelero` (`CedulaPanadero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES ('0001','2020-03-21',12.5,'Pendiente','293857398','000000101','No'),('0002','2020-03-21',10.5,'Completado','293857398','000000102','Si'),('0003','2020-03-21',11.5,'Completado','293857398','000000103','Si'),('0004','2020-03-21',13.5,'Completado','293857398','000000104','Si'),('0005','2020-03-21',8.5,'Pendiente','098724923','000000105','No'),('0006','2020-03-21',3.2,'Completado','098724923','000000106','Si'),('0008','2020-03-21',5.5,'Completado','983364848','000000107','Si'),('0009','2020-03-21',6.4,'Pendiente','983364848','000000108','No'),('0010','2020-03-21',5.4,'Pendiente','983364848','000000109','No'),('0011','2020-03-21',3.4,'Pendiente','983364848','000000110','No'),('0012','2020-03-21',12.5,'Pendiente','293857398','000000111','No'),('0013','2020-03-21',10.5,'Completado','293857398','000000112','Si'),('0014','2020-03-21',11.5,'Completado','293857398','000000113','Si'),('0015','2020-03-21',13.5,'Completado','293857398','000000114','Si'),('0016','2020-03-21',8.5,'Pendiente','098724923','000000115','No'),('0017','2020-03-21',3.2,'Completado','098724923','000000116','Si'),('0018','2020-03-21',5.5,'Completado','983364848','000000117','Si'),('0019','2020-03-21',6.4,'Pendiente','983364848','000000118','No'),('0020','2020-03-21',5.4,'Pendiente','983364848','000000119','No'),('0021','2020-03-21',3.4,'Pendiente','983364848','000000120','No'),('0022','2020-03-21',12.5,'Pendiente','293857398','000000121','No'),('0023','2020-03-21',10.5,'Completado','293857398','000000122','Si'),('0024','2020-03-21',11.5,'Completado','293857398','000000123','Si'),('0025','2020-03-21',13.5,'Completado','293857398','000000124','Si'),('0026','2020-03-21',8.5,'Pendiente','098724923','000000125','No'),('0027','2020-03-21',3.2,'Completado','098724923','000000126','Si'),('0028','2020-03-21',5.5,'Completado','983364848','000000127','Si'),('0029','2020-03-21',6.4,'Pendiente','983364848','000000128','No'),('0030','2020-03-21',5.4,'Pendiente','983364848','000000129','No'),('0031','2020-03-21',3.4,'Pendiente','983364848','000000130','No'),('0032','2020-03-21',12.5,'Pendiente','293857398','000000131','No'),('0033','2020-03-21',10.5,'Completado','293857398','000000132','Si'),('0034','2020-03-21',11.5,'Completado','293857398','000000133','Si'),('0035','2020-03-21',13.5,'Completado','293857398','000000134','Si'),('0036','2020-03-21',8.5,'Pendiente','098724923','000000135','No'),('0037','2020-03-21',3.2,'Completado','098724923','000000136','Si'),('0038','2020-03-21',5.5,'Completado','983364848','000000137','Si'),('0039','2020-03-21',6.4,'Pendiente','983364848','000000138','No'),('0040','2020-03-21',5.4,'Pendiente','983364848','000000139','No'),('0041','2020-03-21',3.4,'Pendiente','983364848','000000140','No'),('1029','2020-03-21',12.5,'Pendiente','293857398','099737492','No'),('2344','2020-03-21',5.4,'Pendiente','983364848','231485959','No'),('3445','2020-03-21',6.4,'Pendiente','983364848','231485959','No'),('3455','2020-03-21',3.4,'Pendiente','983364848','095121344','No'),('4543','2020-03-21',8.5,'Pendiente','098724923','099737492','No'),('4556','2020-03-21',3.2,'Completado','098724923','231485959','Si'),('6433','2020-03-21',13.5,'Completado','293857398','099737492','Si'),('6666','2020-03-21',10.5,'Completado','293857398','099737492','Si'),('7656','2020-03-21',11.5,'Completado','293857398','099737492','Si'),('7687','2020-03-21',5.5,'Completado','983364848','231485959','Si');
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `actualizacionsaldocuenta` BEFORE INSERT ON `pedido` FOR EACH ROW BEGIN
set @saldoanterior=(select saldo from cuentabancaria);
if saldoanterior>Total then
update cuentabancaria set saldo=saldo-Total;

END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `actualizacionestadodecalificacion` BEFORE UPDATE ON `pedido` FOR EACH ROW BEGIN
if new.Estado='Completado' then
update pedido set calificado='No';
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `Prod_Id` varchar(25) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Canti` int DEFAULT NULL,
  `Precio` float NOT NULL,
  `Id_Cate` int DEFAULT NULL,
  `pastelero_CedulaPanadero` varchar(25) NOT NULL,
  PRIMARY KEY (`Prod_Id`),
  KEY `Id_Cate` (`Id_Cate`),
  KEY `indice5` (`pastelero_CedulaPanadero`),
  CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`Id_Cate`) REFERENCES `categoria` (`Id_Categoria`),
  CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`pastelero_CedulaPanadero`) REFERENCES `pastelero` (`CedulaPanadero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES ('0001','Tarta de manzana',12,2.5,11111,'797737848'),('0002','Pan de piña',20,0.5,32323,'797737848'),('0003','Torta mojada de chocolate',25,3.5,11111,'797737848'),('0004','Dulce de tres leche',12,2.5,11111,'797737848'),('0005','Cara sucia',30,0.5,32323,'099737492'),('0006','Pan Integral',12,0.25,32323,'099737492'),('0007','Tarta de pera',12,2.5,11111,'099737492'),('0008','Cheescake',12,2.5,22222,'099737492'),('0009','Torta de chocolate',12,2.5,11111,'099737492'),('0010','tarta de durazano',12,2.5,11111,'000000101'),('0011','Tarta de manzana',12,2.5,11111,'000000102'),('0012','Pan de piña',20,0.5,32323,'000000103'),('0013','Torta mojada de chocolate',25,3.5,11111,'000000104'),('0014','Dulce de tres leche',12,2.5,11111,'000000105'),('0015','Cara sucia',30,0.5,32323,'000000106'),('0016','Pan Integral',12,0.25,32323,'000000107'),('0017','Tarta de pera',12,2.5,11111,'000000108'),('0018','Cheescake',12,2.5,22222,'000000109'),('0019','Torta de chocolate',12,2.5,11111,'000000110'),('0020','tarta de durazano',12,2.5,11111,'000000111'),('0021','Tarta de manzana',12,2.5,11111,'000000112'),('0022','Pan de piña',20,0.5,32323,'000000113'),('0023','Torta mojada de chocolate',25,3.5,11111,'000000114'),('0024','Dulce de tres leche',12,2.5,11111,'000000115'),('0025','Cara sucia',30,0.5,32323,'000000116'),('0026','Pan Integral',12,0.25,32323,'000000117'),('0027','Tarta de pera',12,2.5,11111,'000000118'),('0028','Cheescake',12,2.5,22222,'000000119'),('0029','Torta de chocolate',12,2.5,11111,'000000120'),('0030','tarta de durazano',12,2.5,11111,'000000121'),('0031','Tarta de manzana',12,2.5,11111,'000000122'),('0032','Pan de piña',20,0.5,32323,'000000123'),('0033','Torta mojada de chocolate',25,3.5,11111,'000000124'),('0034','Dulce de tres leche',12,2.5,11111,'000000125'),('0035','Cara sucia',30,0.5,32323,'000000126'),('0036','Pan Integral',12,0.25,32323,'000000127'),('0037','Tarta de pera',12,2.5,11111,'000000128'),('0038','Cheescake',12,2.5,22222,'000000129'),('0039','Torta de chocolate',12,2.5,11111,'000000130'),('0040','tarta de durazano',12,2.5,11111,'000000131'),('0041','Tarta de manzana',12,2.5,11111,'000000132'),('0042','Pan de piña',20,0.5,32323,'000000133'),('0043','Torta mojada de chocolate',25,3.5,11111,'000000134'),('0044','Dulce de tres leche',12,2.5,11111,'000000135'),('0045','Cara sucia',30,0.5,32323,'000000136'),('0046','Pan Integral',12,0.25,32323,'000000137'),('0047','Tarta de pera',12,2.5,11111,'000000138'),('0048','Cheescake',12,2.5,22222,'000000139'),('0049','Torta de chocolate',12,2.5,11111,'000000140'),('0050','tarta de durazano',12,2.5,11111,'000000141'),('3665','prueba',5,6,22222,'000000120'),('5538','prueba',5,1,11111,'099737492');
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requerimiento_pedido_especial`
--

DROP TABLE IF EXISTS `requerimiento_pedido_especial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requerimiento_pedido_especial` (
  `Porciones` int NOT NULL,
  `Tamaño` float DEFAULT NULL,
  `Sabor` varchar(50) NOT NULL,
  `pedido_Pedido_id` varchar(10) NOT NULL,
  `pedido_cliente_Cedula` varchar(25) NOT NULL,
  PRIMARY KEY (`pedido_Pedido_id`),
  KEY `pedido_Pedido_id` (`pedido_Pedido_id`,`pedido_cliente_Cedula`),
  CONSTRAINT `requerimiento_pedido_especial_ibfk_1` FOREIGN KEY (`pedido_Pedido_id`, `pedido_cliente_Cedula`) REFERENCES `pedido` (`Pedido_id`, `cliente_Cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requerimiento_pedido_especial`
--

LOCK TABLES `requerimiento_pedido_especial` WRITE;
/*!40000 ALTER TABLE `requerimiento_pedido_especial` DISABLE KEYS */;
/*!40000 ALTER TABLE `requerimiento_pedido_especial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarjeta_credito`
--

DROP TABLE IF EXISTS `tarjeta_credito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tarjeta_credito` (
  `Numerotarjeta` int NOT NULL,
  `cvv` varchar(3) NOT NULL,
  `Fecha_Exp` date NOT NULL,
  `Ced_clie` varchar(25) NOT NULL,
  PRIMARY KEY (`Numerotarjeta`),
  KEY `Ced_clie` (`Ced_clie`),
  CONSTRAINT `tarjeta_credito_ibfk_1` FOREIGN KEY (`Ced_clie`) REFERENCES `cliente` (`Cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarjeta_credito`
--

LOCK TABLES `tarjeta_credito` WRITE;
/*!40000 ALTER TABLE `tarjeta_credito` DISABLE KEYS */;
INSERT INTO `tarjeta_credito` VALUES (1,'123','2020-03-21','000000010'),(2,'234','2020-03-21','000000011'),(3,'012','2020-03-21','000000012'),(4,'034','2020-03-21','000000013'),(5,'021','2020-03-21','000000014'),(6,'235','2020-03-21','000000015'),(7,'672','2020-03-21','000000016'),(8,'567','2020-03-21','000000017'),(9,'120','2020-03-21','000000018'),(10,'230','2020-03-21','000000019'),(11,'123','2020-03-21','000000020'),(12,'234','2020-03-21','000000021'),(13,'012','2020-03-21','000000022'),(14,'034','2020-03-21','000000023'),(15,'021','2020-03-21','000000024'),(16,'235','2020-03-21','000000025'),(17,'672','2020-03-21','000000026'),(18,'567','2020-03-21','000000027'),(19,'120','2020-03-21','000000028'),(20,'230','2020-03-21','000000029'),(21,'123','2020-03-21','000000030'),(22,'234','2020-03-21','000000031'),(23,'012','2020-03-21','000000032'),(24,'034','2020-03-21','000000033'),(25,'021','2020-03-21','000000034'),(26,'235','2020-03-21','000000035'),(27,'672','2020-03-21','000000036'),(28,'567','2020-03-21','000000037'),(29,'120','2020-03-21','000000038'),(30,'230','2020-03-21','000000039'),(31,'123','2020-03-21','000000040'),(32,'234','2020-03-21','000000041'),(33,'012','2020-03-21','000000042'),(34,'034','2020-03-21','000000043'),(35,'021','2020-03-21','000000044'),(36,'235','2020-03-21','000000045'),(37,'672','2020-03-21','000000046'),(38,'567','2020-03-21','000000047'),(39,'120','2020-03-21','000000048'),(40,'230','2020-03-21','000000049'),(134111,'123','2020-03-21','093121344'),(252222,'234','2020-03-21','093732773'),(323343,'012','2020-03-21','123483837'),(323463,'120','2020-03-21','092737492'),(342321,'672','2020-03-21','098332832'),(354678,'235','2020-03-21','983364848'),(456543,'567','2020-03-21','098724923'),(478744,'034','2020-03-21','238485959'),(534215,'021','2020-03-21','794737848'),(983646,'230','2020-03-21','293857398');
/*!40000 ALTER TABLE `tarjeta_credito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'proyectobd'
--

--
-- Dumping routines for database 'proyectobd'
--
/*!50003 DROP PROCEDURE IF EXISTS `PROCEDUREcrearcuentacliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROCEDUREcrearcuentacliente`(IN Cedula varchar(25), in nombre varchar(50), in telefono int,in Correo varchar(50),in Contraseña varchar(50))
BEGIN
IF Cedula in(select Cedula from cliente) THEN
insert into cliente values(Cedula,nombre,telefono,Correo,Contraseña);
set @mensaje=("Cuenta registrada correctamente");
else
 signal sqlstate '45000' set message_Text ='Error al registrar cliente';
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROCEDUREcrearcuentapastelero` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROCEDUREcrearcuentapastelero`(IN Cedula varchar(25), in nombre varchar(50), in telefono int(10),in Correo varchar(50),in Contraseña varchar(50),
in codigopostal int,in Numerodelocal int, in Callepri varchar(50),in callesec varchar(50))
BEGIN
IF Cedula not in(select CedulaPanadero from pastelero) THEN
insert into localizacion values(codigopostal,Numerodelocal,Callepri,callesec);
insert into pastelero values(Cedula,nombre,telefono,correo,contraseña,codigopostal);
set @mensaje=("Cuenta registrada correctamente");
else
 signal sqlstate '45000' set message_Text ='Error al registrar panadero';
rollback;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROCEDUREingresarcalificiacion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROCEDUREingresarcalificiacion`(IN Id_calif varchar(10), in nota float, in comentario varchar(250),in fecha date,in clientecedula varchar(25), in pastelero_CedulaPanadero varchar(25))
BEGIN
IF Id_calif in(select Id_calif from calificaciones) THEN
insert into calificaciones values(Id_calif,nota,comentario,fecha,clientecedula,pastelero_CedulaPanadero);
set @mensaje=("Producto registrado correctamente");
else
 signal sqlstate '45000' set message_Text ='Error al ingresaer calificacion';
rollback;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PROCEDUREingresarproductos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROCEDUREingresarproductos`(IN Prod_Id varchar(25), in nombre varchar(50), in cantidad int,in precio float,in idcat int, in pastelero_CedulaPanadero varchar(25))
BEGIN
IF Prod_Id  in(select Prod_Id from producto) THEN
insert into producto values(Prod_Id,nombre,cantidad,precio,idcat,pastelero_CedulaPanadero);
set @mensaje=("Producto registrado correctamente");
else
 signal sqlstate '45000' set message_Text ='Error al registrar producto';
rollback;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `cargarcalificaciones`
--

/*!50001 DROP VIEW IF EXISTS `cargarcalificaciones`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cargarcalificaciones` AS select `c`.`Id_calif` AS `Id_calif`,`c`.`Nota_cali` AS `Nota_cali`,`c`.`Comentario` AS `Comentario`,`c`.`Fecha` AS `Fecha`,`c`.`cliente_Cedula` AS `cliente_Cedula`,`c`.`Ced_Pas` AS `Ced_Pas`,`p`.`Nombre` AS `Nombre` from (`calificaciones` `c` join `pastelero` `p` on((`c`.`Ced_Pas` = `p`.`CedulaPanadero`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `consultapanaderos`
--

/*!50001 DROP VIEW IF EXISTS `consultapanaderos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consultapanaderos` AS select distinct `p`.`CedulaPanadero` AS `CedulaPanadero`,`p`.`Nombre` AS `Nombre`,`p`.`telefono` AS `telefono`,`p`.`Correo` AS `Correo`,`p`.`Contraseña` AS `Contraseña`,`p`.`Cod_postal` AS `Cod_postal`,`l`.`Calle_Principal` AS `Calle_Principal`,`l`.`Calle_Secundaria` AS `Calle_Secundaria` from ((`pastelero` `p` join `localizacion` `l` on((`p`.`Cod_postal` = `l`.`CodigoPostal`))) join `producto` `pr` on((`pr`.`pastelero_CedulaPanadero` = `p`.`CedulaPanadero`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `consultarpedidos`
--

/*!50001 DROP VIEW IF EXISTS `consultarpedidos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consultarpedidos` AS select `p`.`Pedido_id` AS `Pedido_id`,`p`.`Fecha` AS `Fecha`,`p`.`Total` AS `Total`,`p`.`Estado` AS `Estado`,`p`.`cliente_Cedula` AS `cliente_Cedula`,`p`.`pastelero_CedulaPanadero` AS `pastelero_CedulaPanadero`,`pa`.`Nombre` AS `Nombre_pastelero`,`pa`.`telefono` AS `telefono_pastelero`,`p`.`calificado` AS `calificado` from ((`pedido` `p` join `cliente` `c` on((`p`.`cliente_Cedula` = `c`.`Cedula`))) join `pastelero` `pa` on((`pa`.`CedulaPanadero` = `p`.`pastelero_CedulaPanadero`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `consultarproductos`
--

/*!50001 DROP VIEW IF EXISTS `consultarproductos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consultarproductos` AS select `p`.`Prod_Id` AS `Prod_Id`,`p`.`Nombre` AS `Nombre`,`p`.`Canti` AS `Canti`,`p`.`Precio` AS `Precio`,`c`.`Nombre_categoria` AS `Nombre_categoria`,`p`.`pastelero_CedulaPanadero` AS `pastelero_CedulaPanadero` from (`producto` `p` join `categoria` `c` on((`p`.`Id_Cate` = `c`.`Id_Categoria`))) */;
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

-- Dump completed on 2021-01-26 23:11:24
