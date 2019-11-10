<?php

include_once('Categorie.php');
include_once('AbstractDataAccess.php');


class CategorieDataAccess extends AbstractDataAccess
{
    public function rechercheCategorie()
    {
        $myDB=$this->connexion();
        $categorie= $this->executerquery($myDB, "select * from _categorie");
        $toutLesCategories = $this->fetchResults($categorie);
        $tableauDeCategorie=[];
    
        foreach ($toutLesCategories as $categorieTab) {
            $objetcategorie=new Categorie();
                
            
            
               
            $objetcategorie->setIdCategorie($categorieTab['id_categorie']);
            $objetcategorie->setNomCategorie($categorieTab['nom_categorie']);
    
            array_push($tableauDeCategorie, $objetcategorie);
        }
        return $tableauDeCategorie;
    }
}
?>