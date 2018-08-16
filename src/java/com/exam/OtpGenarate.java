/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam;

import java.util.Random;

/**
 *
 * @author rhm-home
 */
public class OtpGenarate {

    int ot;

    public int otp() {
        Random random = new Random();
        int length = (Math.abs(random.nextInt(9000) + 1000));
        return length;
    }

//    public static void main(String[] args) {
//        int m1 = new OtpGenarate().otp();
//
//        System.out.println(m1);
//
//    }
}
