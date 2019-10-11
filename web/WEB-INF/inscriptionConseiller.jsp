<%-- 
    Document   : inscriptionConseiller
    Created on : 11 oct. 2019, 09:29:06
    Author     : esic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons">
        <link rel="stylesheet" href="https://unpkg.com/bootstrap-material-design@4.1.1/dist/css/bootstrap-material-design.min.css" integrity="sha384-wXznGJNEXNG1NFsbm0ugrLFMQPWswR3lds2VeinahP8N0zJw9VWSopbjv2x7WCvX" crossorigin="anonymous"</head>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://unpkg.com/popper.js@1.12.6/dist/umd/popper.js" integrity="sha384-fA23ZRQ3G/J53mElWqVJEGJzU0sTs+SvzG8fXVWP+kJQ1lwFAOkcUOysnlKJC33U" crossorigin="anonymous"></script>
        <script src="https://unpkg.com/bootstrap-material-design@4.1.1/dist/js/bootstrap-material-design.js" integrity="sha384-CauSuKpEqAFajSpkdjv3z9t8E7RlpJ1UP0lKM/+NdtSarroVKu069AlsRPKkFBz9" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Page d'inscription conseiller</title>
    </head>
    
    <script>
        function popUp(){
            alert("Votre nouveau conseiller a bien été enregistrée!");
        }
    </script>
    
    <div class="container">
        <br><br><br>
        <div class="card bg-light mb-3 text-center mx-auto" style="max-width: 28rem;">
            <h3 class="card-header">Inscrire votre conseiller</h3>
            <form action="inscriptionConseiller" method="POST">
                <div class="card-body">
                    <input type="text" class="form-control text-center" placeholder="Nom" name="nom">
                    <br>
                    <input type="text" class="form-control text-center" placeholder="Prénom" name="prenom">
                    <br>
                    <input type="email" class="form-control text-center" placeholder="Email" name="email">
                    <br>
                    
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <label class="input-group-text" for="inputGroupSelect01"></label>
                        </div>
                        <select class="custom-select" id="inputGroupSelect01" name="sexe">
                            <option selected >Sexe</option>
                            <option value="Homme">Homme</option>
                            <option value="Femme">Femme</option>
                        </select>
                    </div>
                    <br>
                    <input type="password" class="form-control text-center" placeholder="Mot de passe" name="mdp">
                    <br>
                    <button type="submit" class="btn btn-primary btn-block" onclick="popUp()">Inscrire</button>
                    <button type="button" onclick="location.href = 'espaceadmin'" class="btn btn-link btn-block">Retour</button>
                </div>
            </form>           
        </div>
    </div>
</html>
