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
import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.swing.JOptionPane;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author RAKIB
 */
public class LoginDAO {

    private static String er;

    //Registration New User
    public String doSave(String user, String name, String password, String email) {
        int i = 0;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rhm_bank", "root", "apcl123456");
            PreparedStatement pstmt = con.prepareStatement("INSERT INTO employee (user,name,password,email)VALUES(?,?,?,?)");
            pstmt.setString(1, user);
            pstmt.setString(2, name);
            pstmt.setString(3, password);
            pstmt.setString(4, email);
            i = pstmt.executeUpdate();
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
        if (i > 0) {
            new Email().runEmail(email, "RHM BANK", "Welcome " + name + "," + "\n\nYour Credentials:" + "\nUser: " + user + "\nName: " + name + "\nEmail: " + email + "\nPassword: " + password + "\n\nPlease Keep All Information in Safe" + "\n\nGenarate Time: " + new Date());
            return "index";
        } else {
            return "registration";
        }
    }

    //Login User
    public boolean doCheck(String user, String password) {
        int p = 10;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rhm_bank", "root", "apcl123456");
            PreparedStatement pstmt = con.prepareStatement("SELECT * FROM employee WHERE user=? AND password=?");
            pstmt.setString(1, user);
            pstmt.setString(2, password);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                p = 20;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (p == 20) {
            return true;
        } else {
            return false;
        }

    }
    
    
    //AccountHolder Login
    
    
    
     public boolean userCheck(String user, String password) {
        int p = 10;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rhm_bank", "root", "apcl123456");
            PreparedStatement pstmt = con.prepareStatement("SELECT * FROM accounts WHERE acc=? AND password=?");
            pstmt.setString(1, user);
            pstmt.setString(2, password);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                p = 20;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (p == 20) {
            return true;
        } else {
            return false;
        }

    }
    
    
    
    
    
    
    

    //Finding Data
    public List findAll() {
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        Query q = s.createQuery("FROM Employee ");
        List<Employee> li = new ArrayList<>();
        li = q.list();
        return li;

    }

    public boolean Otpcheck(int otp) {

        int p = 10;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rhm_bank", "root", "apcl123456");
            PreparedStatement pstmt = con.prepareStatement("SELECT * FROM employee WHERE otp=?");
            pstmt.setInt(1, otp);

            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                p = 30;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (p == 30) {
            new ManageOtp().DeleteOtp(otp);
            return true;

        } else {
            return false;
        }

    }
    
    
    //User Otp Check
    
    
    
     public boolean OtpcheckUser(int otp) {

        int p = 10;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rhm_bank", "root", "apcl123456");
            PreparedStatement pstmt = con.prepareStatement("SELECT * FROM accounts WHERE otp=?");
            pstmt.setInt(1, otp);

            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                p = 30;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (p == 30) {
            new ManageOtp().DeleteOtp(otp);
            return true;

        } else {
            return false;
        }

    }
    

    //Deposit Dao
    public String deposit(String acc, String name, int deposit, String deposit_by, String transaction_id) {
        String ac = "a" + acc;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rhm_bank", "root", "apcl123456");
            PreparedStatement pstmt = con.prepareStatement("INSERT INTO " + ac + " (ac_no,name,deposit,deposit_by,transaction_id,type,time)VALUES(?,?,?,?,?,?,NOW())");
            pstmt.setString(1, acc);
            pstmt.setString(2, name);
            pstmt.setInt(3, deposit);
            pstmt.setString(4, deposit_by);
            pstmt.setString(5, transaction_id);
            pstmt.setString(6, "Cr.");
            int i = pstmt.executeUpdate();
            if (i > 0) {
                PreparedStatement pstmt1 = con.prepareStatement("INSERT INTO transaction (ac_no,name,deposit,deposit_by,transaction_id,type,time)VALUES(?,?,?,?,?,?,NOW())");
                pstmt1.setString(1, acc);
                pstmt1.setString(2, name);
                pstmt1.setInt(3, deposit);
                pstmt1.setString(4, deposit_by);
                pstmt1.setString(5, transaction_id);
                pstmt1.setString(6, "Cr.");
                int i2 = pstmt1.executeUpdate();
                if (i2 > 0) {
                    String s = acc;
                    s = s.replaceAll("(^[^@]{2}|(?!^)\\G)[^@]", "$1*");
                    Date d = new Date();
                    DateFormat df = new SimpleDateFormat("dd-MMM-yyyy");
                    String sd = df.format(d);
                    //DEPOSIT Message
                    PreparedStatement pstmt2 = con.prepareStatement("SELECT email FROM accounts WHERE acc=?");
                    pstmt2.setString(1, acc);
                    ResultSet rs = pstmt2.executeQuery();
                    if (rs.next()) {
                        PreparedStatement pstmt3 = con.prepareStatement("SELECT balance FROM accounts WHERE acc=?");
                        pstmt3.setString(1, acc);
                        ResultSet rs1 = pstmt3.executeQuery();
                        if (rs1.next()) {
                            int user_balance = rs1.getInt("balance");
                            int update_bal = user_balance+deposit;
                            PreparedStatement pstmt4 = con.prepareStatement("UPDATE accounts SET balance=? WHERE acc=?");
                            pstmt4.setInt(1, update_bal);
                            pstmt4.setString(2, acc);
                            int i3 = pstmt4.executeUpdate();
                            if (i3 > 0) {
                                DecimalFormat myFormatter = new DecimalFormat("#,###");
                                String output = myFormatter.format(deposit);
                                String m = "Tk " + output+".00"+ " has been deposited to your A/C# " + s + " on " + sd + ".Your A/C balance is TK " + update_bal + ". For Enquiry call: 01710550690" + "\n\nYour Trusted," + "\n RHM BANK LIMITED";

                                new Email().runEmail(rs.getString("email"), "Transaction Alert", m);
                            }

                        }
                    }
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return "deposit";
    }

}
