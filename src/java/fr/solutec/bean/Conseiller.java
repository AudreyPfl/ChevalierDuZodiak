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
public class Conseiller {
    private int idconseiller;
    private Personne personne;
    private int idadmin;
    private boolean statut;

    public Conseiller() {
    }

    public Conseiller(int idconseiller, Personne personne, int idadmin) {
        this.idconseiller = idconseiller;
        this.personne = personne;
        this.idadmin = idadmin;
    }

    public Conseiller(Personne personne, int idadmin) {
        this.personne = personne;
        this.idadmin = idadmin;
    }

    public Conseiller(int idconseiller, Personne personne, int idadmin, boolean statut) {
        this.idconseiller = idconseiller;
        this.personne = personne;
        this.idadmin = idadmin;
        this.statut = statut;
    }

    public Conseiller(Personne personne, int idadmin, boolean statut) {
        this.personne = personne;
        this.idadmin = idadmin;
        this.statut = statut;
    }
    

    public int getIdconseiller() {
        return idconseiller;
    }

    public Personne getPersonne() {
        return personne;
    }

    public int getIdadmin() {
        return idadmin;
    }

    public void setIdconseiller(int idconseiller) {
        this.idconseiller = idconseiller;
    }

    public void setPersonne(Personne personne) {
        this.personne = personne;
    }

    public void setIdadmin(int idadmin) {
        this.idadmin = idadmin;
    }

    public boolean isStatut() {
        return statut;
    }

    public void setStatut(boolean statut) {
        this.statut = statut;
    }

    @Override
    public String toString() {
        return "Conseiller{" + "idconseiller=" + idconseiller + ", personne=" + personne + ", idadmin=" + idadmin + ", statut=" + statut + '}';
    }
    
    public Conseiller attribConseiller(){
        Conseiller c = new Conseiller();
        
        return c;
    }
}
