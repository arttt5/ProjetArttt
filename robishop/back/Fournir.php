<?php


class Fournir{


    //attribut

    private $idProduit;
    private $idFournisseur;
    private $dateFourni;
    private $quantiteCommandeFournisseur;


    //methods

    

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
     * Get the value of idFournisseur
     */ 
    public function getIdFournisseur()
    {
        return $this->idFournisseur;
    }

    /**
     * Set the value of idFournisseur
     *
     * @return  self
     */ 
    public function setIdFournisseur($idFournisseur)
    {
        $this->idFournisseur = $idFournisseur;

        return $this;
    }

    /**
     * Get the value of dateFourni
     */ 
    public function getDateFourni()
    {
        return $this->dateFourni;
    }

    /**
     * Set the value of dateFourni
     *
     * @return  self
     */ 
    public function setDateFourni($dateFourni)
    {
        $this->dateFourni = $dateFourni;

        return $this;
    }

    /**
     * Get the value of quantiteCommandeFournisseur
     */ 
    public function getQuantiteCommandeFournisseur()
    {
        return $this->quantiteCommandeFournisseur;
    }

    /**
     * Set the value of quantiteCommandeFournisseur
     *
     * @return  self
     */ 
    public function setQuantiteCommandeFournisseur($quantiteCommandeFournisseur)
    {
        $this->quantiteCommandeFournisseur = $quantiteCommandeFournisseur;

        return $this;
    }
}


?>