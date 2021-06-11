-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2020 at 01:31 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventario`
--

-- --------------------------------------------------------

--
-- Table structure for table `cliente`
--

CREATE TABLE `cliente` (
  `idcli` varchar(10) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Telefono` int(20) NOT NULL,
  `Nit` int(20) NOT NULL,
  `Direccion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cliente`
--

INSERT INTO `cliente` (`idcli`, `Nombre`, `Telefono`, `Nit`, `Direccion`) VALUES
('C 1', 'VINOS AZUL', 285965632, 457896321, 'LAS PALMERAS N 100 Z PALCA'),
('C 2', 'POTOSINA', 256321478, 125469873, 'C. VIRREY N 250 Z. PACAJES'),
('C 3', 'DISTRIBUIDORA SANCHEZ', 2456398, 1234578, 'C. LOS PINOS N 123 Z. VILLA ADELA');

-- --------------------------------------------------------

--
-- Table structure for table `detalle_pedido`
--

CREATE TABLE `detalle_pedido` (
  `iddet` int(11) NOT NULL,
  `idped` int(11) NOT NULL,
  `idpro` varchar(10) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Estado` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detalle_pedido`
--

INSERT INTO `detalle_pedido` (`iddet`, `idped`, `idpro`, `Cantidad`, `Estado`) VALUES
(1, 1, 'P 1', 0, 'SI'),
(2, 1, 'P 2', 0, 'SI');

-- --------------------------------------------------------

--
-- Table structure for table `empleado`
--

CREATE TABLE `empleado` (
  `idemp` varchar(10) NOT NULL,
  `Ci` int(20) NOT NULL,
  `Paterno` varchar(20) NOT NULL,
  `Materno` varchar(20) NOT NULL,
  `Nombre` varchar(25) NOT NULL,
  `Telefono` int(20) NOT NULL,
  `Cargo` varchar(25) NOT NULL,
  `Direccion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `empleado`
--

INSERT INTO `empleado` (`idemp`, `Ci`, `Paterno`, `Materno`, `Nombre`, `Telefono`, `Cargo`, `Direccion`) VALUES
('E 2', 789654123, 'PEREZ', 'SOLIZ', 'MARIA', 75896321, 'Secretaria', 'C. VENEZUELA N 100 Z. VILLA ADELA'),
('E 3', 200012365, 'PEREZ', 'SUAREZ', 'LUIS', 605236987, 'Chofer', 'LOS PINOS N 200'),
('E 4', 45632145, 'SUAREZ', 'TORREZ', 'LUIS', 60547896, 'Ayudante', 'C PISAGUA N 147 Z. VILLA VICTORIA');

-- --------------------------------------------------------

--
-- Table structure for table `pedidos`
--

CREATE TABLE `pedidos` (
  `idped` int(11) NOT NULL,
  `idprov` varchar(10) NOT NULL,
  `idemp` varchar(10) NOT NULL,
  `Fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pedidos`
--

INSERT INTO `pedidos` (`idped`, `idprov`, `idemp`, `Fecha`) VALUES
(1, 'PV 1', 'E 1', '2020-06-22');

-- --------------------------------------------------------

--
-- Table structure for table `producto`
--

CREATE TABLE `producto` (
  `idpro` varchar(10) NOT NULL,
  `Descripcion` varchar(50) NOT NULL,
  `Marca` varchar(20) NOT NULL,
  `Presentacion` varchar(15) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Stockmin` int(11) NOT NULL,
  `Precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `producto`
--

INSERT INTO `producto` (`idpro`, `Descripcion`, `Marca`, `Presentacion`, `Cantidad`, `Stockmin`, `Precio`) VALUES
('P 1', 'VINO', 'CCF', '200 ML', 20, 25, 50),
('P 2', 'VINO BLANCO', 'LA MEJORIA', '400 ML', 20, 21, 58),
('P 3', 'VINO DULCE', 'LOS SAUSALES', '200 ML', 400, 50, 200),
('P 4', 'CERVEZA', 'PACEÃA', '1000 ML', 200, 50, 12);

-- --------------------------------------------------------

--
-- Table structure for table `proveedor`
--

CREATE TABLE `proveedor` (
  `idprov` varchar(10) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Nit` int(20) NOT NULL,
  `Telefono` int(20) NOT NULL,
  `Direccion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `proveedor`
--

INSERT INTO `proveedor` (`idprov`, `Nombre`, `Nit`, `Telefono`, `Direccion`) VALUES
('PV 1', 'LOS TARIJEÑOS', 56321478, 5879632, 'C LOS PÍNOS N 456 VILLA OROPEZA'),
('PV 2', 'JUAN GUTIERREZ', 589632, 789654156, 'C. SAGARNAGA N 147 Z. CENTRAL'),
('PV 3', 'VINOS ARUQUIPA', 4563289, 248965454, 'LOS MOLINOS N 456 TARIJA ');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `idu` int(11) NOT NULL,
  `user` varchar(20) NOT NULL,
  `clave` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`idu`, `user`, `clave`, `Nombre`) VALUES
(1, 'Erika', 987654, 'Erika Barrera'),
(2, 'Sammy', 123456, 'Samuel Copa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idcli`);

--
-- Indexes for table `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`idemp`);

--
-- Indexes for table `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`idped`);

--
-- Indexes for table `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idpro`);

--
-- Indexes for table `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`idprov`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
