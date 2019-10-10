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

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Page d'inscription</title>
    </head>
    <body background = "Ressources/bank.jpg">
        
        <div>
            <nav class="navbar navbar-dark bg-dark ">
                <a class="navbar-brand" style="color: white">BangBank</a>
                <form class="form-inline">
                    
                    <button class="btn btn-primary" style="color: darkturquoise" id="connect">Se connecter</button>
                </form>
            </nav>
        </div>
        <script>
            $("#connect").on("click", function (e) {
                e.preventDefault();
                $('#connection').modal('show');
            })
           
        </script>
        
        
        <div class="container">
            <h3 class="text-center">Formulaire d'inscription</h3>
            <hr>
            <form action="inscription" method="POST">
                <div class="row form-group">
                    <div class="col-sm-4"></div>
                    <div class="col-sm-4">
                        <input type="text" class="form-control text-center" placeholder="Nom" name="nom">
                        <br>
                        <input type="text" class="form-control text-center" placeholder="Prénom" name="prenom">
                        <br>
                        <input type="email" class="form-control text-center" placeholder="Email" name="email">
                        <br>
                        <input type="text" class="form-control text-center" placeholder="Sexe" name="sexe">
                        <br>
                        <input type="password" class="form-control text-center" placeholder="Mot de passe" name="mdp">
                        <br>
                        <button type="submit" class="btn btn-primary btn-block">Demande d'inscription</button>
                        <button type="button" onclick="location.href=''" class="btn btn-link btn-block">Retour</button>
                    </div>
                    <div class="col-sm-4"></div>
                </div>
            </form>
        </div>
    </body>
</html>
