-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: sacuaslp
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Apartado`
--

LOCK TABLES `Apartado` WRITE;
/*!40000 ALTER TABLE `Apartado` DISABLE KEYS */;
INSERT INTO `Apartado` VALUES (1,'A','NOMBRE DEL CURSO'),(2,'B','DATOS BÁSICOS DEL CURSO'),(3,'C','OBJETIVOS DEL CURSO'),(4,'D','CONTENIDOS Y MÉTODOS POR UNIDADES Y TEMAS'),(5,'E','ESTRATEGIAS DE ENSEÑANZA Y APRENDIZAJE'),(6,'F','EVALUACIÓN Y ACREDITACIÓN'),(7,'G','BIBLIOGRAFÍA Y RECURSOS INFORMÁTICOS');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Bibliografia`
--

LOCK TABLES `Bibliografia` WRITE;
/*!40000 ALTER TABLE `Bibliografia` DISABLE KEYS */;
INSERT INTO `Bibliografia` VALUES (1,1,3,'Introducción al Algebra Lineal. Howard Anton. Editorial Limusa, 2008.'),(2,1,3,'Cálculo de Varias Variables con Álgebra Lineal. Philip C. Curtis Jr. Editorial Limusa, 1997.'),(3,1,3,'Fundamentos del Álgebra Lineal y Aplicaciones. Francis G. Florey. Editorial Prentice Hall Internacional, 1979.'),(4,1,3,'Algebra Lineal. Stanley I. Grossman. Editorial Iberoamerica, 2008.'),(5,1,3,'Algebra Lineal y sus Aplicaciones, Gilbert Strang, Ed. Thomson, 4a. Edición, 2007.'),(6,1,3,'Algebra Lineal Aplicada. Ben Noble, James W. Daniel. Prentice Hall, 1990.'),(7,1,2,'Página web de Octave http://www.gnu.org/software/octave/ y http://octave.sourceforge.net/'),(8,1,2,'Página web de Scilab http://www.scilab.org/'),(9,1,2,'Página web de Maxima http://maxima.sourceforge.net/'),(10,2,3,'Cálculo, James Stewart, Sexta Edición, Cengage Learning.'),(11,2,3,'Calculo, Larson/Hostetler/Edwards, Séptima Edicion, Mc Graw Hill.'),(12,2,3,'Cálculo con Geometría Analítica, Edwin J. Purcell Dale Varberg, VI Edición, Mc Graw Hill.'),(13,3,3,'C++ Como Programar. Deitel y Deitel. Prentice Hall, 2a Edición, 1999.'),(14,3,3,'El Lenguaje de Programación C, Brian Kernighan, Dennis Ritchie, Ed. Prentice Hall, 2a Edición, 1991.'),(15,3,3,'Métodos Numéricos para Ingenieros. S.C. Chapra, R.P. Canale. Ed. Mc Graw-Hill, 5a Edición, 2007'),(16,3,2,'MINGW, Compilador GNU de C++ para Windows, http://www.mingw.org'),(17,3,2,'CODE::BLOCKS, Entorno de desarrollo multiplataforma para C++ de libre distribución, http://www.codeblocks.org');
/*!40000 ALTER TABLE `Bibliografia` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BibliografiaTipo`
--

LOCK TABLES `BibliografiaTipo` WRITE;
/*!40000 ALTER TABLE `BibliografiaTipo` DISABLE KEYS */;
INSERT INTO `BibliografiaTipo` VALUES (1,'Base de datos','Bases de datos'),(2,'Sitio de Internet','Sitios de Internet'),(3,'Texto básico','Textos básicos'),(4,'Texto complementario','Textos complementarios'),(5,'Otro','Otros');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CompProfesional`
--

LOCK TABLES `CompProfesional` WRITE;
/*!40000 ALTER TABLE `CompProfesional` DISABLE KEYS */;
INSERT INTO `CompProfesional` VALUES (1,1,'Matemática','Domina el saber teórico y práctico de matemáticas elementales y del pensamiento complejo, así como fundamentos, estrategias y técnicas de trabajo, en especial del álgebra, cálculo, física, geometría y matemáticas aplicadas a diferentes niveles educativos.',NULL),(2,1,'Pedagógica','Selecciona y aplica entre las teorías del desarrollo contemporáneas y de aprendizaje para diseñar modelos, metodologías y técnicas para la práctica docente, la evaluación de saberes, la promoción de la investigación en el aula y la teorización de la matemática educativa. Y el acercamiento analítico a la historia de las matemáticas como elemento epistémico para la producción del conocimiento.',NULL),(3,1,'Matemática Educativa','Adapta los saberes matemático y pedagógico para el diseño e implementación de estrategias y procesos de enseñanza y aprendizaje en docencia de alta calidad de las matemáticas en diferentes niveles educativos. Y emplea la innovación en la solución de problemas matemáticos simples y complejos, el uso de las TIC’s, el análisis de problemáticas de aprendizaje, así como la actualización, didáctica, teorías y metodologías específicas de la matemática educativa.',NULL);
/*!40000 ALTER TABLE `CompProfesional` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CompTransversal`
--

