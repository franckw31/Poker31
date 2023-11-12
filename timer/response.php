<?php
session_start();

$from=date("Y-m-d H:i:s");
$fin1=$_SESSION["fin1"];
$nom1=$_SESSION["nom1"];
$departsecondes=strtotime($from);
$arriveesecondes1=strtotime($fin1);

$ecartsecondes1=$arriveesecondes1-$departsecondes;

// echo gmdate("Y-m-d H:i:s",$ecartsecondes1)." Soit : ".$ecartsecondes1 ;


if ((int)($ecartsecondes1) >= 0)
{
    echo gmdate("i:s",$ecartsecondes1);
   
}
else
{  
    
    $_SESSION["stop"] = "1";
    echo "0";
}; ?> 


