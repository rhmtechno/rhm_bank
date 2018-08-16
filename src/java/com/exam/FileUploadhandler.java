/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class FileUploadhandler extends HttpServlet {
    

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
             JOptionPane.showMessageDialog(null, "hi");
        //process only if its multipart content
        if (ServletFileUpload.isMultipartContent(request)) {
            try {
                List<FileItem> multiparts = new ServletFileUpload(
                        new DiskFileItemFactory()).parseRequest(request);
                String path;
                for (FileItem item : multiparts) {
                    if (!item.isFormField()) {
                        String a = request.getParameter("mobile");
                        JOptionPane.showMessageDialog(null, a);
                        String name = new File(item.getName()).getName();
                        path = request.getServletContext().getRealPath("/");;
                        path = path.substring(0, path.indexOf("\\build"));
                        path = path + "\\web\\images";

                        item.write(new File(path + File.separator + name));

                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rhm_bank", "root", "apcl123456");
                        PreparedStatement pstmt = con.prepareStatement("INSERT INTO accounts (acc,photo)VALUES(?,?)");
                        pstmt.setString(1, "hhh");
                        File f = new File(path + File.separator + name);
                        InputStream is = new FileInputStream(f);
                        pstmt.setBlob(2, is);
                        int i = pstmt.executeUpdate();

                        //item.write( new File(request.getServletContext().getRealPath("/")+"\\images"+File.separator+ name)); 
                        //(\build\web)+/+name
                    }
                }

                //File uploaded successfully
                request.setAttribute("message", "File Uploaded Successfully");
            } catch (Exception ex) {
                request.setAttribute("message", "File Upload Failed due to " + ex);
            }

        } else {
            request.setAttribute("message",
                    "Sorry this Servlet only handles file upload request");
        }

        request.getRequestDispatcher("/uploadresultPage1.jsp").forward(request, response);

    }

}
