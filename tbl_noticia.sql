-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26-Nov-2020 às 12:45
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
  `imagem` varchar(500) NOT NULL,
  `links` varchar(200) NOT NULL,
  `data_noticia` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbl_noticia`
--

INSERT INTO `tbl_noticia` (`id_noticia`, `titulo`, `imagem`, `links`, `data_noticia`) VALUES
(0, 'Rede estadual de ensino de SC divulga datas de matrículas e rematrículas para 2021', 'https://omunicipio.com.br/wp-content/uploads/2020/10/santa-catarina-autoriza-e-estabelece-regras-para-retorno-as-aulas-presenciais-volta-as-aulas-entrega-de-mobiliario-20200131-1872334288-218x150.jpg', 'https://omunicipio.com.br/rede-estadual-de-ensino-de-sc-divulga-datas-de-matriculas-e-rematriculas-para-2021/', '2020-11-26 15:37:59'),
(0, 'Tradicional presépio natalino no Santa Rita tem data de abertura para visitação', 'https://omunicipio.com.br/wp-content/uploads/2020/11/design-sem-nome-20-218x150.jpg', 'https://omunicipio.com.br/tradicional-presepio-natalino-no-santa-rita-tem-data-de-abertura-para-visitacao/', '2020-11-26 15:37:59'),
(0, 'Black Friday: confira dicas e orientações para compras seguras', 'https://omunicipio.com.br/wp-content/uploads/2020/11/black-friday-confira-dicas-e-orientacoes-para-compras-seguras-high-view-laptop-and-black-shopping-card-218x150.jpg', 'https://omunicipio.com.br/black-friday-dicas-para-compras-seguras/', '2020-11-26 15:37:59'),
(0, 'Brusque registra 62ª morte por Covid-19', 'https://omunicipio.com.br/wp-content/uploads/2020/11/coronavirus-freepik-1-218x150.jpg', 'https://omunicipio.com.br/brusque-registra-62a-morte-por-covid-19/', '2020-11-26 15:37:59'),
(0, 'FG e Havan construirão edifício mais alto da América Latina com 101 andares, em...', 'https://omunicipio.com.br/wp-content/uploads/2020/11/andre-groh-havan-sera-socia-do-projeto-que-sera-o-novo-edificio-mais-alto-da-america-latina-com-101-pavimentos-predio-mais-alto-da-america-latina-havan-fg-218x150.jpg', 'https://omunicipio.com.br/andre-groh-fg-e-havan-construirao-edificio-mais-alto-da-america-latina-com-101-andares-em-balneario-camboriu/', '2020-11-26 15:37:59'),
(0, 'Covid-19: quais medidas devem ser adotadas com o risco gravíssimo em Brusque', 'https://omunicipio.com.br/wp-content/uploads/2020/11/matriz-de-risco-1-218x150.jpeg', 'https://omunicipio.com.br/covid-19-quais-medidas-devem-ser-adotadas-com-o-risco-gravissimo-em-brusque/', '2020-11-26 15:37:59'),
(0, 'Brusque registra 213 novos casos da Covid-19; são 772 pessoas com o vírus ativo', 'https://omunicipio.com.br/wp-content/uploads/2020/10/procon-sc-notifica-laboratorios-por-diferenca-200-nos-precos-de-exames-da-covid-19-kits-de-teste-de-coronaviruscovid-19fremont-california-218x150.jpg', 'https://omunicipio.com.br/brusque-registra-213-novos-casos-da-covid-19-sao-772-pessoas-com-o-virus-ativo/', '2020-11-26 15:37:59'),
(0, 'Covid-19: Guabiruba registra 105 novos casos nesta quarta-feira; são 204 pessoas com o vírus...', 'https://omunicipio.com.br/wp-content/uploads/2020/10/coronavirus-cells-floating-1048-12472-2-218x150.jpg', 'https://omunicipio.com.br/covid-19-guabiruba-registra-105-novos-casos-nesta-quarta-feira-sao-204-pessoas-com-o-virus-ativo/', '2020-11-26 15:37:59'),
(0, 'Registramos, com pesar, os falecimentos ocorridos de 20 a 25 de novembro no Vale...', 'https://omunicipio.com.br/wp-content/uploads/2020/11/obt-218x150.png', 'https://omunicipio.com.br/registramos-com-pesar-os-falecimentos-ocorridos-de-20-25-de-novembro-no-vale-do-rio-tijucas/', '2020-11-26 15:37:59'),
(0, 'Covid-19: Paróquia São Luís Gonzaga reduz capacidade de público em 30% nas celebrações', 'https://omunicipio.com.br/wp-content/uploads/2020/11/whatsapp-image-2020-11-25-at-15.48.36-218x150.jpeg', 'https://omunicipio.com.br/covid-19-paroquia-sao-luis-gonzaga-reduz-capacidade-de-publico-em-30-nas-celebracoes/', '2020-11-26 15:37:59');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
