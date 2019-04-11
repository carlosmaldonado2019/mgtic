-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 31-01-2017 a las 10:49:22
-- Versión del servidor: 5.6.32-78.1-log
-- Versión de PHP: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `facultad_geea`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autores`
--

CREATE TABLE IF NOT EXISTS `autores` (
  `folio` int(11) NOT NULL,
  `autor2` varchar(100) NOT NULL,
  `autor3` varchar(100) NOT NULL,
  `autor4` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `autores`
--

INSERT INTO `autores` (`folio`, `autor2`, `autor3`, `autor4`) VALUES
(5, '', '', ''),
(4, '', '', ''),
(3, '', '', ''),
(6, 'Silvia Daayan Casanueva Pérez', 'Hilario de la Torre Pérez', ''),
(7, 'M.A. BERENICE MARTÍNEZ PÉREZ ', '', ''),
(8, 'CRUZ ELDA MACIAS TERAN', '', ''),
(9, '', '', ''),
(10, '', '', ''),
(11, 'Blanca Estela Lopez Lopez', '', ''),
(12, '', '', ''),
(13, '', '', ''),
(14, 'CRUZ ELDA MACIAS TERAN', '', ''),
(15, '', '', ''),
(16, '', '', ''),
(17, '', '', ''),
(18, '', '', ''),
(19, '', '', ''),
(20, '', '', ''),
(21, '', '', ''),
(22, '', '', ''),
(23, '', '', ''),
(24, 'Blanca Estela López López', '', ''),
(25, 'PIEDAD SANDOVAL OLIVAS', 'RAFAEL ERNESTO CARRANZA PRIETO', ''),
(26, 'PIEDAD SANDOVAL OLIVAS', 'RAFAEL ERNESTO CARRANZA PRIETO', ''),
(27, 'SOSIMA CARRILLO', 'LORETO MARIA BRAVO ZANOGUERA', ''),
(29, 'Berenice Martinez Perez', '', ''),
(30, 'Berenice Martinez Perez', '', ''),
(31, 'Berenice Martinez Perez', '', ''),
(32, '', '', ''),
(33, 'SOSIMA CARRILLO', 'LORETO MARIA BRAVO ZANOGUERA', ''),
(34, 'SOSIMA CARRILLO', 'LORETO MARIA BRAVO ZANOGUERA', ''),
(35, '', '', ''),
(36, '', '', ''),
(37, '', '', ''),
(38, '', '', ''),
(41, '', '', ''),
(40, '', '', ''),
(42, '', '', ''),
(43, 'SOSIMA CARRILLO', 'MA LORETO BRAVO ZANOGUERA', ''),
(44, 'LEONEL ROSILES', '', ''),
(45, 'DRA. SOSIMA CARRILLO', 'DRA. LORETO BRAVO ZANOGUERA', ''),
(46, 'M.I ESTHER EDUVIGES CORRAL QUINTERO', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE IF NOT EXISTS `comentarios` (
  `id` int(11) NOT NULL,
  `folio_documento` int(11) NOT NULL,
  `folio_participante` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `comentario` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `participantes`
--

CREATE TABLE IF NOT EXISTS `participantes` (
  `folio` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `apellido` varchar(120) NOT NULL,
  `correo` varchar(170) NOT NULL,
  `universidad` varchar(60) NOT NULL,
  `licenciatura` varchar(80) NOT NULL,
  `tipo_asistentes` varchar(20) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `estado` varchar(30) NOT NULL,
  `pais` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `participantes`
--

INSERT INTO `participantes` (`folio`, `nombre`, `apellido`, `correo`, `universidad`, `licenciatura`, `tipo_asistentes`, `ciudad`, `estado`, `pais`) VALUES
(1, 'BERENICE ', 'MARTINEZ PEREZ', 'aybere@yahoo.com.mx', 'UNIVERSIDAD AUTONOMA DE BAJA CALIFORNIA ', '', 'Asistente', 'MEXICALI', 'Baja California', 'MEXICO'),
(3, 'Alan Alonso', 'Gómez Barba', 'alangomezbarba@gmail.com', '', '', 'Ponente', 'Mexicali', 'Baja California', 'México'),
(4, 'María Elena', 'Douglas del Toro', 'lic.gustavors@gmail.com', 'Facultad de Ciencias Administrativas', '', 'Ponente', 'Mexicali', 'Baja California', 'México'),
(5, 'Gabriela ', 'Reyes Hermosillo', 'greyeshermosillo@gmail.com', 'Universidad Autónoma de Baja California', '', 'Ponente', 'Mexicali', 'Baja California', 'México'),
(6, 'Silvia Daayan ', 'Casanueva Pérez.', 'scasanueva92@gmail.com', 'Universidad Autónoma de Baja California Facultad de Ciencias', '', 'Ponente', 'Mexicali', 'Baja California', 'México'),
(7, 'M.C. Liliana Guadalupe', 'Garcia Peña ', 'lilianagp@hotmail.com', 'Universidad Autonoma de Baja California', '', 'Asistente', 'Mexicali ', 'Baja California', 'Mexico'),
(8, 'M.C. Liliana Guadalupe', 'Garcia Peña ', 'lilianagp@hotmail.com', 'Universidad Autonoma de Baja California', '', 'Ponente', 'Mexicali', 'Baja California', 'Mexico'),
(9, 'GABRIELA', 'CUEVAS GONZALEZ', 'mticgabycuevas@gmail.com', 'UABC FACULTAD CIENCIA ADMINISTRATIVAS', '', 'Asistente', 'MEXICALI', 'Baja California', 'MEXICO'),
(10, 'ALAN ALFREDO', 'HERNANDEZ REYNOSO', 'greenday4life@gmail.com', 'UNIVERSIDAD AUTONOMA DE BAJA CALIFORNIA', '', 'Ponente', 'MEXICALI', 'Baja California', 'MEXICO'),
(11, 'Javier de Jesus ', 'Elizondo Solia', 'javier.elizondo13@hotmail.com', 'Universidad Autonoma de Baja California', '', 'Ponente', 'Mexicali', 'Baja California', 'Mexico'),
(12, 'Edwin Alejandro', 'Zárate Patiño', 'alejandro.zarate.cca@gmail.com', 'UABC', '', 'Ponente', 'Mexicali', 'Baja California', 'México'),
(13, 'Alicia Idali', 'Contreras Garcia', 'aliciai.contrerasg@gmail.com', 'UABC', '', 'Ponente', 'MEXICALI', 'Baja California', 'México'),
(14, 'Veronica Samara ', 'Lopez Miranda', 'samaralopezm@gmail.com', 'Universidad Autonoma de Baja California', '', 'Ponente', 'Mexicali', 'Baja California', 'Mexico'),
(15, 'Denisse Melisa', 'Cervantes Bernal', 'abogadadmcervantes@gmail.com', 'Universidad Autónoma de Baja California', '', 'Ponente', 'Mexicali', 'Baja California', 'México'),
(16, 'ORLANDO ', 'lopez CAMPOS', 'licontaduria@gmail.com', 'UABC', '', 'Ponente', 'MEXICALI', 'Baja California', 'MEXICO'),
(17, 'pedro', 'GAMA SANCHEZ', 'rockstarpgs@gmail.com', 'uabc', '', 'Ponente', 'Mexicali', 'Baja California', 'Mexico'),
(18, 'Gerardo Emanuell', 'Gallardo Badilla', 'geragallardo89@gmail.com', 'Universidad Autónoma de Baja California', '', 'Ponente', 'Mexicali', 'Baja California', 'México'),
(21, 'Walter ', 'Mojica López', 'amojica@uabc.edu.mx', 'UABC', '', 'Ponente', 'Mexicali', 'Baja California', 'Mexico'),
(22, 'JOSE CARLOS', 'MACIAS RUEDA', 'jcmaciasrueda@gmail.com', 'UNIVERSIDAD AUTONOMA DE BAJA CALIFORNIA', '', 'Ponente', 'MEXICALI', 'Baja California', 'ESTADOS UNIDOS MEXICANOS'),
(20, 'GUSTAVO ALFONSO', 'ROMERO SALGADO', 'lic.gustavors@gmail.com', 'UNIVERSIDAD AUTÓNOMA DE BAJA CALIFORNIA', '', 'Ponente', 'MEXICALI', 'Baja California', 'MEXICO'),
(23, 'NANCY', 'LONA VERDUGO', 'nancy.lona@uabc.edu.mx', '', '', 'Ponente', 'MEXICALI ', 'Baja California', 'MEXICO'),
(24, 'NANCY', 'LONA VERDUGO', 'lona.nancy@uabc.edu.mx', '', '', 'Ponente', 'MEXICALI ', 'Baja California', 'MEXICO'),
(25, 'Javier de Jesus', 'Elizondo solia', 'javier.elizondo13@hotmail.com', 'UNIVERSIDAD AUTÓNOMA DE BAJA CALIFORNIA', '', 'Ponente', 'Mexicali', 'Baja California', 'Mexico'),
(26, 'Yésica Lizbet ', 'Benítez Niebla', 'yesica.benitez@uabc.edu.mx', 'Universidad Autónoma de Baja California ', '', 'Ponente', 'Mexicali', 'Baja California', 'México'),
(27, 'PIEDAD', 'SANDOVAL OLIVAS', 'piedad_sandoli@hotmail.com', 'UNIVERSIDAD AUTONOMA DE BAJA CALIFORNIA', '', 'Ponente', 'Mexicali', 'Baja California', 'México'),
(28, 'PIEDAD', 'SANDOVAL OLIVAS', 'piedad_sandoli@hotmail.com', 'UNIVERSIDAD AUTONOMA DE BAJA CALIFORNIA', '', 'Ponente', 'Mexicali', 'Baja California', 'México'),
(29, 'MARIA DEL SOCORRO', 'VILLAVICENCIO MACHORRO', 'soco_vdelsol@hotmail.com', 'UABC', '', 'Ponente', 'MEXICALI', 'Baja California', 'MEXICO'),
(30, 'HÉCTOR EDUARDO', 'OCAMPO LÓPEZ', 'hocampo@logs.com.mx', 'UNIVERSIDAD AUTÓNOMA DE BAJA CALIFORNIA', '', 'Ponente', 'MEXICALI', 'Baja California', 'MÉXICO'),
(31, 'Liliana Guadalupe ', 'Garcia Peña', 'lilianagp@hotmail.com', '', '', 'Ponente', 'Mexicali', 'Baja California', 'Mexicali'),
(32, 'Liliana Guadalupe ', 'Garcia Peña', 'lilianagp@hotmail.com', '', '', 'Asistente', 'Mexicali', 'Baja California', 'Mexicali'),
(33, 'Liliana Guadalupe ', 'Garcia Peña', 'lilianagp@hotmail.com', '', '', 'Ponente', 'Mexicali', '0', 'Mexicali'),
(34, 'Liliana Guadalupe', 'Garcia Peña', 'lilianagp@hotmail.com', '', '', 'Asistente', 'Mexicali', 'Baja California', 'Mexicali'),
(35, 'Liliana Guadalupe', 'Garcia Peña', 'lilianagp@hotmail.com', '', '', 'Ponente', '', 'Baja California', 'Mexicali'),
(36, 'CHRISTIAN OMAR', 'REYES RAMIREZ', 'christianomareyes@gmail.com', 'UNIVERSIDAD AUTONOMA DE BAJA CALIFORNIA/FCA', '', 'Ponente', 'MEXICALI', 'Baja California', 'MEXICO'),
(37, 'MARIA DEL SOCORRO', 'VILLAVICENCIO MACHORRO', 'soco_vdelsol@hotmail.com', 'UABC', '', 'Ponente', 'Mexicali', 'Baja California', 'MEXICO'),
(38, 'MARIA DEL SOCORRO', 'VILLAVICENCIO MACHORRO', 'soco_vdelsol@hotmail.com', 'UABC', '', 'Ponente', 'Mexicali', 'Baja California', 'MEXICO'),
(39, 'Liliana Guadalupe ', 'Garcia Peña', 'liliana.garcia31@uabc.edu.mx', '', '', 'Asistente', 'Mexicali', 'Baja California', 'mexico'),
(40, 'Liliana Guadalupe ', 'Garcia Peña', 'liliana.garcia31@uabc.edu.mx', '', '', 'Ponente', 'Mexicali', 'Baja California', 'mexico'),
(41, 'Liliana Guadalupe ', 'Garcia Peña', 'liliana.garcia31@uabc.edu.mx', '', '', 'Ponente', 'Mexicali', 'Baja California', 'mexico'),
(42, 'Liliana Guadalupe ', 'Garcia Peña', 'liliana.garcia31@uabc.edu.mx', '', '', 'Ponente', 'Mexicali', 'Baja California', 'Mexicali'),
(43, 'Liliana Guadalupe ', 'Garcia Peña', 'liliana.garcia31@uabc.edu.mx', '', '', 'Ponente', '', 'Baja California', 'mexico'),
(44, 'Liliana Guadalupe ', 'Garcia Peña', 'liliana.garcia31@uabc.edu.mx', '', '', 'Ponente', 'Mexicali', 'Baja California', 'mexico'),
(45, 'Cesar Ramon', 'Rincon Toledo', 'c.p.cesartoledo@gmail.com', 'UABC Facultad de ciencias administrativas', '', 'Ponente', 'Mexicali', 'Baja California', 'Mexico'),
(46, 'Daniel', 'Cadena Coronado', 'cp.dcadena@gmail.com', 'Universidad Autónoma de Baja California', '', 'Ponente', 'Mexicali', 'Baja California', 'México'),
(47, 'ANA PATRICIA', 'ARELIS CASTOENA', 'arelispath@hotmail.com', 'UNIVERSIDAD AUTONOMA DE BAJA CALIFORNIA', '', 'Ponente', 'Mexicali', 'Baja California', 'MEXICO'),
(48, 'BLANCA LILIANA', 'HURTADO GODOY', 'bhurtado@uabc.edu.mx', 'UNIVERSIDAD AUTÓNOMA DE BAJA CALIFORNIA', '', 'Ponente', 'MEXICALI', 'Baja California', 'MEXICO'),
(49, 'ANA PATRICIA', 'ARELIS CASTORENA', 'arelispath@hotmail.com', 'UNIVERSIDAD AUTONOMA DE BAJA CALIFORNIA', '', 'Ponente', 'Mexicali', 'Baja California', 'MEXICO'),
(50, 'Barnypok', '8888', 'cogabxHlVCdiwgyA', 'YxmjdBYcYmPrj', '', 'Asistente', 'NY', 'Jalisco', 'USA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ponencias`
--

