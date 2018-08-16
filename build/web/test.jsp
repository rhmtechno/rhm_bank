<%-- 
    Document   : test
    Created on : Jun 6, 2018, 10:14:24 PM
    Author     : RAKIB
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <script>
    var name = "Gautam";
</script>
<%
    String str = "<script>document.writeln(name)</script>";
    out.println("value: " + str);
%>
    </body>
</html>
