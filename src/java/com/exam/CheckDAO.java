/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/**
 *
 * @author rhm-home
 */
public class CheckDAO {

    public void check_gn(String db, String tname) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + db, "root", "apcl123456");
            PreparedStatement statement1 = con.prepareStatement("CREATE TABLE "+tname+" (\n"
                    + "  `acc` VARCHAR(45) NOT NULL,\n"
                    + "  `check_no` VARCHAR(45) NOT NULL,\n"
                    + "  `Checkw` VARCHAR(45) NOT NULL,\n"
                    + "  `date` DATETIME NULL,\n"
                    + " FOREIGN KEY(acc) REFERENCES accounts(acc)\n"
                    + "\n"
                    + ");");

            statement1.executeUpdate();

        } catch (Exception e) {
        }

    }

}
