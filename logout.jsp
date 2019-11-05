<html>
<head>
<title>Logged out</title>
</head>
<body>
<%@ page import="java.*"%>
	<%@  page errorPage="errorpage.jsp" language="java" %>
       <%
	session.invalidate();
       	%>
        <jsp:include page="index.jsp"></jsp:include> 
</body>
</html>
