<%-- 
    Document   : index
    Created on : 9 oct. 2019, 11:44:37
    Author     : esic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BangBank</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons">
        <link rel="stylesheet" href="https://unpkg.com/bootstrap-material-design@4.1.1/dist/css/bootstrap-material-design.min.css" integrity="sha384-wXznGJNEXNG1NFsbm0ugrLFMQPWswR3lds2VeinahP8N0zJw9VWSopbjv2x7WCvX" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://unpkg.com/popper.js@1.12.6/dist/umd/popper.js" integrity="sha384-fA23ZRQ3G/J53mElWqVJEGJzU0sTs+SvzG8fXVWP+kJQ1lwFAOkcUOysnlKJC33U" crossorigin="anonymous"></script>
        <script src="https://unpkg.com/bootstrap-material-design@4.1.1/dist/js/bootstrap-material-design.js" integrity="sha384-CauSuKpEqAFajSpkdjv3z9t8E7RlpJ1UP0lKM/+NdtSarroVKu069AlsRPKkFBz9" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="Ressources/style.css">
        <link rel="stylesheet" href="style.css">
    </head>
    <body background = "Ressources/bank.jpg">

        <div>
            <nav class="navbar navbar-dark bg-dark ">
                <a class="navbar-brand" style="color: white">BangBank</a>
                <form class="form-inline">
                    <button class="btn btn-primary" style="color: darkturquoise" id="inscrire" >S'inscrire</button>
                    <button  class="btn btn-primary" style="color: darkturquoise" id="connect">Se connecter</button>
                </form>
            </nav>
        </div>

        <script>
            $("#connect").on("click", function (e) {
                e.preventDefault();
                $('#connection').modal('show');
            })
            $("#inscrire").on("click", function (e) {
                e.preventDefault();
                location.href = 'inscription';
            })

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
                    <form action="register">
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
                            <button type="button" class="btn btn-primary" id="conexion" action="connexion" method="POST">Se connecter</button>

                        </div>
                    </form>
                </div>
            </div>
        </div>





    </body>
</html>
