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
 * @author acer
 */
public class Forget_em {

    private String email;
    private String user;

    public Forget_em() {
    }

    public Forget_em(String email) {
        this.email = email;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String Retrieve(String email) {
        String uv = "";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rhm_bank", "root", "apcl123456");
            PreparedStatement pstmt = con.prepareStatement("SELECT password FROM employee WHERE email=?");
            pstmt.setString(1, email);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                uv = rs.getString("password");
            }
            con.close();
            //System.out.println("Hello"+uv);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return uv;
    }

    public boolean Usercheck(String User) {

        int p = 10;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rhm_bank", "root", "apcl123456");
            PreparedStatement pstmt = con.prepareStatement("SELECT email FROM employee WHERE user=?");
            pstmt.setString(1, user);

            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                p = 30;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (p == 30) {
            return true;

        } else {
            return false;
        }

    }

    public String user(String user) {
        String uv = "";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rhm_bank", "root", "apcl123456");
            PreparedStatement pstmt = con.prepareStatement("SELECT email FROM employee WHERE user=?");
            pstmt.setString(1, user);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                uv = rs.getString("email");
            }
            con.close();
            //System.out.println("Hello"+uv);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return uv;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

}
