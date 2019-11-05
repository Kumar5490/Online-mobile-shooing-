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
            span{
                margin-left: 200px;
                color: bisque;
            }
            .details{
                background: #666666;
                color: beige;
                font-family: arial;
                font-size: 30px;
                margin-left: 100px;
                margin-right: 200px;
                margin-top: 50px;
            }
        </style>
    </head>
    <body>
        <div class="details">
<%@ page import="java.sql.*"%>
<%
  try{
  String email=request.getParameter("email");
  String OrderId=request.getParameter("OrderId");
  ResultSet rs=null;
  Class.forName("com.mysql.jdbc.Driver");
  Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/"
          + "onlinemobileshopping","root","1234");
  String sql="Select *from confirmorder where email=? and OrderId=?";
  PreparedStatement pst=conn.prepareStatement(sql);
  pst.setString(1,email);
  pst.setString(2,OrderId);
  rs=pst.executeQuery();

        while(rs.next())
    {
        if(email==null)
        {
            response.sendRedirect("login.jsp");
        }
        out.print("<div><label>Order Id :             </label>");
        out.print("<span>");
        out.print(rs.getString("OrderId"));
        out.print("</span>");
        out.print("</div>");
        out.print("<div><label>Email :               </label>");
        out.print("<span>");
        out.print(rs.getString("email"));
        out.print("</span></div>");
        out.print("<div><label>Name  :               </label>");
        out.print("<span>");
        out.print(rs.getString("Name"));
        out.print("</span>");

        out.print("<div><label>Prodname:</label>");
        out.print("<span>");
        out.print(rs.getString("Prodname"));
        out.print("</span>");
        out.print("</div>");
        out.print("<div><label>Price:---                   </label>");
        out.print("<span>");
        out.print(rs.getString("Price"));
        out.print("</span></div>");
        out.print("<div><label>Pin code:---                   </label>");
        out.print("<span>");
        out.print(rs.getString("pcode"));
        out.print("</span></div>");
        out.print("<div><label>Address:</label>");
        out.print("<span>");
        out.print(rs.getString("Address"));
        out.print(","+rs.getString("Addressalt"));
        out.print("</span></div>");
        out.print("<div><label>City:</label>");
        out.print("<span>");
        out.print(rs.getString("City"));
        out.print("</span></div>");
       out.print("<div><label>State&UT :    </label>");
        out.print("<span>");
        out.print(rs.getString("State"));
        out.print("</span></div>");
        out.print("<div><label>Country:</label>");
        out.print("<span>");
        out.print(rs.getString("Country"));
        out.print("</span></div>");
        out.print("<div><label>Mobile:</label>");
        out.print("<span>");
        out.print(rs.getString("Mobile"));
        out.print("</span></div>");
         
    }
   }
    catch(Exception e)
    {
        out.println(e.getMessage());
        
    }
     
%>
<a href="index.jsp"style="color: chartreuse;">Back to Main Page</a>
        </div>
    </body>
</html>
