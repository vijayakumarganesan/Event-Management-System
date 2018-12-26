<%@ page language="java" import="connectionpackage.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body><%! String name; %>
<%
String name=request.getParameter("name");
DBoperationImplementation impl=new DBoperationImplementation();
Student s1=impl.update(name);
%>
<form>
NAME:<input type="text" name="name" value=<%= s1.getName() %> /><br>
DEPARTMENT:<input type="text" name="dept" value=<%=s1.getDept() %> /><br>
YEAR:<input type="text" name="year" value=<%=s1.getYear() %> /><br>
COLLEGE:<input type="text" name="clg" value=<%=s1.getCollegename()%>/><br>
CITY:<input type="text" name="city" value=<%=s1.getCity()%>/><br>
MAIL ID:<input type="text" name="mail"value=<%=s1.getMail() %> /><br>
CONTACT:<input type="text" name="contact" value=<%=s1.getContact() %>/><br>
ADDRESS:<input type="text" name="addr" value=<%=s1.getAddress() %> /><br>
EVENT:<select name="event" value=<%=s1.getEvent() %>>
<option value=adzap>Adzap</option>
<option value=quiz>Quiz</option>
<option value=just a min>Just a minute</option>
<option value=dance>Dance</option>
<option value=face paint>Face Painting</option>
<option value=drawing>Drawing</option>
<option value=coding>Coding</option>
<option value=debug>Debugging</option>
<option value=web design>WebDesigning</option>
<option value=scienceExpo>Science Expo</option>
<option value=ppt>Paper presentation</option>
<option value=best out of wast>Best Out Of Waste</option>
</select>
<input type="submit" value="UPdate">
</form>

</body>
</html>