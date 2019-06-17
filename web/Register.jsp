
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/sticky-footer-navbar.css" rel="stylesheet">
        <link rel="stylesheet" href="css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <title>Register</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <style>
            html,body{
                background-color:#F5F5F5;
            }
            .header{
                background-color:#FFFFFF;
                padding-top: 40px ;
                padding-left: 30px;
                padding-right: 30px;
                padding-bottom: 40px;
                color: #000000;
                font-family:Cordia New;
                font-size: 500px;
            }
            h2{
                font-size: 100px;
                text-align: center;
                line-height: 50px;
            }
            .containers{
                position: fixed;
                top: 0;
                left: 0;
                min-width: 100%;
                min-height: 100%;
                color: #FFFFCC;
            }
            .contents{
                background-color:#D3D3D3;
                padding-top: 20px ;
                padding-left: 30px;
                padding-right: 30px;
                padding-bottom: 20px;
                font-size: 21px;
                color: #000000;
                font-family:Cordia New;
            }
            .button{
                font-size: 21px;
                color: #FFFFFF;
                font-family:Cordia New;
            }
        </style>
    </head>
    <body>
        <div class="container">   
            <div class="header">
                <article>
                    <h2><font> ╔ <u>REGISTER</u> ╝</font></br>
                        <font size=100> MY-KMUTT </font></h2>
                </article>
            </div>

            <br>
            <%
                if (request.getAttribute("code") != null) {
            %>
            <div class="alert alert-danger alert-<%=(String) request.getAttribute("code")%>">
                <strong><%=(String) request.getAttribute("alert")%></strong> <%=(String) request.getAttribute("message")%>
            </div>
            <%
                }
            %>
            <br>
            <div class="contents">
                <form action="Register" method="post"> 
                    <div class="row">
                        <div class="col-md-5">
                            <div class="form-group">
                                <label for="exampleName"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> ENTER NAME</label>
                                <font face="Tahoma">
                                <input type="name" class="form-control" id="exampleName" name="name" placeholder="NAME" required="">
                                </font>
                            </div>
                        </div>
                        <div class="col-md-5">
                            <div class="form-group">
                                <label for="exampleSurname"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> ENTER SURNAME</label>
                                <font face="Tahoma">
                                <input type="surname" class="form-control" id="exampleSurname" name="surname" placeholder="SURNAME" required="">
                                </font>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-5">
                            <div class="form-group">
                                <label for="exampleStudentID"><span class="glyphicon glyphicon-education" aria-hidden="true"></span> ENTER STUDENT ID</label>
                                <font face="Tahoma">
                                <input type="number" class="form-control" id="exampleStudentID" name="student_ID" placeholder="STUDENT ID" required="">
                                </font>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <label for="exampleGender"><span class="glyphicon glyphicon-ok" aria-hidden="true"></span> SELECT GENDER</label>
                            <br>
                            <label class="checkbox-inline">
                                <input type="radio" id="inlineCheckbox1" name="gender" value="F" required=""><font color="FF6666"> FEMALE </font>
                            </label>
                            <label class="checkbox-inline">
                                <input type="radio" id="inlineCheckbox2" name="gender" value="M" required=""><font color="6666FF"> MALE </font>
                            </label>
                        </div>

                        <div class="col-md-8">
                            <div class="form-group">
                                <label for="exampleFaculty"><span class="glyphicon glyphicon-sort" aria-hidden="true"></span> SELECT FACULTY</label>
                                <select id="exampleFaculty" name="faculty" class="form-control">
                                    <option>SELECT FACULTY !!!</option>
                                    <option value="ETE">คณะครุศาสตร์อุตสาหกรรมและเทคโนโลยี สาขาวิศวกรรมไฟฟ้า</option>
                                    <option value="ECT">คณะครุศาสตร์อุตสาหกรรมและเทคโนโลยี สาขาเทคโนโลยีการศึกษาและสื่อสารมวลชน</option>
                                    <option value="PT">คณะครุศาสตร์อุตสาหกรรมและเทคโนโลยี สาขาเทคโนโลยีอุตสาหกรรม</option>
                                    <option value="PPT">คณะครุศาสตร์อุตสาหกรรมและเทคโนโลยี สาขาเทคโนโลยีการพิมพ์และบรรจุภัณฑ์</option>
                                    <option value="CMM">คณะครุศาสตร์อุตสาหกรรมและเทคโนโลยี สาขาวิทยาการคอมพิวเตอร์ประยุกต์-มัลติมีเดีย</option>
                                    <option value="MA">คณะครุศาสตร์อุตสาหกรรมและเทคโนโลยี สาขามีเดียอาตส์</option>
                                    <option value="MMDA">คณะครุศาสตร์อุตสาหกรรมและเทคโนโลยี สาขามีเดียทางการแพทย์และวิทยาศาสตร์</option>
                                    <option value="MTE">คณะครุศาสตร์อุตสาหกรรมและเทคโนโลยี สาขาวิศวกรรมเครื่องกล</option>
                                    <option value="CTE">คณะครุศาสตร์อุตสาหกรรมและเทคโนโลยี สาขาวิศวกรรมโยธา</option>
                                    <option value="PTE">คณะครุศาสตร์อุตสาหกรรมและเทคโนโลยี สาขาวิศวกรรมอุตสาหการ</option>
                                    <option value="MT">คณะครุศาสตร์อุตสาหกรรมและเทคโนโลยี สาขาเทคโนโลยีมีเดีย</option>

                                    <option value="MTH">คณะวิทยาศาสตร์ สาขาคณิตศาสตร์</option>
                                    <option value="CHM">คณะวิทยาศาสตร์ สาขาเคมี</option>
                                    <option value="MIC">คณะวิทยาศาสตร์ สาขาจุลชีววิทยา</option>
                                    <option value="PHY">คณะวิทยาศาสตร์ สาขาฟิสิกส์ประยุกต์</option>
                                    <option value="CS">คณะวิทยาศาสตร์ สาขาวิทยาการคอมพิวเตอร์ประยุกต์</option>
                                    <option value="FST">คณะวิทยาศาสตร์ สาขาวิทยาศาสตร์และเทคโนโลยีการอาหาร</option>
                                    <option value="MTH ST">คณะวิทยาศาสตร์ สาขาสถิติ</option>

                                    <option value="CE">คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมโยธา</option>
                                    <option value="CE IP">คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมโยธา หลักสูตรนานาชาติ</option>
                                    <option value="CHE">คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมเคมี</option>
                                    <option value="CHE IP">คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมเคมี หลักสูตรนานาชาติ</option>
                                    <option value="ENV">คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมสิ่งแวดล้อม</option>
                                    <option value="ENV IP">คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมสิ่งแวดล้อม หลักสูตรนานาชาติ</option>
                                    <option value="MCE">คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมเมคคาทรอนิกส์</option>
                                    <option value="CPE">คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมคอมพิวเตอร์</option>
                                    <option value="CPE IP">คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมคอมพิวเตอร์ หลักสูตรนานาชาติ</option>
                                    <option value="ME">คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมเครื่องกล</option>
                                    <option value="ENE">คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมไฟฟ้าสื่อสารและอิเล็กทรอนิกส์</option>
                                    <option value="ENE IP">คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมไฟฟ้าสื่อสารและอิเล็กทรอนิกส์ หลักสูตรนานาชาติ</option>
                                    <option value="EE">คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมไฟฟ้า</option>
                                    <option value="PE">คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมอุตสาหการ</option>
                                    <option value="TME">คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมเครื่องมือและวัสดุ</option>
                                    <option value="INC">คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมระบบควบคุมและเครื่องมือวัด</option>
                                    <option value="AE">คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมอัตโนมัติ หลักสูตรนานาชาติ</option>
                                    <option value="AME">คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมการผลิตชิ้นส่วนยานยนต์</option>

                                    <option value="SIT">คณะเทคโนโลยีสารสนเทศ สาขาเทคโนโลยีสารสนเทศ </option>
                                    <option value="CS EP">คณะเทคโนโลยีสารสนเทศ สาขาวิทยาการคอมพิวเตอร์</option>

                                    <option value="ARC">คณะสถาปัตยกรรมศาสตร์และการออกแบบ สาขาสถาปัตยกรรม หลักสูตรนานาชาติ</option>
                                    <option value="ID">คณะสถาปัตยกรรมศาสตร์และการออกแบบ สาขาการออกแบบอุตสาหกรรม หลักสูตรนานาชาติ</option>
                                    <option value="CMD">คณะสถาปัตยกรรมศาสตร์และการออกแบบ สาขาออกแบบนิเทศศิลป์ หลักสูตรนานาชาติ</option>
                                    <option value="INA">คณะสถาปัตยกรรมศาสตร์และการออกแบบ สาขาสถาปัตยกรรมภายใน หลักสูตรนานาชาติ</option>

                                    <option value="FIBO">สถาบันวิทยาการหุ่นยนต์ภาคสนาม สาขาวิศวกรรมหุ่นยนต์และระบบอัตโนมัติ</option>

                                    <option value="IBP">หลักสูตรเฉพาะบุคคล (IBP) สาขาวิทยาศาสตร์และเทคโนโลยี</option>

                                    <option>------------------------------------------------------------------------------</option>
                                </select>
                            </div>
                            <div class="row">               
                                <div class="col-md-6">

                                    <div class="form-group">
                                        <label for="exampleEmail"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>  E-MAIL ADDRESS</label>
                                        <font face="Tahoma">
                                        <input type="Email" class="form-control" id="exampleEmail" name="email" placeholder="EMAIL ADDRESS" required="">
                                        </font>
                                    </div>
                                </div>
                            </div>
                            <div class="row">               
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="exampleUsername"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> CREATE NEW USERNAME</label>
                                        <font face="Tahoma">
                                        <input type="username" class="form-control" id="exampleUsername" name="username" placeholder="CREATE USERNAME" required="">
                                        </font>
                                    </div>
                                </div>  
                            </div>
                            <div class="row">               
                                <div class="col-md-6">

                                    <div class="form-group">
                                        <label for="exampleNewPassword"><span class="glyphicon glyphicon-lock" aria-hidden="true"></span> CREATE NEW PASSWORD</label>
                                        <font face="Tahoma">
                                        <input type="password" class="form-control" id="exampleNewPassword" name="password" placeholder="NEW PASSWORD" required="">
                                    </div>
                                </div>              
                                <div class="col-md-6">

                                    <div class="form-group">
                                        <font face="Cordia New">
                                        <label for="exampleConfirmPassword"><span class="glyphicon glyphicon-lock" aria-hidden="true"></span> CONFIRM PASSWORD</label>
                                        </font>
                                        <font face="Tahoma">
                                        <input type="password" class="form-control" id="exampleConfirmPassword" name="repassword" placeholder="CONFIRM PASSWORD" required="">
                                        </font>
                                    </div>
                                </div>
                                <div class="button">
                                    <a href="login.jsp"><input name="submit" value="submit" type="submit" class="btn btn-primary btn-lg "></input></a>
                                    or
                                    <input type="RESET" class="btn btn-danger btn-lg " value="RESET">
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <br>
        <br>
    </body>
</html>
