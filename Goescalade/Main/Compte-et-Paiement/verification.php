<?php session_start(); ?>

<!DOCTYPE html>
<html style="font-size: 16px;" lang="fr"><head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="​Go Escalad​e !, Panier">
    <meta name="description" content="">
    <title>Panier</title>
    <link rel="stylesheet" href="../../nicepage.css" media="screen">
<link rel="stylesheet" href="Panier.css" media="screen">
    <script class="u-script" type="text/javascript" src="../../jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="../../nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 5.0.7, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Ubuntu:300,300i,400,400i,500,500i,700,700i">
    <meta property="og:title" content="Go Escalade">
    <meta property="og:description" content="Go Escalade, le leader francophone de vente de matériel escalade">
    <meta property="og:type" content="website">
  </head>

<?php
if(isset($_POST['username']) && isset($_POST['password']))
{

// connexion à la base de données
 $db_username = 'admin';
 $db_password = 'admin';
 $db_name = 'goescalade';
 $db_host = 'localhost';
 $db = mysqli_connect($db_host, $db_username, $db_password,$db_name)
 or die('could not connect to database'); 
 
 
 
$username = mysqli_real_escape_string($db,htmlspecialchars($_POST['username']));
$password = mysqli_real_escape_string($db,htmlspecialchars($_POST['password']));
 
 if($username !== "" && $password !== "")
 {
 $requete = "SELECT count(*) FROM connexion where 
 user = '".$username."' and password = '".$password."' ";
 $exec_requete = mysqli_query($db,$requete);
 $reponse = mysqli_fetch_array($exec_requete);
 $count = $reponse['count(*)'];
 if($count!=0) // user / passwd correct
 {
 $_SESSION['username'] = $username;
 header('Location: /main/Go-Escalade.php');
 }
}
}
mysqli_close($db); // fermeture connexion
?>




