<?php

require './util/WCMun.php';

$gut = new WCMun();
$titulos = $gut->getConteudo();
$imagens = $gut->getImagem();
$links = $gut->getLinks();

print_r($titulos);

print_r($links);

print_r($imagens);