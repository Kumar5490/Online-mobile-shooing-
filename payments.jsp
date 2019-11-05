<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="style-login.css">
    </head>
    <body>
        <div class="mid"><div class="design">
                <%String Price=(String)session.getAttribute("Price");
                out.print(Price);
                String OrderId=(String)session.getAttribute("OrderId");
                out.print(OrderId);%>
                <h1>Select your payment Mode</h1>
        <div><a href="debitcard.jsp">Debit Card</a></div>
        <div><a href="creditcard.jsp">Credit Card</a></div>
        <div><a href="cod.jsp">Cash On Delivery</a></div>
                    </div></div>
        </body>
</html>
