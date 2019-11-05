<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head>
        <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
        <title>validate.jsp</title>
     </head>
    <body>
<%@ page import="java.sql.*"%>
<%
    try{
        String email=request.getParameter("email");
        String Mobile=request.getParameter("Mobile");
        String npwd=request.getParameter("npwd");   
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn=DriverManager.getConnection(
          "jdbc:mysql://localhost:3306/onlinemobileshopping","root","1234");
        String sql="Select email,Mobile from register "
                + "where email='"+email+"' and Mobile='"+Mobile+"'";
        PreparedStatement pst=conn.prepareStatement(sql);
        pst.executeQuery(sql);
        String sql1="update register set password='"+npwd+"'"
                + " where email='"+email+"' and Mobile='"+Mobile+"'";
        PreparedStatement pst1=conn.prepareStatement("i");
        String sql2="update login set password='"+npwd+"'"
                + "  where email='"+email+"'";
   PreparedStatement pst2=conn.prepareStatement("j");
       pst1.executeUpdate(sql1);
       pst1.executeUpdate(sql2);
        if(sql1!=null)
        {
            session.setAttribute("email",email);
            response.sendRedirect("login.jsp");
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