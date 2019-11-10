<?php

include_once('Commande.php');
include_once('AbstractDataAccess.php');


class CommandeDataAccess extends AbstractDataAccess
{
    public function rechercheCommande()
    {
        $myDB=$this->connexion();
        $commande= $this->executerquery($myDB, "select * from commande");
        $toutLesCommandes = $this->fetchResults($commande);
        $tableauDeCommandes=[];
    
        foreach ($toutLesCommandes as $commandeTab) {
            $objetcommande=new Commande();
                
            
            
               
            $objetcommande->setIdCommande($commandeTab['id_commande']);
            $objetcommande->setDateCommande($commandeTab['date_commande']);
            $objetcommande->setTypePaiement($commandeTab['type_paiement']);
            $objetcommande->setDateLivraison($commandeTab['date_livraison']);
            $objetcommande->setLivre($commandeTab['livrer']);
            $objetcommande->setModeLivraison($commandeTab['mode_livraison']);
            $objetcommande->setFraisLivraison($commandeTab['frais_livraison']);
            $objetcommande->setMontantCommande($commandeTab['montant_commande']);
            $objetcommande->setIdUsers($commandeTab['id_users']);

    
            array_push($tableauDeCommandes, $objetcommande);
        }
        return $tableauDeCommandes;
    }
}
?>