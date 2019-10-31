<?php

class Facture{

//attributs

private $idFacture;
private $montantFacture;







/**
 * Get the value of idFacture
 */ 
public function getIdFacture()
{
return $this->idFacture;
}

/**
 * Set the value of idFacture
 *
 * @return  self
 */ 
public function setIdFacture($idFacture)
{
$this->idFacture = $idFacture;

return $this;
}

/**
 * Get the value of montantFacture
 */ 
public function getMontantFacture()
{
return $this->montantFacture;
}

/**
 * Set the value of montantFacture
 *
 * @return  self
 */ 
public function setMontantFacture($montantFacture)
{
$this->montantFacture = $montantFacture;

return $this;
}



}




?>