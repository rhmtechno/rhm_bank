<%-- 
    Document   : index
    Created on : May 23, 2018, 10:08:19 PM
    Author     : RAKIB
--%>

<%@page import="com.exam.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="com.exam.LoginController" id="lc"/>
<%!
    Student s = new Student();

%>

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
    <body  onload="fd()">
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
                                <li ><a class="glyphicon glyphicon-home" href="home_1.jsp" style="color: white;background-color:#245269;margin-right: 3px;margin-top: 3px"> Home</a></li>


                                <li class="dropdown">
                                    <a style="color: white;background-color:#245269;margin-right: 3px;margin-top: 3px" href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" onclick="m1()" >Fund Transfer</a>

                                </li>
                                <li ><a  href="statement_1.jsp" style="color: white;background-color:#245269;margin-right: 3px;margin-top: 3px"> Statement</a></li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"  data-hover="dropdown" style="color: white;background-color:#245269;margin-right: 3px;margin-top: 3px">Service</a>

                                </li>

                                <li ><a class=" glyphicon glyphicon-off " href="user.jsp" style="color: white;background-color:#245269;margin-right: 3px;margin-top: 3px"> Logout</a></li>


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

        <div class="container" style="float: left;background-color:#9acfea;height:450px;margin-left: 100px ">
            <!vdfvbfdbfd-->

            <span style="color: blue">Balance is: ${lc.bal} Tk. </span>

            <div id="data">  

                <form class="form-horizontal" action="transfer.htm" method="post"  style="margin-left: 200px" >

                    <legend class="the-legend">Deposit</legend>
                    <span style="color: red;font-size: 15pt" id="sp1"></span>
                    <div class="form-group" style="padding-top:10px">

                        <label for="acc" class="col-md-3 control-label input-label">My Account</label>

                        <div class="col-md-3">

                            <input type="text" class="form-control" name="acc" id="t1" disabled="true"></input>
                        </div>
                    </div>


                    <div class="form-group" style="padding-top:10px">
                        <label for="name" class="col-md-3 control-label input-label">Available balance</label>
                        <div class="col-md-3">
                            <input type="text" class="form-control" name="name" id="t2" disabled="true"></input>
                        </div>
                    </div>


                    <div class="form-group" style="padding-top:10px">

                        <label for="ra" class="col-md-3 control-label input-label">Receiver Account</label>

                        <div class="col-md-3">

                            <input type="text" class="form-control" name="ra" id="t3"></input>
                        </div>
                    </div>


                    <div class="form-group" style="padding-top:10px">
                        <label for="ran" class="col-md-3 control-label input-label">Account name</label>
                        <div class="col-md-3">
                            <input type="text" class="form-control" name="ran" id="t4" onclick="m4()"></input>
                        </div>
                    </div>




                    <div class="form-group" style="padding-top:10px">
                        <label for="amount" class="col-md-3 control-label input-label">Amount</label>
                        <div class="col-md-3">
                            <input type="text" class="form-control" name="amount" id="t5" onkeyup="am()" ></input>
                        </div>
                    </div>



                    <div class="form-group">
                        <div class="col-md-3" style="padding-left: 200px;margin-left: 200px">
                            <label><button type="submit" class="btn btn-success" id="sub1" onmouseenter="m2()" onclick="m3()"> Submit </button></label >
                        </div>
                    </div>

                </form>





            </div>


        </div>




        <div class="container" style="float: left;background-color: steelblue;height:30px;;margin-left: 100px"></div>

        <script src="js/jquery-3.2.1.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/style.js" type="text/javascript"></script>





        <script language="javascript" type="text/javascript">
                                var myVar = setInterval(myTimer, 1000);

                                function myTimer() {
                                    var d = new Date();
                                    document.getElementById("demo").innerHTML = d;
                                }
                                function m1() {
                                    document.getElementById("data").style.display = "block";
                                    document.getElementById("t1").value = <%=lc.ac%>;
                                    document.getElementById("t2").value = <%=lc.bal%>;


                                }


                                function fd() {
                                    var ond=document.getElementById("t4").value;
                                    
                                    if(ond=="Account Not Found"){
                                       document.getElementById("data").style.display = "none"; 
                                    }else{
                                        document.getElementById("data").style.display = "block";
                                        
                                    };
                                    

                               


                                }

                                



                                function m4() {
                                    
                                    
                                   var v2= document.getElementById("t1").value;
                                    var v3=document.getElementById("t2").value;
                                    

                                    var v1 = document.getElementById("t3").value;
                                    window.location.replace("home_1.jsp?x=" + v1+ "&y=" + v2+ "&z=" + v3);


            <%
                String name = request.getParameter("x");
                String name1 = request.getParameter("y");
                String name2 = request.getParameter("z");

            %>
            <%s.setName(name);%>
            <%s.setAnumber(name);%>
            <%s.setMac(name1);%>
            <%s.setAb(name2);%>
                                    var s = document.getElementById("t4").value;

                                    if (s == "Account Not Found") {
                                        document.getElementById("t4").style.backgroundColor = "red";
                                        document.getElementById("sub1").disabled = true;
                                    }
                                    ;
                                    
                                  

                                }
                                
                                
                               
                            document.getElementById("t3").value = "<%=s.getAnumber()%>";  
                            document.getElementById("t4").value = "<%=s.getName()%>";
                            document.getElementById("t1").value = <%=lc.ac%>;
                            document.getElementById("t2").value = <%=lc.bal%>;
                            
                           
                          function am() {

                                 var v3 = parseInt(document.getElementById("t2").value);
                                var v4 = parseInt(document.getElementById("t5").value);
                                var r = v3 - v4;
                                if (r < 1000) {
                                    window.alert("Amount Exceed Balance Must Keep Minimum 1000 Tk");
                                    document.getElementById("sub1").disabled = true;
                                } else {
                                    document.getElementById("sub1").disabled = false;
                                }
                                ;
                                
                                
                            }





        </script>











    </body>
</html>