CREATE TABLE IF NOT EXISTS `ponencias` (
  `folio` int(11) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `eje_tematico` varchar(150) NOT NULL,
  `archivo` varchar(150) NOT NULL,
  `resumen` varchar(150) NOT NULL,
  `portada` varchar(150) NOT NULL,
  `presentacion` varchar(150) NOT NULL,
  `carta_derechos` varchar(150) NOT NULL,
  `estatus` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ponencias`
--

INSERT INTO `ponencias` (`folio`, `titulo`, `eje_tematico`, `archivo`, `resumen`, `portada`, `presentacion`, `carta_derechos`, `estatus`) VALUES
(4, 'Continuación Voluntaria en el Régimen Obligatorio para incrementar la Pensión por Retiro del Seguro Social', 'Contaduría.', 'ponencias/PonenciaFolio_4.docx', '', 'ponencias/PortadaFolio_4.docx', '', '', 1),
(3, 'Efectos fiscales en Impuesto Sobre la Renta para extranjeros que realizan operaciones mediante contrato manufactura y constituyen un establecimiento permanente', 'Contaduría.', 'ponencias/PonenciaFolio_3.doc', '', 'ponencias/PortadaFolio_3.doc', '', '', 1),
(5, 'Violaciones constitucionales al determinar presuntivamente conforme al artículo 41 del Código Fiscal de la Federación en Baja California', 'Contaduría.', 'ponencias/PonenciaFolio_5.docx', '', 'ponencias/PortadaFolio_5.docx', '', '', 1),
(6, 'CONSECUENCIAS FISCALES PARA EL RESPONSABLE SOLIDARIO QUE REALICE PAGOS POR INTERESES A RESIDENTES EN EL EXTRANJERO.', 'Contaduría.', 'ponencias/PonenciaFolio_6.docx', '', 'ponencias/PortadaFolio_6.docx', '', '', 1),
(8, 'IMPACTO EN MATERIA FISCAL, ECONOMICA Y ADMINISTRATIVA PARA LAS PERSONAS MORALES DEL ENVIO DE LA CONTABILIDAD ELECTRONICA AL SERVICIO DE ADMINISTRACION TRIBUTARIA', 'Contaduría.', 'ponencias/PonenciaFolio_8.docx', '', 'ponencias/PortadaFolio_8.docx', '', 'ponencias/CesionDerechosFolio_8.docx', 1),
(9, 'MODELO DE NEGOCIO CERVECERÍAS ARTESANALES.', 'Contaduría.', '', '', '', '', '', 1),
(10, 'LA GARANTÍA DE LEGALIDAD Y EL EJERCICIO DE LA FACULTAD REGLAMENTARIA RESPECTO DE LA LEY FEDERAL PARA LA PREVENCIÓN E IDENTIFICACIÓN DE OPERACIONES CON RECURSOS DE PROCEDENCIA ILÍCITA', 'Contaduría.', 'ponencias/PonenciaFolio_10.docx', '', 'ponencias/PortadaFolio_10.docx', '', '', 1),
(11, 'ANÁLISIS DE LA ACUMULACIÓN COMO  INGRESO DEL CRÉDITO FISCAL DEL IMPUESTO ESPECIAL SOBRE PRODUCCIÓN Y SERVICIOS POR ADQUISICIÓN DE DIÉSEL OTORGADO AL SECTOR AGROPECUARIO', 'Contaduría.', 'ponencias/PonenciaFolio_11.pdf', '', 'ponencias/PortadaFolio_11.pdf', '', 'ponencias/CesionDerechosFolio_11.pdf', 1),
(12, 'Impacto fiscal, economico y administrativo por tributar en el Regimen de Incorporacion fiscal en Mexicali', 'Contaduría.', 'ponencias/PonenciaFolio_12.pdf', '', 'ponencias/PortadaFolio_12.pdf', '', '', 1),
(13, 'PRESUNCIÓN DE INEXISTENCIA DE OPERACIONES PREVISTA EN EL ARTÍCULO 69-B DEL CÓDIGO FISCAL DE LA FEDERACIÓN A LA LUZ DE LOS DERECHOS DEL CONTRIBUYENTE', 'Contaduría.', 'ponencias/PonenciaFolio_13.docx', '', 'ponencias/PortadaFolio_13.docx', '', '', 1),
(14, 'OPCIONES DE DEDUCCIONES FISCALES EN AMBITOS CULTURALES, SOCIALES Y PROFESIONALES  PARA PERSONAS FISICAS EN MEXICO.', 'Contaduría.', 'ponencias/PonenciaFolio_14.doc', '', 'ponencias/PortadaFolio_14.doc', '', '', 1),
(15, 'OBLIGACIONES FISCALES DE LAS DONATARIAS AUTORIZADAS PARA CONSERVAR SU REGISTRO.', 'Contaduría.', 'ponencias/PonenciaFolio_15.doc', '', 'ponencias/PortadaFolio_15.docx', '', 'ponencias/CesionDerechosFolio_15.docx', 1),
(16, 'Reforma Fiscal 2014 Vigente para el Sector Maquilador y su Impacto en la Inversión Extranjera', 'Contaduría.', 'ponencias/PonenciaFolio_16.pdf', '', 'ponencias/PortadaFolio_16.pdf', '', '', 1),
(19, 'Antinomias en la normas fiscales mexicanas, causas y efectos sobre las personas morales', 'Contaduría.', 'ponencias/PonenciaFolio_19.pptx', '', 'ponencias/PortadaFolio_19.docx', '', 'ponencias/CesionDerechosFolio_19.docx', 1),
(18, 'EFECTOS DE LA PRESCRIPCIÓN DEL CRÉDITO FISCAL CONFORME AL ARTÍCULO 146 DEL CÓDIGO FISCAL DE LA FEDERACIÓN.', 'Contaduría.', 'ponencias/PonenciaFolio_18.docx', '', 'ponencias/PortadaFolio_18.docx', '', '', 1),
(20, 'EFECTOS DE LA REFORMA FISCAL 2014 EN MATERIA DE IMPUESTOS EN LAS EMPRESAS MAQUILADORAS DE MEXICALI', 'Contaduría.', 'ponencias/PonenciaFolio_20.pdf', '', 'ponencias/PortadaFolio_20.pdf', '', '', 1),
(22, 'LAS PROBLEMATICAS QUE ENFRENTAN LOS RESPONSABLES SOLIDARIOS ANTE LAS AUTORIDADES FISCALES, POR EL PAGO DEL IMPUESTO SOBRE LA RENTA EN MEXICALI BAJA CALIFORNIA', '0', '', '', '', '', '', 1),
(24, 'Fiscalización electrónica y su efecto en las obligaciones formales del contribuyente', 'Contaduría.', 'ponencias/PonenciaFolio_24.doc', '', 'ponencias/PortadaFolio_24.doc', '', '', 1),
(25, 'LOS PRESUPUESTOS COMO HERRAMIENTA DE CONTROL EN LAS MIPYMES', 'Administración.', 'ponencias/PonenciaFolio_25.docx', '', 'ponencias/PortadaFolio_25.docx', '', '', 1),
(32, 'TRATAMIENTO DE LOS ESTIMULOS FISCALES OTORGADOS POR EL GOBIERNO MEXICANO AL SECTOR MAQUILADOR', 'Contaduría.', '', '', '', '', '', 1),
(46, 'EFECTOS EN LA PENSIÓN DE LOS SOCIOS COOPERATIVISTAS, AL COTIZAR EN EL SEGURO SOCIAL CON UN SALARIO MÍNIMO', 'Contaduría.', 'ponencias/PonenciaFolio_46.docx', '', 'ponencias/PortadaFolio_46.docx', '', '', 1),
(34, 'IMPACTO DE LA VALUACION DE LOS INVENTARIOS EN LA RENTABILIDAD. CASO:DISTRIBUIDORA DEL SOL', 'Contaduría.', 'ponencias/PonenciaFolio_34.pdf', '', 'ponencias/PortadaFolio_34.pdf', '', '', 1),
(41, 'Irregularidades en la orden de visita domiciliaria estipulada en el CFF', 'Contaduría.', 'ponencias/PonenciaFolio_41.docx', '', 'ponencias/PortadaFolio_41.docx', '', '', 1),
(40, 'Régimen de Incorporación Fiscal: Su uso y aprovechamiento como paraíso fiscal para los contribuyentes mexicanos', 'Contaduría.', '', '', 'ponencias/PortadaFolio_40.docx', '', '', 0),
(42, 'LIMITANTES DE LAS DEDUCCIONES EN LA PREVISIÓN SOCIAL Y SU EFECTO FISCAL EN EMPRESAS OUTSOURCING DE MEXICALI, BAJA CALIFORNIA', 'Contaduría.', 'ponencias/PonenciaFolio_42.pptx', '', 'ponencias/PortadaFolio_42.doc', '', '', 0),
(43, 'GESTION DE PLANEACION COMO ESTRATEGIA PARA LA ESTABILIDAD FINANCIERA: CASO DE ESTUDIO "PET PLANET"', 'Administración.', '', '', '', '', '', 1),
(44, 'APLICACIÓN DE ANÁLISIS FINANCIERO A UNA EMPRESA MAQUILADORA', 'Contaduría.', 'ponencias/PonenciaFolio_44.pdf', '', 'ponencias/PortadaFolio_44.pdf', '', '', 1),
(45, 'GESTION DE PLANEACION COMO ESTRATEGIA PARA LA ESTABILIDAD FINANCIERA: CASO DE ESTUDIO "PET PLANET"', 'Administración.', '', '', '', '', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ponencia_participante`
--

CREATE TABLE IF NOT EXISTS `ponencia_participante` (
  `folio_participante` int(11) NOT NULL,
  `folio_documento` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ponencia_participante`
--

INSERT INTO `ponencia_participante` (`folio_participante`, `folio_documento`) VALUES
(5, 5),
(4, 4),
(3, 3),
(6, 6),
(8, 7),
(10, 8),
(11, 9),
(12, 10),
(13, 11),
(14, 12),
(15, 13),
(16, 14),
(17, 15),
(18, 16),
(19, 17),
(20, 18),
(21, 19),
(22, 20),
(23, 21),
(24, 22),
(25, 23),
(26, 24),
(27, 25),
(28, 26),
(29, 27),
(31, 29),
(33, 30),
(35, 31),
(36, 32),
(37, 33),
(38, 34),
(40, 35),
(41, 36),
(42, 37),
(43, 38),
(44, 41),
(45, 40),
(46, 42),
(47, 43),
(48, 44),
(49, 45),
(30, 46);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE IF NOT EXISTS `registro` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellidos` varchar(30) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `universidad` varchar(50) DEFAULT NULL,
  `tipoAsis` varchar(20) NOT NULL,
  `ciudad` varchar(15) NOT NULL,
  `estado` varchar(15) NOT NULL,
  `pais` varchar(15) NOT NULL,
  `autor2` varchar(50) NOT NULL,
  `autor3` varchar(50) NOT NULL,
  `autor4` varchar(50) NOT NULL,
  `titulo` text NOT NULL,
  `ejeTematico` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `folio` int(11) NOT NULL,
  `usuario` varchar(150) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `tipo_usuario` int(11) NOT NULL,
  `fecha_registro` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`folio`, `usuario`, `pass`, `tipo_usuario`, `fecha_registro`) VALUES
(0, 'admin', 'admin23', 1, '2013-12-01 00:00:00'),
(43, 'LilianaGuadalupe43', '45644922275096176', 0, '2016-11-18 22:36:53'),
(44, 'LilianaGuadalupe44', '66870899638161064', 0, '2016-11-18 22:39:41'),
(9, 'GABRIELA9', '29199453769251704', 0, '2016-11-17 13:43:58'),
(8, 'M.C.LilianaGuadalupe8', '53994663339108232', 0, '2016-11-17 12:54:28'),
(6, 'SilviaDaayan6', '10895522311329840', 0, '2016-11-17 12:27:41'),
(7, 'M.C.LilianaGuadalupe7', '58340248698368672', 0, '2016-11-17 12:49:28'),
(4, 'MaríaElena4', '40975928446277976', 0, '2016-11-17 12:13:23'),
(1, 'BERENICE1', '2159076649695632', 0, '2016-11-17 10:49:54'),
(5, 'Gabriela5', '82720450265333056', 0, '2016-11-17 12:24:22'),
(3, 'AlanAlonso3', '32276159385219216', 0, '2016-11-17 11:16:11'),
(42, 'LilianaGuadalupe42', '45269960537552', 0, '2016-11-18 22:35:32'),
(41, 'LilianaGuadalupe41', '96836260240525007', 0, '2016-11-18 22:31:10'),
(40, 'LilianaGuadalupe40', '72692202171310784', 0, '2016-11-18 22:30:59'),
(39, 'LilianaGuadalupe39', '21765036555007104', 0, '2016-11-18 22:30:11'),
(38, 'MARIADELSOCORRO38', '9722281713038688', 0, '2016-11-18 20:38:15'),
(37, 'MARIADELSOCORRO37', '68330149818211792', 0, '2016-11-18 20:38:15'),
(36, 'CHRISTIANOMAR36', '1609999407082800', 0, '2016-11-18 19:53:40'),
(35, 'LilianaGuadalupe35', '36214550398290160', 0, '2016-11-18 19:27:14'),
(34, 'LilianaGuadalupe34', '35700836870819328', 0, '2016-11-18 19:25:15'),
(33, 'LilianaGuadalupe33', '33610091265290976', 0, '2016-11-18 18:42:36'),
(32, 'LilianaGuadalupe32', '7810884201899168', 0, '2016-11-18 18:41:12'),
(31, 'LilianaGuadalupe31', '17822103388607504', 0, '2016-11-18 18:37:38'),
(30, 'HÉCTOREDUARDO30', '25513536529615520', 0, '2016-11-18 18:22:41'),
(29, 'MARIADELSOCORRO29', '97039422439411283', 0, '2016-11-18 16:50:28'),
(27, 'PIEDAD27', '60683509567752480', 0, '2016-11-18 13:43:07'),
(26, 'YésicaLizbet26', '90391019871458412', 0, '2016-11-18 13:24:01'),
(25, 'JavierdeJesus25', '97377559542655945', 0, '2016-11-18 12:29:27'),
(28, 'PIEDAD28', '56964422110468152', 0, '2016-11-18 15:26:09'),
(23, 'NANCY23', '51517282333225008', 0, '2016-11-18 11:30:43'),
(22, 'JOSECARLOS22', '94183512451127172', 0, '2016-11-18 11:22:17'),
(21, 'Walter21', '60687941173091528', 0, '2016-11-17 16:55:43'),
(20, 'GUSTAVOALFONSO20', '72919998178258540', 0, '2016-11-17 16:38:38'),
(19, 'GUSTAVOALFONSO19', '66462346864864232', 0, '2016-11-17 16:35:19'),
(18, 'GerardoEmanuell18', '59878598712384704', 0, '2016-11-17 16:23:05'),
(17, 'pedro17', '77636575000360608', 0, '2016-11-17 16:16:37'),
(16, 'ORLANDO16', '80296202376484872', 0, '2016-11-17 16:13:29'),
(15, 'DenisseMelisa15', '76913604792207480', 0, '2016-11-17 16:05:31'),
(14, 'VeronicaSamara14', '51091418880969288', 0, '2016-11-17 15:47:19'),
(13, 'AliciaIdali13', '62570602633059024', 0, '2016-11-17 15:35:44'),
(12, 'EdwinAlejandro12', '85891754925251008', 0, '2016-11-17 15:20:47'),
(11, 'JavierdeJesus11', '1624071737751360', 0, '2016-11-17 14:47:36'),
(10, 'ALANALFREDO10', '4691487178206448', 0, '2016-11-17 14:15:04'),
(45, 'CesarRamon45', '4280922515317792', 0, '2016-11-20 11:29:42'),
(46, 'Daniel46', '53304588561877608', 0, '2016-11-20 22:20:16'),
(47, 'ANAPATRICIA47', '75956542743369936', 0, '2016-11-21 12:07:02'),
(48, 'BLANCALILIANA48', '57499044341966512', 0, '2016-11-21 22:39:22'),
(49, 'ANAPATRICIA49', '27881354233250016', 0, '2016-11-21 23:28:02'),
(50, 'Barnypok50', '27461454272270208', 0, '2017-01-06 14:27:01');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `registro`
--
ALTER TABLE `registro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
