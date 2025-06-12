-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: my_shop
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `ID_CLIENT` int NOT NULL AUTO_INCREMENT,
  `CUIL_CUIT` double NOT NULL,
  `NAME` varchar(60) NOT NULL,
  `LAST_NAME` varchar(60) DEFAULT NULL,
  `COMPANY` tinyint(1) DEFAULT '0',
  `EMAIL` varchar(100) NOT NULL,
  `COUNTRY` varchar(10) DEFAULT 'ARG',
  `ID_PROV` int NOT NULL,
  `COD_POSTAL` int NOT NULL,
  `ADRESS` varchar(100) NOT NULL,
  `PHONE_1` int NOT NULL,
  `PHONE_2` int DEFAULT NULL,
  PRIMARY KEY (`ID_CLIENT`,`CUIL_CUIT`,`EMAIL`),
  KEY `FK_CLIENTS_PROVINCE` (`ID_PROV`),
  CONSTRAINT `FK_CLIENTS_PROVINCE` FOREIGN KEY (`ID_PROV`) REFERENCES `province` (`ID_PROV`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,20459876546,'Edetop S.A',NULL,1,'edetop_contrataciones@edetop.com','ARG',1,1342,'Av. Centenario 666',46987456,47896204),(2,20652394524,'Anibal','Lopez',0,'aLopez.931@live.com','ARG',21,2004,'Bacacay 1234',1166857565,NULL),(3,20452364589,'Pablo Ariel','Martinez',0,'pablo.a.martinez@outlook.com','ARG',1,1831,'Asamblea 4321',1168974562,NULL),(4,20658981256,'CaniCan S.A.C',NULL,1,'dptologistica@canican.com.ar','ARG',1,3654,'Olazabal 654',47896545,47897554),(5,64589456984,'Juan Esteban','Do Prado',0,'juandoprado.1985@gmail.com','ARG',14,7856,'Hernesto Gutierres 6578',563547785,NULL),(6,20698775645,'ComSolution',NULL,1,'comsolution.contacto@gmail.com','ARG',1,4567,'Francia 689',1198745698,47898454),(7,20350375678,'Ariana Beatriz','Mandela',0,'adri.mandela.90@outlook.com','ARG',1,1642,'Bernardo de Irigoyen 976',1198569985,NULL),(8,20657896542,'Rolando Anibal','Monserrat',0,'rolandomonse89@gmail.com','ARG',6,5778,'Azopardo 687',1187456987,NULL),(9,20235647889,'Armando Esteban','Quito',0,'armadoelbanquito@live.com.ar','ARG',6,7899,'Curupayti 6899',1169875423,NULL),(10,20235647890,'Muhammad','Pizarro',0,'janoinnapragrei-1279@yopmail.com','ARG',1,4235,'Av Pres. Roque Sáenz Pena 725',1152293856,NULL),(11,20235647891,'Mariano Sebastian','Lopez',0,'marianoserramno@gmail.com','ARG',1,4576,'General Gutiérrez 543',1134712295,NULL),(12,20235647892,'Guadalupe Alejandra','Arribas',0,'guada_arribas@hotmail.com','ARG',5,5799,'Tres Arroyos 354',1171301731,NULL),(13,20235647893,'Maria Dolores','Gutierrez',1,'supra_contrataciones@suprasrl.com','ARG',1,5687,'Pres. Julio Argentino Roca 533',1199549167,47901604),(14,20235647894,'Miguel Angel','Sepulveda',0,'miguelitosepulveda@outlook.com','ARG',21,5799,'Av José Ignacio de la Roza Oeste 499',1181967606,NULL),(15,20235647895,'Roxana','Alegre',0,'alegre_roxana@yahoo.com','ARG',5,7893,'Independencia 661',1164386039,NULL),(16,20235647896,'Moises Anibal','Padilla',0,'prassacropreuffei-5003@yopmail.com','ARG',16,1273,'Riobamba 345',1146804475,NULL),(17,20235647897,'Juan Ignacio','Galera',0,'juan_nacho_galera@hotmail.com','ARG',1,3741,'Posadas 1557',1129222911,NULL),(18,20235647898,'Maria Elisa','Palau',0,'mariaelisa_palau89@gmail.com','ARG',6,1173,'Calle 35',111641347,NULL),(19,20235647899,'Angela','Novo',1,'electro.solution@outlook.com','ARG',8,1735,'San Jerónimo 3126',1194059783,47904304),(20,20235647900,'Pedro Sebastian','Menendez',1,'netcore.contact@netcoresac.com.ar','ARG',6,6244,'Av Blas Parera 7605',1176478219,47904754),(21,20235647901,'Jaime Alberto','Corrales',0,'jaime.corrales89@live.com.ar','ARG',1,3557,'Av Callao',1158896655,NULL),(22,20235647902,'German Franco','Amoroso',0,'broulloimoibala-2221@yopmail.com','ARG',1,3358,'Av Albarellos 2565',1141315091,NULL),(23,20235647903,'Alfonso Macimiliano','Gines',1,'automotoressm.logistica@gmail.com','ARG',1,2678,'Paraguay 474',1123733527,47906104);
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_state`
--

DROP TABLE IF EXISTS `employee_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_state` (
  `ID_STATE` int NOT NULL AUTO_INCREMENT,
  `STATE` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`ID_STATE`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_state`
--

