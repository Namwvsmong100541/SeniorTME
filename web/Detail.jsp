
<%@page import="tme.project.demo.model.Place"%>
<%@page import="tme.project.demo.model.Member"%>
<%@page import="tme.project.demo.model.Ticket"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/sticky-footer-navbar.css" rel="stylesheet">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/sticky-footer-navbar.css" rel="stylesheet">

        <link href="css/dataTables.bootstrap.min.css" rel="stylesheet">
        <!-- include a theme, can be included into the core instead of 2 separate files -->

        <title>Detail</title>
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
                    
                    <div class="block2">
                        <a class="navbar-brand" href="MyEmergency"><span class="glyphicon glyphicon-backward" aria-hidden="true"></span> Back </a>
                        <div class="now">
                            <a class="navbar-brand"><font size="3"><font color="#9ACD32"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></font>
                                <%=session.getAttribute("member_name")%> </font></a>
                        </div>
                        
                </div>

            </div>
        </nav>

        <div class="now">
            <a class="navbar-brand"><font size="3"><font color="#9ACD32"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></font>
                <%=session.getAttribute("member_name")%> Login Now</font></a>
        </div>
    </div>
</nav>
<br>
<br>
<div class="container">
    <div class="page-header">
        <h3><b>Detail of Notification</b></h3>

        <%
            Ticket t = (Ticket) request.getAttribute("ticket");
            Member m = Member.getMember(t.getUserId());

        %>
    </div><br>
    <div class="row">
        <div class="col-md-8">
            <div class="panel panel-default">
                <div class="panel-heading"> <h3> <%=t.getName()%> </h3></div>                               
                <div class="panel-body">              
                    <p> Phone no. : <%=t.getDesc()%>  </p>
                    <p> Location : <%=t.getPlace()%> </p>
                    <p> Status : <%=t.getStatusName()%> </p>
                </div>
            </div>
        </div>

        <div class="col-md-4"><div class="panel panel-default">
                <div class="panel-heading"> <h3><span class="glyphicon glyphicon-user" aria-hidden="true"></span> User Info. </h3></div>                               
                <div class="panel-body"> 
                    <p> Name : <%=m.getName()%></p>
                    <p> Surname : <%=m.getSurname()%></p>
                    <p> Student ID : <%=m.getStdId()%></p>
                    <p> Faculty : <%=m.getFaculty()%></p>
                    <p> Email : <%=m.getEmail()%></p>
                </div>
            </div>

        </div>
    </div>
</div>
</detail>
</body>

</html>
