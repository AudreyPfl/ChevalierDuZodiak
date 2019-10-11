/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.dao;

import fr.solutec.bean.*;
import fr.solutec.bean.Conseiller;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author stagiaire
 */
public class ConseillerDao {
    public static Conseiller getByLoginPass(String mail, String mdp) throws SQLException {
        Conseiller resultat = null;

        String sql = "SELECT * FROM conseiller WHERE email=? AND mdp=?";
        Connection connexion = AccessBD.getConnection();

        PreparedStatement requette = connexion.prepareStatement(sql);
        requette.setString(1, mail);
        requette.setString(2, mdp);

        ResultSet rs = requette.executeQuery();

        if (rs.next()) {
            resultat = new Conseiller();
            resultat.setNom(rs.getString("nom"));
            resultat.setPrenom(rs.getString("prenom"));
            resultat.setEmail(rs.getString("email"));
            resultat.setMdp(rs.getString("mdp"));
            resultat.setSexe(rs.getString("sexe"));
            
        }
        return resultat;
    }
    
    public static int ConseillerDispo() throws SQLException{
        int id = 0;
        String sql = "SELECT conseiller.idconseiller FROM client RIGHT JOIN conseiller ON (conseiller.idconseiller = client.idconseiller) GROUP BY conseiller.idconseiller HAVING COUNT(conseiller.idconseiller)<4 LIMIT 1;";
        Connection connexion = AccessBD.getConnection();
        Statement requette = connexion.createStatement();  
        ResultSet rs = requette.executeQuery(sql);
        
        if(rs.next()){
            id = rs.getInt("idconseiller");
        }
        return id;
    }
    
        public static Conseiller getConsByClient(Client c) throws SQLException{
        Conseiller cons = new Conseiller();
        int id = c.getIdconseiller();
        
        String sql = "SELECT * FROM conseiller WHERE idconseiller=" + id ;
        Connection connexion = AccessBD.getConnection();
       
        Statement requete = connexion.createStatement();
        
        ResultSet rs = requete.executeQuery(sql);
        
        if(rs.next()){
            cons.setEmail(rs.getString("email"));
           // String test = rs.getString("email");
            cons.setNom(rs.getString("nom"));
            cons.setPrenom(rs.getString("prenom"));       
            
        }
                
        return cons;       
    }
        
        public static void ActDesact(Conseiller cons) throws SQLException{
            int id = cons.getIdconseiller();
            
        String sql = "SELECT statut FROM conseiller WHERE idconseiller=" + id ;
        Connection connexion = AccessBD.getConnection();
       
        Statement requete = connexion.createStatement();
        
        ResultSet rs = requete.executeQuery(sql);
        
        if(rs.next()){
            cons.setStatut(rs.getBoolean("statut"));
            
        }
        
        if(cons.isStatut()){
            
            String sql2 = "UPDATE conseiller SET statut =0 WHERE idconseiller=" + id ;
            
        Connection connexion2 = AccessBD.getConnection();
       
        Statement requete2 = connexion2.createStatement();
        
        ResultSet rs2 = requete2.executeQuery(sql2);
        
        }else{
            String sql3 = "UPDATE conseiller SET statut =1 WHERE idconseiller=" + id ;
            
        Connection connexion3 = AccessBD.getConnection();
       
        Statement requete3 = connexion3.createStatement();
        
        ResultSet rs3 = requete3.executeQuery(sql3);
            
        }
    
    
    
    
    }
    
}
