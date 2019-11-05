<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .detail{
                color:white;
            }
            td{
                color: beige;
                background:#333333;
            }
            
        </style>
    </head>
    <body>
           
<%@ page import="java.sql.*"%>
<%
    try{
        String email=(String)session.getAttribute("email");
        ResultSet rs=null;
 Class.forName("com.mysql.jdbc.Driver");
 Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/"
 + "onlinemobileshopping","root","1234");
 String sql="Select *from confirmorder where email=?";
 PreparedStatement pst=conn.prepareStatement(sql);
        pst.setString(1,email);
        rs=pst.executeQuery();
      out.print("<table border=2>");
      out.print("<tr>");
      out.print("<td>"+"OrderId"+"</td>");
      out.print("<td>"+"email"+"</td>");
      out.print("<td>"+"Name"+"</td>");
      out.print("<td>"+"Product Name"+"</td>");
      out.print("<td>"+"Price"+"</td>");
      out.print("<td>"+"Quantity"+"</td>");
      out.print("<td>"+"color"+"</td>");
      out.print("<td>"+"Pin code"+"</td>");
      out.print("<td>"+"Address1"+"</td>");
      out.print("<td>"+"Address2"+"</td>");
      out.print("<td>"+"City"+"</td>");
      out.print("<td>"+"State"+"</td>");
      out.print("<td>"+"Country"+"</td>");
      out.print("<td>"+"Mobile"+"</td>");
      out.print("</tr>");
      
     while(rs.next())
    {
   
    out.println("<tr>");
   for(int i=1;i<15;i++)
    out.println("<td>"+rs.getString(i)+ "</td>");
    out.println("</tr>");
     }
     out.print("</table>");
    }
    catch(Exception e)
    {
        out.println(e.getMessage());
        
    }
     
%>
   
        
    </body>
</html>
