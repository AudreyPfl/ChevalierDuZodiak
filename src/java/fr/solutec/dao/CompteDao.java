/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.dao;

import fr.solutec.bean.Client;
import fr.solutec.bean.Compte;
import fr.solutec.bean.Historique;
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
    
    public static List<Compte> getAllCompteByClient(Client c) throws SQLException{
        List<Compte> result = new ArrayList<>();
        int id = c.getIdclient();
        
        String sql = "SELECT * FROM compte WHERE idclient=" + id ;
        Connection connexion = AccessBD.getConnection();
       
        Statement requete = connexion.createStatement();
        
        ResultSet rs = requete.executeQuery(sql);
        
        while(rs.next()){
            Compte co = new Compte();
            co.setCarte(rs.getInt("carte"));
            co.setDecouvert(rs.getDouble("decouvert"));
            co.setIdclient(rs.getInt("idclient"));
            co.setIdcompte(rs.getInt("idcompte"));
            co.setSolde(rs.getDouble("solde"));
            
            result.add(co);
        }
                
        return result;       
    }
    
    public static List<Historique> getAllHistoByCompte(int id) throws SQLException{
        List<Historique> result = new ArrayList<>();
        
        
        String sql = "SELECT * FROM historique h INNER JOIN typehisto t ON h.idtypeHisto = t.idtypeHisto WHERE idcompte =" + id ;
        Connection connexion = AccessBD.getConnection();
       
        Statement requete = connexion.createStatement();
        
        ResultSet rs = requete.executeQuery(sql);
        
        while(rs.next()){
            Historique h = new Historique();
            h.setIdhistorique(rs.getInt("idhistorique"));
            h.setDate(rs.getDate("date"));
            h.setIdtypeHisto(rs.getInt("idtypeHisto"));
            h.setIdcompte(rs.getInt("idcompte"));
            h.setType(rs.getString("type"));
                        
            result.add(h);
        }
                
        return result;       
    }
    
}
