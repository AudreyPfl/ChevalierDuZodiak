<%-- 
    Document   : conseiller
    Created on : 10 oct. 2019, 15:03:24
    Author     : esic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Espace Administrateur</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://storage.googleapis.com/code.getmdl.io/1.0.6/material.indigo-pink.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons">
        <link rel="stylesheet"
              href="https://unpkg.com/bootstrap-material-design@4.1.1/dist/css/bootstrap-material-design.min.css"
              integrity="sha384-wXznGJNEXNG1NFsbm0ugrLFMQPWswR3lds2VeinahP8N0zJw9VWSopbjv2x7WCvX" crossorigin="anonymous">
        <script defer src="https://code.getmdl.io/1.2.1/material.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
                integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
        <script src="https://unpkg.com/popper.js@1.12.6/dist/umd/popper.js"
                integrity="sha384-fA23ZRQ3G/J53mElWqVJEGJzU0sTs+SvzG8fXVWP+kJQ1lwFAOkcUOysnlKJC33U"
        crossorigin="anonymous"></script>
        <script src="https://unpkg.com/bootstrap-material-design@4.1.1/dist/js/bootstrap-material-design.js"
                integrity="sha384-CauSuKpEqAFajSpkdjv3z9t8E7RlpJ1UP0lKM/+NdtSarroVKu069AlsRPKkFBz9"
        crossorigin="anonymous"></script>
    </head>
    <body>
        
        <%@include file="navbar.jsp" %> 
        
        <div class="container">
            <div class="card text-white bg-dark mb-3 text-center">
                <div class="card-body">
                    <p>Bonjour ${conseiller.prenom} ${conseiller.nom}, bienvenue dans votre espace conseiller <br>
                        Style bg à mettre</p>
                </div>
            </div>
        </div>
        <br>
        <br>

        <div class="container">
            <h3>Gestion des clients</h3>
            <hr>
            <div class="row">
                <div class="col-sm-3">
                    <div class="card bg-light mb-3 text-center" style="max-width: 28rem;">
                        <div class="card-header">Contact</div>
                        <div class="card-body">
                            <h5 class="card-title">Votre client</h5>
                            <p class="card-text">Solde</p>
                            <p class="card-text">Découvert autorisé</p>
                            <p class="card-text">Statut</p>  
                            <button class="btn btn-primary ">Nouvelle demande de découvert</button>
                            <button class="btn btn-primary ">Nouvelle demande d'inscription</button>
                            <button class="btn btn-primary ">Détails</button>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="card bg-light mb-3 text-center" style="max-width: 28rem;">
                        <div class="card-header">Contact</div>
                        <div class="card-body">
                            <h5 class="card-title">Votre client</h5>
                            <p class="card-text">Solde</p>
                            <p class="card-text">Découvert autorisé</p>
                            <p class="card-text">Statut</p>  
                            <button class="btn btn-primary ">Nouvelle demande de découvert</button>
                            <button class="btn btn-primary ">Nouvelle demande d'inscription</button>
                            <button class="btn btn-primary ">Détails</button>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="card bg-light mb-3 text-center" style="max-width: 28rem;">
                        <div class="card-header">Contact</div>
                        <div class="card-body">
                            <h5 class="card-title">Votre client</h5>
                            <p class="card-text">Solde</p>
                            <p class="card-text">Découvert autorisé</p>
                            <p class="card-text">Statut</p>  
                            <button class="btn btn-primary ">Nouvelle demande de découvert</button>
                            <button class="btn btn-primary ">Nouvelle demande d'inscription</button>
                            <button class="btn btn-primary ">Détails</button>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="card bg-light mb-3 text-center" style="max-width: 28rem;">
                        <div class="card-header">Contact</div>
                        <div class="card-body">
                            <h5 class="card-title">Votre client</h5>
                            <p class="card-text">Solde</p>
                            <p class="card-text">Découvert autorisé</p>
                            <p class="card-text">Statut</p>  
                            <button class="btn btn-primary ">Nouvelle demande de découvert</button>
                            <button class="btn btn-primary ">Nouvelle demande d'inscription</button>
                            <button class="btn btn-primary ">Détails</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>