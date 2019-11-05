<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head>
        <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
        <title>changepwdvalidate.jsp</title>       
    </head><body>
<%@ page import="java.sql.*"%>
<%
    
 try{
        String email=request.getParameter("email");
        String Password=request.getParameter("Password");
        String npwd=request.getParameter("npwd");
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn=DriverManager.getConnection(
         "jdbc:mysql://localhost:3306/onlinemobileshopping","root","1234");
        String sql="Select email,Password from register "
                + "where email='"+email+"' and Password='"+Password+"'";
        PreparedStatement pst=conn.prepareStatement(sql);
        pst.executeQuery(sql);
        PreparedStatement pst1=conn.prepareStatement("i");
        String sql1="update register set password='"+npwd+"'"
                + " where email='"+email+"'";
        int i=pst1.executeUpdate(sql1);
         PreparedStatement pst2=conn.prepareStatement("j");
        String sql2="update login set password='"+npwd+"'"
                + " where email='"+email+"'";
            int j=pst1.executeUpdate(sql2);
       if(i>0)
        {
           response.sendRedirect("index.jsp");
        }
        else
        {
            out.print("Password is not changed!Please try again!");
            response.sendRedirect("index.jsp");
        }
   }
 catch(Exception e)
 {
     out.println(e.getMessage());
 }
 
%>
        </body></html>