<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head>
        <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
        <title>Search</title>
        </head><body>
<%@ page import="java.sql.*"%>
<%
    try{
        String Category=request.getParameter("Category");
        String Prodname=request.getParameter("Prodname");
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn=DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/onlinemobileshopping","root","1234");
       PreparedStatement pst=conn.prepareStatement("Select Category,Prodname"
                + " from products  where Category=? and Prodname=? ");
        pst.setString(1,Category);
        pst.setString(2,Prodname);
        ResultSet rs=pst.executeQuery();
        if(Prodname.equals("acer")||Prodname.equals("Acer")&&
                Category.equals("acer")||Category.equals("Acer"))
            
        {
            response.sendRedirect("./Mobile/acer.jsp");
        }
        else if(Prodname.equals("apple")||Prodname.equals("Apple")&&
                Category.equals("apple")||Category.equals("Apple"))
            {
                    response.sendRedirect("./Mobile/apple.jsp");
            }
        else if(Prodname.equals("asus")||Prodname.equals("Asus")&&
                Category.equals("asus")||Category.equals("Asus"))
        {
           response.sendRedirect("./Mobile/asus.jsp");                        }
        
     else if(Prodname.equals("blackberry")||Prodname.equals("Blackberry")&&
             Category.equals("blackberry")||Category.equals("Blackberry"))
        {
           response.sendRedirect("./Mobile/blackberry.jsp");  
        }
        
        else if(Prodname.equals("gionee")||Prodname.equals("Gionee")&&
                Category.equals("gionee")||Category.equals("Gionee"))
        {
           response.sendRedirect("./Mobile/gionee.jsp");
        }
        else if(Prodname.equals("htc")||Prodname.equals("Htc")&&
                Category.equals("htc")||Category.equals("Htc"))
        {
           response.sendRedirect("./Mobile/htc.jsp");
        }
        
        else if(Prodname.equals("iball")||Prodname.equals("Iball")&&
                Category.equals("iball")||Category.equals("Iball"))
        {
           response.sendRedirect("./Mobile/iball.jsp");
        }
        
        else if(Prodname.equals("intex")||Prodname.equals("Intex")&&
                Category.equals("intex")||Category.equals("Intex"))
        {
           response.sendRedirect("./Mobile/intex.jsp");
        }
        
        else if(Prodname.equals("lava")||Prodname.equals("Lava")&&
                Category.equals("lava")||Category.equals("Lava"))
        {
           response.sendRedirect("./Mobile/lava.jsp");
        }
       
        else if(Prodname.equals("lenovo")||Prodname.equals("Lenovo")&&
                Category.equals("lenovo")||Category.equals("Lenovo"))
        {
           response.sendRedirect("./Mobile/lenovo.jsp");
        }
        
        else if(Prodname.equals("micromax")||Prodname.equals("Micromax")&&
                Category.equals("gionee")||Category.equals("Gionee"))
        {
           response.sendRedirect("./Mobile/micromax.jsp");
        }
 
        else if(Prodname.equals("motorola")||Prodname.equals("Motorola")&&
                Category.equals("motorola")||Category.equals("Motorola"))
        {
           response.sendRedirect("./Mobile/motorola.jsp");
        }
        else{
            out.print("No search result Found");
        }
              
    }
    catch(Exception e)
    {
        out.println(e.getMessage());
        
    }
%></body></html>