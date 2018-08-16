<%-- 
    Document   : index
    Created on : May 23, 2018, 10:08:19 PM
    Author     : RAKIB
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
    <body>
        <!-- Main Div-->
        <div class="container" style="height:100px;background-color: white"> <img style="width: 400px;margin-top:2px;margin-right: 10px"src="resources/1.jpg"/>
           </div>

        <div class="container" style="background-color:blue;color: white;height: 40px">
            <div style="color:white">
                <h3 style="margin-left:30%;;font-size: 12pt;margin-bottom: 100px" id="demo"></h3>
                <script>
                    var myVar = setInterval(myTimer, 1000);

                    function myTimer() {
                        var d = new Date();
                        document.getElementById("demo").innerHTML = d;
                    }



                    function m2() {
                        document.getElementById("tb").style.backgroundColor = "green";
                        document.getElementById("tb").innerHTML = "Success";
                    }
                </script>
            </div></div>

        <div class="container" style="float: left;background-color:#ffffff;height:400px;margin-left:100px ">
            <form class="form-horizontal" action="user.htm" method="post">
                

                    <legend class="the-legend">Internet Banking</legend>
                    <div class="form-group" style="padding-top:100px">
                        <label for="id" class="col-md-3 control-label input-label">User:</label>
                        <div class="col-md-4">
                            <input type="text" class="form-control" name="user"></input>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="password" class="col-md-3 control-label input-label">Password:</label>
                        <div class="col-md-4">
                            <input type="password" class="form-control" name="password"></input>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-md-4" style="padding-left: 500px">
                            <label><button type="submit" class="btn btn-success">Login</button></label>
                        </div>
                        
                    </div>

                    
                    <span style="color: red;padding-left: 300px"> Forget Password? <a href="forget_pass1.jsp">click here</a> for Recover Password</span>
                
            </form>

        </div>
        <div class="container" style="float: left;background-color: steelblue;height:30px;margin-left:100px "></div>
    </body>
</html>
