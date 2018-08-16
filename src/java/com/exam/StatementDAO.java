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
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author rhm-home
 */
public class StatementDAO {

    public List findAll(String tname, String date1, String date2) {
        String d1 = "2018-08-07 00:00:00";
        String d2 = "2018-08-07 23:59:00";
        String t = "a" + tname;

        List<Transaction_st> li = new ArrayList<>();

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rhm_bank", Password.user, Password.password);
            PreparedStatement pstmt = con.prepareStatement("SELECT * FROM " +t+ " WHERE time between '" + date1 + " 00:00:00' and '" + date2+" 23:59:00'");
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                Transaction_st sc = new Transaction_st();
                sc.setAc_no(rs.getString("ac_no"));
                sc.setTransaction_id(rs.getString("transaction_id"));
                sc.setName(rs.getString("name"));
                sc.setDeposit(rs.getInt("deposit"));
                sc.setWithdrawn(rs.getInt("withdrawn"));
                sc.setDeposit_by(rs.getString("deposit_by"));
                sc.setDate(rs.getDate("time"));
                sc.setTransfer_to(rs.getString("transfer_to"));
                sc.setTransfer_from(rs.getString("transfer_from"));
                sc.setCheck_no(rs.getString("check_no"));
                sc.setType(rs.getString("type"));
                li.add(sc);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return li;
    }

}
