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
import java.util.ArrayList;
import java.util.List;

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
    
}
