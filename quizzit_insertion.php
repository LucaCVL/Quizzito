<?php session_start(); ?>
<?php include "connexionbdd.php"; ?>

<?php 
if (isset($_POST['submit'])) 
{
	$QUESTION = $_POST['QUESTION'];
    	$BONNE_REPONSE = $_POST['BONNE_REPONSE'];
	$CATEGORY = $_POST['CATEGORY'];
	$REPONSE_1 = $_POST['REPONSE_1'];
	$REPONSE_2 = $_POST['REPONSE_2'];
	$REPONSE_3 = $_POST['REPONSE_3'];
	

	
	$verification = "SELECT ID FROM QUESTION_CATEGORY WHERE TEXT = '$CATEGORY'";
	$result = $db->query($verification);
	

	if($result->rowCount() == 0 )
		{
		$ajout_category = "INSERT INTO QUESTION_CATEGORY VALUES (NULL,'$CATEGORY') ";
		$result = $db->query($ajout_category);
		

	} 

	
	$selection_category = "SELECT * FROM QUESTION_CATEGORY WHERE TEXT = '$CATEGORY' ";
	$id_category = $db->query($selection_category);

	

	

	$aj_question = $db->query("INSERT INTO QUESTION (TEXT,CATEGORY) VALUES ('$QUESTION','$id_category')");
	$ajout = $aj_question->fetch(PDO::FETCH_ASSOC);
	

	$selection_question = "SELECT ID FROM QUESTION WHERE TEXT = '$QUESTION' ";
	$id_question = $db->prepare($selection_category);
	$id_question->execute();

	
	$ajout_question_1 = "INSERT INTO QUESTION_CHOIX (`REPONSE`,`BONNE`) VALUES (NULL,'$REPONSE_1','0')";
	$ajout_quest = $db->prepare($ajout_question_1);
	$ajout_quest->execute();


	$ajout_question_2 = "INSERT INTO QUESTION_CHOIX (`REPONSE`,`BONNE`) VALUES (NULL,'$REPONSE_2','0')";
	$ajout_quest = $db->prepare($ajout_question_2);
	$ajout_quest->execute();


	$ajout_question_3 = "INSERT INTO QUESTION_CHOIX (`REPONSE`,`BONNE`) VALUES (NULL,'$REPONSE_3','0')";
	$ajout_quest = $db->prepare($ajout_question_3);
	$ajout_quest->execute();


	$ajout_question_4 = "INSERT INTO QUESTION_CHOIX (`REPONSE`,`BONNE`) VALUES (NULL,'$BONNE_REPONSE','1')";
	$ajout_quest = $db->prepare($ajout_question_4);
	$ajout_quest->execute();


}


?>