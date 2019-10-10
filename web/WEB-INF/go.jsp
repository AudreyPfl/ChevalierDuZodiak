<%-- 
    Document   : go
    Created on : 10 oct. 2019, 12:21:15
    Author     : stagiaire
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons">
        <link rel="stylesheet" href="https://unpkg.com/bootstrap-material-design@4.1.1/dist/css/bootstrap-material-design.min.css" integrity="sha384-wXznGJNEXNG1NFsbm0ugrLFMQPWswR3lds2VeinahP8N0zJw9VWSopbjv2x7WCvX" crossorigin="anonymous"</head>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/popper.js@1.12.6/dist/umd/popper.js" integrity="sha384-fA23ZRQ3G/J53mElWqVJEGJzU0sTs+SvzG8fXVWP+kJQ1lwFAOkcUOysnlKJC33U" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/bootstrap-material-design@4.1.1/dist/js/bootstrap-material-design.js" integrity="sha384-CauSuKpEqAFajSpkdjv3z9t8E7RlpJ1UP0lKM/+NdtSarroVKu069AlsRPKkFBz9" crossorigin="anonymous"></script>
</head>
<body background = "Ressources/bank.jpg">
    <h1>Inscription</h1>
    <div>
        <nav class="navbar navbar-dark bg-dark ">
            <a class="navbar-brand" style="color: white">BangBank</a>
            <form class="form-inline">
                <button class="btn btn-primary" style="color: darkturquoise" id="inscrire" >S'inscrire</button>
                <button  class="btn btn-primary" style="color: darkturquoise" data-toggle="modal" data-target="#connection">Se connecter</button>
            </form>
        </nav>
    </div>

    <script>


    </script>
    <div class="modal fade" id="connection" tabindex="-1" role="dialog" aria-labelledby="connection" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title text-center w-100" id="exampleModalLongTitle">&nbsp &nbsp &nbsp Connexion</h5>
                    <hr>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form action="connexion" method="POST">
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
                        <button type="submit" class="btn btn-primary" id="conexion">Se connecter</button>

                    </div>
                </form>
            </div>
        </div>


    </div>


    <!-- Button trigger modal -->
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">
        Launch demo modal
    </button>

    <!-- Modal -->
    <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    ...
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </div>
    </div>


</body>
</html>
