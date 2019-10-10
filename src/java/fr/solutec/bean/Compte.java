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
public class Compte {
    private int idcompte;
    private double solde;
    private int carte;
    private boolean statut;
    private double decouvert;
    private int idclient;

    public Compte() {
    }

    public Compte(int idcompte, double solde, int carte, boolean statut, double decouvert) {
        this.idcompte = idcompte;
        this.solde = solde;
        this.carte = carte;
        this.statut = statut;
        this.decouvert = decouvert;
    }

    public Compte(double solde, int carte, boolean statut, double decouvert, int idclient) {
        this.solde = solde;
        this.carte = carte;
        this.statut = statut;
        this.decouvert = decouvert;
        this.idclient = idclient;
    }

    public Compte(int idcompte, double solde, int carte, boolean statut, double decouvert, int idclient) {
        this.idcompte = idcompte;
        this.solde = solde;
        this.carte = carte;
        this.statut = statut;
        this.decouvert = decouvert;
        this.idclient = idclient;
    }
    
    

    public int getIdcompte() {
        return idcompte;
    }

    public double getSolde() {
        return solde;
    }

    public int getCarte() {
        return carte;
    }

    public boolean isStatut() {
        return statut;
    }

    public double getDecouvert() {
        return decouvert;
    }

    public void setIdcompte(int idcompte) {
        this.idcompte = idcompte;
    }

    public void setSolde(double solde) {
        this.solde = solde;
    }

    public void setCarte(int carte) {
        this.carte = carte;
    }

    public void setStatut(boolean statut) {
        this.statut = statut;
    }

    public void setDecouvert(double decouvert) {
        this.decouvert = decouvert;
    }

    public int getIdclient() {
        return idclient;
    }

    public void setIdclient(int idclient) {
        this.idclient = idclient;
    }

    @Override
    public String toString() {
        return "Compte{" + "idcompte=" + idcompte + ", solde=" + solde + ", carte=" + carte + ", statut=" + statut + ", decouvert=" + decouvert + ", idclient=" + idclient + '}';
    }
    
    

   

    
    
}
