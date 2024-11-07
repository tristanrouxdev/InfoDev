<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>InfoDEV/Formulaire de Contact</title>

    <style>
        header {
          display: flex;
          flex-wrap: wrap;
          justify-content: space-between;
          align-items: center;
          padding: 1rem 2rem;
          background-color: #f1f1f1;
          border-bottom: 1px solid #ddd;
        }
    
        .logo {
          height: 3rem;
          width: auto;
          margin-right: 1rem;
        }
    
        nav {
          display: flex;
          flex-wrap: wrap;
          align-items: center;
        }
    
        nav a {
          color: #333;
          text-decoration: none;
          padding: 0 1rem;
          margin: 0.5rem 0;
        }
    
        nav a:hover {
          background-color: #ddd;
        }

        .form-group {
            margin-bottom: 40px; /* Ajoute une marge en bas */
        }
    
      </style>
</head>
<body>
    <header>
        <img src="LogoF.png" alt="Logo" class="logo">
        <nav>
            <a href="Présentation.php">Présentation</a>
            <a href="Pole_Reseau.php">Le pôle réseau</a>
            <a href="Pole_Developpement.php">Le pôle développement</a>
            <a href="Contact.php">Contact</a>
            <a href="Projets.php">Projets</a>
            <a href="Mention_legales.php">Mentions légales</a>
            <a href="Confidentialite.php">Page de confidentialité</a>
        </nav>
    </header>
    <h1>Formulaire de Contact</h1>

    <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
        
        <div class="form-group">
            <label for="nom">Nom :</label>
            <input type="text" id="nom" name="nom" required>
        </div>

        <div class="form-group">
            <label for="nomContact">Nom du Contact :</label>
            <input type="text" id="nomContact" name="nomContact" required>
        </div>

        <div class="form-group">
            <label for="rue">Rue :</label>
            <input type="text" id="rue" name="rue" required>
        </div>

        <div class="form-group">
            <label for="telephone">Téléphone :</label>
            <input type="number" id="telephone" name="telephone" pattern="[0-9]{10}" required>
        </div>

        <div class="form-group">
            <label for="fax">Fax :</label>
            <input type="number" id="fax" name="fax">
        </div>

        <div class="form-group">
            <label for="CP">Code Postal :</label>
            <input type="number" id="CP" name="CP" pattern="[0-9]{5}" required>
        </div>


        <div class="form-group">
            <label for="ville">Ville :</label>
            <input type="text" id="ville" name="ville" required>
        </div>

        <div class="form-group">
            <input type="checkbox" id="conditions" name="conditions" required>
            <label for="conditions">J'ai lu et j'accepte la <a href="Confidentialite.php" target="_blank">politique de confidentialité</a>.</label>
        </div>

        <div class="form-group">
            <input name="submit" value="Envoyer" type="submit">
        </div>
    </form>

    <h3>Nous contacter :</h3> 
    <p>Adresse : 100 rue Jean Jaurès 17000 La Rochelle</p>
    <p>Téléphone : 02 03 04 05 06</p>
    <p>Fax : 02 03 04 05 07</p>
</body>
</html>

<?php
// Paramètres de connexion à la base de données
$serveur = "localhost";
$base_de_donnees = "infodev";
$username = "AdminTristan";
$password = "Azer4321";

// Connexion à la base de données
$conn = new mysqli($serveur, $username, $password, $base_de_donnees);

// Vérification de la connexion
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Vérification si le formulaire a été soumis
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Récupération des valeurs des champs du formulaire
    $nom = htmlspecialchars($_POST['nom']);
    $nomContact = htmlspecialchars($_POST['nomContact']);
    $rue = htmlspecialchars($_POST['rue']);
    $telephone = htmlspecialchars($_POST['telephone']);
    $fax = htmlspecialchars($_POST['fax']);
    $CP = htmlspecialchars($_POST['CP']);
    $ville = htmlspecialchars($_POST['ville']);
    $insert_query = "INSERT INTO client (num, nom, nomContact, rue, tel, fax, CP, ville) 
                         VALUES ('' ,'$nom', '$nomContact', '$rue', '$telephone', '$fax', '$CP', '$ville')";
    
        // Exécution de la requête
    if ($conn->query($insert_query) === TRUE) {
        echo "<p>Les informations ont été insérées avec succès.</p>";
    } else {
        echo "<p>Erreur lors de l'insertion : " . $conn->error . "</p>";
    }
    
        // Fermeture de la connexion
    $conn->close();
}
?>
    
