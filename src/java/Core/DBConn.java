/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Core;

/**
 *
 * @author Computer
 */
import Config.DB;
import java.sql.*;

public class DBConn {

    private DB DBCONFIG;
    private Connection con;
    public DBConn() {
        System.out.println("Init DB Connections");
    }
    
    public Connection Connect(){
        DBCONFIG = new DB();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://"+DBCONFIG.HOST+":"+DBCONFIG.PORT+"/"+DBCONFIG.DBNAME, DBCONFIG.USERNAME, DBCONFIG.PASSWORD);
            //here sonoo is database name, root is username and password  
//            Statement stmt = con.createStatement();
//            ResultSet rs = stmt.executeQuery("select * from users");
//            while (rs.next()) {
//                System.out.println(rs.getInt(1) + "  " + rs.getString(2) + "  " + rs.getString(3));
//            }
//            con.close();   
        } catch (Exception e) {
            System.out.println(e);
        }
        return con;
    }
        
    
    public void Close(){
        try {
            con.close();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}
