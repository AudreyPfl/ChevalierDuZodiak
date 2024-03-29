/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.dao;

import fr.solutec.bean.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Joel B
 */
public class UserDao {

    public static Personne getByLoginPass(String mail, String mdp) throws SQLException {
        Personne resultat = null;

        String sql = "SELECT * FROM personne WHERE email=? AND mdp=?";
        Connection connexion = AccessBD.getConnection();

     PreparedStatement requette = connexion.prepareStatement(sql);
     requette.setString(1, mail);
     requette.setString(2, mdp);

     ResultSet rs = requette.executeQuery();

        if (rs.next()) {
            resultat = new Personne();
            resultat.setNom(rs.getString("nom"));
            resultat.setPrenom(rs.getString("prenom"));
            resultat.setEmail(rs.getString("email"));
            resultat.setMdp(rs.getString("mdp"));
            resultat.setSexe(rs.getString("sexe"));
            
        }
        return resultat;
    }


    public static Client insertClient(Client client) throws SQLException {
        Client c = null;
        String sql = "INSERT INTO client (nom, prenom, email, sexe, mdp, idconseiller, statut) VALUES (?, ?, ?, ?, ?, ?, ?)";
        Connection connexion = AccessBD.getConnection();
        PreparedStatement requette = connexion.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
        requette.setString(1, client.getNom());
        requette.setString(2, client.getPrenom());
        requette.setString(3, client.getEmail());
        requette.setString(4, client.getSexe());
        requette.setString(5, client.getMdp());
        requette.setInt(6, client.getIdconseiller());
        requette.setBoolean(7, client.isStatut());
        
        requette.execute();
        ResultSet rs = requette.getGeneratedKeys();

        if (rs.next()) {
            c = new Client();
            c.setIdclient(rs.getInt(1));        
        }
        return c;
    }
    public static void insertConseiller(Conseiller cons) throws SQLException {
        
        String sql = "INSERT INTO conseiller (nom, prenom, email, sexe, mdp, idadmin, statut) VALUES (?, ?, ?, ?, ?, ?, ?)";
        Connection connexion = AccessBD.getConnection();
        PreparedStatement requette = connexion.prepareStatement(sql);
        requette.setString(1, cons.getNom());
        requette.setString(2, cons.getPrenom());
        requette.setString(3, cons.getEmail());
        requette.setString(4, cons.getSexe());
        requette.setString(5, cons.getMdp());
        requette.setInt(6, cons.getIdadmin());
        requette.setBoolean(7, cons.isStatut());
        
        requette.execute();
       
    }
    
   
    /*
     public static List<Client> getAllClient() throws SQLException {
     List<Client> result = new ArrayList<>();

     String sql = "SELECT * FROM user";
     Connection connexion = AccessBD.getConnection();

     Statement requette = connexion.createStatement();

     ResultSet rs = requette.executeQuery(sql);

     while (rs.next()) {
     Client u = new Client();
     u.setId(rs.getInt("iduser"));
     u.setNom(rs.getString("nom"));
     u.setPrenom(rs.getString("prenom"));
     u.setEmail(rs.getString("mail"));

     result.add(u);
     }

     return result;
     }
     */
    /*
     public static ConseillerNbClient(Conseiller cons) throws SQLException {
        
     int NbClient = 0;
     String sql = "SELECT COUNT(*) FROM client WHERE idconseiller=" + cons.getIdconseiller();
     Connection connexion = AccessBD.getConnection();

     Statement requette = connexion.createStatement();

     ResultSet rs = requette.executeQuery(sql);
        
     if(rs.next()){
     NbClient = rs.;
     }
     return NbClient;
     }
     */

}
