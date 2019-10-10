/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.bean;

/**
 *
 * @author esic
 */
public class Client extends Personne {
    private int idclient;

    private int idconseiller;
    private boolean statut;

    public Client() {
    }

    public Client(int idclient, int idconseiller, boolean statut) {
        this.idclient = idclient;
        this.idconseiller = idconseiller;
        this.statut = statut;
    }

    public Client(int idclient, int idconseiller, boolean statut, String nom, String prenom, String email, String sexe, String mdp) {
        super(nom, prenom, email, sexe, mdp);
        this.idclient = idclient;
        this.idconseiller = idconseiller;
        this.statut = statut;
    }

    public int getIdclient() {
        return idclient;
    }

    public int getIdconseiller() {
        return idconseiller;
    }

    public boolean isStatut() {
        return statut;
    }

    public void setIdclient(int idclient) {
        this.idclient = idclient;
    }

    public void setIdconseiller(int idconseiller) {
        this.idconseiller = idconseiller;
    }

    public void setStatut(boolean statut) {
        this.statut = statut;
    }

    @Override
    public String toString() {
        return "Client{" + "idclient=" + idclient + ", idconseiller=" + idconseiller + ", statut=" + statut + '}';
    }

    
    
    
    
    
    
}
