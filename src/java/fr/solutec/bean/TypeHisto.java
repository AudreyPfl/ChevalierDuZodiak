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
public class TypeHisto {
    private int idtypeHisto;
    private String type;

    
    public TypeHisto(int idtypeHisto, String type) {
        this.idtypeHisto = idtypeHisto;
        this.type = type;
    }

    public TypeHisto() {
    }

    public TypeHisto(String type) {
        this.type = type;
    }

    public int getIdtypeHisto() {
        return idtypeHisto;
    }

    public String getType() {
        return type;
    }

    public void setIdtypeHisto(int idtypeHisto) {
        this.idtypeHisto = idtypeHisto;
    }

    public void setType(String type) {
        this.type = type;
    }
       
    
}
