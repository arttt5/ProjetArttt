<?php

class AbstractDataAccess{


    function connexion(){

        $db = new mysqli('localhost','root','','robishop');
    }


}




?>