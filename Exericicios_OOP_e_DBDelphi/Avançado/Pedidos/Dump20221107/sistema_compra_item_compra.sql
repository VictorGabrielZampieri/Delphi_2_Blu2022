-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sistema_compra
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
-- Table structure for table `item_compra`
--

DROP TABLE IF EXISTS `item_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_compra` (
  `id_item` int unsigned NOT NULL AUTO_INCREMENT,
  `quantidade` int unsigned DEFAULT NULL,
  `idpedido_compra` int unsigned DEFAULT NULL,
  `idproduto` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id_item`),
  KEY `idpedido_compra` (`idpedido_compra`),
  KEY `idproduto` (`idproduto`),
  CONSTRAINT `item_compra_ibfk_1` FOREIGN KEY (`idpedido_compra`) REFERENCES `pedido_compra` (`id_pedido`),
  CONSTRAINT `item_compra_ibfk_2` FOREIGN KEY (`idproduto`) REFERENCES `produto` (`id_produto`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_compra`
--

LOCK TABLES `item_compra` WRITE;
/*!40000 ALTER TABLE `item_compra` DISABLE KEYS */;
INSERT INTO `item_compra` VALUES (6,37,1,3),(7,1,1,4),(8,11,1,1),(9,1,2,1),(10,111,2,1),(11,7,3,4),(12,3,3,2),(13,11,1,2),(14,20,3,2);
/*!40000 ALTER TABLE `item_compra` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-07 18:10:03
