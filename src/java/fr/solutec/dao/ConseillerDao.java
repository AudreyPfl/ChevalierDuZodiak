/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.dao;

import fr.solutec.bean.*;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author esic
 */
public class ConseillerDao {
    
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
