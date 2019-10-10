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
        String sql = "SELECT idconseiller FROM client GROUP BY idconseiller HAVING COUNT(idclient)<4 LIMIT 1;";
        Connection connexion = AccessBD.getConnection();
        Statement requette = connexion.createStatement();  
        ResultSet rs = requette.executeQuery(sql);
        
        if(rs.next()){
            id = rs.getInt("idconseiller");
        }
        return id;
    }    
}
