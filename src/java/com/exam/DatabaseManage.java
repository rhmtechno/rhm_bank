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
import java.util.Scanner;

/**
 *
 * @author RAKIB
 */
public class DatabaseManage {

    public void find(String dbNmae) {
        String db = "";
        boolean r = false;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + dbNmae, "root", "apcl123456");
            PreparedStatement pstmt = con.prepareStatement("SELECT DATABASE()");
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                db = rs.getString("DATABASE()");
                r = true;
            }
            if (db.equals(dbNmae) && r == true) {
                System.out.println("Database Exist. Db name is: " + db);
                TableCreate em = new TableCreate();
                new TableCreate().createTable("rhm_bank", "accounts", em.getCreate());
                new TableCreate().createTable("rhm_bank", "employee", em.getEmployee());
                new TableCreate().createTable("rhm_bank", "totalcheck", em.getCheck());
                new AccTable().createTable("rhm_bank", "transaction");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        if (r == false) {
           // System.out.println("Database Not  Exist.");
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost/", "root", "apcl123456");
                String s = "CREATE DATABASE " + dbNmae;
                PreparedStatement pstmt1 = con.prepareStatement("CREATE DATABASE " + dbNmae);
                int i = pstmt1.executeUpdate();
                if (i > 0) {
                    TableCreate em = new TableCreate();
                    new TableCreate().createTable("rhm_bank", "accounts", em.getCreate());
                    new TableCreate().createTable("rhm_bank", "employee", em.getEmployee());
                    new TableCreate().createTable("rhm_bank", "totalcheck", em.getCheck());
                    new AccTable().createTable("rhm_bank", "transaction");

                    System.out.println("Database  Created. Db Name is :" + dbNmae);
                }

            } catch (Exception e) {
            }

        }

    }

}
