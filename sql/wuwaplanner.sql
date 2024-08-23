-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23-Ago-2024 às 16:37
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

--
-- Extraindo dados da tabela `characters_resources`
--

INSERT INTO `characters_resources` (`id_character`, `id_resource`) VALUES
(1, 2),
(1, 10),
(1, 17),
(1, 21),
(1, 23),
(2, 5),
(2, 12),
(2, 16),
(2, 19),
(2, 26),
(3, 6),
(3, 12),
(3, 18),
(3, 19),
(3, 25),
(4, 6),
(4, 10),
(4, 17),
(4, 20),
(4, 26),
(5, 8),
(5, 12),
(5, 18),
(5, 19),
(5, 28),
(6, 12),
(6, 14),
(6, 19),
(6, 26),
(6, 33),
(7, 4),
(7, 10),
(7, 16),
(7, 20),
(7, 27),
(8, 9),
(8, 13),
(8, 16),
(8, 19),
(8, 28),
(9, 6),
(9, 10),
(9, 15),
(9, 20),
(9, 29),
(10, 8),
(10, 10),
(10, 16),
(10, 20),
(10, 25),
(11, 5),
(11, 10),
(11, 15),
(11, 19),
(11, 27),
(12, 1),
(12, 13),
(12, 14),
(12, 21),
(12, 27),
(13, 5),
(13, 10),
(13, 15),
(13, 19),
(13, 28),
(14, 8),
(14, 12),
(14, 14),
(14, 19),
(14, 29),
(15, 7),
(15, 13),
(15, 17),
(15, 20),
(15, 23),
(16, 6),
(16, 12),
(16, 14),
(16, 21),
(16, 29),
(17, 3),
(17, 12),
(17, 18),
(17, 21),
(17, 24),
(18, 5),
(18, 11),
(18, 14),
(18, 21),
(18, 31),
(19, 4),
(19, 11),
(19, 17),
(19, 20),
(19, 32),
(20, 13),
(20, 14),
(20, 19),
(20, 26),
(20, 33),
(22, 3),
(22, 12),
(22, 18),
(22, 19),
(22, 30),
(24, 8),
(24, 10),
(24, 16),
(24, 20),
(24, 26);

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
(31, 'Pavo', 5),
(32, 'Pearl', 5),
(33, 'Mysterious', 1);

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

--
-- Extraindo dados da tabela `weapons`
--

INSERT INTO `weapons` (`id_weapon`, `name`, `id_rarity`) VALUES
(1, 'Lustrous Razor', 4),
(2, 'Emerald of Genesis', 4),
(3, 'Static Mist', 4),
(4, 'Abyss Surges', 4),
(5, 'Cosmic Ripples', 4),
(6, 'Verdant Summit', 4),
(7, 'Stringmaster', 4),
(8, 'Ages of Harvest', 4),
(9, 'Blazing Brilliance', 4),
(10, 'Rime-Draped Sprouts', 4),
(11, 'Verity\'s Handle', 4),
(12, 'Discord', 3),
(13, 'Overture', 3),
(14, 'Cadenza', 3),
(15, 'Marcato', 3),
(16, 'Variation', 3),
(17, 'Broadblade#41', 3),
(18, 'Sword#18', 3),
(19, 'Rectifier#25', 3),
(20, 'Dauntless Evernight', 3),
(21, 'Commando of Conviction', 3),
(22, 'Undying Flame', 3),
(23, 'Amity Accord', 3),
(24, 'Jinzhou Keeper', 3),
(25, 'Helios Cleaver', 3),
(26, 'Lunar Cutter', 3),
(27, 'Novaburst', 3),
(28, 'Comet Flare', 3),
(29, 'Pistols#26', 3),
(30, 'Gauntlets#21D', 3),
(31, 'Autumntrace', 3),
(32, 'Lumingloss', 3),
(33, 'Thunderbolt', 3),
(34, 'Stonard', 3),
(35, 'Augment', 3),
(36, 'Hollow Mirage', 3),
(37, 'Broadblade of Night', 2),
(38, 'Sword of Night', 2),
(39, 'Pistols of Night', 2),
(40, 'Gauntlets of Night', 2),
(41, 'Rectifier of Night', 2),
(42, 'Originite: Type I', 2),
(43, 'Originite: Type II', 2),
(44, 'Originite: Type V', 2),
(45, 'Broadblade of Voyager', 2),
(46, 'Sword of Voyager', 2),
(47, 'Rectifier of Voyager', 2),
(48, 'Guardian Broadblade', 2),
(49, 'Guardian Sword', 2),
(50, 'Guardian Pistols', 2),
(51, 'Guardian Gauntlets', 2),
(52, 'Guardian Rectifier', 2),
(53, 'Originite: Type III', 2),
(54, 'Originite: Type IV', 2),
(55, 'Pistols of Voyager', 2),
(56, 'Gauntlets of Voyager', 2),
(57, 'Beguiling Melody', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `weapons_resources`
--

CREATE TABLE `weapons_resources` (
  `id_weapon` int(11) NOT NULL,
  `id_resource` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `weapons_resources`
--

INSERT INTO `weapons_resources` (`id_weapon`, `id_resource`) VALUES
(1, 17),
(1, 19),
(2, 14),
(2, 20),
(3, 15),
(3, 21),
(4, 18),
(4, 20),
(5, 16),
(5, 21),
(6, 17),
(6, 19),
(7, 16),
(7, 21),
(8, 17),
(8, 19),
(9, 14),
(9, 20),
(10, 16),
(10, 21),
(11, 18),
(11, 20),
(12, 17),
(12, 19),
(13, 14),
(13, 20),
(14, 15),
(14, 21),
(15, 18),
(15, 20),
(16, 16),
(16, 21),
(17, 17),
(17, 19),
(18, 14),
(18, 20),
(19, 16),
(19, 21),
(20, 17),
(20, 19),
(21, 14),
(21, 20),
(22, 15),
(22, 21),
(23, 18),
(23, 20),
(24, 16),
(24, 21),
(25, 17),
(25, 19),
(26, 14),
(26, 20),
(27, 15),
(27, 21),
(28, 16),
(28, 21),
(29, 15),
(29, 21),
(30, 18),
(30, 20),
(31, 17),
(31, 19),
(32, 14),
(32, 20),
(33, 15),
(33, 21),
(34, 18),
(34, 20),
(35, 16),
(35, 21),
(36, 18),
(36, 20),
(37, 17),
(37, 19),
(38, 14),
(38, 20),
(39, 15),
(39, 21),
(40, 18),
(40, 20),
(41, 16),
(41, 21),
(42, 17),
(42, 19),
(43, 14),
(43, 20),
(44, 16),
(44, 21),
(45, 17),
(45, 19),
(46, 14),
(46, 20),
(47, 16),
(47, 21),
(48, 17),
(48, 19),
(49, 14),
(49, 20),
(50, 15),
(50, 21),
(51, 18),
(51, 20),
(52, 16),
(52, 21),
(53, 15),
(53, 21),
(54, 18),
(54, 20),
(55, 15),
(55, 21),
(56, 18),
(56, 20),
(57, 17),
(57, 19);

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
  MODIFY `id_resource` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de tabela `types`
--
ALTER TABLE `types`
  MODIFY `id_types` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `weapons`
--
ALTER TABLE `weapons`
  MODIFY `id_weapon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

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
