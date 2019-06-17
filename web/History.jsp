<%-- 
    Document   : History
    Created on : May 19, 2019, 11:09:43 PM
    Author     : LENOVO
--%>
<%@page import="tme.project.demo.model.Place"%>
<%@page import="java.util.List"%>
<%@page import="tme.project.demo.model.Ticket"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/sticky-footer-navbar.css" rel="stylesheet">
        <link rel="stylesheet" href="css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>Report - My Notification</title>

        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/sticky-footer-navbar.css" rel="stylesheet">

        <link href="css/dataTables.bootstrap.min.css" rel="stylesheet">

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        <title>TME - Completed </title>
        <style>
            form{
                display: inline-block;
            }
            html,body{
                background-color:#E9E8E8;
            }
            .header{
                background-color:#FFFFFF;
                padding-top: 40px ;
                padding-left: 30px;
                padding-right: 30px;
                padding-bottom: 40px;
                color: red;
                font-family:Cordia New;
            }
            .page-header{
                padding-bottom: 10px;
                margin: 0px;
            }
        
          
            .navbar-header{
                background: #FF852B;

            }
            
            .block2 a{
                color: black;
            }
            .table.dataTable{
                background: whitesmoke;
            }
            thead{
                background: silver;
            }

             
        </style>
    </head>
    <body>
        <!-- Fixed navbar -->
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <div class="block2">
                        <a class="navbar-brand" href="ListTickets"> TME |</a>
                        <div class="now">
                            <a class="navbar-brand"><font size="3"><font color="#9ACD32"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></font>
                                <%=session.getAttribute("member_name")%> </font></a>
                        </div>
                        <div class="block1">
                            <div id="navbar" class="collapse navbar-collapse">
                                <ul class="nav navbar-nav">  
                                    <li><a href="ListAllEmergency"><span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span> All Notification</a></li>                                   
                                    <li class="active"><a href="History"><span class="glyphicon glyphicon-check" aria-hidden="true"></span> Completed</a></li>
                                    <li><a href="Logout"><span class="glyphicon glyphicon-off" aria-hidden="true"></span> Log out</a></li>
                                </ul>
                            </div>
                        </div><!--/.nav-collapse -->
                    </div>
                </div>        
            </div>

        </nav>

        <!-- Begin page content -->
        <div class="container">
            <div class="page-header">

            </div>

            <table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
                <thead>
                    <tr>
                        <th>No.</th>
                        <th>Case</th>
                        <th>Location</th>
                        <th>Status</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        if (request.getAttribute("tickets") != null) {
                            List<Ticket> tickets = (List) request.getAttribute("tickets");
                            int count = 1;
                            for (Ticket t : tickets) {
                    %>
                    <tr>
                        <td><%=count++%></td>
                        <td><a href = "Detail?id=<%=t.getId()%>" target="_blank"><%=t.getName()%></a></td>
                        <td><%=t.getPlace()%></td>
                        <td><%=t.getStatusName()%> </td>
                    </tr>
                    <%
                        }
                    } else {


                    %>
                    <tr>
                        <td> </td>
                        <td><a href = "" target="_blank"> </a></td>
                        <td> </td>
                        <td> </td>
                    </tr>
                    <%                        }
                    %>
                </tbody>
            </table>
        </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>

        <script src="js/jquery.dataTables.min.js"></script>
        <script src="js/dataTables.bootstrap.min.js"></script>

        <script type="text/javascript" class="init">
            $(document).ready(function () {
                $('#example').DataTable();
            });
        </script>
    </body>
</html>

