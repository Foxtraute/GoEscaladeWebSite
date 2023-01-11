<?php session_start(); ?>

<!DOCTYPE html>
<html style="font-size: 16px;" lang="fr"><head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="​Go Escalad​e !, Connexion">
    <meta name="description" content="Connexion">
    <title>Connexion</title>
    <link rel="stylesheet" href="../../nicepage.css" media="screen">
<link rel="stylesheet" href="Connexion.css" media="screen">
    <script class="u-script" type="text/javascript" src="../../jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="../../nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 5.0.7, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Ubuntu:300,300i,400,400i,500,500i,700,700i">
    <meta property="og:title" content="Go Escalade">
    <meta property="og:description" content="Go Escalade, le leader francophone de vente de matériel escalade">
    <meta property="og:type" content="website">
  </head>
  
  <body class="u-body u-xl-mode" data-lang="en"><header class="u-clearfix u-header u-image u-sticky u-header" id="sec-aa9f" data-image-width="1920" data-image-height="1080"><div class="u-clearfix u-sheet u-sheet-1">
        <h1 class="u-custom-font u-font-ubuntu u-text u-text-default u-text-white u-title u-text-1" data-href="/main/Go-Escalade.php" data-target="_blank"> Go Escalad​e !</h1>
        <div class="u-image u-image-circle u-image-contain u-opacity u-opacity-80 u-preserve-proportions u-image-1" alt="" data-image-width="600" data-image-height="600" data-href="https://www.youtube.com/watch?v=dQw4w9WgXcQ" data-target="_blank" rel="nofollow"></div>
      </div></header>

<div id="container">
<form action="verification.php" method="POST">
<h1>Connexion</h1>
<label><b>Nom d'utilisateur</b></label>
<input type="text" placeholder="compte" name="username" required>
<label><b>Mot de passe</b></label>
<input type="password" placeholder="Mot de passe" name="password" required>
<input type="submit" id='submit' value='Connexion' >

<?php
 if(isset($_GET['erreur'])){
 $err = $_GET['erreur'];
 if($err==1 || $err==2)
 echo "<p style='color:red'>Utilisateur ou mot de passe incorrect</p>";
 }
 ?>
</form>
</div>
<br> 

</section>
    <footer class="u-align-left u-clearfix u-footer u-grey-80 u-footer" id="sec-cbff"><div class="u-clearfix u-sheet u-sheet-1"> 
      <h5 class="u-align-center u-custom-font u-font-ubuntu u-text u-text-body-alt-color u-text-default u-text-1">
        <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-body-alt-color u-btn-1" href="../main/autres/CGV.php">CGV</a>
      </h5>
      <h5 class="u-align-center u-custom-font u-font-ubuntu u-text u-text-body-alt-color u-text-default u-text-2">
        <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-body-alt-color u-btn-2" href="../main/autres/CGU.php">CGU</a>
      </h5>
      <p class="u-small-text u-text u-text-variant u-text-3"> GoEscalade ! - SARL au capital de 15 000€ Siège Social - 13 Rue De La Serte 75019 PARIS&nbsp;</p>
      <?php echo 'IP du client: '.$_SERVER['REMOTE_ADDR']; echo " |  Bonjour " . $_SESSION['username'] ;?>
    </div></footer> 
  </section>
</body>
</html>