LOCK TABLES `CompTransversal` WRITE;
/*!40000 ALTER TABLE `CompTransversal` DISABLE KEYS */;
INSERT INTO `CompTransversal` VALUES (1,'científica-tecnológica','Formación básica y aplicada vigente, a través de conocimientos, aptitudes y destrezas en las disciplinas y campos de aplicación propios de la profesión, en función de los requerimientos de los campos profesionales y avances del conocimiento.'),(2,'cognitiva','Habilidades de pensamiento complejo (análisis, problematización, contextualización, investigación, discernimiento, decisión y creatividad, entre otras) que le permitan aprender a aprender y adaptarse a los requerimientos cambiantes del contexto.'),(3,'responsabilidad social y sustentabilidad','Capacidad de realizar su propio trabajo con calidad y contribuir activamente en la identificación y solución de problemáticas de la sustentabilidad social, económica, política y ambiental, tales como la pobreza, la inequidad, la marginación, la violencia, la inseguridad, la contaminación y el deterior de los recursos naturales, entre otras.'),(4,'ético-valoral','Criterios, normas y principios necesarios para afrontar las disyuntivas y dilemas propios de su inserción en el mundo social y productivo, ya sea como ciudadanos y/o como profesionistas.'),(5,'internacional e intercultural','Capacidad de comprender el mundo que lo rodea e insertarse en él bajo una perspectiva cultural propia y al mismo tiempo abierta a la compresión de otras culturas y perspectivas.'),(6,'comunicación e información','Habilidades básicas de comunicación oral y escrita, tanto en español como en otros idiomas, así como de las más modernas tecnologías de información y comunicación, indispensables hoy en día en cualquier espacio de trabajo.'),(7,'cuidado de la salud y la integridad física','Capacidad de cuidar el propio cuerpo y mantener la salud en sus esferas psicológica, biológica y social, con una perspectiva de corto, mediano y largo plazo, mediante estrategias preventivas específicas.'),(8,'sensibilidad y apreciación estética','Capacidad de percibir y disfrutar, y en su caso, de expresar y producir creativamente, diferentes manifestaciones artísticas y culturales que le permitan potenciar sus sentidos, comprender su contexto actual y enriquecer su visión del mundo y de la vida.');
/*!40000 ALTER TABLE `CompTransversal` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `Compartido`
--

LOCK TABLES `Compartido` WRITE;
/*!40000 ALTER TABLE `Compartido` DISABLE KEYS */;
/*!40000 ALTER TABLE `Compartido` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Criterio`
--

LOCK TABLES `Criterio` WRITE;
/*!40000 ALTER TABLE `Criterio` DISABLE KEYS */;
INSERT INTO `Criterio` VALUES (1,'Resultados de aprendizaje',NULL),(2,'Valoración de la secuencia de enseñanza en clase',NULL),(3,'Comparación con otros programas',NULL),(4,'Comparación con índices de libros',NULL),(5,'Valoración de resultados de investigación própios',NULL),(6,'Valoración de resultados de investigación en revístas científicas',NULL),(7,'Valoración de resultados de evaluación',NULL),(8,'Otro',NULL);
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
-- Dumping data for table `Curso`
--

LOCK TABLES `Curso` WRITE;
/*!40000 ALTER TABLE `Curso` DISABLE KEYS */;
/*!40000 ALTER TABLE `Curso` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Tabla para almacenar el reporte de errores en el sistema por parte de los usuarios';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Error`
--

LOCK TABLES `Error` WRITE;
/*!40000 ALTER TABLE `Error` DISABLE KEYS */;
INSERT INTO `Error` VALUES (1,2,'Nuevo Error de Prueba\r\n','2017-11-02','23:12:28',0),(2,2,'Doce\r\n','2017-11-03','01:02:58',0),(3,2,'Nuevo error para probar la bandera en 1','2017-11-03','01:06:11',1),(4,2,'Nueva prueba de error','2017-11-03','01:11:57',1),(5,2,'El sistema falla\r\n','2017-11-24','21:45:32',1);
/*!40000 ALTER TABLE `Error` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EstadoModificacion`
--

LOCK TABLES `EstadoModificacion` WRITE;
/*!40000 ALTER TABLE `EstadoModificacion` DISABLE KEYS */;
INSERT INTO `EstadoModificacion` VALUES (1,'Pendiente'),(2,'Aprobada'),(3,'Rechazada');
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
-- Dumping data for table `EstrategiaDidactica`
--

