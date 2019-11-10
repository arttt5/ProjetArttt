<?php

include_once('Promotion.php');
include_once('AbstractDataAccess.php');


class PromotionDataAccess extends AbstractDataAccess
{
    public function recherchePromotion()
    {
        $myDB=$this->connexion();
        $promotion= $this->executerquery($myDB, "select * from _Promotion");
        $toutLesPromotions = $this->fetchResults($promotion);
        $tableauDePromotion=[];
    
        foreach ($toutLesPromotions as $PromotionTab) {
            $objetPromotion=new Promotion();
                
            
            
               
            $objetPromotion->setIdPromotion($PromotionTab['id_promotion']);
            $objetPromotion->setMontantPromotion($PromotionTab['montant_promotion']);
           
    
            array_push($tableauDePromotion, $objetPromotion);
        }
        return $tableauDePromotion;
    }
}
?>