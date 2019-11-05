<%@ page import="java.sql.*"%>
<%
   String OrderId=(String)"Ord"+((int)(Math.random()*9000000+10000));
   String email=(String)session.getAttribute("email");
   String Prodname=(String)session.getAttribute("Prodname");
   String Price=(String)session.getAttribute("Price");
   String Qty = request.getParameter( "Qty" );
   String color = request.getParameter( "color" );
   String Name=request.getParameter("Name");
   String pcode=request.getParameter("pcode");
   String Address=request.getParameter("Address");
   String Addressalt=request.getParameter("Addressalt");
   String City=request.getParameter("City");
   String State=request.getParameter("State");
   String Country=request.getParameter("Country");
   String Mobile=request.getParameter("Mobile");
   String Total=null;
   session.setAttribute("OrderId",OrderId);
   Connection con=null;
   Statement stmt=null;
    try{
      Class.forName("com.mysql.jdbc.Driver");
      con =DriverManager.getConnection("jdbc:mysql://localhost:3306/"
            + "onlinemobileshopping", "root", "1234"); 
  String sql="insert into confirmorder values ('"+OrderId+"','"+email+"',"
 + "'"+Name+"','"+Prodname+"',"+Price+","+Qty+",'"+color+"',"+pcode+","
 + "'"+Address+"','"+Addressalt+"','"+City+"','"+State+"','"+Country+"',"
          + ""+Mobile+","+Total+")";
     if(con!=null)
    { out.print(OrderId);
        stmt=con.createStatement();
        stmt.executeUpdate(sql);
        response.sendRedirect("payments.jsp");
    }
 
}
   catch(SQLException se)
   { 
      out.println("SQL:"+se.getMessage());
   }
catch(Exception e)
{
    out.print("Exception:"+e.getMessage());
    
    e.getStackTrace();
    e.getCause();
}

%>