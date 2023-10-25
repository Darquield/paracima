-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 25-Out-2023 às 18:33
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

create database wagnerpap;
use wagnerpap;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `pap`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `apostas`
--

CREATE TABLE `apostas` (
  `id` int(11) NOT NULL,
  `nome_usuario` varchar(255) NOT NULL,
  `piloto_escolhido` varchar(255) NOT NULL,
  `data_aposta` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `circuitos`
--

CREATE TABLE `circuitos` (
  `id_circuitos` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `comprimento_pista` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipas`
--

CREATE TABLE `equipas` (
  `id_equipas` varchar(255) NOT NULL,
  `nome` text DEFAULT NULL,
  `data_criada` text DEFAULT NULL,
  `mail` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `equipas`
--

INSERT INTO `equipas` (`id_equipas`, `nome`, `data_criada`, `mail`) VALUES
('Redbul', 'RedbullRacing', '12/01/199', 'redbullracing@gmail.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipa_premio`
--

CREATE TABLE `equipa_premio` (
  `id_equipas` varchar(255) DEFAULT NULL,
  `id_premio` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `equipa_premio`
--

INSERT INTO `equipa_premio` (`id_equipas`, `id_premio`) VALUES
('Redbul', 'GP do Qatar'),
('Redbul', 'Austin');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pilotos`
--

CREATE TABLE `pilotos` (
  `id_pilotos` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `data_nascimento` date DEFAULT NULL,
  `nacionalidade` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `pilotos`
--

INSERT INTO `pilotos` (`id_pilotos`, `nome`, `data_nascimento`, `nacionalidade`, `foto`) VALUES
(1, 'LEWIS', '2023-07-13', 'Inglesa', 'asas'),
(44, 'LEWIS', '2023-07-13', 'Inglesa', '43'),
(63, 'George Russel', '1999-07-21', 'Inglesa', 'WW');

-- --------------------------------------------------------

--
-- Estrutura da tabela `piloto_premio`
--

CREATE TABLE `piloto_premio` (
  `id_pilotos` int(11) DEFAULT NULL,
  `id_premio` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `piloto_premio`
--

INSERT INTO `piloto_premio` (`id_pilotos`, `id_premio`) VALUES
(44, 'Austin'),
(1, 'GP do Qatar');

-- --------------------------------------------------------

--
-- Estrutura da tabela `premio`
--

CREATE TABLE `premio` (
  `id_premio` varchar(255) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `premio`
--

INSERT INTO `premio` (`id_premio`, `descricao`, `data`) VALUES
('Austin', 'Estados Unidos', '2023-10-22'),
('GP do Qatar', 'Localização: Lusail, Catar  Comprimento: 5,38 km', '2023-08-09');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `admin` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `senha`, `email`, `foto`, `created_at`, `admin`) VALUES
(1, 'asas', '$2y$10$aB49Ary9ThQpcE/Y55doQOTZaTWecM4bGe71V6l1/D1gyfu/06uxi', 'xuxu@gmail.com', NULL, '2023-10-13 13:52:06', 0),
(2, 'Daniela Cervan', '$2y$10$gnz.Rt/UA.Ri56tvRzFDtejkdWI7ztiOTv6SK35cQm.z7SAXaB5HC', 'danicervan@gmail.com', NULL, '2023-10-13 13:52:42', 0),
(3, 'ty', '$2y$10$efKm68YWbVVwDtgxIdZx3uyZWNqN1U8PX3CsJoTMmLhw6IudaAidm', 'ty@gmail.com', NULL, '2023-10-16 11:10:05', 0),
(4, 'admin', '$2y$10$nwpp92AowrJ87GlHsyxHb.6mpBtPtrDOpdGp0Bq5Cb7tIgWyttOj6', 'admin@gmail.com', NULL, '2023-10-17 09:07:42', 1),
(5, 'wagner', '$2y$10$S9gTD7gxqC8Ep4htkGPgROom/kx9n1bVtnfhvStbUPplTkBOAvNju', 'wagnerbernardo440@gmail.com', NULL, '2023-10-17 10:04:31', NULL),
(7, 'Gabriel Bernardo', '$2y$10$qAAmK42w6YAPbDqLqvDcoe8jGYzqoIAnMlv.Kj/s3n3i53ZDPCoBW', 'gabrielbernardo@gmail.com', NULL, '2023-10-24 09:58:28', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `apostas`
--
ALTER TABLE `apostas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `circuitos`
--
ALTER TABLE `circuitos`
  ADD PRIMARY KEY (`id_circuitos`);

--
-- Índices para tabela `equipas`
--
ALTER TABLE `equipas`
  ADD PRIMARY KEY (`id_equipas`);

--
-- Índices para tabela `equipa_premio`
--
ALTER TABLE `equipa_premio`
  ADD KEY `id_equipa` (`id_equipas`),
  ADD KEY `id_premio` (`id_premio`);

--
-- Índices para tabela `pilotos`
--
ALTER TABLE `pilotos`
  ADD PRIMARY KEY (`id_pilotos`);

--
-- Índices para tabela `piloto_premio`
--
ALTER TABLE `piloto_premio`
  ADD KEY `id_pilotos` (`id_pilotos`),
  ADD KEY `id_premio` (`id_premio`);

--
-- Índices para tabela `premio`
--
ALTER TABLE `premio`
  ADD PRIMARY KEY (`id_premio`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `apostas`
--
ALTER TABLE `apostas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `circuitos`
--
ALTER TABLE `circuitos`
  MODIFY `id_circuitos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pilotos`
--
ALTER TABLE `pilotos`
  MODIFY `id_pilotos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `equipa_premio`
--
ALTER TABLE `equipa_premio`
  ADD CONSTRAINT `equipa_premio_ibfk_1` FOREIGN KEY (`id_equipas`) REFERENCES `equipas` (`id_equipas`),
  ADD CONSTRAINT `equipa_premio_ibfk_2` FOREIGN KEY (`id_premio`) REFERENCES `premio` (`id_premio`);

--
-- Limitadores para a tabela `piloto_premio`
--
ALTER TABLE `piloto_premio`
  ADD CONSTRAINT `piloto_premio_ibfk_1` FOREIGN KEY (`id_pilotos`) REFERENCES `pilotos` (`id_pilotos`),
  ADD CONSTRAINT `piloto_premio_ibfk_2` FOREIGN KEY (`id_premio`) REFERENCES `premio` (`id_premio`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
