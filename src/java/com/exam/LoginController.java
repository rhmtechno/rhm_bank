/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam;

import java.io.IOException;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.swing.JOptionPane;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author RAKIB
 */
@Controller
public class LoginController {

   public static String td="";

   
    public  String getTd() {
        return td;
    }

    public void setTd(String td) {
        this.td = td;
    }
    
    
    public static String sd="";

   
    public  String getSd() {
        return sd;
    }

    public void setSd(String sd) {
        this.sd = sd;
    }
    
    
    
    public static String ed="";

   
    public  String getEd() {
        return ed;
    }

    public void setEd(String ed) {
        this.ed = ed;
    }
    //balance
    public static String bal="h";
    public  String getBal() {
        return bal;
    }
    public void setBal(String bal) {
        this.bal = bal;
    }
    
    //ac no
    
     public static String ac="Not Found";
    public  String getAc() {
        return ac;
    }
    public void setAc(String ac) {
        this.ac = ac;
    }
    
    

    public static String email = "";

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String goIndex() {
        return "index";
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public String getS() {
        return s;
    }

    public void setS(String s) {
        this.s = s;
    }

    public String getGemail() {
        return gemail;
    }

    public void setGemail(String gemail) {
        this.gemail = gemail;
    }

    private static String gemail;

    private static String s = "aaa";

    int otv_valid = 0;
    private static int count = 3;
   

    //Registration New User Request Coming form Registration.jsp Page.
    @RequestMapping("save.htm")
    public String doSave(@ModelAttribute("employee") Employee em, BindingResult result, Model m) {
        LoginDAO ld = new LoginDAO();
        String r = ld.doSave(em.getUser(), em.getName(), em.getPassword(), em.getEmail());
        return r;
    }

    // Login Controller
    @RequestMapping("check.htm")
    public String doCheck(@ModelAttribute("employee") Employee em, BindingResult result, Model m) {
        LoginDAO ld = new LoginDAO();
        if (ld.doCheck(em.getUser(), em.getPassword())) {
            new ManageOtp().manageOtp(em.getUser());
            count = 3;
            otv_valid = 0;
            return "OTP";

        } else {

            return "index";

        }

    }

    //Table Create
    @RequestMapping("table.htm")
    public String createTable(@ModelAttribute("employee") TableCreate em, BindingResult result, Model m) {
        new DatabaseManage().find("rhm_bank");

        return "index";

    }

    @RequestMapping("otp.htm")
    public String Otpcheck(@ModelAttribute("login") Employee stu, BindingResult result, Model m) {
        LoginDAO sd = new LoginDAO();
        if (sd.Otpcheck(stu.getOtp())) {
            return "home";
        } else {
            otv_valid++;
            count--;
            if (otv_valid <= 2) {
                return "OTP";
            } else {
                otv_valid = 0;
                count = 3;
                ManageOtp mo = new ManageOtp();
                int gotp = mo.wrongOtp(gemail);
                new ManageOtp().DeleteOtp(gotp);
                return "index";
            }

        }
    }

    @RequestMapping("openacc.htm")
    public String openAccount(@ModelAttribute("acc") OpenAccount oa, BindingResult result, Model m) {
        try {
            String rqd = oa.getDob();
            JOptionPane.showMessageDialog(null, rqd);
            DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            Date YourResult = sdf.parse(rqd);
            java.sql.Date todayssqldate = new java.sql.Date(YourResult.getTime());
            new AccountDAO().doSave(oa.getName(), oa.getFather(), oa.getMother(), todayssqldate, oa.getGender(), oa.getMobile(), oa.getEmail(), oa.getAddress(), oa.getType(), oa.getBalance(), oa.getPassword());
            //Send Email
            AccountDAO ad = new AccountDAO();
            new Email().runEmail(oa.getEmail(), "WelCome", "Honarable Mr, " + oa.getName() + "," + "\nWelcome You To RHM BANK Limited." + "\nYour Credintials:" + "\nAccount Name: " + oa.getName() + "\nAccount Number: " + ad.getEmail_accno() + "\nEmail: " + oa.getEmail() + "\nPassword: " + oa.getPassword() + "\nPlease Keep All Information In Safe" + "\n\nYour Trusted," + "\nRHM BANK LIMITED" + "\nGenarate Time: " + new Date());
        } catch (Exception e) {
        }

        return "acc_open";
    }

    @RequestMapping("checkgn.htm")
    public String checkgn(@ModelAttribute("acc") Check ck, BindingResult result, Model m) throws SQLException, IOException {
        CheckGenarate cg = new CheckGenarate();
        String tnamae = ck.getAcc();
        String atmane = "allCheck" + tnamae;
        String atmane1 = "availCheck" + tnamae;
        String cname = "check_no";
        String mc = new CheckFinder().chek_String("rhm_bank", atmane, cname, tnamae);
        String r = cg.checkGenarate("rhm_bank", atmane, tnamae, mc, ck.getRange(), ck.getName(), atmane1);
        return r;

    }
//Deposit Controller

    @RequestMapping("deposit.htm")
    public String deposit(@ModelAttribute("deposit") Deposit dp, BindingResult result, Model m) {
        LoginDAO ld = new LoginDAO();
        String t_id = new Auto_Increment().auto_inrement_String("rhm_bank", "transaction", "transaction_id");
        td= t_id;
        String s = ld.deposit(dp.getAcc(), dp.getName(), dp.getDeposit(), dp.getDeposit_by(), t_id);
        

        //String acc, String name, int deposit, String deposit_by,String transaction_id) {
        return s;

    }
    
    
    //Withdrawn Controller

    @RequestMapping("withdraw.htm")
    public String withdrawn(@ModelAttribute("withdrawn") Withdraw wd, BindingResult result, Model m) {
        String t_id = new Auto_Increment().auto_inrement_String("rhm_bank", "transaction", "transaction_id");
        td= t_id;
        
        String s =wd.withdrawn(wd.getAcc(),wd.getName(),wd.getAmount(),wd.getWithdrawn_by(),wd.getCheck(),t_id);

        //String acc, String name, int deposit, String deposit_by,String transaction_id) {
        return s;

    }
    
    

    // Retreive password
    @RequestMapping("forget2.htm")
    public String doCheck(@ModelAttribute("employee") Forget_em fem, BindingResult result, Model m) {
        String pass = fem.Retrieve(fem.getEmail());
        new Email().runEmail(fem.getEmail(), "password", "Your Password :" + pass + "\n\nThankYou For Using RHM Bank" + "\nGenarate Time:" + new Date());

        return "index";
    }

    //Check user For Recovery Password
    @RequestMapping("forget1.htm")
    public String userCheck(@ModelAttribute("employee") Forget_em em, BindingResult result, Model m) {

        if (em.Usercheck(em.getUser())) {

            String s = em.user(em.getUser());
            String s2 = s.replaceAll("(^[^@]{3}|(?!^)\\G)[^@]", "$1*");
            email = s2;
            return "forget_pass2";

        } else {

            return "forget_pass1";

        }

    }
    
    //transaction
    
     @RequestMapping("upPage.htm")
    public String upPage(@ModelAttribute("login") Transaction_st stu, BindingResult result, Model m) {
        List<Transaction_st> li = new ArrayList<>();
        StatementDAO std=new StatementDAO();
        sd=stu.getDate1();
        ed=stu.getDate2();
 JOptionPane.showMessageDialog(null, stu.getAname());
       li = std.findAll(stu.getAname(),stu.getDate1(),stu.getDate2());
        m.addAttribute("ai", li);
        return "result";
    
    }
    
    
    //user login
    
    
    // Login Controller
    @RequestMapping("user.htm")
    public String userCheck(@ModelAttribute("employee") Employee em, BindingResult result, Model m) {
        LoginDAO ld = new LoginDAO();
        if (ld.userCheck(em.getUser(), em.getPassword())) {
            new ManageOtp_User().manageOtp(em.getUser());
            count = 3;
            otv_valid = 0;
            bal=em.getUser();
            bal=new userBalance().getBalance(em.getUser());
            ac=em.getUser();
            return "OTP_1";

        } else {

            return "user";

        }

    }
    
    
    //User Otp
    
    
    @RequestMapping("otp_1.htm")
    public String Otpcheckuser(@ModelAttribute("login") Employee stu, BindingResult result, Model m) {
        LoginDAO sd = new LoginDAO();
        if (sd.OtpcheckUser(stu.getOtp())) {
           
            return "home_1";
        } else {
            otv_valid++;
            count--;
            if (otv_valid <= 2) {
                return "OTP_1";
            } else {
                otv_valid = 0;
                count = 3;
                ManageOtp_User mo = new ManageOtp_User();
                int gotp = mo.wrongOtp(gemail);
                new ManageOtp_User().DeleteOtp(gotp);
                return "user";
            }

        }
    }
    
    
    
    
    
    

}
