<%-- 
    Document   : comptes
    Created on : 10 oct. 2019, 09:38:02
    Author     : esic
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Espace Compte</title>
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
        <%@include file="modaldecouvert.jsp" %> 

        <div class="container">
            <div class="card text-white bg-dark mb-3 text-center">
                <div class="card-body">
                    <p>Votre compte<br>
                        Style bg à mettre</p>
                </div>
            </div>
        </div>

        <br>
        <br>

        <div class="container">
            <div class="row">
                <div class="col-sm-8">
                    <hr>
                    <br>
                    <br>
                    <h3>Historique de votre compte</h3>

                    <table class="table">
                        <thead>
                            <tr>
                                <th>N° de compte</th>
                                <th>Date</th>
                                <th>Action réalisée</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${listecompte}" var="l">
                                <td>${l.idcompte}</td>
                        <td></td>
                        <td></td>
                            </c:forEach>
                        </tbody>


                    </table>

                    <br>
                    <br>
                    <hr>

                    <div>
                        <button class="btn btn-primary btn-block" onclick="location.href = 'espaceclient'">Retour Espace Client</button>
                    </div>

                </div>



                <div class="col-sm-4">
                    <div>
                        <div>
                            <table class="table text-center">
                                <thead>
                                    <tr>
                                        <th>Découvert autorisé</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <td>${comptes.decouvert}</td>

                                </tbody>

                            </table>

                        </div>

                        <button class="btn btn-primary btn-block" data-toggle="modal" data-target="#ModalDecouvert">Demande de découvert</button>
                        <br><br><br>

                        <button class="btn btn-primary btn-block">Activer/Désactiver ma carte</button>
                        <br>
                    </div>

                    <br>
                    <br>

                    <div class="card bg-light mb-3 text-center" style="max-width: 28rem;">
                        <div class="card-header">Contact</div>
                        <div class="card-body">
                            <h5 class="card-title">Votre conseiller</h5>
                            <div class="card-text">
                                <p> ${cons.prenom} ${cons.nom} </p>
                                <p> @ : ${cons.email} </p>
                            
                            </div>
                            <button class="btn btn-primary ">Par Mail</button>
                            <button class="btn btn-primary ">Par Message</button>
                        </div>
                    </div>
                </div>


                <br>
                <br>



            </div>

        </div>


    </body>
</html>
