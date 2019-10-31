<?php

class Connexion{

    // Attributs

    private $idConnex;
    private $dateConnex;
    private $ipConnex;

    


    /**
     * Get the value of idConnex
     */ 
    public function getIdConnex()
    {
        return $this->idConnex;
    }

    /**
     * Set the value of idConnex
     *
     * @return  self
     */ 
    public function setIdConnex($idConnex)
    {
        $this->idConnex = $idConnex;

        return $this;
    }

    /**
     * Get the value of dateConnex
     */ 
    public function getDateConnex()
    {
        return $this->dateConnex;
    }

    /**
     * Set the value of dateConnex
     *
     * @return  self
     */ 
    public function setDateConnex($dateConnex)
    {
        $this->dateConnex = $dateConnex;

        return $this;
    }

    /**
     * Get the value of ipConnex
     */ 
    public function getIpConnex()
    {
        return $this->ipConnex;
    }

    /**
     * Set the value of ipConnex
     *
     * @return  self
     */ 
    public function setIpConnex($ipConnex)
    {
        $this->ipConnex = $ipConnex;

        return $this;
    }
}


?>