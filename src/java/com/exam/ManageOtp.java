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
import java.util.Date;
import javax.swing.JOptionPane;

/**
 *
 * @author rhm-home
 */
public class ManageOtp {

    public void manageOtp(String id) {

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rhm_bank", "root", "apcl123456");
            PreparedStatement pstmt = con.prepareStatement("UPDATE employee SET otp=? WHERE user=?");
            int ge_otp = new OtpGenarate().otp();
            pstmt.setInt(1, ge_otp);
            pstmt.setString(2, id);
            int i = pstmt.executeUpdate();
            if (i > 0) {
                PreparedStatement pstmt1 = con.prepareStatement("SELECT email,name FROM employee WHERE user=?");
                pstmt1.setString(1, id);

                ResultSet rs = pstmt1.executeQuery();
                if (rs.next()) {
                    String name = rs.getString("name");
                    new Email().runEmail(rs.getString("email"), "RHM BANK", "Hi " + name + "," + "\nRHM BANK One Time Password (OTP) is: " + ge_otp + "\n\nGenarate Time: " + new Date());

                    new LoginController().setGemail(rs.getString("email"));
                }

            }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public void DeleteOtp(int x) {

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rhm_bank", "root", "apcl123456");
            PreparedStatement pstmt = con.prepareStatement("UPDATE employee SET otp=? WHERE otp=?");
            pstmt.setInt(1, new OtpGenarate().otp());
            pstmt.setInt(2, x);
            int i = pstmt.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public int wrongOtp(String x) {
        int oget = 0;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rhm_bank", "root", "apcl123456");
            PreparedStatement pstmt = con.prepareStatement("SELECT otp FROM employee WHERE email=?");
            pstmt.setString(1, x);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                oget = rs.getInt("otp");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return oget;
    }

}
