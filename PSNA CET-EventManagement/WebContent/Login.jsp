<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
<%! String uname,upass; %>
<%
uname=request.getParameter("uname");
upass=request.getParameter("upass");

if(uname.equals("admin")&&upass.equals("1234"));
{%>
<jsp:forward page="EventDetail.jsp"/>
<% }

{%>
out.print("wrong username and password");
	<% } %>
	

<jsp:include page="Login.jsp"/>

</body>
</html>