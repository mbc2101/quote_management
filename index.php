<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Citation en Plein Écran</title>
    <style>
        body {
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f0f0f0; /* Couleur de fond */
            color: #3440ea; /* Couleur du texte */
            font-weight: bold;
            overflow: hidden; /* Empêche le défilement */
            text-align: center; /* Centre le texte */
            flex-direction: column; /* Organise en colonne pour superposer citation et auteur */
        }
        .citation-container {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            padding: 20px;
            border-left: 5px solid #3440ea; /* Bordure à gauche */
            background-color: white; /* Couleur de fond de la citation */
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); /* Ombre portée pour le relief */
            border-radius: 10px; /* Coins arrondis */
            overflow-wrap: break-word; /* Permet le retour à la ligne */
            text-align: center; /* Centre le texte dans le bloc */
            HEIGHT: -webkit-fill-available;        }
        .citation {
            font-size: 2em; /* Taille de la citation */
        }
        .author {
            margin-top: -13px;
            font-size: 1.2em;
            color: #666; /* Couleur plus discrète pour l'auteur */
            font-style: italic; /* Style en italique pour l'auteur */
        }
    </style>
</head>
<body>
<?php
// Paramètres de connexion à la base de données
$host = '127.0.0.1';
$db = 'DBNAME';
$user = 'DBUSER'; // Remplacez par votre nom d'utilisateur
$pass = 'DBPASS'; // Remplacez par votre mot de passe
$port = '3306'; // Port MySQL

try {
    // Connexion à la base de données
    $pdo = new PDO("mysql:host=$host;port=$port;dbname=$db;charset=utf8mb4", $user, $pass);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
    // Requête pour récupérer une citation aléatoire et son auteur
    $stmt = $pdo->query("SELECT citation, author FROM quote ORDER BY RAND() LIMIT 1");
    $row = $stmt->fetch(PDO::FETCH_ASSOC);
    
    // Vérifiez si une citation a été trouvée
    if ($row) {
        $citation = $row['citation'];
        $author = $row['author'];
        echo "<div class='citation-container'>";
        echo "<div class='citation'>$citation</div>";
        echo "<div class='author'>- $author</div>";
        echo "</div>";
    } else {
        echo "<div class='citation-container'><div class='citation'>Aucune citation trouvée.</div></div>";
    }
} catch (PDOException $e) {
    echo "Erreur de connexion : " . $e->getMessage();
}
?>

<script>
    function adjustFontSize() {
        const citationDiv = document.querySelector('.citation');
        const windowHeight = window.innerHeight;
        const windowWidth = window.innerWidth;

        // Longueur de la citation
        const citationLength = citationDiv.innerText.length;

        // Calculer la taille de la police basée sur la taille de la fenêtre
        let fontSize;

        // Ajustement de la taille de la police
        if (citationLength < 50) {
            fontSize = Math.min(windowHeight / 4, windowWidth / 5); // Pour citations courtes
            font6 = 35;
        } else if (citationLength < 100) {
            fontSize = Math.min(windowHeight / 5, windowWidth / 6); // Pour citations moyennes
            font6 = 25;
        } else if (citationLength < 150) {
            fontSize = Math.min(windowHeight / 6, windowWidth / 7); // Pour citations longues
            font6 = 15;
        } else {
            fontSize = Math.min(windowHeight / 7, windowWidth / 8); // Pour très longues citations
            font6 = 15;
        }

        // Assurez-vous que la taille de police ne soit pas trop petite
        fontSize = Math.max(fontSize - font6, 20); // 20px est la taille minimale

        citationDiv.style.fontSize = `${fontSize}px`;

    }

    // Ajuster la taille de la police au chargement de la page
    window.onload = adjustFontSize;
    // Ajuster la taille de la police lors du redimensionnement de la fenêtre
    window.onresize = adjustFontSize;
</script>

</body>
</html>
