<?php

include_once('Users.php');
include_once('AbstractDataAccess.php');


class UsersDataAccess extends AbstractDataAccess
{
    public function rechercheUsers()
    {
        $myDB=$this->connexion();
        $user= $this->executerquery($myDB, "select * from _users");
        $toutLesUsers = $this->fetchResults($user);
        $tableauDesUsers=[];
    
        foreach ($toutLesUsers as $UsersTab) {
            $objetUsers=new Users();
                
            
            
               
            $objetUsers->setIdUsers($UsersTab['id_users']);
            $objetUsers->setNomUsers($UsersTab['nom_users']);
            $objetUsers->setPrenomUsers($UsersTab['prenom_users']);
            $objetUsers->setAdresseUsers($UsersTab['adresse_users']);
            $objetUsers->setCodePostalUsers($UsersTab['code_postal_users']);
            $objetUsers->setVilleUsers($UsersTab['ville_users']);
            $objetUsers->setAdresseFacturationUsers($UsersTab['adresse_facturation_users']);
            $objetUsers->setCodePostalUsers($UsersTab['code_postal_users']);
            $objetUsers->setVilleFacturationUsers($UsersTab['ville_facturation_users']);
            $objetUsers->setMailUsers($UsersTab['mail_users']);
            $objetUsers->setTelUsers($UsersTab['tel_users']);
            $objetUsers->setPseudoUsers($UsersTab['pseudo_users']);
            $objetUsers->setMotDePasseUsers($UsersTab['motDePasse_users']);
            $objetUsers->setAdminUsers($UsersTab['admin_users']);
            $objetUsers->setDateJeuUsers($UsersTab['date_jeu']);
            $objetUsers->setIdPromotion($UsersTab['id_promotion']);
    
            array_push($tableauDesUsers, $objetUsers);
        }
        return $tableauDesUsers;
    }
}
?>