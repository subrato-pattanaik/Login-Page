<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@page import = "java.sql.*" %>
	<%
	String name = request.getParameter("Full_Name");
	String email = request.getParameter("Email_Id");
	String password = request.getParameter("Password");
	String mobile = request.getParameter("Mobile_Number");
	String college = request.getParameter("College");
	String branch = request.getParameter("Branch");
	
	String query = "insert into studentreg value ('"+name+"','"+email+"','"+password+"','"
				+mobile+"','"+college+"','"+branch+"')"	;
	
	Class.forName("com.mysql.jdbc.Driver"); 
	java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","mysql1");
	Statement stmt=con.createStatement();
		
	int rs = stmt.executeUpdate(query); 
	
	if (rs > 0) {
		 response.sendRedirect("index.jsp");	      
 	}
	%>
</body>
</html>