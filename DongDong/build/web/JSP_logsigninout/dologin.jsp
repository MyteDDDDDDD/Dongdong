<%-- 
    Document   : dologin
    Created on : Apr 4, 2017, 4:23:33 PM
    Author     : bochhuang2
--%>

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Do login</title>
    </head>
    <body style="text-align: center">
        <div id="header">
             <a href ="../index.jsp"><img src="../image/logo.gif" alt = "logo"></a>
        </div>
        <div id="result" style="margin: 0 auto; width: 300px">
        <jsp:useBean id="myUsers" class ="org.mypackage.hello.Users"></jsp:useBean>
        <jsp:setProperty property="*" name="myUsers"/>
        <%
            boolean loginSuccess = false;
            String inputUsername = myUsers.getUsername();
            String inputPassword = myUsers.getPassword();
            // check correctness of username and password from database 
            
            // select * from userinfo where uid = myUsers.getUsername()
            // if stmt = null; return null username error
            // if exist, compare the username and password
            // if false, return wrong password or username error
            // if true, return true login page
            
            
            
            // for simple first:
            if( inputUsername.equals("admin")  && inputPassword.equals("admin")){
            
                loginSuccess = true;
            }
            
            if(loginSuccess){
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
                String date = sdf.format(new Date(session.getCreationTime()));
                session.setAttribute("username", inputUsername);
                session.setAttribute("password", inputPassword);
                session.setAttribute("logined",true);
            }
            if(!loginSuccess){
                request.setAttribute("error","Wrong Username or Password");
                request.setAttribute("username", inputUsername);
                request.getRequestDispatcher("login.jsp").forward(request, response);
            
            }
        %>
        <h2>Login Success!</h2>
        <a  href="../index.jsp"><img style="width: 50px; height: 50px" src="../image/back.jpg" alt="Back"/></a>
        </div>
    </body>
</html>
