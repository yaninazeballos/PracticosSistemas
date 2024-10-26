-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: redsocial
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `barrio`
--

DROP TABLE IF EXISTS `barrio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `barrio` (
  `id_barrio` int(11) NOT NULL,
  `nombre_barrio` varchar(50) NOT NULL,
  `codigo_postal` int(20) NOT NULL,
  `id_departamento` int(11) NOT NULL,
  PRIMARY KEY (`id_barrio`),
  KEY `id_departamento` (`id_departamento`),
  CONSTRAINT `barrio_ibfk_1` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id_departamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barrio`
--

LOCK TABLES `barrio` WRITE;
/*!40000 ALTER TABLE `barrio` DISABLE KEYS */;
/*!40000 ALTER TABLE `barrio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `busqueda_lugar`
--

DROP TABLE IF EXISTS `busqueda_lugar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `busqueda_lugar` (
  `Id_usuario` int(11) NOT NULL,
  `id_lugar` int(11) NOT NULL,
  PRIMARY KEY (`Id_usuario`,`id_lugar`),
  KEY `id_lugar` (`id_lugar`),
  CONSTRAINT `busqueda_lugar_ibfk_1` FOREIGN KEY (`Id_usuario`) REFERENCES `usuario` (`Id_usuario`),
  CONSTRAINT `busqueda_lugar_ibfk_2` FOREIGN KEY (`id_lugar`) REFERENCES `lugar` (`id_lugar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `busqueda_lugar`
--

LOCK TABLES `busqueda_lugar` WRITE;
/*!40000 ALTER TABLE `busqueda_lugar` DISABLE KEYS */;
/*!40000 ALTER TABLE `busqueda_lugar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comentario`
--

DROP TABLE IF EXISTS `comentario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comentario` (
  `Id_comentario` int(11) NOT NULL,
  `Id_usuario` int(11) NOT NULL,
  `texto_comentario` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`Id_comentario`),
  KEY `Id_usuario` (`Id_usuario`),
  CONSTRAINT `comentario_ibfk_1` FOREIGN KEY (`Id_usuario`) REFERENCES `usuario` (`Id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentario`
--

LOCK TABLES `comentario` WRITE;
/*!40000 ALTER TABLE `comentario` DISABLE KEYS */;
/*!40000 ALTER TABLE `comentario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacto_usuario`
--

DROP TABLE IF EXISTS `contacto_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacto_usuario` (
  `Id_usuario` int(11) NOT NULL,
  `Id_Contacto` int(11) NOT NULL,
  PRIMARY KEY (`Id_usuario`,`Id_Contacto`),
  KEY `Id_Contacto` (`Id_Contacto`),
  CONSTRAINT `contacto_usuario_ibfk_1` FOREIGN KEY (`Id_usuario`) REFERENCES `usuario` (`Id_usuario`),
  CONSTRAINT `contacto_usuario_ibfk_2` FOREIGN KEY (`Id_Contacto`) REFERENCES `usuario` (`Id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacto_usuario`
--

LOCK TABLES `contacto_usuario` WRITE;
/*!40000 ALTER TABLE `contacto_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacto_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departamento` (
  `id_departamento` int(11) NOT NULL,
  `nombre_departamento` varchar(50) NOT NULL,
  PRIMARY KEY (`id_departamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etiquetas`
--

DROP TABLE IF EXISTS `etiquetas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `etiquetas` (
  `id_etiquetas` int(11) NOT NULL,
  `nombre_etiqueta` varchar(100) NOT NULL,
  PRIMARY KEY (`id_etiquetas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etiquetas`
--

LOCK TABLES `etiquetas` WRITE;
/*!40000 ALTER TABLE `etiquetas` DISABLE KEYS */;
/*!40000 ALTER TABLE `etiquetas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evento`
--

DROP TABLE IF EXISTS `evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evento` (
  `id_evento` int(11) NOT NULL,
  `id_grupo` int(11) NOT NULL,
  `id_lugar` int(11) NOT NULL,
  `Descripcion` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `Imagen` varchar(150) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id_evento`),
  KEY `id_grupo` (`id_grupo`),
  KEY `id_lugar` (`id_lugar`),
  CONSTRAINT `evento_ibfk_1` FOREIGN KEY (`id_grupo`) REFERENCES `grupo` (`id_grupo`),
  CONSTRAINT `evento_ibfk_2` FOREIGN KEY (`id_lugar`) REFERENCES `lugar` (`id_lugar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evento`
--

LOCK TABLES `evento` WRITE;
/*!40000 ALTER TABLE `evento` DISABLE KEYS */;
/*!40000 ALTER TABLE `evento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evento_etiquetas`
--

DROP TABLE IF EXISTS `evento_etiquetas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evento_etiquetas` (
  `id_etiquetas` int(11) NOT NULL,
  `id_evento` int(11) NOT NULL,
  PRIMARY KEY (`id_etiquetas`,`id_evento`),
  KEY `id_evento` (`id_evento`),
  CONSTRAINT `evento_etiquetas_ibfk_1` FOREIGN KEY (`id_etiquetas`) REFERENCES `etiquetas` (`id_etiquetas`),
  CONSTRAINT `evento_etiquetas_ibfk_2` FOREIGN KEY (`id_evento`) REFERENCES `evento` (`id_evento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evento_etiquetas`
--

LOCK TABLES `evento_etiquetas` WRITE;
/*!40000 ALTER TABLE `evento_etiquetas` DISABLE KEYS */;
/*!40000 ALTER TABLE `evento_etiquetas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupo`
--

DROP TABLE IF EXISTS `grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupo` (
  `id_grupo` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion_grupo` varchar(200) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_grupo`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `grupo_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`Id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo`
--

LOCK TABLES `grupo` WRITE;
/*!40000 ALTER TABLE `grupo` DISABLE KEYS */;
/*!40000 ALTER TABLE `grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupo_etiquetas`
--

DROP TABLE IF EXISTS `grupo_etiquetas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupo_etiquetas` (
  `id_etiquetas` int(11) NOT NULL,
  `id_grupo` int(11) NOT NULL,
  PRIMARY KEY (`id_etiquetas`,`id_grupo`),
  KEY `id_grupo` (`id_grupo`),
  CONSTRAINT `grupo_etiquetas_ibfk_1` FOREIGN KEY (`id_etiquetas`) REFERENCES `etiquetas` (`id_etiquetas`),
  CONSTRAINT `grupo_etiquetas_ibfk_2` FOREIGN KEY (`id_grupo`) REFERENCES `grupo` (`id_grupo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo_etiquetas`
--

LOCK TABLES `grupo_etiquetas` WRITE;
/*!40000 ALTER TABLE `grupo_etiquetas` DISABLE KEYS */;
/*!40000 ALTER TABLE `grupo_etiquetas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupo_post`
--

DROP TABLE IF EXISTS `grupo_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupo_post` (
  `id_post` int(11) NOT NULL,
  `id_grupo` int(11) NOT NULL,
  PRIMARY KEY (`id_post`,`id_grupo`),
  KEY `id_grupo` (`id_grupo`),
  CONSTRAINT `grupo_post_ibfk_1` FOREIGN KEY (`id_post`) REFERENCES `post` (`id_post`),
  CONSTRAINT `grupo_post_ibfk_2` FOREIGN KEY (`id_grupo`) REFERENCES `grupo` (`id_grupo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo_post`
--

LOCK TABLES `grupo_post` WRITE;
/*!40000 ALTER TABLE `grupo_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `grupo_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `llamada`
--

DROP TABLE IF EXISTS `llamada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `llamada` (
  `Id_llamada` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `tiene_video` tinyint(1) NOT NULL,
  PRIMARY KEY (`Id_llamada`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `llamada`
--

LOCK TABLES `llamada` WRITE;
/*!40000 ALTER TABLE `llamada` DISABLE KEYS */;
/*!40000 ALTER TABLE `llamada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lugar`
--

DROP TABLE IF EXISTS `lugar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lugar` (
  `id_lugar` int(11) NOT NULL,
  `id_barrio` int(11) NOT NULL,
  `nombre_lugar` varchar(50) NOT NULL,
  `tipo_lugar` varchar(50) NOT NULL,
  PRIMARY KEY (`id_lugar`),
  KEY `id_barrio` (`id_barrio`),
  CONSTRAINT `lugar_ibfk_1` FOREIGN KEY (`id_barrio`) REFERENCES `barrio` (`id_barrio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lugar`
--

LOCK TABLES `lugar` WRITE;
/*!40000 ALTER TABLE `lugar` DISABLE KEYS */;
/*!40000 ALTER TABLE `lugar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lugar_etiquetas`
--

DROP TABLE IF EXISTS `lugar_etiquetas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lugar_etiquetas` (
  `id_etiquetas` int(11) NOT NULL,
  `id_lugar` int(11) NOT NULL,
  PRIMARY KEY (`id_etiquetas`,`id_lugar`),
  KEY `id_lugar` (`id_lugar`),
  CONSTRAINT `lugar_etiquetas_ibfk_1` FOREIGN KEY (`id_etiquetas`) REFERENCES `etiquetas` (`id_etiquetas`),
  CONSTRAINT `lugar_etiquetas_ibfk_2` FOREIGN KEY (`id_lugar`) REFERENCES `lugar` (`id_lugar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lugar_etiquetas`
--

LOCK TABLES `lugar_etiquetas` WRITE;
/*!40000 ALTER TABLE `lugar_etiquetas` DISABLE KEYS */;
/*!40000 ALTER TABLE `lugar_etiquetas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `id_usuario` int(11) NOT NULL,
  `id_post` int(11) NOT NULL,
  `fecha_hora` datetime DEFAULT NULL,
  PRIMARY KEY (`id_post`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `post_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`Id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_comentario`
--

DROP TABLE IF EXISTS `post_comentario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_comentario` (
  `id_post` int(11) NOT NULL,
  `Id_comentario` int(11) NOT NULL,
  PRIMARY KEY (`id_post`,`Id_comentario`),
  KEY `Id_comentario` (`Id_comentario`),
  CONSTRAINT `post_comentario_ibfk_1` FOREIGN KEY (`id_post`) REFERENCES `post` (`id_post`),
  CONSTRAINT `post_comentario_ibfk_2` FOREIGN KEY (`Id_comentario`) REFERENCES `comentario` (`Id_comentario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_comentario`
--

LOCK TABLES `post_comentario` WRITE;
/*!40000 ALTER TABLE `post_comentario` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_comentario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_image`
--

DROP TABLE IF EXISTS `post_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_image` (
  `id_post` int(11) NOT NULL,
  `imagen` varchar(150) NOT NULL,
  PRIMARY KEY (`id_post`),
  CONSTRAINT `post_image_ibfk_1` FOREIGN KEY (`id_post`) REFERENCES `post` (`id_post`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_image`
--

LOCK TABLES `post_image` WRITE;
/*!40000 ALTER TABLE `post_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_link`
--

DROP TABLE IF EXISTS `post_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_link` (
  `id_post` int(11) NOT NULL,
  `link` varchar(1000) NOT NULL,
  PRIMARY KEY (`id_post`),
  CONSTRAINT `post_link_ibfk_1` FOREIGN KEY (`id_post`) REFERENCES `post` (`id_post`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_link`
--

LOCK TABLES `post_link` WRITE;
/*!40000 ALTER TABLE `post_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_texto`
--

DROP TABLE IF EXISTS `post_texto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_texto` (
  `id_post` int(11) NOT NULL,
  `texto` varchar(1000) NOT NULL,
  PRIMARY KEY (`id_post`),
  CONSTRAINT `post_texto_ibfk_1` FOREIGN KEY (`id_post`) REFERENCES `post` (`id_post`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_texto`
--

LOCK TABLES `post_texto` WRITE;
/*!40000 ALTER TABLE `post_texto` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_texto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_video`
--

DROP TABLE IF EXISTS `post_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_video` (
  `id_post` int(11) NOT NULL,
  `Video` varchar(150) NOT NULL,
  PRIMARY KEY (`id_post`),
  CONSTRAINT `post_video_ibfk_1` FOREIGN KEY (`id_post`) REFERENCES `post` (`id_post`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_video`
--

LOCK TABLES `post_video` WRITE;
/*!40000 ALTER TABLE `post_video` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rol` (
  `Id_rol` int(11) NOT NULL,
  `Administrador` tinyint(1) NOT NULL,
  PRIMARY KEY (`Id_rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `Id_usuario` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `fecha_nac` date NOT NULL,
  `correo` varchar(50) NOT NULL,
  `descripcion_usuario` varchar(50) NOT NULL,
  `Id_rol` int(11) NOT NULL,
  PRIMARY KEY (`Id_usuario`),
  KEY `Id_rol` (`Id_rol`),
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`Id_rol`) REFERENCES `rol` (`Id_rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_grupo`
--

DROP TABLE IF EXISTS `usuario_grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario_grupo` (
  `id_grupo` int(11) NOT NULL,
  `Id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_grupo`,`Id_usuario`),
  KEY `Id_usuario` (`Id_usuario`),
  CONSTRAINT `usuario_grupo_ibfk_1` FOREIGN KEY (`id_grupo`) REFERENCES `grupo` (`id_grupo`),
  CONSTRAINT `usuario_grupo_ibfk_2` FOREIGN KEY (`Id_usuario`) REFERENCES `usuario` (`Id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_grupo`
--

LOCK TABLES `usuario_grupo` WRITE;
/*!40000 ALTER TABLE `usuario_grupo` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario_grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_intereses`
--

DROP TABLE IF EXISTS `usuario_intereses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario_intereses` (
  `Id_usuario` int(11) NOT NULL,
  `id_etiquetas` int(11) NOT NULL,
  PRIMARY KEY (`Id_usuario`,`id_etiquetas`),
  KEY `id_etiquetas` (`id_etiquetas`),
  CONSTRAINT `usuario_intereses_ibfk_1` FOREIGN KEY (`Id_usuario`) REFERENCES `usuario` (`Id_usuario`),
  CONSTRAINT `usuario_intereses_ibfk_2` FOREIGN KEY (`id_etiquetas`) REFERENCES `etiquetas` (`id_etiquetas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_intereses`
--

LOCK TABLES `usuario_intereses` WRITE;
/*!40000 ALTER TABLE `usuario_intereses` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario_intereses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_llamada`
--

DROP TABLE IF EXISTS `usuario_llamada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario_llamada` (
  `Id_llamada` int(11) NOT NULL,
  `Id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`Id_llamada`,`Id_usuario`),
  KEY `Id_usuario` (`Id_usuario`),
  CONSTRAINT `usuario_llamada_ibfk_1` FOREIGN KEY (`Id_llamada`) REFERENCES `llamada` (`Id_llamada`),
  CONSTRAINT `usuario_llamada_ibfk_2` FOREIGN KEY (`Id_usuario`) REFERENCES `usuario` (`Id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_llamada`
--

LOCK TABLES `usuario_llamada` WRITE;
/*!40000 ALTER TABLE `usuario_llamada` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario_llamada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_reaccion`
--

DROP TABLE IF EXISTS `usuario_reaccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario_reaccion` (
  `id_post` int(11) NOT NULL,
  `me_gusta` tinyint(1) NOT NULL,
  `Id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_post`),
  KEY `Id_usuario` (`Id_usuario`),
  CONSTRAINT `usuario_reaccion_ibfk_1` FOREIGN KEY (`id_post`) REFERENCES `post` (`id_post`),
  CONSTRAINT `usuario_reaccion_ibfk_2` FOREIGN KEY (`Id_usuario`) REFERENCES `usuario` (`Id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_reaccion`
--

LOCK TABLES `usuario_reaccion` WRITE;
/*!40000 ALTER TABLE `usuario_reaccion` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario_reaccion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-09 15:12:36
