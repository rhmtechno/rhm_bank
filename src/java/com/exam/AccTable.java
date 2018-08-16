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
 * @author l2pc202m
 */
public class AccTable {

    public void createTable(String db, String tname) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + db, "root", "apcl123456");
            PreparedStatement statement1 = con.prepareStatement("CREATE TABLE " + tname + " (ac_no VARCHAR(45) NOT NULL, `name` VARCHAR(45), deposit INT, withdrawn INT, deposit_by VARCHAR(45), `time` DATETIME, transfer_to VARCHAR(45), transfer_from VARCHAR(45), `transaction_id` VARCHAR(45), check_no VARCHAR(45), `type` VARCHAR(45),\n"
                    + " FOREIGN KEY(ac_no) REFERENCES accounts(acc)\n"
                    + ");");

            statement1.executeUpdate();

        } catch (Exception e) {
        }

    }

}
