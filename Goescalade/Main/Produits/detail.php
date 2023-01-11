<?php session_start(); ?>

<!DOCTYPE html>
<html style="font-size: 16px;" lang="fr"><head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="​Go Escalad​e !, Détail">
    <meta name="description" content="Détail">
    <title>Détail produits </title>
    <link rel="stylesheet" href="../../nicepage.css" media="screen">
    <link rel="stylesheet" href="Chaussons Hommes.css" media="screen">
    <script class="u-script" type="text/javascript" src="../../jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="../../nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 5.0.7, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Ubuntu:300,300i,400,400i,500,500i,700,700i">
    <meta property="og:title" content="Go Escalade">
    <meta property="og:description" content="Go Escalade, le leader francophone de vente de matériel escalade">
    <meta property="og:type" content="website">
  </head>
</head>
<body class="u-body u-xl-mode" data-lang="en"><header class="u-clearfix u-header u-image u-sticky u-header" id="sec-aa9f" data-image-width="1920" data-image-height="1080"><div class="u-clearfix u-sheet u-sheet-1">
  <h1 class="u-custom-font u-font-ubuntu u-text u-text-default u-text-white u-title u-text-1" data-href="/main/Go-Escalade.php"> Go Escalad​e !</h1>
  <div class="u-image u-image-circle u-image-contain u-opacity u-opacity-80 u-preserve-proportions u-image-1" alt="" data-image-width="600" data-image-height="600" data-href="https://www.youtube.com/watch?v=dQw4w9WgXcQ" data-target="_blank" rel="nofollow"></div>
</div></header>

<?php $product_id = $_GET['id']; ?>

<?php
$servername = 'localhost';
$user = 'admin';
$pass = 'admin';
try {
    $pdo = new PDO('mysql:host=localhost;dbname=goescalade', $user, $pass);
    $data = $pdo->query("SELECT * FROM produits WHERE id=$product_id")->fetchAll();
$dbh = null;
} catch (PDOException $e) {
print "Erreur !: " . $e->getMessage() . "<br/>";
die();
}
?>

<?php foreach ($data as $row) { ?>
<body class="u-body " data-style="product-detail-template-1" data-posts="" id="sec-4b3c">
  <div class="u-clearfix u-sheet u-valign-middle-md u-valign-middle-sm u-valign-middle-xl u-valign-middle-xs u-block-fb65-2">
    <div class="u-container-style u-expanded-width u-product u-white u-block-fb65-3">
      <div class="u-container-layout u-valign-middle-md">
      <img alt="" class="u-expanded-width u-image u-product-control u-image-1 u-border-grey-75" src="<?= $row['image'] ?>" > 
        <h2 class="u-product-control u-text u-text-default u-block-fb65-6">
          <a class=""><?= $row['nom'] . $row['référence'] ?></a>
        </h2>
        <div class="u-product-control u-product-price u-block-fb65-7">
          <div class="u-price-wrapper u-spacing-10"> 
            <div class="u-price u-text-palette-2-base" style="font-size: 1.875rem; font-weight: 700;"><?= $row['prix'] ?> €</div>
          </div>
        </div>
        <div class="u-product-control u-product-desc u-text u-block-fb65-8">
          <p><?= $row['description'] ?></p>
        </div>
        <input value="1" min="1" type="number" name="quantite" id="quantite" class="">
        <button type="button" onclick="AjoutPanier(<?= $row['id'] ?>)" class="u-align-center u-border-2 u-border-grey-75 u-btn u-btn-rectangle u-button-style u-none u-product-control u-text-body-color u-btn-1" >Ajoute moi !</button>
    </div>
  </div>
</section>
<?php } ?>
<br>

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

<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>
     function AjoutPanier(articleId){
        $.ajax({
            url: '/main/produits/add-panier.php',
            type: 'POST',
            data: {
                articleId: articleId,
                quantite: $('#quantite').val()
            },
            success: function(response){
                Swal.fire({
                    position: 'center',
                    icon: 'success',
                    title: 'Ajouté !',
                    showConfirmButton: false,
                    timer: 1000
                })
                setTimeout(function() {
                    window.location.replace("/main/produits/panier.php");
                }, 1200);

            }
        });
    }
</script>

</body>
</html>