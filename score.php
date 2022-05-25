<?php session_start(); ?>
<?php include "connexionbdd.php"; ?>

<!DOCTYPE html>

<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="css/quizz.css">
  <!-- Coding with nick -->
  <title>Quiz App</title>
</head>
<body>
<div class="background">
  <div class="quiz-container" id="quiz">
  
    <div class="quiz-header">
    
       <h2 id="question"> 

	<?php 
		$score = $_SESSION['score'];
	?>

	Votre score est de <?php echo $score ; ?> / 10 
	</h2>

	<button onclick="window.location.href = 'quizzito.php';">Accueil</button>
  </div>

  
</body>
</html>