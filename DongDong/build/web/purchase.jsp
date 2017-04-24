<%-- 
    Document   : purchase
    Created on : 2017-4-24, 1:27:02
    Author     : elvis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <jsp:include page="header1.jsp" flush="true"/>
       <jsp:useBean id="cart" scope="session" class="org.mypackage.hello.ShopCart" />
       <p>
          <%
              float sum=0;
              for(int i=0;i<cart.getCommoditiesSize();i++){
                  sum+=cart.getCommodity(i).getPrice();
              }
              sum-=Float.parseFloat(request.getParameter("loyPoints"));
          %>
          Total Price:
          <%=sum%>
           <form action="" method="POST">
                Credit Card Number
                <input type="text" value="">
                Credit Card Safety Code
                <input type="text" value="">
                Delivery address
                <input type="text" value="">
                <input type="submit" value="Pay now" >
            </form>
       </p>
          
       <jsp:include page="footer.jsp" flush="true"/>
    </body>
</html>
