<%-- 
    Document   : logout
    Created on : Apr 4, 2017, 5:37:21 PM
    Author     : bochhuang2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout page</title>
    </head>
    <body style="text-align: center">
        <div id="header">
             <a href ="../index.jsp"><img src="../image/logo.gif" alt = "logo"></a>
        </div>
        <div id="result" style="margin: 0 auto; width: 300px">
            
            <h2>See you again! <%=session.getAttribute("username")%></h2>
            <%
                session.invalidate();
            %>
            <a  href="../index.jsp"><img style="width: 50px; height: 50px" src="../image/back.jpg" alt="Back"/></a>
        </div>
    </body>
</html>
