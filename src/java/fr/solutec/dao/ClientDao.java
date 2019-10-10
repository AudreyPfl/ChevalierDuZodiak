/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.dao;

import fr.solutec.bean.Client;
import fr.solutec.bean.Personne;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author stagiaire
 */
public class ClientDao {
     public static Client getByLoginPass(String mail, String mdp) throws SQLException {
        Client resultat = null;

        String sql = "SELECT * FROM client WHERE email=? AND mdp=?";
        Connection connexion = AccessBD.getConnection();

        PreparedStatement requette = connexion.prepareStatement(sql);
        requette.setString(1, mail);
        requette.setString(2, mdp);

        ResultSet rs = requette.executeQuery();

        if (rs.next()) {
            resultat = new Client();
            resultat.getPersonne().setNom(rs.getString("nom"));
            resultat.getPersonne().setPrenom(rs.getString("prenom"));
            resultat.getPersonne().setEmail(rs.getString("email"));
            resultat.getPersonne().setMdp(rs.getString("mdp"));
            resultat.getPersonne().setSexe(rs.getString("sexe"));
            resultat.setIdclient(rs.getInt("idclient"));
            resultat.setIdconseiller(rs.getInt("idconseiller"));
            resultat.setStatut(rs.getBoolean("statut"));
            
        }
        return resultat;
    }
}
