-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 25, 2023 at 08:39 PM
-- Server version: 5.7.42-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wagnerpap`
--

-- --------------------------------------------------------

--
-- Table structure for table `apostas`
--

CREATE TABLE `apostas` (
  `id` int(11) NOT NULL,
  `nome_usuario` varchar(255) NOT NULL,
  `piloto_escolhido` varchar(255) NOT NULL,
  `data_aposta` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `apostas`
--

INSERT INTO `apostas` (`id`, `nome_usuario`, `piloto_escolhido`, `data_aposta`) VALUES
(1, 'root', 'Sergio Perez', '2023-10-25 18:28:57'),
(2, 'root', 'Lewis Hamilton', '2023-10-25 18:31:20'),
(3, 'root', 'Lewis Hamilton', '2023-10-25 18:31:41'),
(4, 'root', 'Carlos Sainz', '2023-10-25 18:40:21'),
(5, 'root', 'Sergio Perez', '2023-10-25 18:41:23'),
(6, 'tanjil', 'Lewis Hamilton', '2023-10-25 18:45:49'),
(7, 'tanjil', 'Lewis Hamilton', '2023-10-25 18:45:51'),
(8, 'tanjil', 'Lewis Hamilton', '2023-10-25 18:45:54');

-- --------------------------------------------------------

--
-- Table structure for table `circuitos`
--

CREATE TABLE `circuitos` (
  `id_circuitos` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `comprimento_pista` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `equipas`
--

CREATE TABLE `equipas` (
  `id_equipas` varchar(255) NOT NULL,
  `nome` text,
  `data_criada` text,
  `mail` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `equipas`
--

INSERT INTO `equipas` (`id_equipas`, `nome`, `data_criada`, `mail`) VALUES
('Redbul', 'RedbullRacing', '12/01/199', 'redbullracing@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `equipa_premio`
--

CREATE TABLE `equipa_premio` (
  `id_equipas` varchar(255) DEFAULT NULL,
  `id_premio` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `equipa_premio`
--

INSERT INTO `equipa_premio` (`id_equipas`, `id_premio`) VALUES
('Redbul', 'GP do Qatar'),
('Redbul', 'Austin');

-- --------------------------------------------------------

--
-- Table structure for table `pilotos`
--

CREATE TABLE `pilotos` (
  `id_pilotos` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `data_nascimento` date DEFAULT NULL,
  `nacionalidade` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pilotos`
--

INSERT INTO `pilotos` (`id_pilotos`, `nome`, `data_nascimento`, `nacionalidade`, `foto`) VALUES
(1, 'LEWIS', '2023-07-13', 'Inglesa', 'asas'),
(44, 'LEWIS', '2023-07-13', 'Inglesa', '43'),
(63, 'George Russel', '1999-07-21', 'Inglesa', 'WW');

-- --------------------------------------------------------

--
-- Table structure for table `piloto_premio`
--

