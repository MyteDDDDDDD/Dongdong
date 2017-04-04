<%-- 
    Document   : index
    Created on : Mar 27, 2017, 1:06:56 PM
    Author     : bochhuang2
--%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index_Dong Dong</title>
        <link href="./css/index_style.css" rel="stylesheet" />
    </head>
    <body>
        <div id="header">
            <div id="login">
                <%
                    if(session.getAttribute("logined")!= null && session.getAttribute("logined").equals(true)){
                        out.println("<font class='login_font'>Welcome! " + session.getAttribute("username") +  " Click <a href='./JSP_logsigninout/logout.jsp'>here</a> to logout.</font>");
                    }
                    else{
                        out.println("<font class='login_font'>Welcome to DongDong, please <a href='./JSP_logsigninout/login.jsp'>Log In</a> if you are our member, or <a href='./JSP_logsigninout/signup.jsp'>Sign Up</a> here</font>");
                    }
                %>
            </div>
            <table id ="search">
                
                <tr>
                    <th>
                        <a href ="index.jsp"><img src="./image/logo.gif" alt = "logo"></a>
                    </th>
                    <th>
                        
                        <form name='Search Form' action="./JSP_logsigninout/searchResult.jsp" method='POST'>
                        <input type='text' name='search_info' />
                        <input type='submit' value='Search' />
                        </form>
                    </th>
                    <div id ="shoppingCart">
                        <th>
                            <a href ="shopCart.jsp">
                                <img width ="60" height ="60" src="./image/shopCartIcon.jpg" alt = "shopCart">
                                <jsp:useBean id="cart" scope="session" class="org.mypackage.hello.ShopCart" />
                                </a>
                        </th>
                        <th ><font class = "shopCart_font">Shopping Cart: <%=cart.getAmount()%></font></th>
                        
                    </div>
                </tr>
            </table>
                
        </div>
        
        
        
    </body>
</html>
