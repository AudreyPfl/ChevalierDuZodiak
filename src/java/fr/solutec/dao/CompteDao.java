/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.dao;

import fr.solutec.bean.Client;
import fr.solutec.bean.Compte;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author esic
 */
public class CompteDao {
    
    /*
    public static Compte getCompteClient(Client client) throws SQLException {
        Compte c = new Compte();

        String sql = "SELECT * FROM compte WHERE idcompte=?";
        Connection connexion = AccessBD.getConnection();
        
        PreparedStatement requete = connexion.prepareStatement(sql);
        requete.setInt(1, client.getIdcompte());
        
        ResultSet rs = requete.executeQuery(sql);

        if(rs.next()) {
            
            c.setIdcompte(rs.getInt("idcompte"));
            c.setSolde(rs.getDouble("solde"));
            c.setCarte(rs.getInt("carte"));
            c.setStatut(rs.getBoolean("statut"));
            c.setDecouvert(rs.getDouble("decouvert"));

            
        }

        return c;
    }*/
    
    public static void CreateCompteClient(Client c) throws SQLException{
        
        String sql1 = "INSERT INTO compte (solde, carte, statut, decouvert, idclient) VALUES (0, 0, 1, 0, ?)";
        Connection connexion1 = AccessBD.getConnection();
        PreparedStatement requette1 = connexion1.prepareStatement(sql1, Statement.RETURN_GENERATED_KEYS);
        requette1.setInt(1, c.getIdclient());
        requette1.execute();
        ResultSet rs = requette1.getGeneratedKeys();
        
        int id = 0;
        if (rs.next()) {
            id = rs.getInt(1);     
        }
        String sql2 = "UPDATE compte SET carte = ? WHERE idcompte=" + id;
        PreparedStatement requette2 = connexion1.prepareStatement(sql2);
        requette2.setInt(1, id);
        requette2.execute();
    }
    
}
