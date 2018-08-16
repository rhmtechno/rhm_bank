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
 * @author l2pc202m
 */
public class Auto_Increment {

    public String auto_inrement_String(String db, String tname, String colname) {
        String uv1 = "";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + db, "root", "apcl123456");
            PreparedStatement pstmt = con.prepareStatement("SELECT MAX("+colname+")FROM " + tname);
            ResultSet rs = pstmt.executeQuery();
            String max_id;
            while (rs.next()) {
                max_id = rs.getString("MAX(" + colname + ")");
                if (max_id == null) {
                    max_id = "999";
                } else {
                    max_id = rs.getString("MAX(" + colname + ")");
                }
                int in = Integer.parseInt(max_id);
                int i2 = in + 1;
                String id_s = String.valueOf(i2);
                uv1 = id_s;
            }

            //System.out.println("Hello"+uv);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return uv1;
    }

    public int auto_inrement_int(String db, String tname, String colname) {
        int i2 = 0;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + db, "root", "apcl123456");
            PreparedStatement pstmt = con.prepareStatement("SELECT MAX("+colname+")FROM " + tname);
            ResultSet rs = pstmt.executeQuery();
            int max_id;
            while (rs.next()) {
                max_id = rs.getInt("MAX(" + colname + ")");
                if (max_id == 0) {
                    max_id = 999;
                } else {
                    max_id = rs.getInt("MAX(" + colname + ")");
                }
                i2 = max_id + 1;
            }
            //System.out.println("Hello"+uv);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i2;
    }

}
