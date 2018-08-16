<%-- 
    Document   : index
    Created on : May 23, 2018, 10:08:19 PM
    Author     : RAKIB
--%>

<%@page import="java.io.InputStream"%>
<%@page import="net.sf.jasperreports.engine.JasperExportManager"%>
<%@page import="net.sf.jasperreports.engine.JasperPrint"%>
<%@page import="net.sf.jasperreports.engine.JasperFillManager"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="net.sf.jasperreports.engine.JasperReport"%>
<%@page import="net.sf.jasperreports.engine.JasperCompileManager"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.exam.Student" %>
<%@page import="com.exam.Student1" %>
<jsp:useBean class="com.exam.LoginController" id="lc"/>
<%!
    Student s = new Student();
    Student1 s1 = new Student1();
%>

<!DOCTYPE html>
<html>
    <head>
        <title>Deposit</title>
        <link rel="icon" href="resources/rh.png">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" type="text/css" href="css/style.css"/>
        <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css"/>

    </head>
    <body >

         <%
           
           try {
           response.setContentType("application/pdf");
           Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rhm_bank","root","apcl123456");
            String s=session.getServletContext().getRealPath("rakib.jrxml");
            FileInputStream is=new FileInputStream(new File(s));
           JasperReport jr=JasperCompileManager.compileReport(is);
           Map m=new HashMap();
           //m.put("p1",request.getParameter("t_id"));
          // m.put("p2",request.getParameter("total"));
           JasperPrint jp=JasperFillManager.fillReport(jr,m,con);
           JasperExportManager.exportReportToPdfStream(jp,response.getOutputStream());
           response.getOutputStream().hashCode();
           response.getOutputStream().close();
               
            } catch (Exception e) {
            }


        %>
        
        

    </body>
</html>
