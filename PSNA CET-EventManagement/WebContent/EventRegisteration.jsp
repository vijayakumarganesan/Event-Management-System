<%@ page language="java" import="connectionpackage.*,java.sql.*,java.io.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register here</title>
</head>
<body>
<%
String name = request.getParameter("name");
String address=request.getParameter("address");
String uname = request.getParameter("username");
String pword = request.getParameter("password");
String cpass = request.getParameter("cpassword");

String dbconn = "jdbc:mysql://localhost:3306/student";

response.setContentType("text/html"); 
PrintWriter pw = response.getWriter();
String data = name + " " + uname +" "+pword+" "+" "+cpass;
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection(dbconn,"root","");
	Statement sts = con.createStatement();
	int status = sts.executeUpdate("INSERT INTO user_detail values('"+name+"','"+uname+"','"+pword+"','"+cpass+"')");
	if(status != -1){
		pw.println("Insertion Success");
	}else{
		pw.println("Insertion Failed");
	}
} catch (ClassNotFoundException e) {
	
	e.printStackTrace();
} catch (SQLException e) {

	e.printStackTrace();
} 


%>

</body>
</html>