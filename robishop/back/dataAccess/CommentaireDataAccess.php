<?php

include_once('Commentaire.php');
include_once('AbstractDataAccess.php');


class CommentaireDataAccess extends AbstractDataAccess
{
    public function rechercheCommentaire()
    {
        $myDB=$this->connexion();
        $commentaire= $this->executerquery($myDB, "select * from commentaires");
        $toutLesCommentaires = $this->fetchResults($commentaire);
        $tableauDeCommentaire=[];
    
        foreach ($toutLesCommentaires as $CommentaireTab) {
            $objetCommentaire=new Commentaire();
                
            
            
               
            $objetCommentaire->setIdCommentaire($CommentaireTab['id_commentaire']);
            $objetCommentaire->setTextCommentaire($CommentaireTab['text_commentaire']);
            $objetCommentaire->setDateCommentaire($CommentaireTab['date_commentaire']);
            $objetCommentaire->setIdUsers($CommentaireTab['id_users']);
            $objetCommentaire->setIdProduit($CommentaireTab['id_produit']);
            
    
            array_push($tableauDeCommentaire, $objetCommentaire);
        }
        return $tableauDeCommentaire;
    }
}
?>