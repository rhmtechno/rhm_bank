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
        <div class="container" style="position: absolute;padding-left:350px;padding-right: 200px;padding-top:10px">
            <form class="form-horizontal" action="save.htm" method="post">
                <fieldset class="the-fieldset">
                    <legend class="the-legend">Registration</legend>
                    <div class="form-group" style="padding-top:50px">
                        <label for="id" class="col-md-3 control-label input-label">User:</label>
                        <div class="col-md-6">
                            <input type="text" class="form-control" name="user"></input>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="password" class="col-md-3 control-label input-label">Name:</label>
                        <div class="col-md-6">
                            <input type="text" class="form-control" name="name"></input>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="email" class="col-md-3 control-label input-label">Email:</label>
                        <div class="col-md-6" >
                            <input type="text" class="form-control" name="email"></input>
                        </div>
                    </div>
                    

                    <div class="form-group">
                        <label for="password" class="col-md-3 control-label input-label">Password:</label>
                        <div class="col-md-6" >
                            <input type="password" class="form-control" name="password"></input>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-10" style="padding-left: 200px">
                            <label><button type="submit" class="btn btn-success">Submit</button></label>
                        </div>
                    </div>
                </fieldset>
            </form>
        </div>
    </body>
</html>
