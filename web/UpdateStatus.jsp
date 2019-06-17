
<%@page import="tme.project.demo.model.Place"%>
<%@page import="tme.project.demo.model.Ticket"%>
<%@page import="java.util.List"%>
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
        <title>Report - Notification List</title>

        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/sticky-footer-navbar.css" rel="stylesheet">

        <link href="css/dataTables.bootstrap.min.css" rel="stylesheet">
        <!-- include a theme, can be included into the core instead of 2 separate files -->



        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        <title>TME -  Notification List</title>
        <style>
            form{
                display: inline-block;
            }
            html,body{
                background-color:#E9E8E8;
            }
            .header{
                background-color:#FF852B;
                padding-top: 40px ;
                padding-left: 30px;
                padding-right: 30px;
                padding-bottom: 40px;
                color: #000000;
                font-family:Cordia New;
            }
            .navbar-header{
                background: #FF852B;
            }
            .page-header{
                padding-bottom: 10px;
                margin: 0px;
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
                        <a class="navbar-brand" href="ListAllEmergency.jsp">TME |</a>
                        <div class="now">
                            <a class="navbar-brand"><font size="3"><font color="#9ACD32"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></font>
                                <%=session.getAttribute("member_name")%> </font></a>
                        </div>
                        <div class="block1">
                            <div id="navbar" class="collapse navbar-collapse">
                                <ul class="nav navbar-nav">                                      
                                    <li class="active"><a href="UpdateStatus"><span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span> All Notification</a></li>
                                    <li><a href="History"><span class="glyphicon glyphicon-check" aria-hidden="true"></span> Completed </a></li>
                                    <li><a href="Logout"><span class="glyphicon glyphicon-off" aria-hidden="true"></span> Log Out</a></li>
                                </ul>
                            </div>
                        </div>
                    </div><!--/.nav-collapse -->
                </div>

            </div>
        </nav>

        <!-- Begin page content -->
        <div class="container">
            <br>
            <br>
            <div class="page-header">

            </div>

            <%
                if (request.getAttribute("code") != null) {
            %>
            <div class="alert alert-<%=(String) request.getAttribute("code")%>">
                <strong><%=(String) request.getAttribute("alert")%></strong> <%=(String) request.getAttribute("message")%>
            </div>
            <%
                }
            %>

            <table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Case</th> 
                        <th>Location</th>
                        <th width="200">Update & Delete</th> 
                       

                    </tr>
                </thead>
                <tbody>
                    <%
                        List<Ticket> tickets = (List) request.getAttribute("tickets");
                        for (Ticket t : tickets) {
                    %>
                    <tr>
                        <td><%=t.getId()%></td>
                        <td><a href = "Detail?id=<%=t.getId()%>" ><%=t.getName()%></a></td>
                        <td><%=t.getPlace()%></td>

                        <td>    
                <center>
                    <form action="UpdateStatus" method="post" onsubmit="return confirm('You really want to change status?');">  
                        <input type="hidden" name="id" value="<%=t.getId()%>">
                        <select  name="status" id="status" class="form-control">                           
                            <option value="1" <%=t.getStatus() == 1 ? "selected" : ""%>>Accept</option>
                            <option value="2" <%=t.getStatus() == 2 ? "selected" : ""%>>Complete</option>
                        </select>                    
                        <button type='submit'><span class="glyphicon glyphicon-ok" aria-hidden="true"></span></button>
                    </form>
                
                    <form action="DeleteEmergency" method="post" onsubmit="return confirm('You really want to delete?');">       
                        <button type='submit'><span class="glyphicon glyphicon-trash"  ></span></button>
                        <input type="hidden" name="id" value="<%=t.getId()%>"> 
                    </form>  
                </center>
                </td>
                </tr>
                <%
                    }
                %>
                </tbody>
            </table>
        </div>


        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
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
