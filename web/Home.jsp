

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <link href="css/sticky-footer-navbar.css" rel="stylesheet">
        <link rel="stylesheet" href="css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <style>
            html,body{
                background-color:#E9E8E8;
            }
            .header{
                background-color:#DA4545;
                padding-top: 50px ;
                padding-left: 30px;
                padding-right: 30px;
                padding-bottom: 40px;
                color: #000000;
                font-family:Cordia New;
                
            }
            h1{
                font-size: 200px;
                text-align: center;
                line-height: 150px;
                color: #FFFFFF;
                
            }
            
            body p{
                margin-right: 20px;
                margin-top: 5px;
                
            }
            .col-md-6 .form-group button{
                font-size: 48px;
                margin-top: 50px;
            }
            .log button{
                font-size: 48px;
                margin-top: 50px;
            }
            
        </style>
    </head>
    <body>
        <br>
        <p align="right"><font size="6"><font color="#9ACD32"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></font>
            <%=session.getAttribute("member_name")%></font></p>
        <br>
        <div class="header">
            <h1> For all officer</br>
                <p><i> TME </i></p>
            </h1>
        </div>
        <div class="container">
            <div class="row">               
                <div class="col-md-6">
                    <div class="form-group">
                        <a href="ListAllEmergency"><button type="button" class="btn btn-default btn-lg btn-block"><span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span> ALL NOTIFICATION !</button></a><br>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <a href="History"><button type="button" class="btn btn-default btn-lg btn-block"><span class="glyphicon glyphicon-check" aria-hidden="true"></span> COMPLETED WORK</button></a><br>
                    </div>
                </div>
            </div>
            <div class="log">
            <a href="Logout"><button type="button" class="btn btn-default btn-lg btn-block"> <span class="glyphicon glyphicon-log-out" aria-hidden="true"></span> LOG OUT </button></a>
            </div>
        </div>
    </body>
    
</html>
