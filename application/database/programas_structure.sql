-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: programas
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

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
-- Table structure for table `Apartado`
--

DROP TABLE IF EXISTS `Apartado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Apartado` (
  `ApartadoId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ApartadoLetra` char(1) NOT NULL,
  `ApartadoNombre` varchar(50) NOT NULL,
  PRIMARY KEY (`ApartadoId`),
  UNIQUE KEY `ApartadoLetra_UNIQUE` (`ApartadoLetra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `Apartado` WRITE;
/*!40000 ALTER TABLE `Apartado` DISABLE KEYS */;
INSERT INTO `Apartado` (`ApartadoId`, `ApartadoLetra`, `ApartadoNombre`) VALUES (NULL, 'A','Nombre del curso'), (NULL, 'B','Datos básicos'), (NULL, 'C','Objetivos del curso'), (NULL, 'D','Contenidos y métodos'), (NULL, 'E','Estrategias de enseñanza y aprendizaje'), (NULL, 'F','Evaluación y acreditación'), (NULL, 'G','Bibliografía y recursos informáticos') ;
/*!40000 ALTER TABLE `Apartado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Bibliografia`
--

DROP TABLE IF EXISTS `Bibliografia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Bibliografia` (
  `BibliografiaId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ProgAcademicoId` int(10) unsigned NOT NULL,
  `BiblioTipoId` int(10) unsigned NOT NULL,
  `BibliografiaNombre` varchar(255) NOT NULL,
  PRIMARY KEY (`BibliografiaId`),
  KEY `fk_Bibliografia_1_idx` (`BiblioTipoId`),
  KEY `fk_Bibliografia_2_idx` (`ProgAcademicoId`),
  CONSTRAINT `fk_Bibliografia_1` FOREIGN KEY (`BiblioTipoId`) REFERENCES `BibliografiaTipo` (`BiblioTipoId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Bibliografia_2` FOREIGN KEY (`ProgAcademicoId`) REFERENCES `ProgramaAcademico` (`ProgAcademicoId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BibliografiaTipo`
--

DROP TABLE IF EXISTS `BibliografiaTipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BibliografiaTipo` (
  `BiblioTipoId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `BiblioTipoNombre` varchar(50) NOT NULL,
  `BiblioTipoNombres` varchar(50) NOT NULL,
  PRIMARY KEY (`BiblioTipoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `BibliografiaTipo` WRITE;
/*!40000 ALTER TABLE `BibliografiaTipo` DISABLE KEYS */;
INSERT INTO `BibliografiaTipo` (`BiblioTipoId`, `BiblioTipoNombre`, `BiblioTipoNombres`) VALUES (NULL, 'Texto Básico', 'Textos Básicos'), (NULL, 'Sitio de Internet', 'Sitios de Internet');
/*!40000 ALTER TABLE `BibliografiaTipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CompProfesional`
--

DROP TABLE IF EXISTS `CompProfesional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CompProfesional` (
  `CompProfId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LicenciaturaId` int(10) unsigned NOT NULL,
  `CompProfNombre` varchar(50) NOT NULL,
  `CompProfDescripcion` text NOT NULL,
  `CompProfTipo` varchar(45) DEFAULT NULL COMMENT 'Tipo de competencia profesional',
  PRIMARY KEY (`CompProfId`),
  KEY `fk_CompProfesional_1_idx` (`LicenciaturaId`),
  CONSTRAINT `fk_CompProfesional_1` FOREIGN KEY (`LicenciaturaId`) REFERENCES `Licenciatura` (`LicenciaturaId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CompTransversal`
--

DROP TABLE IF EXISTS `CompTransversal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CompTransversal` (
  `CompTransvId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CompTransvNombre` varchar(50) NOT NULL,
  `CompTransvDescripcion` text NOT NULL,
  PRIMARY KEY (`CompTransvId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Compartido`
--

DROP TABLE IF EXISTS `Compartido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Compartido` (
  `CompartidoId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ProgAcademico` int(10) unsigned NOT NULL COMMENT 'Programa que se comparte en otra licenciatura',
  `MateriaId` int(10) unsigned NOT NULL COMMENT 'Materia con la que esta compartido el programa en otra licenciatura',
  PRIMARY KEY (`CompartidoId`),
  KEY `fk_Compartido_1_idx` (`ProgAcademico`),
  KEY `fk_Compartido_2_idx` (`MateriaId`),
  CONSTRAINT `fk_Compartido_1` FOREIGN KEY (`ProgAcademico`) REFERENCES `ProgramaAcademico` (`ProgAcademicoId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Compartido_2` FOREIGN KEY (`MateriaId`) REFERENCES `Materia` (`MateriaId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Criterio`
--

DROP TABLE IF EXISTS `Criterio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Criterio` (
  `CriterioId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CriterioNombre` varchar(100) NOT NULL,
  `CriterioDescripcion` varchar(254) DEFAULT NULL,
  PRIMARY KEY (`CriterioId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


LOCK TABLES `Criterio` WRITE;
/*!40000 ALTER TABLE `Criterio` DISABLE KEYS */;
INSERT INTO `Criterio` (`CriterioId`, `CriterioNombre`, `CriterioDescripcion`) VALUES (NULL, 'Resultados de aprendizaje', NULL), (NULL, 'Valoración de la secuencia de enseñanza en clase', NULL), (NULL, 'Comparación con otros programas', NULL), (NULL, 'Comparación con índices de libros', NULL), (NULL, 'Valoración de resultados de investigación própios', NULL), (NULL, 'Valoración de resultados de investigación en revístas científicas', NULL), (NULL, 'Valoración de resultados de evaluación', NULL), (NULL, 'Otro', NULL);
/*!40000 ALTER TABLE `Criterio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Curso`
--

DROP TABLE IF EXISTS `Curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Curso` (
  `CursoId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CursoPeriodo` varchar(100) NOT NULL,
  `CursoSalon` varchar(10) DEFAULT NULL,
  `CursoHora` time DEFAULT NULL,
  `UsuarioId` int(10) unsigned DEFAULT NULL,
  `ProgAcademicoId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`CursoId`),
  KEY `fk_Curso_1_idx` (`UsuarioId`),
  KEY `fk_Curso_2_idx` (`ProgAcademicoId`),
  CONSTRAINT `fk_Curso_1` FOREIGN KEY (`UsuarioId`) REFERENCES `Usuario` (`UsuarioId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Curso_2` FOREIGN KEY (`ProgAcademicoId`) REFERENCES `ProgramaAcademico` (`ProgAcademicoId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Error`
--

DROP TABLE IF EXISTS `Error`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Error` (
  `ErrorId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `UsuarioId` int(10) unsigned NOT NULL,
  `ErrorDescripcion` text NOT NULL,
  `ErrorFecha` date NOT NULL,
  `ErrorHora` time NOT NULL,
  `ErrorEstado` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Estado del error. Pendiente 0. Corregido 1.',
  PRIMARY KEY (`ErrorId`),
  KEY `fk_Error_1_idx` (`UsuarioId`),
  CONSTRAINT `fk_Error_1` FOREIGN KEY (`UsuarioId`) REFERENCES `Usuario` (`UsuarioId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla para almacenar el reporte de errores en el sistema por parte de los usuarios';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `EstadoModificacion`
--

DROP TABLE IF EXISTS `EstadoModificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EstadoModificacion` (
  `EstdModifId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `EstdModifNombre` varchar(30) NOT NULL,
  PRIMARY KEY (`EstdModifId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `EstadoModificacion` WRITE;
/*!40000 ALTER TABLE `EstadoModificacion` DISABLE KEYS */;
INSERT INTO `EstadoModificacion` (`EstdModifId`, `EstdModifNombre`) VALUES (NULL, 'Pendiente'), (NULL, 'Aprobada'), (NULL, 'Rechazada');
/*!40000 ALTER TABLE `EstadoModificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EstrategiaDidactica`
--

DROP TABLE IF EXISTS `EstrategiaDidactica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EstrategiaDidactica` (
  `EstDidacticaId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `EstDidacticaNombre` varchar(255) NOT NULL,
  `TemaId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`EstDidacticaId`),
  KEY `fk_EstrategiaDidactica_1_idx` (`TemaId`),
  CONSTRAINT `fk_EstrategiaDidactica_1` FOREIGN KEY (`TemaId`) REFERENCES `Tema` (`TemaId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `EstrategiaEnsenanza`
--

DROP TABLE IF EXISTS `EstrategiaEnsenanza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EstrategiaEnsenanza` (
  `EstEnsenanzaId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ProgAcademicoId` int(10) unsigned NOT NULL,
  `EstEnsenanzaOrden` int(10) unsigned DEFAULT NULL,
  `EstEnsenanzaNombre` text NOT NULL,
  PRIMARY KEY (`EstEnsenanzaId`),
  KEY `fk_EstrategiaEsenanza_1_idx` (`ProgAcademicoId`),
  CONSTRAINT `fk_EstrategiaEsenanza_1` FOREIGN KEY (`ProgAcademicoId`) REFERENCES `ProgramaAcademico` (`ProgAcademicoId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Evaluacion`
--

DROP TABLE IF EXISTS `Evaluacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Evaluacion` (
  `EvaluacionId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ProgAcademicoId` int(10) unsigned NOT NULL,
  `EvaluacionOrden` int(10) unsigned DEFAULT NULL,
  `EvaluacionNombre` varchar(100) NOT NULL,
  `EvaluacionPeriodicidad` varchar(100) DEFAULT NULL,
  `EvaluacionPonderacion` varchar(100) NOT NULL COMMENT 'decimal?',
  `EvaluacionAbarca` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`EvaluacionId`),
  KEY `fk_Evaluacion_1_idx` (`ProgAcademicoId`),
  CONSTRAINT `fk_Evaluacion_1` FOREIGN KEY (`ProgAcademicoId`) REFERENCES `ProgramaAcademico` (`ProgAcademicoId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Facultad`
--

DROP TABLE IF EXISTS `Facultad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Facultad` (
  `FacultadId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FacultadNombre` varchar(100) NOT NULL,
  `FacultadCiudad` varchar(30) NOT NULL,
  `FacultadDireccion` varchar(100) NOT NULL,
  `FacultadTel` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`FacultadId`),
  UNIQUE KEY `FacultadNombre_UNIQUE` (`FacultadNombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Lectura`
--

DROP TABLE IF EXISTS `Lectura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Lectura` (
  `LectId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LecturaNombre` varchar(255) NOT NULL,
  `TemaId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`LectId`),
  KEY `fk_Lectura_1_idx` (`TemaId`),
  CONSTRAINT `fk_Lectura_1` FOREIGN KEY (`TemaId`) REFERENCES `Tema` (`TemaId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Licenciatura`
--

DROP TABLE IF EXISTS `Licenciatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Licenciatura` (
  `LicenciaturaId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FacultadId` int(10) unsigned NOT NULL,
  `LicenciaturaNombre` varchar(50) NOT NULL,
  `LicenciaturaDescripcion` text,
  `LicenciaturaSemestres` tinyint(2) unsigned NOT NULL COMMENT 'Numero de semestres de la licenciatura',
  PRIMARY KEY (`LicenciaturaId`),
  UNIQUE KEY `LicenciaturaNombre_UNIQUE` (`LicenciaturaNombre`),
  KEY `fk_Licenciatura_1_idx` (`FacultadId`),
  CONSTRAINT `fk_Licenciatura_1` FOREIGN KEY (`FacultadId`) REFERENCES `Facultad` (`FacultadId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `LineaConocimiento`
--

DROP TABLE IF EXISTS `LineaConocimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LineaConocimiento` (
  `LineaId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LineaNombre` varchar(50) NOT NULL,
  `LineaDescripcion` text,
  `LicenciaturaId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`LineaId`),
  KEY `fk_LineaConocimiento_1_idx` (`LicenciaturaId`),
  CONSTRAINT `fk_LineaConocimiento_1` FOREIGN KEY (`LicenciaturaId`) REFERENCES `Licenciatura` (`LicenciaturaId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Materia`
--

DROP TABLE IF EXISTS `Materia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Materia` (
  `MateriaId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LicenciaturaId` int(10) unsigned NOT NULL,
  `MateriaNombre` varchar(100) NOT NULL,
  `MateriaCodigo` int(10) unsigned DEFAULT NULL,
  `LineaId` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`MateriaId`),
  KEY `fk_Materia_1_idx` (`LicenciaturaId`),
  KEY `fk_Materia_2_idx` (`LineaId`),
  CONSTRAINT `fk_Materia_1` FOREIGN KEY (`LicenciaturaId`) REFERENCES `Licenciatura` (`LicenciaturaId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Materia_2` FOREIGN KEY (`LineaId`) REFERENCES `LineaConocimiento` (`LineaId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ModifAprobada`
--

DROP TABLE IF EXISTS `ModifAprobada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ModifAprobada` (
  `ModifAprobadabId` int(11) NOT NULL AUTO_INCREMENT,
  `ModifId` int(10) unsigned NOT NULL COMMENT 'Modificacion aprobada',
  `UsuarioId` int(10) unsigned NOT NULL COMMENT 'Usuario que aprueba la modificacion',
  `ModifAprobadaFecha` date NOT NULL,
  `ProgAcademicoId` int(10) unsigned NOT NULL COMMENT 'Programa Academico en el que ya esta incluida la modificacion',
  `ModifAprobadaHora` time NOT NULL,
  PRIMARY KEY (`ModifAprobadabId`),
  KEY `fk_ModifAprobada_1_idx` (`ModifId`),
  KEY `fk_ModifAprobada_2_idx` (`UsuarioId`),
  KEY `fk_ModifAprobada_3_idx` (`ProgAcademicoId`),
  CONSTRAINT `fk_ModifAprobada_1` FOREIGN KEY (`ModifId`) REFERENCES `Modificacion` (`ModifId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ModifAprobada_2` FOREIGN KEY (`UsuarioId`) REFERENCES `Usuario` (`UsuarioId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ModifAprobada_3` FOREIGN KEY (`ProgAcademicoId`) REFERENCES `ProgramaAcademico` (`ProgAcademicoId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ModifRechazada`
--

DROP TABLE IF EXISTS `ModifRechazada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ModifRechazada` (
  `ModifReczadaId` int(11) NOT NULL AUTO_INCREMENT,
  `ModifId` int(10) unsigned NOT NULL COMMENT 'Modificación que fue rechazada',
  `UsuarioId` int(10) unsigned NOT NULL COMMENT 'Usuario que rechaza la modificacion',
  `ModifRechazadaFecha` date NOT NULL,
  `ModifRechazadaHora` time NOT NULL,
  `ModifRechazadaJustificacion` text NOT NULL,
  PRIMARY KEY (`ModifReczadaId`),
  KEY `fk_ModifRechazada_1_idx` (`ModifId`),
  KEY `fk_ModifRechazada_2_idx` (`UsuarioId`),
  CONSTRAINT `fk_ModifRechazada_1` FOREIGN KEY (`ModifId`) REFERENCES `Modificacion` (`EstdModifId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ModifRechazada_2` FOREIGN KEY (`UsuarioId`) REFERENCES `Usuario` (`UsuarioId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ModifRespuesta`
--

DROP TABLE IF EXISTS `ModifRespuesta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ModifRespuesta` (
  `ModifRespuestaId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ModifRespuestaTexto` text NOT NULL,
  `ModifRespuestaFecha` date NOT NULL,
  `ModifRespuestaHora` time NOT NULL,
  `ModifId` int(10) unsigned NOT NULL COMMENT 'Modificación sugerida sobre la que se responde',
  `UsuarioId` int(10) unsigned NOT NULL COMMENT 'Usuario que responde a la modificacion sugerida',
  PRIMARY KEY (`ModifRespuestaId`),
  KEY `fk_ModifRespuesta_1_idx` (`ModifId`),
  KEY `fk_ModifRespuesta_2_idx` (`UsuarioId`),
  CONSTRAINT `fk_ModifRespuesta_1` FOREIGN KEY (`ModifId`) REFERENCES `Modificacion` (`ModifId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ModifRespuesta_2` FOREIGN KEY (`UsuarioId`) REFERENCES `Usuario` (`UsuarioId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Modificacion`
--

DROP TABLE IF EXISTS `Modificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Modificacion` (
  `ModifId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ApartadoId` int(10) unsigned NOT NULL,
  `ModifSugerencia` text NOT NULL,
  `ModifJustificacion` text NOT NULL,
  `UsuarioId` int(10) unsigned NOT NULL COMMENT 'Usuario que sugiere la modificacion',
  `EstdModifId` int(10) unsigned NOT NULL,
  `ProgAcademicoId` int(10) unsigned NOT NULL COMMENT 'Programa academico sobre el que se sugiere la modificacion',
  `CriterioId` int(10) unsigned NOT NULL,
  `ModifFecha` date NOT NULL COMMENT 'Fecha que se sugiere la modificacion',
  `ModifHora` time NOT NULL COMMENT 'Hora a la que se sugiere la modificacion',
  PRIMARY KEY (`ModifId`),
  KEY `fk_Modificacion_1_idx` (`ApartadoId`),
  KEY `fk_Modificacion_2_idx` (`UsuarioId`),
  KEY `fk_Modificacion_3_idx` (`EstdModifId`),
  KEY `fk_Modificacion_4_idx` (`ProgAcademicoId`),
  KEY `fk_Modificacion_5_idx` (`CriterioId`),
  CONSTRAINT `fk_Modificacion_1` FOREIGN KEY (`ApartadoId`) REFERENCES `Apartado` (`ApartadoId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Modificacion_2` FOREIGN KEY (`UsuarioId`) REFERENCES `Usuario` (`UsuarioId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Modificacion_3` FOREIGN KEY (`EstdModifId`) REFERENCES `EstadoModificacion` (`EstdModifId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Modificacion_4` FOREIGN KEY (`ProgAcademicoId`) REFERENCES `ProgramaAcademico` (`ProgAcademicoId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Modificacion_5` FOREIGN KEY (`CriterioId`) REFERENCES `Criterio` (`CriterioId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `NivelUsuario`
--

DROP TABLE IF EXISTS `NivelUsuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NivelUsuario` (
  `NivelUsuId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NivelUsuNombre` varchar(50) NOT NULL,
  `NivelUsuPrivilegios` tinytext NOT NULL,
  PRIMARY KEY (`NivelUsuId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NivelUsuario`
--

LOCK TABLES `NivelUsuario` WRITE;
/*!40000 ALTER TABLE `NivelUsuario` DISABLE KEYS */;
INSERT INTO `NivelUsuario` (`NivelUsuId`, `NivelUsuNombre`, `NivelUsuPrivilegios`) VALUES (NULL, 'Visitante', ''), (NULL, 'Revisor', ''), (NULL, 'Supervisor', ''), (NULL, 'f
istrador', ''), (NULL, 'Super Administrador', '');
/*!40000 ALTER TABLE `NivelUsuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProgAcademicoCompProf`
--

DROP TABLE IF EXISTS `ProgAcademicoCompProf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProgAcademicoCompProf` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ProgAcademicoId` int(10) unsigned NOT NULL,
  `CompProfId` int(10) unsigned NOT NULL,
  `priority` int(10) unsigned NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_ProgAcademicoCompProf_1_idx` (`ProgAcademicoId`),
  KEY `fk_ProgAcademicoCompProf_2_idx` (`CompProfId`),
  CONSTRAINT `fk_ProgAcademicoCompProf_1` FOREIGN KEY (`ProgAcademicoId`) REFERENCES `ProgramaAcademico` (`ProgAcademicoId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ProgAcademicoCompProf_2` FOREIGN KEY (`CompProfId`) REFERENCES `CompProfesional` (`CompProfId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ProgAcademicoCompTransv`
--

DROP TABLE IF EXISTS `ProgAcademicoCompTransv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProgAcademicoCompTransv` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CompTransvId` int(10) unsigned NOT NULL,
  `ProgAcademicoId` int(10) unsigned NOT NULL,
  `priority` int(10) unsigned NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_ProgAcademicoCompTransv_1_idx` (`CompTransvId`),
  KEY `fk_ProgAcademicoCompTransv_2_idx` (`ProgAcademicoId`),
  CONSTRAINT `fk_ProgAcademicoCompTransv_1` FOREIGN KEY (`CompTransvId`) REFERENCES `CompTransversal` (`CompTransvId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ProgAcademicoCompTransv_2` FOREIGN KEY (`ProgAcademicoId`) REFERENCES `ProgramaAcademico` (`ProgAcademicoId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ProgramaAcademico`
--

DROP TABLE IF EXISTS `ProgramaAcademico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProgramaAcademico` (
  `ProgAcademicoId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `MateriaId` int(10) unsigned NOT NULL COMMENT 'Materia sobre la cual se desarrollo el programa academico',
  `ProgAcademicoSemestre` tinyint(2) unsigned NOT NULL COMMENT 'Semestre en el que se imparte la materia',
  `ProgAcademicoHrsTeoria` tinyint(2) unsigned NOT NULL,
  `ProgAcademicoHrsPractica` tinyint(2) unsigned NOT NULL,
  `ProgAcademicoHrsAdicional` tinyint(2) unsigned NOT NULL,
  `ProgAcademicoCreditos` tinyint(2) unsigned NOT NULL,
  `ProgAcademicoObjGeneral` text NOT NULL COMMENT 'Objetivo general de la materia',
  `TipoMateriaId` int(10) unsigned DEFAULT NULL COMMENT 'Tipo de materia que es. Optativa, obligatoria etc.',
  `TipoPropCurrId` int(10) unsigned DEFAULT NULL COMMENT 'Tipo de propuesta curricular, modificacion, nueva creacion, etc.',
  `ProgAcademicoCompartido` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Es el programa academico una materia compartida con otras licenciaturas si-no',
  `ProgAcademicoSeriado` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Es el programa academico una materia seriada  si-no',
  `ProgAcademicoVersion` date NOT NULL,
  PRIMARY KEY (`ProgAcademicoId`),
  KEY `fk_ProgramaAcademico_1_idx` (`MateriaId`),
  KEY `fk_ProgramaAcademico_2_idx` (`TipoMateriaId`),
  KEY `fk_ProgramaAcademico_3_idx` (`TipoPropCurrId`),
  CONSTRAINT `fk_ProgramaAcademico_1` FOREIGN KEY (`MateriaId`) REFERENCES `Materia` (`MateriaId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ProgramaAcademico_2` FOREIGN KEY (`TipoMateriaId`) REFERENCES `TipoMateria` (`TipoMateriaId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ProgramaAcademico_3` FOREIGN KEY (`TipoPropCurrId`) REFERENCES `TipoPropuestaCurricular` (`TipoPropCurrId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Seriada`
--

DROP TABLE IF EXISTS `Seriada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Seriada` (
  `MatSeriadaId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ProgAcademicoId` int(10) unsigned NOT NULL COMMENT 'Programa academico que esta seriado con otra materia',
  `MateriaId` int(10) unsigned NOT NULL COMMENT 'Materia con la que esta seriado el programa',
  PRIMARY KEY (`MatSeriadaId`),
  KEY `fk_Seriada_1_idx` (`ProgAcademicoId`),
  KEY `fk_Seriada_2_idx` (`MateriaId`),
  CONSTRAINT `fk_Seriada_1` FOREIGN KEY (`ProgAcademicoId`) REFERENCES `ProgramaAcademico` (`ProgAcademicoId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Seriada_2` FOREIGN KEY (`MateriaId`) REFERENCES `Materia` (`MateriaId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Subtema`
--

DROP TABLE IF EXISTS `Subtema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Subtema` (
  `SubtemaId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TemaId` int(10) unsigned NOT NULL,
  `SubtemaOrden` int(10) unsigned NOT NULL,
  `SubtemaNombre` varchar(255) NOT NULL,
  PRIMARY KEY (`SubtemaId`),
  KEY `fk_Subtema_1_idx` (`TemaId`),
  CONSTRAINT `fk_Subtema_1` FOREIGN KEY (`TemaId`) REFERENCES `Tema` (`TemaId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Tema`
--

DROP TABLE IF EXISTS `Tema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tema` (
  `TemaId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `UnidadId` int(10) unsigned NOT NULL,
  `TemaOrden` int(10) unsigned NOT NULL,
  `TemaNombre` varchar(255) NOT NULL,
  `TemaHrs` tinyint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`TemaId`),
  KEY `fk_Tema_1_idx` (`UnidadId`),
  CONSTRAINT `fk_Tema_1` FOREIGN KEY (`UnidadId`) REFERENCES `Unidad` (`UnidadId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TipoMateria`
--

DROP TABLE IF EXISTS `TipoMateria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TipoMateria` (
  `TipoMateriaId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TipoMateriaNombre` varchar(50) NOT NULL,
  PRIMARY KEY (`TipoMateriaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TipoPropuestaCurricular`
--

DROP TABLE IF EXISTS `TipoPropuestaCurricular`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TipoPropuestaCurricular` (
  `TipoPropCurrId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TipoPropCurrNombre` varchar(30) NOT NULL,
  PRIMARY KEY (`TipoPropCurrId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TipoUsuario`
--

DROP TABLE IF EXISTS `TipoUsuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TipoUsuario` (
  `TipoUsuId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TipoUsuNombre` varchar(50) NOT NULL,
  PRIMARY KEY (`TipoUsuId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `TipoUsuario` WRITE;
/*!40000 ALTER TABLE `TipoUsuario` DISABLE KEYS */;
INSERT INTO `TipoUsuario` (`TipoUsuId`, `TipoUsuNombre`) VALUES (NULL, 'Profesor-Investigador'), (NULL, 'Profesor Hora Clase'), (NULL, 'Administrativo'), (NULL, 'Secretaría Académica'), (NULL, 'Coordinador de Licenciatura'), (NULL, 'Presidente de Academia'), (NULL, 'Comisión Curricular');
/*!40000 ALTER TABLE `TipoUsuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Unidad`
--

DROP TABLE IF EXISTS `Unidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Unidad` (
  `UnidadId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ProgAcademicoId` int(10) unsigned NOT NULL,
  `UnidadOrden` int(10) unsigned NOT NULL DEFAULT '0',
  `UnidadNombre` varchar(255) NOT NULL,
  `UnidadHrs` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `UnidadObjetivo` text NOT NULL,
  PRIMARY KEY (`UnidadId`),
  KEY `fk_Unidad_1_idx` (`ProgAcademicoId`),
  CONSTRAINT `fk_Unidad_1` FOREIGN KEY (`ProgAcademicoId`) REFERENCES `ProgramaAcademico` (`ProgAcademicoId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Usuario`
--

DROP TABLE IF EXISTS `Usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Usuario` (
  `UsuarioId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `UsuarioAcceso` varchar(50) NOT NULL,
  `UsuarioPassword` char(64) NOT NULL,
  `UsuarioFoto` varchar(100) DEFAULT NULL COMMENT 'Hipervinculo para almacenar la ruta a la foto.',
  `UsuarioEmail` varchar(50) NOT NULL,
  `NivelUsuId` int(10) unsigned NOT NULL COMMENT 'Clave foranea para el Nivel de Usuario.',
  `TipoUsuId` int(10) unsigned DEFAULT NULL COMMENT 'Clave foranea para Usuario Tipo (PHC/PTC/ADM/ETC)',
  `UsuarioNombre` varchar(60) NOT NULL,
  `UsuarioApellidos` varchar(100) NOT NULL,
  `FacultadId` int(10) unsigned DEFAULT NULL,
  `LicenciaturaId` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`UsuarioId`),
  UNIQUE KEY `UsuarioAcceso_UNIQUE` (`UsuarioAcceso`),
  UNIQUE KEY `UsuarioEmail_UNIQUE` (`UsuarioEmail`),
  KEY `fk_Usuario_1_idx` (`NivelUsuId`),
  KEY `fk_Usuario_2_idx` (`TipoUsuId`),
  KEY `fk_Usuario_3_idx` (`FacultadId`),
  CONSTRAINT `fk_Usuario_1` FOREIGN KEY (`NivelUsuId`) REFERENCES `NivelUsuario` (`NivelUsuId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Usuario_2` FOREIGN KEY (`TipoUsuId`) REFERENCES `TipoUsuario` (`TipoUsuId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Usuario_3` FOREIGN KEY (`FacultadId`) REFERENCES `Facultad` (`FacultadId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuario`
--

LOCK TABLES `Usuario` WRITE;
/*!40000 ALTER TABLE `Usuario` DISABLE KEYS */;
INSERT INTO `Usuario` (`UsuarioId`, `UsuarioAcceso`, `UsuarioPassword`, `UsuarioFoto`, `UsuarioEmail`, `NivelUsuId`, `TipoUsuId`, `UsuarioNombre`, `UsuarioApellidos`, `FacultadId`, `LicenciaturaId`) VALUES (NULL, 'admin', '8C6976E5B5410415BDE908BD4DEE15DFB167A9C873FC4BB8A81F6F2AB448A918', NULL, 'isnardo.rr@gmail.com', '5', NULL, 'Administrador', 'del Sistema', NULL, NULL);
/*!40000 ALTER TABLE `Usuario` ENABLE KEYS */;
UNLOCK TABLES;



/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-11  1:10:23
