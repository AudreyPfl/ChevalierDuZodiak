<%-- 
    Document   : client
    Created on : 9 oct. 2019, 14:53:30
    Author     : esic
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Espace Client</title>
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
    <body background = "Ressources/bank.jpg" style="background-size: cover">

        <%@include file="navbar.jsp" %> 
        <%@include file="modaldecouvert.jsp" %> 

        <div class="container" style="background-color: white">
            <div class="container">
                <div class="card text-white bg-dark mb-3 text-center">
                    <div class="card-body">
                        <p>Bonjour ${client.prenom} ${client.nom}, bienvenue dans votre espace client <br>
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

                        <h3>Votre compte</h3>

                        <table class="table">
                            <thead>
                                <tr>
                                    <th>N° de compte</th>
                                    <th>Solde</th>
                                    <th>N° Carte</th>
                                    <th>Découvert autorisé</th>
                                    <th class="text-center">Détails</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${listecompte}" var="co">
                                    <tr>
                                        <td scope="row">${co.idcompte}</td>
                                        <td>${co.solde} €</td>
                                        <td>${co.carte}</td>
                                        <td>${co.decouvert} €</td>

                                <form action="compte" method="POST">
                                    <td><input type="hidden" name="idrec" value="${co.idcompte}" >
                                        <input type="hidden" name="dec" value="${co.decouvert}" >
                                        <button type="submit" class="btn btn-primary btn-block">Détails du compte</button></td>
                                </form>
                                </tr>
                            </c:forEach>
                            </tbody>


                        </table>

                        <br>
                        <br>
                        <hr>

                    </div>



                    <div class="col-sm-4">
                        <div>
                            <br>
                            <br>
                            <button class="btn btn-primary btn-block" data-toggle="modal" data-target="#ModalDecouvert">Demande de découvert</button>
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
                                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modalMessage" data-whatever="@mdo">Par Message</button>
                            </div>
                        </div>
                    </div>
                    <script>
                        $('#modalMessage').on('show.bs.modal', function (event) {
                            var button = $(event.relatedTarget) 
                            var recipient = button.data('whatever') // Extract info from data-* attributes
                            var modal = $(this)
                            modal.find('.modal-title').text('New message to ' + recipient)
                            modal.find('.modal-body input').val(recipient)
                        })
                        $('#modalMessage').data('bs.modal').handleUpdate();
                    </script>

                    <br>
                    <br>
                </div>

                <div class="modal fade" id="modalMessage" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Nouveau message</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <form action="message" method="POST">
                                    <div class="form-group">
                                        <label for="recipient-name" class="col-form-label">Conseiller</label>
                                        <p type="text" class="text-center" id="conseiller">@ ${cons.nom}</p>
                                    </div>
                                    <div class="form-group">
                                        <label for="message-text" class="col-form-label">Message:</label>
                                        <textarea class="form-control" id="message" rows="10"></textarea>
                                    </div>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Fermer</button>
                                <button type="button" class="btn btn-primary">Envoyer message</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>


        </div>


    </body>
</html>
