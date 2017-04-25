<%-- 
    Document   : userProductPage
    Created on : Apr 21, 2017, 5:27:35 PM
    Author     : bochhuang2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Product Page</title>
        <link href="<%=request.getContextPath()%>/css/search_style.css" rel="stylesheet" />
    </head>
    <body>
        <jsp:include page="..\header1.jsp" flush="true"/>
        <jsp:useBean id="mybook" scope="page" class="org.mypackage.hello.SearchResult" />
        <%
            mybook.setAuthor(request.getParameter("author"));
            mybook.setTitle(request.getParameter("bname"));
            mybook.setImgUrl(request.getParameter("imgUrl"));
            mybook.setPrice(Float.parseFloat(request.getParameter("price").substring(1)));
            mybook.setPublisher(request.getParameter("publisher"));
            mybook.setIntroduce(request.getParameter("introduce"));
        %>
         <div id="div_result">
       <table id="wholeResultTable">
                <tr>
                    <td>
                        <a href ="index.jsp"><img class="reslut_img" src="<%=request.getContextPath()%>/image/<%=mybook.getImgUrl()%>" alt = "<%=mybook.getTitle()%>"></a>
                    </td>
                    <td valign="top">
                        <table id="table_result">
                            <tr>
                                <td class="text_title">
                                    <h4><%=mybook.getTitle()%></h4>
                                </td>
                                <%
                                if(session.getAttribute("logined")!= null && session.getAttribute("role").equals(0)){
                                %>
                                <td class="text_title">
                                    <a href="<%=request.getContextPath()%>/checkBook.jsp">Edit</a>
                                </td>
                                <%
                                }
                                %>
                            </tr>
                            <tr>
                                <td class="text_price">
                                <%=mybook.getPrice()%>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                <%=mybook.getAuthor()%>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                <%=mybook.getPublisher()%>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                <%=mybook.getIntroduce()%>
                                </td>
                            </tr>
                            <tr valign="bottom">
                                <td >
                                    <jsp:useBean id="cart" scope="session" class="org.mypackage.hello.ShopCart" />
                                   
                                    
                                  
                                    <form action="<%=request.getContextPath()%>/addToCart.jsp" method="POST">
                                        <input type="hidden" name="ebook" value="<%=mybook.getType()%>" />
                                        <input type="hidden" name="price" value="<%=mybook.getPrice()%>" />
                                        <input type="hidden" name="name" value="<%=mybook.getTitle()%>" />
                                        <input type="text" name="number"value="1"/>
                                        <input type="submit" name="add" value="Add To Shop Cart" />
                                    </form>
                                        
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
       
         </div>
        <jsp:include page="..\footer.jsp" flush="true"/>
    </body>
</html>
