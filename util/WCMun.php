<?php

class WCMun
{

    private $url;
    private $proxy;
    private $dom;
    private $html;

    public function __construct()
    {
        $this->url = 'https://omunicipio.com.br/noticias/';
        $this->proxy = '10.1.21.254:3128';
        $this->dom = new DOMDocument();
    }

    public function getConteudo()
    {
        $this->carregarHtml();
        $divsGeral = $this->capturarTagsDivGeral();
        $divsInternas = $this->capturarDivsInternasMainContent($divsGeral);
        $divNoticia = $this->capturarNoticia($divsInternas);
        $detalhes = $this->titleDetail($divNoticia);    
        $imagens = $this->FunilDetlImg($divNoticia);
        $imagem = $this->PegarImgs($imagens);
          
        $noticia = $this->titleCap($detalhes);
        return $noticia;
    }

    public function getImagem()
    {
        $this->carregarHtml();
        $divsGeral = $this->capturarTagsDivGeral();
        $divsInternas = $this->capturarDivsInternasMainContent($divsGeral);
        $divNoticia = $this->capturarNoticia($divsInternas);
        $imagens = $this->FunilDetlImg($divNoticia);
        $imagem = $this->PegarImgs($imagens);
        return $imagem;
    }

    public function getLinks()
    {
        $this->carregarHtml();
        $divsGeral = $this->capturarTagsDivGeral();
        $divsInternas = $this->capturarDivsInternasMainContent($divsGeral);
        $divNoticia = $this->capturarNoticia($divsInternas);
        $links = $this->linkDetail($divNoticia);
        $link = $this->capturarLink($links);
        return $link;
    }

    private function getContextoConexao()
    {
        //configuração de proxy
        $arrayConfig = array(
            'http' => array(
                'proxy' => $this->proxy,
                'request_fulluri' => true
            ),
            'https' => array(
                'proxy' => $this->proxy,
                'request_fulluri' => true
            )
        );
        $context = stream_context_create($arrayConfig);
        return $context;

    }

    private function carregarHtml()
    {
      
        $context = $this->getContextoConexao();
        $this->html = file_get_contents($this->url, false, $context);

        libxml_use_internal_errors(true);

        //Transformando html em objeto
        $this->dom->loadHTML($this->html);
        libxml_clear_errors();
    }

    private function capturarTagsDivGeral()
    {
        $tagsDiv = $this->dom->getElementsByTagName('div'); //Captura todas as tags div
        return $tagsDiv;
    }

    private function capturarDivsInternasMainContent($divsGeral)
    {
        $divsInternas = null;
        
        foreach ($divsGeral as $div) {  //Pega as tags Div
            $classeInterna = $div->getAttribute('class'); 
            
            if ($classeInterna == 'td-ss-main-content') {  //Pega a classe chamada td-ss-main-content
                $divsInternas = $div->getElementsByTagName('div');  //Pega as divs internas td-ss-main-content
            }
        }
        return $divsInternas;
    }

    private function capturarNoticia($divsInternas)
    {
        $divNoticiaSite = [];
        
        foreach ($divsInternas as $divInterna) {
            
            $classeInterna = $divInterna->getAttribute('class');
            
            if ($classeInterna == 'td_module_10 td_module_wrap td-animation-stack') {  // pega as noticias da classe 
                                                                                       //td_module_10 td_module_wrap td-animation-stack
                $divNoticiaSite[] = $divInterna->getElementsByTagName('div');
            }
        }
        return $divNoticiaSite;
    }
    
     private function PegarImgs($imagens)
    {
        $CamImg = [];
        
        foreach ($imagens as $imageTags) {
            
            foreach ($imageTags as $tags) {   //pega todas as imagens
                $CamImg[] = $tags->getAttribute('src');
            }
        }
        return $CamImg;
    }
    
     private function FunilDetlImg($divNoticiaSite)
    {
        $imagens = [];
        foreach ($divNoticiaSite as $divInterna) {
            foreach($divInterna as $imagem){
                $classeInterna = $imagem->getAttribute('class');
                
                if ($classeInterna == 'td-module-thumb') {
                    $imagens[] = $imagem->getElementsByTagName('img');
                }
            }
        }
        return $imagens;
    }

   

    private function linkDetail($divNoticiaSite)
    {
        $link1 = [];
        foreach ($divNoticiaSite as $divInterna) {
            foreach($divInterna as $titulo){
                $classeInterna = $titulo->getAttribute('class');
    
                if ($classeInterna == 'item-details') {
                    $link1[] = $titulo->getElementsByTagName('a');
                }
            }
        }
        return $link1;
    }

    private function capturarLink($link1)
    {
        $link = [];
        foreach ($link1 as $divInterna) {
            foreach ($divInterna as $div) {
                $link[] = $div->getAttribute('href');
            }
        }
        return $link;
    }

    private function titleDetail($divNoticia)
    {
        $detalhes = [];
        foreach ($divNoticia as $divInterna) {
            foreach($divInterna as $titulo){
                $classeInterna = $titulo->getAttribute('class');
    
                if ($classeInterna == 'item-details') {
                    $detalhes[] = $titulo->getElementsByTagName('h3');
                }
            }
        }
        return $detalhes;
    }

    private function titleCap($detalhes)
    {
        $noticia = [];
        foreach ($detalhes as $divInterna) {
            foreach ($divInterna as $div) {
                $classeInterna = $div->getAttribute('class');
                
                if ($classeInterna == 'entry-title td-module-title') {
                    $noticia[] = utf8_decode($div->nodeValue);
                }
            }
        }
        return $noticia;
    }
    
   
}