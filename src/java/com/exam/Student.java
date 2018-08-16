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
import javax.swing.JOptionPane;

/**
 *
 * @author Administrator
 */
public class Student {

    private int id = 100;
    private String name = "ABC";
    private String acc = "hello";
    private String balance;
    private String anumber = "hello";
    private String check;
    
    private String mac;
    private String ab;

    public Student() {
    }

    
    
    
    public Student(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public String getCheck() {
        return check;
    }

    public void setCheck(String check,String acc) {
        String acheck = "Check Not Found";
        String check_table = "availcheck" + acc;
        

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rhm_bank","root","apcl123456");
            PreparedStatement pstmt = con.prepareStatement("SELECT * FROM "+check_table+" WHERE Checkw=?");
            pstmt.setString(1,check);
            ResultSet rs=pstmt.executeQuery();
            if(rs.next()){
               acheck= rs.getString("Checkw");
            }

        } catch (Exception e) {
        }

          this.check=acheck;
    }

    public void setName(String name) {

        String aname = "Account Not Found";
        String abalance = "Select Account";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rhm_bank", "root", "apcl123456");
            PreparedStatement statement1 = con.prepareStatement("SELECT * FROM accounts WHERE acc=?");
            statement1.setString(1, name);
            ResultSet rs = statement1.executeQuery();
            if (rs.next()) {
                aname = rs.getString("name");
                int dbalance = rs.getInt("balance");
                abalance = String.valueOf(dbalance);
            }
           

        } catch (Exception e) {
        }

        this.balance = abalance;

        this.name = aname;
        this.anumber = aname;
    }

//    public int getId() {
//        return id;
//    }
//
//    public void setId(int id) {
//        this.id = id;
//    }
//
//    public static String m1() {
//        return "Hello";
//    }
//
//    public void m2() {
//        System.out.println("World");
//    }
    public String getAcc() {
        return acc;
    }

    public void setAcc(String acc) {
        this.acc = acc;
    }

    public String getBalance() {
        return balance;
    }

    public void setBalance(String balance) {
        this.balance = balance;
    }

    public String getAnumber() {
        return anumber;
    }

    public void setAnumber(String anumber) {
        this.anumber = anumber;
    }

    public String getMac() {
        return mac;
    }

    public void setMac(String mac) {
        this.mac = mac;
    }

    public String getAb() {
        return ab;
    }

    public void setAb(String ab) {
        this.ab = ab;
    }

}
