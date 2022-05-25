<?php session_start(); ?>
<?php include "connexionbdd.php"; ?>


<?php 

/* It's checking if the score is set. If it isn't, it's setting it to 0. */
if (!isset($_SESSION['score'])) {
	$_SESSION['score'] = 0;
}

if ($_POST) {

	

	$nombre_question = $_SESSION['nombre_question'];
	$question_id = $_SESSION['question_id'];
	
	$reponse_choisi = $_POST['answer'];

	$prochaine_question = $nombre_question + 1;
	

	$total = 10;


	/* It's getting the ID of the correct answer. */
    $query = "SELECT * FROM `QUESTION_CHOIX` WHERE QUESTION_ID = '$question_id' AND BONNE = 1";
	
    /* It's getting the ID of the correct answer. */
    $result = $db->query($query);
	
    /* It's getting the ID of the correct answer. */
    $row = $result->fetch(PDO::FETCH_ASSOC);
	
    /* It's getting the ID of the correct answer. */
    $bonne_reponse = $row['ID'];
	
	echo $bonne_reponse;

	/* It's checking if the answer is correct. If it is, it's adding 1 to the score. */
    if ($reponse_choisi == $bonne_reponse) {
		// Answer is correct
		$_SESSION['score']++;
	}

	/* It's redirecting the user to the next question. */
    if ($nombre_question == $total) {
		header("Location: score.php");
		exit();
	} 

	/* It's redirecting the user to the next question. */
    else {
	header("Location: quizz_mix.php?n=".$prochaine_question);
	}
}
?>