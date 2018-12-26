<%@ page language="java" import="connectionpackage.*,java.util.ArrayList" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EventDetail</title>
</head>
<body>
<%! String event; %>
<%
String event=request.getParameter("event");
DBoperationImplementation impl=new DBoperationImplementation();
ArrayList result=impl.eventDetail(event);
for(int i=0;i<result.size();i++){
	Student s1 = (Student) result.get(i);
	out.println(s1.getName());
	out.println(s1.getDept());
	out.println(s1.getYear());
	out.println(s1.getCollegename());
	out.println(s1.getCity());
	out.println(s1.getMail());
	out.println(s1.getContact());
	out.println(s1.getAddress());
	out.println(s1.getEvent());
	
}
%>

</body>
</html>