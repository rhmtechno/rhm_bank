/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam;

import com.sun.javafx.scene.control.skin.VirtualFlow;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author rhm-home
 */
public class Transaction_st {
    private String ac_no;
    private String deposit_by;
    private String name;
    private int deposit;
    private int withdrawn;
    private String transaction_id;
    private Date date;
    private String transfer_to;
    private String transfer_from;
    private String check_no;
    private String type;
    
    private String aname;
    private String date1;
    private String date2;
    
    
    

    public Transaction_st() {
    }
    
    
    
    

   

//    Session s = NewHibernateUtil.getSessionFactory().openSession();
//        Query q = s.createQuery("FROM Employee ");
//        List<Employee> li = new ArrayList<>();
//        li = q.list();
//        return li;
    
    

    public String getAc_no() {
        return ac_no;
    }

    public void setAc_no(String ac_no) {
        this.ac_no = ac_no;
    }

    public String getDeposit_by() {
        return deposit_by;
    }

    public void setDeposit_by(String deposit_by) {
        this.deposit_by = deposit_by;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getDeposit() {
        return deposit;
    }

    public void setDeposit(int deposit) {
        this.deposit = deposit;
    }

    public int getWithdrawn() {
        return withdrawn;
    }

    public void setWithdrawn(int withdrawn) {
        this.withdrawn = withdrawn;
    }

    public String getTransaction_id() {
        return transaction_id;
    }

    public void setTransaction_id(String transaction_id) {
        this.transaction_id = transaction_id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getTransfer_to() {
        return transfer_to;
    }

    public void setTransfer_to(String transfer_to) {
        this.transfer_to = transfer_to;
    }

    public String getTransfer_from() {
        return transfer_from;
    }

    public void setTransfer_from(String transfer_from) {
        this.transfer_from = transfer_from;
    }

    public String getCheck_no() {
        return check_no;
    }

    public void setCheck_no(String check_no) {
        this.check_no = check_no;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getAname() {
        return aname;
    }

    public void setAname(String aname) {
        this.aname = aname;
    }

    public String getDate1() {
        return date1;
    }

    public void setDate1(String date1) {
        this.date1 = date1;
    }

    public String getDate2() {
        return date2;
    }

    public void setDate2(String date2) {
        this.date2 = date2;
    }
}
