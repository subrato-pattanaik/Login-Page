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
	
	String email = request.getParameter("Email");
	String password = request.getParameter("Password");
	
	
	String query = "select * from studentreg where emailid='" + email + "' and password ='" + password + "'";
	
	Class.forName("com.mysql.jdbc.Driver"); 
	java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","mysql1");
	Statement stmt=con.createStatement();
		
	ResultSet rs = stmt.executeQuery(query); 
	
	if (rs.next()) {
		 response.sendRedirect("welcome.jsp");	      
 	}

	else {
    out.println("Invalid password <a href='index.jsp'>try again</a>");
	}
	%>
</body>
</html>