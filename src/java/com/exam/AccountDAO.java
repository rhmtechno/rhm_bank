/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/**
 *
 * @author RAKIB
 */
public class AccountDAO {
    private static String email_accno="";
    

      public static String m1() {
        String ac = new Auto_Increment().auto_inrement_String("rhm_bank", "accounts", "acc");
        
        return ac;
    }

    public void doSave(String name, String father, String mother, Date dob, String gender, String mobile, String email, String address, String type, int balance, String password) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rhm_bank", "root", "apcl123456");
            PreparedStatement pstmt = con.prepareStatement("INSERT INTO accounts (acc,name,father,mother,dob,gender,mobile,email,address,type,balance,password,open)VALUES(?,?,?,?,?,?,?,?,?,?,?,?,NOW())");
            String ac = new Auto_Increment().auto_inrement_String("rhm_bank", "accounts", "acc");
            email_accno=ac;
            pstmt.setString(1, ac);
            pstmt.setString(2, name);
            pstmt.setString(3, father);
            pstmt.setString(4, mother);
            pstmt.setDate(5, dob);
            pstmt.setString(6, gender);
            pstmt.setString(7, mobile);
            pstmt.setString(8, email);
            pstmt.setString(9, address);
            pstmt.setString(10, type);
            pstmt.setInt(11, balance);
            pstmt.setString(12, password);
            int i = pstmt.executeUpdate();
            if (i > 0) {
                String tname = "A" + ac;
                new AccTable().createTable("rhm_bank", tname);
                String mainCheckTabke = "allCheck" + ac;
                String availCheck = "availCheck" + ac;

                new CheckDAO().check_gn("rhm_bank", mainCheckTabke);
                new CheckDAO().check_gn("rhm_bank", availCheck);

            }
        } catch (Exception e) {
        }

    }

    public String getEmail_accno() {
        return email_accno;
    }

    public void setEmail_accno(String email_accno) {
        this.email_accno = email_accno;
    }

}
