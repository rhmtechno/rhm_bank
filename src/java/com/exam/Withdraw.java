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
import java.util.Date;
import javax.swing.JOptionPane;

/**
 *
 * @author java.idbbisew
 */
public class Withdraw {

    private String acc;
    private String name;
    private String check;
    private int amount;
    private String withdrawn_by;

    public Withdraw() {
    }

    public Withdraw(String acc, String name, String check, int amount, String withdrawn_by) {
        this.acc = acc;
        this.name = name;
        this.check = check;
        this.amount = amount;
        this.withdrawn_by = withdrawn_by;
    }

    public String getWithdrawn_by() {
        return withdrawn_by;
    }

    public void setWithdrawn_by(String withdrawn_by) {
        this.withdrawn_by = withdrawn_by;
    }

    public String getAcc() {
        return acc;
    }

    public void setAcc(String acc) {
        this.acc = acc;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCheck() {
        return check;
    }

    public void setCheck(String check) {
        this.check = check;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public String withdrawn(String acc, String name, int amount, String withdrawn_by, String check, String transaction_id) {
        String table_name = "a" + acc;
        String ctable = "availcheck" + acc;
        int acc_balance = 0;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rhm_bank", Password.user, Password.password);
            PreparedStatement pstmt = con.prepareStatement("SELECT balance FROM accounts WHERE acc=?");
            pstmt.setString(1, acc);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                acc_balance = rs.getInt("balance");
            }
            int minimum_bal = acc_balance - amount;
            if (minimum_bal < 1000) {
                JOptionPane.showMessageDialog(null, "Must Keep Minimum Balance 1000 Tk");
            } else {

                String dbCheck = new CheckValidate().setCheck(check, acc);
                if (check.equals(dbCheck)) {

                    PreparedStatement pstmt1 = con.prepareStatement("INSERT INTO transaction (ac_no,name,withdrawn,transaction_id,check_no,type,deposit_by,time)VALUES(?,?,?,?,?,?,?,NOW())");
                    pstmt1.setString(1, acc);
                    pstmt1.setString(2, name);
                    pstmt1.setInt(3, amount);
                    pstmt1.setString(4, transaction_id);
                    pstmt1.setString(5, check);
                    pstmt1.setString(6, "Dr");
                    pstmt1.setString(7, withdrawn_by);
                    int i = pstmt1.executeUpdate();
                    if (i > 0) {
                        PreparedStatement pstmt2 = con.prepareStatement("DELETE FROM " + ctable + " WHERE Checkw=?");
                        pstmt2.setString(1, check);
                        int i2 = pstmt2.executeUpdate();
                        if (i2 > 0) {

                            PreparedStatement pstmt3 = con.prepareStatement("INSERT INTO " + table_name + " (ac_no,name,withdrawn,transaction_id,check_no,type,deposit_by,time)VALUES(?,?,?,?,?,?,?,NOW())");
                            pstmt3.setString(1, acc);
                            pstmt3.setString(2, name);
                            pstmt3.setInt(3, amount);
                            pstmt3.setString(4, transaction_id);
                            pstmt3.setString(5, check);
                            pstmt3.setString(6, "Dr");
                            pstmt3.setString(7, withdrawn_by);
                            int i3 = pstmt3.executeUpdate();
                            if (i3 > 0) {
                                PreparedStatement pstmt4 = con.prepareStatement("SELECT balance FROM accounts WHERE acc=?");
                                pstmt4.setString(1, acc);
                                ResultSet rs4 = pstmt4.executeQuery();
                                if (rs4.next()) {
                                    int user_balance = rs4.getInt("balance") - amount;

                                    PreparedStatement pstmt5 = con.prepareStatement("UPDATE accounts SET balance=? WHERE acc=?");
                                    pstmt5.setInt(1, user_balance);
                                    pstmt5.setString(2, acc);
                                    int i4 = pstmt5.executeUpdate();
                                    if (i4 > 0) {
                                         
                                        PreparedStatement pstmt6 = con.prepareStatement("SELECT email FROM accounts WHERE acc=?");
                                        pstmt6.setString(1, acc);
                                        ResultSet rs5 = pstmt6.executeQuery();
                                        if(rs5.next()){
                                         String email=rs5.getString("email");
                                         
                                         String s = acc;
                                        s = s.replaceAll("(^[^@]{2}|(?!^)\\G)[^@]", "$1*");
                                        Date d = new Date();
                                        DateFormat df = new SimpleDateFormat("dd-MMM-yyyy");
                                        String sd = df.format(d);

                                        DecimalFormat myFormatter = new DecimalFormat("#,###");
                                        String output = myFormatter.format(amount);
                                        String m = "Tk " + output + ".00" + " has been Withdrawn to your A/C# " + s + " on " + sd + ".Your A/C balance is TK " + user_balance + ". For Enquiry call: 01710550690" + "\n\nYour Trusted," + "\n RHM BANK LIMITED";

                                        new Email().runEmail(email, "Transaction Alert", m);
                                            
                                        }
                                       

                                    }

                                }

//                               
                            }

                        } else {
                            // if check not Delete
                        }

                    }

                } else {
                    JOptionPane.showMessageDialog(null, "onvalid Check");
                }

            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return "withdraw";
    }

}
