<?php

include_once('Fournisseur.php');
include_once('AbstractDataAccess.php');


class FournisseurDataAccess extends AbstractDataAccess
{
    public function rechercheFournisseur()
    {
        $myDB=$this->connexion();
        $fournisseur= $this->executerquery($myDB, "select * from _fournisseur");
        $toutLesFournisseur = $this->fetchResults($fournisseur);
        $tableauDeFournisseur=[];
    
        foreach ($toutLesFournisseur as $FournisseurTab) {
            $objetFournisseur=new Fournisseur();
                
            
            
               
            $objetFournisseur->setIdFournisseur($FournisseurTab['id_fournisseur']);
            $objetFournisseur->setNomFournisseur($FournisseurTab['nom_fournisseur']);
            $objetFournisseur->setPrenomFournisseur($FournisseurTab['prenom_fournisseur']);
            $objetFournisseur->setAdresseFournisseur($FournisseurTab['adresse_fournisseur']);
            $objetFournisseur->setCodePostalFournisseur($FournisseurTab['code_postal_fournisseur']);
            $objetFournisseur->setMailFournisseur($FournisseurTab['adresse_email_fournisseur']);
            $objetFournisseur->setTelFournisseur($FournisseurTab['tel_fournisseur']);
           
    
            array_push($tableauDeFournisseur, $objetFournisseur);
        }
        return $tableauDeFournisseur;
    }
}
?>