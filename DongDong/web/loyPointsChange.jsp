<%-- 
    Document   : loyPointsChange
    Created on : Apr 24, 2017, 2:19:37 PM
    Author     : yuanel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.naming.Context, javax.naming.InitialContext" %>
<%@page import="java.lang.String, java.lang.StringBuffer" %>
<%@page import="javax.naming.Context, javax.naming.InitialContext" %>
<%@page import="java.sql.Connection, javax.sql.DataSource" %>
<%@page import="java.sql.ResultSet, java.sql.Statement" %>
<%@page import="java.sql.SQLException, javax.naming.NamingException" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:useBean id="myUsers" class ="org.mypackage.hello.Users"></jsp:useBean>
        <title>JSP Page</title>
    </head>
    <body>
    <%
        String userid=request.getParameter("userid");
        int changeType=Integer.parseInt(request.getParameter("changeType"));
        
        float loyPoints=0;   
        float changeValue=0;
        if(changeType==0){
            changeValue=Float.parseFloat(request.getParameter("addPoints"));
        }
        else if(changeType==1){
            changeValue=-Float.parseFloat(request.getParameter("removePoints"));
        }
        
            // check correctness of username and password from database 
            try {
            Context initCtx = new InitialContext();
            Context envCtx = (Context)initCtx.lookup("java:comp/env");
            DataSource ds = (DataSource)envCtx.lookup("jdbc/login_tb");
            Connection con = ds.getConnection();
            
            Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
            ResultSet rs = stmt.executeQuery("SELECT * FROM login_tb ORDER BY username ASC");
            
            while (rs != null && rs.next() != false) {
                String username = rs.getString("username");
                
                if(userid.equals(username)){
                    loyPoints=rs.getFloat("loyaltyPoints");
                    
                    break;
                }
            }
            loyPoints+=changeValue;
            
            stmt.executeQuery("UPDATE login_tb SET loyaltyPoints=("+loyPoints+")WHERE username=("+userid+")");
            
            
                if (rs != null) {
                            rs.close();
                        }
                if (stmt != null) {
                    stmt.close();
                }
                if (con != null) {
                    con.close();
                }
            }
            catch (NamingException e) {
                %>
                    <div style='color: red'><%= e.toString() %></div>
                <%
            }catch (SQLException e) {
                %>
                    <div style='color: red'><%= e.toString() %></div>
                <%
            }
    %>
    
    <p>
        User: 
        <%=
            userid
            %>
    </p>
    
    <P>
        Loyalty Points: 
        <%=
            loyPoints
            %>
    </P>
    </body>
</html>
