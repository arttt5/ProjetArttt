<?php

include_once('Connexion.php');
include_once('AbstractDataAccess.php');


class ConnexionDataAccess extends AbstractDataAccess
{
    public function rechercheConnexion()
    {
        $myDB=$this->connexion();
        $seConnecter= $this->executerquery($myDB, "select * from _connexion");
        $toutLesConnexions = $this->fetchResults($seConnecter);
        $tableauDeConnexions=[];
    
        foreach ($toutLesConnexions as $connexionTab) {
            $objetconnexion=new Connexion();
                
            
            
               
            $objetconnexion->setIdConnex($connexionTab['id_connex']);
            $objetconnexion->setDateConnex($connexionTab['date_connex']);
            $objetconnexion->setIpConnex($connexionTab['ip_connex']);
            $objetconnexion->setIdUsers($connexionTab['id_users']);

           
    
            array_push($tableauDeConnexions, $objetconnexion);
        }
        return $tableauDeConnexions;
    }
}
?>