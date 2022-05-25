<!DOCTYPE html>
<!-- Created By CodingNepal -->
<html lang="en" dir="ltr">
   <head>
      <meta charset="utf-8">
      <title>Responsive Contact us Form | CodingNepal</title>
      <link rel="stylesheet" href="azerty.css">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>
   <body>
    <div class="container">
        <div class="text">Création de Quiz</div>
        <form method='post' action="quizzit_insertion.php">
           <div class="form-row">
              <div class="input-data">
                 <input type="text" required name='QUESTION'>
                 <div class="underline"></div>
                 <label for="">Question</label>
              </div>
            
              <div class="input-data">
                 <input type="text" required name='BONNE_REPONSE'>
                 <div class="underline"></div>
                 <label for="">Réponse</label>
              </div>
           </div>
           <div class="form-row">
              <div class="input-data">
                 <input type="text" required name='REPONSE_1'>
                 <div class="underline"></div>
                 <label for="">Choix 1</label>
              </div>
              <div class="input-data">
                 <input type="text" required name='REPONSE_2'>
                 <div class="underline"></div>
                 <label for="">Choix 2</label>
              </div>
           </div>
           
           <div class="form-row">
            <div class="input-data">
               <input type="text" required name='REPONSE_3'>
               <div class="underline"></div>
               <label for="">Choix 3</label>
            </div>
            <div class="input-data">
               <input type="text" required name='CATEGORY'>
               <div class="underline"></div>
               <label for="">Nom du quiz</label>
               <div class="form-row submit-btn">
                   
                <div class="input-data">
                   
                   <div class="inner"></div>
                   <input type="submit" value="submit" name='submit'>
                </div>
                
            </div>
         </div>
        </form>
     </div>
   </body>
</html>