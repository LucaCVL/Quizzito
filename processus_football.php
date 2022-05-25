<?php session_start(); ?>
<?php include "connexionbdd.php"; ?>


<?php 

/* Checking if the score is set. If it is not, it sets it to 0. */
if (!isset($_SESSION['score'])) {
	$_SESSION['score'] = 0;
}

if ($_POST) {

	

	$nombre_question = $_SESSION['nombre_question'];
	$question_id = $_SESSION['question_id'];
	
	$reponse_choisi = $_POST['answer'];

	$prochaine_question = $nombre_question + 1;
	

	$total = 10;


    /* Selecting the correct answer from the database. */
	$query = "SELECT * FROM `QUESTION_CHOIX` WHERE QUESTION_ID = '$question_id' AND BONNE = 1";
	
    /* Executing the query. */
    $result = $db->query($query);
	
    /* Fetching the result of the query. */
    $row = $result->fetch(PDO::FETCH_ASSOC);
	
    /* Getting the ID of the correct answer. */
    $bonne_reponse = $row['ID'];
	
	echo $bonne_reponse;

	/* Checking if the answer is correct. If it is, it adds 1 to the score. */
    if ($reponse_choisi == $bonne_reponse) {
		// Answer is correct
		$_SESSION['score']++;
	}

	 #Checking if the number of questions is equal to the total number of questions. If it is, it redirects to the score page.
	if ($nombre_question == $total) {
		header("Location: score.php");
		exit();
	} 
	
	#Redirecting to the next question.
	else {
	header("Location: quizz_football.php?n=".$prochaine_question);
	}
}

?>