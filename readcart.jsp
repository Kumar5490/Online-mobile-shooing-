<%
   String Qty = request.getParameter( "Qty" );
   String color = request.getParameter( "color" );
   session.setAttribute( "Qty", Qty );
%>
<html><body>
        <a href="index.jsp" value="">Continue to Progress</a>
    </body></html>