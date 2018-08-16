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
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 *
 * @author l2pc202m
 */
public class ViewCheck {

   

    public ViewCheck() {
    }

    public List viewCheck(String db, String tname) {
        List<Check> li = new ArrayList<>();

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + db, "root", "apcl123456");
            PreparedStatement pstmt = con.prepareStatement("SELECT * FROM " + tname);
            ResultSet rs = pstmt.executeQuery();
            Check vc = new Check();
            while (rs.next()) {
                vc.setAcc(rs.getString("acc"));
                vc.setCheck_no(rs.getString("check_no"));
                vc.setCheck(rs.getString("check"));
                vc.setDate(rs.getDate("date"));
                li.add(vc);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return li;
    }

   
    

}
