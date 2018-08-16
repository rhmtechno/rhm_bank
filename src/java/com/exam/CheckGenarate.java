/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.Scanner;
import javax.swing.JOptionPane;

/**
 *
 * @author l2pc202m
 */
public class CheckGenarate {

    Connection con;
    PreparedStatement pstmt;
    PreparedStatement pstmt1;
    PreparedStatement pstmt2;

    public String checkGenarate(String db, String table, String acc, String max, int range, String name, String atmane1) throws SQLException, IOException {

        int rmax = Integer.parseInt(max);
        
        new Folder().createUserDir(name);

        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + db, "root", "apcl123456");
            pstmt = con.prepareStatement("INSERT INTO " + table + " VALUES(?,?,?,NOW())");
            pstmt1 = con.prepareStatement("INSERT INTO " + atmane1 + " VALUES(?,?,?,NOW())");
            pstmt2 = con.prepareStatement("INSERT INTO totalcheck VALUES(?,?,?,?,NOW())");
        } catch (Exception e) {
        }
 
       
        //new File("C:\\report\\"+name+"").mkdir();

        
        for (int i = 0; i < range; i++) {

            String smax = String.valueOf(rmax);
            rmax++;
            String fsmax = name + smax;

            try {
                pstmt.setString(1, acc);
                pstmt.setString(2, smax);
                pstmt.setString(3, fsmax);
                int n = pstmt.executeUpdate();
                if (n > 0) {

                    pstmt1.setString(1, acc);
                    pstmt1.setString(2, smax);
                    pstmt1.setString(3, fsmax);
                    int n1 = pstmt1.executeUpdate();
                    if (n1 > 0) {
                        pstmt2.setString(1, acc);
                        pstmt2.setString(2, name);
                        pstmt2.setString(3, smax);
                        pstmt2.setString(4, fsmax);

                        int n2 = pstmt2.executeUpdate();
                        if(n2>0){
                            new PdfGenarator().pdf(fsmax,con,name);
                            
                        }
                    }

                }

            } catch (Exception e) {
            }

            //System.out.println("Hello"+uv);
        }
        con.close();
        return "Check_Issue";

    }
    

}
