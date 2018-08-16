<%-- 
    Document   : result
    Created on : May 23, 2018, 10:54:57 PM
    Author     : RAKIB
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.exam.LoginController" id="lc"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="MyCSS/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="MyCSS/css/bootstrap-theme.css" rel="stylesheet" type="text/css"/>
        <script src="MyCSS/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="MyCSS/js/jquery-3.2.1.min.js" type="text/javascript"></script>
        <title>JSP Page</title>
    </head>
    <body style="background-color:lightsteelblue">
        <div class="container">
            <span style="color: red;font-size: 15pt">Transaction From ${lc.sd} To ${lc.ed}</span>
            <table class="table table-hover table-responsive table-striped">
                <tr>
                    <th>Account</th>
                    <th>Name no</th>
                    <th>Deposit</th>
                     <th>withdrawn</th>
                    <th>deposit_by</th>
                    <th>check no</th>
                    <th>transfer_to</th>
                    <th>transfer_from</th>
                    <th>Type</th>
                    <th>transaction_id</th>
                    <th>Time</th>
                    
                
                </tr>
                <c:forEach items="${ai}" var="a">
                    <tr>
                        <td>${a.ac_no}</td>
                        <td>${a.name}</td>
                        <td>${a.deposit}</td>
                        <td>${a.withdrawn}</td>
                        <td>${a.deposit_by}</td>
                        <td>${a.check_no}</td>
                        <td>${a.transfer_to}</td>
                        <td>${a.transfer_from}</td>
                        <td>${a.type}</td>
                        <td>${a.transaction_id}</td>
                        <td>${a.date}</td>
                        
                        
                    </tr>
                </c:forEach>
            </table>
            <br/>
            <form action="statement.jsp">
                <input type="submit" value="Back" style="color: white;background: red"/>
            </form>
        </div>
    </body>
</html>

