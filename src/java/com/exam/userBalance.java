/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author rhm-home
 */
public class userBalance {

    String getBalance(String acc) {
        int bal = 0;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rhm_bank", Password.user, Password.password);
            PreparedStatement pstmt = con.prepareStatement("SELECT balance FROM accounts WHERE acc=?");
            pstmt.setString(1, acc);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                bal = rs.getInt("balance");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return String.valueOf(bal);

    }

}