LOCK TABLES `employee_state` WRITE;
/*!40000 ALTER TABLE `employee_state` DISABLE KEYS */;
INSERT INTO `employee_state` VALUES (1,'Activo'),(2,'Vacaciones'),(3,'Suspendido'),(4,'ART'),(5,'Licencia por enfermedad'),(6,'Licencia por maternidad/paternidad');
/*!40000 ALTER TABLE `employee_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `ID_EMPL` int NOT NULL AUTO_INCREMENT,
  `NAMES` varchar(50) NOT NULL,
  `LAST_NAME` varchar(50) NOT NULL,
  `PHONE` varchar(20) NOT NULL,
  `ADRESS` varchar(100) DEFAULT NULL,
  `GENDER` enum('M','F') DEFAULT NULL,
  `BUSINESS_EMAIL` varchar(50) NOT NULL,
  `ID_SECTOR` int NOT NULL,
  `ID_STATE` int NOT NULL,
  `DATE_BIRTH` date NOT NULL,
  `DATE_INCOME` date NOT NULL,
  PRIMARY KEY (`ID_EMPL`,`BUSINESS_EMAIL`),
  KEY `FK_EMPLOYEES_SECTOR` (`ID_SECTOR`),
  KEY `FK_EMPLOYEES_EMPLOYEE_STATE` (`ID_STATE`),
  CONSTRAINT `FK_EMPLOYEES_EMPLOYEE_STATE` FOREIGN KEY (`ID_STATE`) REFERENCES `employee_state` (`ID_STATE`),
  CONSTRAINT `FK_EMPLOYEES_SECTOR` FOREIGN KEY (`ID_SECTOR`) REFERENCES `sector` (`ID_SECTOR`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Juan Gabriel','Sanchez','1164589764','Olleros 4186','M','jg_sanchez@myshop.com',1,1,'1999-04-11','2020-08-18'),(2,'Lorena Isabel','Vizagarra','1169874523','Amigorena 65','F','li_vizgarra@myshop.com',1,1,'1994-01-31','2020-05-19'),(3,'Micaela Analia','Gomez','1147852369','Av de Mayo 1370','F','ma_gomez@myshop.com',1,1,'1995-03-31','2020-08-26'),(4,'Pablo Mariano','Monje','1169758975','Charcas 2802','M','pm_monje@myshop.com',1,1,'2001-10-08','2020-05-20'),(5,'Martin Leonardo','Zapata','1147236845','Hipólito Irigoyen 950','M','ml_zapata@myshop.com',1,1,'1999-09-30','2020-04-21'),(6,'Cristian Ezequiel','Soporsky','1169874251','Av Don Pedro de Mendoza 1899','M','ce_soporsky@myshop.com',1,1,'1992-09-07','2020-06-08'),(7,'Vanina Alejandra','Gomez','1184368529','General Lavalle 298','F','va_gomez@myshop.com',1,1,'2002-07-25','2020-02-23'),(8,'Estefania Beatriz','Garcia','1164289730','Viamonte 1501','F','eb_garcia@myshop.com',1,1,'1991-10-31','2021-01-12'),(9,'Carlos Manuel','Krasinsky','1190023478','San Luis 84','M','cm_krasinsky@myshop.com',1,1,'2001-02-01','2021-01-30'),(10,'Leonardo Arturo','Illia','1188965455','Carlos Quiroga 110','M','la_illia@myshop.com',1,2,'1983-05-20','2020-06-01'),(11,'Karina Alejandra','Sanchez','1162388546','Av Santa Fe 4636','F','ka_sanchez@myshop.com',1,2,'1990-04-16','2020-11-15'),(12,'Jorge Luis','Santos','1198744533','Patricias Mendocinas 1532','M','jl_santos@myshop.com',1,1,'1995-12-13','2020-12-31'),(13,'Lorena Martina','Tolosa','1197885212','Av Medrano 1475','F','lm_tolosa@myshop.com',1,6,'1989-04-12','2020-06-12'),(14,'Pedro Luis','Garcia','1187611422','Arévalo 2357','M','pl_garcia@myshop.com',1,1,'2000-12-03','2020-03-05'),(15,'Andrea Estafania','Caseros','1169874563','Nicanor Carranza 3714','F','ae_caseros@myshop.com',1,1,'1995-08-22','2020-05-18'),(16,'Roberto Daniel','Diaz','1165894156','Salta Norte 1294','M','rd_diaz@myshop.com',3,1,'1990-03-23','2020-11-16'),(17,'Maria Claudia','Romero','1169874569','Av Callao 1764','F','mc_romero@myshop.com',2,1,'1984-08-17','2020-12-24'),(18,'Sergio Marcelo','Guzman','1178952368','Av Belgrano 1548','M','sm_guzman@myshop.com',3,1,'2000-08-10','2021-01-07'),(19,'Miguel Oscar','Torres','1165894125','Independencia 30','M','mo_torres@myshop.com',3,4,'1983-07-13','2021-04-19'),(20,'Rosa Daniela','Acosta','1169872365','José Baigorri 653','F','rd_acosta@myshop.com',3,1,'1995-04-15','2021-04-19'),(21,'Oscar esteban','Martinez','1169852346','Pablo Abriata 2354','M','martinezIT@myshop.com',7,1,'1990-03-11','2020-01-10');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_clients`
--

DROP TABLE IF EXISTS `log_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_clients` (
  `ID_LOG` int NOT NULL AUTO_INCREMENT,
  `ACTIVITY` varchar(6) NOT NULL,
  `OLD_DATA` varchar(255) DEFAULT NULL,
  `NEW_DATA` varchar(255) DEFAULT NULL,
  `USER` varchar(50) NOT NULL,
  `DATE_ACTIVITY` date NOT NULL,
  `HOUR_ACTIVITY` time NOT NULL,
  PRIMARY KEY (`ID_LOG`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_clients`
--

LOCK TABLES `log_clients` WRITE;
/*!40000 ALTER TABLE `log_clients` DISABLE KEYS */;
INSERT INTO `log_clients` VALUES (1,'INSERT',NULL,'1;20459876546;Edetop S.A;DEFAULT;1;edetop_contrataciones@edetop.com;ARG;1;1342;Av. Centenario 666;46987456;47896204','root@localhost','2023-04-09','00:53:06'),(2,'INSERT',NULL,'2;20652394524;Anibal;Lopez;0;aLopez.931@live.com;ARG;21;2004;Bacacay 1234;1166857565;DEFAULT','root@localhost','2023-04-09','00:53:06'),(3,'INSERT',NULL,'3;20452364589;Pablo Ariel;Martinez;0;pablo.a.martinez@outlook.com;ARG;1;1831;Asamblea 4321;1168974562;DEFAULT','root@localhost','2023-04-09','00:53:06'),(4,'INSERT',NULL,'4;20658981256;CaniCan S.A.C;DEFAULT;1;dptologistica@canican.com.ar;ARG;1;3654;Olazabal 654;47896545;47897554','root@localhost','2023-04-09','00:53:06'),(5,'INSERT',NULL,'5;64589456984;Juan Esteban;Do Prado;0;juandoprado.1985@gmail.com;ARG;14;7856;Hernesto Gutierres 6578;563547785;DEFAULT','root@localhost','2023-04-09','00:53:06'),(6,'INSERT',NULL,'6;20698775645;ComSolution;DEFAULT;1;comsolution.contacto@gmail.com;ARG;1;4567;Francia 689;1198745698;47898454','root@localhost','2023-04-09','00:53:06'),(7,'INSERT',NULL,'7;20350375678;Ariana Beatriz;Mandela;0;adri.mandela.90@outlook.com;ARG;1;1642;Bernardo de Irigoyen 976;1198569985;DEFAULT','root@localhost','2023-04-09','00:53:06'),(8,'INSERT',NULL,'8;20657896542;Rolando Anibal;Monserrat;0;rolandomonse89@gmail.com;ARG;6;5778;Azopardo 687;1187456987;DEFAULT','root@localhost','2023-04-09','00:53:06'),(9,'INSERT',NULL,'9;20235647889;Armando Esteban;Quito;0;armadoelbanquito@live.com.ar;ARG;6;7899;Curupayti 6899;1169875423;DEFAULT','root@localhost','2023-04-09','00:53:06'),(10,'INSERT',NULL,'10;20235647890;Muhammad;Pizarro;0;janoinnapragrei-1279@yopmail.com;ARG;1;4235;Av Pres. Roque Sáenz Pena 725;1152293856;DEFAULT','root@localhost','2023-04-09','00:53:06'),(11,'INSERT',NULL,'11;20235647891;Mariano Sebastian;Lopez;0;marianoserramno@gmail.com;ARG;1;4576;General Gutiérrez 543;1134712295;DEFAULT','root@localhost','2023-04-09','00:53:06'),(12,'INSERT',NULL,'12;20235647892;Guadalupe Alejandra;Arribas;0;guada_arribas@hotmail.com;ARG;5;5799;Tres Arroyos 354;1171301731;DEFAULT','root@localhost','2023-04-09','00:53:06'),(13,'INSERT',NULL,'13;20235647893;Maria Dolores;Gutierrez;1;supra_contrataciones@suprasrl.com;ARG;1;5687;Pres. Julio Argentino Roca 533;1199549167;47901604','root@localhost','2023-04-09','00:53:06'),(14,'INSERT',NULL,'14;20235647894;Miguel Angel;Sepulveda;0;miguelitosepulveda@outlook.com;ARG;21;5799;Av José Ignacio de la Roza Oeste 499;1181967606;DEFAULT','root@localhost','2023-04-09','00:53:06'),(15,'INSERT',NULL,'15;20235647895;Roxana;Alegre;0;alegre_roxana@yahoo.com;ARG;5;7893;Independencia 661;1164386039;DEFAULT','root@localhost','2023-04-09','00:53:06'),(16,'INSERT',NULL,'16;20235647896;Moises Anibal;Padilla;0;prassacropreuffei-5003@yopmail.com;ARG;16;1273;Riobamba 345;1146804475;DEFAULT','root@localhost','2023-04-09','00:53:06'),(17,'INSERT',NULL,'17;20235647897;Juan Ignacio;Galera;0;juan_nacho_galera@hotmail.com;ARG;1;3741;Posadas 1557;1129222911;DEFAULT','root@localhost','2023-04-09','00:53:06'),(18,'INSERT',NULL,'18;20235647898;Maria Elisa;Palau;0;mariaelisa_palau89@gmail.com;ARG;6;1173;Calle 35;111641347;DEFAULT','root@localhost','2023-04-09','00:53:06'),(19,'INSERT',NULL,'19;20235647899;Angela;Novo;1;electro.solution@outlook.com;ARG;8;1735;San Jerónimo 3126;1194059783;47904304','root@localhost','2023-04-09','00:53:06'),(20,'INSERT',NULL,'20;20235647900;Pedro Sebastian;Menendez;1;netcore.contact@netcoresac.com.ar;ARG;6;6244;Av Blas Parera 7605;1176478219;47904754','root@localhost','2023-04-09','00:53:06'),(21,'INSERT',NULL,'21;20235647901;Jaime Alberto;Corrales;0;jaime.corrales89@live.com.ar;ARG;1;3557;Av Callao;1158896655;DEFAULT','root@localhost','2023-04-09','00:53:06'),(22,'INSERT',NULL,'22;20235647902;German Franco;Amoroso;0;broulloimoibala-2221@yopmail.com;ARG;1;3358;Av Albarellos 2565;1141315091;DEFAULT','root@localhost','2023-04-09','00:53:06'),(23,'INSERT',NULL,'23;20235647903;Alfonso Macimiliano;Gines;1;automotoressm.logistica@gmail.com;ARG;1;2678;Paraguay 474;1123733527;47906104','root@localhost','2023-04-09','00:53:06');
/*!40000 ALTER TABLE `log_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_products`
--

DROP TABLE IF EXISTS `log_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_products` (
  `ID_LOG` int NOT NULL AUTO_INCREMENT,
  `ACTIVITY` varchar(6) NOT NULL,
  `OLD_DATA` varchar(255) DEFAULT NULL,
  `NEW_DATA` varchar(255) DEFAULT NULL,
  `USER` varchar(50) NOT NULL,
  `DATE_ACTIVITY` date NOT NULL,
  `HOUR_ACTIVITY` time NOT NULL,
  PRIMARY KEY (`ID_LOG`)
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_products`
--

LOCK TABLES `log_products` WRITE;
/*!40000 ALTER TABLE `log_products` DISABLE KEYS */;
INSERT INTO `log_products` VALUES (1,'INSERT',NULL,'1;Celeron G4900 3.10GHz 1151 9th Gen;2;1;1;30.00;99','root@localhost','2023-04-09','00:53:06'),(2,'INSERT',NULL,'2;Pentium G4560 3.5 LGA 1151 Kaby Lake;2;1;1;48.50;99','root@localhost','2023-04-09','00:53:06'),(3,'INSERT',NULL,'3;Core i3 10100F 4.3GHz Turbo 1200 Comet Lake;2;1;1;85.00;99','root@localhost','2023-04-09','00:53:06'),(4,'INSERT',NULL,'4;Core i3 10100 4.3GHz Turbo 10th Gen Socket 1200;2;1;1;94.80;99','root@localhost','2023-04-09','00:53:06'),(5,'INSERT',NULL,'5;Core i5 10400 4.3GHz Turbo 10th Gen Socket 1200;2;1;1;132.00;99','root@localhost','2023-04-09','00:53:06'),(6,'INSERT',NULL,'6;Core i5 11400F 11th Gen Socket 1200;2;1;1;140.00;99','root@localhost','2023-04-09','00:53:06'),(7,'INSERT',NULL,'7;Core i7 10700F 4.8GHz Turbo Socket 1200;2;1;1;240.00;99','root@localhost','2023-04-09','00:53:06'),(8,'INSERT',NULL,'8;Core i7 10700 4.8GHz Turbo Socket 1200;2;1;1;280.00;99','root@localhost','2023-04-09','00:53:06'),(9,'INSERT',NULL,'9;Core i7 10700KF 5.1GHz Turbo Socket 1200;2;1;1;328.00;99','root@localhost','2023-04-09','00:53:06'),(10,'INSERT',NULL,'10;Core i7 11700F Socket 1200 11th Gen;2;1;1;292.00;99','root@localhost','2023-04-09','00:53:06'),(11,'INSERT',NULL,'11;Ryzen 3 3200G 4.0GHz Turbo Socket AM4;3;1;1;96.75;99','root@localhost','2023-04-09','00:53:06'),(12,'INSERT',NULL,'12;Ryzen 3 4100 Socket AM4;3;1;1;68.40;99','root@localhost','2023-04-09','00:53:06'),(13,'INSERT',NULL,'13;Ryzen 5 3600 4.2GHz Turbo Socket AM4;3;1;1;124.32;99','root@localhost','2023-04-09','00:53:06'),(14,'INSERT',NULL,'14;Ryzen 5 4500 Socket AM4;3;1;1;113.50;99','root@localhost','2023-04-09','00:53:06'),(15,'INSERT',NULL,'15;Ryzen 5 PRO 4650G 4.2GHz Turbo  Socket AM4;3;1;1;162.30;99','root@localhost','2023-04-09','00:53:06'),(16,'INSERT',NULL,'16;Ryzen 5 7600 5.1GHz Turbo Socket AM5;3;1;1;254.00;99','root@localhost','2023-04-09','00:53:06'),(17,'INSERT',NULL,'17;Ryzen 7 5700G 4.6GHz Turbo Socket AM4;3;1;1;260.00;99','root@localhost','2023-04-09','00:53:06'),(18,'INSERT',NULL,'18;Ryzen 7 5700X 4.6GHz Turbo Socket AM4;3;1;1;291.60;99','root@localhost','2023-04-09','00:53:06'),(19,'INSERT',NULL,'19;Radeon RX 6800 XT CORE 16GB GDDR6 Speedster MERC 319;13;15;1;740.50;99','root@localhost','2023-04-09','00:53:06'),(20,'INSERT',NULL,'20;Radeon RX 6800 XT 16GB GDDR6 Phantom Gaming D OC;6;15;1;727.00;99','root@localhost','2023-04-09','00:53:06'),(21,'INSERT',NULL,'21;Radeon RX 6700 XT 12GB GDDR6 MECH 2X;5;15;1;495.00;99','root@localhost','2023-04-09','00:53:06'),(22,'INSERT',NULL,'22;Radeon RX 6700 XT BLACK 12GB GDDR6 SPEEDSTER QICK 319;13;15;1;485.50;99','root@localhost','2023-04-09','00:53:06'),(23,'INSERT',NULL,'23;Radeon RX 6700 XT 12GB GDDR6 Challenger D OC;6;15;1;471.75;99','root@localhost','2023-04-09','00:53:06'),(24,'INSERT',NULL,'24;RX 570 8GB GDDR5 Phantom Gaming Elite;6;15;1;245.00;99','root@localhost','2023-04-09','00:53:06'),(25,'INSERT',NULL,'25;Radeon RX 570 8GB DDR5 RS;13;15;1;250.00;99','root@localhost','2023-04-09','00:53:06'),(26,'INSERT',NULL,'26;GeForce RTX 3090 24GB GDDR6X VENTUS 3X OC;5;15;1;1110.00;99','root@localhost','2023-04-09','00:53:06'),(27,'INSERT',NULL,'27;GeForce RTX 3090 24GB GDDR6X Trinity;8;15;1;1090.00;99','root@localhost','2023-04-09','00:53:06'),(28,'INSERT',NULL,'28;GeForce RTX 3080 Ti 12GB GDDR6X ROG STRIX OC;4;15;1;1000.00;99','root@localhost','2023-04-09','00:53:06'),(29,'INSERT',NULL,'29;GeForce RTX 3080 Ti 12GB GDDR6X Trinity;8;15;1;970.00;99','root@localhost','2023-04-09','00:53:06'),(30,'INSERT',NULL,'30;GeForce RTX 3070 GAMING OC Edition 8GB TUF Gaming;4;15;1;750.00;99','root@localhost','2023-04-09','00:53:06'),(31,'INSERT',NULL,'31;GeForce RTX 3070 FTW3 Ultra Gaming 8GB;9;15;1;745.00;99','root@localhost','2023-04-09','00:53:06'),(32,'INSERT',NULL,'32;GeForce RTX 3060 Ti Dual Mini V2;4;15;1;648.00;99','root@localhost','2023-04-09','00:53:06'),(33,'INSERT',NULL,'33;GeForce GTX 1660 Super Ventus XS OC 6Gb;5;15;1;270.00;99','root@localhost','2023-04-09','00:53:06'),(34,'INSERT',NULL,'34;B360M BULK WIFI Socket 1151;6;2;1;20.00;99','root@localhost','2023-04-09','00:53:06'),(35,'INSERT',NULL,'35;PRIME H310M-R R2.0 Socket 1151;4;2;1;34.00;99','root@localhost','2023-04-09','00:53:06'),(36,'INSERT',NULL,'36;Z390 Phantom Gaming 4S Wi-Fi BULK Socket 1151;6;2;1;58.00;99','root@localhost','2023-04-09','00:53:06'),(37,'INSERT',NULL,'37;H610M-HVS Socket 1700;6;2;1;58.00;99','root@localhost','2023-04-09','00:53:06'),(38,'INSERT',NULL,'38;PRIME B460M-A R2.0 Socket 1200;4;2;1;66.40;99','root@localhost','2023-04-09','00:53:06'),(39,'INSERT',NULL,'39;B560M DS3H V2 Socket 1200;7;2;1;68.00;99','root@localhost','2023-04-09','00:53:06'),(40,'INSERT',NULL,'40;PRIME H610M-E D4 Socket 1700;4;2;1;70.00;99','root@localhost','2023-04-09','00:53:06'),(41,'INSERT',NULL,'41;PRO H410M-B Socket 1200;5;2;1;72.00;99','root@localhost','2023-04-09','00:53:06'),(42,'INSERT',NULL,'42;PRIME Z690-P D4 Socket 1700;4;2;1;195.00;99','root@localhost','2023-04-09','00:53:06'),(43,'INSERT',NULL,'43;PRIME Z690-P WIFI D4 Socket 1700;4;2;1;211.00;99','root@localhost','2023-04-09','00:53:06'),(44,'INSERT',NULL,'44;Z590 Vision D Rev 1.0 Socket 1200;7;2;1;267.50;99','root@localhost','2023-04-09','00:53:06'),(45,'INSERT',NULL,'45;ROG MAXIMUS XIII EXTREME Z590 EATX Socket 1200;4;2;1;477.00;99','root@localhost','2023-04-09','00:53:06'),(46,'INSERT',NULL,'46;ROG MAXIMUS XIII EXTREME GLACIAL Socket 1200;4;2;1;895.00;99','root@localhost','2023-04-09','00:53:06'),(47,'INSERT',NULL,'47;A320M-HDV R4.0 Socket AM4;6;2;1;50.00;99','root@localhost','2023-04-09','00:53:06'),(48,'INSERT',NULL,'48;GA-A320M-H Socket AM4;7;2;1;53.40;99','root@localhost','2023-04-09','00:53:06'),(49,'INSERT',NULL,'49;A520M-A PRO Socket AM4;5;2;1;77.00;99','root@localhost','2023-04-09','00:53:06'),(50,'INSERT',NULL,'50;B450 Gaming Plus Max Socket AM4;5;2;1;95.00;99','root@localhost','2023-04-09','00:53:06'),(51,'INSERT',NULL,'51;TUF GAMING B550-PLUS WIFI II Socket AM4;4;2;1;200.00;99','root@localhost','2023-04-09','00:53:06'),(52,'INSERT',NULL,'52;X670E PG LIGHTNING Socket AM5;6;2;1;512.00;99','root@localhost','2023-04-09','00:53:06'),(53,'INSERT',NULL,'53;X670E Taichi Carrara Socket AM5;6;2;1;730.00;99','root@localhost','2023-04-09','00:53:06'),(54,'INSERT',NULL,'54;ROG THOR 850P 80 Plus Platinum 850W  Full modular;4;4;1;187.00;99','root@localhost','2023-04-09','00:53:06'),(55,'INSERT',NULL,'55;Tuf 550B 80 Plus Bronze 550W;4;4;1;70.00;99','root@localhost','2023-04-09','00:53:06'),(56,'INSERT',NULL,'56;P650B 80 Plus Bronze 650W;7;4;1;68.00;99','root@localhost','2023-04-09','00:53:06'),(57,'INSERT',NULL,'57;Smart 500W 80 Plus White;21;4;1;46.50;99','root@localhost','2023-04-09','00:53:06'),(58,'INSERT',NULL,'58;GC-PS001 80 Plus Bronze 500W;22;4;1;45.00;99','root@localhost','2023-04-09','00:53:06'),(59,'INSERT',NULL,'59;P550B 80 Plus Bronze 550W;7;4;1;52.50;99','root@localhost','2023-04-09','00:53:06'),(60,'INSERT',NULL,'60;ROG STRIX 1000G 80 Plus Gold 1000W Full Modular;4;4;1;185.00;99','root@localhost','2023-04-09','00:53:06'),(61,'INSERT',NULL,'61;XPG PYLON 80 Plus Bronze 750W;14;4;1;68.00;99','root@localhost','2023-04-09','00:53:06'),(62,'INSERT',NULL,'62;MPG A750GF 80 Plus Gold 750W Full Modular;5;4;1;95.00;99','root@localhost','2023-04-09','00:53:06'),(63,'INSERT',NULL,'63;MWE V2 80 Plus Gold 750W Full Modular;19;4;1;86.00;99','root@localhost','2023-04-09','00:53:06'),(64,'INSERT',NULL,'64;Super Luce RGB Black DDR4 16GB 3000MHz;18;3;1;96.50;99','root@localhost','2023-04-09','00:53:06'),(65,'INSERT',NULL,'65;Value DDR4 8GB 2666Mhz;16;3;1;51.00;99','root@localhost','2023-04-09','00:53:06'),(66,'INSERT',NULL,'66;Value DDR4 4GB 2666Mhz;16;3;1;31.00;99','root@localhost','2023-04-09','00:53:06'),(67,'INSERT',NULL,'67;T-Force Vulcan Z Gray DDR4 8GB 2666MHz;17;3;1;50.00;99','root@localhost','2023-04-09','00:53:06'),(68,'INSERT',NULL,'68;EVO X II RGB DDR4 8GB 3200MHz;18;3;1;53.00;99','root@localhost','2023-04-09','00:53:06'),(69,'INSERT',NULL,'69;Fury Beast RGB DDR4 8GB 3200MHz;11;3;1;59.00;99','root@localhost','2023-04-09','00:53:06'),(70,'INSERT',NULL,'70;XPG Spectrix D50 RGB DDR4 8GB 3200MHz;14;3;1;57.50;99','root@localhost','2023-04-09','00:53:06'),(71,'INSERT',NULL,'71;Fury Beast RGB DDR4 8GB 3600MHz;11;3;1;63.50;99','root@localhost','2023-04-09','00:53:06'),(72,'INSERT',NULL,'72;Value Sodimm DDR4 8GB 2666MHz;14;3;3;35.00;99','root@localhost','2023-04-09','00:53:06'),(73,'INSERT',NULL,'73;Value Sodimm DDR4 8GB 3200MHz;14;3;3;38.00;99','root@localhost','2023-04-09','00:53:06'),(74,'INSERT',NULL,'74;HDD 1TB Barracuda 64MB SATA 6GB/s;15;5;1;40.00;99','root@localhost','2023-04-09','00:53:06'),(75,'INSERT',NULL,'75;HDD 1TB BLUE 64MB SATA 6.0GB/s;10;5;1;40.00;99','root@localhost','2023-04-09','00:53:06'),(76,'INSERT',NULL,'76;HDD 2TB BLUE 256MB SATA 6.0GB/s;10;5;1;54.00;99','root@localhost','2023-04-09','00:53:06'),(77,'INSERT',NULL,'77;HDD 4TB N300 NAS 7200rpm 128MB;32;5;1;84.50;99','root@localhost','2023-04-09','00:53:06'),(78,'INSERT',NULL,'78;HDD 6TB Purple 5.6K RPM 256MB;10;5;1;105.00;99','root@localhost','2023-04-09','00:53:06'),(79,'INSERT',NULL,'79;HDD 14TB SkyHawk AI ST14000VE0008;15;5;1;195.00;99','root@localhost','2023-04-09','00:53:06'),(80,'INSERT',NULL,'80;HDD 12TB Gold 7.2K RPM 256MB;10;5;1;225.00;99','root@localhost','2023-04-09','00:53:06'),(81,'INSERT',NULL,'81;HDD 12TB Red Pro 7.2K RPM 256MB;10;5;1;250.00;99','root@localhost','2023-04-09','00:53:06'),(82,'INSERT',NULL,'82;SSD 240GB GREEN 545MB/s;10;5;1;21.50;99','root@localhost','2023-04-09','00:53:06'),(83,'INSERT',NULL,'83;SSD 240GB 500MB/s;7;5;1;21.50;99','root@localhost','2023-04-09','00:53:06'),(84,'INSERT',NULL,'84;SSD 240GB A400 500MB/s;11;5;1;23.00;99','root@localhost','2023-04-09','00:53:06'),(85,'INSERT',NULL,'85;SSD M.2 240GB GREEN 545MB/s SATA;10;5;1;24.00;99','root@localhost','2023-04-09','00:53:06'),(86,'INSERT',NULL,'86;SSD 480GB SU650 520MB/s;14;5;1;33.00;99','root@localhost','2023-04-09','00:53:06'),(87,'INSERT',NULL,'87;SSD 480GB A400 500MB/s;11;5;1;34.00;99','root@localhost','2023-04-09','00:53:06'),(88,'INSERT',NULL,'88;SSD M.2 NVMe 480GB Green SN350 2400MB/s PCI-E x4;10;5;1;37.00;99','root@localhost','2023-04-09','00:53:06'),(89,'INSERT',NULL,'89;SSD M.2 NVMe 500GB P3 PLUS 4700MB/s PCI-E x4;12;5;1;61.21;99','root@localhost','2023-04-09','00:53:06'),(90,'INSERT',NULL,'90;SSD M.2 NVMe 500GB Black SN770 5000MB/s PCI-E x4;10;5;1;72.00;99','root@localhost','2023-04-09','00:53:06'),(91,'INSERT',NULL,'91;SSD M.2 NVMe 1TB Black SN770 5150MB/s PCI-E x4;10;5;1;117.50;99','root@localhost','2023-04-09','00:53:06'),(92,'INSERT',NULL,'92;SSD M.2 NVMe 1TB P5 PLUS 6600MB/s PCI-E x4;12;5;1;123.00;99','root@localhost','2023-04-09','00:53:06'),(93,'INSERT',NULL,'93;Centrophorus M601 RGB;21;7;5;8.00;99','root@localhost','2023-04-09','00:53:06'),(94,'INSERT',NULL,'94;Mirage M690 2.5GHz Bluetooth;21;7;5;10.00;99','root@localhost','2023-04-09','00:53:06'),(95,'INSERT',NULL,'95;HyperX Pulsefire CORE RGB;26;7;5;13.50;99','root@localhost','2023-04-09','00:53:06'),(96,'INSERT',NULL,'96;G203 Lightsync RGB White;33;7;5;17.50;99','root@localhost','2023-04-09','00:53:06'),(97,'INSERT',NULL,'97;P506 ROG Strix Impact II;4;7;5;33.00;99','root@localhost','2023-04-09','00:53:06'),(98,'INSERT',NULL,'98;K509 Dyaus Español Retroiluminado;21;8;5;18.00;99','root@localhost','2023-04-09','00:53:06'),(99,'INSERT',NULL,'99;HyperX Alloy CORE RGB LA;26;8;5;27.00;99','root@localhost','2023-04-09','00:53:06'),(100,'INSERT',NULL,'100;Dragonborn K630 RGB Mechanic;21;8;5;29.00;99','root@localhost','2023-04-09','00:53:06'),(101,'INSERT',NULL,'101;Kumara K552 RGB Outemu Blue Español;21;8;5;33.00;99','root@localhost','2023-04-09','00:53:06'),(102,'INSERT',NULL,'102;HyperX Alloy Origins Core RGB Switch Blue US;26;8;5;61.50;99','root@localhost','2023-04-09','00:53:06'),(103,'INSERT',NULL,'103;SP-Q180 Gris USB;28;9;5;7.00;99','root@localhost','2023-04-09','00:53:06'),(104,'INSERT',NULL,'104;SP-HF280 USB Wood;28;9;5;8.50;99','root@localhost','2023-04-09','00:53:06'),(105,'INSERT',NULL,'105;SoundBar 200BT RGB Bluetooth 5.1 USB;28;9;5;18.00;99','root@localhost','2023-04-09','00:53:06'),(106,'INSERT',NULL,'106;SP-HF380 Wood Bluetooth 5.0;28;9;5;19.00;99','root@localhost','2023-04-09','00:53:06'),(107,'INSERT',NULL,'107;SoundBarGS570 Darknet RGB;21;9;5;28.50;99','root@localhost','2023-04-09','00:53:06'),(108,'INSERT',NULL,'108;SP-HF500A II Wood;28;9;5;37.00;99','root@localhost','2023-04-09','00:53:06'),(109,'INSERT',NULL,'109;Z607 5.1 Surround Bluetooth 160W;33;9;5;114.00;99','root@localhost','2023-04-09','00:53:06'),(110,'INSERT',NULL,'110;H111 Single Jack;33;10;5;7.50;99','root@localhost','2023-04-09','00:53:06'),(111,'INSERT',NULL,'111;H151 PC STEREO;33;10;5;11.00;99','root@localhost','2023-04-09','00:53:06'),(112,'INSERT',NULL,'112;H220 Themis;21;10;5;11.50;99','root@localhost','2023-04-09','00:53:06'),(113,'INSERT',NULL,'113;HyperX Gaming Cloud Black-Blue;26;10;5;40.00;99','root@localhost','2023-04-09','00:53:06'),(114,'INSERT',NULL,'114;GW600 FOBOS 720p;21;12;5;15.50;99','root@localhost','2023-04-09','00:53:06'),(115,'INSERT',NULL,'115;2000X V2 Full HD 1080P USB;28;12;5;19.00;99','root@localhost','2023-04-09','00:53:06'),(116,'INSERT',NULL,'116;HD C505 USB 720P Mic;33;12;5;25.50;99','root@localhost','2023-04-09','00:53:06'),(117,'INSERT',NULL,'117;C920S PRO Full HD;33;12;5;57.00;99','root@localhost','2023-04-09','00:53:06'),(118,'INSERT',NULL,'118;LED 19\" 19M38A-B VGA;25;6;5;110.00;99','root@localhost','2023-04-09','00:53:06'),(119,'INSERT',NULL,'119;LED 22\" T350 75Hz IPS FHD FreeSync;24;6;5;118.00;99','root@localhost','2023-04-09','00:53:06'),(120,'INSERT',NULL,'120;LED 19\" A330N HDMI;24;6;5;123.00;99','root@localhost','2023-04-09','00:53:06'),(121,'INSERT',NULL,'121;LED 21.5\" VP228HE-J Full HD 1ms HDMI VGA;4;6;5;145.00;99','root@localhost','2023-04-09','00:53:06'),(122,'INSERT',NULL,'122;LED 24\" 24MP400-B 75Hz IPS FHD FreeSync HDMI;25;6;5;156.00;99','root@localhost','2023-04-09','00:53:06'),(123,'INSERT',NULL,'123;LED 27\" T350H Full HD IPS 75Hz;24;6;5;176.00;99','root@localhost','2023-04-09','00:53:06'),(124,'INSERT',NULL,'124;LED 24\" G50 Curvo 144Hz Full HD;24;6;5;210.00;99','root@localhost','2023-04-09','00:53:06'),(125,'INSERT',NULL,'125;LED 27\" GAMING VG278QR 165Hz Full HD;4;6;5;332.00;99','root@localhost','2023-04-09','00:53:06'),(126,'INSERT',NULL,'126;F10 RGB M-ATX;23;11;1;45.00;99','root@localhost','2023-04-09','00:53:06'),(127,'INSERT',NULL,'127;V200 Tempered Glass Ryzen Edition;20;11;1;53.00;99','root@localhost','2023-04-09','00:53:06'),(128,'INSERT',NULL,'128;Inspire K20 Vidrio Templado 1x120mm ARGB;34;11;1;56.00;99','root@localhost','2023-04-09','00:53:06'),(129,'INSERT',NULL,'129;Void X Dual Infinity Mirror ARGB;34;11;1;60.00;99','root@localhost','2023-04-09','00:53:06'),(130,'INSERT',NULL,'130;S100 Tempered Glass Black;20;11;1;62.00;99','root@localhost','2023-04-09','00:53:06'),(131,'INSERT',NULL,'131;S300 Tempered Glass Black;20;11;1;88.00;99','root@localhost','2023-04-09','00:53:06'),(132,'INSERT',NULL,'132;ICUE 220T RGB Tempered Glass Black;16;11;1;124.00;99','root@localhost','2023-04-09','00:53:06'),(133,'INSERT',NULL,'133;ICUE 4000X TG ATX Black;16;11;1;141.00;99','root@localhost','2023-04-09','00:53:06'),(134,'INSERT',NULL,'134;7000X ICUE Vidrio Templado Black RGB Full Tower;16;11;1;352.00;99','root@localhost','2023-04-09','00:53:06'),(135,'INSERT',NULL,'135;ROG STRIX Helios Aluminum Black RGB;4;11;1;359.00;99','root@localhost','2023-04-09','00:53:06'),(136,'INSERT',NULL,'136;ROG STRIX GX601 Helios Aluminum White RGB;4;11;1;375.00;99','root@localhost','2023-04-09','00:53:06'),(137,'INSERT',NULL,'137;UX100 ARGB;20;13;1;14.00;99','root@localhost','2023-04-09','00:53:06'),(138,'INSERT',NULL,'138;Hyper T20;19;13;1;20.50;99','root@localhost','2023-04-09','00:53:06'),(139,'INSERT',NULL,'139;Hyper 212 Spectrum V2;19;13;1;29.00;99','root@localhost','2023-04-09','00:53:06'),(140,'INSERT',NULL,'140;Hyper H410R RGB;19;13;1;30.50;99','root@localhost','2023-04-09','00:53:06'),(141,'INSERT',NULL,'141;Watercooling CLC 360mm AIO RGB;9;13;1;117.00;99','root@localhost','2023-04-09','00:53:06'),(142,'INSERT',NULL,'142;ROG STRIX LC120;4;13;1;147.00;99','root@localhost','2023-04-09','00:53:06'),(143,'INSERT',NULL,'143;MF120 S2;19;14;1;11.00;99','root@localhost','2023-04-09','00:53:06'),(144,'INSERT',NULL,'144;Sickleflow 120 RGB;19;14;1;12.50;99','root@localhost','2023-04-09','00:53:06'),(145,'INSERT',NULL,'145;Master MF120 S3;19;14;1;13.50;99','root@localhost','2023-04-09','00:53:06'),(146,'INSERT',NULL,'146;Cable PSU \"Interlock\" 0,75mm x 1,5m;1;21;8;2.50;99','root@localhost','2023-04-09','00:53:06'),(147,'INSERT',NULL,'147;Cable DVI-D (Male-Male) x 2m;31;21;8;11.00;99','root@localhost','2023-04-09','00:53:06'),(148,'INSERT',NULL,'148;Cable HDMI V2.0 c/Filtro 4k x 20m;31;21;8;39.00;99','root@localhost','2023-04-09','00:53:06'),(149,'INSERT',NULL,'149;Cable UTP Cat 5e Interior x 5m	;1;21;8;1.50;99','root@localhost','2023-04-09','00:53:06'),(150,'INSERT',NULL,'150;Cable UTP Cat 5e Interior x 10m;1;21;8;2.00;99','root@localhost','2023-04-09','00:53:06'),(151,'INSERT',NULL,'151;Cable UTP Cat 5e Interior x 15m;1;21;8;3.00;99','root@localhost','2023-04-09','00:53:06'),(152,'INSERT',NULL,'152;Cable Displayport 2.0 360hz 240hz x 2m;1;21;8;46.00;99','root@localhost','2023-04-09','00:53:06'),(153,'INSERT',NULL,'153;Cable Usb Tipo C;1;21;8;4.50;99','root@localhost','2023-04-09','00:53:06'),(154,'INSERT',NULL,'154;Cable Tipo Sata (Negro);1;21;8;1.50;99','root@localhost','2023-04-09','00:53:06'),(155,'INSERT',NULL,'155;Adapter VGA a HDMI (Cable);1;16;8;4.00;99','root@localhost','2023-04-09','00:53:06'),(156,'INSERT',NULL,'156;Adapter VGA a Display Port (Cable);1;16;8;14.00;99','root@localhost','2023-04-09','00:53:06'),(157,'INSERT',NULL,'157;Adapter HDMI a Display Port (Cable);1;16;8;6.50;99','root@localhost','2023-04-09','00:53:06'),(158,'INSERT',NULL,'158;Splitter PSU PCIe 8pines a 2x8 pines;1;16;8;2.00;99','root@localhost','2023-04-09','00:53:06'),(159,'INSERT',NULL,'159;Adapter Hub Usb C(5 En 1) Hdmi 4k-1tipoc-2usb 3.0-1rj45;1;16;8;22.00;99','root@localhost','2023-04-09','00:53:06'),(160,'INSERT',NULL,'160;Archer C80 V1 negro 220V;29;17;7;60.00;99','root@localhost','2023-04-09','00:53:06'),(161,'INSERT',NULL,'161;Archer C5 V4 blanco 220V;29;17;7;40.00;99','root@localhost','2023-04-09','00:53:06'),(162,'INSERT',NULL,'162;TL-WR940N V6 negro 220V;29;17;7;26.00;99','root@localhost','2023-04-09','00:53:06'),(163,'INSERT',NULL,'163;Archer AX10 V1.20 negro 220V;29;17;7;65.00;99','root@localhost','2023-04-09','00:53:06'),(164,'INSERT',NULL,'164;TL-SG1005D;29;18;7;14.00;99','root@localhost','2023-04-09','00:53:06'),(165,'INSERT',NULL,'165;TL-SG1005P;29;18;7;43.00;99','root@localhost','2023-04-09','00:53:06'),(166,'INSERT',NULL,'166;TL-SF1008D;29;18;7;12.00;99','root@localhost','2023-04-09','00:53:06'),(167,'INSERT',NULL,'167;TL-SF1016D;29;18;7;23.00;99','root@localhost','2023-04-09','00:53:06'),(168,'INSERT',NULL,'168;TL-wn881nd 881nd;29;19;1;14.00;99','root@localhost','2023-04-09','00:53:06'),(169,'INSERT',NULL,'169;Archer T4e Ac1200 Dual Band;29;19;1;30.00;99','root@localhost','2023-04-09','00:53:06'),(170,'INSERT',NULL,'170;Archer T3u AC1300 WIFI Dual Band USB;29;20;7;30.00;99','root@localhost','2023-04-09','00:53:06'),(171,'INSERT',NULL,'171;TL-725n WIFI 2.4 USB;29;20;7;10.00;99','root@localhost','2023-04-09','00:53:06'),(172,'INSERT',NULL,'172;Ub500 5.0 Bluetooth USB;29;20;7;13.50;99','root@localhost','2023-04-09','00:53:06'),(173,'INSERT',NULL,'173;V14-ITL 14\" Core I3 1115G4 8GB 256GB SSD NVMe Freedos;35;23;4;510.00;99','root@localhost','2023-04-09','00:53:06'),(174,'INSERT',NULL,'174;V14-ITL 14\" Core I5 1135G7 8GB 256GB SSD NVMe Freedos;35;23;4;620.00;99','root@localhost','2023-04-09','00:53:06'),(175,'INSERT',NULL,'175;ROG Zephyrus WQHD 14\" Ryzen 9 4900HS 16GB 1TB SSD NVMe RTX 2060 W10 Home;4;23;4;1625.00;99','root@localhost','2023-04-09','00:53:06'),(176,'INSERT',NULL,'176;X515EA 15.6\" FHD Core I5 1135G7 8GB 256GB SSD NVMe W11 Home;4;23;4;605.00;99','root@localhost','2023-04-09','00:53:06'),(177,'INSERT',NULL,'177;250 15.6\" Core I5 1135G7 8GB 256GB SSD NVMe W11 Home;26;23;4;640.00;99','root@localhost','2023-04-09','00:53:06');
/*!40000 ALTER TABLE `log_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_sales`
--

DROP TABLE IF EXISTS `log_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_sales` (
  `ID_LOG` int NOT NULL AUTO_INCREMENT,
  `ACTIVITY` varchar(6) NOT NULL,
  `OLD_DATA` varchar(255) DEFAULT NULL,
  `NEW_DATA` varchar(255) DEFAULT NULL,
  `USER` varchar(50) NOT NULL,
  `DATE_ACTIVITY` date NOT NULL,
  `HOUR_ACTIVITY` time NOT NULL,
  PRIMARY KEY (`ID_LOG`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_sales`
--

LOCK TABLES `log_sales` WRITE;
/*!40000 ALTER TABLE `log_sales` DISABLE KEYS */;
INSERT INTO `log_sales` VALUES (1,'INSERT',NULL,'1;780.00;5;1;6;2023-01-03;08:30:00','root@localhost','2023-04-09','00:53:06'),(2,'INSERT',NULL,'2;1458.40;1;1;15;2023-01-03;09:30:00','root@localhost','2023-04-09','00:53:06'),(3,'INSERT',NULL,'3;2583.00;13;1;9;2023-01-03;10:30:00','root@localhost','2023-04-09','00:53:06'),(4,'INSERT',NULL,'4;42.00;3;3;15;2023-01-03;11:30:00','root@localhost','2023-04-09','00:53:06'),(5,'INSERT',NULL,'5;332.00;4;1;8;2023-01-04;09:20:00','root@localhost','2023-04-09','00:53:06'),(6,'INSERT',NULL,'6;657.80;13;1;12;2023-01-04;10:20:00','root@localhost','2023-04-09','00:53:06'),(7,'INSERT',NULL,'7;92.50;17;3;13;2023-01-04;11:20:00','root@localhost','2023-04-09','00:53:06'),(8,'INSERT',NULL,'8;2502.00;20;1;15;2023-01-05;09:10:00','root@localhost','2023-04-09','00:53:06'),(9,'INSERT',NULL,'9;1391.00;23;3;13;2023-01-06;10:10:00','root@localhost','2023-04-09','00:53:06'),(10,'INSERT',NULL,'10;624.00;2;3;14;2023-01-06;11:10:00','root@localhost','2023-04-09','00:53:06'),(11,'INSERT',NULL,'11;332.00;6;1;2;2023-01-06;12:10:00','root@localhost','2023-04-09','00:53:06'),(12,'INSERT',NULL,'12;1049.00;9;4;4;2023-01-06;13:10:00','root@localhost','2023-04-09','00:53:06'),(13,'INSERT',NULL,'13;805.75;11;1;11;2023-01-06;14:10:00','root@localhost','2023-04-09','00:53:06'),(14,'INSERT',NULL,'14;947.50;4;1;12;2023-01-06;15:10:00','root@localhost','2023-04-09','00:53:06'),(15,'INSERT',NULL,'15;187.00;7;3;15;2023-01-06;16:10:00','root@localhost','2023-04-09','00:53:06'),(16,'INSERT',NULL,'16;95.00;8;1;2;2023-01-06;17:10:00','root@localhost','2023-04-09','00:53:06'),(17,'INSERT',NULL,'17;1277.50;21;3;9;2023-01-11;10:45:00','root@localhost','2023-04-09','00:53:06'),(18,'INSERT',NULL,'18;84.40;22;1;10;2023-01-11;11:45:00','root@localhost','2023-04-09','00:53:06'),(19,'INSERT',NULL,'19;292.50;18;3;15;2023-01-11;12:45:00','root@localhost','2023-04-09','00:53:06'),(20,'INSERT',NULL,'20;117.50;19;1;4;2023-01-11;13:45:00','root@localhost','2023-04-09','00:53:06'),(21,'INSERT',NULL,'21;224.50;10;3;9;2023-01-12;08:25:00','root@localhost','2023-04-09','00:53:06'),(22,'INSERT',NULL,'22;171.50;12;1;6;2023-01-12;09:25:00','root@localhost','2023-04-09','00:53:06'),(23,'INSERT',NULL,'23;1160.00;14;1;4;2023-01-12;10:25:00','root@localhost','2023-04-09','00:53:06'),(24,'INSERT',NULL,'24;99.00;15;3;11;2023-01-12;01:25:00','root@localhost','2023-04-09','00:53:06'),(25,'INSERT',NULL,'25;595.50;15;1;7;2023-01-12;12:25:00','root@localhost','2023-04-09','00:53:06'),(26,'INSERT',NULL,'26;104.50;1;4;15;2023-01-13;15:10:00','root@localhost','2023-04-09','00:53:06'),(27,'INSERT',NULL,'27;250.00;6;1;7;2023-01-14;10:45:00','root@localhost','2023-04-09','00:53:06'),(28,'INSERT',NULL,'28;59.00;6;1;1;2023-01-14;11:45:00','root@localhost','2023-04-09','00:53:06'),(29,'INSERT',NULL,'29;3700.00;1;1;14;2023-01-14;16:10:00','root@localhost','2023-04-09','00:53:06'),(30,'INSERT',NULL,'30;860.55;22;3;13;2023-01-14;16:40:00','root@localhost','2023-04-09','00:53:06'),(31,'INSERT',NULL,'31;7618.41;20;1;2;2021-01-17;07:00:23','root@localhost','2023-04-09','00:53:06'),(32,'INSERT',NULL,'32;4692.94;3;4;10;2021-01-17;07:00:23','root@localhost','2023-04-09','00:53:06'),(33,'INSERT',NULL,'33;3267.90;17;3;10;2021-01-17;07:00:23','root@localhost','2023-04-09','00:53:06'),(34,'INSERT',NULL,'34;9286.26;23;1;8;2021-06-15;03:09:01','root@localhost','2023-04-09','00:53:06'),(35,'INSERT',NULL,'35;8308.46;9;1;15;2022-03-01;19:56:30','root@localhost','2023-04-09','00:53:06'),(36,'INSERT',NULL,'36;345.84;12;1;1;2022-03-05;12:04:04','root@localhost','2023-04-09','00:53:06'),(37,'INSERT',NULL,'37;3648.89;19;4;13;2022-07-14;03:51:09','root@localhost','2023-04-09','00:53:06'),(38,'INSERT',NULL,'38;4286.16;20;3;5;2021-05-11;14:39:11','root@localhost','2023-04-09','00:53:06'),(39,'INSERT',NULL,'39;5058.31;3;1;3;2022-05-15;09:20:04','root@localhost','2023-04-09','00:53:06'),(40,'INSERT',NULL,'40;3050.55;17;1;3;2022-11-29;08:23:35','root@localhost','2023-04-09','00:53:06'),(41,'INSERT',NULL,'41;5318.80;11;2;1;2022-04-16;11:26:26','root@localhost','2023-04-09','00:53:06'),(42,'INSERT',NULL,'42;9857.87;23;2;6;2021-03-02;03:33:27','root@localhost','2023-04-09','00:53:06'),(43,'INSERT',NULL,'43;3959.27;2;1;8;2022-11-26;15:07:07','root@localhost','2023-04-09','00:53:06'),(44,'INSERT',NULL,'44;1067.96;23;1;9;2023-01-28;13:39:56','root@localhost','2023-04-09','00:53:06'),(45,'INSERT',NULL,'45;8785.54;20;3;5;2022-11-02;10:44:56','root@localhost','2023-04-09','00:53:06'),(46,'INSERT',NULL,'46;7224.59;16;1;3;2021-12-12;10:04:03','root@localhost','2023-04-09','00:53:06'),(47,'INSERT',NULL,'47;397.32;20;1;8;2021-08-13;09:14:17','root@localhost','2023-04-09','00:53:06'),(48,'INSERT',NULL,'48;3400.69;5;1;10;2021-09-13;11:59:29','root@localhost','2023-04-09','00:53:06'),(49,'INSERT',NULL,'49;1445.51;8;1;10;2022-10-16;09:12:46','root@localhost','2023-04-09','00:53:06'),(50,'INSERT',NULL,'50;389.71;9;3;14;2021-03-14;00:46:40','root@localhost','2023-04-09','00:53:06'),(51,'INSERT',NULL,'51;9884.01;19;3;7;2021-02-05;10:42:41','root@localhost','2023-04-09','00:53:06'),(52,'INSERT',NULL,'52;8210.81;20;3;9;2022-06-05;06:37:33','root@localhost','2023-04-09','00:53:06'),(53,'INSERT',NULL,'53;9547.58;16;1;4;2021-09-20;03:44:28','root@localhost','2023-04-09','00:53:06'),(54,'INSERT',NULL,'54;5818.86;12;1;11;2022-02-06;10:52:34','root@localhost','2023-04-09','00:53:06'),(55,'INSERT',NULL,'55;9429.49;1;4;12;2022-04-24;06:26:38','root@localhost','2023-04-09','00:53:06'),(56,'INSERT',NULL,'56;5984.42;1;1;2;2022-12-15;15:09:25','root@localhost','2023-04-09','00:53:06'),(57,'INSERT',NULL,'57;5376.92;9;1;12;2021-01-20;00:12:41','root@localhost','2023-04-09','00:53:06'),(58,'INSERT',NULL,'58;1588.45;23;1;12;2022-01-25;16:34:16','root@localhost','2023-04-09','00:53:06'),(59,'INSERT',NULL,'59;8498.69;11;1;15;2022-01-31;07:55:50','root@localhost','2023-04-09','00:53:06'),(60,'INSERT',NULL,'60;7056.73;9;1;14;2021-12-27;21:12:11','root@localhost','2023-04-09','00:53:06'),(61,'INSERT',NULL,'61;4747.89;5;2;13;2021-12-15;20:15:45','root@localhost','2023-04-09','00:53:06'),(62,'INSERT',NULL,'62;9605.59;4;2;15;2021-01-11;23:25:46','root@localhost','2023-04-09','00:53:06'),(63,'INSERT',NULL,'63;3278.44;9;1;1;2022-06-13;15:07:56','root@localhost','2023-04-09','00:53:06'),(64,'INSERT',NULL,'64;2362.77;7;1;3;2022-05-14;00:45:56','root@localhost','2023-04-09','00:53:06'),(65,'INSERT',NULL,'65;9144.23;12;2;10;2021-02-28;00:52:04','root@localhost','2023-04-09','00:53:06'),(66,'INSERT',NULL,'66;9763.62;16;1;11;2022-08-17;06:03:48','root@localhost','2023-04-09','00:53:06'),(67,'INSERT',NULL,'67;4013.45;1;2;13;2023-03-31;01:15:32','root@localhost','2023-04-09','00:53:06'),(68,'INSERT',NULL,'68;7176.58;12;3;7;2022-01-01;08:44:44','root@localhost','2023-04-09','00:53:06'),(69,'INSERT',NULL,'69;6700.24;1;1;8;2022-07-15;04:22:46','root@localhost','2023-04-09','00:53:06'),(70,'INSERT',NULL,'70;8338.54;6;2;10;2022-05-09;20:34:37','root@localhost','2023-04-09','00:53:06'),(71,'INSERT',NULL,'71;8937.05;21;4;9;2023-03-23;03:32:52','root@localhost','2023-04-09','00:53:06'),(72,'INSERT',NULL,'72;9676.31;22;1;3;2021-04-02;13:30:03','root@localhost','2023-04-09','00:53:06');
/*!40000 ALTER TABLE `log_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_method`
--

DROP TABLE IF EXISTS `payment_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_method` (
  `ID_PAY` int NOT NULL AUTO_INCREMENT,
  `PAYMENT_METHOD` varchar(30) NOT NULL,
  PRIMARY KEY (`ID_PAY`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_method`
--

LOCK TABLES `payment_method` WRITE;
/*!40000 ALTER TABLE `payment_method` DISABLE KEYS */;
INSERT INTO `payment_method` VALUES (1,'Bank transfer'),(2,'Debit Card'),(3,'Credit Card'),(4,'Cash');
/*!40000 ALTER TABLE `payment_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `ID_PROD` int NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) NOT NULL,
  `ID_ASSEMBLER` int NOT NULL,
  `ID_TYPE` int NOT NULL,
  `ID_CAT` int NOT NULL,
  `PRICE` decimal(6,2) NOT NULL,
  `STOCK` int NOT NULL,
  PRIMARY KEY (`ID_PROD`),
  KEY `FK_PRODUCTS_PRODUCTS_ASSEMBLERS` (`ID_ASSEMBLER`),
  KEY `FK_PRODUCTS_PRODUCTS_TYPE` (`ID_TYPE`),
  KEY `FK_PRODUCTS_PRODUCTS_CATEGORY` (`ID_CAT`),
  CONSTRAINT `FK_PRODUCTS_PRODUCTS_ASSEMBLERS` FOREIGN KEY (`ID_ASSEMBLER`) REFERENCES `products_assemblers` (`ID_ASSEMBLER`),
  CONSTRAINT `FK_PRODUCTS_PRODUCTS_CATEGORY` FOREIGN KEY (`ID_CAT`) REFERENCES `products_category` (`ID_CAT`),
  CONSTRAINT `FK_PRODUCTS_PRODUCTS_TYPE` FOREIGN KEY (`ID_TYPE`) REFERENCES `products_type` (`ID_TYPE`)
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Celeron G4900 3.10GHz 1151 9th Gen',2,1,1,30.00,99),(2,'Pentium G4560 3.5 LGA 1151 Kaby Lake',2,1,1,48.50,99),(3,'Core i3 10100F 4.3GHz Turbo 1200 Comet Lake',2,1,1,85.00,99),(4,'Core i3 10100 4.3GHz Turbo 10th Gen Socket 1200',2,1,1,94.80,99),(5,'Core i5 10400 4.3GHz Turbo 10th Gen Socket 1200',2,1,1,132.00,99),(6,'Core i5 11400F 11th Gen Socket 1200',2,1,1,140.00,99),(7,'Core i7 10700F 4.8GHz Turbo Socket 1200',2,1,1,240.00,99),(8,'Core i7 10700 4.8GHz Turbo Socket 1200',2,1,1,280.00,99),(9,'Core i7 10700KF 5.1GHz Turbo Socket 1200',2,1,1,328.00,99),(10,'Core i7 11700F Socket 1200 11th Gen',2,1,1,292.00,99),(11,'Ryzen 3 3200G 4.0GHz Turbo Socket AM4',3,1,1,96.75,99),(12,'Ryzen 3 4100 Socket AM4',3,1,1,68.40,99),(13,'Ryzen 5 3600 4.2GHz Turbo Socket AM4',3,1,1,124.32,99),(14,'Ryzen 5 4500 Socket AM4',3,1,1,113.50,99),(15,'Ryzen 5 PRO 4650G 4.2GHz Turbo  Socket AM4',3,1,1,162.30,99),(16,'Ryzen 5 7600 5.1GHz Turbo Socket AM5',3,1,1,254.00,99),(17,'Ryzen 7 5700G 4.6GHz Turbo Socket AM4',3,1,1,260.00,99),(18,'Ryzen 7 5700X 4.6GHz Turbo Socket AM4',3,1,1,291.60,99),(19,'Radeon RX 6800 XT CORE 16GB GDDR6 Speedster MERC 319',13,15,1,740.50,99),(20,'Radeon RX 6800 XT 16GB GDDR6 Phantom Gaming D OC',6,15,1,727.00,99),(21,'Radeon RX 6700 XT 12GB GDDR6 MECH 2X',5,15,1,495.00,99),(22,'Radeon RX 6700 XT BLACK 12GB GDDR6 SPEEDSTER QICK 319',13,15,1,485.50,99),(23,'Radeon RX 6700 XT 12GB GDDR6 Challenger D OC',6,15,1,471.75,99),(24,'RX 570 8GB GDDR5 Phantom Gaming Elite',6,15,1,245.00,99),(25,'Radeon RX 570 8GB DDR5 RS',13,15,1,250.00,99),(26,'GeForce RTX 3090 24GB GDDR6X VENTUS 3X OC',5,15,1,1110.00,99),(27,'GeForce RTX 3090 24GB GDDR6X Trinity',8,15,1,1090.00,99),(28,'GeForce RTX 3080 Ti 12GB GDDR6X ROG STRIX OC',4,15,1,1000.00,99),(29,'GeForce RTX 3080 Ti 12GB GDDR6X Trinity',8,15,1,970.00,99),(30,'GeForce RTX 3070 GAMING OC Edition 8GB TUF Gaming',4,15,1,750.00,99),(31,'GeForce RTX 3070 FTW3 Ultra Gaming 8GB',9,15,1,745.00,99),(32,'GeForce RTX 3060 Ti Dual Mini V2',4,15,1,648.00,99),(33,'GeForce GTX 1660 Super Ventus XS OC 6Gb',5,15,1,270.00,99),(34,'B360M BULK WIFI Socket 1151',6,2,1,20.00,99),(35,'PRIME H310M-R R2.0 Socket 1151',4,2,1,34.00,99),(36,'Z390 Phantom Gaming 4S Wi-Fi BULK Socket 1151',6,2,1,58.00,99),(37,'H610M-HVS Socket 1700',6,2,1,58.00,99),(38,'PRIME B460M-A R2.0 Socket 1200',4,2,1,66.40,99),(39,'B560M DS3H V2 Socket 1200',7,2,1,68.00,99),(40,'PRIME H610M-E D4 Socket 1700',4,2,1,70.00,99),(41,'PRO H410M-B Socket 1200',5,2,1,72.00,99),(42,'PRIME Z690-P D4 Socket 1700',4,2,1,195.00,99),(43,'PRIME Z690-P WIFI D4 Socket 1700',4,2,1,211.00,99),(44,'Z590 Vision D Rev 1.0 Socket 1200',7,2,1,267.50,99),(45,'ROG MAXIMUS XIII EXTREME Z590 EATX Socket 1200',4,2,1,477.00,99),(46,'ROG MAXIMUS XIII EXTREME GLACIAL Socket 1200',4,2,1,895.00,99),(47,'A320M-HDV R4.0 Socket AM4',6,2,1,50.00,99),(48,'GA-A320M-H Socket AM4',7,2,1,53.40,99),(49,'A520M-A PRO Socket AM4',5,2,1,77.00,99),(50,'B450 Gaming Plus Max Socket AM4',5,2,1,95.00,99),(51,'TUF GAMING B550-PLUS WIFI II Socket AM4',4,2,1,200.00,99),(52,'X670E PG LIGHTNING Socket AM5',6,2,1,512.00,99),(53,'X670E Taichi Carrara Socket AM5',6,2,1,730.00,99),(54,'ROG THOR 850P 80 Plus Platinum 850W  Full modular',4,4,1,187.00,99),(55,'Tuf 550B 80 Plus Bronze 550W',4,4,1,70.00,99),(56,'P650B 80 Plus Bronze 650W',7,4,1,68.00,99),(57,'Smart 500W 80 Plus White',21,4,1,46.50,99),(58,'GC-PS001 80 Plus Bronze 500W',22,4,1,45.00,99),(59,'P550B 80 Plus Bronze 550W',7,4,1,52.50,99),(60,'ROG STRIX 1000G 80 Plus Gold 1000W Full Modular',4,4,1,185.00,99),(61,'XPG PYLON 80 Plus Bronze 750W',14,4,1,68.00,99),(62,'MPG A750GF 80 Plus Gold 750W Full Modular',5,4,1,95.00,99),(63,'MWE V2 80 Plus Gold 750W Full Modular',19,4,1,86.00,99),(64,'Super Luce RGB Black DDR4 16GB 3000MHz',18,3,1,96.50,99),(65,'Value DDR4 8GB 2666Mhz',16,3,1,51.00,99),(66,'Value DDR4 4GB 2666Mhz',16,3,1,31.00,99),(67,'T-Force Vulcan Z Gray DDR4 8GB 2666MHz',17,3,1,50.00,99),(68,'EVO X II RGB DDR4 8GB 3200MHz',18,3,1,53.00,99),(69,'Fury Beast RGB DDR4 8GB 3200MHz',11,3,1,59.00,99),(70,'XPG Spectrix D50 RGB DDR4 8GB 3200MHz',14,3,1,57.50,99),(71,'Fury Beast RGB DDR4 8GB 3600MHz',11,3,1,63.50,99),(72,'Value Sodimm DDR4 8GB 2666MHz',14,3,3,35.00,99),(73,'Value Sodimm DDR4 8GB 3200MHz',14,3,3,38.00,99),(74,'HDD 1TB Barracuda 64MB SATA 6GB/s',15,5,1,40.00,99),(75,'HDD 1TB BLUE 64MB SATA 6.0GB/s',10,5,1,40.00,99),(76,'HDD 2TB BLUE 256MB SATA 6.0GB/s',10,5,1,54.00,99),(77,'HDD 4TB N300 NAS 7200rpm 128MB',32,5,1,84.50,99),(78,'HDD 6TB Purple 5.6K RPM 256MB',10,5,1,105.00,99),(79,'HDD 14TB SkyHawk AI ST14000VE0008',15,5,1,195.00,99),(80,'HDD 12TB Gold 7.2K RPM 256MB',10,5,1,225.00,99),(81,'HDD 12TB Red Pro 7.2K RPM 256MB',10,5,1,250.00,99),(82,'SSD 240GB GREEN 545MB/s',10,5,1,21.50,99),(83,'SSD 240GB 500MB/s',7,5,1,21.50,99),(84,'SSD 240GB A400 500MB/s',11,5,1,23.00,99),(85,'SSD M.2 240GB GREEN 545MB/s SATA',10,5,1,24.00,99),(86,'SSD 480GB SU650 520MB/s',14,5,1,33.00,99),(87,'SSD 480GB A400 500MB/s',11,5,1,34.00,99),(88,'SSD M.2 NVMe 480GB Green SN350 2400MB/s PCI-E x4',10,5,1,37.00,99),(89,'SSD M.2 NVMe 500GB P3 PLUS 4700MB/s PCI-E x4',12,5,1,61.21,99),(90,'SSD M.2 NVMe 500GB Black SN770 5000MB/s PCI-E x4',10,5,1,72.00,99),(91,'SSD M.2 NVMe 1TB Black SN770 5150MB/s PCI-E x4',10,5,1,117.50,99),(92,'SSD M.2 NVMe 1TB P5 PLUS 6600MB/s PCI-E x4',12,5,1,123.00,99),(93,'Centrophorus M601 RGB',21,7,5,8.00,99),(94,'Mirage M690 2.5GHz Bluetooth',21,7,5,10.00,99),(95,'HyperX Pulsefire CORE RGB',26,7,5,13.50,99),(96,'G203 Lightsync RGB White',33,7,5,17.50,99),(97,'P506 ROG Strix Impact II',4,7,5,33.00,99),(98,'K509 Dyaus Español Retroiluminado',21,8,5,18.00,99),(99,'HyperX Alloy CORE RGB LA',26,8,5,27.00,99),(100,'Dragonborn K630 RGB Mechanic',21,8,5,29.00,99),(101,'Kumara K552 RGB Outemu Blue Español',21,8,5,33.00,99),(102,'HyperX Alloy Origins Core RGB Switch Blue US',26,8,5,61.50,99),(103,'SP-Q180 Gris USB',28,9,5,7.00,99),(104,'SP-HF280 USB Wood',28,9,5,8.50,99),(105,'SoundBar 200BT RGB Bluetooth 5.1 USB',28,9,5,18.00,99),(106,'SP-HF380 Wood Bluetooth 5.0',28,9,5,19.00,99),(107,'SoundBarGS570 Darknet RGB',21,9,5,28.50,99),(108,'SP-HF500A II Wood',28,9,5,37.00,99),(109,'Z607 5.1 Surround Bluetooth 160W',33,9,5,114.00,99),(110,'H111 Single Jack',33,10,5,7.50,99),(111,'H151 PC STEREO',33,10,5,11.00,99),(112,'H220 Themis',21,10,5,11.50,99),(113,'HyperX Gaming Cloud Black-Blue',26,10,5,40.00,99),(114,'GW600 FOBOS 720p',21,12,5,15.50,99),(115,'2000X V2 Full HD 1080P USB',28,12,5,19.00,99),(116,'HD C505 USB 720P Mic',33,12,5,25.50,99),(117,'C920S PRO Full HD',33,12,5,57.00,99),(118,'LED 19\" 19M38A-B VGA',25,6,5,110.00,99),(119,'LED 22\" T350 75Hz IPS FHD FreeSync',24,6,5,118.00,99),(120,'LED 19\" A330N HDMI',24,6,5,123.00,99),(121,'LED 21.5\" VP228HE-J Full HD 1ms HDMI VGA',4,6,5,145.00,99),(122,'LED 24\" 24MP400-B 75Hz IPS FHD FreeSync HDMI',25,6,5,156.00,99),(123,'LED 27\" T350H Full HD IPS 75Hz',24,6,5,176.00,99),(124,'LED 24\" G50 Curvo 144Hz Full HD',24,6,5,210.00,99),(125,'LED 27\" GAMING VG278QR 165Hz Full HD',4,6,5,332.00,99),(126,'F10 RGB M-ATX',23,11,1,45.00,99),(127,'V200 Tempered Glass Ryzen Edition',20,11,1,53.00,99),(128,'Inspire K20 Vidrio Templado 1x120mm ARGB',34,11,1,56.00,99),(129,'Void X Dual Infinity Mirror ARGB',34,11,1,60.00,99),(130,'S100 Tempered Glass Black',20,11,1,62.00,99),(131,'S300 Tempered Glass Black',20,11,1,88.00,99),(132,'ICUE 220T RGB Tempered Glass Black',16,11,1,124.00,99),(133,'ICUE 4000X TG ATX Black',16,11,1,141.00,99),(134,'7000X ICUE Vidrio Templado Black RGB Full Tower',16,11,1,352.00,99),(135,'ROG STRIX Helios Aluminum Black RGB',4,11,1,359.00,99),(136,'ROG STRIX GX601 Helios Aluminum White RGB',4,11,1,375.00,99),(137,'UX100 ARGB',20,13,1,14.00,99),(138,'Hyper T20',19,13,1,20.50,99),(139,'Hyper 212 Spectrum V2',19,13,1,29.00,99),(140,'Hyper H410R RGB',19,13,1,30.50,99),(141,'Watercooling CLC 360mm AIO RGB',9,13,1,117.00,99),(142,'ROG STRIX LC120',4,13,1,147.00,99),(143,'MF120 S2',19,14,1,11.00,99),(144,'Sickleflow 120 RGB',19,14,1,12.50,99),(145,'Master MF120 S3',19,14,1,13.50,99),(146,'Cable PSU \"Interlock\" 0,75mm x 1,5m',1,21,8,2.50,99),(147,'Cable DVI-D (Male-Male) x 2m',31,21,8,11.00,99),(148,'Cable HDMI V2.0 c/Filtro 4k x 20m',31,21,8,39.00,99),(149,'Cable UTP Cat 5e Interior x 5m	',1,21,8,1.50,99),(150,'Cable UTP Cat 5e Interior x 10m',1,21,8,2.00,99),(151,'Cable UTP Cat 5e Interior x 15m',1,21,8,3.00,99),(152,'Cable Displayport 2.0 360hz 240hz x 2m',1,21,8,46.00,99),(153,'Cable Usb Tipo C',1,21,8,4.50,99),(154,'Cable Tipo Sata (Negro)',1,21,8,1.50,99),(155,'Adapter VGA a HDMI (Cable)',1,16,8,4.00,99),(156,'Adapter VGA a Display Port (Cable)',1,16,8,14.00,99),(157,'Adapter HDMI a Display Port (Cable)',1,16,8,6.50,99),(158,'Splitter PSU PCIe 8pines a 2x8 pines',1,16,8,2.00,99),(159,'Adapter Hub Usb C(5 En 1) Hdmi 4k-1tipoc-2usb 3.0-1rj45',1,16,8,22.00,99),(160,'Archer C80 V1 negro 220V',29,17,7,60.00,99),(161,'Archer C5 V4 blanco 220V',29,17,7,40.00,99),(162,'TL-WR940N V6 negro 220V',29,17,7,26.00,99),(163,'Archer AX10 V1.20 negro 220V',29,17,7,65.00,99),(164,'TL-SG1005D',29,18,7,14.00,99),(165,'TL-SG1005P',29,18,7,43.00,99),(166,'TL-SF1008D',29,18,7,12.00,99),(167,'TL-SF1016D',29,18,7,23.00,99),(168,'TL-wn881nd 881nd',29,19,1,14.00,99),(169,'Archer T4e Ac1200 Dual Band',29,19,1,30.00,99),(170,'Archer T3u AC1300 WIFI Dual Band USB',29,20,7,30.00,99),(171,'TL-725n WIFI 2.4 USB',29,20,7,10.00,99),(172,'Ub500 5.0 Bluetooth USB',29,20,7,13.50,99),(173,'V14-ITL 14\" Core I3 1115G4 8GB 256GB SSD NVMe Freedos',35,23,4,510.00,99),(174,'V14-ITL 14\" Core I5 1135G7 8GB 256GB SSD NVMe Freedos',35,23,4,620.00,99),(175,'ROG Zephyrus WQHD 14\" Ryzen 9 4900HS 16GB 1TB SSD NVMe RTX 2060 W10 Home',4,23,4,1625.00,99),(176,'X515EA 15.6\" FHD Core I5 1135G7 8GB 256GB SSD NVMe W11 Home',4,23,4,605.00,99),(177,'250 15.6\" Core I5 1135G7 8GB 256GB SSD NVMe W11 Home',26,23,4,640.00,99);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_assemblers`
--

DROP TABLE IF EXISTS `products_assemblers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_assemblers` (
  `ID_ASSEMBLER` int NOT NULL AUTO_INCREMENT,
  `NAME` varchar(30) NOT NULL,
  PRIMARY KEY (`ID_ASSEMBLER`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_assemblers`
--

LOCK TABLES `products_assemblers` WRITE;
/*!40000 ALTER TABLE `products_assemblers` DISABLE KEYS */;
INSERT INTO `products_assemblers` VALUES (1,'OEM'),(2,'Intel'),(3,'AMD'),(4,'Asus'),(5,'MSI'),(6,'Asrock'),(7,'Gigabyte'),(8,'Zotac'),(9,'EVGA'),(10,'Western Digital'),(11,'Kingstone'),(12,'Crucial'),(13,'XFX'),(14,'Adata'),(15,'Seagate'),(16,'Corsair'),(17,'Team'),(18,'Geil'),(19,'Coolermaster'),(20,'Thermaltake'),(21,'Red Dragon'),(22,'Aerocool'),(23,'Sentey'),(24,'Samsung'),(25,'LG'),(26,'HP'),(27,'Noga'),(28,'Genius'),(29,'TP-Link'),(30,'Cisco'),(31,'Nisuta'),(32,'Toshiba'),(33,'Logitech'),(34,'Kolink'),(35,'Lenovo');
/*!40000 ALTER TABLE `products_assemblers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_category`
--

DROP TABLE IF EXISTS `products_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_category` (
  `ID_CAT` int NOT NULL AUTO_INCREMENT,
  `CATEGORY` varchar(40) NOT NULL,
  PRIMARY KEY (`ID_CAT`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_category`
--

LOCK TABLES `products_category` WRITE;
/*!40000 ALTER TABLE `products_category` DISABLE KEYS */;
INSERT INTO `products_category` VALUES (1,'Desktop PC Component'),(2,'Desktop PC'),(3,'Notebook component'),(4,'Notebooks'),(5,'Peripherals'),(6,'Accessories'),(7,'Network Connectivity'),(8,'Adapter/Cables');
/*!40000 ALTER TABLE `products_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_type`
--

DROP TABLE IF EXISTS `products_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_type` (
  `ID_TYPE` int NOT NULL AUTO_INCREMENT,
  `NAME_TYPE` varchar(30) NOT NULL,
  PRIMARY KEY (`ID_TYPE`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_type`
--

LOCK TABLES `products_type` WRITE;
/*!40000 ALTER TABLE `products_type` DISABLE KEYS */;
INSERT INTO `products_type` VALUES (1,'Microprocessor'),(2,'Motherboard'),(3,'Memory RAM'),(4,'PSU'),(5,'Storage'),(6,'Screen'),(7,'Mouse'),(8,'Keyboard'),(9,'Speaker'),(10,'Headphones'),(11,'PC Case'),(12,'WebCam'),(13,'Cooler Processor'),(14,'Cooler Case'),(15,'GPU'),(16,'Adapter'),(17,'Router'),(18,'Switch'),(19,'WiFi Board Receiver'),(20,'USB Wireless Receiver'),(21,'Wire'),(22,'Gadget'),(23,'Laptop PC');
/*!40000 ALTER TABLE `products_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `province`
--

DROP TABLE IF EXISTS `province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `province` (
  `ID_PROV` int NOT NULL AUTO_INCREMENT,
  `PROVINCE` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID_PROV`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `province`
--

LOCK TABLES `province` WRITE;
/*!40000 ALTER TABLE `province` DISABLE KEYS */;
INSERT INTO `province` VALUES (1,'Buenos Aires'),(2,'Capital Federal'),(3,'Catamarca'),(4,'Chaco'),(5,'Chubut'),(6,'Córdoba'),(7,'Corrientes'),(8,'Entre Ríos'),(9,'Formosa'),(10,'Jujuy'),(11,'La Pampa'),(12,'La Rioja'),(13,'Mendoza'),(14,'Misiones'),(15,'Neuquén'),(16,'Río Negro'),(17,'Salta'),(18,'San Juan'),(19,'San Luis'),(20,'Santa Cruz'),(21,'Santa Fe'),(22,'Santiago del Estero'),(23,'Tierra del Fuego'),(24,'Tucumán');
/*!40000 ALTER TABLE `province` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `ID_SALE` int NOT NULL AUTO_INCREMENT,
  `AMOUNT` decimal(7,2) NOT NULL,
  `ID_CLIENT` int NOT NULL,
  `ID_PAY` int NOT NULL,
  `ID_EMPL` int NOT NULL,
  `DATE` date NOT NULL,
  `HOUR` time NOT NULL,
  PRIMARY KEY (`ID_SALE`),
  KEY `FK_SALES_CLIENTS` (`ID_CLIENT`),
  KEY `FK_SALES_PAYMENT_METHOD` (`ID_PAY`),
  KEY `FK_SALES_EMPLOYEEES` (`ID_EMPL`),
  CONSTRAINT `FK_SALES_CLIENTS` FOREIGN KEY (`ID_CLIENT`) REFERENCES `clients` (`ID_CLIENT`),
  CONSTRAINT `FK_SALES_EMPLOYEEES` FOREIGN KEY (`ID_EMPL`) REFERENCES `employees` (`ID_EMPL`),
  CONSTRAINT `FK_SALES_PAYMENT_METHOD` FOREIGN KEY (`ID_PAY`) REFERENCES `payment_method` (`ID_PAY`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (1,780.00,5,1,6,'2023-01-03','08:30:00'),(2,1458.40,1,1,15,'2023-01-03','09:30:00'),(3,2583.00,13,1,9,'2023-01-03','10:30:00'),(4,42.00,3,3,15,'2023-01-03','11:30:00'),(5,332.00,4,1,8,'2023-01-04','09:20:00'),(6,657.80,13,1,12,'2023-01-04','10:20:00'),(7,92.50,17,3,13,'2023-01-04','11:20:00'),(8,2502.00,20,1,15,'2023-01-05','09:10:00'),(9,1391.00,23,3,13,'2023-01-06','10:10:00'),(10,624.00,2,3,14,'2023-01-06','11:10:00'),(11,332.00,6,1,2,'2023-01-06','12:10:00'),(12,1049.00,9,4,4,'2023-01-06','13:10:00'),(13,805.75,11,1,11,'2023-01-06','14:10:00'),(14,947.50,4,1,12,'2023-01-06','15:10:00'),(15,187.00,7,3,15,'2023-01-06','16:10:00'),(16,95.00,8,1,2,'2023-01-06','17:10:00'),(17,1277.50,21,3,9,'2023-01-11','10:45:00'),(18,84.40,22,1,10,'2023-01-11','11:45:00'),(19,292.50,18,3,15,'2023-01-11','12:45:00'),(20,117.50,19,1,4,'2023-01-11','13:45:00'),(21,224.50,10,3,9,'2023-01-12','08:25:00'),(22,171.50,12,1,6,'2023-01-12','09:25:00'),(23,1160.00,14,1,4,'2023-01-12','10:25:00'),(24,99.00,15,3,11,'2023-01-12','01:25:00'),(25,595.50,15,1,7,'2023-01-12','12:25:00'),(26,104.50,1,4,15,'2023-01-13','15:10:00'),(27,250.00,6,1,7,'2023-01-14','10:45:00'),(28,59.00,6,1,1,'2023-01-14','11:45:00'),(29,3700.00,1,1,14,'2023-01-14','16:10:00'),(30,860.55,22,3,13,'2023-01-14','16:40:00'),(31,7618.41,20,1,2,'2021-01-17','07:00:23'),(32,4692.94,3,4,10,'2021-01-17','07:00:23'),(33,3267.90,17,3,10,'2021-01-17','07:00:23'),(34,9286.26,23,1,8,'2021-06-15','03:09:01'),(35,8308.46,9,1,15,'2022-03-01','19:56:30'),(36,345.84,12,1,1,'2022-03-05','12:04:04'),(37,3648.89,19,4,13,'2022-07-14','03:51:09'),(38,4286.16,20,3,5,'2021-05-11','14:39:11'),(39,5058.31,3,1,3,'2022-05-15','09:20:04'),(40,3050.55,17,1,3,'2022-11-29','08:23:35'),(41,5318.80,11,2,1,'2022-04-16','11:26:26'),(42,9857.87,23,2,6,'2021-03-02','03:33:27'),(43,3959.27,2,1,8,'2022-11-26','15:07:07'),(44,1067.96,23,1,9,'2023-01-28','13:39:56'),(45,8785.54,20,3,5,'2022-11-02','10:44:56'),(46,7224.59,16,1,3,'2021-12-12','10:04:03'),(47,397.32,20,1,8,'2021-08-13','09:14:17'),(48,3400.69,5,1,10,'2021-09-13','11:59:29'),(49,1445.51,8,1,10,'2022-10-16','09:12:46'),(50,389.71,9,3,14,'2021-03-14','00:46:40'),(51,9884.01,19,3,7,'2021-02-05','10:42:41'),(52,8210.81,20,3,9,'2022-06-05','06:37:33'),(53,9547.58,16,1,4,'2021-09-20','03:44:28'),(54,5818.86,12,1,11,'2022-02-06','10:52:34'),(55,9429.49,1,4,12,'2022-04-24','06:26:38'),(56,5984.42,1,1,2,'2022-12-15','15:09:25'),(57,5376.92,9,1,12,'2021-01-20','00:12:41'),(58,1588.45,23,1,12,'2022-01-25','16:34:16'),(59,8498.69,11,1,15,'2022-01-31','07:55:50'),(60,7056.73,9,1,14,'2021-12-27','21:12:11'),(61,4747.89,5,2,13,'2021-12-15','20:15:45'),(62,9605.59,4,2,15,'2021-01-11','23:25:46'),(63,3278.44,9,1,1,'2022-06-13','15:07:56'),(64,2362.77,7,1,3,'2022-05-14','00:45:56'),(65,9144.23,12,2,10,'2021-02-28','00:52:04'),(66,9763.62,16,1,11,'2022-08-17','06:03:48'),(67,4013.45,1,2,13,'2023-03-31','01:15:32'),(68,7176.58,12,3,7,'2022-01-01','08:44:44'),(69,6700.24,1,1,8,'2022-07-15','04:22:46'),(70,8338.54,6,2,10,'2022-05-09','20:34:37'),(71,8937.05,21,4,9,'2023-03-23','03:32:52'),(72,9676.31,22,1,3,'2021-04-02','13:30:03');
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_description`
--

DROP TABLE IF EXISTS `sales_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_description` (
  `ID_SALE` int NOT NULL,
  `ID_PROD` int NOT NULL,
  `QUANTITY` int NOT NULL,
  PRIMARY KEY (`ID_SALE`,`ID_PROD`),
  KEY `FK_SALES_DESCRIPTION_PRODUCTS` (`ID_PROD`),
  CONSTRAINT `FK_SALES_DESCRIPTION_PRODUCTS` FOREIGN KEY (`ID_PROD`) REFERENCES `products` (`ID_PROD`),
  CONSTRAINT `FK_SALES_DESCRIPTION_SALES` FOREIGN KEY (`ID_SALE`) REFERENCES `sales` (`ID_SALE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_description`
--

LOCK TABLES `sales_description` WRITE;
/*!40000 ALTER TABLE `sales_description` DISABLE KEYS */;
INSERT INTO `sales_description` VALUES (1,5,1),(1,32,1),(2,9,1),(2,30,1),(2,38,1),(2,56,1),(2,69,2),(2,90,1),(2,128,1),(3,16,1),(3,31,1),(3,53,1),(3,60,1),(3,70,2),(3,91,1),(3,108,1),(3,122,1),(3,132,1),(3,141,1),(3,146,1),(4,150,1),(4,161,1),(5,125,1),(6,4,1),(6,21,1),(6,61,1),(7,149,3),(7,151,1),(7,163,1),(7,167,1),(8,11,1),(8,29,2),(8,80,1),(8,95,1),(8,122,1),(8,130,1),(8,137,1),(8,158,1),(8,163,1),(8,172,1),(9,3,1),(9,20,1),(9,21,1),(9,65,1),(9,101,1),(10,25,2),(10,94,1),(10,109,1),(11,125,1),(12,10,1),(12,30,1),(12,103,1),(13,23,1),(13,51,1),(13,90,1),(13,130,1),(14,17,1),(14,33,1),(14,107,3),(14,125,1),(15,54,1),(16,62,1),(17,1,1),(17,11,2),(17,46,1),(17,88,1),(17,140,4),(18,12,1),(18,106,1),(19,3,1),(19,77,1),(19,92,1),(20,91,1),(21,120,1),(21,131,1),(21,145,1),(22,78,1),(22,116,1),(22,147,1),(22,170,1),(23,5,1),(23,23,2),(23,77,1),(24,84,1),(24,130,1),(24,168,1),(25,9,1),(25,44,1),(26,34,1),(26,77,1),(27,81,1),(28,69,1),(29,26,3),(29,60,2),(30,4,1),(30,23,1),(30,40,1),(30,56,1),(30,111,1),(30,127,2),(30,148,1),(31,150,2),(32,8,1),(32,20,6),(33,1,1),(33,16,1),(33,111,2),(34,11,2),(35,133,1),(36,161,2),(37,101,2),(38,77,1),(39,2,1),(39,6,3),(40,101,3),(40,163,1),(41,20,1),(42,2,1),(43,9,1),(44,16,2),(45,96,2),(46,1,1),(46,12,2),(47,63,1),(48,60,2),(48,115,2),(49,103,1),(49,110,1),(50,5,1),(50,77,3),(51,50,1),(52,5,1),(52,32,1),(52,88,2),(53,9,1),(53,30,1),(53,38,1),(53,56,1),(53,69,2),(53,90,1),(53,128,1),(54,16,1),(54,31,1),(54,53,1),(54,60,1),(54,70,2),(54,91,1),(54,108,1),(54,122,1),(54,132,1),(54,141,1),(54,146,1),(55,150,1),(55,161,1),(56,125,1),(57,4,1),(57,21,1),(57,61,1),(58,149,3),(58,151,1),(58,163,1),(58,167,1),(59,11,1),(59,29,2),(59,80,1),(59,95,1),(59,122,1),(59,130,1),(59,137,1),(59,158,1),(59,163,1),(59,172,1),(60,3,1),(60,20,1),(60,21,1),(60,65,1),(60,101,1),(61,25,2),(61,94,1),(61,109,1),(62,125,1),(63,10,1),(63,30,1),(63,103,1),(64,23,1),(64,51,1),(64,90,1),(64,130,1),(65,17,1),(65,33,1),(65,107,3),(65,125,1),(66,54,1),(67,62,1),(68,1,1),(68,11,2),(68,46,1),(68,88,1),(68,140,4),(69,12,1),(69,106,1),(70,3,1),(70,77,1),(70,92,1),(71,91,1),(72,120,1),(72,131,1),(72,145,1);
/*!40000 ALTER TABLE `sales_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sector`
--

DROP TABLE IF EXISTS `sector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sector` (
  `ID_SECTOR` int NOT NULL AUTO_INCREMENT,
  `SECTOR_NAME` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_SECTOR`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sector`
--

LOCK TABLES `sector` WRITE;
/*!40000 ALTER TABLE `sector` DISABLE KEYS */;
INSERT INTO `sector` VALUES (1,'Ventas'),(2,'RRHH'),(3,'Deposito'),(4,'Mantenimiento'),(5,'Contabilidad'),(6,'Gerencia'),(7,'Informatica'),(8,'Logistica');
/*!40000 ALTER TABLE `sector` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-09  0:55:11
