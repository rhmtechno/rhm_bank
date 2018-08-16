<%-- 
    Document   : index
    Created on : May 23, 2018, 10:08:19 PM
    Author     : RAKIB
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.exam.AccountDAO" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Opening Account.</title>
        <link rel="icon" href="resources/rh.png">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" type="text/css" href="css/style.css"/>
        <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <!-- Main Div-->
        <div class="container" style="background-color:white;height:80px;;margin-left: 100px"> <img style="margin-top: 3px;width: 300px" src="resources/1.jpg"/></div>
        <div class="container" style="float: left;height:150px;background-color: #31708f;margin-left: 100px"> 

            <div class="menu" style="background-color: #337ab7">
                <nav class="navbar navbar-default navbar-static-top" role="navigation" style="background-color: #337ab7;color: red">
                    <div class="container" style="margin-left: 180px">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                        </div>
                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1"style="color: red">
                            <ul class="nav navbar-nav">
                                <li ><a class="glyphicon glyphicon-home" href="home.jsp" style="color: white;background-color:#245269;margin-right: 3px;margin-top: 3px"> Home</a></li>


                                <li class="dropdown">
                                    <a style="color: white;background-color:#245269;margin-right: 3px;margin-top: 3px" href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" >ACCOUNT</a>
                                    <ul class="dropdown-menu">
                                        <li class="divider"></li>
                                        <li><a class="glyphicon glyphicon-user" href="#" >Opening Account</a></li>
                                        <li class="divider"></li>
                                        <li><a href="Check_Issue.jsp">Issue Check</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">Holiday Calender</a></li>
                                        <li class="divider"></li>
                                        <li class="divider"></li>
                                        <li><a href="#">Employee Information</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" style="color: white;background-color:#245269;margin-right: 3px;margin-top: 3px">Department</a>
                                    <ul class="dropdown-menu">
                                        <li class="divider"></li>
                                        <li><a href="#">Account</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">Production</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">Suplies</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">Services</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">HR</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"  data-hover="dropdown" style="color: white;background-color:#245269;margin-right: 3px;margin-top: 3px">Service</a>
                                    <ul class="dropdown-menu">
                                        <li class="divider"></li>
                                        <li><a href="#"></a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">Hostel</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">Transportation</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">Flat</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"  data-hover="dropdown" style="color: white;background-color:#245269;margin-right: 3px;margin-top: 3px">Customers</a>
                                    <ul class="dropdown-menu">
                                        <li class="divider"></li>
                                        <li><a href="#">client List</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">Global Market</a></li>
                                    </ul>
                                </li>
                                <li><a href="#" style="color: white;background-color:#245269;margin-right: 3px;margin-top: 3px">CSR</a></li>
                                <li><a href="#" style="color: white;background-color:#245269;margin-right: 3px;margin-top: 3px">Media</a></li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"  data-hover="dropdown" style="color: white;background-color:#245269;margin-right: 3px;margin-top: 3px" >Other Services</a>
                                    <ul class="dropdown-menu">
                                        <li class="divider"></li>
                                        <li><a href="#">Create Design</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">Art work Development</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">Trend forcasting</a></li>
                                    </ul>
                                </li>
                                <li ><a class=" glyphicon glyphicon-off " href="index.jsp" style="color: white;background-color:#245269;margin-right: 3px;margin-top: 3px"> Logout</a></li>


                            </ul>
                        </div>
                        <!-- /.navbar-collapse -->
                    </div>
                    <!-- /.container -->



                    <div style="background-color:blue;color: white">
                        <div style="color:white">
                            <h3 style="margin-left:30%;;font-size: 14pt" id="demo"></h3>
                            <script>
                                var myVar = setInterval(myTimer, 1000);

                                function myTimer() {
                                    var d = new Date();
                                    document.getElementById("demo").innerHTML = d;
                                }



                                function m3() {
                                   window.alert("Account Number is "+"<%=AccountDAO.m1()%>");     
                                        

                                }


                            </script>


                        </div>
                </nav>
                <!-------------------------- Scroll News Start------------------------------------->
                <div class="scroll news">
                    <div class="row">
                        <div class="col-md-2"><p class="text-center" style="background-color: red; padding: 2px; color: white;">
                                <i class="fa fa-newspaper-o"></i> &nbsp; Important NEWS &nbsp; <i class="fa fa-chevron-right"></i></p>
                        </div>
                        <div class="col-md-9">
                            <div class="recent_news_data" style="background-color: white;color: red">
                                <marquee  scrollamount="5" onmouseout="this.start();" onmouseover="this.stop();">
                                    <a href="#">***RHM Bank Limited,Head Office ***</a>
                                </marquee>
                            </div>
                        </div>
                    </div>
                </div>

            </div>


        </div>

        <div class="container" style="float: left;background-color:#9acfea;height:800px;margin-left: 100px ">
            <!vdfvbfdbfd-->

            <form class="form-horizontal" action="openacc.htm" method="post"  style="margin-left: 200px" >

                <legend class="the-legend">Accounts Holder Information</legend>
                <div class="form-group" style="padding-top:10px">
                    <label for="name" class="col-md-3 control-label input-label">Name:</label>
                    <div class="col-md-3">
                        <input type="text" class="form-control" name="name" id="n"></input>
                    </div>
                </div>

                <div class="form-group" style="padding-top:10px">
                    <label for="father" class="col-md-3 control-label input-label">Father:</label>
                    <div class="col-md-3">
                        <input type="text" class="form-control" name="father" id="f"></input>
                    </div>
                </div>
                <div class="form-group">
                    <label for="mother" class="col-md-3 control-label input-label">Mother</label>
                    <div class="col-md-3">
                        <input type="text" class="form-control" name="mother"></input>
                    </div>
                </div>
                <div class="form-group">
                    <label for="dob" class="col-md-3 control-label input-label">DOB</label>
                    <div class="col-md-3" >
                        <input type="date" class="form-control" name="dob" placeholder="dd-mm-yyyy"></input>
                    </div>
                </div>

                <div class="form-group">
                    <label for="gender" class="col-md-3 control-label input-label">Gender:</label>
                    <div class="col-md-3" >
                        <div class="dropdown">
                            <select class="form-control" name="gender">
                                <option>Select Gender</option>
                                <option>Male</option>
                                <option>Female</option>
                                <option>Other</option>
                            </select>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label for="mobile" class="col-md-3 control-label input-label">Mobile:</label>
                    <div class="col-md-3" >
                        <input type="text" class="form-control" name="mobile"></input>
                    </div>
                </div>


                <div class="form-group">
                    <label for="email" class="col-md-3 control-label input-label">Email:</label>
                    <div class="col-md-3" >
                        <input type="text" class="form-control" name="email"></input>
                    </div>
                </div>

                <div class="form-group">
                    <label for="address" class="col-md-3 control-label input-label">Address:</label>
                    <div class="col-md-3" >
                        <input type="text" class="form-control" name="address"></input>
                    </div>
                </div>
                <div class="form-group">
                    <label for="type" class="col-md-3 control-label input-label">Account Type:</label>
                    <div class="col-md-3" >
                        <div class="dropdown">
                            <select class="form-control" name="type">
                                <option>Select Type</option>
                                <option>Savings</option>
                                <option>Current</option>
                                <option>Business</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="balance" class="col-md-3 control-label input-label">Deposit:</label>
                    <div class="col-md-3" >
                        <input type="text" class="form-control" name="balance"></input>
                    </div>

                </div>
                <div class="form-group">
                    <label for="file" class="col-md-3 control-label input-label">Photo:</label>
                    <div class="col-md-3" >
                        <input type="file" class="form-control" name=""></input>
                    </div>
                </div>

                <div class="form-group">
                    <label for="password" class="col-md-3 control-label input-label">Password:</label>
                    <div class="col-md-3" >
                        <input type="password" class="form-control" name="password"></input>
                    </div>
                </div>


                <div class="form-group">
                    <div class="col-md-3" style="padding-left: 200px;margin-left: 200px">
                        <label><button type="submit" class="btn btn-success" onclick="m3()"> Submit </button></label >
                    </div>
                </div>

            </form>


        </div>
        <div class="container" style="float: left;background-color: steelblue;height:30px;;margin-left: 100px"></div>

        <script src="js/jquery-3.2.1.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/style.js" type="text/javascript"></script>
    </body>
</html>
