-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: devs2blu
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionario` (
  `codigo` int NOT NULL AUTO_INCREMENT,
  `sexo` char(1) NOT NULL,
  `religiao` varchar(45) DEFAULT NULL,
  `cor` varchar(10) NOT NULL,
  `qi` int DEFAULT NULL,
  `tipo_sanguineo` char(3) NOT NULL,
  `doador_orgaos` tinyint DEFAULT NULL,
  `numero` varchar(45) NOT NULL,
  `rua` varchar(255) NOT NULL,
  `grau_ensino` varchar(255) DEFAULT NULL,
  `data_nascimento` date NOT NULL,
  `passagem_policia` tinyint NOT NULL,
  `complemento` varchar(45) DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `cep` varchar(13) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `uf` char(2) NOT NULL,
  `data_cadastro` date NOT NULL,
  `ultima_atualizacao_cadastro` datetime DEFAULT NULL,
  `nome` varchar(100) NOT NULL,
  `idade` tinyint unsigned NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `cnpj` varchar(18) NOT NULL,
  PRIMARY KEY (`codigo`),
  UNIQUE KEY `numero_UNIQUE` (`numero`),
  UNIQUE KEY `cep_UNIQUE` (`cep`),
  UNIQUE KEY `data_cadastro_UNIQUE` (`data_cadastro`),
  UNIQUE KEY `cpf_UNIQUE` (`cpf`),
  UNIQUE KEY `cnpj_UNIQUE` (`cnpj`),
  UNIQUE KEY `grau_ensino_UNIQUE` (`grau_ensino`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-26 18:23:47
