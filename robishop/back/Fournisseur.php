<?php

class Fournisseur{

    //attribut

    private $idFournisseur;
    private $nomFournisseur;
    private $prenomFournisseur;
    private $adresseFournisseur;
    private $codePostalFournisseur;
    private $mailFournisseur;
    private $telFournisseur;


    

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
     * Get the value of nomFournisseur
     */ 
    public function getNomFournisseur()
    {
        return $this->nomFournisseur;
    }

    /**
     * Set the value of nomFournisseur
     *
     * @return  self
     */ 
    public function setNomFournisseur($nomFournisseur)
    {
        $this->nomFournisseur = $nomFournisseur;

        return $this;
    }

    /**
     * Get the value of prenomFournisseur
     */ 
    public function getPrenomFournisseur()
    {
        return $this->prenomFournisseur;
    }

    /**
     * Set the value of prenomFournisseur
     *
     * @return  self
     */ 
    public function setPrenomFournisseur($prenomFournisseur)
    {
        $this->prenomFournisseur = $prenomFournisseur;

        return $this;
    }

    /**
     * Get the value of adresseFournisseur
     */ 
    public function getAdresseFournisseur()
    {
        return $this->adresseFournisseur;
    }

    /**
     * Set the value of adresseFournisseur
     *
     * @return  self
     */ 
    public function setAdresseFournisseur($adresseFournisseur)
    {
        $this->adresseFournisseur = $adresseFournisseur;

        return $this;
    }

    /**
     * Get the value of codePostalFournisseur
     */ 
    public function getCodePostalFournisseur()
    {
        return $this->codePostalFournisseur;
    }

    /**
     * Set the value of codePostalFournisseur
     *
     * @return  self
     */ 
    public function setCodePostalFournisseur($codePostalFournisseur)
    {
        $this->codePostalFournisseur = $codePostalFournisseur;

        return $this;
    }

    /**
     * Get the value of mailFournisseur
     */ 
    public function getMailFournisseur()
    {
        return $this->mailFournisseur;
    }

    /**
     * Set the value of mailFournisseur
     *
     * @return  self
     */ 
    public function setMailFournisseur($mailFournisseur)
    {
        $this->mailFournisseur = $mailFournisseur;

        return $this;
    }

    /**
     * Get the value of telFournisseur
     */ 
    public function getTelFournisseur()
    {
        return $this->telFournisseur;
    }

    /**
     * Set the value of telFournisseur
     *
     * @return  self
     */ 
    public function setTelFournisseur($telFournisseur)
    {
        $this->telFournisseur = $telFournisseur;

        return $this;
    }
}


?>