<?php

include_once('Commander.php');
include_once('AbstractDataAccess.php');


class CommanderDataAccess extends AbstractDataAccess
{
    public function rechercheCommander()
    {
        $myDB=$this->connexion();
        $commander= $this->executerquery($myDB, "select * from commander");
        $toutLesCommander = $this->fetchResults($commander);
        $tableauDeCommandes=[];
    
        foreach ($toutLesCommander as $commanderTab) {
            $objetcommander=new Commander();
                
            
            
               
            $objetcommander->setIdCommande($commanderTab['id_commande']);
            $objetcommander->setIdProduit($commanderTab['id_produit']);
            $objetcommander->setQuantiteProduit($commanderTab['quantite_produit']);
           
    
            array_push($tableauDeCommandes, $objetcommander);
        }
        return $tableauDeCommandes;
    }
}
?>