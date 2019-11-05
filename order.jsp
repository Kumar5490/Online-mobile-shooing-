<%
String Price=request.getParameter("Price");
out.println(Price);
String Prodname=request.getParameter("Prodname");
out.println(Prodname);

%>

<% 
try{
    String str=(String)session.getAttribute("email");
    out.print(str);

    if(str==null)
     {
      response.sendRedirect("login.jsp"); 
    }
    else
   { 
     %>
      <jsp:forward page="orderproduct.jsp"/>
      <%
}
}
catch(Exception e)
{
    e.getMessage();
}
 %>
 <%String email=(String)session.getAttribute("email");
session.setAttribute("email",email); %>           