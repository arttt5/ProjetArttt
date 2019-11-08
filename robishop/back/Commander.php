<?php

class Commander{

    // Attribut
    private $idCommande;
    private $idProduit;
    private $quantiteProduit;

    //method


    



    /**
     * Get the value of idProduit
     */ 
    public function getIdProduit()
    {
        return $this->idProduit;
    }

    /**
     * Set the value of idProduit
     *
     * @return  self
     */ 
    public function setIdProduit($idProduit)
    {
        $this->idProduit = $idProduit;

        return $this;
    }

    /**
     * Get the value of idCommande
     */ 
    public function getIdCommande()
    {
        return $this->idCommande;
    }

    /**
     * Set the value of idCommande
     *
     * @return  self
     */ 
    public function setIdCommande($idCommande)
    {
        $this->idCommande = $idCommande;

        return $this;
    }

    /**
     * Get the value of quantiteProduit
     */ 
    public function getQuantiteProduit()
    {
        return $this->quantiteProduit;
    }

    /**
     * Set the value of quantiteProduit
     *
     * @return  self
     */ 
    public function setQuantiteProduit($quantiteProduit)
    {
        $this->quantiteProduit = $quantiteProduit;

        return $this;
    }
}
