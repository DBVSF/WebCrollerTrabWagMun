<?php
require 'Classes/Conexao.php';
require 'util/WCMun.php';

class Not extends Conexao{
    
    
     public function insertNoticia()    
    {
        $gut = new WCMun();
        $titulos = $gut->getConteudo();
        $imagens = $gut->getImagem();
        $links = $gut->getLinks();        

        $arr = [];

        for ($i=0; $i < count($titulos); $i++) { 
            array_push($arr, ["titulos" => $titulos[$i], "imagens" => $imagens[$i],"links" => $links[$i]]);
        }

        return $arr;
    }

    public function insetDb($titulo, $imagem, $links)
    {
        $sql = "INSERT INTO tbl_noticia (titulo, imagem, links) VALUES (?, ?, ?)  ";
        $conexao = self::conecta();
        $not = $conexao->prepare($sql);
        
        $not->bindParam(1, $titulo);
        $not->bindParam(2, $imagem);
        $not->bindParam(3, $links);
        $not->execute();
    }

    public function getInsert()    
    {
        $content = $this->insertNoticia();
        
        foreach ($content as $key) {
            
            $this->insetDb($key['titulos'], $key['imagens'], $key['links']);
        }
    }
    
      public function listarNoticias()
    {
        $sql = "SELECT * FROM tbl_noticia";
        $con = self::conecta()->query($sql);
        $reponse = $con->fetchAll(PDO::FETCH_ASSOC);

        return $reponse;
    }
    
  
    
}
