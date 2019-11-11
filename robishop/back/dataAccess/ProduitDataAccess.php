<?php

include_once('Produit.php');
include_once('AbstractDataAccess.php');


class ProduitDataAccess extends AbstractDataAccess
{
    public function rechercheProduit()
    {
        $myDB=$this->connexion();
        $produit= $this->executerquery($myDB, "select * from _Produit");
        $toutLesProduit = $this->fetchResults($produit);
        $tableauDesProduit=[];
    
        foreach ($toutLesProduit as $ProduitTab) {
            $objetProduit=new Produit();
                
            
            
               
            $objetProduit->setIdProduit($ProduitTab['id_produit']);
            $objetProduit->setNomProduit($ProduitTab['nom_produit']);
            $objetProduit->setPrixProduit($ProduitTab['prix_produit']);
            $objetProduit->setImagesProduit($ProduitTab['image_produit']);
            $objetProduit->setDescriptifProduit($ProduitTab['descriptif_produit']);
            $objetProduit->setStockProduit($ProduitTab['stock_produit']);
            $objetProduit->setPrixFournisseurProduit($ProduitTab['prix_fournisseur_produit']);
            $objetProduit->setIdCategorie($ProduitTab['id_categorie']);
            
    
            array_push($tableauDesProduit, $objetProduit);
        }
        return $tableauDesProduit;
    }
}
?>