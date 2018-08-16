<%-- 
    Document   : OTP
    Created on : May 25, 2018, 4:33:22 PM
    Author     : rhm-home
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
        <link href="MyCSS/css/mystyle.css" rel="stylesheet" type="text/css"/>
        <script src="MyCSS/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="MyCSS/js/jquery-3.2.1.min.js" type="text/javascript"></script>
        <title>JSP Page</title>
    </head>
    <body >
        <div class="container" style="height:100px;background-color: white"> <img style="width: 400px;margin-top:2px;margin-right: 10px"src="resources/1.jpg"/></div>
        
        <div class="container" style="background-color:blue;color: white;height: 40px">
                        <div style="color:white">
                            <h3 style="margin-left:30%;;font-size: 12pt;margin-bottom: 100px" id="demo"></h3>
                            <script>
                                var myVar = setInterval(myTimer, 1000);

                                function myTimer() {
                                    var d = new Date();
                                    document.getElementById("demo").innerHTML = d;
                                }
                            </script>
                        </div></div>
        <div class="container" style="position: absolute;margin-left:500px;margin-top: 100px;float: left">
            <form class="form-horizontal" action="otp_1.htm" method="post">  
                <fieldset class="fieldset" style="margin-right: 600px">
                    <legend class="legend">2 Step Verification</legend>
                    <h4>Check your Email For OTP</h4>
                    <div class="form-group">

                        <div class="col-md-6">
                            <input type="password" class="form-control" name="otp" placeholder="One Time Password"></input>
                            <span style="color: red;font-size: 15pt">Try Left: ${lc.count}</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-12"> <label><button type="submit" class="btn btn-success">Login</button></label>
                            <span style="margin-left: 20px;color: red">For Logout <a href="index.jsp">Click Hare</a></span>
                        </div>
                        
                             </div>

                </fieldset>
            </form>
        </div>

    </div>            
    <div class="container" style="float: left;background-color: steelblue;height:30px;margin-left:100px ;color: white">
        <marquee>Welcome To RHM Bank Limited</marquee>
    </div>

</body>
</html>
