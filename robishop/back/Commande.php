<?php

class Commande{

    // Attribut
    private $idCommande;
    private $idUsers;

    private $dateCommande;
    private $montantCommande;
    private $typePaiement;
    private $dateLivraison;
    private $livre;
    private $modeLivraison;
    private $fraisLivraison;


    //method


    



 

    /**
     * Get the value of idUsers
     */ 
    public function getIdUsers()
    {
        return $this->idUsers;
    }

    /**
     * Set the value of idUsers
     *
     * @return  self
     */ 
    public function setIdUsers($idUsers)
    {
        $this->idUsers = $idUsers;

        return $this;
    }

 

    /**
     * Get the value of dateCommande
     */ 
    public function getDateCommande()
    {
        return $this->dateCommande;
    }

    /**
     * Set the value of dateCommande
     *
     * @return  self
     */ 
    public function setDateCommande($dateCommande)
    {
        $this->dateCommande = $dateCommande;

        return $this;
    }

    /**
     * Get the value of montantCommande
     */ 
    public function getMontantCommande()
    {
        return $this->montantCommande;
    }

    /**
     * Set the value of montantCommande
     *
     * @return  self
     */ 
    public function setMontantCommande($montantCommande)
    {
        $this->montantCommande = $montantCommande;

        return $this;
    }

    /**
     * Get the value of typePaiement
     */ 
    public function getTypePaiement()
    {
        return $this->typePaiement;
    }

    /**
     * Set the value of typePaiement
     *
     * @return  self
     */ 
    public function setTypePaiement($typePaiement)
    {
        $this->typePaiement = $typePaiement;

        return $this;
    }

    /**
     * Get the value of dateLivraison
     */ 
    public function getDateLivraison()
    {
        return $this->dateLivraison;
    }

    /**
     * Set the value of dateLivraison
     *
     * @return  self
     */ 
    public function setDateLivraison($dateLivraison)
    {
        $this->dateLivraison = $dateLivraison;

        return $this;
    }

    /**
     * Get the value of livre
     */ 
    public function getLivre()
    {
        return $this->livre;
    }

    /**
     * Set the value of livre
     *
     * @return  self
     */ 
    public function setLivre($livre)
    {
        $this->livre = $livre;

        return $this;
    }

    /**
     * Get the value of modeLivraison
     */ 
    public function getModeLivraison()
    {
        return $this->modeLivraison;
    }

    /**
     * Set the value of modeLivraison
     *
     * @return  self
     */ 
    public function setModeLivraison($modeLivraison)
    {
        $this->modeLivraison = $modeLivraison;

        return $this;
    }

    /**
     * Get the value of fraisLivraison
     */ 
    public function getFraisLivraison()
    {
        return $this->fraisLivraison;
    }

    /**
     * Set the value of fraisLivraison
     *
     * @return  self
     */ 
    public function setFraisLivraison($fraisLivraison)
    {
        $this->fraisLivraison = $fraisLivraison;

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
}



?>