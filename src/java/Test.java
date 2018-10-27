
import java.sql.Timestamp;
import java.util.Date;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Computer
 */
public class Test {

    public static void main(String[] args) {
        Date date = new Date("7/25/2018");
        Timestamp ts = new Timestamp(date.getTime());
        System.out.println(ts.getTime());

    }

}
