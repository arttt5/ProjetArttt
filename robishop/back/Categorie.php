<?php

class Categorie{

    // Attributs

    private $idCategorie;
    private $nomCategorie;

    

    /**
     * Get the value of idCategorie
     */ 
    public function getIdCategorie()
    {
        return $this->idCategorie;
    }

    /**
     * Set the value of idCategorie
     *
     * @return  self
     */ 
    public function setIdCategorie($idCategorie)
    {
        $this->idCategorie = $idCategorie;

        return $this;
    }

    /**
     * Get the value of nomCategorie
     */ 
    public function getNomCategorie()
    {
        return $this->nomCategorie;
    }

    /**
     * Set the value of nomCategorie
     *
     * @return  self
     */ 
    public function setNomCategorie($nomCategorie)
    {
        $this->nomCategorie = $nomCategorie;

        return $this;
    }
}


?>