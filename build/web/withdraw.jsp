<%-- 
    Document   : index
    Created on : May 23, 2018, 10:08:19 PM
    Author     : RAKIB
--%>

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
    <body onload="m10()">
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
                                        <li><a href="#">Employss Welfare</a></li>
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

            <form class="form-horizontal" action="withdraw.htm" method="post"  style="margin-left: 200px" >

                <legend class="the-legend">Withdraw</legend>
                <div class="form-group" style="padding-top:10px">

                    <label for="acc" class="col-md-3 control-label input-label">Account No:</label>

                    <div class="col-md-3">

                        <input type="text" class="form-control" name="acc" id="t1"></input>

                    </div>

                </div>


                <div class="form-group" style="padding-top:10px">
                    <label for="check" class="col-md-3 control-label input-label">Check No:</label>
                    <div class="col-md-3">
                        <input type="text" class="form-control" name="check" id="c1" onclick="m9()"></input>
                    </div>
                    <div id="i1" style="float: "><img style="width:30px;height: 30px" src="resources/r.jpg"/></div>
                </div>



                <div class="form-group" style="padding-top:10px">
                    <label for="name" class="col-md-3 control-label input-label">Name:</label>
                    <div class="col-md-3">
                        <input type="text" class="form-control" name="name" id="t2" onclick="m1()"></input>
                    </div>
                </div>

                <div class="form-group" style="padding-top:10px">
                    <label for="balance" class="col-md-3 control-label input-label">Balance</label>
                    <div class="col-md-3">
                        <input style="color: red" type="text" class="form-control" name="balance" id="d1" disabled="true"></input>
                    </div>
                </div>


                <div class="form-group" style="padding-top:10px">
                    <label for="amount" class="col-md-3 control-label input-label">AMOUNT:</label>
                    <div class="col-md-3">
                        <input type="text" class="form-control" name="amount" id="a1" onkeyup="am()"></input>
                    </div>
                </div>

                <div class="form-group" style="padding-top:10px">
                    <label for="withdrawn_by" class="col-md-3 control-label input-label">DEPOSIT By:</label>
                    <div class="col-md-3">
                        <input type="text" class="form-control" name="withdrawn_by" id="w1"></input>
                    </div>
                </div>



                <div class="form-group">
                    <div class="col-md-3" style="padding-left: 200px;margin-left: 200px">
                        <label><button type="submit" class="btn btn-success" id="sub1" onmouseenter="m2()" onclick="m3()"> Submit </button></label >
                    </div>
                </div>

            </form>


        </div>
        <div class="container" style="float: left;background-color: steelblue;height:30px;;margin-left: 100px"></div>

        <script src="js/jquery-3.2.1.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/style.js" type="text/javascript"></script>


        <script language="javascript" type="text/javascript">
                            function m1() {
                                var v1 = document.getElementById("t1").value;
                                window.location.replace("withdraw.jsp?x=" + v1);
            <%
                String name = request.getParameter("x");

            %>
            <%s.setName(name);%>
            <%s.setAnumber(name);%>
                                var s = document.getElementById("t2").value;

                                if (s == "Account Not Found") {
                                    document.getElementById("t2").style.backgroundColor = "red";
                                    document.getElementById("sub1").disabled = true;
                                }
                                ;
                                m8();
                            }


                            function m8() {
                                var cc = document.getElementById("c1").value;
                                var acc = document.getElementById("t1").value;
                                window.location.replace("withdraw.jsp?y=" + cc + "&z=" + acc);

            <%
                String check = request.getParameter("y");
                String acc = request.getParameter("z");

            %>

            <%s.setCheck(check, acc);%>
            <%s.setName(acc);%>
            <%s.setAnumber(acc);%>





                            }

                            function m9() {
                                var c1 = document.getElementById("c1").value;
                                if (c1 == "Check Not Found") {
                                    document.getElementById("c1").value = "";
                                    document.getElementById("c1").style.backgroundColor = "lightgray";

                                }


                            }





                            function m2() {
                                var a1 = document.getElementById("a1").value;
                                var v2 = document.getElementById("t2").value;
                                var w1 = document.getElementById("w1").value;
                                var c1 = document.getElementById("c1").value;
                                var v3 = parseInt(document.getElementById("d1").value);
                                var v4 = document.getElementById("d1").value;
                                if (v2 == "Account Not Found") {
                                    window.alert("Select Account ");
                                    document.getElementById("sub1").disabled = true;
                                } else if (v3 <= 1000) {
                                    window.alert("Must Keep Minimum Balance 1000 Tk");
                                    document.getElementById("sub1").disabled = true;
                                } else if (w1 == "") {
                                    window.alert("Please Enter Withdraw by Name");
                                    document.getElementById("sub1").disabled = true;
                                } else if (c1 == "") {
                                    window.alert("Please Enter Check Number");
                                    document.getElementById("sub1").disabled = true;
                                } else if (a1 == "") {
                                    window.alert("Please Enter Amount");
                                    document.getElementById("sub1").disabled = true;
                                } else if (c1 == "Check Not Found") {
                                    window.alert("Check Not Found");
                                    document.getElementById("sub1").disabled = true;
                                    document.getElementById("c1").style.backgroundColor = "red";
                                    document.getElementById("i1").style.display = "none";
                                }

                            }
                            ;

                            function m10() {
                                var c1 = document.getElementById("c1").value;
                                var tid = "<%=lc.td%>";

                                if (c1 == "Check Not Found") {

                                    document.getElementById("sub1").disabled = true;
                                    document.getElementById("c1").style.backgroundColor = "red";
                                    document.getElementById("i1").style.display = "none";
                                }
                                if (tid !== "") {
                                    window.alert("Transaction Id: " + tid);

            <%lc.setTd("");%>

                                };


                            }



                            function m3() {
                                window.alert("Success");
                            }


                            function am() {
                                var v3 = parseInt(document.getElementById("d1").value);
                                var v4 = parseInt(document.getElementById("a1").value);
                                var r = v3 - v4;
                                if (r < 1000) {
                                    window.alert("Amount Exceed Balance Must Keep Minimum 1000 Tk");
                                    document.getElementById("sub1").disabled = true;
                                } else {
                                    document.getElementById("sub1").disabled = false;
                                }
                                ;
                            }


                            //chek Match









                            document.getElementById("t2").value = "<%=s.getName()%>";
                            document.getElementById("t1").value = "<%=s.getAnumber()%>";
                            document.getElementById("d1").value = "<%=s.getBalance()%>";
                            document.getElementById("c1").value = "<%=s.getCheck()%>";

        </script>



    </body>
</html>
