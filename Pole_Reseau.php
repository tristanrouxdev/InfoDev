<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>InfoDEV/Pôles</title>

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

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }

        @media only screen and (max-width: 600px){

            h1{ front-size: 1.5em;}
            th, td{front-size: 0.8em;
            padding: 6px;}
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
    <h1>Les Pôles Réseau</h1>

    <table>
        <t-head>
            <tr>
                <th>Compétence</th>
                <th>Description</th>
            </tr>
        </t-head>
        <tbody>
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

            // Requête SQL pour récupérer les données
            $query = "SELECT libelle, competence, description FROM pole WHERE libelle = 'Réseau'";
            $result = $conn->query($query);

            // Vérification s'il y a des résultats
            if ($result->num_rows > 0) {
                // Affichage des données dans le tableau
                while($row = $result->fetch_assoc()) {
                    echo "<tr>";
                    echo "<td>" . $row["competence"] . "</td>";
                    echo "<td>" . $row["description"] . "</td>";
                    echo "</tr>";
                }
            } else {
                echo "<tr><td colspan='3'>Aucun résultat trouvé</td></tr>";
            }
            // Fermeture de la connexion
            $conn->close();
            ?>
        </tbody>
    </table>
</body>
</html>
