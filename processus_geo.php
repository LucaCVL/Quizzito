Starting a session and including a file.
<?php session_start(); ?>
<?php include "connexionbdd.php"; ?>


<?php 

$nombre_question = $_SESSION['nombre_question'];
$question_id = $_SESSION['question_id'];


if ($nombre_question == 1 ) {
	$_SESSION['score'] = 0;
}

if (isset($_POST['submit'])) {

	$reponse_choisi = $_POST["reponse"];

	$prochaine_question = $nombre_question + 1;
	

	$total = 10;


	#Selecting the correct answer from the database.
    $query = "SELECT * FROM `QUESTION_CHOIX` WHERE QUESTION_ID = '$question_id' AND BONNE = 1";
	
    #Executing the query.
    $result = $db->query($query);
	
    #Fetching the result of the query.
    $row = $result->fetch(PDO::FETCH_ASSOC);
	
    #Getting the ID of the correct answer.
    $bonne_reponse = $row['REPONSE'];
	

 #Checking if the answer is correct and if it is, it adds 1 to the score.
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
	header("Location: quizz_geo.php?n=".$prochaine_question);
	}
}

?>
