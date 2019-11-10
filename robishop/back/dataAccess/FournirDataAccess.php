<?php

include_once('Fournir.php');
include_once('AbstractDataAccess.php');


class FournirDataAccess extends AbstractDataAccess
{
    public function rechercheFournir()
    {
        $myDB=$this->connexion();
        $fournie= $this->executerquery($myDB, "select * from _fournir");
        $toutLesFournie = $this->fetchResults($fournie);
        $tableauDesFournies=[];
    
        foreach ($toutLesFournie as $fournieTab) {
            $objetfournir=new Fournir();
                
            
            
               
            $objetfournir->setIdFournisseur($fournieTab['id_fournisseur']);
            $objetfournir->setIdProduit($fournieTab['id_produit']);
            $objetfournir->setDateFourni($fournieTab['date_fourni']);
            $objetfournir->setQuantiteCommandeFournisseur($fournieTab['quantite_commande_fournisseur']);

           
    
            array_push($tableauDesFournies, $objetfournir);
        }
        return $tableauDesFournies;
    }
}
?>