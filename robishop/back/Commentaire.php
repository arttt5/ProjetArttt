<?php

class Commentaire{

    //attribut

    private $idCommentaire;
    private $textCommentaire;
    private $dateCommentaire;
    private $idUsers;
    private $idProduit;

    //method

    




    /**
     * Get the value of idCommentaire
     */ 
    public function getIdCommentaire()
    {
        return $this->idCommentaire;
    }

    /**
     * Set the value of idCommentaire
     *
     * @return  self
     */ 
    public function setIdCommentaire($idCommentaire)
    {
        $this->idCommentaire = $idCommentaire;

        return $this;
    }

    /**
     * Get the value of textCommentaire
     */ 
    public function getTextCommentaire()
    {
        return $this->textCommentaire;
    }

    /**
     * Set the value of textCommentaire
     *
     * @return  self
     */ 
    public function setTextCommentaire($textCommentaire)
    {
        $this->textCommentaire = $textCommentaire;

        return $this;
    }

    /**
     * Get the value of dateCommentaire
     */ 
    public function getDateCommentaire()
    {
        return $this->dateCommentaire;
    }

    /**
     * Set the value of dateCommentaire
     *
     * @return  self
     */ 
    public function setDateCommentaire($dateCommentaire)
    {
        $this->dateCommentaire = $dateCommentaire;

        return $this;
    }




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
}


?>