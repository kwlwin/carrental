/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Core.Model;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author Computer
 */
public class Booking extends Model {

    public Booking() {
        super("booking");
    }

    public ResultSet getAllBooking() {
        ResultSet rs = null;
        try {
            Statement stmt = DBCONN.Connect().createStatement();
            rs = stmt.executeQuery("SELECT\n"
                    + "  booking.id,\n"
                    + "  booking.booking_date,\n"
                    + "  booking.departure,\n"
                    + "  booking.arrival,\n"
                    + "  booking.status,\n"
                    + "  car.car_no,\n"
                    + "  city.name AS fromlocation,\n"
                    + "  vendor.name,\n"
                    + "  user.first_name,\n"
                    + "  user.last_name,\n"
                    + "  user.email,\n"
                    + "  user.phone,\n"
                    + "  city1.name AS tolocation\n"
                    + "FROM\n"
                    + "  booking\n"
                    + "  LEFT JOIN city ON booking.from_location = city.id\n"
                    + "  LEFT JOIN car ON booking.car_id = car.id\n"
                    + "  LEFT JOIN vendor ON car.vendor_id = vendor.id\n"
                    + "  LEFT JOIN user ON booking.customer_id = user.id\n"
                    + "  LEFT JOIN city city1 ON booking.to_location = city1.id");

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return rs;
    }

    public ResultSet getByBooking(String key, String value) {
        ResultSet rs = null;
        try {
            Statement stmt = DBCONN.Connect().createStatement();
            rs = stmt.executeQuery("SELECT\n"
                    + "  booking.id,\n"
                    + "  booking.booking_date,\n"
                    + "  booking.departure,\n"
                    + "  booking.arrival,\n"
                    + "  car.car_no,\n"
                    + "  city.name AS fromlocation,\n"
                    + "  vendor.name,\n"
                    + "  user.first_name,\n"
                    + "  user.last_name,\n"
                    + "  user.email,\n"
                    + "  user.phone,\n"
                    + "  city1.name AS tolocation\n"
                    + "FROM\n"
                    + "  booking\n"
                    + "  LEFT JOIN city ON booking.from_location = city.id\n"
                    + "  LEFT JOIN car ON booking.car_id = car.id\n"
                    + "  LEFT JOIN vendor ON car.vendor_id = vendor.id\n"
                    + "  LEFT JOIN user ON booking.customer_id = user.id\n"
                    + "  LEFT JOIN city city1 ON booking.to_location = city1.id\n"
                    + " WHERE " + key + "='" + value + "'");

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return rs;
    }
}
