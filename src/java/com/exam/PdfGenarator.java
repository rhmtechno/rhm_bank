/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam;

import java.io.File;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.HashMap;
import javax.swing.JOptionPane;
import javax.swing.filechooser.FileSystemView;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;

/**
 *
 * @author rhm-home
 */
public class PdfGenarator {

    public void pdf(String name, Connection conn, String dir) {

        try {
            File home = FileSystemView.getFileSystemView().getHomeDirectory();
            String s = home.getAbsolutePath();
           // String jrxmlFileName = s + "/RHM_BANK 1.0/web/resources/check.jrxml";
            String jrxmlFileName =s + "/RHM_BANK 1.0/check.jrxml";
            String jasperFileName = s + "/RHM_BANK 1.0/check.jasper";
            //String s=System.getProperty("user.home");
            String pdfFileName = s + "/" + dir + "/" + name + ".pdf";
            JOptionPane.showMessageDialog(null, name);
           
            JasperCompileManager.compileReportToFile(jrxmlFileName, jasperFileName);

            Class.forName("com.mysql.jdbc.Driver");
            HashMap hm = null;
            // Create arguments
            // Map params = new HashMap();
            hm = new HashMap();
            hm.put("p1", name);

            // Generate jasper print
            JasperPrint jprint = (JasperPrint) JasperFillManager.fillReport(jasperFileName, hm, conn);

            // Export pdf file
            JasperExportManager.exportReportToPdfFile(jprint, pdfFileName);

        } catch (Exception e) {
            System.out.print("Exceptiion" + e);
        }
    }

//    public static void main(String[] args) {
//        new PdfGenarator().pdf("Rakibul1000");
//    }
}
