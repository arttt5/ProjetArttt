<?php

class AbstractDataAccess{


    function connexion(){
        $db = new mysqli('localhost','root','','base_projet');
        return $db;

    }



    protected function executerQuery($myDB, $query)
    {
        return mysqli_query($myDB, $query);
    }
   


    protected function fetchResults($resultSet)
    {
        return mysqli_fetch_all($resultSet, MYSQLI_ASSOC);
    }

}


?>