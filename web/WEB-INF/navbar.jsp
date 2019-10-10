<%-- 
    Document   : navbar
    Created on : 9 oct. 2019, 14:56:47
    Author     : stagiaire
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Navbar</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons">
        <link rel="stylesheet" href="https://unpkg.com/bootstrap-material-design@4.1.1/dist/css/bootstrap-material-design.min.css" integrity="sha384-wXznGJNEXNG1NFsbm0ugrLFMQPWswR3lds2VeinahP8N0zJw9VWSopbjv2x7WCvX" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://unpkg.com/popper.js@1.12.6/dist/umd/popper.js" integrity="sha384-fA23ZRQ3G/J53mElWqVJEGJzU0sTs+SvzG8fXVWP+kJQ1lwFAOkcUOysnlKJC33U" crossorigin="anonymous"></script>
        <script src="https://unpkg.com/bootstrap-material-design@4.1.1/dist/js/bootstrap-material-design.js" integrity="sha384-CauSuKpEqAFajSpkdjv3z9t8E7RlpJ1UP0lKM/+NdtSarroVKu069AlsRPKkFBz9" crossorigin="anonymous"></script>

    </head>
    <body >
        <div>
            <nav class="navbar navbar-dark bg-dark ">
                <a class="navbar-brand" style="color: white" onclick="location.href = 'index.jsp'">BangBank</a>
                <form class="form-inline">
                    <img src="Ressources/profil.png" alt="" width="40" height="40" onclick="" >                 
                    <button class="btn btn-primary" type="button"  style="color: darkturquoise" id="deco">Se déconnecter</button>                    
                </form>
            </nav>
        </div>

        <script>

            $("#deco").on("click", function (e) {
                location.href = 'deco';
            });
        </script>


        <div class="modal fade" id="connection" tabindex="-1" role="dialog" aria-labelledby="connection" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title text-center w-100" id="exampleModalLongTitle">Connection</h5>
                        <hr>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="register">
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
                        <button type="button" class="btn btn-primary">Se connecter</button>
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>
