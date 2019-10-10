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
            resultat.getPersonne().setNom(rs.getString("nom"));
            resultat.getPersonne().setPrenom(rs.getString("prenom"));
            resultat.getPersonne().setEmail(rs.getString("email"));
            resultat.getPersonne().setMdp(rs.getString("mdp"));
            resultat.getPersonne().setSexe(rs.getString("sexe"));
            resultat.setIdadmin(rs.getInt("idadmin"));
            
        }
        return resultat;
    }
}
