/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.dao;

import fr.solutec.bean.Admin;
import fr.solutec.bean.Conseiller;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;

/**
 *
 * @author stagiaire
 */
public class AdminDao {
    public static Admin getByLoginPass(String mail, String mdp) throws SQLException {
        Admin resultat = null;

        String sql = "SELECT * FROM admin WHERE email=? AND mdp=?";
        Connection connexion = AccessBD.getConnection();

        PreparedStatement requette = connexion.prepareStatement(sql);
        requette.setString(1, mail);
        requette.setString(2, mdp);

        ResultSet rs = requette.executeQuery();

        if (rs.next()) {
            resultat = new Admin();
            resultat.setNom(rs.getString("nom"));
            resultat.setPrenom(rs.getString("prenom"));
            resultat.setEmail(rs.getString("email"));
            resultat.setMdp(rs.getString("mdp"));
            resultat.setSexe(rs.getString("sexe"));
            resultat.setIdadmin(rs.getInt("idadmin"));
            
        }
        return resultat;
    }
    
    public static List <Conseiller> getAllConsByAdmin(Admin ad) throws SQLException{
        List <Conseiller> AllCons = new ArrayList<>(); 
        
        int Idadmin = ad.getIdadmin();
        
        String sql = "SELECT * FROM conseiller WHERE idadmin =" + Idadmin;
        Connection connexion = AccessBD.getConnection();
        
        Statement requette = connexion.createStatement();
        
        ResultSet rs = requette.executeQuery(sql);
        
        while (rs.next()){
            Conseiller cons = new Conseiller();
            cons.setIdconseiller(rs.getInt("idconseiller"));
            cons.setNom(rs.getString("nom"));
            cons.setPrenom(rs.getString("prenom"));
            cons.setEmail(rs.getString("email"));
            cons.setSexe(rs.getString("sexe"));
            cons.setMdp(rs.getString("mdp"));
            cons.setIdadmin(rs.getInt("idadmin"));
            cons.setStatut(rs.getBoolean("statut"));
            
            AllCons.add(cons);
        }
        return AllCons;
    }
            
}
