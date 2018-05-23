-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 23, 2018 at 04:54 PM
-- Server version: 5.5.56-MariaDB
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `programas`
--

-- --------------------------------------------------------

--
-- Table structure for table `Apartado`
--

CREATE TABLE IF NOT EXISTS `Apartado` (
  `ApartadoId` int(10) unsigned NOT NULL,
  `ApartadoLetra` char(1) NOT NULL,
  `ApartadoNombre` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Apartado`
--

INSERT INTO `Apartado` (`ApartadoId`, `ApartadoLetra`, `ApartadoNombre`) VALUES
(1, 'A', 'Nombre del curso'),
(2, 'B', 'Datos básicos'),
(3, 'C', 'Objetivos del curso'),
(4, 'D', 'Contenidos y métodos'),
(5, 'E', 'Estrategias de enseñanza y aprendizaje'),
(6, 'F', 'Evaluación y acreditación'),
(7, 'G', 'Bibliografía y recursos informáticos');

-- --------------------------------------------------------

--
-- Table structure for table `Bibliografia`
--

CREATE TABLE IF NOT EXISTS `Bibliografia` (
  `BibliografiaId` int(10) unsigned NOT NULL,
  `ProgAcademicoId` int(10) unsigned NOT NULL,
  `BiblioTipoId` int(10) unsigned NOT NULL,
  `BibliografiaNombre` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Bibliografia`
--

INSERT INTO `Bibliografia` (`BibliografiaId`, `ProgAcademicoId`, `BiblioTipoId`, `BibliografiaNombre`) VALUES
(1, 1, 1, 'Introducción al Algebra Lineal. Howard Anton. Editorial Limusa, 2008.'),
(2, 1, 1, 'Cálculo de Varias Variables con Álgebra Lineal. Philip C. Curtis Jr. Editorial Limusa, 1997.'),
(3, 1, 1, 'Fundamentos del Álgebra Lineal y Aplicaciones. Francis G. Florey. Editorial Prentice Hall Internacional, 1979.'),
(4, 1, 1, 'Algebra Lineal. Stanley I. Grossman. Editorial Iberoamerica, 2008.'),
(5, 1, 1, 'Algebra Lineal y sus Aplicaciones, Gilbert Strang, Ed. Thomson, 4ª. Edición, 2007.'),
(6, 1, 1, 'Algebra Lineal Aplicada. Ben Noble, James W. Daniel. Prentice Hall, 1990.'),
(7, 1, 2, 'Página web de Octave http://www.gnu.org/software/octave/ y http://octave.sourceforge.net/'),
(8, 1, 2, 'Página web de Scilab http://www.scilab.org/'),
(9, 1, 2, 'Página web de Maxima http://maxima.sourceforge.net/'),
(10, 4, 1, 'Cálculo, James Stewart, Sexta Edición, Cengage Learning.'),
(11, 4, 1, 'Calculo, Larson/Hostetler/Edwards, Séptima Edicion, Mc Graw Hill.'),
(12, 4, 1, 'Cálculo con Geometría Analítica, Edwin J. Purcell Dale Varberg, VI Edición, Mc Graw Hill.'),
(13, 5, 1, 'C++ Como Programar. Deitel y Deitel. Prentice Hall, 2ª Edición, 1999.'),
(14, 5, 1, 'El Lenguaje de Programación C, Brian Kernighan, Dennis Ritchie, Ed. Prentice Hall, 2ª Edición, 1991.'),
(15, 5, 1, 'Métodos Numéricos para Ingenieros. S.C. Chapra, R.P. Canale. Ed. Mc Graw-Hill, 5ª Edición, 2007'),
(16, 5, 2, 'MINGW, Compilador GNU de C++ para Windows, http://www.mingw.org'),
(17, 5, 2, 'CODE::BLOCKS, Entorno de desarrollo multiplataforma para C++ de libre distribución, http://www.codeblocks.org'),
(18, 6, 1, 'Bulman, A. Elementary Statistics: a Step by Step Approach (4th Ed.), McGraw Hill, 2000.'),
(19, 6, 1, 'Freund, J. Modern elementary Statistics. Prentice Hall,2000'),
(20, 6, 1, 'Triola, M Elementary Statistics (8ª Ed.) Addison Wesley, Longman, 2000.'),
(21, 6, 1, 'Bernstein, S and Bernstein, R. Schaum´s outline of Theory and problems of Elements of Statistics I: Descriptive Statictics and Probability. McGraw Hill, 1998.'),
(22, 6, 1, 'Chung, K. A course in probability Theory. Academic Press, 2000.'),
(23, 7, 1, 'Didáctica de las Matemáticas. A. Orton. Ediciones Morata.'),
(24, 7, 1, 'Condiciones didácticas para un espacio de articulación entre prácticas aritméticas y prácticas algebraicas. Tesis doctoral. Capítulo 1 Marco didáctico general. La teoría de situaciones. Patricia Sadovsky. Universidad de Buenos Aires.'),
(25, 7, 1, 'Pensamiento y Lenguaje. Lev Vygotsky. Editorial Paidós.'),
(26, 8, 1, 'Dennis G. Zill, “Ecuaciones diferenciales con aplicaciones de modelado”, Thomson, 2007'),
(27, 8, 1, 'George F. Simmons, “Ecuaciones diferenciales con aplicaciones y notas históricas”, Mc Graw Hill.'),
(28, 8, 1, 'Ayres Jr., “Ecuaciones Diferenciales”, Serie Schaum.'),
(29, 9, 1, 'Cálculo Superior, Creighton Buck, McGraw-Hill.'),
(30, 9, 1, 'Elementary classical analysis, Jerrold E. Masden, W. H. Freeman and Company.'),
(31, 11, 1, 'Corrientes didácticas contemporáneas, Camilloni et al, PAIDOS, ISBN: 9789501261134.'),
(32, 11, 1, 'Corrientes didácticas contemporáneas, Litwin Edith, Pidós, ISBN: 9789501261134.'),
(33, 12, 1, 'Vygotsky y la formación social de la mente. James Werstch. Ed. Paidós'),
(34, 12, 1, 'Háganlo Juntos. T. Ericksson. Universidad de Berkeley, CA.'),
(35, 12, 1, 'El desarrollo de los procesos superiores. Lev Vygotsky. Editorial Paidós.'),
(36, 12, 1, 'Instrumentos psicológicos. A. Kozulin. Ed. PaIdós'),
(37, 13, 1, 'Grimaldi, R., Matemáticas discreta y combinatoria. Addison-Wesley Iberoamericana, tercera edición, 2003.'),
(38, 13, 1, 'Rosen, K.: Matemática discreta y sus aplicaciones. McGraw-Hill Interamericana, 2004.'),
(39, 13, 1, 'BIGGS, N.: Discrete Mathematics, segunda edición. Oxford University, 2002.'),
(40, 13, 1, 'Johnsonbaugh R., Matemáticas discretas, Pearson Prentice hall, 2005.'),
(41, 13, 1, 'EPP, Susana S., Matemáticas Discretas con Aplicaciones, Cengage Learning, 2012.'),
(42, 14, 1, 'J. D. Ward, Complex Variables and Applications (McGraw Hill, 2008).'),
(43, 14, 1, 'G. E. Edwards, R. Askey and R. Roy, Special Functions (Encyclopedia of Mathematics and its Applications Vol. 71) (Cambridge University Press, 2001).'),
(44, 14, 1, 'B. Davies, Integral Transforms and Their Applications (Texts in Applied Mathematics) (Springer, 2010).'),
(45, 14, 1, 'M. J. Ablowitz and A. S. Fokas, Complex Variables: Introduction and Applications (Cambridge Texts in Applied Mathematics) (Cambridge University Press, 2003).'),
(46, 14, 1, 'G. B. Arfken, H. J. Weber and F. E. Harris, Mathematical Methods for Physicists, Sixth Edition: A Comprehensive Guide (Academic Press, 2005).'),
(47, 15, 1, 'G. Vergnaud, Epistemología y psicología de la educación matemática, en Mathematics and cognition, P. Nesher and J. Kilpatrick, eds. (Cambridge University Press, 1990).'),
(48, 15, 1, 'Gutiérrez, Área de conocimiento: Didáctica de las Matemáticas (Síntesis, 1991).'),
(49, 15, 1, 'I. Lakatos, J. Worral and G. Currie, Mathematics, Science and Epistemology: Volume 2, Philosophical Papers (Philosophical Papers (Cambridge)) (Cambridge University Press, 1980).'),
(50, 15, 1, 'P. Ernest, Constructing Mathematical Knowledge: Epistemology and Mathematics Education (Studies in Mathematics Education) (Routledge, 1996).'),
(51, 15, 1, 'Introduction to difference equations, Goldberg, Samuel John Wiley and sons, 1958.'),
(52, 16, 1, 'Gagné, R. M. (1975). Principios básicos del aprendizaje para la instrucción. México: Diana'),
(53, 16, 1, 'Hulse, S. H., Egeth, H. & Deese, J. (1999). Psicología del aprendizaje. México: McGraw Hill'),
(54, 16, 1, 'Lindsay, P. H. y Norman, D. A. (1975). Procesamiento de información humana. Una introducción a la psicología. Madrid: Tecnos'),
(55, 16, 1, 'Piaget, J. (1978). Problemas de psicología genética. Barcelona: Ariel'),
(56, 16, 1, 'Pérez Gómez, A. (1992). Los procesos de enseñanza-aprendizaje: análisis didáctico de las principales teorías. En: Gimeno Sacristán, J. y Pérez Gómez, A. Comprender y transformar la enseñanza. Madrid: Morata'),
(57, 16, 1, 'Skinner, B. F. (1970). Ciencia y conducta humana. Barcelona: Fontanella'),
(58, 16, 1, 'Talizina, N. F. (2001). La formación de las habilidades del pensamiento matemático. San Luis Potosí: Facultad de Psicología. Universidad Autónoma de San Luis Potosí'),
(59, 16, 1, 'Vadillo, G. y Klingler, C. (2004). Didáctica. Teoría y práctica de éxito en Latinoamérica y España. México: McGraw Hill'),
(60, 16, 1, 'Vigotsky, L. S. (1973). Pensamiento y lenguaje. Buenos Aires: La Pléyade.'),
(61, 16, 1, 'Vigotsky, L. S. (1979). El desarrollo de los procesos psicológicos superiores. Barcelona: Grijalbo'),
(62, 17, 1, 'Matemáticas e interculturalidad. Jesus Goñi (coordinador). Ediciones Graó, 2006. ISBN(13):(978)84-7827- 464-2.'),
(63, 17, 1, 'Psicología cultural. Michael Cole. Ediciones Morata, 2003. ISBN: (978)84-7112-430-2.'),
(64, 17, 1, 'La interpretación de las culturas. Clifford Geertz. Ediciones Morata, 2003. ISBN:84-7432-090-9.'),
(65, 18, 1, 'Tremblay J.P. Manohar, R.”Discrete mathematical structures with applications to computer sciences”, Ed. McGraw Hill, 2001.'),
(66, 18, 1, 'Herstein I. N., Algebra moderna, Editoral Trillas, 2008.'),
(67, 18, 1, 'Fraleigh J.B., ”Algebra abstracta”, Ed. Addison-Wesley Iberoamericana, 1987.'),
(68, 19, 1, 'James Ward Brown, Complex Variables And Applications, Mcgraw Hill, 2004.'),
(69, 19, 1, 'William R. Derrick, Variable compleja con aplicaciones,Ed. Iberoamerica, 2002.'),
(70, 19, 1, 'Jerrold E. Marsden, Analisis Basico De Variable Compleja, Editorial Trillas, 2008.'),
(71, 20, 1, 'Nuevas tecnologías y Enseñanza de las Matemáticas. García, A., Martínez, A. y Miñano, R. Editorial Síntesis, 1995.'),
(72, 20, 1, 'Principios y estándares para la educación matemática. National Council of Teachers of Mathematics. SAEM Tales, 2004.'),
(73, 21, 1, 'Godino, J. D., Batanero, C. y Font, V. (2003). Fundamentos de la enseñanza y el aprendizaje de las matemáticas. Departamento de Didáctica de las Matemáticas. Universidad de Granada. ISBN: 84- 932510-6-2.'),
(74, 21, 1, 'Godino, J. D. (Director) (2004). Didáctica de las matemáticas para maestros. Departamento de Didáctica de las Matemáticas. Universidad de Granada. ISBN: 84-933517-1-7.'),
(75, 22, 1, 'Imbernón, Francisco. La formación y el desarrollo profesional del profesorado. Barcelona, Graó,1994.'),
(76, 22, 1, 'SCHÖN, D. (1998): El profesional reflexivo. Cómo piensan los profesionales cuando actúan. Madrid, Paidós.'),
(77, 22, 1, 'IOVANOVICH, M. (2003). La sistematización de la práctica docente en EDJA. OEI / Revista Iberoamericana de Educación.'),
(78, 22, 1, 'Flores, P. (1996). Creencias y concepciones de los futuros profesores sobre las matemáticas, su enseñanza y aprendizaje. Evolución durante las prácticas de enseñanza. UNO.'),
(79, 22, 1, 'Flores, P. & Troyano, M. (2005). Procesos de reflexión en estudiantes para profesor de matemáticas. Revista de investigación y experiencias didácticas, (23)1, 5-16.'),
(80, 23, 1, 'Palabras y mentes, cómo usamos el lenguaje para pensar juntos. Neil Mercerl. Ediciones Paidós'),
(81, 23, 1, 'El lenguaje en el aprendizaje de las matemáticas. Ediciones Morata. La construcción guiada del conocimiento. Neil Mercer. Ediciones Paidós.'),
(82, 23, 1, 'Cantoral, R., Farfán, R., Cordero, F., Alanis, J., Rodriguez, R., Garza, A. Desarrollo del pensamiento matemático. Editorial trillas.'),
(83, 24, 1, 'La formación de investigadores educativos. Raúl Rojas Soriano. Editorial Plaza y Valdés.'),
(84, 24, 1, 'La indagación. Ann Lieberman y Lynne Miller. Ediciones Octaedro.'),
(85, 24, 1, 'La investigación cualitativa en educación. Paz Sandín. Ed. McGraw Hill.'),
(86, 24, 1, 'La introducción a los métodos cualitativos y cuantitativos de investigación. S.J. Taylor. Ed. Paidós Básica.'),
(87, 24, 1, 'Metodología de la investigación. Roberto Hernández Sampieri, Carlos Fernández-Collado y Pilar Baptista Lucio. Ed. McGraw Hill.'),
(88, 25, 1, 'Godino, J. D., Batanero, C. y Font, V. (2003). Fundamentos de la enseñanza y el aprendizaje de las matemáticas. Departamento de Didáctica de las Matemáticas. Universidad de Granada. ISBN: 84-932510-6-2. [ 155 páginas; 2,6 MB] http://www.ugr.es/local/jgodi'),
(89, 25, 2, 'Godino, J. D. (Director) (2004). Didáctica de las matemáticas para maestros. Departamento de Didáctica de las Matemáticas. Universidad de Granada. ISBN: 84-933517-1-7. [ 461 páginas; 8,8MB] http://www.ugr.es/local/jgodino/'),
(90, 25, 1, 'Vadillo, B., G. y Klingler, K., C. (2004). Didáctica. Teoría y práctica de éxito en Latinoamérica y España. México: McGrawHill.'),
(91, 26, 2, 'Álvarez, I., Ayuste, A., Gros, B., Guerra, V. & Romañá, T. (2005). Construir conocimiento con soporte tecnológico para un aprendizaje colaborativo. Revista Iberoamericana de Educación, 63/1. 14 pp. Recuperado el 13 de octubre de 2009 de http://www.rieoei.'),
(92, 26, 2, 'Badia, A. & García, C. (2006). Incorporación de las TIC en la enseñanza y el aprendizaje basados en la elaboración colaborativa de proyectos. Revista de Universidad y Sociedad del Conocimiento, 2 (3). Recuperado el 3 de noviembre de 2009, de http://www.uo'),
(93, 26, 2, 'Baquero, R. (2002). Del experimento escolar a la experiencia educativa. La “transmisión” educativa desde una perspectiva psicológica situacional. Perfiles Educativos, 97-98, 57-75. Recuperado el 13 de Octubre de 2009, de la base de datos Redalyc. http://r'),
(94, 26, 1, 'Barell. J. (1999). El aprendizaje basado en problemas: un enfoque investigativo. Buenos Aires: Manantial. pp. 21 -207.'),
(95, 26, 1, 'Bowe, C. M., Voss, J. & Aretz Thomas, H. (2009). Case method teaching: an effective approach to integrate the basic and clinical sciences in the preclinical medical curriculum. Medical Teacher, 31:9, 834-841.'),
(96, 26, 2, 'Calzadilla, M. E. (2002). Aprendizaje colaborativo y tecnologías de la información y la comunicación. Revista Iberoamericana de Educación. 10 pp. Recuperado el 14 de octubre de 2009 de http://procesovirtual-ese.com/El%20Aprendizaje%20con%20las%20TICs.pdf'),
(97, 26, 1, 'Chaupart, J. M., Vitalia Corredor, M. & Marín Muñoz, G. (1998). El tutor, el estudiante y su nuevo rol [Ponencia presentada por el Instituto de Educación a Distancia de la UIS, en el VI Encuentro Internacional de Educación a '),
(98, 26, 1, 'Coll, C. & Solé, I. (2007). Los profesores y la concepción constructivista, en C. Coll et al, El constructivismo en el aula, 7-23. México: Graó/Colofón.'),
(99, 26, 2, 'Coll, C., Mauri, T. & Onrubia, J. (Octubre 2006). Análisis y resolución de casos-problema mediante el aprendizaje colaborativo. Revista de Universidad y Sociedad del Conocimiento, 2, 29-41. Recuperado el 14 de octubre de 2009 de http://www.uoc.edu/rusc/3/'),
(100, 26, 2, 'Dávila, Sergio (2000): “El aprendizaje significativo. Esa extraña expresión” (utilizada por todos y comprendida por pocos). Contexto Educativo 9. 10p. Documento web: http://contextoeducativo. com.ar/2000/7/nota-08.htm Consultado el 24 de febrero de 2009.'),
(101, 26, 2, 'De Vargas, E. (2006). La situación de enseñanza y aprendizaje como sistema de actividad: el alumno, el espacio de interacción y el profesor. Revista Iberoamericana de Educación, 39/4. 10 pp. Consultado el 13 de Octubre de 2009 en: http://www.rieoei.org/de'),
(102, 26, 1, 'Díaz Barriga, F. & Hernández Rojas, G. (1999). Estrategias de enseñanza para la promoción de aprendizajes significativos. En F. Díaz Barriga y G. Hernández Rojas Estrategias docentes para un aprendizaje significativo (Capítulo 5). México: McGraw Hill.'),
(103, 26, 2, 'Díaz Barriga, F. (2006). Reseña de “Aprendizaje basado en problemas. De la teoría a la práctica” de Carlos Sola Ayape. Perfiles Educativos, tercera época, año/vol. XXVIII, número 111, pp.124- 127. Recuperado el 2 de noviembre de 2009 de la base de datos R'),
(104, 26, 1, 'Dohn, H. & Wagner, K. D. (1999). Strategies and methods of teaching in contemporary higher education with reference to project work. Innovations in education and training international, 4 (36), 285-291.'),
(105, 26, 1, 'Enemark, S. & Kjaersdam, F. (2008). El ABP en la teoría y la práctica: la experiencia de Aalborg sobre la innovación del proyecto en la enseñanza universitaria. En U. Araujo y G. Sastre, El aprendizaje basado en problemas: una nueva perspectiva en la ense'),
(106, 26, 1, 'Escribano, A. (2008) Aprendizaje basado en problemas. Una propuesta metodológica en enseñanza superior. Madrid: Narcea. pp. 37-113.'),
(107, 26, 1, 'Exley, K. y Dennick, R. (2007). Enseñanza en pequeños grupos en educación superior. Madrid: Narcea. pp. 9-39, 85-116.'),
(108, 26, 2, 'Glinz Férez, P. E. (2005). Un acercamiento al trabajo colaborativo. Revista Iberoamericana de Educación, 35/2. 13 pp. Recuperado el 14 de octubre de 2009 de http://www.rieoei.org/deloslectores/820Glinz.PDF'),
(109, 26, 1, 'Gray, K. A., Wolfer, T. A. & Maas, C. (2006). The decision case method: teaching and training for grassroots community organizing. Journal of Community Practice, 14(4), 91-112.'),
(110, 26, 1, 'Howell, R. & Mordini, R. (2003). The project method increases student learning and interest. Tech Directions, 62 (8), 31-34.'),
(111, 26, 1, 'Imbernón, Francisco. La formación y el desarrollo profesional del profesorado. Barcelona, Graó,1994.'),
(112, 26, 1, 'IOVANOVICH, M. (2003). La sistematización de la práctica docente en EDJA. OEI / Revista Iberoamericana de Educación.'),
(113, 26, 2, 'ITESM (2000). "Aprendizaje colaborativo". Las estrategias y técnicas didácticas en el rediseño. México, 37p. Documento web: http://www.sistema.itesm.mx/va/dide/publicaciones/inf-doc/Colaborativo.PDF (consultado el 20 de febrero de 2009)'),
(114, 26, 2, 'Leigh Smith, B. & MacGregor, J. T. (1992). What is collaborative learning? Washington Center for Improving the Quality of Undergraduate Education. 11 pp. Documento Web: http://learningcommons.evergreen.edu/pdf/collab.pdf (consultado el 12 de Octubre de 20'),
(115, 26, 2, 'Lucero, M. M. (2003). Entre el trabajo colaborativo y el aprendizaje colaborativo. Revista Iberoamericana de Educación. 20 pp. Recuperado el 14 de octubre de 2009 de http://www.rieoei.org/deloslectores/528Lucero.PDF'),
(116, 26, 2, 'Machado Ramírez, E. F. & Montes de Oca Recio, N. (2004). Aprendizaje basado en la solución de tareas (ABST): contribución para la formación y desarrollo de habilidades investigativas en cursos postgraduados de metodología de la investigación pedagógica. R'),
(117, 26, 2, 'Méndez García, R. M. & Porto Currás, M. (2008). Una experiencia didáctica desde el ABP: la satisfacción de docentes y estudiantes. Revista Iberoamericana de Educación, 46/5.13 pp. Documento web: http://www.rieoei.org/expe/2232Porto.pdf (consultado el 13 d'),
(118, 26, 1, 'Moneo, M. R. & Rodríguez, C. (2000). La construcción del conocimiento y la motivación por aprender. Psicología Educativa, 2 (6), 129-149.'),
(119, 26, 1, 'Morales Bueno, P. & Landa Fitzgerald, V. (2004). Aprendizaje basado en problemas. Theoria, 13, 145-157.'),
(120, 26, 2, 'Sagástegui, D. (2004). Una apuesta por la cultura: el aprendizaje situado. Sinéctica, 24, 30-39. Consultado el 27 de Octubre de 2009 en: http://portal.iteso.mx/portal/page/portal/Sinectica/Historico/Numeros_anteriores05/024/24%20Diana %20Sagastegui-Mapas.'),
(121, 26, 2, 'Santillán Campos, F. (2006). El aprendizaje basado en problemas como propuesta educativa para las disciplinas económicas y sociales apoyadas en el B-learning. Revista Iberoamericana de Educación, 40/2. 5 pp. Recuperado el 2 de noviembre de 2009, de www.us'),
(122, 26, 1, 'SCHÖN, D. (1998): El profesional reflexivo. Cómo piensan los profesionales cuando actúan. Madrid, Paidós.'),
(123, 26, 2, 'Tippelt, R. & Lindemann, H. (2001). El método de proyectos [documento electrónico]. Ministerio de Educación del Gobierno de El Salvador. 14 pp. Recuperado el 3 de noviembre de 2009 de http://www.halinco.de/html/doces/Met-proy-APREMAT092001.pdf'),
(124, 26, 1, 'Torp, L. y Sage, S. (2007). El aprendizaje basado en problemas. Desde el jardín de infantes hasta la escuela secundaria. Buenos Aires: Amorrortu Editores. pp. 35-88.'),
(125, 26, 2, 'Villarruel Fuentes, M. (2009). La práctica educativa del maestro mediador. Revista Iberoamericana de Educación, 50/3. 12 pp. Recuperado el 28 de octubre de 2009 de http://www.rieoei.org/deloslectores/2957Fuentes.pdf'),
(126, 26, 1, 'Zabala, A. & Arnau, L. (2007). Enseñar competencias comporta partir de situaciones y problemas reales. En A. Zabala y L. Arnau, 11 ideas clave: cómo aprender y enseñar competencias (4ª. Reimpresión, pp. 123-133). México: Graó.'),
(127, 27, 1, 'Aprendizaje Estratégico. Carlos Monereo y Montserrat Castelló. Ediciones Grao'),
(128, 27, 1, 'Representar al mundo externamente. Eduard Marti. Ediciones Paidós . Colección Aprendizaje.'),
(129, 27, 1, 'Adquisición de conocimiento. Juan Ignacio Pozo. Ediciones Morata'),
(130, 27, 1, 'El hombre que calculaba. Malba Tahan. Editores Noriega'),
(131, 27, 1, 'Planeación y evaluación basadas en competencias: fundamentos y practicas para el desarrollo de competencias docentes, desde preescolar hasta el posgrado. Leslie Cázares Aponte. Trillas'),
(132, 27, 1, 'Gutiérrez Vázquez (2001) - Aprendiendo a Enseñar y Enseñando a Aprender'),
(133, 28, 1, 'La formación de investigadores educativos. Raúl Rojas Soriano. Editorial Plaza y Valdés.'),
(134, 28, 1, 'La indagación. Ann Lieberman y Lynne Miller. Ediciones Octaedro.'),
(135, 28, 1, 'La investigación cualitativa en educación. Paz Sandín. Ed. McGraw Hill.'),
(136, 28, 1, 'La introducción a los métodos cualitativos y cuantitativos de investigación. S.J. Taylor. Ed. Paidós Básica.'),
(137, 28, 1, 'Metodología de la investigación. Roberto Hernández Sampieri, Carlos Fernández-Collado y Pilar Baptista Lucio. Ed. McGraw Hill.'),
(138, 28, 1, 'Revistas de investigación en Matemática Educativa como:  RELIME (Revista Latinoamericana en Matemática Educativa)'),
(139, 28, 1, 'JOURNAL FOR RESEARCH IN MATHEMATICS EDUCATION'),
(140, 28, 1, 'UNIÓN (Revista Iberoamericana de Educación Matemática)'),
(141, 28, 1, 'UNO ( Revista de Didáctica de las Matemáticas)'),
(142, 28, 1, 'BOLEMA - Boletim de Educação Matemática'),
(143, 29, 1, 'Camilloni, R. W., A.; Celman, A.; Litwin, E. y Palou de Maté, M. del C. (2008). La evaluación de los aprendizajes en el debate didáctico contemporáneo. Buenos Aires: Paidós.'),
(144, 29, 1, 'Cook, T. D. y Reichardt, CH. S. (1997). Métodos cualitativos y cuantitativos en investigación evaluativa. Madrid: Morata.'),
(145, 29, 1, 'Chadwick, C. B. y Rivera, N. (1997). Evaluación formativa para el docente. Barcelona: Paidós.'),
(146, 29, 1, 'Gimeno, S., J. (2008). La evaluación en la enseñanza. En: Gimeno, J. y Pérez, A. Comprender y transformar la enseñanza. Madrid: Morata. Págs. 334-397.'),
(147, 29, 1, 'Díaz, B., Á. (2004). La evaluación educativa. Los retos de una disciplina y de las prácticas que genera. En: Ordorika, I. La academia en jaque. Perspectivas políticas sobre la evaluación de la educación superior en México. México: Universidad Nacional Aut'),
(148, 30, 2, 'Álvarez, I., Ayuste, A., Gros, B., Guerra, V. & Romañá, T. (2005). Construir conocimiento con soporte tecnológico para un aprendizaje colaborativo. Revista Iberoamericana de Educación, 63/1. 14 pp. Recuperado el 13 de octubre de 2009 de http://www.rieoei.'),
(149, 30, 2, 'Badia, A. & García, C. (2006). Incorporación de las TIC en la enseñanza y el aprendizaje basados en la elaboración colaborativa de proyectos. Revista de Universidad y Sociedad del Conocimiento, 2 (3). Recuperado el 3 de noviembre de 2009, de http://www.uo'),
(150, 30, 1, 'Brockbank, A. & McGill, I. (2008). Aprendizaje reflexivo en la educación superior. Madrid: Morata.'),
(151, 30, 1, 'Carr, W. (2002). Una teoría para la educación. Hacia una investigación educativa crítica. Madrid: Morata.'),
(152, 30, 1, 'Dohn, H. & Wagner, K. D. (1999). Strategies and methods of teaching in contemporary higher education with reference to project work. Innovations in education and training international, 4 (36), 285-291.'),
(153, 30, 1, 'Elliot. J. (2000). El cambio educativo desde la investigación-acción. Madrid: Morata.'),
(154, 30, 1, 'Imbernón, Francisco. La formación y el desarrollo profesional del profesorado. Barcelona, Graó,1994.'),
(155, 30, 1, 'IOVANOVICH, M. (2003). La sistematización de la práctica docente en EDJA. OEI / Revista Iberoamericana de Educación.'),
(156, 30, 1, 'Jackson, W. (2001). La vida en las aulas. Madrid: Morata.'),
(157, 30, 1, 'Latorre, A. (2007). La investigación-acción. Conocer y cambia la práctica educativa. España: Graó.'),
(158, 30, 1, 'McKernan, J. (2001). Investigación - acción y currículum. Madrid: Morata.'),
(159, 30, 1, 'Méndez Pardo, A. & Méndez Pardo, S. (Coords.). (2007). El docente investigador en educación. Textos de Wilfred Carr. México: Colección Selva Negra, UNICACH. En: http://www.aiu.edu/applications/DocumentLibraryManager/upload/Susy%20Mendez%20Pardo.pdf'),
(160, 30, 1, 'SCHÖN, D. (1998): El profesional reflexivo. Cómo piensan los profesionales cuando actúan. Madrid, Paidós.'),
(161, 30, 1, 'Stenhouse, L. (2004). La investigación como base de la enseñanza. Madrid: Morata.'),
(162, 30, 1, 'Zabala, A. & Arnau, L. (2007). Enseñar competencias comporta partir de situaciones y problemas reales. En A. Zabala y L. Arnau, 11 ideas clave: cómo aprender y enseñar competencias (4ª. Reimpresión, pp. 123-133). México: Graó.'),
(163, 30, 1, 'Zabalza, M. A. (2009). Competencias docentes del profesorado universitario: calidad y desarrollo profesional. Madrid: Narcea.'),
(164, 31, 2, 'Barberá Gregori, Elena (2005). "Evaluación de competencias complejas: la práctica del portafolio". Educere, La Revista Venezolana de Educación. Venezuela: Universidad de Los Andes, pp. 497- 504. Disponible en: http://redeca.uach.mx/instrumentos/La%20evalu'),
(165, 31, 1, 'Díaz- Barriga, Frida ( ) – La evaluación psicopedagógica del aprendizaje. Mc Graw Hill'),
(166, 31, 1, 'Gómez, Pedro. (1995) – Profesor no entiendo. Reflexiones alrededor de una experiencia en docencia de las matemáticas. Grupo Editorial Iberoamérica. México.'),
(167, 31, 1, 'Gorgorió. N. et al (2000) - Matemáticas y Educación: Retos y cambios desde una perspectiva internacional. Ed. Graó. Barcelona.'),
(168, 31, 2, 'Moreno, T. (2012). La evaluación de competencias en educación. Sinéctica, 39. Disponible en: http://www.sinectica.iteso.mx/assets/files/articulos/39_la_evaluacion_de_competencias_en_educac ion.pdf [28/05/2013]'),
(169, 31, 2, 'Monereo, C.(2007) La evaluación auténtica de competencias: posibles estrategias. En IV Congreso Regional de Educación. Competencias básicas y práctica educativa. Barcelona: Universidad Autónoma de Barcelona Video disponible en: http://youtu.be/tbugPz0nMyk'),
(170, 31, 1, 'Neill, Sean y Caswell, Chris (2005) – La expresión no verbal en el profesorado. Ediciones Octaedro. Barcelona.'),
(171, 31, 1, 'Perrenoud, Philippe (2004) – Desarrollar la práctica reflexiva en el oficio de enseñar. Profesionalización y razón pedagógica. Ed. Graó. Barcelona.'),
(172, 31, 1, 'Sacristán, Gimeno y Pérez, Ángel (1996) – Comprender y Transformar la Enseñanza. Ediciones Morata.'),
(173, 31, 1, 'Schön, Donald (1998), El profesional reflexivo. Cómo piensan los profesionales cuando actúan, Editorial Paidós, Barcelona.'),
(174, 31, 1, 'Vieira, H. (2007)La comunicación en el aula. Relación Profesor- alumno según el anállisis transaccional. Narcea. Madrid, España.'),
(175, 31, 1, 'Zarate, J. (2002) El arte de la relación maestro alumno en el proceso enseñanza aprendizaje. IPN. México'),
(176, 32, 1, 'Facultad de Ciencias (2011). Reglamento Interno de la Facultad de Ciencias. San Luis Potosí: Universidad Autónoma de San Luis Potosí.'),
(177, 33, 1, 'Brockbank, A. & McGill, I. (2008). Aprendizaje reflexivo en la educación superior. Madrid: Morata.'),
(178, 33, 1, 'Carr, W. (2002). Una teoría para la educación. Hacia una investigación educativa crítica. Madrid: Morata.'),
(179, 33, 1, 'Jackson, W. (2001). La vida en las aulas. Madrid: Morata.'),
(180, 33, 1, 'Latorre, A. (2007). La investigación-acción. Conocer y cambia la práctica educativa. España: Graó.'),
(181, 33, 2, 'Álvarez, I., Ayuste, A., Gros, B., Guerra, V. & Romañá, T. (2005). Construir conocimiento con soporte tecnológico para un aprendizaje colaborativo. Revista Iberoamericana de Educación, 63/1. 14 pp. Recuperado el 13 de octubre de 2009 de http://www.rieoei.'),
(182, 33, 2, 'Badia, A. & García, C. (2006). Incorporación de las TIC en la enseñanza y el aprendizaje basados en la elaboración colaborativa de proyectos. Revista de Universidad y Sociedad del Conocimiento, 2 (3). Recuperado el 3 de noviembre de 2009, de http://www.uo'),
(183, 33, 1, 'Dohn, H. & Wagner, K. D. (1999). Strategies and methods of teaching in contemporary higher education with reference to project work. Innovations in education and training international, 4 (36), 285-291.'),
(184, 33, 1, 'Elliot. J. (2000). El cambio educativo desde la investigación-acción. Madrid: Morata.'),
(185, 33, 1, 'Imbernón, Francisco. La formación y el desarrollo profesional del profesorado. Barcelona, Graó,1994.'),
(186, 33, 1, 'IOVANOVICH, M. (2003). La sistematización de la práctica docente en EDJA. OEI / Revista Iberoamericana de Educación.'),
(187, 33, 1, 'McKernan, J. (2001). Investigación - acción y currículum. Madrid: Morata.'),
(188, 33, 2, 'Méndez Pardo, A. & Méndez Pardo, S. (Coords.). (2007). El docente investigador en educación. Textos de Wilfred Carr. México: Colección Selva Negra, UNICACH. En: http://www.aiu.edu/applications/DocumentLibraryManager/upload/Susy%20Mendez%20Pardo.pdf'),
(189, 33, 1, 'SCHÖN, D. (1998): El profesional reflexivo. Cómo piensan los profesionales cuando actúan. Madrid, Paidós.'),
(190, 33, 1, 'Stenhouse, L. (2004). La investigación como base de la enseñanza. Madrid: Morata.'),
(191, 33, 1, 'Zabala, A. & Arnau, L. (2007). Enseñar competencias comporta partir de situaciones y problemas reales. En A. Zabala y L. Arnau, 11 ideas clave: cómo aprender y enseñar competencias (4ª. Reimpresión, pp. 123-133). México: Graó.'),
(192, 33, 1, 'Zabalza, M. A. (2009). Competencias docentes del profesorado universitario: calidad y desarrollo profesional. Madrid: Narcea.'),
(193, 34, 1, 'Aguirre-Lora, M. (2003), Ciudadanos de papel, mexicanos por decreto. En Popkewitz, T., Franklin, B. y Pereyra, M. (2003) Historia cultural y educación. Ensayos críticos sobre conocimiento y escolarización.'),
(194, 34, 2, 'Tanck de Estrada, Dorothy. La Educación índigena en el siglo XVIII. El Colegio de México. http://biblioweb.tic.unam.mx/ diccionario/htm/articulos/sec_22.htm'),
(195, 34, 2, 'Galván Lafarga, Luz Elena (2012), Diccionario de historia de la educación en México. http://biblioweb.tic.unam.mx/diccionario/htm/articulos/sec_22.htm'),
(196, 35, 2, 'Artiles Bisbal, Leticia. El artículo científico. Habana, Revista cubana de medicina general integral, 1995. 8 p. http://www.angelfire.com/sk/thesishelp/artic.html'),
(197, 35, 1, 'Conacyt (2013) Manual para la administración de proyectos. México: Consejo Nacional de Ciencia y Tecnología.'),
(198, 35, 2, 's/a Cómo elaborar e interpretar referencias bibliográficas: Consultado el 30 de enero del 2009 en http://biblioteca.unirioja.es/biblio/bdg/bdgcitas.pdf'),
(199, 35, 2, 'Mari Mutt, José A. (2001) Manual de Redacción Científica. Departamento de Biología, Universidad de Puerto Rico, Mayagüez, Puerto Rico http://caribjsci.org/epub1/temario.htm'),
(200, 35, 2, 'Merlo Vega, J.A. (2000) Estilos de citas y referencias de documentos electrónicos: Revista Española de Documentación Científica, oct.-dic. 2000, vol. 23, n. 4, p. 483-496. Disponible en pdf: http://exlibris.usal.es/merlo/escritos/pdf/citas.pdf'),
(201, 35, 1, 'Nieto-Caraveo, L. (2003). Curso: lectura y redacción de informes técnicos y científicos. Universidad Autónoma de San Luis Potosí.'),
(202, 35, 2, 'Sánchez Puentes, Ricardo. “Didáctica de la problematización en el campo científico de la educación” en Perfiles educativos No. 61. pp. 64-78. México, Centro de investigaciones y servicios educativos, 1993. http://www.iisue.unam.mx/seccion/perfiles/'),
(203, 36, 1, 'Emilio Ribes y José Burgos (2006). Raíces históricas y filosóficas del conductismo. Editorial Paidos.'),
(204, 36, 1, 'Juan Ignacio Pozo (2009). Teorías Cognitivas del aprendizaje. Editorial Morata.'),
(205, 36, 1, 'Kozulin, A. (2000). Instrumentos psicológicos. La educación desde una perspectiva sociocultural. España: Paidós.'),
(206, 36, 1, 'Coll, C. y Martin E. (2007). El constructivismo en el aula. Editorial Graó.'),
(207, 36, 1, 'Ausubel, D.P.: Novak, J.D. Y Hanesian, H. (1983): Educational.'),
(208, 36, 1, 'Psychology. A cognitive view, New York, Holt Trad. Esp., México: Trillas.'),
(209, 36, 1, 'Beltrán J. (1989): Aprender a aprender: Desarrollo de estrategias cognitivas , Madrid: Cincel.'),
(210, 36, 1, 'Bruner, J. (1988): Desarrollo cognitivo y educación, Madrid: Morata.'),
(211, 37, 1, 'MATEMÁTICAS Y CONTEXTO. Enfoques y estrategias para el aula, Gómez Chacón, I.Mª. Narcea Ediciones, ISBN: 8427712596 ISBN-13: 9788427712591  1ª ed. edición (1998)'),
(212, 37, 2, 'Pinet, R. Matemáticas en contexto. Entrevista con Patricia Camarena Gallardo. Revista Electrónica de Investigación Educativa, 7(2). http://redie.uabc.mx/contenido/vol7no2/contenido-camarena.pdf'),
(213, 39, 1, 'Camarena G. Patricia (2000). Reporte del proyecto de investigación titulado: Etapas de la matemática en el contexto de la ingeniería. ESIME-IPN, México.'),
(214, 39, 1, 'Camarena G. Patricia (1995). La enseñanza de las matemáticas en el contexto de la ingeniería. XXVIII Congreso Nacional de la Sociedad Matemática Mexicana, México.'),
(215, 39, 1, 'Gómez, Pedro. (1995) – Profesor no entiendo. Reflexiones alrededor de una experiencia en docencia de las matemáticas. Grupo Editorial Iberoamérica. México.'),
(216, 39, 1, 'Gorgorió. N. et al (2000) - Matemáticas y Educación: Retos y cambios desde una perspectiva internacional. Ed. Graó. Barcelona.'),
(217, 39, 1, 'Sacristán, Gimeno y Pérez, Ángel (1996) – Comprender y Transformar la Enseñanza. Ediciones Morata.'),
(218, 38, 1, 'El conocimiento libre y los recursos educativos abiertos, Junta de Extremadura, 2008, Creative Commons, OCDE. I.S.B.N.-13: 978-84-691-8082-2'),
(219, 38, 2, 'Silicia, M. A. (2007). Más allá de los contenidos: compartiendo el diseño de los recursos educativos abiertos. Revista de Universidad y Sociedad del conocimiento, 4, 1, 26-35. Disponible en: http://www.uoc.edu/rusc/4/1/dt/esp/sicilia.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `BibliografiaTipo`
--

CREATE TABLE IF NOT EXISTS `BibliografiaTipo` (
  `BiblioTipoId` int(10) unsigned NOT NULL,
  `BiblioTipoNombre` varchar(50) NOT NULL,
  `BiblioTipoNombres` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BibliografiaTipo`
--

INSERT INTO `BibliografiaTipo` (`BiblioTipoId`, `BiblioTipoNombre`, `BiblioTipoNombres`) VALUES
(1, 'Texto Básico', 'Textos Básicos'),
(2, 'Sitio de Internet', 'Sitios de Internet');

-- --------------------------------------------------------

--
-- Table structure for table `Compartido`
--

CREATE TABLE IF NOT EXISTS `Compartido` (
  `CompartidoId` int(10) unsigned NOT NULL,
  `ProgAcademico` int(10) unsigned NOT NULL COMMENT 'Programa que se comparte en otra licenciatura',
  `MateriaId` int(10) unsigned NOT NULL COMMENT 'Materia con la que esta compartido el programa en otra licenciatura'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `CompProfesional`
--

CREATE TABLE IF NOT EXISTS `CompProfesional` (
  `CompProfId` int(10) unsigned NOT NULL,
  `LicenciaturaId` int(10) unsigned NOT NULL,
  `CompProfNombre` varchar(50) NOT NULL,
  `CompProfDescripcion` text NOT NULL,
  `CompProfTipo` varchar(45) DEFAULT NULL COMMENT 'Tipo de competencia profesional'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `CompTransversal`
--

CREATE TABLE IF NOT EXISTS `CompTransversal` (
  `CompTransvId` int(10) unsigned NOT NULL,
  `CompTransvNombre` varchar(50) NOT NULL,
  `CompTransvDescripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Criterio`
--

CREATE TABLE IF NOT EXISTS `Criterio` (
  `CriterioId` int(10) unsigned NOT NULL,
  `CriterioNombre` varchar(100) NOT NULL,
  `CriterioDescripcion` varchar(254) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Criterio`
--

INSERT INTO `Criterio` (`CriterioId`, `CriterioNombre`, `CriterioDescripcion`) VALUES
(1, 'Resultados de aprendizaje', NULL),
(2, 'Valoración de la secuencia de enseñanza en clase', NULL),
(3, 'Comparación con otros programas', NULL),
(4, 'Comparación con índices de libros', NULL),
(5, 'Valoración de resultados de investigación própios', NULL),
(6, 'Valoración de resultados de investigación en revístas científicas', NULL),
(7, 'Valoración de resultados de evaluación', NULL),
(8, 'Otro', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Curso`
--

CREATE TABLE IF NOT EXISTS `Curso` (
  `CursoId` int(10) unsigned NOT NULL,
  `CursoPeriodo` varchar(100) NOT NULL,
  `CursoSalon` varchar(10) DEFAULT NULL,
  `CursoHora` time DEFAULT NULL,
  `UsuarioId` int(10) unsigned DEFAULT NULL,
  `ProgAcademicoId` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Error`
--

CREATE TABLE IF NOT EXISTS `Error` (
  `ErrorId` int(10) unsigned NOT NULL,
  `UsuarioId` int(10) unsigned NOT NULL,
  `ErrorDescripcion` text NOT NULL,
  `ErrorFecha` date NOT NULL,
  `ErrorHora` time NOT NULL,
  `ErrorEstado` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Estado del error. Pendiente 0. Corregido 1.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla para almacenar el reporte de errores en el sistema por parte de los usuarios';

-- --------------------------------------------------------

--
-- Table structure for table `EstadoModificacion`
--

CREATE TABLE IF NOT EXISTS `EstadoModificacion` (
  `EstdModifId` int(10) unsigned NOT NULL,
  `EstdModifNombre` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `EstadoModificacion`
--

INSERT INTO `EstadoModificacion` (`EstdModifId`, `EstdModifNombre`) VALUES
(1, 'Pendiente'),
(2, 'Aprobada'),
(3, 'Rechazada');

-- --------------------------------------------------------

--
-- Table structure for table `EstrategiaDidactica`
--

CREATE TABLE IF NOT EXISTS `EstrategiaDidactica` (
  `EstDidacticaId` int(10) unsigned NOT NULL,
  `EstDidacticaNombre` varchar(255) NOT NULL,
  `TemaId` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `EstrategiaEnsenanza`
--

CREATE TABLE IF NOT EXISTS `EstrategiaEnsenanza` (
  `EstEnsenanzaId` int(10) unsigned NOT NULL,
  `ProgAcademicoId` int(10) unsigned NOT NULL,
  `EstEnsenanzaOrden` int(10) unsigned DEFAULT NULL,
  `EstEnsenanzaNombre` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `EstrategiaEnsenanza`
--

INSERT INTO `EstrategiaEnsenanza` (`EstEnsenanzaId`, `ProgAcademicoId`, `EstEnsenanzaOrden`, `EstEnsenanzaNombre`) VALUES
(1, 1, 1, '<p>\r\n	<span style="font-family: Helvetica;">Se recomienda que el alumno estudie cada tema con anticipaci&oacute;n a la clase. Se recomienda que el</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	profesor exponga el tema, ejemplificando con m&uacute;ltiples ejercicios y aclarando las dudas, para</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	pasar despu&eacute;s a la resoluci&oacute;n de problemas en el pizarr&oacute;n por parte de los alumnos.</p>\r\n'),
(2, 1, 2, '<p>\r\n	<span style="font-family: Helvetica;">&nbsp;As&iacute; mismo, se recomienda la asignar tareas semanales y/o elaborar un breve examen semanal</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	para mantener un seguimiento continuo del progreso de cada alumno.</p>\r\n'),
(3, 1, 3, '<p>\r\n	<span style="font-family: Helvetica;">&nbsp;Se recomienda el uso de software para realizar c&aacute;lculos num&eacute;ricos como Scilab, Octave, Matlab y</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	Maxima.</p>\r\n'),
(4, 1, 4, '<p>\r\n	<span style="font-family: Helvetica;">&nbsp;Se tendr&aacute; una sesi&oacute;n de una hora por semana para la resoluci&oacute;n de ejercicios y aclaraci&oacute;n de</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	dudas.</p>\r\n'),
(5, 4, 1, '<p>\r\n	<span style="font-family: Helvetica;">Exposici&oacute;n del maestro con apoyo de recursos visuales y audiovisuales</span></p>\r\n'),
(6, 4, 2, '<p>\r\n	<span style="font-family: Helvetica;">Tareas previas y posteriores a cada tema</span></p>\r\n'),
(7, 4, 3, '<p>\r\n	<span style="font-family: Helvetica;">Ejercicios en sesiones de pr&aacute;ctica.</span></p>\r\n'),
(8, 4, 5, '<p>\r\n	<span style="font-family: Helvetica;">Evaluaci&oacute;n de conceptos formales en ex&aacute;menes parciales</span></p>\r\n'),
(9, 4, 6, '<p>\r\n	<span style="font-family: Helvetica;">Evaluaci&oacute;n de la capacidad de s&iacute;ntesis e integraci&oacute;n del conocimiento mediante ex&aacute;menes</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	parciales</p>\r\n'),
(10, 5, 1, '<p>\r\n	<span style="font-family: Helvetica;">Se sugiere iniciar la clase con una motivaci&oacute;n para posteriormente exponer el tema y realizar</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	m&uacute;ltiples ejercicios de ejemplo, tanto por parte del alumno como del profesor.</p>\r\n'),
(11, 5, 2, '<p>\r\n	<span style="font-family: Helvetica;">Se sugiere la realizaci&oacute;n de una pr&aacute;ctica por semana en las cuales el alumno deba implementar</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	algoritmos simples, como b&uacute;squedas, m&eacute;todos num&eacute;ricos, estad&iacute;sticas, etc. Se sugiere tambi&eacute;n</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	desarrollar un proyecto final en el que se ataque un problema espec&iacute;fico.</p>\r\n'),
(12, 6, 1, '<p>\r\n	<span style="font-family: Helvetica;">Exposici&oacute;n del maestro con apoyo de recursos visuales y audiovisuales.</span></p>\r\n'),
(13, 6, 2, '<p>\r\n	<span style="font-family: Helvetica;">Tareas previas y posteriores a cada tema.</span></p>\r\n'),
(14, 6, 3, '<p>\r\n	<span style="font-family: Helvetica;">Ejercicios en sesiones de pr&aacute;ctica.</span></p>\r\n'),
(15, 6, 4, '<p>\r\n	<span style="font-family: Helvetica;">Evaluaci&oacute;n de conceptos formales en ex&aacute;menes parciales.</span></p>\r\n'),
(16, 6, 5, '<p>\r\n	<span style="font-family: Helvetica;">Evaluaci&oacute;n de la capacidad de s&iacute;ntesis e integraci&oacute;n del conocimiento mediante ex&aacute;menes</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	parciales.</p>\r\n'),
(17, 7, 1, '<p>\r\n	<span style="font-family: Helvetica;">Exposici&oacute;n del maestro con apoyo de recursos visuales y audiovisuales.</span></p>\r\n'),
(18, 7, 2, '<p>\r\n	<span style="font-family: Helvetica;">Tareas previas y posteriores a cada tema.</span></p>\r\n'),
(19, 7, 3, '<p>\r\n	<span style="font-family: Helvetica;">Ejercicios en sesiones de pr&aacute;ctica.</span></p>\r\n'),
(20, 7, 4, '<p>\r\n	<span style="font-family: Helvetica;">Evaluaci&oacute;n de conceptos formales en ex&aacute;menes parciales.</span></p>\r\n'),
(21, 7, 5, '<p>\r\n	<span style="font-family: Helvetica;">Evaluaci&oacute;n de la capacidad de s&iacute;ntesis e integraci&oacute;n del conocimiento mediante ex&aacute;menes</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	parciales.</p>\r\n'),
(22, 8, 1, '<p>\r\n	<span style="font-family: Helvetica;">Exposici&oacute;n del maestro con apoyo de recursos visuales y audiovisuales</span></p>\r\n'),
(23, 8, 2, '<p>\r\n	<span style="font-family: Helvetica;">Tareas previas y posteriores a cada tema</span></p>\r\n'),
(24, 8, 3, '<p>\r\n	<span style="font-family: Helvetica;">Ejercicios en sesiones de pr&aacute;ctica.</span></p>\r\n'),
(25, 8, 4, '<p>\r\n	<span style="font-family: Helvetica;">Evaluaci&oacute;n de conceptos formales en ex&aacute;menes parciales</span></p>\r\n'),
(26, 8, 5, '<p>\r\n	<span style="font-family: Helvetica;">Evaluaci&oacute;n de la capacidad de s&iacute;ntesis e integraci&oacute;n del conocimiento mediante ex&aacute;menes</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	parciales</p>\r\n'),
(27, 9, 1, '<p>\r\n	<span style="font-family: Helvetica;">Exposici&oacute;n del maestro con apoyo de recursos visuales y audiovisuales.</span></p>\r\n'),
(28, 9, 2, '<p>\r\n	<span style="font-family: Helvetica;">Tareas previas y posteriores a cada tema.</span></p>\r\n'),
(29, 9, 3, '<p>\r\n	<span style="font-family: Helvetica;">Ejercicios en sesiones de pr&aacute;ctica.</span></p>\r\n'),
(30, 9, 4, '<p>\r\n	<span style="font-family: Helvetica;">Evaluaci&oacute;n de conceptos formales en ex&aacute;menes parciales.</span></p>\r\n'),
(31, 9, 5, '<p>\r\n	<span style="font-family: Helvetica;">Evaluaci&oacute;n de la capacidad de s&iacute;ntesis e integraci&oacute;n del conocimiento mediante ex&aacute;menes</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	parciales.</p>\r\n'),
(32, 9, 6, '<p>\r\n	<span style="font-family: Helvetica;">Se tendr&aacute; una sesi&oacute;n de una hora por semana para la resoluci&oacute;n de ejercicios y aclaraci&oacute;n de</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	dudas.</p>\r\n'),
(33, 10, 1, '<p>\r\n	<span style="font-family: Helvetica;">Exposici&oacute;n del maestro con apoyo de recursos visuales y audiovisuales.</span></p>\r\n'),
(34, 10, 2, '<p>\r\n	<span style="font-family: Helvetica;">Tareas previas y posteriores a cada tema.</span></p>\r\n'),
(35, 10, 3, '<p>\r\n	<span style="font-family: Helvetica;">Ejercicios en sesiones de pr&aacute;ctica</span></p>\r\n'),
(36, 10, 4, '<p>\r\n	<span style="font-family: Helvetica;">Evaluaci&oacute;n de conceptos formales en ex&aacute;menes parciales.</span></p>\r\n'),
(37, 10, 5, '<p>\r\n	<span style="font-family: Helvetica;">Evaluaci&oacute;n de la capacidad de s&iacute;ntesis e integraci&oacute;n del conocimiento mediante ex&aacute;menes</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	parciales.</p>\r\n'),
(38, 10, 6, '<p>\r\n	<span style="font-family: Helvetica;">Se tendr&aacute; una sesi&oacute;n de una hora por semana para la resoluci&oacute;n de ejercicios y aclaraci&oacute;n de</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	dudas.</p>\r\n'),
(39, 11, 1, '<p>\r\n	<span style="font-family: Helvetica;">Exposici&oacute;n del maestro con apoyo de recursos visuales y audiovisuales.</span></p>\r\n'),
(40, 11, 2, '<p>\r\n	<span style="font-family: Helvetica;">Tareas previas y posteriores a cada tema.</span></p>\r\n'),
(41, 11, 3, '<p>\r\n	<span style="font-family: Helvetica;">Ejercicios en sesiones de pr&aacute;ctica.</span></p>\r\n'),
(42, 11, 4, '<p>\r\n	<span style="font-family: Helvetica;">Evaluaci&oacute;n de conceptos formales en ex&aacute;menes parciales.</span></p>\r\n'),
(43, 11, 5, '<p>\r\n	<span style="font-family: Helvetica;">Evaluaci&oacute;n de la capacidad de s&iacute;ntesis e integraci&oacute;n del conocimiento mediante ex&aacute;menes</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	parciales.</p>\r\n'),
(44, 12, 1, '<p>\r\n	<span style="font-family: Helvetica;">Exposici&oacute;n del maestro con apoyo de recursos visuales y audiovisuales.</span></p>\r\n'),
(45, 12, 2, '<p>\r\n	<span style="font-family: Helvetica;">Tareas previas y posteriores a cada tema.</span></p>\r\n'),
(46, 12, 3, '<p>\r\n	<span style="font-family: Helvetica;">Ejercicios en sesiones de pr&aacute;ctica.</span></p>\r\n'),
(47, 12, 4, '<p>\r\n	<span style="font-family: Helvetica;">Exposici&oacute;n del alumno.</span></p>\r\n'),
(48, 12, 5, '<p>\r\n	<span style="font-family: Helvetica;">Ensayos elaborados por el alumno de los temas relacionados.</span></p>\r\n'),
(49, 12, 6, '<p>\r\n	<span style="font-family: Helvetica;">Reportes de art&iacute;culos relacionados con el tema.</span></p>\r\n'),
(50, 12, 7, '<p>\r\n	<span style="font-family: Helvetica;">Evaluaci&oacute;n de conceptos formales en ex&aacute;menes parciales.</span></p>\r\n'),
(51, 12, 8, '<p>\r\n	<span style="font-family: Helvetica;">Evaluaci&oacute;n de la capacidad de s&iacute;ntesis e integraci&oacute;n del conocimiento mediante ex&aacute;menes</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	parciales.</p>\r\n'),
(52, 13, 1, '<p>\r\n	<span style="font-family: Helvetica;">Exposici&oacute;n del maestro con apoyo de recursos visuales y audiovisuales.</span></p>\r\n'),
(53, 13, 2, '<p>\r\n	<span style="font-family: Helvetica;">Tareas previas y posteriores a cada tema.</span></p>\r\n'),
(54, 13, 3, '<p>\r\n	<span style="font-family: Helvetica;">Ejercicios en sesiones de pr&aacute;ctica.</span></p>\r\n'),
(55, 13, 4, '<p>\r\n	<span style="font-family: Helvetica;">Evaluaci&oacute;n de conceptos formales en ex&aacute;menes parciales.</span></p>\r\n'),
(56, 13, 5, '<p>\r\n	<span style="font-family: Helvetica;">Evaluaci&oacute;n de la capacidad de s&iacute;ntesis e integraci&oacute;n del conocimiento mediante ex&aacute;menes</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	parciales.</p>\r\n'),
(57, 14, 1, '<p>\r\n	<span style="font-family: Helvetica;">Exposici&oacute;n del maestro con apoyo de recursos visuales y audiovisuales</span></p>\r\n'),
(58, 14, 2, '<p>\r\n	<span style="font-family: Helvetica;">Tareas previas y posteriores a cada tema</span></p>\r\n'),
(59, 14, 3, '<p>\r\n	<span style="font-family: Helvetica;">Ejercicios en sesiones de pr&aacute;ctica.</span></p>\r\n'),
(60, 14, 4, '<p>\r\n	<span style="font-family: Helvetica;">Evaluaci&oacute;n de conceptos formales en ex&aacute;menes parciales</span></p>\r\n'),
(61, 14, 5, '<p>\r\n	<span style="font-family: Helvetica;">Evaluaci&oacute;n de la capacidad de s&iacute;ntesis e integraci&oacute;n del conocimiento mediante ex&aacute;menes</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	parciales</p>\r\n'),
(62, 14, 6, '<p>\r\n	<span style="font-family: Helvetica;">Aplicaci&oacute;n del modelo de pedag&oacute;gico Aprendizaje Basado en Problemas.</span></p>\r\n'),
(63, 15, 1, '<p>\r\n	<span style="font-family: Helvetica;">Exposici&oacute;n del maestro con apoyo de recursos visuales y audiovisuales</span></p>\r\n'),
(64, 15, 2, '<p>\r\n	<span style="font-family: Helvetica;">Tareas previas y posteriores a cada tema</span></p>\r\n'),
(65, 15, 3, '<p>\r\n	<span style="font-family: Helvetica;">Ejercicios en sesiones de pr&aacute;ctica.</span></p>\r\n'),
(66, 15, 4, '<p>\r\n	<span style="font-family: Helvetica;">Evaluaci&oacute;n de conceptos formales en ex&aacute;menes parciales</span></p>\r\n'),
(67, 15, 5, '<p>\r\n	<span style="font-family: Helvetica;">Evaluaci&oacute;n de la capacidad de s&iacute;ntesis e integraci&oacute;n del conocimiento mediante ex&aacute;menes</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	parciales</p>\r\n'),
(68, 16, 1, '<p>\r\n	<span style="font-family: Helvetica;">Lectura individual de los textos se&ntilde;alados en la bibliograf&iacute;a y elaboraci&oacute;n de ficha y/o resumen de</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	lectura</p>\r\n'),
(69, 16, 2, '<p>\r\n	<span style="font-family: Helvetica;">Exposici&oacute;n oral individual en el aula acerca de la lectura realizada</span></p>\r\n'),
(70, 16, 3, '<p>\r\n	<span style="font-family: Helvetica;">Sesiones plenarias con exposici&oacute;n oral de parte del docente con apoyo de recursos visuales y</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	audiovisuales</p>\r\n'),
(71, 16, 4, '<p>\r\n	<span style="font-family: Helvetica;">Evaluaci&oacute;n de conceptos formales en ex&aacute;menes parciales</span></p>\r\n'),
(72, 16, 5, '<p>\r\n	<span style="font-family: Helvetica;">Evaluaci&oacute;n de la capacidad de s&iacute;ntesis e integraci&oacute;n del conocimiento mediante ex&aacute;menes</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	parciales</p>\r\n'),
(73, 17, 1, '<p>\r\n	<span style="font-family: Helvetica;">Exposici&oacute;n presencial del maestro con apoyo de tecnolog&iacute;as de la informaci&oacute;n.</span></p>\r\n'),
(74, 17, 2, '<p>\r\n	<span style="font-family: Helvetica;">Tareas previas y posteriores a cada tema.</span></p>\r\n'),
(75, 17, 3, '<p>\r\n	<span style="font-family: Helvetica;">Ejercicios en sesiones de pr&aacute;ctica.</span></p>\r\n'),
(76, 17, 4, '<p>\r\n	<span style="font-family: Helvetica;">Evaluaci&oacute;n de conceptos formales en ex&aacute;menes parciales y final.</span></p>\r\n'),
(77, 17, 5, '<p>\r\n	<span style="font-family: Helvetica;">Evaluaci&oacute;n de la integraci&oacute;n del conocimiento mediante ex&aacute;menes parciales y final.</span></p>\r\n'),
(78, 17, 6, '<p>\r\n	<span style="font-family: Helvetica;">Elaboraci&oacute;n de material did&aacute;ctico basado en contexto social.</span></p>\r\n'),
(79, 18, 1, '<p>\r\n	<span style="font-family: Helvetica;">Exposici&oacute;n del maestro con apoyo de recursos visuales y audiovisuales</span></p>\r\n'),
(80, 18, 2, '<p>\r\n	<span style="font-family: Helvetica;">Tareas previas y posteriores a cada tema</span></p>\r\n'),
(81, 18, 3, '<p>\r\n	<span style="font-family: Helvetica;">Ejercicios en sesiones de pr&aacute;ctica.</span></p>\r\n'),
(82, 18, 4, '<p>\r\n	<span style="font-family: Helvetica;">Evaluaci&oacute;n de conceptos formales en ex&aacute;menes parciales</span></p>\r\n'),
(83, 18, 5, '<p>\r\n	<span style="font-family: Helvetica;">Evaluaci&oacute;n de la capacidad de s&iacute;ntesis e integraci&oacute;n del conocimiento mediante ex&aacute;menes</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	parciales</p>\r\n'),
(84, 19, 1, '<p>\r\n	<span style="font-family: Helvetica;">Exposici&oacute;n del maestro con apoyo de recursos visuales y audiovisuales</span></p>\r\n'),
(85, 19, 2, '<p>\r\n	<span style="font-family: Helvetica;">Tareas previas y posteriores a cada tema</span></p>\r\n'),
(86, 19, 3, '<p>\r\n	<span style="font-family: Helvetica;">Ejercicios en sesiones de pr&aacute;ctica.</span></p>\r\n'),
(87, 19, 4, '<p>\r\n	<span style="font-family: Helvetica;">Uso de material did&aacute;ctico.</span></p>\r\n'),
(88, 19, 5, '<p>\r\n	<span style="font-family: Helvetica;">Evaluaci&oacute;n de conceptos formales en ex&aacute;menes parciales</span></p>\r\n'),
(89, 19, 6, '<p>\r\n	<span style="font-family: Helvetica;">Evaluaci&oacute;n de la capacidad de s&iacute;ntesis e integraci&oacute;n del conocimiento mediante ex&aacute;menes</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	parciales.</p>\r\n'),
(90, 20, 1, '<p>\r\n	<span style="font-family: Helvetica;">El profesor expondr&aacute; los temas por medio de ejemplos y enfoc&aacute;ndose a la soluci&oacute;n de problemas,</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	mediante el uso de software educativo libre como Octave, Scilab, Maxima y R, para el c&aacute;lculo y</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	visualizaci&oacute;n de funciones.</p>\r\n'),
(91, 20, 2, '<p>\r\n	<span style="font-family: Helvetica;">Exposici&oacute;n presencial del maestro con apoyo de tecnolog&iacute;as de la informaci&oacute;n.</span></p>\r\n'),
(92, 20, 3, '<p>\r\n	<span style="font-family: Helvetica;">Tareas previas y posteriores a cada tema a desarrollarse mediante el uso de la computadora en el</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	laboratorio.</p>\r\n'),
(93, 20, 4, '<p>\r\n	<span style="font-family: Helvetica;">Ejercicios en sesiones de pr&aacute;ctica.</span></p>\r\n'),
(94, 20, 5, '<p>\r\n	<span style="font-family: Helvetica;">Evaluaci&oacute;n de conceptos formales en ex&aacute;menes parciales y final.</span></p>\r\n'),
(95, 20, 6, '<p>\r\n	<span style="font-family: Helvetica;">Evaluaci&oacute;n de la integraci&oacute;n del conocimiento mediante ex&aacute;menes parciales y final.</span></p>\r\n'),
(96, 20, 7, '<p>\r\n	<span style="font-family: Helvetica;">Elaboraci&oacute;n de material did&aacute;ctico utilizando nuevas tecnolog&iacute;as.</span></p>\r\n'),
(97, 21, 1, '<p>\r\n	<span style="font-family: Helvetica;">Exposici&oacute;n del maestro con apoyo de recursos visuales y audiovisuales.</span></p>\r\n'),
(98, 21, 2, '<p>\r\n	<span style="font-family: Helvetica;">Tareas previas y posteriores a cada tema.</span></p>\r\n'),
(99, 21, 3, '<p>\r\n	<span style="font-family: Helvetica;">Evaluaci&oacute;n de conceptos formales en ex&aacute;menes parciales</span></p>\r\n'),
(100, 21, 5, '<p>\r\n	<span style="font-family: Helvetica;">Evaluaci&oacute;n de la capacidad de s&iacute;ntesis e integraci&oacute;n del conocimiento mediante ex&aacute;menes</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	parciales</p>\r\n'),
(101, 22, 1, '<p>\r\n	<span style="font-family: Helvetica;">Lectura correspondiente de la bibliograf&iacute;a b&aacute;sica de referencia.</span></p>\r\n'),
(102, 22, 2, '<p>\r\n	<span style="font-family: Helvetica;">Consulta de resultados de investigaci&oacute;n sobre el tema en el que basar&aacute; la pr&aacute;ctica docente.</span></p>\r\n'),
(103, 22, 3, '<p>\r\n	<span style="font-family: Helvetica;">Exposici&oacute;n del maestro y/o alumnos con apoyo de recursos visuales y audiovisuales</span></p>\r\n'),
(104, 22, 4, '<p>\r\n	<span style="font-family: Helvetica;">Planeaci&oacute;n de una unidad tem&aacute;tica para la pr&aacute;ctica docente de parte de los alumnos.</span></p>\r\n'),
(105, 22, 5, '<p>\r\n	<span style="font-family: Helvetica;">Promover la reflexi&oacute;n anticipada, activa o interactiva y sobre la acci&oacute;n, como estrategia de</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	ense&ntilde;anza, haciendo uso de la revisi&oacute;n de la videograbaci&oacute;n de la pr&aacute;ctica docente.</p>\r\n'),
(106, 22, 6, '<p>\r\n	<span style="font-family: Helvetica;">Evaluaci&oacute;n de la capacidad de s&iacute;ntesis e integraci&oacute;n del conocimiento mediante evaluaciones</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	parciales</p>\r\n'),
(107, 23, 1, '<p>\r\n	<span style="font-family: Helvetica;">Lectura correspondiente de la bibliograf&iacute;a b&aacute;sica de referencia y consultar resultados de</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	investigaci&oacute;n sobre el tema.</p>\r\n'),
(108, 23, 2, '<p>\r\n	<span style="font-family: Helvetica;">Estudio individual y discusi&oacute;n en trabajo colaborativo.</span></p>\r\n'),
(109, 23, 3, '<p>\r\n	<span style="font-family: Helvetica;">Exposici&oacute;n del maestro y/o alumnos con apoyo de recursos visuales y audiovisuales.</span></p>\r\n'),
(110, 23, 4, '<p>\r\n	<span style="font-family: Helvetica;">Planteamiento de situaciones did&aacute;cticas problem&aacute;ticas de parte del maestro.</span></p>\r\n'),
(111, 23, 5, '<p>\r\n	<span style="font-family: Helvetica;">Soluci&oacute;n de situaciones did&aacute;cticas problem&aacute;ticas de parte del alumno.</span></p>\r\n'),
(112, 23, 6, '<p>\r\n	<span style="font-family: Helvetica;">Realizaci&oacute;n de s&iacute;ntesis de intervenci&oacute;n.</span></p>\r\n'),
(113, 23, 7, '<p>\r\n	<span style="font-family: Helvetica;">Evaluaci&oacute;n de conceptos formales en ex&aacute;menes parciales</span></p>\r\n'),
(114, 23, 8, '<p>\r\n	<span style="font-family: Helvetica;">Evaluaci&oacute;n de la capacidad de s&iacute;ntesis e integraci&oacute;n del conocimiento mediante ex&aacute;menes</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	parciales</p>\r\n'),
(115, 23, 9, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">En este &uacute;ltimo parcial se sugiere aplicar el Aprendizaje basado en Proyectos buscando que el alumno</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	resuelva las situaciones problem&aacute;ticas a los que se enfrent&oacute; a lo largo del semestre con el desarrollo de un</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	proyecto.</p>\r\n'),
(116, 24, 1, '<p>\r\n	Exposici&oacute;n presencial del maestro</p>\r\n'),
(117, 24, 2, '<div>\r\n	Problematizaci&oacute;n desde las dimensiones epistemol&oacute;gica, psicol&oacute;gica, did&aacute;ctica y/o sociocultural,</div>\r\n<div>\r\n	seg&uacute;n corresponda al marco te&oacute;rico elegido.</div>\r\n'),
(118, 24, 3, '<p>\r\n	Localizaci&oacute;n de fuentes de informaci&oacute;n.</p>\r\n'),
(119, 24, 4, '<p>\r\n	Exposici&oacute;n de parte de los alumnos de cada avance de la propuesta de indagaci&oacute;n elegida.</p>\r\n'),
(120, 24, 5, '<p>\r\n	Discusi&oacute;n grupal respecto de la pertinencia, claridad y coherencia de los avances presentados.</p>\r\n'),
(121, 24, 6, '<div>\r\n	Evaluaci&oacute;n de la integraci&oacute;n del conocimiento mediante el proyecto final con aplicaci&oacute;n de los</div>\r\n<div>\r\n	conocimientos adquiridos en el semestre.</div>\r\n'),
(122, 25, 1, '<p>\r\n	Exposici&oacute;n del maestro con apoyo de recursos visuales y audiovisuales.</p>\r\n'),
(123, 25, 2, '<div>\r\n	Lectura del tema y exposici&oacute;n diaria por parte del alumno con retroalimentaci&oacute;n individual y grupal</div>\r\n<div>\r\n	por parte del maestro.</div>\r\n'),
(124, 25, 3, '<p>\r\n	Exposici&oacute;n del alumno con apoyo de recursos visuales y audiovisuales.</p>\r\n'),
(125, 25, 4, '<div>\r\n	Evaluaci&oacute;n de la capacidad de s&iacute;ntesis e integraci&oacute;n del conocimiento mediante ex&aacute;menes</div>\r\n<div>\r\n	parciales y final.</div>\r\n'),
(126, 26, 1, '<p>\r\n	Exposici&oacute;n presencial del maestro con apoyo TIC.</p>\r\n'),
(127, 26, 2, '<p>\r\n	Presentaciones de los estudiantes sobre tem&aacute;ticas del curso.</p>\r\n'),
(128, 26, 3, '<p>\r\n	Realizaci&oacute;n de lecturas b&aacute;sicas y complementarias del curso.</p>\r\n'),
(129, 26, 4, '<p>\r\n	Realizaci&oacute;n de reportes de lectura y otras tareas.</p>\r\n'),
(130, 26, 5, '<p>\r\n	Discusiones presenciales.</p>\r\n'),
(131, 26, 6, '<p>\r\n	Foros virtuales de discusi&oacute;n.</p>\r\n'),
(132, 26, 7, '<p>\r\n	Asesor&iacute;a personalizada de productos desarrollados a lo largo del curso.</p>\r\n'),
(133, 26, 8, '<p>\r\n	Actividades de indagaci&oacute;n por parte de los alumnos sobre realidades educativas en instituciones.</p>\r\n'),
(134, 26, 9, '<p>\r\n	Estrategias virtuales para compartir diferentes textos y materiales educativos.</p>\r\n'),
(135, 26, 10, '<p>\r\n	Aprendizaje basado en problemas.</p>\r\n'),
(136, 26, 11, '<p>\r\n	Aprendizaje basado en proyectos.</p>\r\n'),
(137, 26, 12, '<p>\r\n	M&eacute;todo de Caso.</p>\r\n'),
(138, 26, 13, '<p>\r\n	Ex&aacute;menes de conocimientos del curso por unidad.</p>\r\n'),
(139, 26, 14, '<p>\r\n	Ejercicios de simulaci&oacute;n de actividades docentes.</p>\r\n'),
(140, 26, 15, '<p>\r\n	Realizaci&oacute;n de pr&aacute;cticas docentes experimentales.</p>\r\n'),
(141, 26, 16, '<p>\r\n	Lectura anal&iacute;tica en clase de textos clave.</p>\r\n'),
(142, 27, 1, '<p>\r\n	Exposici&oacute;n del profesor y de los alumnos.</p>\r\n'),
(143, 27, 2, '<p>\r\n	Realizaci&oacute;n de controles de lectura.</p>\r\n'),
(144, 27, 3, '<p>\r\n	Discusi&oacute;n de las secciones de los textos seleccionados por el profesor.</p>\r\n'),
(145, 27, 4, '<p>\r\n	Ejercicios de dise&ntilde;o de formatos de planeaci&oacute;n de cursos y clases.</p>\r\n'),
(146, 27, 5, '<p>\r\n	Taller de elaboraci&oacute;n de secuencias did&aacute;cticas.</p>\r\n'),
(147, 27, 6, '<p>\r\n	Exposici&oacute;n de las secuencias did&aacute;cticas elaboradas por los alumnos..</p>\r\n'),
(148, 28, 1, '<p>\r\n	Exposici&oacute;n presencial del maestro</p>\r\n'),
(149, 28, 2, '<div>\r\n	Problematizaci&oacute;n desde las dimensiones epistemol&oacute;gica, psicol&oacute;gica, did&aacute;ctica y/o</div>\r\n<div>\r\n	sociocultural, seg&uacute;n corresponda al marco te&oacute;rico elegido.</div>\r\n'),
(150, 28, 3, '<p>\r\n	Localizaci&oacute;n de fuentes de informaci&oacute;n.</p>\r\n'),
(151, 28, 4, '<div>\r\n	Exposici&oacute;n de parte de los alumnos de cada avance de la propuesta de indagaci&oacute;n</div>\r\n<div>\r\n	elegida.</div>\r\n'),
(152, 28, 5, '<div>\r\n	Discusi&oacute;n grupal respecto de la pertinencia, claridad y coherencia de los avances</div>\r\n<div>\r\n	presentados.</div>\r\n'),
(153, 28, 6, '<div>\r\n	Evaluaci&oacute;n de la integraci&oacute;n del conocimiento mediante el proyecto final con aplicaci&oacute;n</div>\r\n<div>\r\n	de los conocimientos adquiridos en el semestre.</div>\r\n'),
(154, 29, 1, '<p>\r\n	Exposici&oacute;n del maestro con apoyo de recursos visuales y audiovisuales.</p>\r\n'),
(155, 29, 2, '<div>\r\n	Lectura del tema y exposici&oacute;n diaria por parte del alumno con retroalimentaci&oacute;n</div>\r\n<div>\r\n	individual y grupal por parte del maestro.</div>\r\n'),
(156, 29, 3, '<p>\r\n	Exposici&oacute;n del alumno con apoyo de su palabra y recursos visuales y audiovisuales.</p>\r\n'),
(157, 29, 4, '<div>\r\n	Evaluaci&oacute;n de la capacidad de s&iacute;ntesis e integraci&oacute;n del conocimiento mediante ex&aacute;menes</div>\r\n<div>\r\n	parciales y final.</div>\r\n'),
(158, 30, 1, '<div>\r\n	Se propone como eje central y articulador del proceso de ense&ntilde;anza y aprendizaje de los estudiantes en el</div>\r\n<div>\r\n	curso la investigaci&oacute;n sobre su propia pr&aacute;ctica docente y, con ello, un proceso individual y colaborativo de</div>\r\n<div>\r\n	reflexi&oacute;n, replanteamiento y mejora de su pr&aacute;ctica considerando diferentes marcos conceptualesmetodol&oacute;gicos</div>\r\n<div>\r\n	y recursos para la ense&ntilde;anza, el aprendizaje, la evaluaci&oacute;n, y la investigaci&oacute;n de la</div>\r\n<div>\r\n	docencia.</div>\r\n'),
(159, 30, 2, '<div>\r\n	Adem&aacute;s el curso incluye una variedad de otras posibles estrategias de ense&ntilde;anza y aprendizaje que</div>\r\n<div>\r\n	pueden ser adoptados y adaptados por el profesor de acuerdo a su criterio pedag&oacute;gico y a las</div>\r\n<div>\r\n	caracter&iacute;sticas de los alumnos aprendices.</div>\r\n'),
(160, 31, 1, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">Exposici&oacute;n del profesor y de los alumnos.</span></p>\r\n'),
(161, 31, 2, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">Realizaci&oacute;n de controles de lectura.</span></p>\r\n'),
(162, 31, 3, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">Discusi&oacute;n de las secciones de los textos seleccionados por el profesor.</span></p>\r\n'),
(163, 31, 4, '<p>\r\n	<span style="font-family: Helvetica;">Ejercicios de an&aacute;lisis de formas de comunicaci&oacute;n.</span></p>\r\n'),
(164, 31, 5, '<p>\r\n	<span style="font-family: Helvetica;">Taller de elaboraci&oacute;n de estrategias e instrumentos de evaluaci&oacute;n.</span></p>\r\n'),
(165, 31, 6, '<p>\r\n	<span style="font-family: Helvetica;">Seminario de autoevaluaci&oacute;n de la pr&aacute;ctica docente.</span></p>\r\n'),
(166, 32, 1, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">Seminario</span></p>\r\n'),
(167, 32, 2, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">Coloquios</span></p>\r\n'),
(168, 32, 3, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">Examen de candidatura</span></p>\r\n'),
(169, 33, 1, '<p>\r\n	<span style="font-family: Helvetica;">Se propone como eje central y articulador del proceso de ense&ntilde;anza y aprendizaje de los estudiantes, la</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	autoevalauci&oacute;n y co-evaluaci&oacute;n del trabajo desarrollado a lo largo de todo semestre, el cual se divide en los</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	3 momentos mencionados: 1) planificaci&oacute;n docente; 2) conducci&oacute;n del proceso de ense&ntilde;anza-aprendizajeevaluaci&oacute;n;</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	3) co-evaluaci&oacute;n y autoevaluaci&oacute;n docente. En este sentido, a lo largo del curso se propicia un proceso individual y colaborativo de reflexi&oacute;n, replanteamiento y mejora de la pr&aacute;ctica docente</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	considerando diferentes marcos conceptuales-metodol&oacute;gicos y recursos para la ense&ntilde;anza, el aprendizaje</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	y la evaluaci&oacute;n; utilizando como insumo evidencias o muestras relevantes del trabajo docente recopilados a</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	trav&eacute;s de la herramienta del portafolios. Adem&aacute;s el curso incluye una variedad de otras posibles estrategias</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	de ense&ntilde;anza y aprendizaje que pueden ser adoptados y adaptados por el profesor de acuerdo a su</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	criterio pedag&oacute;gico y a las caracter&iacute;sticas de los alumnos aprendices.</p>\r\n'),
(170, 34, 1, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">Exposici&oacute;n del profesor y de los alumnos.</span></p>\r\n'),
(171, 34, 2, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">Realizaci&oacute;n de controles de lectura.</span></p>\r\n'),
(172, 34, 3, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">Discusi&oacute;n de las secciones de los textos seleccionados por el profesor.</span></p>\r\n'),
(173, 35, 1, '<p>\r\n	<span style="font-family: Helvetica;">Exposici&oacute;n presencial del maestro e invitaci&oacute;n de expertos en la elaboraci&oacute;n de proyectos de</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	investigaci&oacute;n. Organizaci&oacute;n de un taller de elaboraci&oacute;n de proyectos de investigaci&oacute;n por expertos</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	de Conacyt.</p>\r\n'),
(174, 35, 2, '<p>\r\n	<span style="font-family: Helvetica;">Problematizaci&oacute;n a trav&eacute;s de seminario</span></p>\r\n'),
(175, 35, 3, '<p>\r\n	<span style="font-family: Helvetica;">Localizaci&oacute;n de fuentes de informaci&oacute;n.</span></p>\r\n'),
(176, 35, 4, '<p>\r\n	<span style="font-family: Helvetica;">Exposici&oacute;n de parte de los alumnos de sus avances.</span></p>\r\n'),
(177, 35, 5, '<p>\r\n	<span style="font-family: Helvetica;">Discusi&oacute;n grupal respecto de la pertinencia, claridad y coherencia de los avances presentados.</span></p>\r\n'),
(178, 35, 6, '<p>\r\n	<span style="font-family: Helvetica;">Evaluaci&oacute;n de la integraci&oacute;n del conocimiento mediante el proyecto de investigaci&oacute;n propuesto as&iacute;</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	como del art&iacute;culo sometido a dictamen.</p>\r\n'),
(179, 36, 1, '<p>\r\n	<span style="font-family: Helvetica; font-size: 10px;">&nbsp;Exposici&oacute;n presencial del maestro</span></p>\r\n'),
(180, 36, 2, '<p>\r\n	<span style="font-family: Helvetica; font-size: 10px;">&nbsp;Problematizaci&oacute;n desde los diferentes enfoques.</span></p>\r\n'),
(181, 36, 3, '<p>\r\n	<span style="font-family: Helvetica; font-size: 10px;">&nbsp;Localizaci&oacute;n de fuentes de informaci&oacute;n.</span></p>\r\n'),
(182, 36, 4, '<p>\r\n	<span style="font-family: Helvetica; font-size: 10px;">&nbsp;Lecturas individuales y discusi&oacute;n en trabajo colaborativo.</span></p>\r\n'),
(183, 36, 5, '<p>\r\n	<span style="font-family: Helvetica; font-size: 10px;">&nbsp;Exposici&oacute;n de temas por equipo e interacci&oacute;n grupal.</span></p>\r\n'),
(184, 36, 6, '<p>\r\n	<span style="font-family: Helvetica; font-size: 10px;">&nbsp;Ensayos escritos por cada unidad.</span></p>\r\n'),
(185, 39, 1, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">Exposici&oacute;n del profesor y de los alumnos.</span></p>\r\n'),
(186, 39, 2, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">Controles de lectura.</span></p>\r\n'),
(187, 39, 3, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">Foros de discusi&oacute;n de temas seleccionados por el profesor.</span></p>\r\n'),
(188, 39, 4, '<p>\r\n	<span style="font-family: Helvetica;">Trabajo mediante grupos colaborativo para la resoluci&oacute;n de problemas matem&aacute;ticos.</span></p>\r\n'),
(189, 39, 5, '<p>\r\n	<span style="font-family: Helvetica;">Identificar y elaborar estrategias de evaluaci&oacute;n y auto-evaluaci&oacute;n con base en el ABP en</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	matem&aacute;ticas.</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `Evaluacion`
--

CREATE TABLE IF NOT EXISTS `Evaluacion` (
  `EvaluacionId` int(10) unsigned NOT NULL,
  `ProgAcademicoId` int(10) unsigned NOT NULL,
  `EvaluacionOrden` int(10) unsigned DEFAULT NULL,
  `EvaluacionNombre` varchar(100) NOT NULL,
  `EvaluacionPeriodicidad` varchar(100) DEFAULT NULL,
  `EvaluacionPonderacion` varchar(100) NOT NULL COMMENT 'decimal?',
  `EvaluacionAbarca` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Evaluacion`
--

INSERT INTO `Evaluacion` (`EvaluacionId`, `ProgAcademicoId`, `EvaluacionOrden`, `EvaluacionNombre`, `EvaluacionPeriodicidad`, `EvaluacionPonderacion`, `EvaluacionAbarca`) VALUES
(1, 1, 1, 'Primer examen parcial', '1', '15%', 'Unidad 1'),
(2, 1, 2, 'Segundo examen parcial', '1', '15%', 'Unidad 2'),
(3, 1, 3, 'Tercer examen parcial', '1', '15%', 'Unidad 3'),
(4, 1, 4, 'Cuarto examen parcial', '1', '15%', 'Unidad 4'),
(5, 1, 5, 'Quinto examen parcial', '1', '15%', 'Unidad 5'),
(6, 1, 6, 'Tareas, asistencia y participación en clase', NULL, '10%', NULL),
(7, 1, 7, 'Examen ordinario', '1', '15%', 'Unidades 1-5'),
(8, 1, 8, 'TOTAL', NULL, '100%', NULL),
(9, 4, 1, 'Primer examen parcial', '1', '12%', 'Unidad 1'),
(10, 4, 2, 'Segundo examen parcial', '1', '12%', 'Unidad 2'),
(11, 4, 3, 'Tercer examen parcial', '1', '12%', 'Unidad 3'),
(12, 4, 4, 'Cuarto examen parcial', '1', '12%', 'Unidad 4'),
(13, 4, 5, 'Quinto examen parcial', '1', '12%', 'Unidad 5'),
(14, 4, 6, 'Sexto examen parcial', '1', '12%', 'Unidad 6'),
(15, 4, 7, 'Examen ordinario', '1', '28%', 'Unidades 1-6'),
(16, 5, 1, 'Primer examen parcial (teórico-práctico)', '1', '15%', 'Unidades 1 y 2'),
(17, 5, 2, 'Segundo examen parcial (teórico- práctico)', '1', '15%', 'Unidad 3'),
(18, 5, 3, 'Tercer examen parcial (Teórico- práctico)', '1', '15%', 'Unidad 4 '),
(19, 5, 4, 'Cuarto examen parcial (teórico- práctico)', '1', '15%', 'Unidades 5 y 6'),
(20, 5, 5, 'Proyecto final con evaluación oral', '1', '30%', 'Unidades 1-6'),
(21, 5, 6, 'Tareas, asistencia y participación en clase', NULL, '10%', NULL),
(22, 5, 7, 'TOTAL', NULL, '100%', NULL),
(23, 6, 1, 'Primer examen parcial', '1', '20%', 'Unidades 1-2'),
(24, 6, 2, 'Segundo examen parcial ', '1', '20%', 'Unidades 3-5'),
(25, 6, 3, 'Tercer examen parcial', '1', '30%', 'Unidad 6'),
(26, 6, 4, 'Examen ordinario', '1', '30%', 'Unidades 1-7'),
(27, 6, 5, 'TOTAL', NULL, '100%', NULL),
(28, 7, 1, 'Primer examen parcial', '1', '20%', 'Unidades 1-2'),
(29, 7, 2, 'Segundo examen parcial', '1', '20%', 'Unidad 3'),
(30, 7, 3, 'Tercer examen parcial', '1', '20%', 'Unidad 4 '),
(31, 7, 4, 'Examen ordinario', '1', '40%', 'Unidades1-4'),
(32, 7, 5, 'TOTAL', NULL, '100%', NULL),
(33, 8, 1, 'Primer examen parcial (70%) y tareas (30%)', '1', '21.25%', 'Unidades 1-2'),
(34, 8, 2, 'Segundo examen parcial (70%) y tareas (30%)', '1', '21.25%', 'Unidad 3'),
(35, 8, 3, 'Tercer examen parcial (70%) y tareas (30%)', '1', '21.25%', 'Unidad 4'),
(36, 8, 4, 'Cuarto examen parcial (70%) y tareas (30%)', '1', '21.25%', 'Unidad 5'),
(37, 8, 5, 'Examen ordinario', '1', '15%', 'Unidades 1-5'),
(38, 8, 6, 'TOTAL', NULL, '100%', NULL),
(39, 9, 1, 'Primer examen parcial', '1', '25%', 'Unidad 1-3'),
(40, 9, 2, 'Segundo examen parcial ', '1', '25%', 'Unidad 4-5'),
(41, 9, 3, 'Tercer examen parcial', '1', '25%', 'Unidades 6'),
(42, 9, 4, 'Examen ordinario', '1', '25%', 'Unidades 1-6'),
(43, 9, 5, 'TOTAL', NULL, '100%', NULL),
(44, 10, 1, 'Primer examen parcial', '1', '25%', 'Unidad 1-2'),
(45, 10, 2, 'Segundo examen parcial ', '1', '25%', 'Unidad 3-4'),
(46, 10, 3, 'Tercer examen parcial', '1', 'Unidad 5-6', '25%'),
(47, 10, 4, 'Examen ordinario', '1', '25%', 'Unidades 1-6'),
(48, 10, 5, 'TOTAL', NULL, '100%', NULL),
(49, 11, 1, 'Primer examen parcial', '1', '25%', 'Unidad 1'),
(50, 11, 2, 'Segundo examen parcial', '1', '25%', 'Unidad 2'),
(51, 11, 3, 'Tercer examen parcial', '1', '25%', 'Unidad 3'),
(52, 11, 4, 'Examen ordinario', '1', '25%', 'Unidad 4'),
(53, 11, 5, 'TOTAL', NULL, '100%', NULL),
(54, 12, 1, 'Primer examen parcial ', '1', '20%', 'Unidad 1'),
(55, 12, 2, 'Segundo examen parcial ', '1', '20%', 'Unidad 2'),
(56, 12, 3, 'Tercer examen parcial', '1', '20%', 'Unidad 3'),
(57, 12, 4, 'Examen ordinario', '1', '40%', 'Unidades 1-3'),
(58, 12, 5, 'TOTAL', NULL, '100%', NULL),
(59, 13, 1, 'Primer examen parcial', '1', '15%', 'Unidad 1 y 2'),
(60, 13, 2, 'Segundo examen parcial', '1', '15%', 'Unidad 3 y 4'),
(61, 13, 3, 'Tercer examen parcial', '1', '15%', 'Unidad 5 y 6'),
(62, 13, 4, 'Cuarto examen parcial', '1', '15%', 'Unidad 7 y 8'),
(63, 13, 5, 'Examen ordinario', '1', '40%', 'Unidades 1 y 8'),
(64, 13, 6, 'TOTAL', NULL, '100%', NULL),
(65, 14, 1, 'Primer examen parcial', '1', '20%', 'Unidad 1 '),
(66, 14, 2, 'Segundo examen parcial', '1', '20%', 'Unidad 2'),
(69, 14, 3, 'Tercer examen parcial', '1', '20%', 'Unidad 3'),
(70, 14, 4, 'Cuarto examen parcial', '1', '20%', 'Unidad 4'),
(71, 14, 5, 'Examen ordinario', '1', '20%', 'Unidades 1-4'),
(72, 14, 6, 'TOTAL', NULL, '100%', NULL),
(73, 15, 1, 'Primer examen parcial', '1', '20%', 'Unidad 1 '),
(74, 15, 2, 'Segundo examen parcial', '1', '20%', 'Unidad 2'),
(75, 15, 3, 'Tercer examen parcial', '1', '20%', 'Unidad 3'),
(76, 15, 4, 'Cuarto examen parcial', '1', '20%', 'Unidad 4'),
(77, 15, 5, 'Examen ordinario', '1', '20%', 'Unidades 1-4'),
(78, 15, 6, 'TOTAL', NULL, '100%', NULL),
(79, 16, 1, 'Primer examen parcial', '1', '25%', 'Unidad 1'),
(80, 16, 2, 'Segundo examen parcial', '1', '15%', 'Unidad 2'),
(81, 16, 3, 'Tercer examen parcial', '1', '10%', 'Unidad 3'),
(82, 16, 4, 'Cuarto examen parcial', '1', '30%', 'Unidad 4'),
(83, 16, 5, 'Examen ordinario', '1', '20%', 'Unidad 1-4'),
(84, 16, 6, 'TOTAL', NULL, '100%', NULL),
(85, 17, 1, 'Primer examen parcial', '1', '20%', 'Unidad 1'),
(86, 17, 2, 'Segundo examen parcial', '1', '20%', 'Unidad 2'),
(87, 17, 3, 'Tercer examen parcial', '1', '30%', 'Unidad 3'),
(88, 17, 4, 'Examen ordinario', '1', '30%', 'Unidades 1-3'),
(89, 17, 5, 'TOTAL', NULL, '100%', NULL),
(90, 18, 1, 'Primer examen parcial', '1', '20%', 'Unidad 1'),
(91, 18, 2, 'Segundo examen parcial ', '1', '20%', 'Unidad 2'),
(92, 18, 3, 'Tercer examen parcial', '1', '20%', 'Unidad 3'),
(93, 18, 4, 'Examen ordinario', '1', '40%', 'Unidades 1-3'),
(94, 18, 5, 'TOTAL', NULL, '100%', NULL),
(95, 19, 1, 'Primer examen parcial', '1', '15%', 'Unidad 1'),
(96, 19, 2, 'Segundo examen parcial', '1', '15%', 'Unidad 2'),
(97, 19, 3, 'Tercer examen parcial', '1', '15%', 'Unidad 3'),
(98, 19, 4, 'Cuarto examen parcial', '1', '15%', 'Unidad 4'),
(99, 19, 5, 'Examen ordinario', '1', '40%', 'Unidades 1-4'),
(100, 19, 6, 'TOTAL', NULL, '100%', NULL),
(101, 20, 1, 'Primer examen parcial', '1', '30%', 'Unidades 1-2'),
(102, 20, 2, 'Segundo examen parcial', '1', '20%', 'Unidad 3'),
(103, 20, 3, 'Tercer examen parcial', '1', '20%', 'Unidade 4'),
(104, 20, 4, 'Examen ordinario', '1', '30%', 'Unidades 1-4'),
(105, 20, 5, 'TOTAL', NULL, '100%', NULL),
(106, 21, 1, 'Primer examen parcial', '1', '20%', 'Unidad 1'),
(107, 21, 2, 'Segundo examen parcial', '1', '20%', 'Unidad 2'),
(108, 21, 3, 'Tercer examen parcial', '1', '20%', 'Unidad 3'),
(109, 21, 4, 'Proyecto final', '1', '40%', 'Unidades 1-3'),
(110, 21, 5, 'TOTAL', NULL, '100%', NULL),
(111, 22, 1, 'Primer examen parcial ', '1', '25%', 'Unidad 1'),
(112, 22, 2, 'Segundo examen parcial', '1', '25%', 'Unidad 2'),
(113, 22, 3, 'Tercer examen parcial', '1', '25%', 'Unidad 3'),
(114, 22, 4, 'Evaluación ordinaria', '1', '25%', 'Unidad 1-3'),
(115, 22, 5, 'TOTAL', NULL, '100%', NULL),
(116, 23, 1, 'Primer examen parcial', '1', '20%', 'Unidad 1'),
(117, 23, 2, 'Segundo examen parcial', '1', '30%', 'Unidad 2'),
(118, 23, 3, 'Tercer examen parcial', '1', '20%', 'Unidad 3'),
(119, 23, 4, 'Evaluación ordinaria', '1', '30%', 'Unidad 1-3'),
(120, 23, 5, 'TOTAL', NULL, '100%', NULL),
(121, 24, 1, 'Primer examen parcial', '1', '15%', 'Unidades 1 y 2'),
(123, 24, 2, 'Segundo examen parcial', '1', '15%', 'Unidad 3'),
(124, 24, 3, 'Tercer examen parcial', '1', '15%', 'Unidad 4'),
(125, 24, 4, 'Ensayos escritos y tareas', '1', '15% ', 'Unidades 1-4'),
(126, 24, 5, 'Proyecto final con aplicación de los conocimientos adquiridos en el semestre', '1', '40%', 'Unidades 1-4'),
(127, 24, 6, 'TOTAL', NULL, '100%', NULL),
(128, 25, 1, 'Primer examen parcial', '1', '15%', 'Unidad 1'),
(129, 25, 2, 'Segundo examen parcial', '1', '15%', 'Unidad 2'),
(130, 25, 3, 'Tercer examen parcial ', '1', '15%', 'Unidad 3'),
(131, 25, 4, 'Ensayos escritos y tareas', '3', '15%', 'Unidades 1-3'),
(132, 25, 5, 'Proyecto final con aplicación de los conocimientos adquiridos en el semestre', '1', '40%', 'Unidad 1-3'),
(133, 25, 6, 'TOTAL', NULL, '100%', NULL),
(134, 26, 1, 'Primer examen parcial ', '1', '10%', 'Unidad 1'),
(135, 26, 2, 'Segundo examen parcial', '1', '10%', 'Unidad 2'),
(136, 26, 3, 'Tercer examen parcial', '1', '10%', 'Unidad 3'),
(137, 26, 4, 'Reportes de lectura de los textos básicos y otras tareas', '4', '30%', 'Unidades 1-3'),
(138, 26, 5, 'Proyectos realizados en el curso', '1', '40%', 'Unidades 2-3'),
(139, 26, 6, 'TOTAL', NULL, '100%', NULL),
(140, 27, 1, 'Primer examen parcial', '1', '33%', 'Portafolio de productos elaborados para la Unidad 1'),
(141, 27, 2, 'Segundo examen parcial', '1', '33%', 'Portafolio de productos elaborados para la Unidad 2'),
(142, 27, 3, 'Tercer examen parcial ', '1', '34%', 'Portafolio de productos elaborados para la Unidad 3'),
(143, 27, 4, 'TOTAL', NULL, '100%', NULL),
(144, 28, 1, 'Examen parcial, escrito, don desarrollo de planteamientos correspondientes a los temas estudiados y ', '1', '20%', 'Unidad 1-2'),
(145, 28, 2, 'Examen parcial, escrito, don desarrollo de planteamientos correspondientes a los temas estudiados y ', '1', '20%', 'Unidad 3'),
(146, 28, 3, 'Examen parcial, escrito, don desarrollo de planteamientos correspondientes a los temas estudiados y ', '1', '20%', 'Unidad 4'),
(147, 28, 4, 'Examen final ordinario', '1', '40%', 'Unidad 1-4'),
(148, 28, 5, 'TOTAL', NULL, '100%', NULL),
(149, 29, 1, 'Examen parcial escrito, con desarrollo de planteamientos correspondientes a los temas estudiados y e', '1', '20%', 'Unidad 1-2'),
(150, 29, 2, 'Examen parcial escrito, con desarrollo de planteamientos correspondientes a los temas estudiados y e', '1', '20%', 'Unidad 3'),
(151, 29, 3, 'Examen parcial escrito, con desarrollo de planteamientos correspondientes a los temas estudiados y e', '1', '20%', 'Unidad 4-5'),
(152, 29, 4, 'Examen final ordinario del contenido del curso.', '1', '40%', 'Unidad 1-5'),
(153, 29, 5, 'TOTAL', NULL, '100%', NULL),
(154, 30, 1, 'Examen parcial, escrito, con desarrollo de ejercicios correspondientes a los temas estudiados.', '1', '20%', 'Unidad 1'),
(155, 30, 2, 'Examen parcial, escrito, con desarrollo de ejercicios correspondientes a los temas estudiados.', '1', '20%', 'Unidad 2'),
(156, 30, 3, 'Examen parcial, escrito, con desarrollo de ejercicios correspondientes a los temas estudiados.', '1', '20%', 'Unidad 3'),
(157, 30, 4, 'Examen final ordinario', '1', '40%', 'Unidad 1-3'),
(158, 30, 5, 'TOTAL', NULL, '100%', NULL),
(159, 31, 1, 'Examen parcial, escrito, con desarrollo de problemáticas correspondientes a los temas estudiados y e', '1', '30%', 'Unidad 1'),
(160, 31, 2, 'Examen parcial, escrito, con desarrollo de problemáticas correspondientes a los temas estudiados y e', '1', '30%', 'Unidad 2'),
(161, 31, 3, 'Examen parcial, escrito, con desarrollo de problemáticas correspondientes a los temas estudiados y e', '1', '30%', 'Unidad 3'),
(162, 31, 4, 'Examen Final Ordinario', '1', '10%', 'Unidades 1-3'),
(163, 31, 5, 'TOTAL', NULL, '100%', NULL),
(164, 32, 1, 'Realización y conclusión de trámites de titulación', NULL, '100%', NULL),
(165, 32, 2, 'Asistencia a coloquios', NULL, '10%', NULL),
(166, 32, 6, 'TOTAL', NULL, '100%', NULL),
(167, 32, 3, 'Participación en coloquios', NULL, '25%', NULL),
(168, 32, 4, 'Primer borrador final de tesis y Examen de candidatura', NULL, '50%', NULL),
(169, 32, 5, '2 presentaciones en power point (Coloquio de examen de candidatura)', NULL, '15%', NULL),
(170, 33, 1, 'Examen parcial, escrito, con desarrollo de ejercicios correspondientes a los temas estudiados.', '1', '25%', 'Primer parcial'),
(171, 33, 2, 'Examen parcial, escrito, con desarrollo de ejercicios correspondientes a los temas estudiados.', '1', '25%', 'Segundo parcial'),
(172, 33, 3, 'Examen parcial, escrito, con desarrollo de ejercicios correspondientes a los temas estudiados.', '1', '25%', 'Tercer parcial'),
(173, 33, 4, 'Examen final ordinario', '1', '25%', 'Evaluación final'),
(174, 33, 5, 'TOTAL', NULL, '100%', NULL),
(175, 34, 1, 'Examen parcial, escrito, con desarrollo de planteamientos correspondientes a los temas estudiados y ', '1', '30%', 'Unidad 1'),
(176, 34, 2, 'Examen parcial, escrito, con desarrollo de planteamientos correspondientes a los temas estudiados y ', '1', '30%', 'Unidad 2'),
(177, 34, 3, 'Examen parcial, escrito, con desarrollo de planteamientos correspondientes a los temas estudiados y ', '1', '30%', 'Unidad 3'),
(178, 34, 4, 'Examen Final Ordinario', '1', '10%', 'Unidades 1-3'),
(179, 34, 5, 'TOTAL', NULL, '100%', NULL),
(180, 35, 1, 'Primer examen parcial ', '1', '15%', 'Unidades 1-2'),
(181, 35, 2, 'Segundo examen parcial', '1', '15%', 'Unidad 3'),
(182, 35, 3, 'Tercer examen parcial', '15%', '15%', 'Unidad 4'),
(183, 35, 4, 'Ensayos escritos y tareas', '4', '15%', 'Unidades 1-4'),
(184, 35, 6, 'Proyecto final con aplicación de los conocimientos adquiridos en el semestre', '1', '40%', 'Unidades 1-4'),
(185, 36, 1, 'Primer examen parcial', '1', '25%', 'Unidades 1-2'),
(186, 36, 2, 'Segundo examen parcial', '1', 'Unidades 3-4', '25%'),
(187, 36, 3, 'Tercer examen parcial', '1', '25%', 'Unidad 5 '),
(188, 36, 4, 'Ensayos, escritos y tareas', '4', '25%', 'Unidades 1-5'),
(189, 36, 5, 'TOTAL', NULL, '100%', NULL),
(190, 37, 1, 'Examen parcial, escrito, con desarrollo de ejercicios correspondientes a los temas estudiados. ', NULL, '', 'Unidades 1-2'),
(191, 37, 2, 'Examen parcial, escrito, con desarrollo de ejercicios correspondientes a los temas estudiados. ', NULL, '', 'Unidades 3-4'),
(192, 37, 3, 'Examen parcial, escrito, con desarrollo de ejercicios correspondientes a los temas estudiados. ', NULL, '', 'Unidades 4-5'),
(193, 38, 1, 'Examen parcial, escrito, con desarrollo de ejercicios correspondientes a los temas estudiados. ', NULL, '', 'Unidades 1-2'),
(194, 38, 2, 'Examen parcial, escrito, con desarrollo de ejercicios correspondientes a los temas estudiados. ', NULL, '', 'Unidades 3-4'),
(195, 38, 3, 'Examen parcial, escrito, con desarrollo de ejercicios correspondientes a los temas estudiados. ', NULL, '', 'Unidades 4-5'),
(196, 39, 1, 'Examen parcial, escrito, con desarrollo de problemáticas correspondientes a los temas estudiados y e', '1', '30%', 'Unidad 1 y 2'),
(197, 39, 2, 'Examen parcial, escrito, con desarrollo de problemáticas correspondientes a los temas estudiados y e', '1', '30%', 'Unidad 3'),
(198, 39, 3, 'Examen parcial, escrito, con desarrollo de problemáticas correspondientes a los temas estudiados y e', '1', '30%', 'Unidad 4'),
(199, 39, 4, 'Examen final ordinario', '1', '10%', 'Unidades 1-4'),
(200, 39, 5, 'TOTAL', NULL, '100%', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Facultad`
--

CREATE TABLE IF NOT EXISTS `Facultad` (
  `FacultadId` int(10) unsigned NOT NULL,
  `FacultadNombre` varchar(100) NOT NULL,
  `FacultadCiudad` varchar(30) NOT NULL,
  `FacultadDireccion` varchar(100) NOT NULL,
  `FacultadTel` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Facultad`
--

INSERT INTO `Facultad` (`FacultadId`, `FacultadNombre`, `FacultadCiudad`, `FacultadDireccion`, `FacultadTel`) VALUES
(1, 'Facultad de Ciencias', 'Zona Universitaria', 'Lateral Av. Salvador Nava s/n CP 78290', '+52-444-8262491, ext 2932');

-- --------------------------------------------------------

--
-- Table structure for table `Lectura`
--

CREATE TABLE IF NOT EXISTS `Lectura` (
  `LectId` int(10) unsigned NOT NULL,
  `LecturaNombre` varchar(255) NOT NULL,
  `TemaId` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Licenciatura`
--

CREATE TABLE IF NOT EXISTS `Licenciatura` (
  `LicenciaturaId` int(10) unsigned NOT NULL,
  `FacultadId` int(10) unsigned NOT NULL,
  `LicenciaturaNombre` varchar(50) NOT NULL,
  `LicenciaturaDescripcion` text,
  `LicenciaturaSemestres` tinyint(2) unsigned NOT NULL COMMENT 'Numero de semestres de la licenciatura'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Licenciatura`
--

INSERT INTO `Licenciatura` (`LicenciaturaId`, `FacultadId`, `LicenciaturaNombre`, `LicenciaturaDescripcion`, `LicenciaturaSemestres`) VALUES
(1, 1, 'Licenciatura en Matemática Educativa', '<p>\r\n	&nbsp;</p>\r\n<h2 style="box-sizing: border-box; margin: 0px 0px 14.6875px; font-weight: 300; font-family: &quot;Segoe UI&quot;, Segoe, Tahoma, Arial, Helvetica-light, sans-serif; color: rgb(32, 114, 184); font-size: 1.4em; line-height: 1.4; text-align: justify;">\r\n	Este profesional, adem&aacute;s de dominar el&nbsp;conocimiento matem&aacute;tico, ser&aacute; un experto&nbsp;en c&oacute;mo se da su aprendizaje: no es lo&nbsp;mismo saber matem&aacute;ticas que saber&nbsp;ense&ntilde;ar matem&aacute;ticas.​</h2>\r\n<h2 style="box-sizing: border-box; margin: 0px 0px 14.6875px; font-weight: 300; font-family: &quot;Segoe UI&quot;, Segoe, Tahoma, Arial, Helvetica-light, sans-serif; color: rgb(32, 114, 184); font-size: 1.4em; line-height: 1.4;">\r\n	<span style="box-sizing: border-box; font-weight: 700;">Contacto:&nbsp;​</span>coordinacion.matematicaeducativa@fc.uaslp.mx​</h2>\r\n', 9);

-- --------------------------------------------------------

--
-- Table structure for table `LineaConocimiento`
--

CREATE TABLE IF NOT EXISTS `LineaConocimiento` (
  `LineaId` int(10) unsigned NOT NULL,
  `LineaNombre` varchar(50) NOT NULL,
  `LineaDescripcion` text,
  `LicenciaturaId` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Materia`
--

CREATE TABLE IF NOT EXISTS `Materia` (
  `MateriaId` int(10) unsigned NOT NULL,
  `LicenciaturaId` int(10) unsigned NOT NULL,
  `MateriaNombre` varchar(100) NOT NULL,
  `MateriaCodigo` int(10) unsigned DEFAULT NULL,
  `LineaId` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Materia`
--

INSERT INTO `Materia` (`MateriaId`, `LicenciaturaId`, `MateriaNombre`, `MateriaCodigo`, `LineaId`) VALUES
(1, 1, 'Álgebra Matricial ', NULL, NULL),
(2, 1, 'Cálculo Multivariado', NULL, NULL),
(3, 1, 'Programación básica  (Computación)', NULL, NULL),
(4, 1, 'Probabilidad y Estadística básica', NULL, NULL),
(5, 1, 'Taller de integración de conocimientos I (Proceso de enseñanza-aprendizaje)', NULL, NULL),
(6, 1, 'Ecuaciones Diferenciales', NULL, NULL),
(7, 1, 'Cálculo Superior', NULL, NULL),
(8, 1, 'Métodos numéricos elementales', NULL, NULL),
(9, 1, 'Corrientes contemporáneas de la didáctica de las matemáticas', NULL, NULL),
(10, 1, 'Taller de integración de conocimientos II (Problematización) ', NULL, NULL),
(11, 1, 'Matemáticas discretas ', NULL, NULL),
(12, 1, 'Temas selectos de matemáticas', NULL, NULL),
(13, 1, 'Epistemología de las matemáticas', NULL, NULL),
(14, 1, 'Fundamentos psicológicos del aprendizaje de las matemáticas', NULL, NULL),
(15, 1, 'Taller de integración de conocimientos III (Contextualización)', NULL, NULL),
(16, 1, 'Estructuras algebraicas ', NULL, NULL),
(17, 1, 'Variable compleja I', NULL, NULL),
(18, 1, 'Tecnología en la matemática educativa ', NULL, NULL),
(19, 1, 'Metodología de la enseñanza de la matemática I', NULL, NULL),
(20, 1, 'Práctica Docente I', NULL, NULL),
(21, 1, 'Taller de integración de conocimientos IV (Lenguaje)', NULL, NULL),
(22, 1, 'Introducción a la investigación educativa', NULL, NULL),
(23, 1, 'Metodología de la enseñanza en la matemática II', NULL, NULL),
(24, 1, 'Práctica docente II', NULL, NULL),
(25, 1, 'Taller de integración de conocimientos V (Diseño)', NULL, NULL),
(26, 1, 'Investigación en matemática educativa', NULL, NULL),
(27, 1, 'Técnica y modelos de evaluación', NULL, NULL),
(28, 1, 'Práctica Docente III', NULL, NULL),
(29, 1, 'Taller de integración de conocimientos VI (Implementación)', NULL, NULL),
(30, 1, 'Seminario de Titulación', NULL, NULL),
(31, 1, 'Práctica Docente IV', NULL, NULL),
(32, 1, 'Análisis del Sistema Educativo (Optativa III)', NULL, NULL),
(33, 1, 'Reportes de investigación: Desarrollo y redacción (Optativa III) ', NULL, NULL),
(34, 1, 'Enfoques y modelos educativos para el aprendizaje de las matemáticas (Optativa IV o V)', NULL, NULL),
(35, 1, 'Matemática en contexto (Optativa IV o V)', NULL, NULL),
(36, 1, 'Recursos educativos abiertos y diseño didáctico (Optativa IV o V)', NULL, NULL),
(37, 1, 'Matemática en Contexto', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ModifAprobada`
--

CREATE TABLE IF NOT EXISTS `ModifAprobada` (
  `ModifAprobadabId` int(11) NOT NULL,
  `ModifId` int(10) unsigned NOT NULL COMMENT 'Modificacion aprobada',
  `UsuarioId` int(10) unsigned NOT NULL COMMENT 'Usuario que aprueba la modificacion',
  `ModifAprobadaFecha` date NOT NULL,
  `ProgAcademicoId` int(10) unsigned NOT NULL COMMENT 'Programa Academico en el que ya esta incluida la modificacion',
  `ModifAprobadaHora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Modificacion`
--

CREATE TABLE IF NOT EXISTS `Modificacion` (
  `ModifId` int(10) unsigned NOT NULL,
  `ApartadoId` int(10) unsigned NOT NULL,
  `ModifSugerencia` text NOT NULL,
  `ModifJustificacion` text NOT NULL,
  `UsuarioId` int(10) unsigned NOT NULL COMMENT 'Usuario que sugiere la modificacion',
  `EstdModifId` int(10) unsigned NOT NULL,
  `ProgAcademicoId` int(10) unsigned NOT NULL COMMENT 'Programa academico sobre el que se sugiere la modificacion',
  `CriterioId` int(10) unsigned NOT NULL,
  `ModifFecha` date NOT NULL COMMENT 'Fecha que se sugiere la modificacion',
  `ModifHora` time NOT NULL COMMENT 'Hora a la que se sugiere la modificacion'
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Modificacion`
--

INSERT INTO `Modificacion` (`ModifId`, `ApartadoId`, `ModifSugerencia`, `ModifJustificacion`, `UsuarioId`, `EstdModifId`, `ProgAcademicoId`, `CriterioId`, `ModifFecha`, `ModifHora`) VALUES
(22, 3, 'Proponer una planificación de aula: de unidad y de clase.\r\n. Aplicar los métodos didácticos y pedagógicos adecuados.\r\n. Realizar la práctica docente.\r\n. Confrontar las experiencias en la práctica docente con la teoría trabajada previamente.\r\n. Elaborar un diseño para el levantamiento de datos durante las observaciones y su posterior interpretación. \r\n', 'El objetivo general anterior estaba mal dosificado en atención a las materias posteriores', 47, 1, 22, 6, '2018-05-08', '11:16:01'),
(23, 3, 'Revisar las principales corrientes teóricas de enseñanza de la ciencia y enseñanza de las matemáticas', 'Es necesario cambiar el objetivo de la unidad de fundamentos teóricos, de tal manera que se enfoque a la enseñanza de las ciencias y las matemáticas ', 47, 1, 22, 2, '2018-05-08', '11:24:48'),
(24, 3, ' Unidad: Práctica Docente\r\nObjetivo: Realizar una estancia de práctica docente en escuelas de educación media y media superior (1 vez por semana, en total 8 sesiones) en las que realice actividades de registro y observación del trabajo docente. Después discutir mediante la técnica de puesta en común con los otros prácticantes y el catedrático responsable. Establecer reflexiones que relaciones teoría (revisada en la segunda unidad) y práctica (realizada en la tercer unidad.', 'Eliminar la Unidad de Microenseñanza porque implica sólo practicar en situaciones irreales o simuladas la secuencia de una clase. Es imprescindible que los estudiantes practiquen en la realidad de escuelas de educación media y media superior y con alumnos de matemáticas.', 47, 1, 22, 2, '2018-05-08', '12:01:24');

-- --------------------------------------------------------

--
-- Table structure for table `ModifRechazada`
--

CREATE TABLE IF NOT EXISTS `ModifRechazada` (
  `ModifReczadaId` int(11) NOT NULL,
  `ModifId` int(10) unsigned NOT NULL COMMENT 'Modificación que fue rechazada',
  `UsuarioId` int(10) unsigned NOT NULL COMMENT 'Usuario que rechaza la modificacion',
  `ModifRechazadaFecha` date NOT NULL,
  `ModifRechazadaHora` time NOT NULL,
  `ModifRechazadaJustificacion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ModifRespuesta`
--

CREATE TABLE IF NOT EXISTS `ModifRespuesta` (
  `ModifRespuestaId` int(10) unsigned NOT NULL,
  `ModifRespuestaTexto` text NOT NULL,
  `ModifRespuestaFecha` date NOT NULL,
  `ModifRespuestaHora` time NOT NULL,
  `ModifId` int(10) unsigned NOT NULL COMMENT 'Modificación sugerida sobre la que se responde',
  `UsuarioId` int(10) unsigned NOT NULL COMMENT 'Usuario que responde a la modificacion sugerida'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `NivelUsuario`
--

CREATE TABLE IF NOT EXISTS `NivelUsuario` (
  `NivelUsuId` int(10) unsigned NOT NULL,
  `NivelUsuNombre` varchar(50) NOT NULL,
  `NivelUsuPrivilegios` tinytext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `NivelUsuario`
--

INSERT INTO `NivelUsuario` (`NivelUsuId`, `NivelUsuNombre`, `NivelUsuPrivilegios`) VALUES
(1, 'Visitante', ''),
(2, 'Revisor', ''),
(3, 'Supervisor', ''),
(4, 'Administrador', ''),
(5, 'Super Administrador', '');

-- --------------------------------------------------------

--
-- Table structure for table `ProgAcademicoCompProf`
--

CREATE TABLE IF NOT EXISTS `ProgAcademicoCompProf` (
  `Id` int(10) unsigned NOT NULL,
  `ProgAcademicoId` int(10) unsigned NOT NULL,
  `CompProfId` int(10) unsigned NOT NULL,
  `priority` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ProgAcademicoCompTransv`
--

CREATE TABLE IF NOT EXISTS `ProgAcademicoCompTransv` (
  `Id` int(10) unsigned NOT NULL,
  `CompTransvId` int(10) unsigned NOT NULL,
  `ProgAcademicoId` int(10) unsigned NOT NULL,
  `priority` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ProgramaAcademico`
--

CREATE TABLE IF NOT EXISTS `ProgramaAcademico` (
  `ProgAcademicoId` int(10) unsigned NOT NULL,
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
  `ProgAcademicoVersion` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ProgramaAcademico`
--

INSERT INTO `ProgramaAcademico` (`ProgAcademicoId`, `MateriaId`, `ProgAcademicoSemestre`, `ProgAcademicoHrsTeoria`, `ProgAcademicoHrsPractica`, `ProgAcademicoHrsAdicional`, `ProgAcademicoCreditos`, `ProgAcademicoObjGeneral`, `TipoMateriaId`, `TipoPropCurrId`, `ProgAcademicoCompartido`, `ProgAcademicoSeriado`, `ProgAcademicoVersion`) VALUES
(1, 1, 3, 4, 1, 3, 8, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">- Resolver sistemas de ecuaciones lineales utilizando las t&eacute;cnicas m&aacute;s comunes.</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	- Que sea capaz de operar con matrices y conozca sus principales propiedades. Que</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	conozca las bases del &aacute;lgebra lineal y las propiedades de los vectores en R<span style="font-stretch: normal; font-size: 7px; line-height: normal;">n</span>.</p>\r\n', NULL, NULL, 0, 0, '2018-01-10'),
(4, 2, 3, 4, 1, 3, 8, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">- Utilizar los conceptos b&aacute;sicos del C&aacute;lculo Diferencial e Integral a funciones de varias</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	variables.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	- Plantear y solucionar problemas de matem&aacute;ticas, f&iacute;sica e ingenier&iacute;a.</p>\r\n', NULL, NULL, 0, 0, '2018-01-10'),
(5, 3, 3, 3, 2, 3, 8, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">- Estudiar y aplicar los conceptos b&aacute;sicos de programaci&oacute;n estructurada en un lenguaje</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	de alto nivel.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	- Dise&ntilde;ar, implementar, y depurar algoritmos sencillos en lenguaje C/C++.</p>\r\n', NULL, NULL, 0, 0, '2018-01-10'),
(6, 4, 3, 3, 2, 3, 8, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">- Aplicar los conceptos b&aacute;sicos de la probabilidad y la estad&iacute;stica para resolver&nbsp;</span><span style="font-family: Helvetica; font-size: 11px;">problemas sencillos relacionados a las ciencias.</span></p>\r\n<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">- Pensar en t&eacute;rminos de poblaciones y distribuciones.</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	- Interpretar resultados experimentales y computacionales utilizando m&eacute;todos de</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	an&aacute;lisis estad&iacute;stico.</p>\r\n', NULL, NULL, 0, 0, '2018-01-10'),
(7, 5, 3, 3, 2, 3, 8, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">- Distinguir un proceso de aprendizaje de un proceso de ense&ntilde;anza.</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	- Diferenciar los enfoques de procesos de ense&ntilde;anza-aprendizaje.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	- Tener claridad en el concepto de aprendizaje.</p>\r\n', NULL, NULL, 0, 0, '2018-01-10'),
(8, 6, 4, 4, 1, 3, 8, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">- Resolver ecuaciones diferenciales y conocer aplicaciones.</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	- Proporcionar y desarrollar las herramientas que permitan aplicar las ecuaciones</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	diferenciales en el modelado de sistemas para que el estudiante comprenda la</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	capacidad de predicci&oacute;n de resultados reales de un modelo.</p>\r\n', NULL, NULL, 0, 0, '2018-01-10'),
(9, 7, 4, 3, 2, 3, 8, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">- Describir con formalidad algunos temas del c&aacute;lculo elemental.</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	- Dar un enfoque moderno y sistem&aacute;tico al c&aacute;lculo diferencial e integral de funciones y</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	transformaciones de varias variables.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	- Aplicar t&eacute;cnicas num&eacute;ricas y anal&iacute;ticas para ayudar a resolver algunos de los</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	problemas de aplicaciones de la matem&aacute;tica.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	- Lograr que los estudiantes est&eacute;n preparados para estudiar por s&iacute; mismos literatura</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	matem&aacute;tica posterior al c&aacute;lculo.</p>\r\n', NULL, NULL, 0, 0, '2018-01-10'),
(10, 8, 4, 3, 2, 3, 8, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">- Comprender y aplicarlos m&eacute;todos num&eacute;ricos.</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	- Analizar los diferentes tipos y fuentes de error.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	- Solucionar problemas de ecuaciones de una variable a trav&eacute;s de varios m&eacute;todos.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	- Utilizar m&eacute;todos para determinar la representaci&oacute;n expl&iacute;cita de un polinomio</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	interpolante a partir de datos.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	- Aproximar la derivada y la integral de una funci&oacute;n.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	- Resolver y plantear problemas lineales.</p>\r\n', NULL, NULL, 0, 0, '2018-01-10'),
(11, 9, 4, 3, 2, 3, 8, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">- Analizar y discutir sobre las principales corrientes actuales de la did&aacute;ctica de las</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	matem&aacute;ticas.</p>\r\n', NULL, NULL, 0, 0, '2018-01-10'),
(12, 10, 4, 3, 2, 3, 8, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">- Diferenciar un problema y problematizar.</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	- Comprender los elementos que abarca un proceso de problematizaci&oacute;n.</p>\r\n', NULL, NULL, 0, 0, '2018-01-10'),
(13, 11, 5, 3, 2, 3, 8, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">-Utilizar t&eacute;cnicas de razonamiento combinatorio y m&eacute;todos discretos.</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	-Emplear t&eacute;cnicas y procedimientos avanzados en la soluci&oacute;n de problemas.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	Adaptar estrategias aprendidas en la resoluci&oacute;n de problemas.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	-Elaborar conjeturas, comunicarlas y validarlas.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	-Incrementar sus competencias matem&aacute;ticas en el dominio de contenidos matem&aacute;ticos, en</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	el pensamiento complejo y en el auto-aprendizaje de temas avanzados de</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	matem&aacute;ticas.</p>\r\n', NULL, NULL, 0, 0, '2018-01-10'),
(14, 12, 5, 3, 2, 3, 8, '<p>\r\n	<span style="font-family: Helvetica;">-Aplicar los conocimientos fundamentales sobre diversos t&oacute;picos de Matem&aacute;ticas,</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	entre los que se encuentran la variable compleja, las funciones especiales, y</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	las transformadas integrales.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Interpretar, plantear y resolver problemas en diversas aplicaciones en las ciencias</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	y en la ingenier&iacute;a.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Incrementar sus competencias matem&aacute;ticas en el dominio de contenidos</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	matem&aacute;ticos, en el pensamiento abstracto y en el auto-aprendizaje de temas</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	avanzados de matem&aacute;ticas.</p>\r\n', NULL, NULL, 0, 0, '2018-01-10'),
(15, 13, 5, 3, 2, 3, 8, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">-Conocer y analizar la componente epistemol&oacute;gica de las matem&aacute;ticas, as&iacute; como sus</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	implicaciones en la did&aacute;ctica actual.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	Implementar sus competencias en el dominio del an&aacute;lisis de problem&aacute;ticas del aprendizaje</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	de las matem&aacute;ticas, en la construcci&oacute;n de alternativas did&aacute;cticas de soluci&oacute;n a las</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	problem&aacute;ticas actuales del proceso de ense&ntilde;anza-aprendizaje de las matem&aacute;ticas y</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	principalmente en la de favorecer el paso de un conocimiento previo a uno nuevo</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	adquirido.</p>\r\n', NULL, NULL, 0, 0, '2018-01-10'),
(16, 14, 5, 3, 2, 3, 8, '<p>\r\n	<span style="font-family: Helvetica;">-Conocer y estar en condiciones de discutir y analizar los fundamentos de car&aacute;cter</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	psicol&oacute;gico que intervienen en los procesos de ense&ntilde;anza y aprendizaje de</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	las matem&aacute;ticas.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Desarrollar sus competencias tutoriales y docentes que le permita la b&uacute;squeda de</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	un entorno social agradable que favorezca el aprendizaje.</p>\r\n', NULL, NULL, 0, 0, '2018-01-10'),
(17, 15, 5, 3, 2, 3, 8, '<p>\r\n	<span style="font-family: Helvetica;">-Ubicar las actividades did&aacute;cticas dentro de un contexto.</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Identificar los elementos necesarios para contextualizar y comprender la relaci&oacute;n</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	entre contexto y actividades did&aacute;cticas en los procesos de aprendizaje.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Incrementar sus competencias docentes en el dominio de los fundamentos</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	conceptuales del aprendizaje, en el manejo de metodolog&iacute;as centradas en el</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	aprendizaje, enfoques de evaluaci&oacute;n del aprendizaje y en la construcci&oacute;n de</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	alternativas did&aacute;cticas.</p>\r\n', NULL, NULL, 0, 0, '2018-01-10'),
(18, 16, 6, 3, 2, 3, 8, '<p>\r\n	<span style="font-family: Helvetica;">-dentificar estructuras algebraicas.</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Utilizar y aplicar el pensamiento abstracto.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Incrementar sus competencias matem&aacute;ticas en el dominio de contenidos</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	matem&aacute;ticos, en el pensamiento complejo y en el auto-aprendizaje de temas</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	avanzados de matem&aacute;ticas.</p>\r\n', NULL, NULL, 0, 0, '2018-01-10'),
(19, 17, 6, 3, 2, 3, 8, '<p>\r\n	<span style="font-family: Helvetica;">-Resolver y plantear problemas, tanto en su propia teor&iacute;a como en la modelaci&oacute;n.</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Predecir fen&oacute;menos f&iacute;sicos espec&iacute;ficos.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Incrementar sus competencias matem&aacute;ticas en el dominio de contenidos</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	matem&aacute;ticos, en el pensamiento abstracto y en el auto-aprendizaje de temas</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	avanzados de matem&aacute;ticas.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Desarrollar sus competencias del uso y aplicaci&oacute;n de tecnolog&iacute;a en la resoluci&oacute;n</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	de problemas matem&aacute;ticos avanzados.</p>\r\n', NULL, NULL, 0, 0, '2018-01-10'),
(20, 18, 6, 3, 2, 3, 8, '<p>\r\n	<span style="font-family: Helvetica;">-Conocer y ser capaz de aplicar recursos tecnol&oacute;gicos educativos a nivel b&aacute;sico en</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	situaciones de ense&ntilde;anza y aprendizaje de las matem&aacute;ticas.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Incorporar enfoques educativos innovadores, que el estudiante utilice y sea</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	capacitador de nuevas tecnolog&iacute;as, as&iacute; como dise&ntilde;ador de nuevas t&eacute;cnicas.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Utilizar y desarrollar sus competencias tecnol&oacute;gicas que le permita la autonom&iacute;a</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	en el manejo de diverso software especializado as&iacute; como del uso de internet.</p>\r\n', NULL, NULL, 0, 0, '2018-01-10'),
(21, 19, 6, 3, 2, 3, 8, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">-Conocer los elementos metodol&oacute;gicos para la docencia y la Investigaci&oacute;n.</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	-Identificar los elementos para dise&ntilde;ar los planes y programas educativos de la ense&ntilde;anza</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	de las matem&aacute;ticas en los niveles b&aacute;sicos del &aacute;mbito educativo.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	-Adquirir y mejorar sus competencias docentes en el manejo de modelos y metodolog&iacute;as</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	centradas en el aprendizaje, as&iacute; como en la aplicaci&oacute;n de t&eacute;cnicas de evaluaci&oacute;n del</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	aprendizaje.</p>\r\n', NULL, NULL, 0, 0, '2018-01-10'),
(22, 20, 6, 1, 4, 3, 8, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">-Proponer una planificaci&oacute;n de aula: de unidad y de clase.</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	-Solventar las dificultades que se presentaren en el desarrollo de las actividades con los alumnos en</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	clases.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	-Aplicar los m&eacute;todos did&aacute;cticos y pedag&oacute;gicos adecuados en el desarrollo de la clase.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	-Aplicar y desarrollar sus competencias docentes y matem&aacute;ticas en el manejo de modelos y</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	metodolog&iacute;as centradas en el aprendizaje, t&eacute;cnicas did&aacute;cticas y evaluaci&oacute;n del aprendizaje.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	-Desarrollar sus competencias en la detecci&oacute;n de problem&aacute;ticas del aprendizaje de las matem&aacute;ticas</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	y en la construcci&oacute;n de alternativas did&aacute;cticas para solucionarlas, as&iacute; como de la realidad</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	grupal de los estudiantes.</p>\r\n', NULL, NULL, 0, 0, '2018-01-10'),
(23, 21, 6, 3, 2, 3, 8, '<p>\r\n	<span style="font-family: Helvetica;">-Comprender la vinculaci&oacute;n entre lenguaje y pensamiento en los procesos de</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	aprendizaje.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Identificar los diferentes tipos de lenguaje implicado en los procesos de</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	aprendizaje Matem&aacute;ticos.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Propiciar el paso de lenguaje com&uacute;n a lenguaje matem&aacute;tico en las actividades</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	did&aacute;cticas.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Incrementar sus competencias docentes en el dominio de los fundamentos</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	conceptuales del aprendizaje, en el manejo de metodolog&iacute;as centradas en el</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	aprendizaje, enfoques de evaluaci&oacute;n del aprendizaje y en la construcci&oacute;n de</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	alternativas did&aacute;cticas.</p>\r\n', NULL, NULL, 0, 0, '2018-01-10'),
(24, 22, 7, 3, 2, 3, 8, '<p>\r\n	<span style="font-family: Helvetica;">-Integrar una propuesta de indagaci&oacute;n fundamentada en m&eacute;todos y referentes</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	te&oacute;ricos acordes a la problem&aacute;tica tratada.</p>\r\n', NULL, NULL, 0, 0, '2018-01-10'),
(25, 23, 7, 3, 2, 3, 8, '<p>\r\n	<span style="font-family: Helvetica;">-Conocer los elementos metodol&oacute;gicos para la docencia y la investigaci&oacute;n</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	especializada en el &aacute;rea.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Conocer los elementos para dise&ntilde;ar los planes y programas educativos de la</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	ense&ntilde;anza de las matem&aacute;ticas en los niveles b&aacute;sicos del &aacute;mbito educativo.</p>\r\n', NULL, NULL, 0, 0, '2018-01-10'),
(26, 24, 7, 3, 2, 3, 8, '<p>\r\n	<span style="font-family: Helvetica;">-Ejercitar la planificaci&oacute;n de aula: de unidad y de clase.</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Solventar las dificultades que se presentaren en el desarrollo de las</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	actividades con los alumnos en clases.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Aplicar los m&eacute;todos did&aacute;cticos y pedag&oacute;gicos adecuados en el desarrollo de la</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	clase.</p>\r\n', NULL, NULL, 0, 0, '2018-01-10'),
(27, 25, 7, 3, 2, 3, 8, '<p>\r\n	<span style="font-family: Helvetica;">-Plantear la articulaci&oacute;n de actividades en una propuesta did&aacute;ctica que</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	favorezca aprendizajes significativos e identificar los elementos de un proceso</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	de construcci&oacute;n del conocimiento.</p>\r\n', NULL, NULL, 0, 0, '2018-01-10'),
(28, 26, 8, 3, 2, 3, 8, '<p>\r\n	<span style="font-family: Helvetica;">-Conocer&aacute; los elementos esenciales de la investigaci&oacute;n particular sobre los</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	procesos de ense&ntilde;anza y aprendizaje de las matem&aacute;ticas.</p>\r\n', NULL, NULL, 0, 0, '2018-01-10'),
(29, 27, 8, 3, 2, 3, 8, '<p>\r\n	<span style="font-family: Helvetica;">-Conocer los elementos te&oacute;ricos y metodol&oacute;gicos de los enfoques de la</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	evaluaci&oacute;n educativa.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Identificar, explicar y analizar las caracter&iacute;sticas de la evaluaci&oacute;n cuantitativa y</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	de la evaluaci&oacute;n cualitativa.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Utilizar los modelos, t&eacute;cnicas y m&eacute;todos de evaluaci&oacute;n en el dise&ntilde;o de planes</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	y programas de evaluaci&oacute;n educativa.</p>\r\n', NULL, NULL, 0, 0, '2018-01-10'),
(30, 28, 8, 1, 4, 3, 8, '<p>\r\n	<span style="font-family: Helvetica;">-Llevar a cabo procesos sistem&aacute;ticos de investigaci&oacute;n, evaluaci&oacute;n y mejora de</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	su propia pr&aacute;ctica docente considerando todos los &aacute;mbitos de dicha pr&aacute;ctica</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	(planificaci&oacute;n, conducci&oacute;n del procesos de ense&ntilde;anza aprendizaje,</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	evaluaci&oacute;n), y distintos marcos de interpretaci&oacute;n y metodolog&iacute;as para la</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	investigaci&oacute;n, el aprendizaje, la pr&aacute;ctica y reflexi&oacute;n docente.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Investigar y reflexionar de manera individual y colaborativa sobre su propia</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	pr&aacute;ctica docente y con base en ello: 1) proponer formas y estrategias para</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	solventar las dificultades presentes en el desarrollo de sus actividades</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	docentes; 2) proponer y aplicar m&eacute;todos did&aacute;cticos y pedag&oacute;gicos adecuados</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	en el desarrollo de la clase con base en marcos de interpretaci&oacute;n del</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	aprendizaje en el &aacute;rea matem&aacute;tica; 3) proponer diferentes y m&aacute;s adecuadas</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	formas de planificaci&oacute;n de aula: de unidad y de clase; 4) proponer m&eacute;todos</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	m&aacute;s adecuados de evaluaci&oacute;n del aprendizaje de sus alumnos; ser capaz de</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	replantear y reconducir su propia pr&aacute;ctica docente.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Reconocer en la ense&ntilde;anza de las matem&aacute;ticas un proceso complejo en el</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	cual intervienen una gran cantidad de factores did&aacute;cticos, cognitivos,</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	contextuales, institucionales, socioculturales, psicol&oacute;gicos y emocionales, que</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	modulan de manera diversa la pr&aacute;ctica docente y que, por lo tanto, es</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	necesario llevar a cabo procesos permanentes de investigaci&oacute;n, reflexi&oacute;n y</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	mejora de la propia pr&aacute;ctica considerando como eje central el aprendizaje y</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	desarrollo del alumnado.</p>\r\n', NULL, NULL, 0, 0, '2018-01-10'),
(31, 29, 8, 3, 2, 3, 8, '<p>\r\n	<span style="font-family: Helvetica;">-Desarrollar estrategias de interacci&oacute;n que favorezcan la construcci&oacute;n del</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	conocimiento de los estudiantes.</p>\r\n', NULL, NULL, 0, 0, '2018-01-10'),
(32, 30, 9, 3, 2, 3, 8, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">-Al terminar el curso el alumno lograr&aacute; realizar su trabajo de investigaci&oacute;n b&aacute;sica</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	para titulaci&oacute;n o las alternativas que la Universidad contemple para este efecto.</p>\r\n', NULL, NULL, 0, 0, '2018-01-10'),
(33, 31, 9, 1, 4, 3, 8, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">-Ambientar al alumno con su campo profesional. Ejercitar la planificaci&oacute;n de</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	aula: de unidad y de clase. Solventar las dificultades que se presentaren en el</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	desarrollo de las actividades con los alumnos en clases. Aplicar los m&eacute;todos</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	did&aacute;cticos y pedag&oacute;gicos adecuados en el desarrollo de la clase.</p>\r\n', NULL, NULL, 0, 0, '2018-01-10'),
(34, 32, 8, 3, 2, 3, 8, '<p>\r\n	<span style="font-family: Helvetica;">-Conocer&aacute; los elementos y caracter&iacute;sticas del sistema educativo mexicano y ser&aacute;</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	capaz de discutir y generar argumentos respecto a la estructura actual y</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	estrategias educativas alternativas que posibiliten la generaci&oacute;n de</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	propuestas de mejora</p>\r\n', NULL, NULL, 0, 0, '2018-01-10'),
(35, 33, 8, 3, 2, 3, 8, '<p>\r\n	<span style="font-family: Helvetica;">-Conocer&aacute; los elementos esenciales de diversos protocolos de</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	investigaci&oacute;n para solicitar apoyo financiero en convocatorias privadas y</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	p&uacute;blicas.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Conocer&aacute; el proceso general para desarrollar y redactar correctamente</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	un reporte de investigaci&oacute;n educativa, as&iacute; como tornarlo en un art&iacute;culo</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	publicable.</p>\r\n', NULL, NULL, 0, 0, '2018-01-10'),
(36, 34, 9, 3, 2, 3, 8, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">-Al t&eacute;rmino del curso el alumno ser&aacute; capaz de explicar los diferentes modelos y enfoques</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	educativos que pueden emplearse en el aprendizaje de las matem&aacute;ticas. As&iacute; mismo,</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	estar&aacute; en condiciones de relacionar el conocimiento adquirido en este curso, con los</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	recursos y estrategias estudiadas en otros cursos de la especialidad.</p>\r\n', NULL, NULL, 0, 0, '2018-01-10'),
(37, 35, 9, 3, 2, 3, 8, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">-Al finalizar el curso el alumno ser&aacute; capaz de realizar dise&ntilde;os did&aacute;cticos orientados al</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	aprendizaje de conceptos matem&aacute;ticos mediante el proceso que provee la matem&aacute;tica</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	en contexto. Los implementar&aacute; bajo alguna metodolog&iacute;a adecuada y evaluar&aacute; el</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	conocimiento adquirido.</p>\r\n', NULL, NULL, 0, 0, '2018-01-10'),
(38, 36, 9, 3, 2, 3, 8, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">-Al t&eacute;rmino del curso el alumno habr&aacute; aprendido lo que es un recurso educativo abierto,</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	sus caracter&iacute;sticas, prop&oacute;sitos, bases educativas en las que se sustentan, as&iacute; como su</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	uso en situaciones de ense&ntilde;anza y aprendizaje de las matem&aacute;ticas.</p>\r\n', NULL, NULL, 0, 0, '2018-01-10'),
(39, 37, 9, 3, 2, 3, 8, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">-Plantear y construir Modelos Matem&aacute;ticos que lo ayuden a solventar problemas de la vida real en</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	diversos contextos</p>\r\n', NULL, NULL, 0, 0, '2018-01-24');

-- --------------------------------------------------------

--
-- Table structure for table `Seriada`
--

CREATE TABLE IF NOT EXISTS `Seriada` (
  `MatSeriadaId` int(10) unsigned NOT NULL,
  `ProgAcademicoId` int(10) unsigned NOT NULL COMMENT 'Programa academico que esta seriado con otra materia',
  `MateriaId` int(10) unsigned NOT NULL COMMENT 'Materia con la que esta seriado el programa'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Subtema`
--

CREATE TABLE IF NOT EXISTS `Subtema` (
  `SubtemaId` int(10) unsigned NOT NULL,
  `TemaId` int(10) unsigned NOT NULL,
  `SubtemaOrden` int(10) unsigned NOT NULL,
  `SubtemaNombre` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=841 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Subtema`
--

INSERT INTO `Subtema` (`SubtemaId`, `TemaId`, `SubtemaOrden`, `SubtemaNombre`) VALUES
(25, 1, 1, 'a) Definición de matriz y notación. '),
(26, 1, 2, 'b) Vectores y escalares. '),
(27, 1, 3, 'c) Operaciones con matrices. '),
(28, 1, 4, 'd) Propiedades de las operaciones matriciales.'),
(29, 1, 5, 'e) Matriz transpuesta y conjugada.'),
(30, 1, 6, 'f) Matriz inversa y sus propiedades.'),
(38, 7, 1, 'a) Introducción a los sistemas lineales'),
(39, 7, 2, 'b) Sistemas de dos ecuaciones. '),
(40, 7, 3, 'c) Sistemas de n ecuaciones. '),
(41, 7, 4, 'd) Representación matricial de un sistema de ecuaciones lineales. '),
(42, 7, 5, 'e) Forma reducida y forma escalonada de una matriz. '),
(43, 7, 6, 'f) Operaciones y matrices elementales.  '),
(44, 7, 7, 'g) Eliminación de Gauss. '),
(45, 7, 8, 'h) Método de Gauss-Jordan. '),
(46, 7, 9, 'i) Sistemas homogéneos de ecuaciones lineales. '),
(47, 7, 10, 'j) Obtención de la inversa de una matriz. '),
(48, 7, 11, 'k) Factorización LU y LUP.'),
(49, 8, 1, 'a) Definición de función determinante. '),
(50, 8, 2, 'b) Cálculo de determinantes y propiedades. '),
(51, 8, 3, 'c) Cofactores y obtención del determinante mediante cofactores.'),
(52, 9, 1, 'a) Matriz inversa por medio de la matriz adjunta. '),
(53, 9, 2, 'b) Regla de Crammer.'),
(54, 10, 1, 'a) Definición de vectores.'),
(55, 10, 2, 'b) Representación geométrica. '),
(56, 10, 3, 'c) Definición de adición de vectores y multiplicación por escalar. Interpretación geométrica. '),
(57, 10, 4, 'd) Combinación lineal. '),
(58, 10, 5, 'e) Producto interior.'),
(59, 10, 6, 'f) Desigualdad de Schwartz y desigualdad del triángulo. '),
(60, 10, 7, 'g) Norma de un vector. '),
(61, 10, 8, 'h) Angulo entre vectores. '),
(62, 10, 9, 'i) Proyección de vectores y aplicaciones. '),
(63, 10, 10, 'j) Producto vectorial en R3.'),
(64, 11, 1, 'a) Ecuaciones vectoriales y paramétricas de rectas en R3.'),
(65, 11, 2, 'b) Ecuaciones de planos. '),
(66, 11, 3, 'c) Independencia lineal. '),
(67, 11, 4, 'd) Matrices ortogonales.'),
(68, 12, 1, 'a) Vectores en Rn.'),
(69, 12, 2, 'b) Igualdad de vectores. '),
(70, 12, 3, 'c) Adición de vectores y multiplicación por un escalar. '),
(71, 12, 4, 'd) Propiedades de las operaciones. '),
(72, 12, 5, 'e) Combinaciones lineales, independencia y dependencia lineal. '),
(73, 12, 6, 'f) Producto interior. Producto interior Euclidiano.'),
(74, 13, 1, 'a) Espacios Euclidianos de dimensión –n. '),
(75, 13, 2, 'b) Norma de un vector. '),
(76, 13, 3, 'c) Distancia entre vectores. '),
(77, 13, 4, 'd) Ángulo entre vectores. '),
(78, 13, 5, 'e) Conjuntos ortonormales. '),
(79, 13, 6, 'f) Proceso Gram-Schmidt.'),
(80, 14, 1, 'a) Valores y vectores característicos de una matriz cuadrada. '),
(81, 14, 2, ' b) Diagonalización.'),
(82, 14, 3, 'c) Diagonalización ortogonal.'),
(83, 15, 1, '1.1 Gráficas de ecuaciones y funciones.'),
(84, 15, 2, '1.2 Cálculo con curvas paramétricas.'),
(85, 15, 3, '1.3 Coordenadas polares.'),
(86, 15, 4, '1.4 Áreas y longitudes en coordenadas polares.'),
(87, 15, 5, '1.5 Secciones cónicas.'),
(88, 15, 6, '1.6 Secciones cónicas en coordenadas polares.'),
(89, 16, 1, '2.1 Sucesiones.'),
(90, 16, 2, '2.2 Series.'),
(91, 16, 3, '2.3 La prueba de la integral y estimaciones de sumas.'),
(92, 16, 4, '2.4 Pruebas por comparación.'),
(93, 16, 5, '2.5 Series alternantes.'),
(94, 16, 6, '2.6 Convergencia absoluta y las pruebas de la razón y la raíz.'),
(95, 16, 7, '2.7 Estrategias para probar series.'),
(96, 16, 8, '2.8 Series de potencias.'),
(97, 16, 9, '2.9 Representaciones de las funciones como series de potencias.'),
(98, 16, 10, '2.10 Series de Taylor y Maclaurin.'),
(99, 16, 11, '2.11 Polinomios de Taylor.'),
(100, 17, 1, '3.1 Funciones vectoriales y curvas en el espacio'),
(101, 17, 2, '3.2 Derivadas e integrales de funciones vectoriales.'),
(102, 17, 3, '3.3 Longitud de arco y curva.'),
(103, 17, 4, '3.4 Velocidad y aceleración.'),
(104, 18, 1, 'Funciones de varias variables.'),
(105, 18, 2, 'Límites y continuidad.'),
(106, 18, 3, '4.3 Derivadas parciales.'),
(107, 18, 4, '4.4 Planos tangentes y aproximaciones lineales.'),
(108, 18, 5, '4.5 Regla de la cadena.'),
(109, 18, 6, '4.6 Derivadas direccionales y su vector gradiente.'),
(110, 18, 7, '4.7 Máximos y mínimos.'),
(111, 18, 8, '4.8 Multiplicadores de Lagrange.'),
(112, 19, 1, '5.1 Integrales dobles sobre rectángulos..'),
(113, 19, 2, '5.2 Integrales iteradas.'),
(114, 19, 3, '5.3 Integrales dobles sobre regiones generales.'),
(115, 19, 4, '5.4 Integrales dobles en coordenadas polares.'),
(116, 19, 5, '5.5 Aplicaciones de las integrales dobles.'),
(117, 19, 6, '5.6 Integrales triples.'),
(118, 19, 7, '5.7 Integrales triples en coordenadas polares.'),
(119, 19, 8, '5.8 Integrales triples en coordenadas esféricas.'),
(120, 19, 9, '5.9 Cambio de variable en integrales múltiples'),
(121, 20, 1, '6.1 Campos vectoriales.'),
(122, 20, 2, '6.2 Integrales de línea.'),
(123, 20, 3, '6.3 Teorema fundamental de las integrales en línea.'),
(124, 20, 4, '6.4 Teorema de Green.'),
(125, 20, 5, '6.5 Rotacional y divergencia.'),
(126, 20, 6, '6.6 Superficies paramétricas y sus áreas.'),
(127, 20, 7, '6.7 Integrales de superficie.'),
(128, 20, 8, '6.8 Teorema de Stokes.'),
(129, 20, 9, '6.9 Teorema de divergencia.'),
(144, 25, 1, 'a) Estructura básica de un programa en C++.'),
(145, 25, 2, 'b) Salida a consola mediante cout.'),
(146, 25, 3, 'c) Compilación y ejecución de un programa.'),
(147, 25, 4, 'd) Errores de compilación vs errores de ejecución.'),
(148, 25, 5, 'e) Buenas prácticas de programación: Comentarios.'),
(149, 26, 1, 'a) Concepto de variable.'),
(150, 25, 2, 'b) Asignación de valores.'),
(151, 26, 3, 'c) Tipos de variables numéricas.'),
(152, 26, 4, 'd) Expresiones aritméticas.'),
(153, 26, 5, 'e) Jerarquía de operadores.'),
(154, 26, 6, 'f) Entrada de datos mediante cin.'),
(155, 26, 7, 'g) Buenas prácticas de programación: Nombres representativos.'),
(156, 26, 8, 'h) Programas de ejemplo.'),
(157, 27, 1, 'a) Estructura de la memoria.'),
(158, 27, 2, 'b) Almacenamiento de variables en la memoria.'),
(159, 27, 3, 'c) Operador de referenciación &.'),
(160, 27, 4, 'd) Apuntadores y operador de dereferenciación *.'),
(161, 27, 5, 'e) Aritmética de apuntadores.'),
(162, 27, 6, 'f) Programas de ejemplo.'),
(163, 28, 1, 'a) Valores de verdad en C/C++.'),
(164, 28, 2, 'b) Operadores de comparación.'),
(165, 28, 3, 'c) Operadores booleanos.'),
(166, 28, 4, 'd) Tipo de datos bool.'),
(167, 29, 1, 'a) Instrucción if.'),
(168, 29, 2, 'b) Instrucción if…else.'),
(169, 29, 3, 'c) Instrucciones if…else anidadas.'),
(170, 29, 4, 'd) Instrucción switch.'),
(171, 29, 5, 'e) Anidación de estructuras de decisión.'),
(172, 29, 6, 'f) Buenas prácticas de programación: Indentación.'),
(173, 29, 7, 'g) Programas de ejemplo.'),
(174, 30, 1, 'a) Motivación para el uso de ciclos.'),
(175, 30, 2, 'b) Instrucción while.'),
(176, 30, 3, 'c) Ciclos anidados.'),
(177, 30, 4, 'd) Ciclos infinitos.'),
(178, 30, 5, 'e) Instrucción do…while.'),
(179, 30, 6, 'f) Instrucción for.'),
(180, 30, 7, 'g) Anidación de estructuras de decisión e iteración.'),
(181, 30, 8, 'h) Terminación abrupta de ciclos: break y continue.'),
(182, 30, 9, 'i) Ejemplos de aplicaciones.'),
(183, 31, 1, 'a) Ejemplos de funciones de librería: la librería math.h.'),
(184, 31, 2, 'b) Estructura de una función.'),
(185, 31, 3, 'c) Definición de funciones y paso de parámetros por valor.'),
(186, 31, 4, 'd) Paso de parámetros por apuntador.'),
(187, 31, 5, 'e) Paso de parámetros por referencia.'),
(188, 32, 1, 'a) Llamada a una función desde otra función.'),
(189, 32, 2, 'b) Funciones recursivas simples.'),
(190, 32, 3, 'c) Introducción a la programación estructurada.'),
(191, 32, 4, 'd) Diseño top-down: divide y vencerás.'),
(192, 32, 5, 'e) Buenas prácticas de programación: Hasta dónde dividir?.'),
(193, 32, 6, 'f) Programas de ejemplo: métodos numéricos.'),
(194, 33, 1, 'a) Motivación.'),
(195, 33, 2, 'b) Archivo de encabezado.'),
(196, 33, 3, 'c) Archivo de implementación.'),
(197, 33, 4, 'd) Buenas prácticas de programación: Nomenclatura de funciones de librería.'),
(198, 34, 1, 'a) Motivación.'),
(199, 34, 2, 'b) Declaración de un arreglo.'),
(200, 34, 3, 'c) Acceso a los elementos de un arreglo.'),
(201, 34, 4, 'd) Recorrido de un arreglo mediante ciclos.'),
(202, 34, 5, 'e) Almacenamiento en memoria: relación entre arreglos y apuntadores.'),
(203, 34, 6, 'f) Ejemplos de aplicaciones: ordenamiento, histogramas, señales.'),
(204, 34, 7, 'g) Arreglos bidimensionales y multidimensionales.'),
(205, 34, 8, 'h) Ejemplos: manejo de matrices.'),
(206, 35, 1, 'a) Cadenas de caracteres.'),
(207, 35, 2, 'b) Longitud de una cadena.'),
(208, 35, 3, 'c) Concatenación de cadenas.'),
(209, 35, 4, 'd) Manejo de cadenas: librería string.h.'),
(210, 36, 1, 'a) Motivación.'),
(211, 36, 2, 'b) Asignación dinámica de memoria para una variable: operador new.'),
(212, 36, 3, 'c) Liberación de memoria: operador delete.'),
(213, 36, 4, 'd) Asignación dinámica de memoria para un arreglo.'),
(214, 36, 5, 'e) Liberación de memoria asignada a un arreglo.'),
(215, 36, 6, 'f) Consideraciones para el manejo dinámico de memoria.'),
(216, 37, 1, '1.1 Investigación y método científico.'),
(217, 37, 2, '1.2 ¿Qué es la estadística?.'),
(218, 37, 3, '1.3 Estadística e investigación.'),
(219, 38, 1, '2.1 Probabilidad.'),
(220, 38, 2, '2.2 Variables aleatorias.'),
(221, 38, 3, '2.3 Distribuciones de probabilidad.'),
(222, 38, 4, '2.4 Esperanza matemática.'),
(223, 38, 5, '2.5 Probabilidad condicional.'),
(224, 38, 6, '2.6 Independencia de eventos.'),
(225, 38, 7, '2.7 Teorema de Bayes.'),
(226, 39, 1, '3.1 Binomial.'),
(227, 39, 2, '3.2 Hipergeometrica.'),
(228, 39, 3, '3.3 Poisson.'),
(229, 39, 4, '3.4 Binomial negativa.'),
(230, 40, 1, '4.1 Distribución normal o gaussiana'),
(231, 40, 2, '4.2 Otras distribuciones continuas'),
(232, 41, 1, '5.1 Población y muestras'),
(233, 41, 2, '5.2 Tipos de muestras'),
(234, 41, 3, '5.3 Presentación de datos'),
(235, 41, 4, '5.4 Histogramas'),
(236, 41, 5, '5.5 Formas de describir datos como intervalos y como distinguir grupos de ellos'),
(237, 42, 1, '6.1 Relaciones funcionales entre variables.'),
(238, 42, 2, '6.2 La elección de una relación funcional.'),
(239, 42, 3, '6.3 Ajuste de curvas.'),
(240, 42, 4, '6.4 Método de mínimos cuadrados.'),
(241, 42, 5, '6.5 Correlación lineal.'),
(242, 42, 6, '6.6 Modelo de regresión lineal simple.'),
(243, 42, 7, '6.7 Análisis de varianza y pruebas de hipótesis.'),
(244, 42, 8, '6.8 Modelo de regresión lineal múltiple.'),
(245, 42, 9, '6.9 Pruebas de falta de ajuste.'),
(246, 42, 10, '6.10 Residuales.'),
(247, 42, 11, '6.11 Modelos no lineales.'),
(248, 42, 12, '6.12 Polinomios.'),
(249, 42, 13, '6.13 Regresión exponencial.'),
(250, 42, 14, '6.14 Correlación, análisis de causa efecto.'),
(251, 43, 1, '7.1 Correlación'),
(252, 44, 1, '1.1. Paradigmas Positivista y Constructivista'),
(253, 44, 2, '1.2. Enfoques centrados en el docente'),
(254, 44, 3, '1.3. Enfoques centrados en el estudiante'),
(255, 44, 4, '1.4. Enfoques diversos en el proceso de enseñanza-aprendizaje de las matemáticas.'),
(256, 45, 1, '2.1 Aprendizaje de concepto.'),
(257, 45, 2, '2.2 Aprendizaje programado.'),
(258, 45, 3, '2.3 Aprendizaje significativo.'),
(259, 45, 4, '2.4 Aprendizaje activo.'),
(260, 45, 5, '2.5 La zona de desarrollo próximo.'),
(261, 45, 6, '2.6 Aprendizaje y curriculum.'),
(262, 46, 1, '3.1 La didáctica en la historia.'),
(263, 46, 2, '3.2 Enfoques didácticos.'),
(264, 46, 3, '3.3 La teoría de situaciones.'),
(265, 46, 4, '3.4 Los aprendizajes en la teoría de las situaciones.'),
(266, 46, 5, '3.5 El proceso de enseñanza-aprendizaje en las situaciones didácticas de matemáticas.'),
(267, 47, 1, '4.1. La enseñanza a partir de situaciones didácticas.'),
(268, 47, 2, '4.2 El papel del profesor en el proceso de enseñanza-aprendizaje.'),
(269, 47, 3, '4.3 El papel del estudiante en el proceso de enseñanza-aprendizaje.'),
(270, 47, 4, '4.4 Resolución de problemas en las situaciones didácticas.'),
(271, 48, 1, '1.1.- Definiciones y terminología.'),
(272, 48, 2, '1.2.- Problemas de valores iniciales..'),
(273, 48, 3, '1.3.- Ecuaciones diferenciales como modelos matemáticos.'),
(274, 49, 1, '2.1.- Ecuaciones de variables separables.'),
(275, 49, 2, '2.2.- Ecuaciones lineales.'),
(276, 49, 3, '2.3.- Ecuaciones exactas.'),
(277, 49, 4, '2.4.- Soluciones por sustituciones.'),
(278, 49, 5, '2.5.- Modelos lineales.'),
(279, 49, 6, '2.6.- Modelos no lineales.'),
(280, 49, 7, '2.7.- Modelado con sistemas de ecuaciones diferenciales.'),
(281, 50, 1, '3.1.- Dependencia e independencia lineal.'),
(282, 50, 2, '3.2.- Reducción de orden.'),
(283, 50, 3, '3.3.- Ecuaciones lineales homogéneas con coeficientes constantes.'),
(284, 50, 4, '3.4.- Coeficientes indeterminados.'),
(285, 50, 5, '3.5.- Variación de parámetros.'),
(286, 50, 6, '3.6.- Ecuación de Cauchy-Euler.'),
(287, 50, 7, '3.7.- Solución de sistemas de ecuaciones lineales.'),
(288, 50, 8, '3.8.- Aplicación en problemas de osciladores.'),
(289, 50, 9, '3.9.- Modelos lineales, problemas de valores en la frontera.'),
(290, 51, 1, '4.1.- Soluciones respecto a puntos ordinarios.'),
(291, 51, 2, '4.2.- Soluciones respecto a puntos singulares.'),
(292, 51, 3, '4.3.- Funciones especiales, ecuaciones de Bessel y Legendre.'),
(293, 52, 1, '5.1.- Definición de la transformada de Laplace.'),
(294, 52, 2, '5.2.- Transformadas inversas y transformadas de derivadas.'),
(295, 52, 3, '5.3.- Función delta de Dirac.'),
(296, 52, 4, '5.4.- Sistemas de ecuaciones diferenciales lineales.'),
(297, 53, 1, '1.1 La recta real.'),
(298, 53, 2, '1.2 El n-espacio euclidiano.'),
(299, 54, 1, '2.1 Conjuntos abiertos.'),
(300, 54, 2, '2.2 Interior de un conjunto.'),
(301, 54, 3, '2.3 Conjuntos cerrados.'),
(302, 54, 4, '2.4 Puntos de acumulación.'),
(303, 54, 5, '2.5 Cerradura de un conjunto.'),
(304, 54, 6, '2.6 Frontera de un conjunto.'),
(305, 54, 7, '2.7 Sucesiones.'),
(306, 54, 8, '2.8 Series.'),
(307, 55, 1, '3.1 Conjuntos compactos: teorema de Heine-Borel, teorema de Bolzano-Weirstrass.'),
(308, 55, 2, '3.2 Propiedad de los conjuntos encajados.'),
(309, 55, 3, '3.3 Conjuntos arco conexos.'),
(310, 55, 4, '3.4 Conjuntos conexos.'),
(311, 56, 1, '4.1 Continuidad.'),
(312, 56, 2, '4.2 Imagen de conjuntos compactos y conexos.'),
(313, 56, 3, '4.3 Operaciones con mapeos continuos.'),
(314, 56, 4, '4.4 El acotamiento de funciones continuas en conjuntos compactos.'),
(315, 56, 5, '4.5 El teorema del valor intermedio.'),
(316, 56, 6, '4.6 Continuidad uniforme.'),
(317, 57, 1, '5.1 Definición de la derivada.'),
(318, 57, 2, '5.2 Representación matricial.'),
(319, 57, 3, '5.3 Continuidad de mapeos diferenciables.'),
(320, 57, 4, '5.4 Condiciones para la diferenciabilidad.'),
(321, 57, 5, '5.5 Diferenciabilidad de mapeos compuestos.'),
(322, 57, 6, '5.6 Regla del producto y gradientes.'),
(323, 57, 7, '5.7 Teorema del valor medio.'),
(324, 57, 8, '5.8 Teorema de Taylor y derivadas superiores.'),
(325, 57, 9, '5.9 Máximo y mínimo.'),
(326, 58, 1, '6.1 Teorema de la función inversa.'),
(327, 58, 2, '6.2 Teorema de la función implícita.'),
(328, 58, 3, '6.3 Algunas consecuencias del teorema de la función implícita.'),
(329, 58, 4, '6.4 Extremos condicionados y multiplicadores de Lagrange.'),
(330, 59, 1, '1.1. Fuentes y clasificación de los errores.'),
(331, 59, 2, '1.2. Error de redondeo.'),
(332, 59, 3, '1.3. Algoritmo y convergencia.'),
(333, 60, 1, '2.1. Algoritmo de bisección.'),
(334, 60, 2, '2.2. Iteración de punto fijo.'),
(335, 60, 3, '2.3. El método de Newton-Raphson.'),
(336, 60, 4, '2.4 Análisis de error para métodos iterativos y técnicas de aceleración.'),
(337, 60, 5, '2.5 Convergencia Acelerada.'),
(338, 60, 6, '2.6 Ceros de polinomios reales y método de Müller.'),
(339, 61, 1, '3.1. Los polinomios de Taylor.'),
(340, 61, 2, '3.2. Polinomios de Interpolación de Lagrange.'),
(341, 61, 3, '3.3. Interpolación iterada.'),
(342, 61, 4, '3.4. Diferencias divididas.'),
(343, 61, 5, '3.5. Interpolación de Hermite.'),
(344, 62, 1, '4.1 El método de Euler.'),
(345, 62, 2, '4.2 Métodos de Taylor de orden mayor.'),
(346, 62, 3, '4.3. Método de Runge Kutta Fehlberg.'),
(347, 62, 4, '4.4. Métodos multipaso.'),
(348, 62, 5, '4.5. Ecuaciones de orden mayor y sistemas de ecuaciones diferenciales.'),
(349, 63, 1, '5.1. Diferenciación numérica y su error de cálculo.'),
(350, 63, 2, '5.2. Extrapolación de Richardson.'),
(351, 63, 3, '5.3. Elementos de integración numérica.'),
(352, 63, 4, '5.4. Integración numérica compuesta.'),
(353, 63, 5, '5.5. Métodos adoptivos de cuadratura.'),
(354, 63, 6, '5.6 Integración de Romberg.'),
(355, 63, 7, '5.7 Cuadrática Gaussiana.'),
(356, 63, 8, '5.8 Integrales múltiples.'),
(357, 64, 1, '6.1. Sistemas lineales de ecuaciones.'),
(358, 64, 2, '6.2. El algoritmo Gauss-Jordan.'),
(359, 64, 3, '6.3. La descomposición de Cholesky.'),
(360, 64, 4, '6.4. Cotas de error.'),
(361, 64, 5, '6.5. Análisis de error en la limitación Gaussiana.'),
(362, 64, 6, '6.6. Técnicas de ortogonalización de Householder y Gram-Smidith.'),
(363, 65, 1, '1.1 La didáctica posterior al desarrollo del cálculo.'),
(364, 65, 2, '1.2 Los primeros textos para la enseñanza masiva.'),
(365, 65, 3, '1.3 La escuela contemporánea. Exposiciones.'),
(366, 66, 1, '2.1 El énfasis en la mecanización.'),
(367, 66, 2, '2.2 Las primeras investigaciones sobre los procesos de aprendizaje.'),
(368, 66, 3, '2.3 Las primeras teorías cognitivas. Exposiciones.'),
(369, 67, 1, '3.1 Las ideas del conocimiento integral.'),
(370, 67, 2, '3.2 Primeras metodologías para la investigación en didáctica de las matemáticas.'),
(371, 67, 3, '3.3 La ingeniería didáctica. Exposiciones.'),
(372, 68, 1, '4.1 Los inicios en Europa.'),
(373, 68, 2, '4.2 La perspectiva en Estados Unidos.'),
(374, 68, 3, '4.3 El desarrollo en Latinoamérica. Exposiciones.'),
(375, 69, 1, '1.1. Definición de problema.'),
(376, 69, 2, '1.2. Concepto de problematización.'),
(377, 69, 3, '1.3. Ubicación del método “Aprendizaje basado en problemas”.'),
(378, 69, 4, '1.4. Procesos de solución.'),
(379, 70, 1, '2.1 Representaciones del proceso de problematización.'),
(380, 70, 2, '2.2 Interacción en el proceso de problematizar.'),
(381, 70, 3, '2.3 Análisis de un proceso de problematización.'),
(382, 70, 4, '2.4 Síntesis de un proceso de problematización.'),
(383, 71, 1, '3.1 Concepto de actividad.'),
(384, 71, 2, '3.2 El planteamiento de un problema.'),
(385, 71, 3, '3.3 Los instrumentos psicológicos en la actividad.'),
(386, 71, 4, '3.4 La formación de la mente a partir de la actividad.'),
(387, 72, 1, '1.1 Las reglas de la suma y el producto.'),
(388, 72, 2, '1.2 Permutaciones y combinaciones.'),
(389, 72, 3, '1.3 Combinaciones con repetición: distribuciones.'),
(390, 73, 1, '2.1 Fundamentos de lógica.'),
(391, 73, 2, '2.2 Conjuntos y subconjuntos.'),
(392, 73, 3, '2.3 Operaciones de conjuntos y leyes de la teoría de conjuntos.'),
(393, 73, 4, '2.4 Conteo y diagramas de Venn.'),
(394, 73, 5, '2.5 Algo sobre probabilidad.'),
(395, 73, 1, '3.1 Productos cartesianos y relaciones.'),
(396, 74, 2, '3.2 Funciones comunes y uno a uno.'),
(397, 74, 3, '3.3 Funciones suprayectivas: números de Stirling de segundo tipo.'),
(398, 74, 4, '3.4 El principio del palomar.'),
(399, 75, 1, '4.1 Lenguaje: la teoría de conjuntos de las cadenas.'),
(400, 75, 2, '4.2 Introducción y desarrollo de las máquinas de estados finitos.'),
(401, 75, 3, '4.3 Propiedades de las relaciones en un conjunto.'),
(402, 75, 4, '4.4 Reconocimiento por computador: matrices de ceros y unos, y grafos dirigidos.'),
(403, 75, 5, '4.5 Ordenes parciales: diagramas de Hasse.'),
(404, 75, 6, '4.6 Relaciones de equivalencia y particiones.'),
(405, 75, 7, '4.7 Máquinas de estados finitos: el proceso de minimización.'),
(406, 76, 1, '5.1 El principio de buen orden: inducción matemática.'),
(407, 76, 2, '5.2 El algoritmo de la división: números primos.'),
(408, 76, 3, '5.3 El máximo común divisor: el algoritmo de Euclides.'),
(409, 76, 4, '5.4 El teorema fundamental de la aritmética.'),
(410, 77, 1, '6.1 El principio de inclusión y exclusión.'),
(411, 77, 2, '6.2 Generalizaciones del principio.'),
(412, 77, 3, '6.3 Desórdenes: nada está en su lugar.'),
(413, 77, 4, '6.4 Polinomios torre.'),
(414, 77, 5, '6.5 Disposiciones con posiciones prohibidas.'),
(415, 78, 1, '7.1 Definición y ejemplos: técnicas de cálculo'),
(416, 78, 2, '7.2 Particiones de enteros.'),
(417, 78, 3, '7.3 La función generadora exponencial.'),
(418, 78, 4, '7.4 El operador sumatoria.'),
(419, 79, 1, '8.1 La relación de recurrencia lineal de primer orden.'),
(420, 79, 2, '8.2 La relación de recurrencia homogénea lineal de segundo orden con coeficientes constantes.'),
(421, 79, 3, '8.3 La relación de recurrencia no homogénea'),
(422, 79, 4, '8.4 El método de las funciones generadoras.'),
(423, 79, 5, '8.5 Un tipo especial de relación de recurrencia no lineal.'),
(424, 80, 1, '1.1 Ecuaciones diferenciales ordinarias auto-adjuntas.'),
(425, 80, 2, '1.2 Operadores Hermíticos.'),
(426, 80, 3, '1.3 Conjuntos completos y ortogonalización.'),
(427, 80, 4, '1.4 Expansión en eigenfunciones.'),
(428, 81, 1, '2.1 Funciones de Bessel'),
(429, 81, 2, '2.2 Ortogonalidad de las funciones de Bessel'),
(430, 81, 3, '2.3 Funciones de Newmann, Hankel, modificadas de Bessel, y Bessel esféricas'),
(431, 81, 4, '2.4 Funciones de Legendre.'),
(432, 81, 5, '2.5 Simetría, recurrencia y función generadora para funciones de Legendre'),
(433, 81, 6, '2.6 Funciones asociadas de Legendre'),
(434, 81, 7, '2.7 Harmónicos esféricos'),
(435, 81, 8, '2.8 Funciones hipergeométricas'),
(436, 81, 9, '2.9 Casos especiales de las funciones hipergeométricas'),
(437, 82, 1, '3.1 Kernel y transformadas integrales.'),
(438, 82, 2, '3.2 Transformadas inversas.'),
(439, 82, 3, '3.3 Teoremas de convolución'),
(440, 82, 4, '3.4 Transformadas de Fourier.'),
(441, 82, 5, '3.5 Transformada de Laplace.'),
(442, 82, 6, '3.6 Transformadas de derivadas.'),
(443, 82, 7, '3.7 Aplicaciones en ecuaciones diferenciales.'),
(444, 83, 1, '4.1 Transformadas discretas.'),
(445, 83, 2, '4.2 Transformadas discretas inversas.'),
(446, 83, 3, '4.3 Convolución discreta.'),
(447, 83, 4, '4.4 Transformada discreta de Fourier.'),
(448, 83, 5, '4.5 Transformada discreta de Laplace.'),
(449, 83, 6, '4.6 Aplicaciones.'),
(450, 84, 1, '1.1 Definiciones básicas y motivación.'),
(451, 84, 2, '1.2 Acepción filosófica.'),
(452, 84, 3, '1.3 Didáctica de las Matemáticas.'),
(453, 84, 4, '1.4 Significado epistemológico de la didáctica de las matemáticas.'),
(454, 84, 5, '1.5 Corrientes filosóficas en matemáticas'),
(455, 85, 1, '2.1 Génesis, estructura, método y problemas'),
(456, 85, 2, '2.2 Empiricismo e inducción'),
(457, 85, 3, '2.3 Análisis-sintésis.'),
(458, 85, 4, '2.4 Escuela de Bourbaki.'),
(459, 85, 5, '2.5 Preguntas fundamentales en Matemáticas'),
(460, 86, 1, '3.1 Obstáculos didácticos en las Matemáticas'),
(461, 86, 2, '3.2 Caracterización de los diversos obstáculos'),
(462, 86, 3, '3.3 Aspectos importantes de la organización de situaciones problemáticas.'),
(463, 86, 4, '3.4 Prácticas matemáticas y la comunicación en el salón de clase.'),
(464, 86, 5, '3.5 Perspectivas sociales e individuales'),
(465, 86, 6, '3.6 El reto tecnológico'),
(468, 87, 3, '4.3 Naturaleza de la demostración.'),
(469, 87, 4, '4.4 Relación entre matemáticas y experiencia.'),
(470, 87, 5, '4.5 Estatuto ontológico de los entes matemáticos.'),
(474, 87, 1, '4.1 Fundamento lógico.'),
(475, 87, 2, '4.2 La certidumbre.'),
(476, 89, 1, '1.1 Teorías del condicionamiento'),
(477, 89, 2, '1.2 Teorías de procesamiento de información'),
(478, 89, 3, '1.3 Teorías mediacionales'),
(479, 90, 1, 'Tema 2.1 Condicionamiento clásico'),
(480, 90, 2, 'Tema 2.2 Condicionamiento operante'),
(481, 90, 3, 'Tema 2.3 Procesos de condicionamiento en el aprendizaje de las matemáticas'),
(482, 91, 1, '2.1 Condicionamiento clásico'),
(483, 91, 2, '2.2 Condicionamiento operante'),
(484, 91, 3, '2.3 Procesos de condicionamiento en el aprendizaje de las matemáticas'),
(485, 92, 1, '3.1 Atención, reconocimiento de patrones y memoria operativa'),
(486, 92, 2, '3.2 Conocimiento y memoria a largo plazo'),
(487, 93, 1, '4.1 Lenguaje'),
(488, 93, 2, '4.2 Comprensión'),
(489, 93, 3, '4.3 El pensamiento'),
(490, 94, 1, '1.1 Definición de contexto'),
(491, 94, 2, '1.2 Concepto de cultura'),
(492, 94, 3, '1.3 Concepto de diversidad'),
(493, 94, 4, '1.4 Ubicación de los métodos con diversidad cultural'),
(494, 94, 5, '1.5 Procesos de aprendizaje contextualizados'),
(495, 95, 1, '2.1 Los actores dentro del contexto.'),
(496, 95, 2, '2.2 El medio ubicado en el contexto.'),
(497, 95, 3, '2.3 La estructura de un contexto.'),
(498, 95, 4, '2.4 Las relaciones entre actores, medio y conocimiento.'),
(499, 95, 5, 'EJERCICIOS'),
(500, 96, 1, '3.1 Planteamiento de actividades didácticas en contexto.'),
(501, 95, 2, '3.2 Valoración cultural de las actividades didácticas.'),
(502, 96, 3, '3.3 Secuencias didácticas de actividades en contexto.'),
(503, 96, 4, 'EJERCICIOS'),
(504, 97, 1, '1.1 Números naturales, inducción matemática y cardinalidad.'),
(505, 97, 2, '1.2 Particiones y relaciones de equivalencia.'),
(506, 97, 3, '1.3 Operaciones n-arias.'),
(507, 97, 4, 'EJERCICIOS'),
(508, 98, 1, '2.1 Sistemas algebraicos: definición y ejemplos.'),
(509, 98, 2, '2.2 Propiedades generales.'),
(510, 98, 3, '2.3 Semigrupos y monoides. Subsemigrupos y submonoides.'),
(511, 98, 4, '2.4 Homomorfismos de semigrupos y de submonoides.'),
(512, 98, 5, 'EJERCICIOS'),
(513, 99, 1, '3.1 Grupos y subgrupos. Definición y ejemplos.'),
(514, 99, 2, '3.2 Sistemas algebraicos con dos operaciones binarias. Anillos. Espacios vectoriales módulos. Algebras.'),
(515, 99, 3, '3.3 Grupos de permutaciones.'),
(516, 99, 4, '3.4 Grupo alternante.'),
(517, 99, 5, 'EJERCICIOS'),
(518, 100, 1, '1.1 La estructura algebraica y geométrica del sistema de números complejos.'),
(519, 100, 2, '1.2 Funciones complejas (continuidad)'),
(520, 100, 3, '1.3 Condiciones necesarias y suficientes para la analiticidad.'),
(521, 100, 4, '1.4 Exponencial compleja.'),
(522, 100, 5, '1.5 Las funciones trigonométricas e hiperbólicas complejas.'),
(523, 100, 6, '1.6 Las funciones logaritmo complejo y potencia compleja.'),
(524, 100, 7, '1.7 Funciones armónicas.'),
(525, 100, 8, '1.8 Aplicaciones físicas de las funciones armónicas.'),
(526, 100, 9, 'EJERCICIOS'),
(527, 101, 1, '2.1 Integrales de línea.'),
(528, 101, 2, '2.2 El teorema de Green y sus consecuencias.'),
(529, 101, 3, '2.3 La fórmula integral de Cauchy.'),
(530, 101, 4, '2.4 Teorema de Liourville y principio del máximo.'),
(531, 101, 5, '2.5 El teorema de Cauchy-Goursat.'),
(532, 101, 6, 'EJERCICIOS'),
(533, 102, 1, '3.1 Series de Taylor.'),
(534, 102, 2, '3.2 Convergencia uniforme de series.'),
(535, 102, 3, '3.3 Series de Laurent.'),
(536, 102, 4, '3.4 Singularidades aisladas.'),
(537, 102, 5, 'EJERCICIOS'),
(538, 103, 1, '4.1 Teorema del residuo.'),
(539, 103, 2, '4.2 Evaluación de integrales reales definidas.'),
(540, 103, 3, '4.3 Evaluación de integrales reales impropias.'),
(541, 103, 4, '4.4 Integrales con polos sobre el eje real.'),
(542, 103, 5, '4.5 El principio del argumento.'),
(543, 103, 6, 'EJERCICIOS'),
(544, 104, 1, '1.1 Herramientas para escribir'),
(545, 104, 2, '1.2 Prototipos'),
(546, 104, 3, '1.3 Pizarras y otros elementos de apoyo'),
(547, 104, 4, 'EJERCICIOS'),
(548, 105, 1, '2.1 Uso didáctico de las primeras computadoras.'),
(549, 105, 2, '2.2 Recursos de audio y de visualización.'),
(550, 105, 3, '2.3 Procesos algorítmicos.'),
(551, 105, 4, 'EJERCICIOS'),
(552, 106, 1, '3.1 Potencial educativo de la información libre.'),
(553, 106, 2, '3.2 Ventajas y riesgos.'),
(554, 106, 3, '3.3 Sitios educativos.'),
(555, 106, 4, '3.4 Software especializado.'),
(556, 106, 5, 'EJERCICIOS'),
(557, 107, 1, '4.1 ¿Qué son los recursos educativos abiertos?'),
(558, 107, 2, '4.2 Orígenes.'),
(559, 107, 3, '4.3 Características.'),
(560, 107, 4, '4.4 Propósitos.'),
(561, 107, 5, '4.5 Ventajas y riesgos de su uso.'),
(562, 107, 6, 'EJERCICIOS'),
(563, 108, 1, '1.1. La intuición.'),
(564, 108, 2, '1.2. La construcción de modelos.'),
(565, 108, 3, '1.3. La analogía.'),
(566, 108, 4, '1.4. La prueba deductiva.'),
(567, 108, 5, 'PROYECTO'),
(568, 109, 1, '2.1. El método inductivo.'),
(569, 109, 2, '2.2. El método deductivo.'),
(570, 109, 3, '2.3. Sobre el método científico, para explicar por medio de modelos matemáticos a hechos reales.'),
(571, 109, 4, 'PROYECTO'),
(572, 110, 1, '3.1. Verdad y validez'),
(573, 110, 2, '3.2. Axiomatización de la teoría'),
(574, 110, 3, '3.3. Interpretaciones y modelos.'),
(575, 110, 4, 'PROYECTO'),
(576, 111, 1, '1.1 Tener compromiso'),
(577, 111, 2, '1.2 Creer en su misión'),
(578, 111, 3, '1.3 Responsabilidad'),
(579, 111, 4, '1.4 Autoridad, identidad y conciencia'),
(580, 111, 5, '1.5 La función de facilitador'),
(581, 111, 6, '1.5 Autocrítica'),
(582, 111, 7, '1.6 Formación reflexiva'),
(583, 112, 1, '2.1. La enseñanza tradicional.'),
(584, 112, 2, '2.2. Educación centrada en el profesor.'),
(585, 112, 3, '2.3. Educación centrada en el alumno.'),
(586, 113, 1, '3.1 Definición'),
(587, 113, 2, '3.2 Principios básicos'),
(588, 113, 3, '3.3 La actitud del profesor en el aula de clase'),
(589, 113, 4, '3.4 Lenguaje y procesos de comunicación'),
(590, 113, 5, '3.5 Implicaciones del contrato didáctico'),
(591, 114, 1, '1.1. Corrientes diversas sobre formación de pensamiento.'),
(592, 114, 2, '1.2. El lenguaje como construcción cultural.'),
(593, 114, 3, '1.3. La repercusión del uso del lenguaje en el pensamiento.'),
(594, 114, 4, '1.4. El lenguaje como instrumento para pensar.'),
(595, 115, 1, '2.1 Las diversas representaciones del lenguaje.'),
(596, 115, 2, '2.2 La construcción de argumentos.'),
(597, 115, 3, '2.3 La construcción del discurso matemático.'),
(598, 115, 4, '2.4 Formas de conversación.'),
(599, 116, 1, '3.1 La interacción en el proceso de construcción del conocimiento.'),
(600, 116, 2, '3.2 El lenguaje como instrumento de interacción social.'),
(601, 116, 3, '3.3 El lenguaje matemático.'),
(602, 117, 1, '1.1 Definición del problema de investigación'),
(603, 117, 2, '1.2 Diferencia entre problemática y problema'),
(604, 117, 3, '1.3 Definición de la temática de la investigación'),
(605, 117, 4, '1.4 Definición de objetivos y justificación'),
(606, 118, 1, '2.1 Relación temática y referentes teóricos'),
(607, 118, 2, '2.2 Los estudios previos'),
(608, 118, 3, '2.3 El marco teórico'),
(609, 119, 1, '3.1 Métodos cualitativos'),
(610, 119, 2, '3.2 Métodos cuantitativos'),
(611, 119, 3, '3.3 Investigaciones cualitativas y cuantitativas'),
(612, 120, 1, '4.1 Los instrumentos de investigación'),
(613, 120, 2, '4.2 Las etapas de investigación.'),
(614, 120, 3, '4.3 Análisis de datos.'),
(615, 120, 4, '4.4 Interpretación de datos.'),
(616, 120, 5, '4.5 Construcción de conclusiones.'),
(617, 121, 1, '1.1 Identificación del perfil del grupo y del nivel de manejo de los prerrequisitos.'),
(618, 121, 2, '1.2 Especificación del nivel de fundamentación matemática.'),
(619, 121, 3, '1.3 Ubicación del curso en una currícula particular para un perfil de egresado.'),
(620, 122, 1, '2.1 Análisis del tipo de concepto, método o técnica matemática para la determinación de la argumentación.'),
(621, 122, 2, '2.2 Ventajas y limitaciones del uso de pruebas formales en los distintos niveles educativos.'),
(622, 122, 3, '2.3 Descubriendo la matemática, una tarea implícita.'),
(623, 122, 4, '2.4 La cognición y el rigor en la clase de matemáticas.'),
(624, 123, 1, '3.1 La teoría de la información'),
(625, 123, 2, '3.2 Enseñanza a través de medios.'),
(626, 123, 3, '3.3 Investigación documental.'),
(627, 124, 1, '1.1 Integrar los contenidos o grupos de saberes de la formación.'),
(628, 124, 2, '1.2 Incentivar el desarrollo de nuevas formas de enseñanza.'),
(629, 124, 3, '1.3 Desarrollar una formación teórico práctica.'),
(630, 124, 4, '1.4 Definición y actualización permanente de los contenidos de la formación.'),
(631, 125, 1, '2.1 Desarrollo de la capacidad de enseñar activamente los conocimientos adquiridos.'),
(632, 125, 2, '2.2 Desarrollo de la capacidad de diseñar y elegir estrategias docentes.'),
(633, 125, 3, '2.3 Desarrollo de la capacidad de diseñar y estimular procesos de elaboración tanto colectivos como individuales.'),
(634, 125, 4, '2.4 Potenciar los procesos de práctica docente.'),
(635, 126, 1, '3.1 Competencias didácticas.'),
(636, 126, 2, '3.2 Dominio y transferencia de conocimientos.'),
(637, 126, 3, '3.3 Comunicación interpersonal colectiva e individual.'),
(638, 126, 4, '3.4 Autogestión personal y profesional.'),
(639, 127, 1, '1.1 Problematización.'),
(640, 127, 2, '1.2 Contextualización.'),
(641, 127, 3, '1.3 Interacción.'),
(642, 127, 4, '1.4 Material didáctico.'),
(643, 127, 5, '1.5 Metacognición.'),
(644, 128, 1, '2.1 Los diversos métodos de planeación educativa.'),
(645, 128, 2, '2.2 La propuesta dentro de un modelo educativo.'),
(646, 128, 3, '2.3 Los espacios y tiempos del diseño didáctico.'),
(647, 128, 4, '2.4 El diseño didáctico.'),
(648, 129, 1, '3.1 El concepto de secuencia didáctica.'),
(649, 129, 2, '3.2 Los elementos de una secuencia didáctica.'),
(650, 129, 3, '3.3 La integralidad de una secuencia didáctica.'),
(696, 142, 1, '1.1 Definición del problema de investigación'),
(697, 142, 2, '1.2 Diferencia entre problemática y problema'),
(698, 142, 3, '1.3 Definición de la temática de la investigación'),
(699, 142, 4, '1.4 Definición de objetivos y justificación'),
(700, 143, 1, '2.1 Relación temática y referentes teóricos'),
(701, 143, 2, '2.2 Los estudios previos'),
(702, 143, 3, '2.3 El marco teórico'),
(703, 146, 1, '3.1 Métodos cualitativos'),
(704, 146, 2, '3.2 Métodos cuantitativos'),
(705, 146, 3, '3.3 Investigaciones cualitativas y cuantitativas'),
(706, 147, 1, '4.1 Los instrumentos de investigación'),
(707, 147, 2, '4.2 Las etapas de investigación.'),
(708, 147, 3, '4.3 Análisis de datos.'),
(709, 147, 4, '4.4 Interpretación de datos.'),
(710, 147, 5, '4.5 Construcción de conclusiones.'),
(711, 148, 1, '1.1 Concepto de evaluación'),
(712, 148, 2, '1.2 Aspectos históricos del concepto de evaluación.'),
(713, 148, 3, '1.3 Enfoques de evaluación.'),
(714, 148, 4, '1.4 Evaluación cualitativa'),
(715, 148, 5, '1.5 Evaluación cuantitativa'),
(716, 149, 1, '2.1 Modelos integrales de evaluación.'),
(717, 149, 2, '2.2 Tipos de evaluación.'),
(718, 149, 3, '2.3 Métodos de evaluación.'),
(719, 150, 1, '3.1 La construcción de criterios de evaluación.'),
(720, 150, 2, '3.2 Técnicas de evaluación cualitativa.'),
(721, 150, 3, '3.3 Técnicas de evaluación cuantitativa.'),
(722, 150, 4, '3.4 Instrumentos de evaluación, análisis y construcción.'),
(723, 151, 1, '4.1 El concepto de evaluación educativa.'),
(724, 151, 2, '4.2 El concepto de proyecto de evaluación.'),
(725, 151, 3, '4.3 Proyectos integrales de evaluación.'),
(726, 151, 4, '4.4 Planeación educativa y evaluación.'),
(727, 151, 5, '4.5 Currículum y evaluación.'),
(728, 152, 1, '5.1 Los programas evaluadores en educación.'),
(729, 152, 2, '5.2 Diseños de evaluación educativa implementados en TIC''s.'),
(730, 152, 3, '5.3 Herramientas de evaluación apoyadas en el uso de las TIC''s.'),
(731, 153, 1, '1.1 Estilos de aprendizaje'),
(732, 153, 2, '1.2 Diseños para atender aprendizaje visual'),
(733, 153, 3, '1.3 Diseños para atender aprendizaje oral'),
(734, 153, 4, '1.4 Diseños para aprender haciendo'),
(735, 154, 1, '2.1 Diseños con aprendizaje colaborativo.'),
(736, 154, 2, '2.2 Diseños con aprendizaje basado en problemas.'),
(737, 154, 3, '2.3 Diseños con aprendizaje activo.'),
(738, 154, 4, '2.4 Diseños mixtos.'),
(739, 155, 1, '3.1 Diseños usando software especializado.'),
(740, 155, 2, '3.2 Diseños con recursos educativos abiertos.'),
(741, 156, 1, '1.1 Concepto de comunicación.'),
(742, 156, 2, '1.2 Comunicación verbal (oral y escrita) y aprendizaje.'),
(743, 156, 3, '1.3 Comunicación no verbal y aprendizaje.'),
(744, 156, 4, '1.4 Estrategias para la comunicación del conocimiento matemático.'),
(745, 157, 1, '2.1 El concepto de evaluación.'),
(746, 157, 2, '2.2 Evaluación cualitativa y cuantitativa.'),
(747, 157, 3, '2.3 Criterios de evaluación.'),
(748, 157, 4, '2.4 Instrumentos de evaluación'),
(749, 158, 1, '3.1 La práctica docente.'),
(750, 158, 2, '3.2 El profesional reflexivo.'),
(751, 158, 3, '3.3 La revisión y cambio continuo de un proceso de aprendizaje de matemáticas.'),
(752, 159, 1, '1.1 Lectura y revisión del Reglamento interno de la Facultad de Ciencias (capítulos específicos referido a proceso de titulación, artículos 131 a 137).'),
(753, 159, 2, '1.2 Reuniones con el tutor para definir modalidad de titulación'),
(754, 160, 1, '2.1 Iniciar los trámites factibles para el proceso de titulación'),
(755, 161, 1, '3.1 Primer coloquio de tesistas a realizar con la presencia de los directores de tesis, el tutor de la generación y el maestro responsable del Seminario. Dos días de trabajo con 15 minutos de exposición por tesista y 15 minutos de observaciones por los as'),
(756, 161, 2, '3.2 Distribución del primer borrador final de la tesis a dos profesores lectores2 (además del director) al finalizar el segundo mes del semestre. Recibirán correcciones pasado otro mes.'),
(757, 161, 3, '3.3 Trabajo individual en redacción de la tesis en su versión final y preparación del Power Point para el coloquio como ensayo para examen profesional.'),
(758, 161, 4, '3.4 Examen de candidatura a realizar con la presencia de los directores de tesis, los lectores el tutor de la generación, el maestro responsable del Seminario, otros tesistas y alumnos de las generaciones más avanzadas de la carrera. Cada examen durará 1 '),
(759, 162, 1, '1.1 La influencia del sistema español'),
(760, 162, 2, '1.2 Adaptación en la colonización'),
(761, 162, 3, '1.3 Los primeros pensadores'),
(762, 162, 4, '1.4 Primeras estructuras del sistema'),
(763, 163, 1, '2.1 Análisis del sistema actual'),
(764, 163, 2, '2.2 Cambios durante los últimos 30 años'),
(765, 163, 3, '2.3 Elementos característicos: ventajas y desventajas'),
(766, 164, 1, '3.1 Ideas centrales que soportan el sistema'),
(767, 164, 2, '3.2 La cultura y el modelo imperante'),
(768, 164, 3, '3.3 Reflexión sobre posibilidades de mejora'),
(769, 165, 1, '1.1 Búsqueda y análisis de protocolos de investigación nacionales (SEP, CONACYT, FOMIX) y alguno internacional.'),
(770, 165, 2, '1.2 Elaboración de un protocolo de investigación para proponer un proyecto que continúe su tema de tesis'),
(771, 165, 3, '1.3 Someter el proyecto a evaluación para financiamiento'),
(772, 166, 1, '2.1 Análisis del proceso de registro de proyectos de investigación'),
(773, 166, 2, '2.2 Consecución de documentos y anexos que soportan el proyecto de investigación Establecimiento de convenios, organización de grupos de investigación, selección de estudiantes de servicio social y tesistas, elaboración e importancia del cronograma de inv'),
(774, 166, 3, '2.3 Estimación y pertinencia de plan de financiamiento. Elaboración de informes técnicos y financieros.'),
(775, 167, 1, '3.1 Analizar los criterios de formato para la evaluación de propuestas de investigación.'),
(776, 167, 2, '3.2 Analizar los criterios de contenido para la evaluación de propuestas de investigación.'),
(777, 167, 3, '3.3 Analizar los criterios de financiamiento para la evaluación de propuestas de investigación.'),
(778, 167, 4, '3.4 Evaluar cada propuesta de proyecto bajo los criterios identificados'),
(779, 168, 1, '4.1 Elaborar un artículo que resuma el avance de la tesis de licenciatura.'),
(780, 168, 2, '4.2 Analizar las políticas editoriales de revistas y colecciones de libros nacionales e internacionales'),
(781, 168, 3, '4.3 Analizar las recomendaciones para los autores de revistas y libros.'),
(782, 168, 4, '4.4 Analizar el proceso de dictamen de artículo y libros.'),
(783, 168, 5, '4.5 Aplicar los criterios analizados a un artículo derivado de la tesis de licenciatura.'),
(784, 169, 1, '1.1 Orígenes'),
(785, 169, 2, '1.2 Características '),
(786, 169, 3, '1.3 La conducta y el ambiente'),
(787, 169, 4, '1.4 Principios básicos'),
(788, 170, 1, '2.1 La teoría del aprendizaje significativo de Ausubel'),
(789, 170, 2, '2.2 Las aplicaciones educativas de la teoría de los esquemas'),
(790, 170, 3, '2.3 Las estrategias instruccionales y la “ tecnología del texto”'),
(791, 170, 4, '2.4 Los programas de entrenamiento en estrategias cognitivas y metacognitivas'),
(792, 170, 5, '2.5 El enfoque de expertos y novatos.'),
(793, 171, 1, '3.1 El papel de las relaciones sociales'),
(794, 171, 2, '3.2 El estudio de la actividad mediada instrumental'),
(795, 171, 3, '3.3 Aprendizaje y desarrollo'),
(796, 171, 4, '3.4 La zona de desarrollo próximo'),
(797, 171, 5, '3.5 La evaluación dinámica'),
(798, 172, 1, '4.1 El trabajo de Jean Piaget'),
(799, 172, 2, '4.2 Las teorías de la equilibración y de los estadios'),
(800, 172, 3, '4.3 La importancia del conocimiento lógico-matemático.'),
(801, 172, 4, '4.4 Conocimiento y conflicto'),
(802, 173, 1, '5.1 El aprendizaje activo.'),
(803, 173, 2, '5.2 Aprender a aprender.'),
(804, 173, 3, '5.3 Aprendizaje y adaptación.'),
(805, 173, 4, '5.4 Aprendizaje significativo y asimilación'),
(806, 174, 1, '1.1 Orígenes'),
(807, 174, 2, '1.2 Procesos matemáticos y fenómenos físicos'),
(808, 174, 3, '1.3 Utilidad de la matemática en la solución de problemas reales'),
(809, 175, 1, '2.1 Elementos del proceso'),
(810, 175, 2, '2.2 Características de los problemas'),
(811, 175, 3, '2.3 Uso de técnicas didácticas'),
(812, 176, 1, '3.1 La mediación del profesor'),
(813, 176, 2, '3.2 El rol de los estudiantes'),
(814, 176, 3, '3.4 Trabajo colaborativo y negociación de significados para el aprendizaje'),
(815, 177, 1, '4.1 Niveles de aprendizaje y significatividad'),
(816, 177, 2, '4.2 Reproducibilidad y adaptación del nuevo conocimiento a otros problemas'),
(817, 178, 1, '1.1 Definición'),
(818, 178, 2, '1.2 Características'),
(819, 178, 3, '1.3 Fuentes y repositorios de recursos educativos abiertos (REA)'),
(820, 179, 1, '2.1 Identificación de componentes de un REA'),
(821, 179, 2, '2.2 Recursos necesarios para su utilización'),
(822, 179, 3, '2.3 El diseño didáctico'),
(823, 179, 4, '2.4 REA completos: Objetos de Aprendizaje'),
(824, 180, 1, '3.1 Implementación en el aula'),
(825, 180, 2, '3.2 Ambientes de aprendizaje'),
(826, 180, 3, '3.3 Uso de técnicas didácticas'),
(827, 180, 4, '3.4 Evaluación del aprendizaje en el proceso'),
(828, 181, 1, '1.1 La matemática como conocimiento cultural'),
(829, 181, 2, '1.2 Contexto sociocultural y motivacional en el aprendizaje de las matemáticas'),
(830, 181, 3, '1.3 Propuestas constructivistas en el aprendizaje de las matemáticas'),
(831, 182, 1, '2.1 Conceptualización del contexto.'),
(832, 182, 2, '2.2 Contexto y constructivismo.'),
(833, 182, 3, '2.3 ¿Por qué variedad de contextos?'),
(834, 182, 4, '2.4 Contextualizar la instrucción matemática.'),
(835, 183, 1, '3.1 El concepto de modelo matemático'),
(836, 183, 2, '3.2 ¿Qué es la modelación matemática?'),
(837, 183, 3, '3.3 Elementos cognitivos en la modelación matemática'),
(838, 184, 1, '4.1 La Heurística'),
(839, 184, 2, '4.2 Habilidades del pensamiento'),
(840, 184, 3, '4.3 Metacognición o puntos de control o error');

-- --------------------------------------------------------

--
-- Table structure for table `Tema`
--

CREATE TABLE IF NOT EXISTS `Tema` (
  `TemaId` int(10) unsigned NOT NULL,
  `UnidadId` int(10) unsigned NOT NULL,
  `TemaOrden` int(10) unsigned NOT NULL,
  `TemaNombre` varchar(255) NOT NULL,
  `TemaHrs` tinyint(2) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Tema`
--

INSERT INTO `Tema` (`TemaId`, `UnidadId`, `TemaOrden`, `TemaNombre`, `TemaHrs`) VALUES
(1, 1, 1, 'Algebra de matrices', 10),
(7, 1, 2, 'Sistemas de ecuaciones lineales', 15),
(8, 2, 1, 'Definición y propiedades de los determinantes', 5),
(9, 2, 2, 'Aplicaciones de los determinantes', 5),
(10, 3, 1, 'Definición, operaciones, y propiedades de los vectores', 13),
(11, 3, 2, 'Ecuaciones vectoriales', 10),
(12, 4, 1, 'Operaciones y propiedades de los vectores en Rn', 8),
(13, 4, 2, 'Espacios euclidianos de dimensión n.', 7),
(14, 6, 1, 'Vectores y valores característicos', 7),
(15, 7, 1, 'Ecuaciones Paramétricas y Coordenadas Polares', 12),
(16, 7, 2, 'Sucesiones y Series Infinitas', 16),
(17, 7, 3, 'Funciones Vectoriales.', 8),
(18, 7, 4, 'Derivadas Parciales', 16),
(19, 7, 5, 'Integrales Múltiples', 14),
(20, 7, 6, 'Cálculo Vectorial', 14),
(25, 13, 1, 'Estructura, compilación, y ejecución de un programa en C++', 3),
(26, 13, 2, 'Variables y expresiones', 4),
(27, 13, 3, 'Memoria y apuntadores', 3),
(28, 14, 1, 'Expresiones boleadas', 10),
(29, 14, 2, 'Estructuras de decisión', 8),
(30, 15, 1, 'Estructuras de iteración', 12),
(31, 16, 1, 'Definición de funciones', 6),
(32, 16, 2, 'Programación estructurada', 6),
(33, 16, 4, 'Creación de librerías', 2),
(34, 17, 1, 'Arreglos', 9),
(35, 17, 2, 'Cadenas de caracteres', 3),
(36, 18, 3, 'Manejo dinámico de memoria', 6),
(37, 19, 1, 'Introducción a la estadística ', 5),
(38, 20, 2, 'Introducción a la probabilidad', 10),
(39, 21, 1, 'Distribuciones que involucran variables aleatorias discretas', 10),
(40, 22, 1, 'Distribuciones que involucran variables aleatorias continuas', 10),
(41, 23, 1, 'Datos y muestras', 15),
(42, 24, 1, 'Modelos de regresión lineal', 20),
(43, 25, 1, 'Correlación', 5),
(44, 26, 1, 'Enfoques educativos', 10),
(45, 27, 1, 'Teorías del aprendizaje', 15),
(46, 28, 1, 'Situaciones didácticas y tipos de aprendizaje', 25),
(47, 29, 1, 'Situaciones didácticas y tipos de enseñanza', 30),
(48, 30, 1, 'Introducción a las ecuaciones diferenciales y sus soluciones', 4),
(49, 31, 1, 'Ecuaciones diferenciales ordinarias de primer orden y sus aplicaciones', 23),
(50, 32, 1, 'Ecuaciones diferenciales ordinarias de orden superior y sus aplicaciones', 30),
(51, 33, 1, 'Soluciones en serie de potencias', 10),
(52, 34, 1, 'Transformada de Laplace e introducción a los sistemas lineales', 13),
(53, 35, 1, 'La recta real y el n-espacio euclidiano', 3),
(54, 36, 1, 'Elementos de Topología', 9),
(55, 37, 1, 'Propiedades de los conjuntos compactos y conexos', 10),
(56, 38, 1, 'Mapeos continuos', 14),
(57, 39, 1, 'Mapeos diferenciales', 20),
(58, 40, 1, 'Teoremas de la función inversa y de la función implícita', 24),
(59, 41, 1, 'Aproximaciones y errores', 5),
(60, 42, 1, 'Solución de ecuaciones de una variable', 8),
(61, 43, 1, 'Interpolación y aproximación polinómica', 15),
(62, 44, 1, 'Solución de ecuaciones diferenciales ordinarias', 20),
(63, 45, 1, 'Métodos de diferenciación e integración numérica', 18),
(64, 46, 1, 'Solución de sistemas de ecuaciones lineales', 14),
(65, 47, 1, 'La enseñanza de la matemática en los inicios del siglo XX.', 20),
(66, 48, 1, 'La escuela anglo-sajona.', 20),
(67, 49, 1, 'La escuela francesa', 20),
(68, 50, 1, 'La corriente socioepistemológica', 20),
(69, 51, 1, 'Diferencia entre problema y problematización', 25),
(70, 52, 1, 'Elementos de un proceso de problematización', 25),
(71, 53, 1, 'Planteamiento de actividades que propician la problematización', 30),
(72, 54, 1, 'Principios fundamentales de conteo', 10),
(73, 55, 1, 'Enumeración en la teoría de conjuntos.', 10),
(74, 56, 1, 'Relaciones y funciones.', 10),
(75, 57, 1, 'Lenguajes', 10),
(76, 58, 1, 'El sistema de los enteros', 10),
(77, 59, 1, 'El principio de inclusión y exclusión', 10),
(78, 60, 1, ' Funciones generadoras', 10),
(79, 61, 1, 'Relaciones de recurrencia', 10),
(80, 62, 1, 'Teoría de Sturm-Liouville', 12),
(81, 63, 1, ' Funciones especiales.', 34),
(82, 64, 1, 'Transformadas integrales', 16),
(83, 65, 1, 'Transformadas discretas', 18),
(84, 66, 1, ' Epistemología de las Matemáticas', 20),
(85, 67, 1, 'Estructura de la Epistemología de las Matemáticas', 20),
(86, 67, 1, 'Obstáculos didácticos.', 20),
(87, 67, 1, ' Didáctica de la Matemática.', 20),
(89, 70, 1, 'Aproximaciones teóricas sobre el aprendizaje de las matemáticas', 25),
(90, 71, 1, 'Aprendizaje y condicionamiento en matemáticas', 15),
(91, 72, 1, ' Aprendizaje, cognición y procesamiento de información', 10),
(92, 73, 1, 'Aprendizaje, cognición y procesamiento de información', 10),
(93, 73, 1, 'Los procesos mentales superiores', 30),
(94, 74, 1, 'Fundamentos del concepto contexto', 20),
(95, 75, 1, ' Elementos de un contexto.', 20),
(96, 76, 3, 'Actividades didácticas y contexto', 40),
(97, 77, 1, ' Elementos básicos', 25),
(98, 78, 1, 'Estructuras algebraicas', 25),
(99, 79, 1, ' Grupos y otros sistemas con dos operaciones', 30),
(100, 80, 1, ' Funciones analíticas', 20),
(101, 81, 1, 'Integración compleja', 20),
(102, 82, 1, 'Series Infinitas', 20),
(103, 83, 1, 'Integración en contornos', 20),
(104, 84, 1, 'Primeros elementos tecnológicos educativos', 20),
(105, 85, 1, ' El ordenador y medios audiovisuales', 20),
(106, 86, 1, ' El internet', 20),
(107, 87, 1, ' Recursos educativos abiertos', 20),
(108, 88, 1, ' Argumentación en la clase de matemáticas ', 20),
(109, 89, 1, 'La intuición y la deducción en matemáticas', 20),
(110, 90, 1, ' La matemática y sus fundamentos', 40),
(111, 91, 1, 'Elementos básicos de la práctica docente', 36),
(112, 93, 1, ' Fundamentos teóricos', 24),
(113, 94, 1, ' Microenseñanza', 20),
(114, 95, 1, 'Pensamiento y Lenguaje', 20),
(115, 96, 1, 'Los diversos tipos de lenguajes', 40),
(116, 97, 1, ' El lenguaje como medio para la interacción educativa.', 20),
(117, 98, 1, 'Planteamiento de un problema de investigación educativa.', 20),
(118, 99, 1, ' Referentes teóricos', 20),
(119, 100, 1, ' Métodos cualitativos y cuantitativos.', 20),
(120, 101, 1, 'Diseño metodólogico', 20),
(121, 102, 1, ' Los métodos, técnicas y fundamentos matemáticos respecto al perfil del alumno.', 25),
(122, 103, 1, 'Los argumentos inductivos, las pruebas formales y la clase de matemáticas.', 25),
(123, 104, 1, 'Nuevos elementos para los métodos de enseñanza.', 30),
(124, 105, 1, ' Nuevo enfoque del proceso de formación.', 25),
(125, 106, 1, 'Capacidades docentes básicas.', 2),
(126, 107, 1, 'La calidad de la formación docente.', 30),
(127, 108, 1, ' Elementos de un proceso de construcción del conocimiento.', 30),
(128, 109, 1, ' Elementos de planeación.', 25),
(129, 110, 1, ' Secuencias didácticas.', 25),
(142, 111, 1, 'Planteamiento de un problema de investigación educativa.', 20),
(143, 112, 1, 'Referentes teóricos', 20),
(146, 113, 1, 'Métodos cualitativos y cuantitativos', 20),
(147, 134, 1, 'Diseño metodológico', 20),
(148, 135, 1, 'Enfoques de evaluación', 10),
(149, 136, 1, 'Modelos de Evaluación', 10),
(150, 137, 1, 'Técnicas de Evaluación', 30),
(151, 138, 1, 'Proyectos Evaluadores', 20),
(152, 139, 1, 'Las Tic''s como herramienta de apoyo para la evaluación', 10),
(153, 140, 1, 'Diseños didácticos con base en los estilos de aprendizaje', 25),
(154, 141, 1, 'Estrategias de enseñanza y aprendizaje. Técnicas didácticas', 25),
(155, 142, 1, 'Uso de recursos tecnológicos', 30),
(156, 143, 1, 'Estrategias de Comunicación.', 28),
(157, 144, 1, 'Elementos de evaluación.', 28),
(158, 145, 1, 'La reflexión continua de la práctica docente.', 24),
(159, 146, 1, 'Elección de modalidad de titulación', 4),
(160, 147, 2, 'Proceso de titulación.', 2),
(161, 148, 1, 'Coloquios de tesistas de licenciatura', 74),
(162, 149, 1, 'Historia del sistema educativo', 30),
(163, 150, 1, 'Características generales', 25),
(164, 151, 1, 'La filosofía base y las características culturales', 25),
(165, 152, 1, 'Protocolos de investigación', 20),
(166, 153, 1, 'Procesos de registro, desarrollo y seguimiento de convocatoria de investigación', 20),
(167, 154, 1, 'Criterios de evaluación de propuestas de investigación', 20),
(168, 155, 1, 'Revistas y libros que publican investigación educativa', 20),
(169, 156, 1, 'El enfoque conductiva', 16),
(170, 157, 1, 'El enfoque cognitivo', 16),
(171, 158, 1, 'El enfoque sociocultural', 16),
(172, 159, 1, 'El enfoque constructivista', 16),
(173, 160, 1, 'Enfoques centrados en el aprendizaje', 16),
(174, 161, 1, 'Fundamentos', 0),
(175, 162, 1, 'Diseño de escenarios didácticos', 0),
(176, 163, 1, 'Implementación', 0),
(177, 164, 1, 'Evaluación', 0),
(178, 165, 1, 'Definición y características', 0),
(179, 166, 1, 'Diseño de secuencias didácticas', 0),
(180, 167, 1, 'Implementación y evaluación', 0),
(181, 168, 1, 'Fundamentos', 21),
(182, 169, 1, 'Contexto como construcción ', 21),
(183, 170, 1, 'Aplicación de las matemáticas en contexto', 21),
(184, 171, 1, 'Problematización de las matemáticas en contexto', 17);

-- --------------------------------------------------------

--
-- Table structure for table `TipoMateria`
--

CREATE TABLE IF NOT EXISTS `TipoMateria` (
  `TipoMateriaId` int(10) unsigned NOT NULL,
  `TipoMateriaNombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `TipoPropuestaCurricular`
--

CREATE TABLE IF NOT EXISTS `TipoPropuestaCurricular` (
  `TipoPropCurrId` int(10) unsigned NOT NULL,
  `TipoPropCurrNombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `TipoUsuario`
--

CREATE TABLE IF NOT EXISTS `TipoUsuario` (
  `TipoUsuId` int(10) unsigned NOT NULL,
  `TipoUsuNombre` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TipoUsuario`
--

INSERT INTO `TipoUsuario` (`TipoUsuId`, `TipoUsuNombre`) VALUES
(1, 'Profesor-Investigador'),
(2, 'Profesor Hora Clase'),
(3, 'Administrativo'),
(4, 'Secretaría Académica'),
(5, 'Coordinador de Licenciatura'),
(6, 'Presidente de Academia'),
(7, 'Comisión Curricular');

-- --------------------------------------------------------

--
-- Table structure for table `Unidad`
--

CREATE TABLE IF NOT EXISTS `Unidad` (
  `UnidadId` int(10) unsigned NOT NULL,
  `ProgAcademicoId` int(10) unsigned NOT NULL,
  `UnidadOrden` int(10) unsigned NOT NULL DEFAULT '0',
  `UnidadNombre` varchar(255) NOT NULL,
  `UnidadHrs` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `UnidadObjetivo` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Unidad`
--

INSERT INTO `Unidad` (`UnidadId`, `ProgAcademicoId`, `UnidadOrden`, `UnidadNombre`, `UnidadHrs`, `UnidadObjetivo`) VALUES
(1, 1, 1, 'Sistemas de Ecuaciones Lineales y Matrices', 25, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">- Aprender los m&eacute;todos de reducci&oacute;n para la soluci&oacute;n de</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	sistemas de ecuaciones lineales y algunas de sus</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	propiedades.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	- Introducir el estudio b&aacute;sico de matrices y sus propiedades</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	algebraicas.</p>\r\n'),
(2, 1, 2, 'Determinantes', 10, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">- Aprender a obtener el determinante de una matriz</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	cuadrada.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	- Que conozca sus propiedades y aplicaciones en la soluci&oacute;n</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	de sistema de ecuaciones lineales.</p>\r\n'),
(3, 1, 3, 'Vectores en R2 y R3', 23, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">- Aprender los conceptos de plano, espacio y vectores en R</span><span style="font-family: Helvetica; font-stretch: normal; font-size: 7px; line-height: normal;">2</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	y R<span style="font-stretch: normal; font-size: 7px; line-height: normal;">3</span>.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	- Realizar operaciones algebraicas con vectores y conozca</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	las distintas ecuaciones de la recta y planos en R<span style="font-stretch: normal; font-size: 7px; line-height: normal;">3</span>.</p>\r\n'),
(4, 1, 4, 'Vectores en Rn', 15, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">-Introducir al estudiante una idea intuitiva de espacios</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	vectoriales por medio del estudio de espacios Euclidianos.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	- Reconocer el producto interior como la estructura que</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	permite definir conceptos de longitud, distancia y &aacute;ngulos</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	entre vectores.</p>\r\n'),
(6, 1, 5, 'Vectores y valores característicos', 7, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">- Aprenda los medios adecuados para encontrar valores y</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	vectores caracter&iacute;sticos de matrices.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	- Aplicar el proceso de diagonalizaci&oacute;n.</p>\r\n'),
(7, 4, 1, 'Ecuaciones Paramétricas y Coordenadas Polares', 12, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">-Establecer funciones por medio de ecuaciones param&eacute;tricas y</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	coordenadas polares.</p>\r\n'),
(8, 4, 2, 'Sucesiones y Series Infinitas', 16, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">-Aprender los conceptos de sucesiones y series, as&iacute; como sus&nbsp;</span><span style="font-family: Helvetica; font-size: 11px;">caracter&iacute;sticas. Adem&aacute;s el alumno estudiar&aacute; algunas series</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	importantes como las de Taylor y Maclaurin.</p>\r\n'),
(9, 4, 3, 'Funciones Vectoriales..', 8, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">-Estudiar y entender las funciones vectoriales y algunas aplicaciones&nbsp;</span><span style="font-family: Helvetica; font-size: 11px;">en F&iacute;sica.</span></p>\r\n'),
(10, 4, 4, 'Derivadas Parciales.', 16, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">-Estudiar y entender las funciones de varias variables, as&iacute; como los</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	conceptos de derivadas parciales y sus aplicaciones en m&aacute;ximos y</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	m&iacute;nimos.</p>\r\n'),
(11, 4, 5, 'Integrales Múltiples.', 14, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">-Asimilar el concepto de Integrales M&uacute;ltiples y su relaci&oacute;n con el</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	c&aacute;lculo de vol&uacute;menes, masas y centroides en coordenadas</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	cartesianas, polares y cil&iacute;ndricas.</p>\r\n'),
(12, 4, 6, 'Cálculo Vectorial.', 14, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">-Estudiar y entender los conceptos de C&aacute;lculo a funciones que</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	asignan vectores a puntos en el espacio.</p>\r\n'),
(13, 5, 1, 'Conceptos básicos de programación en C++.', 10, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">- Comprender la estructura b&aacute;sica de un programa en lenguaje</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	C/C++.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	- Compilar y ejecutar un programa sencillo.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	- Implementar f&oacute;rmulas matem&aacute;ticas.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	- Leer datos num&eacute;ricos desde el teclado.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	- Presentar resultados en la pantalla.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	- Comprender el concepto de variable y la manera en que se</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	almacenan en memoria, as&iacute; como el manejo b&aacute;sico de</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	apuntadores.</p>\r\n'),
(14, 5, 2, 'Estructuras de decisión.', 10, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">- Conocer y dominar las estructuras de decisi&oacute;n y las expresiones</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	booleanas.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	- Elaborar programas donde se requieran bifurcaciones.</p>\r\n'),
(15, 5, 3, 'Estructuras de iteración.', 12, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">- Conocer y dominar las estructuras de iteraci&oacute;n.</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	- Elaborar programas tomando ventaja de los ciclos sencillos y</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	anidados.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	- Reconocer las condiciones de inicio, parada, y terminaci&oacute;n</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	prematura de un ciclo.</p>\r\n'),
(16, 5, 4, 'Funciones y programación estructurada.', 14, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">- Estructurar un programa mediante dise&ntilde;o descendente (divide y</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	vencer&aacute;s) basado en funciones.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	- Definir funciones que acepten par&aacute;metros por valor o referencia, y</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	que devuelvan resultados.</p>\r\n'),
(17, 5, 5, 'Arreglos.', 12, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">- Conocer el concepto de arreglo de variables.</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	- Definir arreglos y acceder arbitrariamente a sus elementos, as&iacute;</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	como implementar diversos algoritmos que los requieran.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	- Comprender y tomar ventaja de la relaci&oacute;n entre arreglos y</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	apuntadores.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	- Manejar cadenas de caracteres.</p>\r\n'),
(18, 5, 6, 'Introducción al manejo dinámico de memoria.', 6, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">- Conocer los mecanismos para la asignaci&oacute;n din&aacute;mica de memoria,</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	tanto para variables sencillas como para arreglos.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	- Implementar programas con grandes requerimientos de memoria, y</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	de administrar la memoria de manera adecuada.</p>\r\n'),
(19, 6, 1, 'Introducción a la estadística', 5, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">- Analizar situaciones problem&aacute;ticas identificando variables que</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	requieren el uso de m&eacute;todos estad&iacute;sticos para su mejor</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	comprensi&oacute;n.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	- Distinguir los objetivos de la estad&iacute;stica descriptiva y la</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	inferencial, relacion&aacute;ndolas de manera l&oacute;gica.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	- Describir universos estad&iacute;sticos y sus elementos.</p>\r\n'),
(20, 6, 2, 'Introducción a la probabilidad', 10, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">- Explicar el concepto de probabilidad y las utilidades de su</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	estudio.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	- Ejemplificar los conceptos de espacio muestral y eventos.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	- Usar tablas y diagramas de Venn para simplificar el c&aacute;lculo de</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	probabilidad, marginal conjunta y condicional.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	- Utilizar las reglas de la adici&oacute;n y la multiplicaci&oacute;n en la soluci&oacute;n</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	de diversos problemas.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	- Resolver problemas de combinaciones y permutaciones.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	- Explicar el significado del teorema de Bayes y utilizarlo en la</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	soluci&oacute;n de diversos casos.</p>\r\n'),
(21, 6, 3, 'Distribuciones que involucran variables aleatorias discretas', 10, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">-Identificar las distribuciones y manipular las variables aleatorias</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	discretas.</p>\r\n'),
(22, 6, 4, 'Distribuciones que involucran variables aleatoria continuas', 10, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">-Manipular las variables aleatorias continuas y conocer&aacute;</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	distribuciones continuas y principalmente la Gaussiana.</p>\r\n'),
(23, 6, 5, 'Datos y muestras', 15, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">-Manipular los datos y muestras estad&iacute;sticos, utilizar&aacute; histogramas y</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	sabr&aacute; reportar e interpretar resultados.</p>\r\n'),
(24, 6, 6, 'Modelos de regresión lineal', 20, '<p>\r\n	<span style="font-family: Helvetica;">-Seleccionar y utilizar modelos de regresi&oacute;n lineal de acuerdo al</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	an&aacute;lisis e informaci&oacute;n con que cuente.</p>\r\n'),
(25, 6, 7, 'Correlación', 5, '<p>\r\n	<span style="font-family: Helvetica;">-Visualizar la importancia de la estad&iacute;stica en cualquier</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	actividad humana que requiera toma de decisiones y tendr&aacute; la</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	capacidad de manipular, reportar e interpretar informaci&oacute;n</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	estad&iacute;sticamente.</p>\r\n'),
(26, 7, 1, 'Enfoques Educativos.', 10, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">-Identificar los enfoques educativos.</span></p>\r\n'),
(27, 7, 2, 'Teorías del aprendizaje.', 15, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">-Conocer a fondo las teor&iacute;as del aprendizaje m&aacute;s importantes en la</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	evoluci&oacute;n del aprendizaje, adem&aacute;s de las actualmente utilizadas.</p>\r\n'),
(28, 7, 3, 'Situaciones didácticas y tipos de aprendizaje.', 25, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">-Asociar situaciones de ense&ntilde;anza-aprendizaje con las teor&iacute;as</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	estudiadas, conocer&aacute; y explorar&aacute; los tipos de aprendizaje.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	-Crear situaciones did&aacute;cticas que contribuyan al aprendizaje.</p>\r\n'),
(29, 7, 4, 'Situaciones didácticas y tipos de enseñanza.', 30, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">-Asociar situaciones de ense&ntilde;anza-aprendizaje con las teor&iacute;as</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	estudiadas, conocer&aacute; y explorar&aacute; los tipos de ense&ntilde;anza.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	-Crear situaciones did&aacute;cticas desde el punto de vista de la</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	ense&ntilde;anza.</p>\r\n'),
(30, 8, 1, 'Introducción a las ecuaciones diferenciales y sus soluciones', 4, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">- Conocer y utilizar tipos de ecuaciones diferenciales y sus</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	soluciones.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	- Utilizar y aplicar los conceptos de valores iniciales y de frontera.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	- Percibir la importancia de los modelos matem&aacute;ticos.</p>\r\n'),
(31, 8, 2, 'Ecuaciones diferenciales ordinarias de primer orden y sus aplicaciones.', 23, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">- Resolver ecuaciones de variables separables, exactas y factores</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	de integraci&oacute;n.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	- Realizar cambios de variable y m&eacute;todos de sustituci&oacute;n.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	- Solucionar problemas de raz&oacute;n de cambio, ejemplos de</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	aplicaciones y modelos con ecuaciones de primer orden.</p>\r\n'),
(32, 8, 3, 'Ecuaciones diferenciales ordinarias de orden superior y sus aplicaciones', 30, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">- Aplicar los conjuntos e independencia de soluciones, ecuaciones</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	con coeficientes constantes, m&eacute;todos de coeficientes</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	indeterminados y variaci&oacute;n de par&aacute;metros, ecuaci&oacute;n de Cauchy-</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	Euler.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	- Aplicar las ecuaciones de 2&ordm; orden en circuitos el&eacute;ctricos y en</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	general en problemas de resonancia.</p>\r\n'),
(33, 8, 4, 'Soluciones en serie de potencias', 10, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">- Determinar la existencia de soluciones para puntos ordinarios y</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	singulares.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	- Aplicar el Teorema de Frobenius. Ecuaciones de Legendre y</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	Bessel.</p>\r\n'),
(34, 8, 5, 'Transformada de Laplace e introducción a los sistemas lineales', 23, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">- Conocer y aplicar la eefinici&oacute;n de la transformada de Laplace,</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	transformadas inversas y de derivadas.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	- Aplicar la transformada en la soluci&oacute;n de ecuaciones</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	diferenciales, funci&oacute;n delta de dirac.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	- Introducir a los sistemas lineales.</p>\r\n'),
(35, 9, 1, 'La recta real y el n-espacio euclidiano.', 3, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">-Trabajar e interpretar la informaci&oacute;n relacionada con la recta real y el</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	n-espacio euclidiano.</p>\r\n'),
(36, 9, 2, 'Elementos de Topología.', 9, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">-Conocer y utilizar los elementos topol&oacute;gicos.</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	-Desarrollar y obtener sucesiones y series.</p>\r\n'),
(37, 9, 3, 'Propiedades de los conjuntos compactos y conexos.', 10, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">-Conocer los conjuntos compactos, arco conexo y conexo, as&iacute; como</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	sus propiedades.</p>\r\n'),
(38, 9, 4, 'Mapeos continuos', 14, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">-Obtener, interpretar y utilizar la continuidad, imagen y operaciones</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	de los conjuntos.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	-Conocer y utilizar el teorema del valor intermedio.</p>\r\n'),
(39, 9, 5, 'Mapeos diferenciales', 20, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">-Realizar mapeos.</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	-Utilizar e interpretar el teorema del valor medio, el teorema de Taylor</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	y las derivadas superiores.</p>\r\n'),
(40, 9, 6, 'Teoremas de la función inversa y de la función implícita.', 24, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">-Conocer y utilizar los teoremas de la funci&oacute;n inversa y la funci&oacute;n</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	impl&iacute;cita.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	-Practicado y aplicar los multiplicadores de Lagrange.</p>\r\n'),
(41, 10, 1, 'Aproximaciones y errores.', 5, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">-Programar funciones sencillas, dise&ntilde;ar algoritmos y determinar</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	errores.</p>\r\n'),
(42, 10, 2, 'Solución de ecuaciones de una variable.', 8, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">-Dise&ntilde;ar algoritmos que den soluciones a ecuaciones lineales por</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	distintos m&eacute;todos.</p>\r\n'),
(43, 10, 3, 'Interpolación y aproximación polinómica.', 20, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">-Comprender el concepto de interpolaci&oacute;n y sus aplicaciones.</span></p>\r\n<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">-Conocer e implementar diversos m&eacute;todos de interpolaci&oacute;n</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	polinomial conociendo sus ventajas y desventajas.</p>\r\n'),
(44, 10, 4, 'Solución de ecuaciones diferenciales ordinarias.', 15, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">-Desarrollar algoritmos para solucionar ecuaciones diferenciales</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	ordinarias utilizando diversos m&eacute;todos.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	-Aplicar algoritmos desarrollados.</p>\r\n'),
(45, 10, 5, 'Métodos de diferenciación e integración numérica.', 18, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">-Dise&ntilde;ar algoritmos para diferenciar o integrar num&eacute;ricamente</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	cualquier funci&oacute;n mediante aproximaciones num&eacute;ricas.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	-Utilizar aproximaciones de mayor precisi&oacute;n.</p>\r\n'),
(46, 10, 6, 'Solución de sistemas de ecuaciones lineales.', 14, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">- Implementar los algoritmos cl&aacute;sicos (Gauss y Gauss Jord&aacute;n)</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	para resolver sistemas de ecuaciones lineales y factorizar</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	matrices.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	- Aplicar estas soluciones a diversos problemas y determinar el</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	error.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	- Implementar un algoritmo de ortogonalizaci&oacute;n.</p>\r\n'),
(47, 11, 1, 'La enseñanza de la matemática en los inicios del siglo XX.', 20, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">- Conocer la evoluci&oacute;n de la ense&ntilde;anza de la matem&aacute;tica</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	desde los inicios del siglo XX.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	- Conocer las causas de la creaci&oacute;n de la escuela</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	contempor&aacute;nea.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	- Analizar y comparar la situaci&oacute;n de la ense&ntilde;anza a</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	principios del siglo XX con la ense&ntilde;anza que ha experimentado personalmente.</p>\r\n'),
(48, 11, 2, 'La escuela anglo-sajona.', 20, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">- Analizar las primeras investigaciones sobre el proceso</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	aprendizaje.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	- Dominar las primeras teor&iacute;as cognitivas.</p>\r\n'),
(49, 11, 3, 'La escuela francesa.', 20, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">-Conocer y experimentar las primeras metodolog&iacute;as para la</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	investigaci&oacute;n en did&aacute;ctica de las matem&aacute;ticas y lo que da</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	lugar a la ingenier&iacute;a did&aacute;ctica.</p>\r\n'),
(50, 11, 4, 'La corriente socioepistemológica.', 20, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">- Ahondar en la corriente socioepistemol&oacute;gica.</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	- Conocer sus principios y la influencia que ha tenido en</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	diversos pa&iacute;ses, as&iacute; como su desarrollo en</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	Latinoam&eacute;rica.</p>\r\n'),
(51, 12, 1, 'Diferencia entre problema y problematización.', 25, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">- Diferenciar perfectamente el problema y la problematizaci&oacute;n.</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	- Conocer el m&eacute;todo Aprendizaje basado en problemas y los</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	procesos de soluci&oacute;n.</p>\r\n'),
(52, 12, 2, 'Elementos de un proceso de problematización.', 25, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">- Representar, interaccionar, analizar y sintetizar un proceso de</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	problematizaci&oacute;n.</p>\r\n'),
(53, 12, 3, 'Planteamiento de actividades que propician la problematización.', 30, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">-Plantear actividades que propicien la problematizaci&oacute;n con</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	ayuda de instrumentos psicol&oacute;gicos.</p>\r\n'),
(54, 13, 1, 'Principios fundamentales de conteo', 10, '<p>\r\n	<span style="font-family: Helvetica;">-Plantear y resolver problemas involucrando los conceptos de</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	permutaci&oacute;n y/o combinaci&oacute;n.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Reconocer la equivalencia del: N&uacute;mero de soluciones enteras</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	de la ecuaci&oacute;n, n&uacute;mero de selecciones, con repetici&oacute;n de tama&ntilde;o R de una colecci&oacute;n de tama&ntilde;o N, n&uacute;mero de</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	maneras de distribuir R objetos id&eacute;nticos entre N</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	destinatarios distintos.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Plantear y resolver problemas en los que tenga que hacer uso</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	de la equivalencia.</p>\r\n'),
(55, 13, 2, 'Enumeración en la teoría de conjuntos.', 10, '<p>\r\n	<span style="font-family: Helvetica;">-Reconocer en la teor&iacute;a de conjuntos una estructura base para</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	hacer una formulaci&oacute;n concisa de los temas matem&aacute;ticos</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	que se estudian.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Plantear y resolver problemas de conteo con la herramienta de</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	la teor&iacute;a de conjuntos.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Calcular la probabilidad de eventos en espacios muestrales</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	equiprobables.</p>\r\n'),
(56, 13, 3, 'Relaciones y funciones.', 10, '<p>\r\n	<span style="font-family: Helvetica;">-Determinar el espacio muestral asociado a un experimento</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	usando un diagrama de &aacute;rbol.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Contar el n&uacute;mero de funciones, funciones inyectivas (uno a</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	uno) y de funciones suprayectivas.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	Plantear y resolver problemas de conteo.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Contar el n&uacute;mero de formas de distribuir M objetos en N</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	recipientes id&eacute;nticos, admitiendo la posibilidad de</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	recipientes vac&iacute;os.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Plantear y resolver problemas de conteo haciendo uso del</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	principio del palomar.</p>\r\n'),
(57, 13, 4, 'Lenguajes.', 0, '<p>\r\n	<span style="font-family: Helvetica;">-Representar una m&aacute;quina de estados finitos por su tabla de</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	estado y/o diagrama de estado.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Determinar la cadena de salida para una cadena dada en el</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	estado inicial.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Elaborar un diagrama de estado para una m&aacute;quina de estados</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	finitos que reconozca una sucesi&oacute;n dada.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Determinar si una relaci&oacute;n en un conjunto, cumple ser:</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	reflexiva, sim&eacute;trica, antisim&eacute;trica o transitiva.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Determinar si una relaci&oacute;n en un conjunto, cumple ser: un</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	orden parcial, una relaci&oacute;n de equivalencia.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Reconocer las propiedades reflexiva, sim&eacute;trica y transitiva.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Relacionar las propiedades de las relaciones y la estructura de</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	los grafos dirigidos.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Elaborar un diagrama de Hasse para una relaci&oacute;n de orden</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	parcial en un conjunto.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Aplicar el &quot;Algoritmo de la clasificaci&oacute;n topol&oacute;gica&quot;.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Aplicar el &quot;Algoritmo de minimizaci&oacute;n&quot; para una m&aacute;quina de</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	estados finitos.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Hallar una cadena caracter&iacute;stica para una pareja de estados</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	de una m&aacute;quina.</p>\r\n'),
(58, 13, 5, 'El sistema de los enteros.', 10, '<p>\r\n	<span style="font-family: Helvetica;">-Representar una m&aacute;quina de estados finitos por su tabla de&nbsp;</span><span style="font-family: Helvetica;">estado y/o diagrama de estado.</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Determinar la cadena de salida para una cadena dada en el</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	estado inicial.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Elaborar un diagrama de estado para una m&aacute;quina de estados</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	finitos que reconozca una sucesi&oacute;n dada.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Determinar si una relaci&oacute;n en un conjunto, cumple ser:</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	reflexiva, sim&eacute;trica, antisim&eacute;trica o transitiva.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Determinar si una relaci&oacute;n en un conjunto, cumple ser: un</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	orden parcial, una relaci&oacute;n de equivalencia.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Reconocer las propiedades reflexiva, sim&eacute;trica y transitiva.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Relacionar las propiedades de las relaciones y la estructura de</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	los grafos dirigidos.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Elaborar un diagrama de Hasse para una relaci&oacute;n de orden</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	parcial en un conjunto.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Aplicar el &quot;Algoritmo de la clasificaci&oacute;n topol&oacute;gica&quot;.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Aplicar el &quot;Algoritmo de minimizaci&oacute;n&quot; para una m&aacute;quina de</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	--Hallar una cadena caracter&iacute;stica para una pareja de estados</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	de una m&aacute;quina.</p>\r\n'),
(59, 13, 6, 'El principio de inclusión y exclusión.', 10, '<p>\r\n	<span style="font-family: Helvetica;">-Representar una m&aacute;quina de estados finitos por su tabla de</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	estado y/o diagrama de estado.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Determinar la cadena de salida para una cadena dada en el</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	estado inicial.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Elaborar un diagrama de estado para una m&aacute;quina de estados</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	finitos que reconozca una sucesi&oacute;n dada.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Determinar si una relaci&oacute;n en un conjunto, cumple ser:</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	reflexiva, sim&eacute;trica, antisim&eacute;trica o transitiva.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Determinar si una relaci&oacute;n en un conjunto, cumple ser: un</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	orden parcial, una relaci&oacute;n de equivalencia.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Reconocer las propiedades reflexiva, sim&eacute;trica y transitiva.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Relacionar las propiedades de las relaciones y la estructura de</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	los grafos dirigidos.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Elaborar un diagrama de Hasse para una relaci&oacute;n de orden</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	parcial en un conjunto.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Aplicar el &quot;Algoritmo de la clasificaci&oacute;n topol&oacute;gica&quot;.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Aplicar el &quot;Algoritmo de minimizaci&oacute;n&quot; para una m&aacute;quina de</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	estados finitos.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Hallar una cadena caracter&iacute;stica para una pareja de estados</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	de una m&aacute;quina.</p>\r\n'),
(60, 13, 7, 'Funciones generadoras.', 10, '<p>\r\n	<span style="font-family: Helvetica;">-Plantear y resolver problemas utilizando el concepto de funci&oacute;n&nbsp;</span><span style="font-family: Helvetica;">generadora.</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Plantear y resolver problemas utilizando la funci&oacute;n generadora exponencial.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Utilizar el operador sumatoria para ir de la funci&oacute;n generadora</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	(ordinaria) de una sucesi&oacute;n a la funci&oacute;n generadora de la</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	serie que &eacute;sta engendra.</p>\r\n'),
(61, 13, 8, 'Relaciones de recurrencia.', 10, '<p>\r\n	<span style="font-family: Helvetica;">-Plantear y resolver problemas de ecuaciones en diferencia de</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	tipo lineal.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Plantear y resolver problemas de ecuaciones en diferencias de</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	tipo lineal no homog&eacute;neas, con ayuda de las funciones</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	generadoras.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Plantear y resolver problemas particulares de ecuaciones en</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	diferencias de tipo no lineal, usando el m&eacute;todo de las</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	funciones generadoras.</p>\r\n'),
(62, 14, 1, 'Teoría de Sturm-Liouville', 12, '<p>\r\n	<span style="font-family: Helvetica;">-Estudiar ecuaciones diferenciales ordinarias autoadjuntas y su</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	relaci&oacute;n con operadores Herm&iacute;ticos. Adem&aacute;s el estudiante estudiar&aacute; la completez para eigenfunciones</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	asociadas a &eacute;stas ecuaciones diferenciales.</p>\r\n'),
(63, 14, 2, 'Funciones especiales', 34, '<p>\r\n	<span style="font-family: Helvetica;">-Analizar las simetr&iacute;as asociadas con ciertas ecuaciones</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	diferenciales que llevan al estudio de funciones</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	ortogonales de relevancia en diversas situaciones en</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	Matem&aacute;ticas, F&iacute;sica e Ingenier&iacute;a.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Desarrollar relaciones de</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	recurrencia para dichas funciones.</p>\r\n');
INSERT INTO `Unidad` (`UnidadId`, `ProgAcademicoId`, `UnidadOrden`, `UnidadNombre`, `UnidadHrs`, `UnidadObjetivo`) VALUES
(64, 14, 3, 'Transformadas integrales', 16, '<p>\r\n	<span style="font-family: Helvetica;">-Desarrollar el concepto de transformada integral, y estudiar</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	algunas transformadas en particular. Analizar tambi&eacute;n las</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	relaciones de convoluci&oacute;n para las transformadas de</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	Fourier y de Laplace, y la aplicaci&oacute;n para la resoluci&oacute;n de</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	ecuaciones diferenciales</p>\r\n'),
(65, 14, 4, 'Transformadas discretas', 18, '<p>\r\n	<span style="font-family: Helvetica;">-Desarrollar los casos de transformadas discretas, sus</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	transformadas inversas, as&iacute; como su aplicaci&oacute;n para la</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	soluci&oacute;n de ecuaciones en diferencias.</p>\r\n'),
(66, 15, 1, 'Epistemología de las Matemáticas', 20, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">-Definir la epistemolog&iacute;a como el estudio de la naturaleza y la validez</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	del conocimiento, y analizar sus implicaciones en el estudio de</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	conceptos matem&aacute;ticos.</p>\r\n'),
(67, 15, 2, 'Estructura de la epistemología de la Matemática', 20, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">-Analizar en detalle los conceptos necesarios para intentar dar</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	respuesta a las cuestiones fundamentales que sustenten el</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	estudio de las matem&aacute;ticas.</p>\r\n'),
(68, 15, 3, 'Obstáculos didácticos', 20, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">-Investigar aspectos importantes en la did&aacute;ctica de la Matem&aacute;tica y</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	los posibles obst&aacute;culos que puedan emerger en la comprensi&oacute;n</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	de la experiencia Matem&aacute;tica.</p>\r\n'),
(69, 15, 4, 'Didáctica de la Matemática', 20, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">-Estudiar y analizar los fundamentos l&oacute;gicos de las Matem&aacute;ticas y la</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	naturaleza de la relaci&oacute;n entre Matem&aacute;ticas y experiencia.</p>\r\n'),
(70, 16, 1, 'Diversas aproximaciones teóricas sobre el aprendizaje: a) condicionamiento; b) procesamiento de información y c) mediación', 25, '<p>\r\n	<span style="font-family: Helvetica;">-Conocer, analizar y discutir acerca de la psicolog&iacute;a y las</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	diversas aproximaciones te&oacute;ricas en la ense&ntilde;anza y el</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	aprendizaje de las matem&aacute;ticas, adem&aacute;s de sus</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	aplicaciones concretas y perspectivas de desarrollo en el</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	terreno de la educaci&oacute;n.</p>\r\n'),
(71, 16, 2, 'Aprendizaje y condicionamiento en matemáticas', 15, '<p>\r\n	<span style="font-family: Helvetica;">-Conocer, analizar y discutir acerca de la psicolog&iacute;a</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	conductual en la ense&ntilde;anza y el aprendizaje de las</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	matem&aacute;ticas, as&iacute; como su relaci&oacute;n con las diversas</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	teor&iacute;as del aprendizaje, adem&aacute;s de sus aplicaciones</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	concretas y perspectivas de desarrollo en el terreno de la</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	educaci&oacute;n.</p>\r\n'),
(72, 16, 3, 'Aprendizaje, cognición y procesamiento de información en matemáticas', 10, '<p>\r\n	<span style="font-family: Helvetica;">-Conocer, analizar y discutir acerca de la psicolog&iacute;a de</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	procesamiento de informaci&oacute;n en la ense&ntilde;anza y el</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	aprendizaje de las matem&aacute;ticas, as&iacute; como su relaci&oacute;n con</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	las diversas teor&iacute;as del aprendizaje, adem&aacute;s de sus</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	aplicaciones concretas y perspectivas de desarrollo en el</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	terreno de la educaci&oacute;n.</p>\r\n'),
(73, 16, 4, 'Las teorías mediacionales y las matemáticas', 30, '<p>\r\n	<span style="font-family: Helvetica;">-Conocer, analizar y discutir acerca de la condici&oacute;n actual de</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	las teor&iacute;as mediacionales en la ense&ntilde;anza y el</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	aprendizaje de las matem&aacute;ticas, as&iacute; como su relaci&oacute;n con</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	las diversas teor&iacute;as del aprendizaje, adem&aacute;s de sus</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	aplicaciones concretas y perspectivas de desarrollo en el</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	terreno de la educaci&oacute;n.</p>\r\n'),
(74, 17, 1, 'Fundamentos del concepto contexto.', 20, '<p>\r\n	<span style="font-family: Helvetica;">-Reconocer a las ciencias como un producto cultural.</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	Comprender las variantes del conocimiento cient&iacute;fico en</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	distintas culturas.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Identificar los significados y par&aacute;metros culturales en el acervo</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	de conocimientos y procesos matem&aacute;ticos.</p>\r\n'),
(75, 17, 2, 'Elementos de un contexto.', 20, '<p>\r\n	<span style="font-family: Helvetica;">-Comprender la relaci&oacute;n entre la ense&ntilde;anza de las ciencias y el</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	medio social en el que se desarrolla.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Comprender los conceptos de: distancia cultural,</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	etnomatem&aacute;ticas, cognici&oacute;n situada y normas.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Analizar el conocimiento cient&iacute;fico y el conjunto de</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	conocimientos culturales desde la perspectiva sociol&oacute;gica.</p>\r\n'),
(76, 17, 3, 'Actividades didácticas y contexto.', 40, '<p>\r\n	<span style="font-family: Helvetica;">-Identificar los retos de las etnomatem&aacute;ticas para la ense&ntilde;anza.</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Comprender y trabajar las matem&aacute;ticas desde una perspectiva</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	intercultural.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Ofrecer propuestas para la aplicaci&oacute;n de las matem&aacute;ticas en</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	un contexto en el campo de la ense&ntilde;anza.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Plantear los conocimientos aritm&eacute;tico, algebraico y geom&eacute;trico</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	en el contexto social.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Poner en pr&aacute;ctica la integraci&oacute;n de proyectos para la</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	educaci&oacute;n cient&iacute;fica intercultural.</p>\r\n'),
(77, 18, 1, 'Elementos básicos.', 25, '<p>\r\n	<span style="font-family: Helvetica;">-Asegurar y fortalecer los instrumentos conjuntistas y num&eacute;ricos</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	indispensables para fundamentar los procedimientos que se</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	desarrollan en las siguientes unidades.</p>\r\n'),
(78, 18, 2, 'Estructuras algebraicas', 25, '<p>\r\n	<span style="font-family: Helvetica;">-Explicar y acercar al estudiante a lo que se entiende por</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	sistema algebraico discutiendo algunas de sus propiedades</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	generales a la vez que se introducen algunos conceptos</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	&uacute;tiles e importantes as&iacute; como comunes, entre los que est&aacute;n:</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	concepto de homomorfismo, isomorfismo, relaci&oacute;n de</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	congruencia, producto directo y sub&aacute;lgebras.</p>\r\n'),
(79, 18, 3, 'Grupos y otros sistemas con dos operaciones.', 30, '<p>\r\n	<span style="font-family: Helvetica;">-Utilizar estructuras algebraicas de cursos previos y posteriores</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	desde una perspectiva integral.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	Introducir a la Teor&iacute;a de los Grupos.</p>\r\n'),
(80, 19, 1, 'Funciones analíticas.', 20, '<p>\r\n	<span style="font-family: Helvetica;">-Comprender que la teor&iacute;a de funciones de una variable</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	compleja extiende los conceptos del c&aacute;lculo al plano</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	complejo.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Utilizar la naturaleza bidimensional del plano complejo para</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	plantear y resolver problemas.</p>\r\n'),
(81, 19, 2, 'Integración compleja.', 20, '<p>\r\n	<span style="font-family: Helvetica;">-Probar un teorema similar al teorema fundamental del c&aacute;lculo</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	real para integrales de l&iacute;nea de una funci&oacute;n anal&iacute;tica en el</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	plano complejo.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Probar que la integral de l&iacute;nea de una funci&oacute;n anal&iacute;tica sobre y</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	en el interior de una curva de Jordan &amp; suave por partes se</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	anula. (Teorema de Cauchy).</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Probar que la derivada de una funci&oacute;n anal&iacute;tica es tambi&eacute;n</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	anal&iacute;tica.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Probar que todo polinomio de grado mayor que cero tiene una</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	ra&iacute;z. (Teorema fundamental del &aacute;lgebra).</p>\r\n'),
(82, 19, 3, 'Series infinitas.', 20, '<p>\r\n	<span style="font-family: Helvetica;">-Probar que toda funci&oacute;n anal&iacute;tica puede expresarse como una</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	serie de Taylor convergente.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	Probar que los ceros de una funci&oacute;n anal&iacute;tica no constantes</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	son aislados.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Probar que si dos funciones anal&iacute;ticas en una regi&oacute;n G,</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	coinciden en un subconjunto de G, entonces coinciden en todos los puntos de G.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Encontrar el radio de convergencia de una serie dada.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Desarrollar funciones en series de potencia centradas en cero</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	y encontrar su radio de convergencia, sin usar el teorema</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	de Taylor.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Utilizar una serie de Maclaurin para resolver una ecuaci&oacute;n</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	diferencial y una ecuaci&oacute;n funcional.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Probar que una funci&oacute;n anal&iacute;tica puede desarrollarse de</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	manera &uacute;nica en una serie de Laurent.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	Encontrar y clasificar las singularidades de una funci&oacute;n dada.</p>\r\n'),
(83, 19, 4, 'Integración en contornos.', 20, '<p>\r\n	<span style="font-family: Helvetica;">-Encontrar el residuo en todas las singularidades en el plano</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	complejo, de una funci&oacute;n dada.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Evaluar una integral utilizando el teorema del residuo.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Aplicar el teorema del residuo a la evaluaci&oacute;n de integrales</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	definidas.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Evaluar integrales reales impropias de la forma.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Evaluar integrales reales impropias de la forma</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Determinar el n&uacute;mero de ceros y polos de una funci&oacute;n. (El</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	principio del argumento).</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Probar el teorema de Rouch&eacute;.</p>\r\n'),
(84, 20, 1, 'Primeros elementos tecnológicos didácticos.', 20, '<p>\r\n	<span style="font-family: Helvetica;">-Conocer las nuevas tecnolog&iacute;as demostrativas, para la</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	investigaci&oacute;n y la interacci&oacute;n que permitan incorporar el</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	conocimiento matem&aacute;tico.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Aplicar las nuevas tecnolog&iacute;as en la ense&ntilde;anza de las</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	matem&aacute;ticas.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Comprender las limitaciones de los elementos tecnol&oacute;gicos, la</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	obsolescencia, la incompatibilidad, las capacidades finitas</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	de procesamiento y memoria, as&iacute; como sus efectos en la</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	salud f&iacute;sica y mental.</p>\r\n'),
(85, 20, 2, 'El ordenador y medios audiovisuales.', 20, '<p>\r\n	<span style="font-family: Helvetica;">-Adquirir el conocimiento sobre las tecnolog&iacute;as audiovisuales</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	actuales.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Utilizar la computadora para la observaci&oacute;n de materiales</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	audiovisuales.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Utilizar la computadora para la creaci&oacute;n de materiales</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	audiovisuales.</p>\r\n'),
(86, 20, 3, 'El internet', 20, '<p>\r\n	<span style="font-family: Helvetica;">-Conocer los usos del internet como herramienta de</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	investigaci&oacute;n.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Conocer el desarrollo de elementos interactivos mediante el</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	uso del internet para la educaci&oacute;n.</p>\r\n'),
(87, 20, 4, 'Recursos educativos abiertos', 20, '<p>\r\n	<span style="font-family: Helvetica;">-Implementar el uso de nuevas tecnolog&iacute;as inform&aacute;ticas en el&nbsp;</span><span style="font-family: Helvetica;">proceso de ense&ntilde;anza-aprendizaje de las matem&aacute;ticas</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	mediante recursos de libre acceso.</p>\r\n'),
(88, 21, 1, 'Argumentación en la clase de matemáticas.', 20, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">-Conocer e identificar la intuici&oacute;n, construcci&oacute;n de modelos,</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	analog&iacute;a y la prueba deductiva en un sal&oacute;n de clase de</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	matem&aacute;ticas.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	-Describir el papel que juegan los protagonistas de la</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	comunicaci&oacute;n y la transformaci&oacute;n del conocimiento.</p>\r\n'),
(89, 21, 2, 'La intuición y la deducción en matemáticas.', 20, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">-Diferenciar y aplicar el m&eacute;todo inductivo, el m&eacute;todo deductivo y el</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	m&eacute;todo cient&iacute;fico.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	-Explicar por medio de los modelos matem&aacute;ticos hechos reales que</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	se presentan en el aula.</p>\r\n'),
(90, 21, 3, 'La matemática y sus fundamentos.', 40, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">-Verdad y validez de los fundamentos de la matem&aacute;tica en el</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	contexto actual de un sal&oacute;n de clase con interpretaciones y</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	aplicando modelos.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	-Identificar los efectos negativos en la ense&ntilde;anza.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	-Proponer soluci&oacute;n a diversas situaciones parad&oacute;jicas que se dan en</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	el aula provocadas por la misma situaci&oacute;n del contexto escolar.</p>\r\n'),
(91, 22, 1, 'Elementos básicos de la práctica docente.', 36, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">-Planificar una unidad tem&aacute;tica que pondr&aacute; en pr&aacute;ctica con estudiantes de</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	grados y/o niveles inferiores al de &eacute;l; de tal manera que junto con este</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	ejercicio de planificaci&oacute;n, lleve a cabo tambi&eacute;n el de la reflexi&oacute;n</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	anticipativa (para la acci&oacute;n), que puede tener dos formas, &ldquo;reflexi&oacute;n</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	sobre las situaciones pedag&oacute;gicas&rdquo;, antes de afrontarlas, y &ldquo;reflexi&oacute;n en</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	la planificaci&oacute;n de las clases&rdquo;, m&aacute;s sistem&aacute;tica.</p>\r\n'),
(93, 22, 2, 'Fundamentos Teóricos', 24, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">-Realizar su pr&aacute;ctica docente con estudiantes de grados y/o niveles inferiores</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	al de &eacute;l; de tal manera que lleve a cabo tambi&eacute;n la respectiva reflexi&oacute;n activa o interactiva, que le permita afrontar problemas que aparecen en</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	la acci&oacute;n.</p>\r\n'),
(94, 22, 3, 'Microenseñanza', 20, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">-Realizar la reflexi&oacute;n sobre los recuerdos (sobre la acci&oacute;n) que le ayude a dar</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	sentido a las experiencias pasadas, y de esta forma conseguir</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	perspectivas sobre el significado de esas experiencias.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	-Construir conocimiento profesional, estableciendo las relaciones entre los</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	elementos b&aacute;sicos y fundamentos te&oacute;ricos estudiados en este curso y</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	la experiencia vivida de su pr&aacute;ctica docente, con apoyo de la reflexi&oacute;n</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	anticipativa, activa y sobre la acci&oacute;n de dicha pr&aacute;ctica docente.</p>\r\n'),
(95, 23, 1, 'Pensamiento y Lenguaje', 20, '<p>\r\n	<span style="font-family: Helvetica;">-Reconocer la importancia del lenguaje en los procesos de</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	desarrollo del pensamiento matem&aacute;tico desde diversas</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	perspectivas te&oacute;ricas.</p>\r\n'),
(96, 23, 2, 'Los diversos tipos de lenguajes', 40, '<p>\r\n	<span style="font-family: Helvetica;">-Identificar la diversidad de representaciones del lenguaje y sus</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	formas de conversi&oacute;n; as&iacute; mismo su importancia en la</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	construcci&oacute;n de argumentos y discurso matem&aacute;tico.</p>\r\n'),
(97, 23, 3, 'El Lenguaje como medio para la interacción educativa', 20, '<p>\r\n	<span style="font-family: Helvetica;">-Lograr una s&iacute;ntesis de intervenci&oacute;n, en la soluci&oacute;n de</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	situaciones did&aacute;cticas problem&aacute;ticas, que propicien el paso del lenguaje com&uacute;n al lenguaje matem&aacute;tico; y de tal</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	manera que identifique c&oacute;mo el lenguaje juega un papel</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	relevante como instrumento de interacci&oacute;n social y</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	consecuentemente en la construcci&oacute;n de conocimiento</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	matem&aacute;tico.</p>\r\n'),
(98, 24, 1, 'Planteamiento de un problema de investigación educativa.', 20, '<div>\r\n	-Realizar el planteamiento de un problema de</div>\r\n<div>\r\n	investigaci&oacute;n en Matem&aacute;tica Educativa, pertinente y</div>\r\n<div>\r\n	sustentado en los avances de esta disciplina.</div>\r\n<div>\r\n	-Establecer los objetivos correspondientes.</div>\r\n'),
(99, 24, 2, 'Referentes teóricos.', 20, '<div>\r\n	-Desarrollar un marco te&oacute;rico que de fundamento y</div>\r\n<div>\r\n	oriente, las acciones espec&iacute;ficas para la indagaci&oacute;n</div>\r\n<div>\r\n	correspondiente al problema de investigaci&oacute;n</div>\r\n<div>\r\n	planteado.</div>\r\n'),
(100, 24, 3, 'Métodos cualitativos y cuantitativos.', 20, '<div>\r\n	-Elegir y justificar el m&eacute;todo adecuado para alcanzar los</div>\r\n<div>\r\n	objetivos planteados.</div>\r\n'),
(101, 24, 4, 'Diseño metodológico.', 20, '<div>\r\n	-Dise&ntilde;o de situaciones experimentales, de observaci&oacute;n,</div>\r\n<div>\r\n	de intervenci&oacute;n, de an&aacute;lisis documental, de valoraci&oacute;n</div>\r\n<div>\r\n	y an&aacute;lisis de resultados.</div>\r\n'),
(102, 25, 1, 'Los métodos, técnicas y fundamentos matemáticos respecto al perfil del alumno.', 25, '<div>\r\n	-Conocer los m&eacute;todos, las t&eacute;cnicas y los fundamentos</div>\r\n<div>\r\n	de la ense&ntilde;anza de las matem&aacute;ticas y comprender su</div>\r\n<div>\r\n	importancia.</div>\r\n<div>\r\n	-Identificar los niveles de fundamentaci&oacute;n de la</div>\r\n<div>\r\n	ense&ntilde;anza de las matem&aacute;ticas.</div>\r\n<div>\r\n	-Analizar y evaluar la ubicaci&oacute;n de las matem&aacute;ticas en</div>\r\n<div>\r\n	el dise&ntilde;o curricular.</div>\r\n'),
(103, 25, 2, 'Los argumentos inductivos, las pruebas formales y la clase de matemáticas.', 25, '<div>\r\n	-Conocer los diferentes tipos de conceptos, m&eacute;todos y</div>\r\n<div>\r\n	t&eacute;cnicas utilizados en la argumentaci&oacute;n matem&aacute;tica.</div>\r\n<div>\r\n	-Explicar las ventajas y limitaciones que hay al usar</div>\r\n<div>\r\n	pruebas formales en la evaluaci&oacute;n de las matem&aacute;ticas en</div>\r\n<div>\r\n	los diferentes niveles educativos.</div>\r\n<div>\r\n	-Aplicar las matem&aacute;ticas a la vida cotidiana mediante la</div>\r\n<div>\r\n	realizaci&oacute;n de un proyecto.</div>\r\n<div>\r\n	-Analizar la relaci&oacute;n entre la cognici&oacute;n y el rigor en una</div>\r\n<div>\r\n	clase con el proyecto realizado.</div>\r\n'),
(104, 25, 3, 'Nuevos elementos para los métodos de enseñanza.', 30, '<div>\r\n	-Recordar los conceptos centrales de las principales</div>\r\n<div>\r\n	teor&iacute;as del aprendizaje, como la teor&iacute;a de procesamiento</div>\r\n<div>\r\n	de informaci&oacute;n humana.</div>\r\n<div>\r\n	-Analizar las ventajas y desventajas de ense&ntilde;ar a trav&eacute;s</div>\r\n<div>\r\n	de los medios.</div>\r\n<div>\r\n	<div>\r\n		-Aplicar la investigaci&oacute;n documental para argumentar</div>\r\n	<div>\r\n		acerca de los m&eacute;todos de ense&ntilde;anza de las</div>\r\n	<div>\r\n		matem&aacute;ticas.</div>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n'),
(105, 26, 1, 'Nuevo enfoque del proceso de formación.', 25, '<div>\r\n	-Contribuir al desarrollo de un enfoque complejo e</div>\r\n<div>\r\n	integral del proceso de formaci&oacute;n tanto del docente</div>\r\n<div>\r\n	como de los aprendices.</div>\r\n<div>\r\n	-Despertar el inter&eacute;s por la innovaci&oacute;n de la propia</div>\r\n<div>\r\n	pr&aacute;ctica educativa y docente.</div>\r\n<div>\r\n	-Conocer, buscar y dise&ntilde;ar estrategias para coordinar</div>\r\n<div>\r\n	procesos personales de actualizaci&oacute;n disciplinar y</div>\r\n<div>\r\n	docente a lo largo de toda la vida.</div>\r\n'),
(106, 26, 2, 'Capacidades docentes básicas.', 25, '<div>\r\n	-Contribuir al desarrollo de capacidades para la</div>\r\n<div>\r\n	b&uacute;squeda, selecci&oacute;n y dise&ntilde;o de propuestas para la</div>\r\n<div>\r\n	ense&ntilde;anza de conceptos y metodolog&iacute;as</div>\r\n<div>\r\n	matem&aacute;ticas desde una perspectiva activa.</div>\r\n<div>\r\n	-Adaptar propuestas de ense&ntilde;anza activa a contextos</div>\r\n<div>\r\n	de pr&aacute;ctica docente dirigida a individuos, peque&ntilde;os</div>\r\n<div>\r\n	grupos y grupos grandes de estudiantes.</div>\r\n<div>\r\n	-Desarrollar experiencias de trabajo docente</div>\r\n<div>\r\n	individual y colectivo, y analizar sus fortalezas y desventajas</div>\r\n'),
(107, 26, 3, 'La calidad de la formación docente.', 30, '<div>\r\n	-Conocer y analizar diferentes enfoques de</div>\r\n<div>\r\n	competencias docentes en general, y de</div>\r\n<div>\r\n	competencias de docentes de matem&aacute;ticas en</div>\r\n<div>\r\n	particular.</div>\r\n<div>\r\n	-Analizar pedag&oacute;gicamente la relevancia del dominio</div>\r\n<div>\r\n	del conocimiento matem&aacute;tico y el papel que juega</div>\r\n<div>\r\n	dicho dominio en la pr&aacute;ctica docente y en el</div>\r\n<div>\r\n	aprendizaje.</div>\r\n<div>\r\n	-Promover y propiciar la investigaci&oacute;n y</div>\r\n<div>\r\n	profundizaci&oacute;n en el dominio de un concepto o serie</div>\r\n<div>\r\n	de conceptos matem&aacute;ticos, tanto desde el punto de</div>\r\n<div>\r\n	vista cient&iacute;fico (buscar referentes sobre el concepto</div>\r\n<div>\r\n	en s&iacute; mismo, su explicaci&oacute;n, relaci&oacute;n con otros</div>\r\n<div>\r\n	conceptos, uso y aplicaci&oacute;n en diferentes</div>\r\n<div>\r\n	disciplinas), hist&oacute;rico (buscar referentes sobre la</div>\r\n<div>\r\n	construcci&oacute;n sociohist&oacute;rica de dicho concepto),</div>\r\n<div>\r\n	pedag&oacute;gico (buscar referentes sobre la ense&ntilde;anza</div>\r\n<div>\r\n	de dichos conceptos) y tecnol&oacute;gico (buscar</div>\r\n<div>\r\n	herramientas para su ense&ntilde;anza-aprendizaje).</div>\r\n<div>\r\n	-Fortalecer el desarrollo profesional y personal a</div>\r\n<div>\r\n	trav&eacute;s del desarrollo de habilidades de comunicaci&oacute;n</div>\r\n<div>\r\n	acad&eacute;mica y educativa a trav&eacute;s de actividades de</div>\r\n<div>\r\n	acercamiento y simulaci&oacute;n de la pr&aacute;ctica docente; y</div>\r\n<div>\r\n	a trav&eacute;s del conocimiento de estrategias y medios</div>\r\n<div>\r\n	para autogestionar la propia profesionalizaci&oacute;n.</div>\r\n'),
(108, 27, 1, 'Elementos de un proceso de construcción del conocimiento.', 30, '<div>\r\n	-Conocer los elementos que intervienen en el</div>\r\n<div>\r\n	proceso de construcci&oacute;n de conocimiento.</div>\r\n<div>\r\n	-Identificar las consecuencias pedag&oacute;gicas de las</div>\r\n<div>\r\n	diversas teor&iacute;as de la construcci&oacute;n de conocimiento.</div>\r\n<div>\r\n	-Asumir una postura pedag&oacute;gica propia que se</div>\r\n<div>\r\n	sustente en los elementos y teor&iacute;as de</div>\r\n'),
(109, 27, 2, 'Elementos de planeación.', 25, '<div>\r\n	-Conocer diversos m&eacute;todos para realizar la</div>\r\n<div>\r\n	planeaci&oacute;n del proceso de Ense&ntilde;anza - Aprendizaje</div>\r\n<div>\r\n	-Identificar las fuentes que orientan y sustentan la</div>\r\n<div>\r\n	planeaci&oacute;n del proceso de Ense&ntilde;anza- Aprendizaje.</div>\r\n<div>\r\n	-Ejercitar el dise&ntilde;o de la planeaci&oacute;n del trabajo</div>\r\n<div>\r\n	docente de un curso.</div>\r\n<div>\r\n	-Dise&ntilde;ar formatos para la planeaci&oacute;n did&aacute;ctica de</div>\r\n<div>\r\n	una clase o tema.</div>\r\n'),
(110, 27, 3, 'Secuencias didácticas.', 25, '<div>\r\n	-Conocer el concepto de secuencia did&aacute;ctica.</div>\r\n<div>\r\n	-Identificar los elementos necesarios para el dise&ntilde;o</div>\r\n<div>\r\n	de una secuencia did&aacute;ctica.</div>\r\n<div>\r\n	-Dise&ntilde;ar secuencias did&aacute;cticas para la ense&ntilde;anza de</div>\r\n<div>\r\n	un tema que contribuya al desarrollo de la</div>\r\n<div>\r\n	competencia matem&aacute;tica de los alumnos.</div>\r\n'),
(111, 28, 1, 'Planteamiento de un problema de investigación educativa.', 20, '<p>\r\n	<span style="font-family: Helvetica;">-Realizar el planteamiento de un problema de </span><span style="font-family: Helvetica;">investigaci&oacute;n</span>&nbsp;<span style="font-family: Helvetica;">sobre procesos de ense&ntilde;anza y/o&nbsp;</span><span style="font-family: Helvetica;">aprendizaje de matem&aacute;ticas, pertinente y sustentado&nbsp;</span><span style="font-family: Helvetica;">en los avances de la Matem&aacute;tica Educativa.</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	<span style="font-stretch: normal; font-size: 11px; line-height: normal;">&nbsp;-</span>Establecer los objetivos correspondientes.</p>\r\n'),
(112, 28, 2, 'Referentes teóricos.', 20, '<p>\r\n	<span style="font-family: Helvetica;">-Elegir un marco te&oacute;rico y explicar su coherencia</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	con el problema y objetivos planteados.</p>\r\n'),
(113, 28, 3, 'Métodos cualitativos y cuantitativos', 20, '<div>\r\n	-Elegir y justificar el m&eacute;todo adecuado para alcanzar los &nbsp;objetivos del proyecto propuesto.</div>\r\n'),
(134, 28, 4, 'Diseño metodológico.', 20, '<p>\r\n	<span style="font-family: Helvetica;">-Dise&ntilde;o de situaciones experimentales, de observaci&oacute;n,</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	de intervenci&oacute;n, de an&aacute;lisis documental, de</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	valoraci&oacute;n y/o de an&aacute;lisis de resultados<span style="font-stretch: normal; font-size: 11px; line-height: normal;">.</span></p>\r\n'),
(135, 29, 1, 'Enfoques de Evaluación', 10, '<p>\r\n	<span style="font-family: Helvetica;">-Conocer los antecedentes hist&oacute;ricos de la evaluaci&oacute;n</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	y comprender su importancia.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Identificar las caracter&iacute;sticas de los diversos</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	enfoques.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Describir y comparar los principios de la evaluaci&oacute;n</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	cuantitativa y cualitativa.</p>\r\n'),
(136, 29, 2, 'Modelos de Evaluación.', 10, '<p>\r\n	<span style="font-family: Helvetica;">-Identificar y mencionar los diferentes tipos de</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	modelos, t&eacute;cnicas y m&eacute;todos utilizados en la</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	evaluaci&oacute;n.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Explicar y comparar los diversos modelos,</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	t&eacute;cnicas y m&eacute;todos de evaluaci&oacute;n.</p>\r\n'),
(137, 29, 3, 'Técnicas de Evaluación.', 30, '<p>\r\n	<span style="font-family: Helvetica;">-Enlistar los criterios de evaluaci&oacute;n.</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Diferenciar las t&eacute;cnicas de evaluaci&oacute;n</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	cuantitativas de las cualitativas.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Seleccionar los instrumentos de evaluaci&oacute;n,</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	an&aacute;lisis y construcci&oacute;n.</p>\r\n'),
(138, 29, 4, 'Proyectos evaluadores', 20, '<p>\r\n	<span style="font-family: Helvetica;">-Definir el concepto de evaluaci&oacute;n.</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Describir qu&eacute; es un proyecto de evaluaci&oacute;n.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Explicar los proyectos integrales.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Realizar una lista de los principios de la</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	planeaci&oacute;n y la evaluaci&oacute;n educativa.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Analizar y explicar los conceptos de curr&iacute;culum y</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	evaluaci&oacute;n.</p>\r\n'),
(139, 29, 5, 'Las Tic''s como herramienta de apoyo para la evaluación', 10, ''),
(140, 30, 1, 'Diseños didácticos con base en los estilos de aprendizaje.', 25, '<p>\r\n	<span style="font-family: Helvetica;">-Que los estudiantes comprendan y discutan</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	diferentes estilos, formas y estrategias de</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	aprendizaje presentes en el alumnado, y los</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	consideren en la planificaci&oacute;n, ejecuci&oacute;n y</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	evaluaci&oacute;n del aprendizaje en su pr&aacute;ctica docente.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Que los estudiantes se introduzcan a la noci&oacute;n y</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	metodolog&iacute;as de investigaci&oacute;n de la docencia desde</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	diferentes aproximaciones y enfoques.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Que los estudiantes consideren la investigaci&oacute;n de la</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	docencia como una estrategia individual o</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	colaborativa de formaci&oacute;n, conducci&oacute;n, evaluaci&oacute;n y</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	mejora docente que tienen como prop&oacute;sito</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	fundamental el mejoramiento de los resultados de</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	aprendizaje y formaci&oacute;n del alumnado.</p>\r\n'),
(141, 30, 2, 'Estrategias de enseñanza y aprendizaje. Técnicas didácticas.', 25, '<p>\r\n	<span style="font-family: Helvetica;">-Que los estudiantes recuperen, comprendan y</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	discutan diferentes estrategias y t&eacute;cnicas de</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	ense&ntilde;anza y aprendizaje, y las consideren en la</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	planificaci&oacute;n, ejecuci&oacute;n y evaluaci&oacute;n del aprendizaje</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	en su pr&aacute;ctica docente a partir de los resultados que</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	se vayan encontrando en el proceso de investigaci&oacute;n sobre su propia pr&aacute;ctica.</p>\r\n'),
(142, 30, 3, 'Uso de recursos tecnológicos.', 30, '<p>\r\n	-<span style="font-family: Helvetica;">Que los estudiantes recuperen, comprendan y</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	discutan diferentes usos de recursos tecnol&oacute;gicos</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	educativos, y los consideren en la planificaci&oacute;n,</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	ejecuci&oacute;n y evaluaci&oacute;n del aprendizaje en el marco</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	de su pr&aacute;ctica docente a partir de los resultados que</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	se vayan encontrando en el proceso de investigaci&oacute;n</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	sobre su propia pr&aacute;ctica.</p>\r\n'),
(143, 31, 1, 'Estrategias de comunicación.', 28, '<p>\r\n	<span style="font-family: Helvetica;">-Conocer los elementos que intervienen en el proceso</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	de la comunicaci&oacute;n.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Identificar las consecuencias pedag&oacute;gicas de las</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	diversas formas de comunicaci&oacute;n.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Asumir una postura pedag&oacute;gica propia respecto a la</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	comunicaci&oacute;n verbal (oral y escrita) y no verbal en</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	los procesos de ense&ntilde;anza y aprendizaje.</p>\r\n');
INSERT INTO `Unidad` (`UnidadId`, `ProgAcademicoId`, `UnidadOrden`, `UnidadNombre`, `UnidadHrs`, `UnidadObjetivo`) VALUES
(144, 31, 2, 'Elementos de Evaluación.', 28, '<p>\r\n	<span style="font-family: Helvetica;">-Profundizar en el concepto y finalidades de la</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	evaluaci&oacute;n.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Reflexionar sobre el papel formativo de la evaluaci&oacute;n</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	en el marco del desarrollo de la competencia</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	matem&aacute;tica.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	<span style="font-stretch: normal; font-size: 12px; line-height: normal;">-Conocer </span>m&eacute;todos y t&eacute;cnicas de evaluaci&oacute;n basados en</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	desempe&ntilde;os de competencias.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Dise&ntilde;ar estrategias de evaluaci&oacute;n para una situaci&oacute;n</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	de aprendizaje espec&iacute;fica.</p>\r\n'),
(145, 31, 3, 'La reflexión continua de la práctica docente.', 24, '<p>\r\n	<span style="font-family: Helvetica;">-Reflexionar sobre las tendencias de futuro en el</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	aprendizaje y ense&ntilde;anza de las matem&aacute;ticas.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	<span style="font-size: 11px;">-</span>Autoevaluar la postura pedag&oacute;gica subyacente en su</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	pr&aacute;ctica docente.</p>\r\n'),
(146, 32, 1, 'Unidad 1 Elección de modalidad de titulación', 4, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">-Que el pasante seleccione la modalidad de titulaci&oacute;n ad</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	hoc, seg&uacute;n los resultados de su trayectoria escolar</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	en la licenciatura y su proyecto de vida profesional bajo la supervisi&oacute;n del tutor de la generaci&oacute;n a la</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	que pertenece.</p>\r\n'),
(147, 32, 2, 'Unidad 2. Proceso de titulación', 2, '<p>\r\n	-<span style="font-family: Helvetica; font-size: 11px;">Efectuar tr&aacute;mites de titulaci&oacute;n seg&uacute;n la</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	modalidad elegida bajo la supervisi&oacute;n del tutor</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	de la generaci&oacute;n a la que pertenece.</p>\r\n'),
(148, 32, 3, 'Coloquios de tesistas de licenciatura (para quienes hayan seleccionado la titulación por tesis)', 74, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">-Primer coloquio (al iniciar el semestre) donde</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	presenten su proyecto de tesis.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	-Pre-examen profesional o examen de</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	candidatura al grado de licenciatura<span style="font-stretch: normal; font-size: 7px; line-height: normal;">1</span>.</p>\r\n'),
(149, 34, 1, 'Unidad 1. Historia del sistema educativo', 30, '<p>\r\n	<span style="font-family: Helvetica;">-Reconocer&aacute; hist&oacute;ricamente la</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	influencia de la</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	evangelizaci&oacute;n y las &oacute;rdenes</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	religiosas en la conformaci&oacute;n</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	del sistema educativo virreinal</p>\r\n'),
(150, 34, 2, 'Unidad 2. Características generales', 25, '<p>\r\n	<span style="font-family: Helvetica;">-Analizar&aacute; la actual estructura</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	escolarizada del sistema</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	educativo mexicano.</p>\r\n'),
(151, 34, 3, 'Unidad 3. La filosofía base y las características culturales', 25, '<p>\r\n	<span style="font-family: Helvetica;">-Reconocer&aacute; hist&oacute;ricamente el</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	surgimiento de los valores de</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	laicidad, gratuidad y</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	universalidad en el sistema</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	educativo mexicano.</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	-Reconocer&aacute; la influencia del</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	nacionalismo mexicano en la</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	constituci&oacute;n del sistema</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	educativo mexicano.</p>\r\n'),
(152, 35, 1, 'Unidad 1. Protocolos de investigación', 20, '<p>\r\n	<span style="font-family: Helvetica;">-Reconocer&aacute; los distintos tipos de protocolos de investigaci&oacute;n</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	oficiales tanto p&uacute;blicos como privados. Elegir&aacute; un protocolo y</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	elaborar&aacute; un proyecto de investigaci&oacute;n con base en su trabajo</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	de tesis.</p>\r\n'),
(153, 35, 2, 'Unidad 2. Procesos de registro,  desarrollo y seguimiento de convocatoria de investigación', 20, '<p>\r\n	<span style="font-family: Helvetica;">-Identificar&aacute; las instancias financiadoras de investigaci&oacute;n tanto</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	p&uacute;blicas como privadas que apoyan investigaci&oacute;n educativa y</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	detectar&aacute; per&iacute;odos y fechas aproximadas tanto de publicaci&oacute;n</p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	de convocatorias como de resultados.</p>\r\n'),
(154, 35, 3, 'Unidad 3. Criterios de evaluación de propuestas de investigación', 20, '<p>\r\n	<span style="font-family: Helvetica;">-Analizar&aacute; los criterios con los que se eval&uacute;an propuestas de</span></p>\r\n<p style="margin: 0px; font-stretch: normal; line-height: normal; font-family: Helvetica;">\r\n	proyectos de investigaci&oacute;n</p>\r\n'),
(155, 35, 4, 'Unidad 4. Revistas y libros que publican investigación educativa', 20, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">-Identificar&aacute; revistas y colecciones que publican resultados de</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	investigaci&oacute;n educativa nacionales e internacionales y analizar&aacute; los</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	criterios de publicaci&oacute;n y evaluaci&oacute;n de art&iacute;culos.</p>\r\n'),
(156, 36, 1, 'Unidad 1. El enfoque conductiva', 16, '<p>\r\n	-A<span style="font-family: Helvetica; font-size: 10px;">nalizar la influencia que este tipo de enfoque ha tenido en la</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 10px; line-height: normal; font-family: Helvetica;">\r\n	ense&ntilde;anza y aprendizaje de la matem&aacute;tica en los diferentes</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 10px; line-height: normal; font-family: Helvetica;">\r\n	niveles educativos.</p>\r\n'),
(157, 36, 2, 'Unidad 2. El enfoque cognitivo', 4, '<p>\r\n	-E<span style="font-family: Helvetica; font-size: 10px;">stablecer las relaciones con marcos te&oacute;ricos propios de la</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 10px; line-height: normal; font-family: Helvetica;">\r\n	matem&aacute;tica educativa como la teor&iacute;a APOE, Representaciones</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 10px; line-height: normal; font-family: Helvetica;">\r\n	Semi&oacute;ticas y juego de contextos, Dial&eacute;ctica Herramienta-Objeto y</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 10px; line-height: normal; font-family: Helvetica;">\r\n	Juego de Contextos, Modelo de Vann Hiele.</p>\r\n'),
(158, 36, 3, 'Unidad 3. El enfoque sociocultural', 16, '<p>\r\n	<span style="font-family: Helvetica; font-size: 10px;">&nbsp;-Reflexionar sobre las aportaciones concretas que este tipo de</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 10px; line-height: normal; font-family: Helvetica;">\r\n	enfoque ha hecho a la matem&aacute;tica educativa como disciplina</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 10px; line-height: normal; font-family: Helvetica;">\r\n	cient&iacute;fica.</p>\r\n'),
(159, 36, 4, 'Unidad 4. El enfoque constructivista', 16, '<p>\r\n	<span style="font-family: Helvetica; font-size: 10px;">&nbsp;-Establecer las relaciones con marcos te&oacute;ricos propios de la matem&aacute;tica</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 10px; line-height: normal; font-family: Helvetica;">\r\n	educativa como el enfoque Ontosemi&oacute;tico, la Socioepistemolog&iacute;a</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 10px; line-height: normal; font-family: Helvetica;">\r\n	y la teor&iacute;a Antropol&oacute;gica en Did&aacute;ctica de la Matem&aacute;tica.</p>\r\n'),
(160, 36, 5, 'Unidad 5. Enfoques centrados en el aprendizaje', 16, '<p>\r\n	<span style="font-family: Helvetica; font-size: 10px;">&nbsp;-Realizar una s&iacute;ntesis de los diferentes enfoques y su influencia en los</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 10px; line-height: normal; font-family: Helvetica;">\r\n	planteamientos curriculares de los diferentes niveles.</p>\r\n'),
(161, 37, 1, 'Unidad 1. Fundamentos', 0, ''),
(162, 37, 2, 'Unidad 2. Diseño de escenarios didácticos', 0, ''),
(163, 37, 3, 'Unidad 3. Implementación ', 0, ''),
(164, 37, 4, 'Unidad 4. Evaluación', 0, ''),
(165, 38, 1, 'Unidad 1. Definición y características', 0, ''),
(166, 38, 2, 'Unidad 2. Diseño de secuencias didácticas', 0, ''),
(167, 38, 3, 'Unidad 3. Implementación y evaluación', 0, ''),
(168, 39, 1, 'Unidad 1. Fundamentos', 21, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">-Analizar los componentes que interact&uacute;an con el contexto.</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	-Identificar las relaciones entre los temas matem&aacute;ticos, los</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	contextos reales y otras disciplinas del curr&iacute;culo escolar.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	-Adquirir y utilizar un lenguaje preciso para entender y</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	comunicar informaci&oacute;n matem&aacute;tica.</p>\r\n'),
(169, 39, 2, 'Unidad 2. Contexto como construcción', 21, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">-Analizar si los problemas matem&aacute;ticos presentes en los textos</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	de matem&aacute;ticas, tiene relaci&oacute;n con los lineamientos descritos</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	en los planes y programas propuestos por la Instituci&oacute;n</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	Educativa.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	-Dise&ntilde;ar diversas estrategias contextuales que coadyuven a</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	mejorar la instrucci&oacute;n matem&aacute;tica.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	-Desarrollar la capacidad de reconocer, plantearse y resolver</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	problemas.</p>\r\n'),
(170, 39, 3, 'Unidad 3. Aplicación de la matemáticas en contexto', 21, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">-Aplicar los conocimientos matem&aacute;ticos a situaciones diversas,</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	utiliz&aacute;ndolos en la interpretaci&oacute;n de las ciencias, en la</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	actividad tecnol&oacute;gica y en las actividades cotidianas.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	-Abordar con mentalidad abierta los problemas que la continua</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	evoluci&oacute;n cient&iacute;fica y tecnol&oacute;gica plantea a la sociedad</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	dominando el lenguaje matem&aacute;tico necesario.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	-Desarrollar la capacidad de reconocer, plantearse y resolver</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	problemas</p>\r\n'),
(171, 39, 4, 'Unidad 4. Problematización de las matemáticas en contexto', 17, '<p>\r\n	<span style="font-family: Helvetica; font-size: 11px;">-Potenciar la reflexi&oacute;n sobre los procesos que se siguen en la</span></p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	actividad matem&aacute;tica</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	-Desarrollar la creatividad y los h&aacute;bitos de investigaci&oacute;n y</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	descubrimiento.</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	-Conocer aspectos hist&oacute;ricos de las Matem&aacute;ticas que ilustren la</p>\r\n<p style="margin: 0px; font-stretch: normal; font-size: 11px; line-height: normal; font-family: Helvetica;">\r\n	aparici&oacute;n de las teor&iacute;as.</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `Usuario`
--

CREATE TABLE IF NOT EXISTS `Usuario` (
  `UsuarioId` int(10) unsigned NOT NULL,
  `UsuarioAcceso` varchar(50) NOT NULL,
  `UsuarioPassword` char(64) NOT NULL,
  `UsuarioFoto` varchar(100) DEFAULT NULL COMMENT 'Hipervinculo para almacenar la ruta a la foto.',
  `UsuarioEmail` varchar(50) NOT NULL,
  `NivelUsuId` int(10) unsigned NOT NULL COMMENT 'Clave foranea para el Nivel de Usuario.',
  `TipoUsuId` int(10) unsigned DEFAULT NULL COMMENT 'Clave foranea para Usuario Tipo (PHC/PTC/ADM/ETC)',
  `UsuarioNombre` varchar(60) NOT NULL,
  `UsuarioApellidos` varchar(100) NOT NULL,
  `FacultadId` int(10) unsigned DEFAULT NULL,
  `LicenciaturaId` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Usuario`
--

INSERT INTO `Usuario` (`UsuarioId`, `UsuarioAcceso`, `UsuarioPassword`, `UsuarioFoto`, `UsuarioEmail`, `NivelUsuId`, `TipoUsuId`, `UsuarioNombre`, `UsuarioApellidos`, `FacultadId`, `LicenciaturaId`) VALUES
(1, 'admin', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', NULL, 'isnardo.rr@gmail.com', 5, NULL, 'Administrador', 'del Sistema', NULL, NULL),
(2, 'isnardo', 'df6033d64c7cd688b11fa3f7b29f245c7e5fda73d0b8f04c1367783c614cde85', NULL, 'isnardo.reducindo@uaslp.mx', 5, 1, 'Isnardo', 'Reducindo Ruiz', 1, 1),
(47, 'rita', '9ee190f358653faa50c76c91966ee60805332ca0b8defe54aaa14c1fdad8b329', NULL, 'rodriguezcenobia@gmail.com', 2, 3, 'Rita', 'Angulo Villanueva', 1, 1),
(48, 'rigoberto_chavira', '83585891ac2d80113f3d0588c1cc7be4872a5359e453088bfefa553fad5a4cc6', NULL, 'correo@correo.com', 2, 1, 'Rigoberto', 'Chavira Quintero', 1, 1),
(55, 'martha_compean', '8938d77ec2d5d5f1271611c746416bcff9fc6136de2aa4904e8556933807382e', NULL, 'correo1', 2, 1, 'Martha', 'Compeán Jasso', 1, 1),
(56, 'lilia_riego', '02310a86ce2ff62f638edb105e1878a573b03cfbf278f9d07a7a7156df7d4144', NULL, 'correo2', 2, 1, 'Lilia', 'del Riego Senior', 1, 1),
(57, 'cesar_hernandez', '7ea63bff9963f71138e278bdf52cd2b0d1b3e5f7056ca9a63d9e5edf51960145', NULL, 'correo3', 2, 1, 'Cesar Israel', 'Hernández Vélez', 1, 1),
(58, 'ana_mena', '56f25374c550e78cc8278338762244cb4088ac1262e96cad82a89f542beffbaf', NULL, 'correo4', 2, 1, 'Ana María', 'Mena Manrique', 1, 1),
(59, 'alberto_molgado', 'aed637f5686bd9ee6f822eca3ab770936b43465d369e4cd056bf29601c69185a', NULL, 'correo6', 2, 1, 'Alberto', 'Molgado Ramos', 1, 1),
(60, 'nehemias', 'c4b5920ed79a3f3168965e568598ce0792caedf94b47dd0eabd83ae0cc9a30dd', NULL, 'nehemias', 2, 1, 'Nehemías', 'Moreno Martínez', 1, 1),
(61, 'noe_sanchez', 'bc119ba1d2180f2b40877d89bc1fd89c1c45662f11929ce845cabc9a350edd62', NULL, 'noe_sanchez', 2, 1, 'Noé', 'Sánchez Martínez', 1, 1),
(62, 'emiliano_sanchez', '8b257b48a0b26022900df95b6212ac4587ea94eb39298ae387152d5a45eea75a', NULL, 'emiliano_sanchez', 2, 1, 'Emiliano Salvador', 'Sánchez Ramírez', 1, 1),
(63, 'rosario_sandoval', 'd2e2c4d770e84d79193ede5661da5d6c920597793144217c01183094fabe6014', NULL, 'rosario_sandoval', 2, 1, 'Rosario', 'Sandoval Cedillo', 1, 1),
(64, 'edgardo_ugalde', '710da0caae2f8c9c3af176555afbdf04801518ee497256800fec15b0b345e2c8', NULL, 'edgardo_ugalde', 2, 1, 'Edgardo', 'Ugalde Saldaña', 1, 1),
(65, 'javier_vigueras', 'e1fc8a792feec4a83b34312e9ac2a68119b02ecdc1b363d59c08b0b74f79da8d', NULL, 'javier_vigueras', 2, 1, 'Javier Flavio', 'Vigueras Gómez', 1, 1),
(66, 'ricardo_barrios', 'bcde27478770f17a5d1382b5e7e594548b18a65bf90859b5c6e53786a927d1f4', NULL, 'ricardo_barrios', 2, 1, 'Ricardo', 'Barrios Campos', 1, 1),
(67, 'gelasio_salazar', 'd85ac5a487d3376ef7ded9e2f83d1554699baae19e722321f91d8d832a21151a', NULL, 'gelasio_salazar', 2, 1, 'Gelasio', 'Salazar Anaya', 1, 1),
(68, 'maria_rodriguez', '18573565561d6e4caf4df4b6f0f1db4f9e83df471abcc2054e89d13aa5314176', NULL, 'maria_rodriguez', 2, 1, 'María del Carmen', 'Rodríguez Vallarte', 1, 1),
(69, 'daniel_campos', '6d33080b7571fe51e241a79ae595ada94d48663e6c82d9fbf83dd59270d280d5', NULL, 'daniel_campos', 2, 1, 'Daniel Ulises', 'Campos Delgado', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Apartado`
--
ALTER TABLE `Apartado`
  ADD PRIMARY KEY (`ApartadoId`),
  ADD UNIQUE KEY `ApartadoLetra_UNIQUE` (`ApartadoLetra`);

--
-- Indexes for table `Bibliografia`
--
ALTER TABLE `Bibliografia`
  ADD PRIMARY KEY (`BibliografiaId`),
  ADD KEY `fk_Bibliografia_1_idx` (`BiblioTipoId`),
  ADD KEY `fk_Bibliografia_2_idx` (`ProgAcademicoId`);

--
-- Indexes for table `BibliografiaTipo`
--
ALTER TABLE `BibliografiaTipo`
  ADD PRIMARY KEY (`BiblioTipoId`);

--
-- Indexes for table `Compartido`
--
ALTER TABLE `Compartido`
  ADD PRIMARY KEY (`CompartidoId`),
  ADD KEY `fk_Compartido_1_idx` (`ProgAcademico`),
  ADD KEY `fk_Compartido_2_idx` (`MateriaId`);

--
-- Indexes for table `CompProfesional`
--
ALTER TABLE `CompProfesional`
  ADD PRIMARY KEY (`CompProfId`),
  ADD KEY `fk_CompProfesional_1_idx` (`LicenciaturaId`);

--
-- Indexes for table `CompTransversal`
--
ALTER TABLE `CompTransversal`
  ADD PRIMARY KEY (`CompTransvId`);

--
-- Indexes for table `Criterio`
--
ALTER TABLE `Criterio`
  ADD PRIMARY KEY (`CriterioId`);

--
-- Indexes for table `Curso`
--
ALTER TABLE `Curso`
  ADD PRIMARY KEY (`CursoId`),
  ADD KEY `fk_Curso_1_idx` (`UsuarioId`),
  ADD KEY `fk_Curso_2_idx` (`ProgAcademicoId`);

--
-- Indexes for table `Error`
--
ALTER TABLE `Error`
  ADD PRIMARY KEY (`ErrorId`),
  ADD KEY `fk_Error_1_idx` (`UsuarioId`);

--
-- Indexes for table `EstadoModificacion`
--
ALTER TABLE `EstadoModificacion`
  ADD PRIMARY KEY (`EstdModifId`);

--
-- Indexes for table `EstrategiaDidactica`
--
ALTER TABLE `EstrategiaDidactica`
  ADD PRIMARY KEY (`EstDidacticaId`),
  ADD KEY `fk_EstrategiaDidactica_1_idx` (`TemaId`);

--
-- Indexes for table `EstrategiaEnsenanza`
--
ALTER TABLE `EstrategiaEnsenanza`
  ADD PRIMARY KEY (`EstEnsenanzaId`),
  ADD KEY `fk_EstrategiaEsenanza_1_idx` (`ProgAcademicoId`);

--
-- Indexes for table `Evaluacion`
--
ALTER TABLE `Evaluacion`
  ADD PRIMARY KEY (`EvaluacionId`),
  ADD KEY `fk_Evaluacion_1_idx` (`ProgAcademicoId`);

--
-- Indexes for table `Facultad`
--
ALTER TABLE `Facultad`
  ADD PRIMARY KEY (`FacultadId`),
  ADD UNIQUE KEY `FacultadNombre_UNIQUE` (`FacultadNombre`);

--
-- Indexes for table `Lectura`
--
ALTER TABLE `Lectura`
  ADD PRIMARY KEY (`LectId`),
  ADD KEY `fk_Lectura_1_idx` (`TemaId`);

--
-- Indexes for table `Licenciatura`
--
ALTER TABLE `Licenciatura`
  ADD PRIMARY KEY (`LicenciaturaId`),
  ADD UNIQUE KEY `LicenciaturaNombre_UNIQUE` (`LicenciaturaNombre`),
  ADD KEY `fk_Licenciatura_1_idx` (`FacultadId`);

--
-- Indexes for table `LineaConocimiento`
--
ALTER TABLE `LineaConocimiento`
  ADD PRIMARY KEY (`LineaId`),
  ADD KEY `fk_LineaConocimiento_1_idx` (`LicenciaturaId`);

--
-- Indexes for table `Materia`
--
ALTER TABLE `Materia`
  ADD PRIMARY KEY (`MateriaId`),
  ADD KEY `fk_Materia_1_idx` (`LicenciaturaId`),
  ADD KEY `fk_Materia_2_idx` (`LineaId`);

--
-- Indexes for table `ModifAprobada`
--
ALTER TABLE `ModifAprobada`
  ADD PRIMARY KEY (`ModifAprobadabId`),
  ADD KEY `fk_ModifAprobada_1_idx` (`ModifId`),
  ADD KEY `fk_ModifAprobada_2_idx` (`UsuarioId`),
  ADD KEY `fk_ModifAprobada_3_idx` (`ProgAcademicoId`);

--
-- Indexes for table `Modificacion`
--
ALTER TABLE `Modificacion`
  ADD PRIMARY KEY (`ModifId`),
  ADD KEY `fk_Modificacion_1_idx` (`ApartadoId`),
  ADD KEY `fk_Modificacion_2_idx` (`UsuarioId`),
  ADD KEY `fk_Modificacion_3_idx` (`EstdModifId`),
  ADD KEY `fk_Modificacion_4_idx` (`ProgAcademicoId`),
  ADD KEY `fk_Modificacion_5_idx` (`CriterioId`);

--
-- Indexes for table `ModifRechazada`
--
ALTER TABLE `ModifRechazada`
  ADD PRIMARY KEY (`ModifReczadaId`),
  ADD KEY `fk_ModifRechazada_1_idx` (`ModifId`),
  ADD KEY `fk_ModifRechazada_2_idx` (`UsuarioId`);

--
-- Indexes for table `ModifRespuesta`
--
ALTER TABLE `ModifRespuesta`
  ADD PRIMARY KEY (`ModifRespuestaId`),
  ADD KEY `fk_ModifRespuesta_1_idx` (`ModifId`),
  ADD KEY `fk_ModifRespuesta_2_idx` (`UsuarioId`);

--
-- Indexes for table `NivelUsuario`
--
ALTER TABLE `NivelUsuario`
  ADD PRIMARY KEY (`NivelUsuId`);

--
-- Indexes for table `ProgAcademicoCompProf`
--
ALTER TABLE `ProgAcademicoCompProf`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_ProgAcademicoCompProf_1_idx` (`ProgAcademicoId`),
  ADD KEY `fk_ProgAcademicoCompProf_2_idx` (`CompProfId`);

--
-- Indexes for table `ProgAcademicoCompTransv`
--
ALTER TABLE `ProgAcademicoCompTransv`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_ProgAcademicoCompTransv_1_idx` (`CompTransvId`),
  ADD KEY `fk_ProgAcademicoCompTransv_2_idx` (`ProgAcademicoId`);

--
-- Indexes for table `ProgramaAcademico`
--
ALTER TABLE `ProgramaAcademico`
  ADD PRIMARY KEY (`ProgAcademicoId`),
  ADD KEY `fk_ProgramaAcademico_1_idx` (`MateriaId`),
  ADD KEY `fk_ProgramaAcademico_2_idx` (`TipoMateriaId`),
  ADD KEY `fk_ProgramaAcademico_3_idx` (`TipoPropCurrId`);

--
-- Indexes for table `Seriada`
--
ALTER TABLE `Seriada`
  ADD PRIMARY KEY (`MatSeriadaId`),
  ADD KEY `fk_Seriada_1_idx` (`ProgAcademicoId`),
  ADD KEY `fk_Seriada_2_idx` (`MateriaId`);

--
-- Indexes for table `Subtema`
--
ALTER TABLE `Subtema`
  ADD PRIMARY KEY (`SubtemaId`),
  ADD KEY `fk_Subtema_1_idx` (`TemaId`);

--
-- Indexes for table `Tema`
--
ALTER TABLE `Tema`
  ADD PRIMARY KEY (`TemaId`),
  ADD KEY `fk_Tema_1_idx` (`UnidadId`);

--
-- Indexes for table `TipoMateria`
--
ALTER TABLE `TipoMateria`
  ADD PRIMARY KEY (`TipoMateriaId`);

--
-- Indexes for table `TipoPropuestaCurricular`
--
ALTER TABLE `TipoPropuestaCurricular`
  ADD PRIMARY KEY (`TipoPropCurrId`);

--
-- Indexes for table `TipoUsuario`
--
ALTER TABLE `TipoUsuario`
  ADD PRIMARY KEY (`TipoUsuId`);

--
-- Indexes for table `Unidad`
--
ALTER TABLE `Unidad`
  ADD PRIMARY KEY (`UnidadId`),
  ADD KEY `fk_Unidad_1_idx` (`ProgAcademicoId`);

--
-- Indexes for table `Usuario`
--
ALTER TABLE `Usuario`
  ADD PRIMARY KEY (`UsuarioId`),
  ADD UNIQUE KEY `UsuarioAcceso_UNIQUE` (`UsuarioAcceso`),
  ADD UNIQUE KEY `UsuarioEmail_UNIQUE` (`UsuarioEmail`),
  ADD UNIQUE KEY `UsuarioAcceso` (`UsuarioAcceso`),
  ADD UNIQUE KEY `UsuarioAcceso_2` (`UsuarioAcceso`),
  ADD UNIQUE KEY `UsuarioAcceso_3` (`UsuarioAcceso`),
  ADD KEY `fk_Usuario_1_idx` (`NivelUsuId`),
  ADD KEY `fk_Usuario_2_idx` (`TipoUsuId`),
  ADD KEY `fk_Usuario_3_idx` (`FacultadId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Apartado`
--
ALTER TABLE `Apartado`
  MODIFY `ApartadoId` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `Bibliografia`
--
ALTER TABLE `Bibliografia`
  MODIFY `BibliografiaId` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=220;
--
-- AUTO_INCREMENT for table `BibliografiaTipo`
--
ALTER TABLE `BibliografiaTipo`
  MODIFY `BiblioTipoId` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Compartido`
--
ALTER TABLE `Compartido`
  MODIFY `CompartidoId` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `CompProfesional`
--
ALTER TABLE `CompProfesional`
  MODIFY `CompProfId` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `CompTransversal`
--
ALTER TABLE `CompTransversal`
  MODIFY `CompTransvId` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Criterio`
--
ALTER TABLE `Criterio`
  MODIFY `CriterioId` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `Curso`
--
ALTER TABLE `Curso`
  MODIFY `CursoId` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Error`
--
ALTER TABLE `Error`
  MODIFY `ErrorId` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `EstadoModificacion`
--
ALTER TABLE `EstadoModificacion`
  MODIFY `EstdModifId` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `EstrategiaDidactica`
--
ALTER TABLE `EstrategiaDidactica`
  MODIFY `EstDidacticaId` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `EstrategiaEnsenanza`
--
ALTER TABLE `EstrategiaEnsenanza`
  MODIFY `EstEnsenanzaId` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=190;
--
-- AUTO_INCREMENT for table `Evaluacion`
--
ALTER TABLE `Evaluacion`
  MODIFY `EvaluacionId` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=201;
--
-- AUTO_INCREMENT for table `Facultad`
--
ALTER TABLE `Facultad`
  MODIFY `FacultadId` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Lectura`
--
ALTER TABLE `Lectura`
  MODIFY `LectId` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Licenciatura`
--
ALTER TABLE `Licenciatura`
  MODIFY `LicenciaturaId` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `LineaConocimiento`
--
ALTER TABLE `LineaConocimiento`
  MODIFY `LineaId` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Materia`
--
ALTER TABLE `Materia`
  MODIFY `MateriaId` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `ModifAprobada`
--
ALTER TABLE `ModifAprobada`
  MODIFY `ModifAprobadabId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Modificacion`
--
ALTER TABLE `Modificacion`
  MODIFY `ModifId` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `ModifRechazada`
--
ALTER TABLE `ModifRechazada`
  MODIFY `ModifReczadaId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ModifRespuesta`
--
ALTER TABLE `ModifRespuesta`
  MODIFY `ModifRespuestaId` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `NivelUsuario`
--
ALTER TABLE `NivelUsuario`
  MODIFY `NivelUsuId` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ProgAcademicoCompProf`
--
ALTER TABLE `ProgAcademicoCompProf`
  MODIFY `Id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ProgAcademicoCompTransv`
--
ALTER TABLE `ProgAcademicoCompTransv`
  MODIFY `Id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ProgramaAcademico`
--
ALTER TABLE `ProgramaAcademico`
  MODIFY `ProgAcademicoId` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `Seriada`
--
ALTER TABLE `Seriada`
  MODIFY `MatSeriadaId` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Subtema`
--
ALTER TABLE `Subtema`
  MODIFY `SubtemaId` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=841;
--
-- AUTO_INCREMENT for table `Tema`
--
ALTER TABLE `Tema`
  MODIFY `TemaId` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=185;
--
-- AUTO_INCREMENT for table `TipoMateria`
--
ALTER TABLE `TipoMateria`
  MODIFY `TipoMateriaId` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `TipoPropuestaCurricular`
--
ALTER TABLE `TipoPropuestaCurricular`
  MODIFY `TipoPropCurrId` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `TipoUsuario`
--
ALTER TABLE `TipoUsuario`
  MODIFY `TipoUsuId` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `Unidad`
--
ALTER TABLE `Unidad`
  MODIFY `UnidadId` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=172;
--
-- AUTO_INCREMENT for table `Usuario`
--
ALTER TABLE `Usuario`
  MODIFY `UsuarioId` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=70;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Bibliografia`
--
ALTER TABLE `Bibliografia`
  ADD CONSTRAINT `fk_Bibliografia_1` FOREIGN KEY (`BiblioTipoId`) REFERENCES `BibliografiaTipo` (`BiblioTipoId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Bibliografia_2` FOREIGN KEY (`ProgAcademicoId`) REFERENCES `ProgramaAcademico` (`ProgAcademicoId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Compartido`
--
ALTER TABLE `Compartido`
  ADD CONSTRAINT `fk_Compartido_1` FOREIGN KEY (`ProgAcademico`) REFERENCES `ProgramaAcademico` (`ProgAcademicoId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Compartido_2` FOREIGN KEY (`MateriaId`) REFERENCES `Materia` (`MateriaId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `CompProfesional`
--
ALTER TABLE `CompProfesional`
  ADD CONSTRAINT `fk_CompProfesional_1` FOREIGN KEY (`LicenciaturaId`) REFERENCES `Licenciatura` (`LicenciaturaId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Curso`
--
ALTER TABLE `Curso`
  ADD CONSTRAINT `fk_Curso_1` FOREIGN KEY (`UsuarioId`) REFERENCES `Usuario` (`UsuarioId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Curso_2` FOREIGN KEY (`ProgAcademicoId`) REFERENCES `ProgramaAcademico` (`ProgAcademicoId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Error`
--
ALTER TABLE `Error`
  ADD CONSTRAINT `fk_Error_1` FOREIGN KEY (`UsuarioId`) REFERENCES `Usuario` (`UsuarioId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `EstrategiaDidactica`
--
ALTER TABLE `EstrategiaDidactica`
  ADD CONSTRAINT `fk_EstrategiaDidactica_1` FOREIGN KEY (`TemaId`) REFERENCES `Tema` (`TemaId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `EstrategiaEnsenanza`
--
ALTER TABLE `EstrategiaEnsenanza`
  ADD CONSTRAINT `fk_EstrategiaEsenanza_1` FOREIGN KEY (`ProgAcademicoId`) REFERENCES `ProgramaAcademico` (`ProgAcademicoId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Evaluacion`
--
ALTER TABLE `Evaluacion`
  ADD CONSTRAINT `fk_Evaluacion_1` FOREIGN KEY (`ProgAcademicoId`) REFERENCES `ProgramaAcademico` (`ProgAcademicoId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Lectura`
--
ALTER TABLE `Lectura`
  ADD CONSTRAINT `fk_Lectura_1` FOREIGN KEY (`TemaId`) REFERENCES `Tema` (`TemaId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Licenciatura`
--
ALTER TABLE `Licenciatura`
  ADD CONSTRAINT `fk_Licenciatura_1` FOREIGN KEY (`FacultadId`) REFERENCES `Facultad` (`FacultadId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `LineaConocimiento`
--
ALTER TABLE `LineaConocimiento`
  ADD CONSTRAINT `fk_LineaConocimiento_1` FOREIGN KEY (`LicenciaturaId`) REFERENCES `Licenciatura` (`LicenciaturaId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Materia`
--
ALTER TABLE `Materia`
  ADD CONSTRAINT `fk_Materia_1` FOREIGN KEY (`LicenciaturaId`) REFERENCES `Licenciatura` (`LicenciaturaId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Materia_2` FOREIGN KEY (`LineaId`) REFERENCES `LineaConocimiento` (`LineaId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `ModifAprobada`
--
ALTER TABLE `ModifAprobada`
  ADD CONSTRAINT `fk_ModifAprobada_1` FOREIGN KEY (`ModifId`) REFERENCES `Modificacion` (`ModifId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ModifAprobada_2` FOREIGN KEY (`UsuarioId`) REFERENCES `Usuario` (`UsuarioId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ModifAprobada_3` FOREIGN KEY (`ProgAcademicoId`) REFERENCES `ProgramaAcademico` (`ProgAcademicoId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Modificacion`
--
ALTER TABLE `Modificacion`
  ADD CONSTRAINT `fk_Modificacion_1` FOREIGN KEY (`ApartadoId`) REFERENCES `Apartado` (`ApartadoId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Modificacion_2` FOREIGN KEY (`UsuarioId`) REFERENCES `Usuario` (`UsuarioId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Modificacion_3` FOREIGN KEY (`EstdModifId`) REFERENCES `EstadoModificacion` (`EstdModifId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Modificacion_4` FOREIGN KEY (`ProgAcademicoId`) REFERENCES `ProgramaAcademico` (`ProgAcademicoId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Modificacion_5` FOREIGN KEY (`CriterioId`) REFERENCES `Criterio` (`CriterioId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `ModifRechazada`
--
ALTER TABLE `ModifRechazada`
  ADD CONSTRAINT `fk_ModifRechazada_1` FOREIGN KEY (`ModifId`) REFERENCES `Modificacion` (`EstdModifId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ModifRechazada_2` FOREIGN KEY (`UsuarioId`) REFERENCES `Usuario` (`UsuarioId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `ModifRespuesta`
--
ALTER TABLE `ModifRespuesta`
  ADD CONSTRAINT `fk_ModifRespuesta_1` FOREIGN KEY (`ModifId`) REFERENCES `Modificacion` (`ModifId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ModifRespuesta_2` FOREIGN KEY (`UsuarioId`) REFERENCES `Usuario` (`UsuarioId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `ProgAcademicoCompProf`
--
ALTER TABLE `ProgAcademicoCompProf`
  ADD CONSTRAINT `fk_ProgAcademicoCompProf_1` FOREIGN KEY (`ProgAcademicoId`) REFERENCES `ProgramaAcademico` (`ProgAcademicoId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ProgAcademicoCompProf_2` FOREIGN KEY (`CompProfId`) REFERENCES `CompProfesional` (`CompProfId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `ProgAcademicoCompTransv`
--
ALTER TABLE `ProgAcademicoCompTransv`
  ADD CONSTRAINT `fk_ProgAcademicoCompTransv_1` FOREIGN KEY (`CompTransvId`) REFERENCES `CompTransversal` (`CompTransvId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ProgAcademicoCompTransv_2` FOREIGN KEY (`ProgAcademicoId`) REFERENCES `ProgramaAcademico` (`ProgAcademicoId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `ProgramaAcademico`
--
ALTER TABLE `ProgramaAcademico`
  ADD CONSTRAINT `fk_ProgramaAcademico_1` FOREIGN KEY (`MateriaId`) REFERENCES `Materia` (`MateriaId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ProgramaAcademico_2` FOREIGN KEY (`TipoMateriaId`) REFERENCES `TipoMateria` (`TipoMateriaId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ProgramaAcademico_3` FOREIGN KEY (`TipoPropCurrId`) REFERENCES `TipoPropuestaCurricular` (`TipoPropCurrId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Seriada`
--
ALTER TABLE `Seriada`
  ADD CONSTRAINT `fk_Seriada_1` FOREIGN KEY (`ProgAcademicoId`) REFERENCES `ProgramaAcademico` (`ProgAcademicoId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Seriada_2` FOREIGN KEY (`MateriaId`) REFERENCES `Materia` (`MateriaId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Subtema`
--
ALTER TABLE `Subtema`
  ADD CONSTRAINT `fk_Subtema_1` FOREIGN KEY (`TemaId`) REFERENCES `Tema` (`TemaId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Tema`
--
ALTER TABLE `Tema`
  ADD CONSTRAINT `fk_Tema_1` FOREIGN KEY (`UnidadId`) REFERENCES `Unidad` (`UnidadId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Unidad`
--
ALTER TABLE `Unidad`
  ADD CONSTRAINT `fk_Unidad_1` FOREIGN KEY (`ProgAcademicoId`) REFERENCES `ProgramaAcademico` (`ProgAcademicoId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Usuario`
--
ALTER TABLE `Usuario`
  ADD CONSTRAINT `fk_Usuario_1` FOREIGN KEY (`NivelUsuId`) REFERENCES `NivelUsuario` (`NivelUsuId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Usuario_2` FOREIGN KEY (`TipoUsuId`) REFERENCES `TipoUsuario` (`TipoUsuId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Usuario_3` FOREIGN KEY (`FacultadId`) REFERENCES `Facultad` (`FacultadId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
