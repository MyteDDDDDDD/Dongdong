<%-- 
    Document   : userPage
    Created on : Apr 14, 2017, 4:29:20 PM
    Author     : bochhuang2
--%>

<%@page import="org.mypackage.hello.Commodity"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Page</title>
        <link href="./css/search_style.css" rel="stylesheet" />
    </head>
    <body>
       <jsp:include page="header1.jsp" flush="true"/>
        <jsp:useBean id="cart" scope="session" class="org.mypackage.hello.ShopCart" />
        <div>
            <%  
                if(request.getParameter("remove")!=null){
             
                      
                    cart.removeCommodity(Integer.parseInt(request.getParameter("remove")));
                }
                
                if(cart.getCommoditiesSize()>0){
                float sum=0 ;
            
                for(int i=0;i<cart.getCommoditiesSize();i++){
            %>
            <table>
                <tr>
                    <td>
                        Book Title :
                        <%=cart.getCommodity(i).getName()%>
                    </td>
                    <td>
                        Unit Price ：
                        <%=cart.getCommodity(i).getPrice()%>
                    </td>
                    <td>
                        Number :
                        <%=cart.getCommodity(i).getNumber()%>
                    </td>
                    <td>
                        Total Price:
                        <%=cart.getCommodity(i).getNumber()*cart.getCommodity(i).getPrice()%>
                        
                    </td>
                    <td>
                            
                       <form action="shopCart.jsp" method="POST">
                           <input type="hidden" name="remove" value="<%= i %>" >
                           <input type="submit" value="Remove" >
                        </form>
                    </td>
                </tr>
            </table>
            <%
                sum+=cart.getCommodity(i).getNumber()*cart.getCommodity(i).getPrice();
               }
            %>
            <div>
                Total Price:
                <%="$"+sum
                %>
            </div>
            <%
               }
            %>
            
        </div>
        <div>
            <%
           if(session.getAttribute("logined")== null || session.getAttribute("logined")=="false" ){
            %>
            <form action="JSP_logsigninout/login.jsp" method="POST">
                    <input type="submit" value="Log In To Continue Purchase" >
            </form>
            <% 
               }
            else{

            %>
             <form action="checkLoyPoints.jsp" method="POST">
                    <input type="submit" value="Go To Purchase Page" >
            </form>
            <%
                }
            %>
          
            <form action="index.jsp" method="POST">
                    <input type="submit" value="Go Back To Home Page" >
            </form>
        </div>
            
               <jsp:include page="footer.jsp" flush="true"/>
    </body>
</html>