LOCK TABLES `EstrategiaDidactica` WRITE;
/*!40000 ALTER TABLE `EstrategiaDidactica` DISABLE KEYS */;
/*!40000 ALTER TABLE `EstrategiaDidactica` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EstrategiaEnsenanza`
--

LOCK TABLES `EstrategiaEnsenanza` WRITE;
/*!40000 ALTER TABLE `EstrategiaEnsenanza` DISABLE KEYS */;
INSERT INTO `EstrategiaEnsenanza` VALUES (4,1,NULL,'Se recomienda que el alumno estudie cada tema con anticipación a la clase. Se recomienda que el profesor exponga el tema, ejemplificando con múltiples ejercicios y aclarando las dudas, para pasar después a la resolución de problemas en el pizarrón por parte de los alumnos.'),(5,1,NULL,'Se recomienda la asignar tareas semanales y/o elaborar un breve examen semanal para mantener un seguimiento continuo del progreso de cada alumno.'),(6,1,NULL,'Se recomienda el uso de software para realizar cálculos numéricos como Scilab, Octave, Matlab y Maxima.'),(7,1,NULL,'Se tendrá una sesión de una hora por semana para la resolución de ejercicios y aclaración de dudas.'),(8,2,NULL,'Exposición del maestro con apoyo de recursos visuales y audiovisuales'),(9,2,NULL,'Tareas previas y posteriores a cada tema'),(10,2,NULL,'Ejercicios en sesiones de práctica.'),(11,2,NULL,'Evaluación de conceptos formales en exámenes parciales'),(12,2,NULL,'Evaluación de la capacidad de síntesis e integración del conocimiento mediante exámenes\nparciales'),(13,3,NULL,'Se sugiere iniciar la clase con una motivación para posteriormente exponer el tema y realizar múltiples ejercicios de ejemplo, tanto por parte del alumno como del profesor.'),(14,3,NULL,'Se sugiere la realización de una práctica por semana en las cuales el alumno deba implementar algoritmos simples, como búsquedas, métodos numéricos, estadísticas, etc. Se sugiere también desarrollar un proyecto final en el que se ataque un problema específico.');
/*!40000 ALTER TABLE `EstrategiaEnsenanza` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Evaluacion`
--

LOCK TABLES `Evaluacion` WRITE;
/*!40000 ALTER TABLE `Evaluacion` DISABLE KEYS */;
INSERT INTO `Evaluacion` VALUES (1,1,NULL,'Primer examen parcial','1','15%','Unidad 1'),(2,1,NULL,'Segundo examen parcial','1','15%','Unidad 2'),(3,1,NULL,'Tercer examen parcial','1','15%','Unidad 3'),(4,1,NULL,'Cuarto examen parcial','1','15%','Unidad 4'),(5,1,NULL,'Quinto examen parcial','1','15%','Unidad 5'),(6,1,NULL,'Tareas, asistencia y participación en clase','','10%',NULL),(7,1,NULL,'Examen ordinario','1','15%','Unidades 1-5'),(8,1,NULL,'Total',NULL,'100%',NULL),(9,2,NULL,'Primer examen parcial','1','12%','Unidad 1'),(10,2,NULL,'Segundo examen parcial','1','12%','Unidad 2'),(11,2,NULL,'Tercer examen parcial','1','12%','Unidad 3'),(12,2,NULL,'Cuarto examen parcial','1','12%','Unidad 4'),(13,2,NULL,'Quinto examen parcial','1','12%','Unidad 5'),(14,2,NULL,'Sexto examen parcial','1','12%','Unidad 6'),(15,2,NULL,'Examen ordinario','1','28%','Unidades 1-6'),(16,2,NULL,'Total','','100%',''),(17,3,NULL,'Primer examen parcial (teórico-práctico)','1','15%','Unidades 1 y 2'),(18,3,NULL,'Segundo examen parcial (teórico-práctico)','1','15%','Unidad 3'),(19,3,NULL,'Tercer examen parcial (teórico-práctico)','1','15%','Unidad 4'),(20,3,NULL,'Cuarto examen parcial (teórico-práctico','1','15%','Unidad 5 y 6'),(21,3,NULL,'Proyecto final con evaluación oral','1','30%','Unidades 1-6'),(22,3,NULL,'Tareas, asistencia y participación en clase','','10%',''),(23,3,NULL,'TOTAL','','100%','');
/*!40000 ALTER TABLE `Evaluacion` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Facultad`
--

LOCK TABLES `Facultad` WRITE;
/*!40000 ALTER TABLE `Facultad` DISABLE KEYS */;
INSERT INTO `Facultad` VALUES (1,'Facultad de Ciencias','Zona Universitaria','Lateral Av. Salvador Nava s/n. Col. Lomas. CP. 78290​​ San Luis Potosí, S. L. P. México.','52 444 8262491 ext. 2932'),(2,'Facultad de Ciencias de la Información','Zona Oriente','Av. Industrias # 101, Fracc. Talleres, C.P. 78494, San Luis Potosí, S.L.P., México','52 444 8321000​​​​​​​​​​​​​​​​​​​​​​');
/*!40000 ALTER TABLE `Facultad` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `Lectura`
--

LOCK TABLES `Lectura` WRITE;
/*!40000 ALTER TABLE `Lectura` DISABLE KEYS */;
/*!40000 ALTER TABLE `Lectura` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Licenciatura`
--

LOCK TABLES `Licenciatura` WRITE;
/*!40000 ALTER TABLE `Licenciatura` DISABLE KEYS */;
INSERT INTO `Licenciatura` VALUES (1,1,'Licenciatura en Matemática Educativa',NULL,9),(2,2,'Licenciatura en Gestión de la Información',NULL,8);
/*!40000 ALTER TABLE `Licenciatura` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LineaConocimiento`
--

LOCK TABLES `LineaConocimiento` WRITE;
/*!40000 ALTER TABLE `LineaConocimiento` DISABLE KEYS */;
INSERT INTO `LineaConocimiento` VALUES (13,'Álgebra',NULL,1),(14,'Cálculo',NULL,1),(15,'Física',NULL,1),(16,'Geometría',NULL,1),(17,'Matemáticas Aplicadas',NULL,1),(18,'Investigación',NULL,1),(19,'Metodología y Práctica Docente',NULL,1),(20,'Teoría Educativa',NULL,1),(21,'Tecnología',NULL,1),(22,'Integración',NULL,1),(23,'Tecnologías de la Información',NULL,2);
/*!40000 ALTER TABLE `LineaConocimiento` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Materia`
--

LOCK TABLES `Materia` WRITE;
/*!40000 ALTER TABLE `Materia` DISABLE KEYS */;
INSERT INTO `Materia` VALUES (6,1,'Álgebra Matricial',NULL,13),(7,1,'Cálculo Multivariado',NULL,14),(8,1,'Introducción a la Computación',NULL,21),(9,1,'Probabilidad y Estadística',NULL,17),(10,1,'Taller de integración de conocimientos I (proceso de Enseñanza - Aprendizaje)',NULL,22),(11,2,'Diseño de Bases de Datos',NULL,23);
/*!40000 ALTER TABLE `Materia` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `ModifAprobada`
--

LOCK TABLES `ModifAprobada` WRITE;
/*!40000 ALTER TABLE `ModifAprobada` DISABLE KEYS */;
/*!40000 ALTER TABLE `ModifAprobada` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `ModifRechazada`
--

LOCK TABLES `ModifRechazada` WRITE;
/*!40000 ALTER TABLE `ModifRechazada` DISABLE KEYS */;
/*!40000 ALTER TABLE `ModifRechazada` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `ModifRespuesta`
--

LOCK TABLES `ModifRespuesta` WRITE;
/*!40000 ALTER TABLE `ModifRespuesta` DISABLE KEYS */;
/*!40000 ALTER TABLE `ModifRespuesta` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Modificacion`
--

LOCK TABLES `Modificacion` WRITE;
/*!40000 ALTER TABLE `Modificacion` DISABLE KEYS */;
INSERT INTO `Modificacion` VALUES (1,1,'<p>\r\n	Aqu&iacute; va diferente la modificaci&oacute;n</p>\r\n','<p>\r\n	Aqu&iacute; deber&iacute;a d eir otra cosa</p>\r\n',2,1,1,1,'2017-10-02','20:45:22'),(2,1,'asd','asd',2,1,2,1,'2017-10-03','01:55:13'),(3,1,'Nueva Sugerencia de Modificación al programa','De acuerdo a todo lo revisado',4,1,2,1,'2017-11-03','01:35:34');
/*!40000 ALTER TABLE `Modificacion` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NivelUsuario`
--

LOCK TABLES `NivelUsuario` WRITE;
/*!40000 ALTER TABLE `NivelUsuario` DISABLE KEYS */;
INSERT INTO `NivelUsuario` VALUES (1,'Visitante','Solo puede visualizar los contenidos'),(2,'Revisor','Revisa los programas y sugiere modificaciones'),(3,'Supervisor','Revisa programas, sugiere, aprueba y rechaza modificaciones'),(4,'Administrador','Realiza modificaciones de contenidos con mayor libertad'),(5,'Super Administrador','Control casi total sobre el sistema');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProgAcademicoCompProf`
--

LOCK TABLES `ProgAcademicoCompProf` WRITE;
/*!40000 ALTER TABLE `ProgAcademicoCompProf` DISABLE KEYS */;
INSERT INTO `ProgAcademicoCompProf` VALUES (17,1,2,0),(18,1,1,1);
/*!40000 ALTER TABLE `ProgAcademicoCompProf` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProgAcademicoCompTransv`
--

