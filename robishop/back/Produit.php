<?php

class Produit{

    // attributs

    private $idProduit;
    private $nomProduit;
    private $prixProduit;
    private $imagesProduit;
    private $descriptifProduit;
    private $stockProduit;
    private $prixFournisseurProduit;
    private $idCategorie;

    // Methods


    

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
     * Get the value of nomProduit
     */ 
    public function getNomProduit()
    {
        return $this->nomProduit;
    }

    /**
     * Set the value of nomProduit
     *
     * @return  self
     */ 
    public function setNomProduit($nomProduit)
    {
        $this->nomProduit = $nomProduit;

        return $this;
    }

    /**
     * Get the value of prixProduit
     */ 
    public function getPrixProduit()
    {
        return $this->prixProduit;
    }

    /**
     * Set the value of prixProduit
     *
     * @return  self
     */ 
    public function setPrixProduit($prixProduit)
    {
        $this->prixProduit = $prixProduit;

        return $this;
    }

    /**
     * Get the value of imagesProduit
     */ 
    public function getImagesProduit()
    {
        return $this->imagesProduit;
    }

    /**
     * Set the value of imagesProduit
     *
     * @return  self
     */ 
    public function setImagesProduit($imagesProduit)
    {
        $this->imagesProduit = $imagesProduit;

        return $this;
    }

    /**
     * Get the value of descriptifProduit
     */ 
    public function getDescriptifProduit()
    {
        return $this->descriptifProduit;
    }

    /**
     * Set the value of descriptifProduit
     *
     * @return  self
     */ 
    public function setDescriptifProduit($descriptifProduit)
    {
        $this->descriptifProduit = $descriptifProduit;

        return $this;
    }

    /**
     * Get the value of stockProduit
     */ 
    public function getStockProduit()
    {
        return $this->stockProduit;
    }

    /**
     * Set the value of stockProduit
     *
     * @return  self
     */ 
    public function setStockProduit($stockProduit)
    {
        $this->stockProduit = $stockProduit;

        return $this;
    }

    /**
     * Get the value of prixFournisseurProduit
     */ 
    public function getPrixFournisseurProduit()
    {
        return $this->prixFournisseurProduit;
    }

    /**
     * Set the value of prixFournisseurProduit
     *
     * @return  self
     */ 
    public function setPrixFournisseurProduit($prixFournisseurProduit)
    {
        $this->prixFournisseurProduit = $prixFournisseurProduit;

        return $this;
    }

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
}




?>