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
public class Admin extends Personne{
    private int idadmin;

    public Admin() {
    }

    public Admin(int idadmin) {
        this.idadmin = idadmin;
    }

    public Admin(int idadmin, String nom, String prenom, String email, String sexe, String mdp) {
        super(nom, prenom, email, sexe, mdp);
        this.idadmin = idadmin;
    }

    public int getIdadmin() {
        return idadmin;
    }

    public void setIdadmin(int idadmin) {
        this.idadmin = idadmin;
    }

    @Override
    public String toString() {
        return "Admin{" + "idadmin=" + idadmin + '}';
    }
    

}

    