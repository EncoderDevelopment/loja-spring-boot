-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 21-Ago-2018 às 02:13
-- Versão do servidor: 10.1.8-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lv`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(12);

-- --------------------------------------------------------

--
-- Estrutura da tabela `product`
--

CREATE TABLE `product` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` float NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `photo` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `description`, `photo`) VALUES
(40, 'Galaxy Tab 7', 1423.09, 'Tablet Samsung Galaxy Tab A SM-P585M 16GB Wi-Fi 4G Tela 10.1" Android Processador Octa-Core - Preto', 'https://images-americanas.b2w.io/produtos/01/00/item/129328/5/129328509_1GG.jpg'),
(39, 'Galaxy 7 prime', 3000, 'Smartphone Samsung Galaxy J7 Pro Android 7.0 Tela 5.5" Octa-Core 64GB 4G Wi-Fi Câmera 13MP - Preto', 'https://i.zst.com.br/images/smartphone-samsung-galaxy-s7-sm-g930f-32gb-12-0-mp-android-6-0-marshmallow-3g-4g-wi-fi-photo88812454-12-39-19.jpg'),
(41, 'Inspiron 15 5000 (5552)', 1899, 'Com muito potencial, assim como você.\r\nRealize qualquer tarefa com muito mais eficiência e destaque-se na multidão com um notebook versátil de 15" cheio de estilo.', 'https://i.dell.com/das/xa.ashx/global-site-design%20web/00000000-0000-0000-0000-000000000000/1/LargePNG?id=Dell/Product_Images/Dell_Client_Products/Notebooks/Inspiron_Notebooks/15_5566/global_spi/notebook-inspiron-15-5566-non-touch-black-right-usage-hero-504x350-ng.psd'),
(42, 'Notebook Essentials E20', 1549.99, 'Notebook Essentials E20 Intel Dual Core 3 4GB 500GB LED HD 15,6" W10 Branco Ônix - Samsung', 'https://images-americanas.b2w.io/produtos/01/00/item/133621/7/133621741_1GG.png'),
(43, 'iPhone 7 Ouro Rosa', 2815.12, 'iPhone 7 Ouro Rosa 32GB, Tela 4,7", 3D Touch, iOS 11, Touch ID, Câm.12MP, Resistente à Água', 'https://www.extra-imagens.com.br/TelefoneseCelulares/Smartphones/iPhone/11526442/830717607/iphone-7-ouro-rosa-32gb-tela-47-3d-touch-ios-11-touch-id-cam-12mp-resistente-a-agua-11526442.jpg'),
(44, 'iPhone SE', 1399, 'iPhone SE Apple com 32GB, Tela 4”, iOS 9, Sensor de Impressão Digital, Câmera iSight 12MP, Wi-Fi, 3G/4G, GPS, MP3, Bluetooth e NFC – Cinza Espacial', 'https://www.extra-imagens.com.br/TelefoneseCelulares/Smartphones/iPhone/11549448/843467865/iphone-se-apple-com-32gb-tela-4-ios-9-sensor-de-impressao-digital-camera-isight-12mp-wi-fi-3g-4g-gps-mp3-bluetooth-e-nfc-cinza-espacial-11549448.jpg'),
(45, 'iPhone X ', 7019.1, 'iPhone X Cinza Espacial 256GB Tela 5.8" IOS 11 4G Wi-Fi Câmera 12MP - Apple', 'https://images-americanas.b2w.io/produtos/01/00/item/132722/7/132722726_1GG.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
