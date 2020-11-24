-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24-Nov-2020 às 12:30
-- Versão do servidor: 10.4.6-MariaDB
-- versão do PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_jornal`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_noticia`
--

CREATE TABLE `tbl_noticia` (
  `id_noticia` int(11) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `imagem` varchar(200) NOT NULL,
  `links` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbl_noticia`
--

INSERT INTO `tbl_noticia` (`id_noticia`, `titulo`, `imagem`, `links`) VALUES
(11, 'Mulher e criança de 11 anos ficam feridas em colisão entre carro e moto...', 'https://omunicipio.com.br/wp-content/uploads/2020/11/ambulancia-11-218x150.jpg', 'https://omunicipio.com.br/mulher-e-crianca-de-11-anos-ficam-feridos-em-colisao-entre-carro-e-moto-no-limeira-baixa/'),
(12, 'Barateiro Havan anuncia renovação da técnica Rafaela Nicolete para 2021', 'https://omunicipio.com.br/wp-content/uploads/2020/11/barateiro-havan-anuncia-renovacao-da-tecnica-rafaela-nicolete-para-2021-whatsapp-image-2020-11-23-at-19.12.22-218x150.jpeg', 'https://omunicipio.com.br/barateiro-havan-anuncia-renovacao-da-tecnica-rafaela-nicolete-para-2021/'),
(13, 'Covid-19: Guabiruba registra 13 novos casos; cidade tem 169 casos ativos da doença', 'https://omunicipio.com.br/wp-content/uploads/2020/11/covid-19-com-alta-do-numero-de-casos-prefeitura-de-guabiruba-alerta-para-cuidados-img-0775-1-218x150.jpg', 'https://omunicipio.com.br/covid-19-guabiruba-registra-13-novos-casos-cidade-tem-169-casos-ativos-da-doenca/'),
(14, 'Postos de gasolina promovem arrecadação de brinquedos com sorteios de 100 litros de combustível...', 'https://omunicipio.com.br/wp-content/uploads/2020/11/postos-de-gasolina-promovem-campanha-de-natal-com-sorteio-de-300-litros-de-combustivel-em-brusque-child-1864718-1280-1-218x150.jpg', 'https://omunicipio.com.br/postos-de-gasolina-promovem-campanha-de-natal-com-sorteios-de-100-litros-de-combustivel-em-brusque/'),
(15, 'Com alvos de Brusque, PF faz maior operação do ano contra lavagem de dinheiro...', 'https://omunicipio.com.br/wp-content/uploads/2020/11/pf-enterprise-218x150.jpeg', 'https://omunicipio.com.br/com-alvos-de-brusque-pf-faz-maior-operacao-do-ano-contra-lavagem-de-dinheiro-do-trafico/'),
(16, 'GALERIA: Conheça o bairro menos quente de Guabiruba', 'https://omunicipio.com.br/wp-content/uploads/2020/11/ciro-groh-galeria-conheca-um-dos-bairros-mais-frios-de-guabiruba-guabiruba-capa-218x150.jpg', 'https://omunicipio.com.br/ciro-groh-bairro-menos-quente/'),
(17, 'Brusque registra 73 novos casos da Covid-19; são 729 pessoas com o vírus ativo', 'https://omunicipio.com.br/wp-content/uploads/2020/11/brusque-registra-67-novos-casos-de-covid-19-27-pacientes-estao-hospitalizados-covid-218x150.jpg', 'https://omunicipio.com.br/brusque-registra-73-novos-casos-da-covid-19-sao-729-pessoas-com-o-virus-ativo/'),
(18, 'Com acusações por 18 homicídios, um dos homens mais procurados do RS é preso...', 'https://omunicipio.com.br/wp-content/uploads/2020/11/rs-218x150.jpg', 'https://omunicipio.com.br/um-dos-homens-mais-procurados-do-rio-grande-do-sul-e-preso-em-bombinhas/'),
(19, 'Motociclista de 28 anos fica ferido após colisão com carro no São Pedro', 'https://omunicipio.com.br/wp-content/uploads/2020/11/idoso-fica-ferido-apos-cair-de-telhado-no-bairro-poco-fundo-ambulancia-3-218x150.jpeg', 'https://omunicipio.com.br/motociclista-de-28-anos-fica-ferido-apos-colisao-com-carro-no-sao-pedro/'),
(20, 'Lei Aldir Blanc: resultado de habilitação do edital é divulgado em Brusque', 'https://omunicipio.com.br/wp-content/uploads/2020/11/lei-aldir-blanc-resultado-de-habilitacao-do-edital-e-divulgado-em-brusque-whatsapp-image-2020-11-23-at-16.02.54-218x150.jpeg', 'https://omunicipio.com.br/lei-aldir-blanc-resultado-de-habilitacao-do-edital-e-divulgado-em-brusque/');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tbl_noticia`
--
ALTER TABLE `tbl_noticia`
  ADD PRIMARY KEY (`id_noticia`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tbl_noticia`
--
ALTER TABLE `tbl_noticia`
  MODIFY `id_noticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