CREATE TABLE `piloto_premio` (
  `id_pilotos` int(11) DEFAULT NULL,
  `id_premio` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `piloto_premio`
--

INSERT INTO `piloto_premio` (`id_pilotos`, `id_premio`) VALUES
(44, 'Austin'),
(1, 'GP do Qatar');

-- --------------------------------------------------------

--
-- Table structure for table `premio`
--

CREATE TABLE `premio` (
  `id_premio` varchar(255) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `premio`
--

INSERT INTO `premio` (`id_premio`, `descricao`, `data`) VALUES
('Austin', 'Estados Unidos', '2023-10-22'),
('GP do Qatar', 'Localização: Lusail, Catar  Comprimento: 5,38 km', '2023-08-09');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `admin` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `senha`, `email`, `foto`, `created_at`, `admin`) VALUES
(1, 'asas', '$2y$10$aB49Ary9ThQpcE/Y55doQOTZaTWecM4bGe71V6l1/D1gyfu/06uxi', 'xuxu@gmail.com', NULL, '2023-10-13 13:52:06', 0),
(2, 'Daniela Cervan', '$2y$10$gnz.Rt/UA.Ri56tvRzFDtejkdWI7ztiOTv6SK35cQm.z7SAXaB5HC', 'danicervan@gmail.com', NULL, '2023-10-13 13:52:42', 0),
(3, 'ty', '$2y$10$efKm68YWbVVwDtgxIdZx3uyZWNqN1U8PX3CsJoTMmLhw6IudaAidm', 'ty@gmail.com', NULL, '2023-10-16 11:10:05', 0),
(4, 'admin', '$2y$10$nwpp92AowrJ87GlHsyxHb.6mpBtPtrDOpdGp0Bq5Cb7tIgWyttOj6', 'admin@gmail.com', NULL, '2023-10-17 09:07:42', 1),
(5, 'wagner', '$2y$10$S9gTD7gxqC8Ep4htkGPgROom/kx9n1bVtnfhvStbUPplTkBOAvNju', 'wagnerbernardo440@gmail.com', NULL, '2023-10-17 10:04:31', NULL),
(7, 'Gabriel Bernardo', '$2y$10$qAAmK42w6YAPbDqLqvDcoe8jGYzqoIAnMlv.Kj/s3n3i53ZDPCoBW', 'gabrielbernardo@gmail.com', NULL, '2023-10-24 09:58:28', NULL),
(8, 'tanjil', '$2y$10$ns34QWQL/.zKx1CPdWBUB.RxGprHUg1b/rA8riF1ISdyBPUEn33eS', 'tanjilkh@gmail.com', NULL, '2023-10-25 16:36:54', NULL),
(9, 'root123', '$2y$10$pdkGpMSBA9HF203zI9DKuOdZzF66fsJpUtp5a2PjDpTzIkFFBadfu', 'root@gmail.com', '7a1894fdd930af0212ce050d22a515cb.jpg', '2023-10-25 16:41:31', NULL),
(10, 'teste', '$2y$10$2rNLktEfxO0YorH5Cg/I1.jP8smUZ1ZXlRkii.cdZw9VXHcY6NPTm', 'teste@gmail.com', NULL, '2023-10-25 16:43:42', NULL),
(11, '12341234', '$2y$10$EBhXgxgz0hy9VGDQtNybz.E268yXeHdFJTZZ5GFM8Keck0soGRg.G', '12341234@gmail.com', NULL, '2023-10-25 17:53:13', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apostas`
--
ALTER TABLE `apostas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `circuitos`
--
ALTER TABLE `circuitos`
  ADD PRIMARY KEY (`id_circuitos`);

--
-- Indexes for table `equipas`
--
ALTER TABLE `equipas`
  ADD PRIMARY KEY (`id_equipas`);

--
-- Indexes for table `equipa_premio`
--
ALTER TABLE `equipa_premio`
  ADD KEY `id_equipa` (`id_equipas`),
  ADD KEY `id_premio` (`id_premio`);

--
-- Indexes for table `pilotos`
--
ALTER TABLE `pilotos`
  ADD PRIMARY KEY (`id_pilotos`);

--
-- Indexes for table `piloto_premio`
--
ALTER TABLE `piloto_premio`
  ADD KEY `id_pilotos` (`id_pilotos`),
  ADD KEY `id_premio` (`id_premio`);

--
-- Indexes for table `premio`
--
ALTER TABLE `premio`
  ADD PRIMARY KEY (`id_premio`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apostas`
--
ALTER TABLE `apostas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `circuitos`
--
ALTER TABLE `circuitos`
  MODIFY `id_circuitos` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pilotos`
--
ALTER TABLE `pilotos`
  MODIFY `id_pilotos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;
--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `equipa_premio`
--
ALTER TABLE `equipa_premio`
  ADD CONSTRAINT `equipa_premio_ibfk_1` FOREIGN KEY (`id_equipas`) REFERENCES `equipas` (`id_equipas`),
  ADD CONSTRAINT `equipa_premio_ibfk_2` FOREIGN KEY (`id_premio`) REFERENCES `premio` (`id_premio`);

--
-- Constraints for table `piloto_premio`
--
ALTER TABLE `piloto_premio`
  ADD CONSTRAINT `piloto_premio_ibfk_1` FOREIGN KEY (`id_pilotos`) REFERENCES `pilotos` (`id_pilotos`),
  ADD CONSTRAINT `piloto_premio_ibfk_2` FOREIGN KEY (`id_premio`) REFERENCES `premio` (`id_premio`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
