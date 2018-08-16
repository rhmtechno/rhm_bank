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
                        var v2 = document.getElementById("f1").value;
                        
                                if (v2 == "") {
                                  
                                    document.getElementById("s1").disabled = true;  
                                }else{
                                   document.getElementById("s1").disabled = false;  
                               }
                           
                            }
                </script>
            </div></div>

        <div class="container" style="float: left;background-color:#9acfea;height:400px;margin-left:100px ">
            <form class="form-horizontal" action="forget1.htm" method="post">
                <fieldset class="the-fieldset" style="border: blue 5px double">

                    <legend class="the-legend">Retrieve Password</legend>
                    <div class="form-group" style="padding-top:50px">
                        <label for="user" class="col-md-3 control-label input-label">User:</label>
                        <div class="col-md-6">
                            <input type="text" class="form-control" name="user" id="f1" placeholder="Enter User Name"></input>
                        </div>
                    </div>
                   

                    <div class="form-group">
                        <div class="col-md-6" style="padding-left: 200px">
                            <label><button type="submit" class="btn btn-success" id="s1" onmouseenter="m2()">Submit</button></label>
                        </div>
                    </div>

            
                </fieldset>
            </form>

        </div>
        <div class="container" style="float: left;background-color: steelblue;height:30px;margin-left:100px "></div>
    </body>
</html>
