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
 * @author RAKIB
 */
public class TableCreate {

    private String create = "CREATE TABLE accounts (acc VARCHAR(45) NOT NULL, `name` VARCHAR(45), father VARCHAR(45), mother VARCHAR(45), dob DATE, gender VARCHAR(45), mobile VARCHAR(45), email VARCHAR(45), address VARCHAR(100), photo BLOB, `type` VARCHAR(50), `open` DATETIME, balance INT, password VARCHAR(45), otp INT, PRIMARY KEY (acc))";
    private String employee = "CREATE TABLE employee (`user` VARCHAR(50) NOT NULL, `name` VARCHAR(50), password VARCHAR(50), email VARCHAR(50), otp INT, PRIMARY KEY (`user`))";
    private String check = "CREATE TABLE totalcheck (acc VARCHAR(45) NOT NULL, `name` VARCHAR(45), check_no VARCHAR(45) NOT NULL, `Checkw` VARCHAR(45) NOT NULL, `date` DATETIME,\n"
            + "FOREIGN KEY(acc) REFERENCES accounts(acc))";

    public void createTable(String scema, String tName, String statement) {
        boolean a = false;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rhm_bank", "root", "apcl123456");
            PreparedStatement pstmt = con.prepareStatement("SELECT table_name FROM information_schema.tables WHERE table_type=? AND table_schema=? AND table_name=?");
            pstmt.setString(1, "BASE TABLE");
            pstmt.setString(2, "rhm_bank");
            pstmt.setString(3, tName);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                a = true;

            }

            if (a == true) {
                System.out.println(tName + " Table exist");
            } else {
                PreparedStatement pstmt1 = con.prepareStatement(statement);
                pstmt1.executeUpdate();
                System.out.println(tName + " Table Created");
            }

            //System.out.println("Hello"+uv);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public String getCreate() {
        return create;
    }

    public void setCreate(String create) {
        this.create = create;
    }

    public String getEmployee() {
        return employee;
    }

    public void setEmployee(String employee) {
        this.employee = employee;
    }

    public String getCheck() {
        return check;
    }

    public void setCheck(String check) {
        this.check = check;
    }

}
