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
public class Admin {
    private int idadmin;
    private Personne personne;

    public Admin(int idadmin, Personne personne) {
        this.idadmin = idadmin;
        this.personne = personne;
    }

    public Admin() {
    }

    public int getIdadmin() {
        return idadmin;
    }

    public Personne getPersonne() {
        return personne;
    }

    public void setIdadmin(int idadmin) {
        this.idadmin = idadmin;
    }

    public void setPersonne(Personne personne) {
        this.personne = personne;
    }

    @Override
    public String toString() {
        return "Admin{" + "idadmin=" + idadmin + ", personne=" + personne + '}';
    }
    
    
    
}
