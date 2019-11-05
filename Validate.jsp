<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head>
        <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
        <title>validate.jsp</title>
        </head><body>
<%@ page import="java.sql.*"%>
<%
    try{
        String email=request.getParameter("email");
        String Password=request.getParameter("Password");
        
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn=DriverManager.getConnection(
          "jdbc:mysql://localhost:3306/onlinemobileshopping","root","1234");
        PreparedStatement pst=conn.prepareStatement(
         "Select email,password from login where email=? and Password=?");
        pst.setString(1,email);
        pst.setString(2,Password);
        ResultSet rs=pst.executeQuery();
        if(rs.next())
        {
           session.setAttribute("email",email);
           response.sendRedirect("index.jsp");
           conn.close();
        }
        else
        {
        %>
        <jsp:include page="invaliduser.jsp"/>
        <%
    }
    }
    catch(Exception e)
    {
        out.println(e.getMessage());
        
    }
%></body></html>