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
public class CheckValidate {

    public String setCheck(String check, String acc) {
        String acheck = "Check Not Found";
        String check_table = "availcheck" + acc;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rhm_bank", Password.user, Password.password);
            PreparedStatement pstmt = con.prepareStatement("SELECT * FROM " + check_table + " WHERE Checkw=?");
            pstmt.setString(1, check);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                acheck = rs.getString("Checkw");
            }

        } catch (Exception e) {
        }

        return acheck;
    }

}
