-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21-Ago-2024 às 22:52
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `wuwaplanner`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `characters`
--

CREATE TABLE `characters` (
  `id_character` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `id_rarity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `characters`
--

INSERT INTO `characters` (`id_character`, `name`, `id_rarity`) VALUES
(1, 'Calcharo', 4),
(2, 'Encore', 4),
(3, 'Jianxin', 4),
(4, 'Jiyan', 4),
(5, 'Lingyang', 4),
(6, 'Rover (Spectro)', 4),
(7, 'Verina', 4),
(8, 'Yinlin', 4),
(9, 'Aalto', 3),
(10, 'Baizhi', 3),
(11, 'Chixia', 3),
(12, 'Danjin', 3),
(13, 'Mortefi', 3),
(14, 'Sanhua', 3),
(15, 'Taoqi', 3),
(16, 'Yangyang', 3),
(17, 'Yuanwu', 3),
(18, 'Changli', 4),
(19, 'Jinhsi', 4),
(20, 'Rover (Havoc)', 4),
(21, 'The Shorekeeper', 4),
(22, 'Xiangli Yao', 4),
(23, 'Youhu', 3),
(24, 'Zhezhi', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `characters_resources`
--

CREATE TABLE `characters_resources` (
  `id_character` int(11) NOT NULL,
  `id_resource` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `rarities`
--

CREATE TABLE `rarities` (
  `id_rarity` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `rarities`
--

INSERT INTO `rarities` (`id_rarity`, `name`) VALUES
(1, 'commom'),
(2, 'rare'),
(3, 'epic'),
(4, 'legendary');

-- --------------------------------------------------------

--
-- Estrutura da tabela `resource`
--

CREATE TABLE `resource` (
  `id_resource` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `id_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `resource`
--

INSERT INTO `resource` (`id_resource`, `name`, `id_type`) VALUES
(1, 'Crownless', 1),
(2, 'Thundering', 1),
(3, 'Tempest', 1),
(4, 'Mourning', 1),
(5, 'Inferno', 1),
(6, 'Feilian', 1),
(7, 'Heron', 1),
(8, 'Myriad', 1),
(9, 'Mech', 1),
(10, 'Bell', 2),
(11, 'Sentinel', 2),
(12, 'Card', 2),
(13, 'Feather', 2),
(14, 'Drip', 3),
(15, 'Phlogiston', 3),
(16, 'Helix', 3),
(17, 'Waveworn', 3),
(18, 'Cadence', 3),
(19, 'Whisperin', 4),
(20, 'Howler', 4),
(21, 'Ring', 4),
(22, 'Mask', 4),
(23, 'Iris', 5),
(24, 'Fungus', 5),
(25, 'Lantenberry', 5),
(26, 'Pecok', 5),
(27, 'Belle', 5),
(28, 'Coriolus', 5),
(29, 'Wintry', 5),
(30, 'Violet', 5),
(31, 'Pavo', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `types`
--

CREATE TABLE `types` (
  `id_types` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `types`
--

INSERT INTO `types` (`id_types`, `name`) VALUES
(1, 'boss'),
(2, 'weakly boss'),
(3, 'farm'),
(4, 'world'),
(5, 'flower');

-- --------------------------------------------------------

--
-- Estrutura da tabela `weapons`
--

CREATE TABLE `weapons` (
  `id_weapon` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `id_rarity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `weapons_resources`
--

CREATE TABLE `weapons_resources` (
  `id_weapon` int(11) NOT NULL,
  `id_resource` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`id_character`),
  ADD KEY `id_rarity` (`id_rarity`);

--
-- Índices para tabela `characters_resources`
--
ALTER TABLE `characters_resources`
  ADD PRIMARY KEY (`id_character`,`id_resource`),
  ADD KEY `id_resource` (`id_resource`);

--
-- Índices para tabela `rarities`
--
ALTER TABLE `rarities`
  ADD PRIMARY KEY (`id_rarity`);

--
-- Índices para tabela `resource`
--
ALTER TABLE `resource`
  ADD PRIMARY KEY (`id_resource`),
  ADD KEY `id_type` (`id_type`);

--
-- Índices para tabela `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id_types`);

--
-- Índices para tabela `weapons`
--
ALTER TABLE `weapons`
  ADD PRIMARY KEY (`id_weapon`),
  ADD KEY `id_rarity` (`id_rarity`);

--
-- Índices para tabela `weapons_resources`
--
ALTER TABLE `weapons_resources`
  ADD PRIMARY KEY (`id_weapon`,`id_resource`),
  ADD KEY `id_resource` (`id_resource`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `characters`
--
ALTER TABLE `characters`
  MODIFY `id_character` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de tabela `rarities`
--
ALTER TABLE `rarities`
  MODIFY `id_rarity` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `resource`
--
ALTER TABLE `resource`
  MODIFY `id_resource` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de tabela `types`
--
ALTER TABLE `types`
  MODIFY `id_types` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `weapons`
--
ALTER TABLE `weapons`
  MODIFY `id_weapon` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `characters`
--
ALTER TABLE `characters`
  ADD CONSTRAINT `characters_ibfk_1` FOREIGN KEY (`id_rarity`) REFERENCES `rarities` (`id_rarity`);

--
-- Limitadores para a tabela `characters_resources`
--
ALTER TABLE `characters_resources`
  ADD CONSTRAINT `characters_resources_ibfk_1` FOREIGN KEY (`id_character`) REFERENCES `characters` (`id_character`),
  ADD CONSTRAINT `characters_resources_ibfk_2` FOREIGN KEY (`id_resource`) REFERENCES `resource` (`id_resource`);

--
-- Limitadores para a tabela `resource`
--
ALTER TABLE `resource`
  ADD CONSTRAINT `resource_ibfk_1` FOREIGN KEY (`id_type`) REFERENCES `types` (`id_types`);

--
-- Limitadores para a tabela `weapons`
--
ALTER TABLE `weapons`
  ADD CONSTRAINT `weapons_ibfk_1` FOREIGN KEY (`id_rarity`) REFERENCES `rarities` (`id_rarity`);

--
-- Limitadores para a tabela `weapons_resources`
--
ALTER TABLE `weapons_resources`
  ADD CONSTRAINT `weapons_resources_ibfk_1` FOREIGN KEY (`id_weapon`) REFERENCES `weapons` (`id_weapon`),
  ADD CONSTRAINT `weapons_resources_ibfk_2` FOREIGN KEY (`id_resource`) REFERENCES `resource` (`id_resource`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
