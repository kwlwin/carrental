/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Core.Model;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author Computer
 */
public class Car extends Model {

    public Car() {
        super("car");
    }

    public ResultSet GetAllWithVendor() {
        ResultSet rs = null;
        try {
            Statement stmt = DBCONN.Connect().createStatement();
            rs = stmt.executeQuery("SELECT car.*, vendor.name FROM car INNER JOIN vendor ON car.vendor_id = vendor.id");

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return rs;
    }

    public ResultSet GetWithVendor(String key, String value) {
        ResultSet rs = null;
        try {
            Statement stmt = DBCONN.Connect().createStatement();
            rs = stmt.executeQuery("SELECT car.*, vendor.name FROM car INNER JOIN vendor ON car.vendor_id = vendor.id WHERE " + key + "='" + value + "'");

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return rs;
    }

    public ResultSet SearhCars(HttpServletRequest request) {
        ResultSet rs = null;
        try {

            String rent_type = request.getParameter("rent_type");
            String direction = request.getParameter("direction");

            Statement stmt = DBCONN.Connect().createStatement();
            String SQL = "SELECT car.*, vendor.name FROM car INNER JOIN vendor ON car.vendor_id = vendor.id ";
            String JOIN = "";
            if (!rent_type.equals("both") && !direction.equals("both")) {
                JOIN = "WHERE car.rent_type='" + rent_type + "' AND car.booking_accept_type='" + direction + "'";
            }
            if (rent_type.equals("both") && !direction.equals("both")) {
                JOIN = "WHERE car.booking_accept_type='" + direction + "'";
            }
            if (!rent_type.equals("both") && direction.equals("both")) {
                JOIN = "WHERE car.rent_type='" + rent_type + "'";
            }

            System.out.println(SQL + JOIN);
            rs = stmt.executeQuery(SQL + JOIN);

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return rs;
    }

}
