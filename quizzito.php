<!-- The PHP code that is used to connect to the database and to check if the user is already registered
or not. -->
<?php

session_start();

if (isset($_POST['submit'])) 
{
    $MAIL = $_POST['MAIL'];
    $PASSWORD = $_POST['PASSWORD'];

    $db = new PDO('mysql:host=localhost;dbname=quizz', 'luca', 'luca');

    $sql = "SELECT * FROM `USER` WHERE MAIL = '$MAIL' ";
    $result = $db->prepare($sql);
    $result->execute();

    if ($result->rowCount() > 0) 
	{
        $data = $result->fetchAll();

        if (password_verify($PASSWORD, $data[0]['PASSWORD'])) 
	{
		
		$_SESSION['MAIL'] = $MAIL;

	
        }
	else header('Location:index.php?login_err=password');
	
}
     else {
        $hashedPassword = password_hash($PASSWORD, PASSWORD_DEFAULT);

        $sql = "INSERT INTO USER (MAIL, PASSWORD) VALUES ('$MAIL', '$hashedPassword')";
        $result = $db->prepare($sql);
        $result->execute();

        echo "Enregistrement effectu�";

    }
}

?>




<!DOCTYPE HTML>
<html lang="fr">
<!-- The head of the html page. -->
	<head>
		<title>Quizz GAMES</title>
		<meta charset="utf-8" />
		<meta http-equiv="Refresh" content="10">
		<link rel="stylesheet" href="assets/css/accueil.css" />
	</head>

	<body>
	<nav>
	
		<ul class="barre">
			<li class="nav-button" name="profil"><a href="#"> <?= $_SESSION['MAIL'] ?> </a></li>

		</ul>
	</nav>
		<!-- Bannière -->
			<header id="header" class="alt">
				<div class="inner">
					<h1> Quizzito</h1>
					<p><h2>Project founders :
          <br> Team CHAKALITO
          <br> Sharaman NADARAJAH | Brahim BENNI | Luca CHAUVEL | Apilash VARATHARASA | Matondo LUZOLO</h2><br> <br><img class="iut" src="iut.jpg"> <img class="iut" src="quizzito.jpg">
          <br><a href="index.php"><img src="connexion.png" alt="HTML tutorial" class="connexion"></a>
          <br><br><br> </p>
				</div>
			</header>

		<!-- Espacement -->
			<div id="espacement">

				<!-- Bannière -->
					<section id="intro" class="principale">
                   
             <header>
								<a><img src="images/quiz.jpg" alt="" /></a>
								
							</header>
						<h2>QuiziT</h2>
						<p>Création de quiz<br />
						<i>Créez votre propre quiz !!!</i> </p>
						<ul class="actions">
							<br>
							<li><a href="quizzit.php" class="bouton ">GO</a></li>
						</ul>
					</section>

				<!-- Compo -->
				<br>
				<br>
					<!-- A section of the html page that contains the different quizzes that the user can choose from. -->
                    <section class="principale items">
						
						<article class="item">
							<header>
								<a><img src="images/pic01.jpg" alt="" /></a>
								<h3>France</h3>
							</header>
							<p>Etes-vous français ?</p>
							<br>
							<ul class="actions">
							<li><a href="quizz_histoire.php?n=1" class="bouton">GO 	</a></li>
							</ul>
						</article>
						
						<article class="item">
							<header>
								<a> <img src="images/pic02.jpg" alt="" /> </a>
								<h3>Football</h3>
							</header>
							<p> GOALASOOO !!!</p>
							<br>
							<ul class="actions">
								<li><a href="quizz_football.php?n=1" class="bouton">GO</a></li>
							</ul>
						</article>
						
						<article class="item">
							<header>
								<a><img src="images/pic03.jpg" alt="" /></a>
								<h3>Géographie</h3>
							</header>
							<p>Vers l'infini et au delà !</p>
							<br>
							<ul class="actions">
								<li><a href="quizz_geo.php?n=1" class="bouton">GO</a></li>
							</ul>
						</article>
						
						<article class="item">
							<header>
								<a><img src="images/pic04.jpg" alt="" /></a>
								<h3>MixiQuizz</h3>
							</header>
							<p>Allez ! On mélange tous !</p>
							<br><br>
							<ul class="actions">
								<li><a href="quizz_mix.php?n=1" class="bouton">GO</a></li>
							</ul>
						</article>
						
					</section>

				<!-- Bouton Final -->
					<br>
					<br>
						<ul class="actions">
							<li><a href="#" class="bouton big">Haut de Page</a></li>
						</ul>
					</section>


	</body>
</html>