LOCK TABLES `ProgAcademicoCompTransv` WRITE;
/*!40000 ALTER TABLE `ProgAcademicoCompTransv` DISABLE KEYS */;
INSERT INTO `ProgAcademicoCompTransv` VALUES (10,7,1,1),(12,2,1,2),(13,4,1,0);
/*!40000 ALTER TABLE `ProgAcademicoCompTransv` ENABLE KEYS */;
UNLOCK TABLES;

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
  `TipoMateriaId` int(10) unsigned NOT NULL COMMENT 'Tipo de materia que es. Optativa, obligatoria etc.',
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProgramaAcademico`
--

LOCK TABLES `ProgramaAcademico` WRITE;
/*!40000 ALTER TABLE `ProgramaAcademico` DISABLE KEYS */;
INSERT INTO `ProgramaAcademico` VALUES (1,6,3,4,1,3,8,'<p>\r\n	- Resolver sistemas de ecuaciones lineales utilizando las t&eacute;cnicas m&aacute;s comunes.</p>\r\n<p>\r\n	- Que sea capaz de operar con matrices y conozca sus principales propiedades. Que conozca las bases del &aacute;lgebra lineal y las propiedades de los vectores en Rn.</p>\r\n',1,3,0,0,'2017-06-08'),(2,7,3,4,1,3,8,'<p>\r\n	- Utilizar los conceptos b&aacute;sicos del C&aacute;lculo Diferencial e Integral a funciones de varias variables. - Plantear y solucionar problemas de matem&aacute;ticas, f&iacute;sica e ingenier&iacute;a.</p>\r\n',1,3,0,0,'2017-08-16'),(3,8,3,3,2,3,8,'<p>\r\n	- Estudiar y aplicar los conceptos b&aacute;sicos de programaci&oacute;n estructurada en un lenguaje de alto nivel. - Dise&ntilde;ar, implementar, y depurar algoritmos sencillos en lenguaje C/C++.</p>\r\n',1,3,0,0,'2017-01-01');
/*!40000 ALTER TABLE `ProgramaAcademico` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `Seriada`
--

LOCK TABLES `Seriada` WRITE;
/*!40000 ALTER TABLE `Seriada` DISABLE KEYS */;
/*!40000 ALTER TABLE `Seriada` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Subtema`
--

