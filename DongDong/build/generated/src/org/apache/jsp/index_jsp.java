package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Index_Dong Dong</title>\n");
      out.write("        <link href=\"./css/index_style.css\" rel=\"stylesheet\" />\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"header\">\n");
      out.write("            <div id=\"login\">\n");
      out.write("                ");

                    if(session.getAttribute("logined").equals(true)){
                        out.println("Welcome! " + session.getAttribute("username") + ". Click <a href='./JSP_logsigninout/logiut.jsp'>here</a> to logout");
                    }
                    else{
                        out.println("<font class='login_font'>Welcome to DongDong, please <a href='./JSP_logsigninout/login.jsp'>Log In</a> if you are our member, or <a href='./JSP_logsigninout/signup.jsp'>Sign Up</a> here</font>");
                    }
                
      out.write("\n");
      out.write("            </div>\n");
      out.write("            <table id =\"search\">\n");
      out.write("                \n");
      out.write("                <tr>\n");
      out.write("                    <th>\n");
      out.write("                        <a href =\"index.jsp\"><img src=\"./image/logo.gif\" alt = \"logo\"></a>\n");
      out.write("                    </th>\n");
      out.write("                    <th>\n");
      out.write("                        \n");
      out.write("                        <form name='Search Form' action=\"./JSP_logsigninout/searchResult.jsp\" method='POST'>\n");
      out.write("                        <input type='text' name='search_info' />\n");
      out.write("                        <input type='submit' value='Search' />\n");
      out.write("                        </form>\n");
      out.write("                    </th>\n");
      out.write("                    <div id =\"shoppingCart\">\n");
      out.write("                        <th>\n");
      out.write("                            <a href =\"shopCart.jsp\">\n");
      out.write("                                <img width =\"60\" height =\"60\" src=\"./image/shopCartIcon.jpg\" alt = \"shopCart\">\n");
      out.write("                                ");
      org.mypackage.hello.ShopCart cart = null;
      synchronized (session) {
        cart = (org.mypackage.hello.ShopCart) _jspx_page_context.getAttribute("cart", PageContext.SESSION_SCOPE);
        if (cart == null){
          cart = new org.mypackage.hello.ShopCart();
          _jspx_page_context.setAttribute("cart", cart, PageContext.SESSION_SCOPE);
        }
      }
      out.write("\n");
      out.write("                                </a>\n");
      out.write("                        </th>\n");
      out.write("                        <th ><font class = \"shopCart_font\">Shopping Cart: ");
      out.print(cart.getAmount());
      out.write("</font></th>\n");
      out.write("                        \n");
      out.write("                    </div>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("                \n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
