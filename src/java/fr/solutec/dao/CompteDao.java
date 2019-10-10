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

/**
 *
 * @author esic
 */
public class CompteDao {
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
    }
    
    public static Compte InsertLastCompte() throws SQLException{
        
        String sql1 = "INSERT INTO compte (solde, carte, statut, decouvert) VALUES (0, 0, 1, 0)";
        Connection connexion = AccessBD.getConnection();
        PreparedStatement requette1 = connexion.prepareStatement(sql1);
        requette1.execute();
        
        Compte compte = new Compte();
        String sql2 = "SELECT * FROM compte ORDER BY idcompte DESC LIMIT 1";
        PreparedStatement requette2 = connexion.prepareStatement(sql2);
        ResultSet rs2 = requette2.executeQuery(sql2);
        
        if(rs2.next()){
            compte.setIdcompte(rs2.getInt("idcompte"));
            compte.setSolde(rs2.getDouble("solde"));
            compte.setCarte(rs2.getInt("carte"));
            compte.setStatut(rs2.getBoolean("statut"));
            compte.setDecouvert(rs2.getDouble("decouvert"));
        }
        return compte;
    }
    
}
