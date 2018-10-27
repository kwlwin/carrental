package Model;

import Core.Model;
import java.sql.ResultSet;
import java.sql.Statement;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Computer
 */
public class User extends Model{

    public User() {
        super("user");
    }
    
    public ResultSet CheckUser(String UserName, String Password){

        ResultSet rs = null;
        try {
            Statement stmt = DBCONN.Connect().createStatement();
            rs = stmt.executeQuery("SELECT * FROM " + this.Tabel + " WHERE email='" + UserName + "' AND password='" + Password + "'");
                    

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return rs;
    }
    
}
