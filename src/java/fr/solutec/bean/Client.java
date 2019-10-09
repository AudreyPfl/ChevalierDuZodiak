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
public class Client {
    private int idclient;
    private Personne personne;
    private int idcompte;
    private int idconseiller;

    public Client() {
    }

    public Client(int idclient, Personne personne, int idcompte, int idconseiller) {
        this.idclient = idclient;
        this.personne = personne;
        this.idcompte = idcompte;
        this.idconseiller = idconseiller;
     
    }

    public Client(Personne personne, int idcompte, int idconseiller) {
        this.personne = personne;
        this.idcompte = idcompte;
        this.idconseiller = idconseiller;
    }
    
    

    public int getIdclient() {
        return idclient;
    }

    public Personne getPersonne() {
        return personne;
    }

    public int getIdcompte() {
        return idcompte;
    }

    public int getIdconseiller() {
        return idconseiller;
    }

    public void setIdclient(int idclient) {
        this.idclient = idclient;
    }

    public void setPersonne(Personne personne) {
        this.personne = personne;
    }

    public void setIdcompte(int idcompte) {
        this.idcompte = idcompte;
    }

    public void setIdconseiller(int idconseiller) {
        this.idconseiller = idconseiller;
    }

    @Override
    public String toString() {
        return "Client{" + "idclient=" + idclient + ", personne=" + personne + ", idcompte=" + idcompte + ", idconseiller=" + idconseiller + '}';
    }

    
    
    
    
    
}
