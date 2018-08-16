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
 * @author rhm-home
 */
public class Check {
        
    private String acc;
    private int range;
    private String name;
    private String check_no;
    private String check;
    private Date date;
    private Date time;
    
    
    
    

    public Check() {
    }
    
   public List scheck(String db,String tname) {
        List<Check> sc = new ArrayList<>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + db, "root", "apcl123456");
            PreparedStatement pstmt = con.prepareStatement("SELECT *FROM "+tname);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                Check sc1 = new Check();
                sc1.setAcc(rs.getString("acc"));
                sc1.setCheck_no(rs.getString("check_no"));
                sc1.setCheck(rs.getString("Checkw"));
                sc1.setDate(rs.getDate("date"));
                sc1.setTime(rs.getTime("date"));
                sc.add(sc1);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return sc;
    }

    
    
    

    public String getAcc() {
        return acc;
    }

    public void setAcc(String acc) {
        this.acc = acc;
    }

    public int getRange() {
        return range;
    }

    public void setRange(int range) {
        this.range = range;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCheck_no() {
        return check_no;
    }

    public void setCheck_no(String check_no) {
        this.check_no = check_no;
    }

    public String getCheck() {
        return check;
    }

    public void setCheck(String check) {
        this.check = check;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }
    
    
    
    
}
