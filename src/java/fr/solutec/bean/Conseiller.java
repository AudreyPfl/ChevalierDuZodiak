/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.bean;

import java.util.logging.Logger;

/**
 *
 * @author esic
 */
public class Conseiller extends Personne{
    private int idconseiller;
  
    private int idadmin;
    private boolean statut;

    public Conseiller() {
    }

    public Conseiller(int idconseiller, int idadmin, boolean statut) {
        this.idconseiller = idconseiller;
        this.idadmin = idadmin;
        this.statut = statut;
    }

    public Conseiller(int idconseiller, int idadmin, boolean statut, String nom, String prenom, String email, String sexe, String mdp) {
        super(nom, prenom, email, sexe, mdp);
        this.idconseiller = idconseiller;
        this.idadmin = idadmin;
        this.statut = statut;
    }

    public int getIdconseiller() {
        return idconseiller;
    }

    public int getIdadmin() {
        return idadmin;
    }

    public boolean isStatut() {
        return statut;
    }

    public void setIdconseiller(int idconseiller) {
        this.idconseiller = idconseiller;
    }

    public void setIdadmin(int idadmin) {
        this.idadmin = idadmin;
    }

    public void setStatut(boolean statut) {
        this.statut = statut;
    }

    @Override
    public String toString() {
        return "Conseiller{" + "idconseiller=" + idconseiller + ", idadmin=" + idadmin + ", statut=" + statut + '}';
    }
    
    
    
}

