<?php

class Commentaire{

    //attribut

    private $idCommentaire;
    private $textCommentaire;
    private $dateCommentaire;
    private $idUser;
    private $idPriduit;

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
     * Get the value of idUser
     */ 
    public function getIdUser()
    {
        return $this->idUser;
    }

    /**
     * Set the value of idUser
     *
     * @return  self
     */ 
    public function setIdUser($idUser)
    {
        $this->idUser = $idUser;

        return $this;
    }

    /**
     * Get the value of idPriduit
     */ 
    public function getIdPriduit()
    {
        return $this->idPriduit;
    }

    /**
     * Set the value of idPriduit
     *
     * @return  self
     */ 
    public function setIdPriduit($idPriduit)
    {
        $this->idPriduit = $idPriduit;

        return $this;
    }
}


?>