<!-- Taking the value of the input field with the name "MAIL" and storing it in the variable . Then it
is echoing the value of . -->
<?php session_start(); ?>
<?php include "connexionbdd.php"; ?>

<?php 

	$nombre_question = (int)$_GET['n'];
	$_SESSION['nombre_question'] = $nombre_question;

if ($nombre_question == 1 ) {

	$requete_question = $db->query("SELECT * FROM QUESTION WHERE CATEGORY = '1' ORDER BY RAND() LIMIT 10 ");

	$question = $requete_question->fetchall(PDO::FETCH_ASSOC);
	$_SESSION['question'] = $question;
}
		


?>





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
	
	$question_id = $_SESSION['question'][$nombre_question - 1]['ID'];
	$_SESSION['question_id'] = $question_id;
	echo $_SESSION['question'][$nombre_question - 1]['TEXT'];
	$requete_reponse = $db->query("SELECT * FROM QUESTION_CHOIX WHERE QUESTION_ID = '$question_id' ORDER BY QUESTION_ID, RAND() ");

	?>

	 </h2>
	<form method="post" action="processus_histoire.php">
	<ul >
	 <?php while($reponse = $requete_reponse->fetch(PDO::FETCH_ASSOC))
	{ ?>
	<li>
          <input type="radio" name="answer" id="b" class="answer">
          <label for="b" id="b_text"><?php echo $reponse['REPONSE']; ?> </label>
        </li>
 

	<?php 
	} 
	?>
		
      	</ul>
    	<button id="submit" name="submit">Submit</button>
	</form>

    	

  </div>

  
</body>
</html>
	
