<%-- 
    Document   : index
    Created on : May 23, 2018, 10:08:19 PM
    Author     : RAKIB
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>RHM Bank Ltd.</title>
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
                                        <li><a class="glyphicon glyphicon-user" href="acc_open.jsp" >Opening Account</a></li>
                                        <li class="divider"></li>
                                        <li><a class="glyphicon glyphicon-plus" href="Check_Issue.jsp">Issue Check</a></li>
                                        
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" style="color: white;background-color:#245269;margin-right: 3px;margin-top: 3px">Transaction</a>
                                    <ul class="dropdown-menu">
                                        <li class="divider"></li>
                                        <li><a href="deposit.jsp">Deposit</a></li>
                                        <li class="divider"></li>
                                        <li><a href="withdraw.jsp">withdraw</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">Transfer</a></li>
                                      
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"  data-hover="dropdown" style="color: white;background-color:#245269;margin-right: 3px;margin-top: 3px">Service</a>
                                    <ul class="dropdown-menu">
                                        <li class="divider"></li>
                                        <li><a href="statement.jsp">statement</a></li>
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
           
        <div class="container" style="float: left;background-color:#9acfea;height:450px;margin-left: 100px ">
    <!vdfvbfdbfd-->
    <div class="carousel" style="margin-top: 50px;padding-left:100px;padding-right: 100px;">
                <div id="carousel-example-generic" class="carousel slide carousel-fade" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="4"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="5"></li>
                    </ol>
                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                        <div class="item active">
                            <img src="img/n1.jpg" alt="Image not found">
                            <div class="carousel-caption">
                                <h3 class="pp1">Factory</h3>
                            </div>
                        </div>
                        <div class="item">
                            <img src="img/n2.jpg" alt="Image not found">
                            <div class="carousel-caption">
                                <h3 class="pp1">Factory</h3>
                            </div>
                        </div>
                        <div class="item">
                            <img src="img/n3.jpg" alt="Image not found">
                            <div class="carousel-caption">
                                <h3 class="pp1">Factory</h3>
                            </div>
                        </div>
                        <div class="item">
                            <img src="img/n4.jpg" alt="Image not found">
                            <div class="carousel-caption">
                                <h3 class="pp1">Factory</h3>
                            </div>
                        </div>
                        <div class="item">
                            <img src="img/n5.jpg" alt="Image not found">
                            <div class="carousel-caption">
                                <h3 class="pp1">Factory</h3>
                            </div>
                        </div>
                        <div class="item">
                            <img src="img/n6.jpg" alt="Image not found">
                            <div class="carousel-caption">
                                <h3 class="pp1">Factory</h3>
                            </div>
                        </div>
                        <div class="item">
                            <img src="img/n7.jpg" alt="Image not found">
                            <div class="carousel-caption">
                                <h3 class="pp1">Factory</h3>
                            </div>
                        </div>

                        ...
                    </div>
                </div>
            </div>

            
               
        </div>
       <div class="container" style="float: left;background-color: steelblue;height:30px;;margin-left: 100px"></div>
                    
                      <script src="js/jquery-3.2.1.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/style.js" type="text/javascript"></script>
    </body>
</html>
