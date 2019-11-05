<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
    "http://www.w3.org/TR/html4/loose.dtd"> 
<%@page import="java.sql.*"%> 

  <% 
    String email=request.getParameter("email"); 
    String Password=request.getParameter("Password"); 
    String UserName=request.getParameter("Name"); 
    String Gender=request.getParameter("Gender"); 
    String Mobile=request.getParameter("Mobile");
    Connection con = null; 
  try{ 
    Class.forName("com.mysql.jdbc.Driver"); 
    con=(Connection)DriverManager.getConnection(
     "jdbc:mysql://localhost:3306/onlinemobileshopping", "root", "1234"); 
   PreparedStatement pst=con.prepareStatement("i"); 
  String sql="insert into register values"
   + "('"+email+"','"+Password+"','"+UserName+"','"+Gender+"',"+Mobile+")";
   out.println(sql);
   int i=pst.executeUpdate(sql);
  PreparedStatement pst1=con.prepareStatement("j");
  String sql1="insert into login values('"+email+"','"+Password+"')";
   int j=pst1.executeUpdate(sql1);
   if(i>0)
   {
    %>
      <jsp:include page="index.jsp"/>
    <%
    }
  } 
  catch(Exception e){ 
                     out.print(e); 
                     %><jsp:include page="error.jsp"/>
                     <% 
                   } 
                     
  %> 

