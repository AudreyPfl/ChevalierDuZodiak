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
                    <button  class="btn btn-primary" style="color: darkturquoise" id="connect1">Se connecter</button>
                </form>
            </nav>
        </div>

        <script>
            $("#connect1").on("click", function (e) {
                e.preventDefault();
                $('#connection1').modal('show');
            })
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
                        <button type="button" onclick="location.href='index.jsp'" class="btn btn-link btn-block">Retour</button>
                    </div>
                    <div class="col-sm-4"></div>
                </div>
            </form>
        </div>
    </body>
</html>