LOCK TABLES `Subtema` WRITE;
/*!40000 ALTER TABLE `Subtema` DISABLE KEYS */;
INSERT INTO `Subtema` VALUES (1,1,1,'Definición de matriz y notación.'),(2,1,0,'b) Vectores y escalares.'),(3,1,0,'c) Operaciones con matrices.'),(4,1,0,'d) Propiedades de las operaciones matriciales.'),(5,1,0,'e) Matriz transpuesta y conjugada.'),(6,1,0,'f) Matriz inversa y sus propiedades.'),(7,2,0,'a) Introducción a los sistemas lineales.'),(8,2,0,'b) Sistemas de dos ecuaciones.'),(9,2,0,'c) Sistemas de n ecuaciones.'),(10,2,0,'d) Representación matricial de un sistema de ecuaciones lineales.'),(11,2,0,'e) Forma reducida y forma escalonada de una matriz.'),(12,2,0,'f) Operaciones y matrices elementales.'),(13,2,0,'g) Eliminación de Gauss.'),(14,2,0,'h) Método de Gauss-Jordan.'),(15,2,0,'i) Sistemas homogéneos de ecuaciones lineales.'),(16,2,0,'j) Obtención de la inversa de una matriz.'),(17,2,0,'k) Factorización LU y LUP.'),(18,3,0,'a) Definición de función determinante.'),(19,3,0,'b) Cálculo de determinantes y propiedades.'),(20,3,0,'c) Cofactores y obtención del determinante mediante cofactores.'),(21,4,0,'a) Matriz inversa por medio de la matriz adjunta.'),(22,4,0,'b) Regla de Crammer.'),(23,5,0,'a) Definición de vectores.'),(24,5,0,'b) Representación geométrica.'),(25,5,0,'c) Definición de adición de vectores y multiplicación por escalar. Interpretación geométrica.'),(26,5,0,'d) Combinación lineal.'),(27,5,0,'e) Producto interior.'),(28,5,0,'f) Desigualdad de Schwartz y desigualdad del triángulo.'),(29,5,0,'g) Norma de un vector.'),(30,5,0,'h) Angulo entre vectores.'),(31,5,0,'i) Proyección de vectores y aplicaciones.'),(32,5,0,'j) Producto vectorial en R3.'),(33,6,0,'a) Ecuaciones vectoriales y paramétricas de rectas en R3.'),(34,6,0,'b) Ecuaciones de planos.'),(35,6,0,'c) Independencia lineal.'),(36,6,0,'d) Matrices ortogonales.'),(37,7,0,'a) Vectores en R^n'),(38,7,0,'b) Igualdad de vectores.'),(39,7,0,'c) Adición de vectores y multiplicación por un escalar.'),(40,7,0,'d) Propiedades de las operaciones.'),(41,7,0,'e) Combinaciones lineales, independencia y dependencia lineal.'),(42,7,0,'f) Producto interior. Producto interior Euclidiano.'),(43,8,0,'a) Espacios Euclidianos de dimensión –n.'),(44,8,0,'b) Norma de un vector.'),(45,8,0,'c) Distancia entre vectores.'),(46,8,0,'d) Ángulo entre vectores.'),(47,8,0,'e) Conjuntos ortonormales.'),(48,8,0,'f) Proceso Gram-Schmidt.'),(49,9,0,'a) Valores y vectores característicos de una matriz cuadrada.'),(50,9,0,'b) Diagonalización.'),(51,9,0,'c) Diagonalización ortogonal.'),(52,57,0,'a) Estructura básica de un programa en C++.'),(53,57,0,'b) Salida a consola mediante cout.'),(54,57,0,'c) Compilación y ejecución de un programa.'),(55,57,0,'d) Errores de compilación vs errores de ejecución.'),(56,57,0,'e) Buenas prácticas de programación: Comentarios.'),(57,58,0,'a) Concepto de variable.'),(58,58,0,'b) Asignación de valores.'),(59,58,0,'c) Tipos de variables numéricas.'),(60,58,0,'d) Expresiones aritméticas.'),(61,58,0,'e) Jerarquía de operadores.'),(62,58,0,'f) Entrada de datos mediante cin.'),(63,58,0,'g) Buenas prácticas de programación: Nombres representativos.'),(64,58,0,'h) Programas de ejemplo.'),(65,59,0,'a) Estructura de la memoria.'),(66,59,0,'b) Almacenamiento de variables en la memoria.'),(67,59,0,'c) Operador de referenciación &.'),(68,59,0,'d) Apuntadores y operador de dereferenciación *.'),(69,59,0,'e) Aritmética de apuntadores.'),(70,59,0,'f) Programas de ejemplo.'),(71,60,0,'a) Valores de verdad en C/C++.'),(72,60,0,'b) Operadores de comparación.'),(73,60,0,'c) Operadores booleanos.'),(74,60,0,'d) Tipo de datos bool.'),(75,61,0,'a) Instrucción if.'),(76,61,0,'b) Instrucción if...else.'),(77,61,0,'c) Instrucciones if...else anidadas.'),(78,61,0,'d) Instrucción switch.'),(79,61,0,'e) Anidación de estructuras de decisión.'),(80,61,0,'f) Buenas prácticas de programación: Indentación.'),(81,61,0,'g) Programas de ejemplo.'),(82,62,0,'a) Motivación para el uso de ciclos.'),(83,62,0,'b) Instrucción while.'),(84,62,0,'c) Ciclos anidados.'),(85,62,0,'d) Ciclos infinitos.'),(86,62,0,'e) Instrucción do...while.'),(87,62,0,'f) Instrucción for.'),(88,62,0,'g) Anidación de estructuras de decisión e iteración.'),(89,62,0,'h) Terminación abrupta de ciclos: break y continue.'),(90,62,0,'i) Ejemplos de aplicaciones.'),(91,63,0,'a) Ejemplos de funciones de librería: la librería math.h.'),(92,63,0,'b) Estructura de una función.'),(93,63,0,'c) Definición de funciones y paso de parámetros por valor.'),(94,63,0,'d) Paso de parámetros por apuntador.'),(95,63,0,'e) Paso de parámetros por referencia.'),(96,64,0,'a) Llamada a una función desde otra función.'),(97,64,0,'b) Funciones recursivas simples.'),(98,64,0,'c) Introducción a la programación estructurada.'),(99,64,0,'d) Diseño top-down: divide y vencerás.'),(100,64,0,'e) Buenas prácticas de programación: Hasta dónde dividir?'),(101,64,0,'f) Programas de ejemplo: métodos numéricos.'),(102,65,0,'a) Motivación.'),(103,65,0,'b) Archivo de encabezado.'),(104,65,0,'c) Archivo de implementación.'),(105,65,0,'d) Buenas prácticas de programación: Nomenclatura de funciones de librería.'),(106,66,0,'a) Motivación.'),(107,66,0,'b) Declaración de un arreglo.'),(108,66,0,'c) Acceso a los elementos de un arreglo.'),(109,66,0,'d) Recorrido de un arreglo mediante ciclos.'),(110,66,0,'e) Almacenamiento en memoria: relación entre arreglos y apuntadores.'),(111,66,0,'f) Ejemplos de aplicaciones: ordenamiento, histogramas, señales.'),(112,66,0,'g) Arreglos bidimensionales y multidimensionales.'),(113,66,0,'h) Ejemplos: manejo de matrices.'),(114,67,0,'a) Cadenas de caracteres.'),(115,67,0,'b) Longitud de una cadena.'),(116,67,0,'c) Concatenación de cadenas.'),(117,67,0,'d) Manejo de cadenas: librería string.h.'),(118,68,0,'a) Motivación.'),(119,68,0,'b) Asignación dinámica de memoria para una variable: operador new.'),(120,68,0,'c) Liberación de memoria: operador delete.'),(121,68,0,'d) Asignación dinámica de memoria para un arreglo.'),(122,68,0,'e) Liberación de memoria asignada a un arreglo.'),(123,68,0,'f) Consideraciones para el manejo dinámico de memoria.');
/*!40000 ALTER TABLE `Subtema` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tema`
--

LOCK TABLES `Tema` WRITE;
/*!40000 ALTER TABLE `Tema` DISABLE KEYS */;
INSERT INTO `Tema` VALUES (1,1,0,'1.1 Álgebra de matrices',10),(2,1,0,'1.2 Sistemas de ecuaciones lineales',15),(3,2,0,'2.1 Definición y propiedades de los determinantes',5),(4,2,0,'2.2 Aplicaciones de los determinantes',5),(5,3,0,'3.1 Definición, operaciones, y propiedades de los vectores',13),(6,3,0,'3.2 Ecuaciones vectoriales',10),(7,4,0,'4.1 Operaciones y propiedades de los vectores en R^n',8),(8,4,0,'4.2 Espacios euclidianos de dimensión n',7),(9,5,0,'5.1 Vectores y valores característicos',7),(10,6,0,'1.1 Gráficas de ecuaciones y funciones.',2),(11,6,0,'1.2 Cálculo con curvas paramétricas.',2),(12,6,0,'1.3 Coordenadas polares.',2),(13,6,0,'1.4 Áreas y longitudes en coordenadas polares.',2),(14,6,0,'1.5 Secciones cónicas.',2),(15,6,0,'1.6 Secciones cónicas en coordenadas polares.',2),(16,7,0,'2.1 Sucesiones.',2),(17,7,0,'2.2 Series.',2),(18,7,0,'2.3 La prueba de la integral y estimaciones de sumas.',2),(19,7,0,'2.4 Pruebas por comparación.',1),(20,7,0,'2.5 Series alternantes.',1),(21,7,0,'2.6 Convergencia absoluta y las pruebas de la razón y la raíz.',1),(22,7,0,'2.7 Estrategias para probar series.',2),(23,7,0,'2.8 Series de potencias.',1),(24,7,0,'2.9 Representaciones de las funciones como series de potencias.',1),(25,7,0,'2.10 Series de Taylor y Maclaurin.',2),(26,7,0,'2.11 Polinomios de Taylor.',2),(27,8,0,'3.1 1 Funciones vectoriales y curvas en el espacio.',2),(28,8,0,'3.2 Derivadas e integrales de funciones vectoriales.',2),(29,8,0,'3.3 Longitud de arco y curva.',2),(30,8,0,'3.4 Velocidad y aceleración.',2),(31,9,0,'4.1 Funciones de varias variables.',2),(32,9,0,'4.2 Límites y continuidad.',2),(33,9,0,'4.3 Derivadas parciales.',2),(34,9,0,'4.4 Planos tangentes y aproximaciones lineales.',2),(35,9,0,'4.5 Regla de la cadena.',2),(36,9,0,'4.6 Derivadas direccionales y su vector gradiente.',2),(37,9,0,'4.7 Máximos y mínimos.',2),(38,9,0,'4.8 Multiplicadores de Lagrange.',2),(39,10,0,'5.1 Integrales dobles sobre rectángulos.',1),(40,10,0,'5.2 Integrales iteradas.',1),(41,10,0,'5.3 Integrales dobles sobre regiones generales.',2),(42,10,0,'5.4 Integrales dobles en coordenadas polares.',2),(43,10,0,'5.5 Aplicaciones de las integrales dobles.',2),(44,10,0,'5.6 Integrales triples.',1),(45,10,0,'5.7 Integrales triples en coordenadas polares.',2),(46,10,0,'5.8 Integrales triples en coordenadas esféricas.',2),(47,10,0,'5.9 Cambio de variable en integrales múltiples.',1),(48,11,0,'6.1 Campos vectoriales.',2),(49,11,0,'6.2 Integrales de línea.',2),(50,11,0,'6.3 Teorema fundamental de las integrales en línea.',2),(51,11,0,'6.4 Teorema de Green.',1),(52,11,0,'6.5 Rotacional y divergencia.',1),(53,11,0,'6.6 Superficies paramétricas y sus áreas.',1),(54,11,0,'6.7 Integrales de superficie.',1),(55,11,0,'6.8 Teorema de Stokes.',2),(56,11,0,'6.9 Teorema de divergencia.',2),(57,24,0,'1.1 Estructura, compilación, y ejecución de un programa en C++',3),(58,24,0,'1.2 Variables y expresiones',4),(59,24,0,'1.3 Memoria y apuntadores',3),(60,25,0,'2.1 Expresiones booleanas',2),(61,25,0,'2.2 Estructuras de decisión',8),(62,26,0,'3.1 Estructuras de iteración',12),(63,27,0,'4.1 Definición de funciones',6),(64,27,0,'4.2 Programación estructurada',6),(65,27,0,'4.3 Creación de librerías',2),(66,28,0,'5.1 Arreglos',9),(67,28,0,'5.2 Cadenas de caracteres',3),(68,29,0,'6.1 Manejo dinámico de memoria',6);
/*!40000 ALTER TABLE `Tema` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TipoMateria`
--

LOCK TABLES `TipoMateria` WRITE;
/*!40000 ALTER TABLE `TipoMateria` DISABLE KEYS */;
INSERT INTO `TipoMateria` VALUES (1,'Obligatoria'),(2,'Optativa'),(3,'Otra');
/*!40000 ALTER TABLE `TipoMateria` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TipoPropuestaCurricular`
--

LOCK TABLES `TipoPropuestaCurricular` WRITE;
/*!40000 ALTER TABLE `TipoPropuestaCurricular` DISABLE KEYS */;
INSERT INTO `TipoPropuestaCurricular` VALUES (1,'Nueva Creación'),(2,'Reestructuración'),(3,'Ajuste');
/*!40000 ALTER TABLE `TipoPropuestaCurricular` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TipoUsuario`
--

LOCK TABLES `TipoUsuario` WRITE;
/*!40000 ALTER TABLE `TipoUsuario` DISABLE KEYS */;
INSERT INTO `TipoUsuario` VALUES (1,'Profesor Tiempo Completo'),(2,'Profesor Hora Clase'),(3,'Administrativo'),(4,'Técnico del Sistema'),(5,'Otro');
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Unidad`
--

LOCK TABLES `Unidad` WRITE;
/*!40000 ALTER TABLE `Unidad` DISABLE KEYS */;
INSERT INTO `Unidad` VALUES (1,1,1,'Sistemas de ecuaciones lineales y matrices',25,'<p>\r\n	- Aprender los m&eacute;todos de reducci&oacute;n para la soluci&oacute;n de sistemas de ecuaciones lineales y algunas de sus propiedades. - Introducir el estudio b&aacute;sico de matrices y sus propiedades algebraicas.</p>\r\n'),(2,1,2,'Determinantes',10,'<p>\r\n	- Aprender a obtener el determinante de una matriz cuadrada. - Que conozca sus propiedades y aplicaciones en la soluci&oacute;n de sistema de ecuaciones lineales.</p>\r\n'),(3,1,3,'Vectores en R2 y en R3',23,'<p>\r\n	- Aprender los conceptos de plano, espacio y vectores en R2 y R3. - Realizar operaciones algebraicas con vectores y conozca las distintas ecuaciones de la recta y planos en R3.</p>\r\n'),(4,1,0,'4. Vectores en Rn',15,'- Introducir al estudiante una idea intuitiva de espacios vectoriales por medio del estudio de espacios Euclidianos.\n- Reconocer el producto interior como la estructura que permite definir conceptos de longitud, distancia y ángulos entre vectores.'),(5,1,0,'5. Vectores y valores característicos',7,'- Aprenda los medios adecuados para encontrar valores y vectores característicos de matrices.\n- Aplicar el proceso de diagonalización.'),(6,2,1,'Ecuaciones Paramétricas y Coordenadas Polares',12,'<p>\r\n	Establecer funciones por medio de ecuaciones param&eacute;tricas y coordenadas polares.</p>\r\n'),(7,2,0,'2. Sucesiones y Series Infinitas',16,'Aprender los conceptos de sucesiones y series, así como sus características. Además el alumno estudiará algunas series importantes como las de Taylor y Maclaurin.'),(8,2,0,'3. Funciones Vectoriales',8,'Estudiar y entender las funciones vectoriales y algunas aplicaciones en Física.'),(9,2,0,'4. Derivadas Parciales',16,'Estudiar y entender las funciones de varias variables, así como los conceptos de derivadas parciales y sus aplicaciones en máximos y mínimos.'),(10,2,0,'5. Integrales Múltiples',14,'Asimilar el concepto de Integrales Múltiples y su relación con el cálculo de volúmenes, masas y centroides en coordenadas cartesianas, polares y cilíndricas.'),(11,2,0,'6. Cálculo Vectorial',14,'Estudiar y entender los conceptos de Cálculo a funciones que asignan vectores a puntos en el espacio.'),(24,3,0,'1. Conceptos básicos de programación en C++ ',10,'- Comprender la estructura básica de un programa en lenguaje C/C++.\n- Compilar y ejecutar un programa sencillo.\n- Implementar fórmulas matemáticas.\n- Leer datos numéricos desde el teclado.\n- Presentar resultados en la pantalla.\n- Comprender el concepto de variable y la manera en que se almacenan en memoria, así como el manejo básico de apuntadores.'),(25,3,0,'2. Estructuras de decisión',10,'- Conocer y dominar las estructuras de decisión y las expresiones booleanas.\n- Elaborar programas donde se requieran bifurcaciones.'),(26,3,0,'3. Estructuras de iteración',12,'- Conocer y dominar las estructuras de iteración.\n- Elaborar programas tomando ventaja de los ciclos sencillos y anidados.\n- Reconocer las condiciones de inicio, parada, y terminación prematura de un ciclo.'),(27,3,0,'4. Funciones y programación estructurada',14,'- Estructurar un programa mediante diseño descendente (divide y vencerás) basado en funciones.\n- Definir funciones que acepten parámetros por valor o referencia, y que devuelvan resultados.'),(28,3,0,'5. Arreglos',12,'- Conocer el concepto de arreglo de variables.\n- Definir arreglos y acceder arbitrariamente a sus elementos, así como implementar diversos algoritmos que los requieran.\n- Comprender y tomar ventaja de la relación entre arreglos y apuntadores.\n- Manejar cadenas de caracteres.'),(29,3,0,'6. Introducción al manejo dinámico de memoria.',6,'- Conocer los mecanismos para la asignación dinámica de memoria, tanto para variables sencillas como para arreglos.\n- Implementar programas con grandes requerimientos de memoria, y de administrar la memoria de manera adecuada.');
/*!40000 ALTER TABLE `Unidad` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuario`
--

LOCK TABLES `Usuario` WRITE;
/*!40000 ALTER TABLE `Usuario` DISABLE KEYS */;
INSERT INTO `Usuario` VALUES (1,'admin','5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5','','admin@gmail.com',5,4,'Administrador','del Sistema',NULL,NULL),(2,'isnardo','df6033d64c7cd688b11fa3f7b29f245c7e5fda73d0b8f04c1367783c614cde85','.png','isnardo.reducindo@uaslp.mx',5,1,'Isnardo','Reducindo Ruiz',2,2),(3,'rita','dd0bfb9b4b35922e3975acf069fb9b0a379c109f7057a8801302ddd3a7304877',NULL,'rodriguezcenobia@gmail.com',4,1,'Rita','Angulo Villanueva',1,1),(4,'revisor','88d4266fd4e6338d13b845fcf289579d209c897823b9217da3e161936f031589','','revisor@corre.com',2,5,'Revisor','de Programas',NULL,NULL);
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

-- Dump completed on 2017-11-24 23:10:59
