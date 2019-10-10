<%-- 
    Document   : inscription
    Created on : 9 oct. 2019, 13:35:35
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
    <title>Page d'inscription</title>
</head>
<body background = "Ressources/bank.jpg" style="background-size: cover">

    <div>
        <nav class="navbar navbar-dark bg-dark ">
            <a class="navbar-brand" style="color: white">BangBank</a>
            <form class="form-inline">
                <button  class="btn btn-primary" style="color: darkturquoise" id="connect1">Se connecter</button>
            </form>
        </nav>
    </div>

    <script>
        function popUp(){
            alert("Votre demande d'inscription a bien été enregistrée!");
        }
    </script>
    <div class="modal fade" id="connection1" tabindex="-1" role="dialog" aria-labelledby="connection" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title text-center w-100" id="exampleModalLongTitle1">&nbsp &nbsp &nbsp Connexion</h5>
                    <hr>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form  action="connexion" method="POST">
                    <div class="modal-body">
                        <div class="form-group">

                            <input class="form-control text-center"
                                   name="mail" value="${param['mail']}"
                                   type="email" placeholder="e-mail" required="">

                        </div>
                        <br>
                        <div class="form-group">
                            <input class="form-control text-center"
                                   name="mdp" value="${param['mdp']}"
                                   type="password" placeholder="mot de passe" required="">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Retour</button>                           
                        <button type="submit" class="btn btn-primary">Se connecter</button>

                    </div>
                </form>
            </div>
        </div>


    </div>


    <div class="container">
        <div class="card bg-light mb-3 text-center mx-auto" style="max-width: 28rem;">
            <h3 class="card-header">Formulaire d'inscription</h3>
            <form action="inscription" method="POST">
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
                    <button type="submit" class="btn btn-primary btn-block" onclick="popUp()">Demande d'inscription</button>
                    <button type="button" onclick="location.href = 'index.jsp'" class="btn btn-link btn-block">Retour</button>
                </div>
            </form>           
        </div>
    </div>
</body>
</html>
