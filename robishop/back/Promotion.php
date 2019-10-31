<?php

class Promotion{

    // Attributs 

    private $idPromotion;
    private $montantPromotion;

    

    /**
     * Get the value of idPromotion
     */ 
    public function getIdPromotion()
    {
        return $this->idPromotion;
    }

    /**
     * Set the value of idPromotion
     *
     * @return  self
     */ 
    public function setIdPromotion($idPromotion)
    {
        $this->idPromotion = $idPromotion;

        return $this;
    }

    /**
     * Get the value of montantPromotion
     */ 
    public function getMontantPromotion()
    {
        return $this->montantPromotion;
    }

    /**
     * Set the value of montantPromotion
     *
     * @return  self
     */ 
    public function setMontantPromotion($montantPromotion)
    {
        $this->montantPromotion = $montantPromotion;

        return $this;
    }
}



?>