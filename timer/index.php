<?php 
session_start();

define('DB_SERVER','db5011397709.hosting-data.io');
define('DB_USER','dbu5472475');
define('DB_PASS' ,'Kookies7*');
define('DB_NAME', 'dbs9616600');
$con = mysqli_connect(DB_SERVER,DB_USER,DB_PASS,DB_NAME);
// Check connection
if (mysqli_connect_errno())
{
 echo "Failed to connect to MySQL: " . mysqli_connect_error();
};

date_default_timezone_set("Europe/GMT+1");
$fin1="";
$nom1="";
$res=mysqli_query($con,"SELECT * FROM blindes" );
while($row=mysqli_fetch_array($res))
{
    $fin1=$row["fin1"];
    $nom1=$row["nom1"];
};
$_SESSION["fin1"]=$fin1;
$_SESSION["nom1"]=$nom1;
$_SESSION["stop"]='0';

echo "Début = ".date("Y-m-d H:i:s")." / "."Fin = ".$_SESSION["fin1"]." etat : ".$_SESSION["stop"];
?>
<div id="response"></div>
<?php
 echo "-".$_SESSION["stop"]."-"; 
 $fini1=$_SESSION['stop'];
 if ($_SESSION['stop'] == '1') 
    {
    echo "if index stop car stop = ".$_SESSION['stop'];?>
    <script type="text/javascript"> window.location.href="http://poker31.org/toto.php" </script>
    <?php ; 
    } 
    else 
    {   
        if ($_SESSION["stop"] == '0') { ?>
        <div id="response"></div>
        <script type="text/javascript">
            function stopTimeout() {clearInterval(cleartimer); }
            // let cleartimer; // define `count` globaly
            let cleartimer = setInterval(function()
            {
            var xmlhttp=new XMLHttpRequest();            
            xmlhttp.open("GET","response.php",false);
            xmlhttp.send(null);
            document.getElementById("response").innerHTML=xmlhttp.responseText;
            // document.write(xmlhttp.responseText);
            if (xmlhttp.responseText == 0) {clearInterval(cleartimer);stopTimeout();window.location="/index.php";}
            },1000);
        </script>
    <?php };
    } ;
    echo "-".$_SESSION["stop"]."-";
?>
