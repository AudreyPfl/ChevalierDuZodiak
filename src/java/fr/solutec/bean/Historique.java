/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.bean;

import java.util.Date;

/**
 *
 * @author esic
 */
public class Historique {
    private int idhistorique;
    private Date date;
    private int idadmin;
    private int idconseiller;
    private int idclient;
    private int idtypeHisto;

    public Historique() {
    }

    public Historique(int idhistorique, Date date, int idadmin, int idconseiller, int idclient, int idtypeHisto) {
        this.idhistorique = idhistorique;
        this.date = date;
        this.idadmin = idadmin;
        this.idconseiller = idconseiller;
        this.idclient = idclient;
        this.idtypeHisto = idtypeHisto;
    }

    public Historique(Date date, int idadmin, int idtypeHisto) {
        this.date = date;
        this.idadmin = idadmin;
        this.idtypeHisto = idtypeHisto;
    }

    public int getIdhistorique() {
        return idhistorique;
    }

    public Date getDate() {
        return date;
    }

    public int getIdadmin() {
        return idadmin;
    }

    public int getIdconseiller() {
        return idconseiller;
    }

    public int getIdclient() {
        return idclient;
    }

    public int getIdtypeHisto() {
        return idtypeHisto;
    }

    public void setIdhistorique(int idhistorique) {
        this.idhistorique = idhistorique;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public void setIdadmin(int idadmin) {
        this.idadmin = idadmin;
    }

    public void setIdconseiller(int idconseiller) {
        this.idconseiller = idconseiller;
    }

    public void setIdclient(int idclient) {
        this.idclient = idclient;
    }

    public void setIdtypeHisto(int idtypeHisto) {
        this.idtypeHisto = idtypeHisto;
    }

    @Override
    public String toString() {
        return "Historique{" + "idhistorique=" + idhistorique + ", date=" + date + ", idadmin=" + idadmin + ", idconseiller=" + idconseiller + ", idclient=" + idclient + ", idtypeHisto=" + idtypeHisto + '}';
    }
    
    
    
}
