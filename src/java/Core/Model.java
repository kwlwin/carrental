/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Core;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Map;
import java.util.StringJoiner;

/**
 *
 * @author Computer
 */
public class Model {

    public DBConn DBCONN;
    public String Tabel;

    public Model(String Tabel) {
        DBCONN = new DBConn();
        this.Tabel = Tabel;
    }

    public int GetCount() {
        ResultSet rs = null;
        int RowCount = 0;
        try {
            Statement stmt = DBCONN.Connect().createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_READ_ONLY);
            rs = stmt.executeQuery("select * from " + this.Tabel);
            rs.last();
            RowCount = rs.getRow();
            rs.beforeFirst();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return RowCount;
    }

    public ResultSet GetAll() {
        ResultSet rs = null;
        try {
            Statement stmt = DBCONN.Connect().createStatement();
            rs = stmt.executeQuery("select * from " + this.Tabel);

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return rs;
    }

    public ResultSet GetBy(String key, String value) {
        ResultSet rs = null;
        try {
            Statement stmt = DBCONN.Connect().createStatement();
            rs = stmt.executeQuery("SELECT * FROM " + this.Tabel + " WHERE " + key + "='" + value + "'");

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return rs;
    }

    public void Insert(Map<String, String> map) {
        String SQL = "INSERT INTO " + this.Tabel;

        StringJoiner KEYS = new StringJoiner(",");
        StringJoiner VALUES = new StringJoiner(",");
        for (String key : map.keySet()) {
            KEYS.add(key);
            VALUES.add("'" + map.get(key) + "'");
        }
        String KeyJoined = KEYS.toString();
        String ValueJoined = VALUES.toString();
        System.out.println(SQL + "(" + KeyJoined + ") VALUES(" + ValueJoined + ")");

        try {
            Statement stmt = DBCONN.Connect().createStatement();
            stmt.execute(SQL + "(" + KeyJoined + ") VALUES(" + ValueJoined + ")");

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    public void Update(Map<String, String> map, String Key) {
        String SQL = "UPDATE " + this.Tabel + " SET ";

        StringJoiner KEYS = new StringJoiner(",");
        for (String key : map.keySet()) {
            KEYS.add(key + "='" + map.get(key) + "'");
        }
        String KeyJoined = KEYS.toString();
        System.out.println(SQL + KeyJoined + " WHERE id=" + Key);

        try {
            Statement stmt = DBCONN.Connect().createStatement();
            stmt.execute(SQL + KeyJoined + " WHERE id=" + Key);

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    public void Delete(String key, String value) {
        try {
            Statement stmt = DBCONN.Connect().createStatement();
            stmt.execute("DELETE FROM " + this.Tabel + " WHERE " + key + "='" + value + "'");

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}
